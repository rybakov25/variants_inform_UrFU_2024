var
  resistences1group: array[1..3] of real; {первая группа резисторов}
  resistences2group: array[1..2] of real; {вторая группа резисторов}
  resistences3group: array[1..2] of real; {третья группа резисторов}
  i: integer;
  CircuitResistance: real;

{функция вычисления сопротивления последовательно соединенных резисторов}
function SequentialResistance(const r: array of real): real;
var res: real; i: integer;
begin
  res := 0;
  for i := 1 to High(r) do
    res := res + r[i];
  SequentialResistance := res;
end;

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
  for i := 1 to High(resistences1group) do
  begin
    Write('Введите сопротивление резистора ', i, ': ');
    Readln(resistences1group[i]);
  end;
  for i := 1 to High(resistences2group) do
  begin
    Write('Введите сопротивление резистора ', i+3, ': ');
    Readln(resistences2group[i]);
  end;
  for i := 1 to High(resistences3group) do
  begin
    Write('Введите сопротивление резистора ', i+5, ': ');
    Readln(resistences3group[i]);
  end;
  CircuitResistance := ParallelResistance(resistences1group)
  + SequentialResistance(resistences2group)
  + ParallelResistance(resistences3group);
  Write('Сопротивление цепи равно: ', CircuitResistance:0:3, ' Ом');
end.
