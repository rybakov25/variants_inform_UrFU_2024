﻿var
  R, P, V, m: real;
  {R - радиус сферы, P - плотность материала сферы, V - объем сферы,
  m - масса сферы}

begin
  Write('Введите радиус сферы: '); Readln(R);
  Write('Введите плотность: '); Readln(P);
  V := (4/3) * Pi * Power(R, 3); {расчет объема сферы}
  m := P * V; {расчет массы сферы}
  Write('Масса сферы: m = ', m:0:2);
end.
