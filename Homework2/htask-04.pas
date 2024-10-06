{
Дано вещественное число X и целое число N>0. Найти значение выражения
}

begin
  var x := ReadReal('Введите вещественное x:');
  var n := ReadInteger('Введите целое n:');
  assert(n > 0);
  
  var (sum, numerator, divider, dividerC, sign) := (x, x, 1, 1, -1);
  for var i := 1 to n do begin
    numerator *= x * x;
    divider *= (dividerC + 1) * (dividerC + 2);
    sum += (numerator / divider) * sign;
    
    dividerC += 2;
    sign := -sign;
  end;
  
  print($'Сумма ряда = {sum}');
end.

{
Введите вещественное x: 1.5707963267949 
Введите целое n: 5
Сумма ряда = 0.999999943741051 

Введите вещественное x: 3.14
Введите целое n: 5
Сумма ряда = 0.00115039704034289

Введите вещественное x: 3
Введите целое n: 6
Сумма ряда = 0.141699790247308 
}