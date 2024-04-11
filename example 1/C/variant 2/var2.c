#include <stdio.h>
#define and &&

int main()
{
    float A, B, C, S, V;
    printf("Введите длину стороны A: ");
    scanf("%f", &A);
    printf("\n");
    printf("Введите длину стороны B: ");
    scanf("%f", &B);
    printf("\n");
    printf("Введите длину стороны C: ");
    scanf("%f", &C);
    printf("\n");
    if (A == B and B == C and A == C)
    {
        V = A * A * A;
    }
    else
    {
        V = A * B * C;
    }
    S = 2 * (A * B + B * C + A * C);
    printf("Объем параллелепипеда равен: V = %.2f\n", V);
    printf("Площадь поверхности параллелепипеда равна: S = %.2f\n", S);
    return 0;
}
