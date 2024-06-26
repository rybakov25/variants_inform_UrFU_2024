import math

# нахождение боковых сторон
# усеченной пирамиды с основанием - равносторонний треугольник

a = int(input("Введите длину стороны большего основания: "))

b = int(input("Введите длину стороны меньшего основания: "))

h = int(input("Введите высоту усеченной пирамиды: "))

P = a * 3  # периметры оснований
p = b * 3

# апофема
d = math.sqrt((a - b) ** 2 + h ** 2)

S1 = (a ** 2 * math.sqrt(3)) / 4  # площадь большего основания
S2 = (b ** 2 * math.sqrt(3)) / 4  # площадь меньшего основания

S = (P + p) / 2 * d
V = (1 / 3) * h * (S1 + S2 + math.sqrt(S1 * S2))

print("Площадь боковой стороны усеченной пирамиды: {:.3f}".format(S))
print("Объем усеченной пирамиды: {:.3f}".format(V))
