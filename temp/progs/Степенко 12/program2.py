import random

deposit_of_rub = float(input("Введите сумму вклада в рублях: "))
percent = float(input("Введите процентную ставку: ")) / 100
shelf_life = float(input("Введите срок вклада: "))
yuan_exchange_rate_begin = 12.62  # 1 CNY = 12.62 RUB на 08.05.2024
yuan_exchange_rate_end = random.random() * 10

# перевод рублей в юани
deposit_of_cny = deposit_of_rub / yuan_exchange_rate_begin
print("Сумма вклада на начало срока в юанях: {:.3f}\n".format(deposit_of_cny))

# вычисление суммы вклада по сложному проценту
deposit = deposit_of_cny * (1 + percent) ** shelf_life

# перевод юаней в рубли
deposit_of_rub += deposit_of_cny * yuan_exchange_rate_end
print("Сумма вклада к концу срока в юанях: {:.3f}".format(deposit))
print("Сумма вклада к концу срока в рублях: {:.3f}".format(deposit_of_rub))
