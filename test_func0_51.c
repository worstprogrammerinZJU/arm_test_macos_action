// macOS ARM64汇编测试套件
#include <stdio.h>
#include <stdint.h>
#include <string.h>

// 外部符号声明
extern int _func0(void* param);

// 函数声明


// 外部变量声明
extern int g_abs;

// 函数定义


// 全局变量定义
int g_abs = 0;  // 桩变量

int main() {
    printf("=== macOS ARM64汇编测试 ===\n");
    printf("函数: _func0\n");
    
    // 创建测试缓冲区
    uint8_t buffer[1024] = {0};
    
    // 初始化测试数据
    memset(buffer, 0x55, sizeof(buffer));
    
    printf("调用汇编函数...\n");
    int result = _func0((void*)buffer);
    
    printf("函数返回: %d\n", result);
    
    if (result == 0) {
        printf("✅ 函数返回 0\n");
    } else {
        printf("📊 函数返回: %d\n", result);
    }
    
    printf("测试完成!\n");
    return 0;
}
