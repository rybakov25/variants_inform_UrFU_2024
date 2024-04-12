#include <stdio.h>
#include <math.h>

int main()
{
    float V, S, a;
    printf("Введите длину стороны куба: ");
    scanf("%f", &a);
    printf("\n");
    S = 6 * pow(a, 2);
    V = pow(a, 3);
    printf("Объем куба: V = %.2f", V);
    printf("Площадь поверхности куба: S = %.2f", S);
    return 0;
}
