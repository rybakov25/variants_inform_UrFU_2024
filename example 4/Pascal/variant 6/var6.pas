var
  n, i: integer; {n - количество членов ряда}
  res: real; {res - результат}

function Power(x, y: integer): integer; {функция возведения x в степень y}
var i, r: integer;
begin
  r := 1;
  for i := 1 to y do
    r := r * x;
  Power := r;
end;

begin
  Write('Введите количество членов ряда: '); Readln(n);
  res := 0;
  for i := 1 to n do
    res := res + (Power(-1, n) * (Power(3, n) / (Power(n, 2) - 1)));
  Writeln('Результат: ', res);
end.
