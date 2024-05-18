io.write("Введите десятичное число: ")
local num = io.read("*n")


function tobin(num)
    local tmp = {}
    repeat
        tmp[#tmp+1]=num % 2
        num = math.floor(num / 2)
    until num == 0
    return table.concat(tmp):reverse()
end


local bin = tobin(num)
local three = tonumber(num, 3)
print(string.format("%d base 10 -> %d base 2", num, bin))
print(string.format("%d base 10 -> %d base 3", num, three))
