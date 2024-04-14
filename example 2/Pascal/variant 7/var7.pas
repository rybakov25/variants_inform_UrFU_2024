var
  resistences1group: array[1..3] of real; {первая группа резисторов}
  resistences2group: array[1..2] of real; {вторая группа резисторов}
  resistences3group: array[1..2] of real; {третья группа резисторов}
  I: array[1..3] of real; {токи на участках цепи}
  it: integer;
  Uab: real;

{функция вычисления сопротивления параллельно соединенных резисторов}
function ParallelResistance(const r: array of real): real;
var res: real; i: integer;
begin
  res := 0;
  for i := 1 to High(r) do
    res := res + (1/r[i]);
  ParallelResistance := res;
end;

begin
  Write('Введите напряжение в цепи (Uab): '); Readln(Uab);
  for it := 1 to High(resistences1group) do
  begin
    Write('Введите сопротивление резистора ', it, ': ');
    Readln(resistences1group[it]);
  end;
  for it := 1 to High(resistences2group) do
  begin
    Write('Введите сопротивление резистора ', it+3, ': ');
    Readln(resistences2group[it]);
  end;
  for it := 1 to High(resistences3group) do
  begin
    Write('Введите сопротивление резистора ', it+5, ': ');
    Readln(resistences3group[it]);
  end;
  I[1] := Uab / ParallelResistance(resistences1group);
  I[2] := Uab / ParallelResistance(resistences2group);
  I[3] := Uab / ParallelResistance(resistences3group);
  Writeln('Сила тока в 1 участке цепи: ', I[1]:0:3, ' А');
  Writeln('Сила тока во 2 участке цепи: ', I[2]:0:3, ' А');
  Writeln('Сила тока в 3 участке цепи: ', I[3]:0:3, ' А');
end.
