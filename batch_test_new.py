#!/usr/bin/env python3
"""
macOS ARM64汇编QEMU测试脚本 - GitHub Actions 适配版
修改工具检查逻辑以适应 GitHub Actions 环境
"""

import os
import sys
import subprocess
import time
from pathlib import Path
from typing import List, Tuple, Optional, Dict, Set
import re
import argparse

class macOSARM64Tester:
    """macOS ARM64汇编测试器 - GitHub Actions 适配版"""
    
    def __init__(self, compiler="clang", qemu="qemu-aarch64", verbose=False):
        self.compiler = compiler
        self.qemu = qemu
        self.verbose = verbose
        self.results = []
        
        # GitHub Actions 适配：修改工具检查逻辑
        self._setup_environment()
        
        # 创建输出目录
        self.output_dir = Path("test_output_macos")
        self.output_dir.mkdir(exist_ok=True)
    
    def _setup_environment(self):
        """设置环境，适配 GitHub Actions"""
        print("=== GitHub Actions 环境设置 ===")
        
        # 检查编译器
        if not self._check_tool_exists(self.compiler):
            print(f"⚠️  未找到编译器: {self.compiler}")
            print("在 GitHub Actions 中，clang 应该已经安装")
            # 尝试使用系统默认编译器
            self.compiler = "clang"
        
        # 检查 QEMU - GitHub Actions 适配
        if not self._check_tool_exists(self.qemu):
            print(f"❌ 未找到 QEMU: {self.qemu}")
            print("在 GitHub Actions 中，请确保工作流中包含: brew install qemu")
            print("当前工作流应该已经安装了 QEMU，但可能路径有问题")
            # 在 GitHub Actions 中，我们期望 QEMU 已经通过 brew 安装
            # 尝试查找 QEMU 的其他可能路径
            qemu_paths = [
                "/usr/local/bin/qemu-aarch64",
                "/opt/homebrew/bin/qemu-aarch64",
                "/usr/bin/qemu-aarch64"
            ]
            for path in qemu_paths:
                if os.path.exists(path):
                    self.qemu = path
                    print(f"✅ 找到 QEMU: {path}")
                    break
            else:
                print("❌ 无法找到 QEMU，请检查工作流配置")
                # 在 GitHub Actions 中，我们让脚本继续运行，但会在后续步骤失败
        
        # 显示工具信息
        self._show_tool_info()
    
    def _check_tool_exists(self, tool: str) -> bool:
        """检查工具是否存在"""
        import shutil
        return shutil.which(tool) is not None
    
    def _show_tool_info(self):
        """显示工具信息"""
        print("=== 工具信息 ===")
        
        # 检查编译器
        try:
            result = subprocess.run([self.compiler, "--version"], 
                                  capture_output=True, text=True, timeout=10)
            if result.returncode == 0:
                print(f"✅ 编译器 {self.compiler}: 可用")
                print(f"   版本: {result.stdout.splitlines()[0] if result.stdout else '未知'}")
            else:
                print(f"⚠️  编译器 {self.compiler}: 检查失败")
        except Exception as e:
            print(f"⚠️  编译器检查异常: {e}")
        
        # 检查 QEMU
        try:
            result = subprocess.run([self.qemu, "-version"], 
                                  capture_output=True, text=True, timeout=10)
            if result.returncode == 0:
                print(f"✅ QEMU {self.qemu}: 可用")
                qemu_version = result.stdout.splitlines()[0] if result.stdout else "未知"
                print(f"   版本: {qemu_version}")
            else:
                print(f"❌ QEMU {self.qemu}: 检查失败")
                # 尝试直接执行 QEMU
                result = subprocess.run([self.qemu, "-cpu", "help"], 
                                      capture_output=True, text=True, timeout=10)
                if result.returncode == 0:
                    print(f"✅ QEMU 可以执行 ARM 代码")
                else:
                    print(f"❌ QEMU 无法执行 ARM 代码")
        except Exception as e:
            print(f"❌ QEMU 检查异常: {e}")
        
        print("=== 环境设置完成 ===\n")
    
    def _extract_function_name(self, asm_content: str) -> str:
        """从macOS汇编提取函数名"""
        patterns = [
            r'\.globl\s+_(\w+)',           # macOS格式: .globl _function
            r'(\w+):\s+; @function',       # 函数标签
            r'^_(\w+):\s*$',               # macOS函数标签: _function:
        ]
        
        for pattern in patterns:
            match = re.search(pattern, asm_content, re.MULTILINE)
            if match:
                func_name = match.group(1)
                if func_name and len(func_name) > 1:
                    return func_name
        
        # 从.section指令推测
        match = re.search(r'; -- Begin function (\w+)', asm_content)
        if match:
            return match.group(1)
        
        return "test_function"
    
    def _extract_external_symbols(self, asm_content: str) -> List[str]:
        """提取外部符号引用"""
        symbols = []
        
        lines = asm_content.split('\n')
        for line in lines:
            # 查找全局符号引用
            if '_' in line and not line.strip().startswith('.'):
                matches = re.findall(r'\b(_\w+)\b', line)
                symbols.extend(matches)
        
        return list(set(symbols))
    
    def _analyze_assembly_function(self, asm_content: str) -> Dict:
        """深入分析汇编函数的结构"""
        info = {
            "external_functions": set(),
            "global_variables": set(),
            "function_name": "",
            "parameters": [("void*", "param")],  # 默认参数
        }
        
        # 提取函数名
        func_name = self._extract_function_name(asm_content)
        if func_name:
            info["function_name"] = func_name
        
        # 分析外部符号
        symbols = self._extract_external_symbols(asm_content)
        
        # 分离函数和变量
        for symbol in symbols:
            if symbol.startswith('_'):
                # 检查是否是函数调用
                lines = asm_content.split('\n')
                is_function = False
                for line in lines:
                    if symbol in line and ('bl' in line or 'b' in line):
                        is_function = True
                        break
                
                if is_function:
                    info["external_functions"].add(symbol)
                else:
                    # 可能是全局变量
                    var_name = symbol[1:]
                    info["global_variables"].add(var_name)
        
        return info
    
    def _generate_stub_function(self, func_name: str) -> Tuple[str, str]:
        """为外部函数生成桩代码"""
        func_name_no_underscore = func_name[1:] if func_name.startswith('_') else func_name
        
        # 根据函数名猜测签名
        if 'unlock' in func_name_no_underscore.lower():
            decl = f"void {func_name}(void* lock);"
            defn = f"""void {func_name}(void* lock) {{
    printf("[STUB] {func_name_no_underscore} called\\n");
}}"""
        elif 'create' in func_name_no_underscore.lower():
            decl = f"void* {func_name}(void* a, void* b);"
            defn = f"""void* {func_name}(void* a, void* b) {{
    printf("[STUB] {func_name_no_underscore} called\\n");
    return (void*)0x1000;
}}"""
        elif 'get' in func_name_no_underscore.lower():
            decl = f"void* {func_name}(void* a, int b, void* c);"
            defn = f"""void* {func_name}(void* a, int b, void* c) {{
    printf("[STUB] {func_name_no_underscore} called\\n");
    return (void*)0x2000;
}}"""
        elif 'cmp' in func_name_no_underscore.lower() or 'gt' in func_name_no_underscore.lower() or 'lt' in func_name_no_underscore.lower():
            decl = f"int {func_name}(int a, int b);"
            defn = f"""int {func_name}(int a, int b) {{
    printf("[STUB] {func_name_no_underscore} called\\n");
    return 1;
}}"""
        else:
            # 默认生成通用函数桩
            decl = f"void* {func_name}(void* p);"
            defn = f"""void* {func_name}(void* p) {{
    printf("[STUB] {func_name_no_underscore} called\\n");
    return (void*)(uintptr_t)p;
}}"""
        
        return decl, defn
    
    def _create_macos_test_suite(self, func_name: str, symbols: List[str], output_folder: Path) -> Tuple[bool, Optional[Path], str]:
        """创建macOS风格的测试套件 - 修复函数签名"""
        # 分离已知的函数符号和变量符号
        known_functions = {
            '_tcp_heuristic_unlock',
            '_tcp_cache_key_src_create',
            '_tcp_getheuristic_with_lock',
            '_TSTMP_GT',
            '_tptomptp',
        }
        
        # 分离变量和函数
        variable_declarations = []
        variable_definitions = []
        function_declarations = []
        function_definitions = []
        
        for symbol in symbols:
            if symbol.startswith('_'):
                # 去掉下划线
                base_name = symbol[1:]
                
                # 检查是否是已知函数
                if symbol in known_functions:
                    # 已知函数，不为其生成变量声明
                    # 为函数生成桩代码
                    decl, defn = self._generate_stub_function(symbol)
                    function_declarations.append(decl)
                    function_definitions.append(defn)
                    continue
                
                # 检查这个符号是否是当前测试的函数本身
                if base_name == func_name:
                    # 这是函数自己，跳过生成变量
                    print(f"  ⚠️  跳过为函数自身生成变量: {symbol}")
                    continue
                
                # 这是变量
                # 为变量生成一个独特的名称，避免与函数冲突
                var_name = f"g_{base_name}"  # 添加前缀避免冲突
                variable_declarations.append(f"extern int {var_name};")
                
                # 特殊变量处理
                if base_name == "TRUE":
                    variable_definitions.append(f"int {var_name} = 1;")
                elif base_name == "FALSE":
                    variable_definitions.append(f"int {var_name} = 0;")
                elif "disable" in base_name.lower():
                    variable_definitions.append(f"int {var_name} = 0;")
                elif "enable" in base_name.lower():
                    variable_definitions.append(f"int {var_name} = 1;")
                else:
                    variable_definitions.append(f"int {var_name} = 0;  // 桩变量")
            else:
                # 符号没有下划线，直接使用
                var_name = f"g_{symbol}"  # 添加前缀
                variable_declarations.append(f"extern int {var_name};")
                variable_definitions.append(f"int {var_name} = 0;")
        
        # 为特定函数生成正确的测试套件
        if "tcp_heuristic_do_mptcp" in func_name:
            # 针对tcp_heuristic_do_mptcp函数的特殊处理
            test_content = f"""// macOS ARM64汇编测试套件
// 专门为 tcp_heuristic_do_mptcp 函数生成
#include <stdio.h>
#include <stdint.h>
#include <string.h>

// 外部符号声明
extern int _{func_name}(void* tcp);

// 函数声明
{chr(10).join(function_declarations)}

// 外部变量声明
{chr(10).join(variable_declarations)}

// 函数定义
{chr(10).join(function_definitions)}

// 全局变量定义
{chr(10).join(variable_definitions)}

int main() {{
    printf("=== macOS ARM64汇编测试 ===\\n");
    printf("函数: _{func_name}\\n");
    
    // 创建模拟的TCP结构
    uint8_t tcp_buffer[1024] = {{0}};
    
    // 初始化一些测试数据
    memset(tcp_buffer, 0xAA, sizeof(tcp_buffer));
    
    printf("调用汇编函数...\\n");
    int result = _{func_name}((void*)tcp_buffer);
    
    printf("函数返回: %d\\n", result);
    
    if (result == 0) {{
        printf("✅ 函数返回 0 (成功/假)\\n");
    }} else if (result == 1) {{
        printf("✅ 函数返回 1 (真)\\n");
    }} else {{
        printf("📊 函数返回: %d\\n", result);
    }}
    
    printf("测试完成!\\n");
    return 0;
}}
"""
        else:
            # 通用测试套件
            test_content = f"""// macOS ARM64汇编测试套件
#include <stdio.h>
#include <stdint.h>
#include <string.h>

// 外部符号声明
extern int _{func_name}(void* param);

// 函数声明
{chr(10).join(function_declarations)}

// 外部变量声明
{chr(10).join(variable_declarations)}

// 函数定义
{chr(10).join(function_definitions)}

// 全局变量定义
{chr(10).join(variable_definitions)}

int main() {{
    printf("=== macOS ARM64汇编测试 ===\\n");
    printf("函数: _{func_name}\\n");
    
    // 创建测试缓冲区
    uint8_t buffer[1024] = {{0}};
    
    // 初始化测试数据
    memset(buffer, 0x55, sizeof(buffer));
    
    printf("调用汇编函数...\\n");
    int result = _{func_name}((void*)buffer);
    
    printf("函数返回: %d\\n", result);
    
    if (result == 0) {{
        printf("✅ 函数返回 0\\n");
    }} else {{
        printf("📊 函数返回: %d\\n", result);
    }}
    
    printf("测试完成!\\n");
    return 0;
}}
"""
        
        test_file = output_folder / f"test_{func_name}.c"
        try:
            test_file.write_text(test_content, encoding='utf-8')
            return True, test_file, ""
        except Exception as e:
            return False, None, f"创建测试套件失败: {str(e)}"
    
    def _compile_for_macos(self, asm_file: Path, output_folder: Path) -> Tuple[bool, Optional[Path], str]:
        """编译macOS ARM64汇编"""
        obj_file = output_folder / f"{asm_file.stem}.o"
        
        # 使用macOS ARM64目标
        cmd = [
            self.compiler,
            "-target", "arm64-apple-darwin20.0.0",  # macOS ARM64目标
            "-c", str(asm_file),
            "-o", str(obj_file)
        ]
        
        if self.verbose:
            print(f"编译命令: {' '.join(cmd)}")
        
        try:
            result = subprocess.run(
                cmd,
                capture_output=True,
                text=True,
                timeout=30
            )
            
            if result.returncode == 0 and obj_file.exists():
                return True, obj_file, ""
            else:
                return False, None, result.stderr
        except subprocess.TimeoutExpired:
            return False, None, "编译超时"
        except Exception as e:
            return False, None, str(e)
    
    def _compile_test_suite(self, c_file: Path, output_folder: Path) -> Tuple[bool, Optional[Path], str]:
        """编译测试套件"""
        obj_file = output_folder / f"{c_file.stem}.o"
        
        cmd = [
            self.compiler,
            "-target", "arm64-apple-darwin20.0.0",
            "-c", str(c_file),
            "-o", str(obj_file)
        ]
        
        try:
            result = subprocess.run(
                cmd,
                capture_output=True,
                text=True,
                timeout=30
            )
            
            if result.returncode == 0 and obj_file.exists():
                return True, obj_file, ""
            else:
                return False, None, result.stderr
        except Exception as e:
            return False, None, str(e)
    
    def _link_for_macos(self, asm_obj: Path, test_obj: Path, output_folder: Path, func_name: str) -> Tuple[bool, Optional[Path], str]:
        """链接macOS可执行文件"""
        exe_file = output_folder / f"{func_name}"
        
        cmd = [
            self.compiler,
            "-target", "arm64-apple-darwin20.0.0",
            str(asm_obj),
            str(test_obj),
            "-o", str(exe_file)
        ]
        
        try:
            result = subprocess.run(
                cmd,
                capture_output=True,
                text=True,
                timeout=30
            )
            
            if result.returncode == 0 and exe_file.exists():
                return True, exe_file, ""
            else:
                return False, None, result.stderr
        except Exception as e:
            return False, None, str(e)
    
    def _execute_with_qemu(self, exe_file: Path) -> Tuple[bool, str, str]:
        """使用QEMU执行macOS ARM64程序"""
        if not exe_file.exists():
            return False, "", f"可执行文件不存在: {exe_file}"
        
        cmd = [
            self.qemu,
            "-cpu", "cortex-a76",  # ARM CPU型号
            str(exe_file)
        ]
        
        if self.verbose:
            print(f"执行命令: {' '.join(cmd)}")
        
        try:
            result = subprocess.run(
                cmd,
                capture_output=True,
                text=True,
                timeout=10
            )
            
            output = result.stdout + result.stderr
            
            if result.returncode == 0:
                return True, output, ""
            else:
                return False, output, f"退出码: {result.returncode}"
        except subprocess.TimeoutExpired:
            return False, "", "执行超时"
        except Exception as e:
            return False, "", str(e)
    
    def test_single_file(self, asm_file: Path) -> dict:
        """测试单个文件"""
        result = {
            "filename": asm_file.name,
            "success": False,
            "stages": {},
            "errors": [],
            "warnings": []
        }
        
        print(f"\n{'='*60}")
        print(f"测试文件: {asm_file.name}")
        print(f"{'='*60}")
        
        try:
            # 1. 读取汇编内容
            asm_content = asm_file.read_text(encoding='utf-8', errors='ignore')
            
            # 2. 提取函数名
            func_name = self._extract_function_name(asm_content)
            result["function_name"] = func_name
            
            print(f"提取函数名: {func_name}")
            
            # 3. 提取外部符号
            symbols = self._extract_external_symbols(asm_content)
            if symbols:
                print(f"发现外部符号: {', '.join(symbols[:5])}{'...' if len(symbols) > 5 else ''}")
                result["external_symbols"] = symbols
            
            # 4. 为这个文件创建独立文件夹
            file_folder = self.output_dir / f"test_{asm_file.stem}"
            file_folder.mkdir(exist_ok=True)
            
            # 复制汇编文件
            asm_copy = file_folder / asm_file.name
            asm_copy.write_text(asm_content, encoding='utf-8')
            
            # 5. 创建测试套件
            print("生成测试套件...")
            test_ok, test_file, test_error = self._create_macos_test_suite(
                func_name, symbols, file_folder
            )
            
            if not test_ok:
                result["errors"].append(f"测试套件生成失败: {test_error}")
                return result
            
            result["stages"]["test_suite_generated"] = True
            print(f"测试套件: {test_file.name}")
            
            # 6. 编译汇编文件
            print("编译汇编代码...")
            asm_ok, asm_obj, asm_error = self._compile_for_macos(asm_copy, file_folder)
            
            if not asm_ok:
                result["errors"].append(f"汇编编译失败: {asm_error[:200]}")
                return result
            
            result["stages"]["assembly_compiled"] = True
            print(f"汇编目标文件: {asm_obj.name}")
            
            # 7. 编译测试套件
            print("编译测试套件...")
            test_compile_ok, test_obj, test_compile_error = self._compile_test_suite(test_file, file_folder)
            
            if not test_compile_ok:
                result["errors"].append(f"测试套件编译失败: {test_compile_error[:200]}")
                return result
            
            result["stages"]["test_suite_compiled"] = True
            print(f"测试目标文件: {test_obj.name}")
            
            # 8. 链接
            print("链接可执行文件...")
            link_ok, exe_file, link_error = self._link_for_macos(asm_obj, test_obj, file_folder, func_name)
            
            if not link_ok:
                result["errors"].append(f"链接失败: {link_error[:200]}")
                return result
            
            result["stages"]["linked"] = True
            print(f"可执行文件: {exe_file.name}")
            
            # 9. 使用QEMU执行
            print("使用QEMU执行...")
            execute_ok, output, execute_error = self._execute_with_qemu(exe_file)
            
            if execute_ok:
                result["stages"]["executed"] = True
                result["output"] = output[:500]  # 只保存前500字符
                result["success"] = True
                print(f"✅ 执行成功!")
                if output:
                    print(f"输出: {output[:200]}")
            else:
                result["errors"].append(f"执行失败: {execute_error}")
                if output:
                    result["output"] = output[:500]
                print(f"❌ 执行失败: {execute_error}")
            
        except Exception as e:
            result["errors"].append(f"处理异常: {str(e)}")
            import traceback
            result["traceback"] = traceback.format_exc()
            print(f"💥 处理异常: {str(e)}")
        
        return result
    
    def find_asm_files(self, directory: str = ".") -> List[Path]:
        """查找汇编文件"""
        asm_files = []
        for ext in [".s", ".S", ".asm"]:
            asm_files.extend(Path(directory).rglob(f"*{ext}"))
        
        # 过滤掉输出目录
        asm_files = [f for f in asm_files if not str(f).startswith(str(self.output_dir))]
        
        return sorted(asm_files)
    
    def run_batch(self, directory: str = ".", max_files: int = None) -> List[dict]:
        """批量测试"""
        asm_files = self.find_asm_files(directory)
        
        if not asm_files:
            print(f"在 '{directory}' 中未找到汇编文件")
            return []
        
        if max_files:
            asm_files = asm_files[:max_files]
        
        print(f"找到 {len(asm_files)} 个汇编文件")
        
        results = []
        for i, asm_file in enumerate(asm_files, 1):
            print(f"\n[{i}/{len(asm_files)}] ", end="")
            result = self.test_single_file(asm_file)
            results.append(result)
            
            if result["success"]:
                print(f"✅ 成功")
            else:
                print(f"❌ 失败")
                for error in result["errors"][:2]:
                    print(f"   错误: {error[:100]}")
        
        return results
    
    def generate_report(self, results: List[dict]) -> str:
        """生成测试报告"""
        total = len(results)
        success = sum(1 for r in results if r.get("success", False))
        
        report = f"""
{'='*60}
macOS ARM64汇编QEMU测试报告 (GitHub Actions 适配版)
{'='*60}
总计: {total} 个文件
成功: {success} 个 ({success/total*100:.1f}% 成功率)
失败: {total - success} 个

详细结果:
"""
        
        for i, result in enumerate(results, 1):
            status = "✅" if result["success"] else "❌"
            report += f"\n{i:3d}. {status} {result['filename']}"
            
            if "function_name" in result:
                report += f" (函数: {result['function_name']})"
            
            if not result["success"] and "errors" in result:
                for error in result["errors"][:2]:
                    report += f"\n     错误: {error[:150]}"
        
        # 统计各阶段成功率
        if results:
            stages = ["test_suite_generated", "assembly_compiled", 
                     "test_suite_compiled", "linked", "executed"]
            
            report += f"\n\n阶段统计:"
            for stage in stages:
                count = sum(1 for r in results if r.get("stages", {}).get(stage, False))
                report += f"\n  {stage}: {count}/{total} ({count/total*100:.1f}%)"
        
        report += f"\n\n输出目录: {self.output_dir.absolute()}"
        report += f"\n{'='*60}"
        
        return report

def main():
    """主函数"""
    parser = argparse.ArgumentParser(description="macOS ARM64汇编QEMU测试工具 - GitHub Actions 适配版")
    parser.add_argument("directory", nargs="?", default=".", 
                       help="要测试的目录（默认: 当前目录）")
    parser.add_argument("--compiler", default="clang",
                       help="编译器路径（默认: clang）")
    parser.add_argument("--qemu", default="qemu-aarch64",
                       help="QEMU模拟器路径（默认: qemu-aarch64）")
    parser.add_argument("--max-files", type=int, default=None,
                       help="最大测试文件数")
    parser.add_argument("--verbose", "-v", action="store_true",
                       help="显示详细输出")
    
    args = parser.parse_args()
    
    # 创建测试器
    tester = macOSARM64Tester(
        compiler=args.compiler,
        qemu=args.qemu,
        verbose=args.verbose
    )
    
    # 运行测试
    print("macOS ARM64汇编QEMU测试工具 - GitHub Actions 适配版")
    print(f"测试目录: {args.directory}")
    print(f"编译器: {args.compiler}")
    print(f"QEMU: {args.qemu}")
    print("="*60)
    
    try:
        results = tester.run_batch(args.directory, args.max_files)
        
        # 生成报告
        report = tester.generate_report(results)
        print(report)
        
        # 保存报告
        report_file = tester.output_dir / "test_report.txt"
        report_file.write_text(report, encoding='utf-8')
        print(f"报告已保存到: {report_file}")
        
        # 返回适当的退出码
        if results:
            success_count = sum(1 for r in results if r.get("success", False))
            if success_count == 0 and len(results) > 0:
                return 1  # 有测试但全部失败
            else:
                return 0  # 成功或有部分成功
        else:
            return 1  # 没有找到测试文件
        
    except KeyboardInterrupt:
        print("\n测试被用户中断")
        return 130
    except Exception as e:
        print(f"测试过程中发生异常: {e}")
        import traceback
        traceback.print_exc()
        return 1

if __name__ == "__main__":
    sys.exit(main())