expr = input("Введите выражение: ")
symbols = [i for i in expr if i != " "]

match symbols[1]:
    case "+":
        print(eval(expr))
    case "*":
        print(eval(expr))
    case "/":
        print(eval(expr))
    case _:
        print("Выражение содержит неподдерживаемый оператор: \"{}\"".format(symbols[1]))
