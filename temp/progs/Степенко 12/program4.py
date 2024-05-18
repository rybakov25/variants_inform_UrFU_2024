import math

n = int(input("Введите число членов ряда: "))

res = 0
for i in range(1, n+1):
    try:
        res += 3 ** math.log(i) / (i ** 2 - 1)
    except ZeroDivisionError as e:
        print("На итерации {} произошло исключение: {}".format(i, e))

print("Результат: ", res)
