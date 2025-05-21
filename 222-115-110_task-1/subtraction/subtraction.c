#include<stdio.h>

int main() {
    int a, b, sub;
    printf("Enter two numbers:");
    scanf("%d %d", &a, &b);
    sub = a - b;
    printf("The result of %d - %d is %d\n", a, b, sub);
    return 0;
}