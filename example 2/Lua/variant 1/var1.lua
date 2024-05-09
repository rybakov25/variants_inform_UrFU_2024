--[Ввод координат X и Y для точек A, B и C]
print "Введите координаты точки A: "
Ax, Ay = io.read("*n", "*n")
print "Введите координаты точки B: "
Bx, By = io.read("*n", "*n")
print "Введите координаты точки C: "
Cx, Cy = io.read("*n", "*n")

--[Выичление длин сторон треугольника]
AB = math.sqrt((Ax - Bx)^2 + (Ay - By)^2)
BC = math.sqrt((Bx - Cx)^2 + (By - Cy)^2)
AC = math.sqrt((Ax - Cx)^2 + (Ay - Cy)^2)

print("Длина стороны AB: ", AB)
print("Длина стороны BC: ", BC)
print("Длина стороны AC: ", AC)
