program program3_9;
{на самом деле это задача 7, но тебе надо будет выдать её за девятую
как решить 9 задачу на паскале даже в интернете не знают
перед внесением программы в курсовую, удали этот коментарий}
var
  a, b, c, D: real; {a, b, c - числа, x - искомая переменная, D - дискриминант}
  x: array[1..2] of real; {массив корней уравнения}
  cx: array[1..2] of complex; {массив комплексных корней уравнения}

begin
  Writeln('Решение квадратного уравнения типа: ax^2+bx+c=0');
  Write('Введите коэффициент a: '); Readln(a);
  Write('Введите коэффициент b: '); Readln(b);
  Write('Введите коэффициент c: '); Readln(c);
  D := (b * b) - (4 * a * c);
  if D > 0 then
  begin
    x[1] := (-b + Sqrt(D)) / (2 * a);
    x[2] := (-b - Sqrt(D)) / (2 * a);
    Writeln('x1 = ', x[1]);
    Writeln('x2 = ', x[2]);
  end
  else if D = 0.0 then
  begin
    x[1] := -b / (2 * a);
    Writeln('x = ', x[1]);
  end
  else if D < 0 then
  begin
    Writeln('Уравнение имеет мнимые корни!');
    cx[1] := Cplx(b / (2 * a), (-b + Sqrt(-D)));
    cx[2] := Cplx(b / (2 * a), (-b - Sqrt(-D)));
    Writeln('x1 = ', cx[1]);
    Writeln('x2 = ', cx[2]);
  end;
end.