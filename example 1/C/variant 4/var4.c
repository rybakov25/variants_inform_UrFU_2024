#include <stdio.h>
#include <math.h>

/* При сомнении в приведенных ниже формулах
 * перепишите программу так, как считаете нужным
 */

float perimetr(float s[], size_t len)
{
    float p;
    for (int i = 0; i < len; i++)
    {
        p += s[i];
    }
    return p;
}

int main()
{
    float angles, S, Sb, V, H, P, L;
    float h;
    printf("Введите количество углов основания пирамиды: ");
    scanf("%f", &angles);
    printf("\n");
    printf("Введите высоту пирамиды: ");
    scanf("%f", &H);
    printf("\n");
    if (angles == 3 || angles == 4)
    {
        printf("Введите высоту основания: ");
        scanf("%f", %h);
        printf("\n");
    }
    float st[angles];
    size_t count = sizeof(st) / sizeof(angles);
    for (int i = 0; i < count; i++)
    {
        printf("Введите длину стороны %d основания: ", i+1);
        scanf("%f", st[i]);
        printf("\n");
    }
    switch angles
    {
        case 3:
            S = (1/2) * h * st[0];
            break;
        case 4:
            if (st[0] == st[1])
            {
                S = st[0] * st[0];
            }
            else
            {
                S = st[0] * h;
            }
            break;
        case 5:
            h = (st[0] / 2) / tan((36 * acos(-1.0)) / 180);  // acos(-1.0) = pi; h = (st[0] / 2) / tan(36°)
            S = (1/2) * st[0] * h;
            break;
        case 6:
            S = (3 * sqrt(3) * (st[0] * st[0])) / 2;
            break;
        default:
            break;
    }
    V = (1/3) * S * H;
    P = perimetr(st, count);
    L = sqrt(pow(H, 2) + (st[0] / (2 * tan((60 * acos(-1.0)) / 180))));
    Sb = (1/2) * P * L;
    printf("Объем пирамиды: V = %.2f", V);
    printf("Площадь поверхности пирамиды пирамиды: S = %.2f", S + Sb);
    return 0;
}
