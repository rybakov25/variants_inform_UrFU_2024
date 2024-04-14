var
  a, b, c, D: real; {a, b, c - числа, x - искомая переменная, D - дискриминант}
  x: array[1..2] of real; {массив корней уравнения}
  cx: array[1..2] of Complex; {массив комплексных корней уравнения}

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
  else
  begin
    Writeln('Уравнение имеет мнимые корни!');
    cx[1] := (-b + Sqrt(D)) / (2 * a);
    cx[2] := (-b - Sqrt(D)) / (2 * a);
    Writeln('x1 = ', cx[1]);
    Writeln('x2 = ', cx[2]);
  end;
  if D = 0 then
    Writeln('Уравнение не имеет решений!');
end.
