var
    a, i, j, k: integer;

begin
    Write('Введите начальное значение диапозона: ');
    Readln(a);
    for i := a to 10 do
        Writeln(i, ' ^ 2 = ', i*i);
end.