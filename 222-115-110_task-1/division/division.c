#include<stdio.h>

int main() {
    int a, b, div;
    printf("Enter two numbers: ");
    scanf("%d %d", &a, &b);
    div = a/b;
    printf("The result of %d - %d is %d\n", a, b, div);
    return 0;
}