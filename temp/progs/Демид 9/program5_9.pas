program program5_9;

var
  dec, bin, threenum: integer;

function convert(num: integer; base: integer): integer;
var modulo, rank, res: integer;
begin
  res := 0;
  rank := 1;
  while num > 0 do
  begin
      modulo := num mod base;
      num := num div base;
      res := res + modulo * rank;
      rank := rank * 10;  
  end;
  convert := res;
end;

begin
  Write('Введите десятичное число: '); Readln(dec);
  bin := convert(dec, 2);
  threenum := convert(dec, 3);
  Writeln(dec, ' to base 2 -> ', bin);
  Writeln(dec, ' to base 3 -> ', threenum);
end.
