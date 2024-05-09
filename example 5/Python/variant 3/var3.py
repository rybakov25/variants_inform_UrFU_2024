import copy

num = input("Введите пятиричное число: ")
num_to_9 = copy.deepcopy(num)

num = int(num, 5)
num_to_9 = int(num_to_9)

num10 = ""
while num > 0:
    num10 += str(num % 10)
    num //= 10
num10 = num10[::-1]

num9 = ""
while num_to_9 > 0:
    num9 += str(num_to_9 % 9)
    num_to_9 //= 9
num9 = num9[::-1]

print("base 10: {}\tbase 9: {}".format(num10, num9))
