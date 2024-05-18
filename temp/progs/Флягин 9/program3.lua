--[[
реализована задача 3.10
т. к. я не нашел в интернете даже примера
программы для решения задачи 3.9
]]--

print("Введите коэффициенты для уравнения вида: f(x) = ax^4 + bx^2 + c = 0, где a != 0")

io.write("a: ")
local a = io.read("*n") -- ввод коэффициента a
io.write("b: ")
local b = io.read("*n") -- ввод коэффициента b
io.write("c: ")
local c = io.read("*n") -- ввод коэффициента c

local D = b ^ 2 - 4 * a * c --    ^ - оператор возведения в степень

if D > 0 then
  local t1 = (-b + math.sqrt(D)) / (2 * a)
  local t2 = (-b - math.sqrt(D)) / (2 * a)
  local x1 = math.sqrt(t1)
  local x2 = -math.sqrt(t1)
  local x3 = math.sqrt(t2)
  local x4 = -math.sqrt(t2)
  print(string.format("x1 = %f\tx2 = %f\tx3 = %f\tx4 = %f", x1, x2, x3, x4))
elseif D == 0 then
  local t = -b / 2 * a
  local x1 = math.sqrt(t)
  local x2 = -math.sqrt(t)
  print(string.format("x1 = %f\tx2 = %f", x1, x2))
elseif D < 0 then
  print("Уравнение имеет мнимые корни!")
  local t1 = string.format("%.2f+%.2fi", (-b / 2 * a), (-D / 2 * a))
  local t2 = string.format("%.2f-%.2fi", (-b / 2 * a), (-D / 2 * a))
  print(string.format("x1 = %s\tx2 = %s", t1, t2))
end
