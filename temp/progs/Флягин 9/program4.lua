io.write("Введите число членов ряда: ")
local n = io.read("*n")

local e = math.exp(1)
local res = 0
for i = 2, n+1 do -- при значении i = 1, переменная res принимает значение inf
  res = res + 1 / (i * math.log(i, e) ^ 2)
end

print(string.format("Результат: %f", res))
