program program4_9;

var
  i, n: integer;
  res: real;

begin
  Write('Введите число членов ряда: '); Readln(n);
  res := 0;
  for i := 1 to n do
    res := res + (1 / i * Power(Log(i), 2));
  Writeln('Результат: ', res);
end.
