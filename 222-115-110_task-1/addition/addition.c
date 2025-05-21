#include<stdio.h>

int main() {
    int a, b, sum;
    printf("Enter two numbers:");
    scanf("%d %d", &a, &b);
    sum = a + b;
    printf("The result of %d + %d is %d\n", a, b, sum);
    return 0;
}