var
  s: string; {исходное число для перевода}
  i,b: integer; {b - основание системы счисления исходного числа}
  d,k: double;
  f,e: boolean;
 
begin
  b:=13;
  e:=false;
  Write('Введите число в системе с основанием ',b,': ');
  ReadLn(s);
  f:=false;
  k:=1;
  for i:=1 to Length(s) do if Ord(s[i])<48+b then begin
    if f then k:=k/b;
    case s[i] of
      '0'..'9': d:=d*b+Ord(s[i])-48;
      '.',',': if f then e:=true else f:=true;
      else f:=true
    end;
    if e then break
  end
  else e:=true;
  if e then
    WriteLn('Ошибка в записи числа')
  else
    WriteLn('Значение в десятичной системе: ',d*k);
end.
