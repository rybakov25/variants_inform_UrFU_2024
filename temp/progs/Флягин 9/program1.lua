io.write("Введите диаметр цилиндра: ")
local D = io.read("*n")

io.write("Введите толщину стенки цилиндра: ")
local r = io.read("*n")

io.write("Введите высоту цилиндра: ")
local h = io.read("*n")

io.write("Введите плотность материала цилиндра: ")
local p = io.read("*n")

local d = D - 2 * r  -- внутренний диаметр цилиндра
local V = D * h - d * h  -- объем получившейся трубы
local m = V * p  -- масса получившейся трубы

print(string.format("Масса цилиндра с толщиной стенки %d = %d", r, m))
