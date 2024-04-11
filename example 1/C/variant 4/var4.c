#include <stdio.h>

int main()
{
    float angles, S, V, H;
    float h3;
    printf("Введите количество углов основания пирамиды: ");
    scanf("%f", &angles);
    printf("\n");
    printf("Введите высоту пирамиды: ");
    scanf("%f", &H);
    printf("\n");
    if (angles == 3)
    {
        printf("Введите высоту основания: ");
        scanf("%f", %h3);
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
    switch angles  // todo: дописать
    {
        case 3:
            S = (1/2) * h3 * st[0];
            break;
        case 4:
            break;
        case 5:
            break;
        case 6:
            break;
        default:
            break;
    }
    return 0;
}
