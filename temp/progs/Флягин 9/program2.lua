io.write("Введите сумму вклада: ")
local deposit = io.read("*n")

io.write("Введите процентную ставку: ")
local percent = io.read("*n")
percent = percent / 100

io.write("Введите срок вклада: ")
local shelf_life = io.read("*n")

for _ = 1, shelf_life do
  deposit = deposit + (deposit * percent)
end

print(string.format("Сумма вклада к концу срока равна %.2f", deposit))
