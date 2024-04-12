#include <iostream>

using namespace std;

int main()
{
    float S, a, h;
    cout << "Введите длину основания: ";
    cin >> a;
    cout << endl;
    cout << "Введите высоту: ";
    cin >> h;
    cout << endl;
    S = a * h;
    cout << "Площадь параллелограмма: S = " << S << endl;
    return 0;
}
