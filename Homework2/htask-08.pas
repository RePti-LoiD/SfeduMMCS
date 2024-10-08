﻿{
Вычислить значение суммы, заданной следующей формулой (N>0):
}

begin
  var n := ReadInteger('Введите целое n:');
  var x := ReadReal('Введите вещественное x:');
  assert(n > 0);
  
  var (sum, xPow, divider) := (0.0, 1.0, 1.0);
  for var i := 1 to n do begin
    xPow *= x;
    divider *= 2;
    
    sum += (xPow + cos(xPow)) / divider;
  end;
  
  print($'Сумма выражения = {sum}');
end.

{
Введите целое n: 1
Введите вещественное x: 1
Сумма выражения = 0.77015115293407 

Введите целое n: 5
Введите вещественное x: 2.5
Сумма выражения = 9.96623609478878 

Введите целое n: 5
Введите вещественное x: 2.112
Сумма выражения = 5.47991287348074 
}