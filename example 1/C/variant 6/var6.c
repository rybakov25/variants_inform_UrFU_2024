#include <stdio.h>
#include <math.h>

int main()
{
    float R, S, V;
    printf("Введите радиус шара: ");
    scanf("%f", &R);
    printf("\n");
    // acos(-1.0) = pi
    S = 4 * acos(-1.0) * pow(R, 2);
    V = (4/3) * acos(-1.0) * pow(R, 3);
    printf("Объем шара: V = %.2f", V);
    printf("Площадь поверхности шара: S = %.2f", S);
    return 0;
}
