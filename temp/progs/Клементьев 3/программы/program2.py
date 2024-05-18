def parallel_resistance(r: list[float]) -> float:
    """функция вычисления сопротивления параллельно соединенных резисторов"""
    res = 0
    for i in range(len(r)):
        res += 1 / r[i]
    return res


resistences1group = [0, 0, 0]  # первая группа резисторов
resistences2group = [0, 0]     # вторая группа резисторов
resistences3group = [0, 0]     # третья группа резисторов

for i in range(len(resistences1group)):
    resistences1group[i] = float(input("Введите сопротивление резистора {}: ".format(i+1)))

for i in range(len(resistences2group)):
    resistences2group[i] = float(input("Введите сопротивление резистора {}: ".format(i+4)))

for i in range(len(resistences3group)):
    resistences3group[i] = float(input("Введите сопротивление резистора {}: ".format(i+6)))

circuit_resistance = parallel_resistance(resistences1group) \
+ parallel_resistance(resistences2group) \
+ parallel_resistance(resistences3group)

print("Сопротивление цепи равно: {:.3f} Ом".format(circuit_resistance))
