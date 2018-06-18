#include<stdio.h>

extern int add(int a,int b); // 在 add.s 中实现


int main(int argc, char const *argv[]) {
    int sum = add(3,4);
    printf("3 + 4 = %d\n", sum); 
    return 0;
}
