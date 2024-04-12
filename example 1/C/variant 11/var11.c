#include <stdio.h>
#include <math.h>

int main()
{
    float V, S, R, H;
    printf("Введите радиус цилиндра: ");
    scanf("%f", &R);
    printf("\n");
    printf("Введите высоту цилиндра: ");
    scanf("%f", &H);
    printf("\n");
    // acos(-1.0) = pi
    S = 2 * acos(-1.0) * R * (R + H);
    V = acos(-1.0) * pow(R, 2) * H;
    printf("Объем цилиндра: V = %.2f", V);
    printf("Площадь поверхности цилиндра: S = %.2f", S);
    return 0;
}
