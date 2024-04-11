#include <stdio.h>

int main()
{
    float m, p, A, B, C;
    printf("Введите длину стороны A: ");
    scanf("%f", &A);
    printf("\n");
    printf("Введите длину стороны B: ");
    scanf("%f", &B);
    printf("\n");
    printf("Введите длину стороны C: ");
    scanf("%f", &C);
    printf("\n");
    printf("Введите плотность p: ");
    scanf("%f", &p);
    printf("\n");
    m = p * A * B * C;
    printf("Масса параллелепипеда: m = %.2f", m);
    return 0;
}
