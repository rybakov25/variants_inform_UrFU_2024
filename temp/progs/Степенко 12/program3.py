print("Введите коэффициенты функции f(x) = ax^2 + bx + c")
a = int(input("a: "))
b = int(input("b: "))
c = int(input("c: "))

if a > 0:
    m = "минимума"
else:
    m = "максимума"

x0 = -b / (2 * a)
y0 = a * x0 ** 2 + b * x0 + c

print("Точка {} функции имеет координаты:\nx = {:.3f}\ty = {:.3f}".format(m, x0, y0))
