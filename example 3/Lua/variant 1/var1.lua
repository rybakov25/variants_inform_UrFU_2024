A = {}
B = {}
C = {}
G = {}

print "Введите координаты точки A"
for i = 1 , 3 do A[i] = io.read("*n") end
print "Введите координаты точки B"
for i = 1 , 3 do B[i] = io.read("*n") end
print "Введите координаты точки C"
for i = 1 , 3 do C[i] = io.read("*n") end

G[1] = (A[1] + B[1] + C[1]) / 3;
G[2] = (A[2] + B[2] + C[2]) / 3;
G[3] = (A[3] + B[3] + C[3]) / 3;

print(string.format("Координаты центра тяжести треугольника ABC: %f %f %f", G[1], G[2], G[3]))
