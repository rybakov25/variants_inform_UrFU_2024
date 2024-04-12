#include <stdio.h>
#include <math.h>

int main()
{
    float R, P, V, m;
    printf("Введите радиус шара: ");
    scanf("%f", &R);
    printf("\n");
    printf("Введите плотность: ");
    scanf("%f", &P);
    printf("\n");
    // acos(-1.0) = pi
    V = (4/3) * acos(-1.0) * pow(R, 3);
    m = P * V;
    printf("Масса шара: m = %.2f", m);
    return 0;
}