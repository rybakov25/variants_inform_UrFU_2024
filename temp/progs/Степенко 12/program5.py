n = int(input("Введите основание для переводимого числа (2-16): "))
m = int(input("Введите основание для переведенного числа (2-16): "))


def convert(num: int, base: int) -> int:
    """перевод числа num в число по базе base"""
    res = 0
    rank = 1
    while num > 0:
        modulo = num % base
        num //= base
        res += modulo * rank
        rank *= 10
    return res


number = int(input("Введите число по базе {}: ".format(n)))
number_m = convert(int(str(number), n), m)

print("{} base {} -> {} base {}".format(number, n, number_m, m))
