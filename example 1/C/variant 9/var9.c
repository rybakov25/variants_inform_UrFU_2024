#include <stdio.h>
#include <math.h>

int main()
{
    float R, H, P, d, r, m;
    printf("Введите радиус цилиндра: ");
    scanf("%f", &R);
    printf("\n");
    printf("Введите высоту цилиндра: ");
    scanf("%f", &H);
    printf("\n");
    printf("Введите толщину стенки цилиндра: ");
    scanf("%f", &d);
    printf("\n");
    printf("Введите плотность: ");
    scanf("%f", &P);
    printf("\n");
    // acos(-1.0) = pi
    r = R - d;
    S = 2 * acos(-1.0) * H * (R + r);
    V = H * acos(-1.0) * (pow(R, 2) - pow(r, 2));
    m = V * P;
    printf("Масса полого цилиндра: m = %.2f", m);
    return 0;
}
