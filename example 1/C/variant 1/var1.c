#include <stdio.h>

int main()
{
    float S, a, h;
    printf("Введите длину основания: ");
    scanf("%f", &a);
    printf("\n");
    printf("Введите высоту: ");
    scanf("%f", &h);
    printf("\n");
    S = a * h;
    printf("Площадь параллелограмма: S = %.2f", S);
    return 0;
}
