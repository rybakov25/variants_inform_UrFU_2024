var
    a: array [1..1000] of integer;
    chislo, k: integer;
    bin, sept: string;
    i, n: longint;

begin
    n := 1;
    Write('Введите число: '); Readln(chislo);
    
    bin := IntToStr(chislo);
    
    for i := 1 to 1000 do
    begin
        if (chislo mod 10) = 0 then
        begin
            a[i] := 0;
            chislo := chislo div 10;
        end
        else
        begin
            a[i] := 1;
            chislo := chislo div 10;
        end;
    end;
    for i := 1 to 1000 do
    begin
        k := k + a[i] * n;
        n := n * 2;
    end;
    
    for i := 1 to length(bin) do n := 2 * n + (ord(bin[i]) - ord('0'));
    repeat
    sept := char(n mod 7 + ord('0')) + sept;
    n := n div 7
    until n = 0;
    writeln('Семеричное число: ', sept);
    Write('Десятичное число: ', k);
end.
