﻿{
Даны вещественные числа X и eps (0 < eps < 1). Найти значение выражения с точностью eps:

Полученное число является приближенным значением функции sin.

Проверьте правильность вашей программы с помощью Assert: убедитесь, что найденное 
значение действительно является приближением функции sin в точке X. Приведите лог 
программы не менее, чем для трёх примеров.
}

begin
  var eps := ReadReal('Введите eps:');
  assert((0 < eps) and (eps < 1));
  var x := ReadReal('Введите x:');
  
  var prev := real.MaxValue;
  var current := x;
  var sum := current;
  var sign := -1;
  var factC := 1;
  
  while (abs(sum - prev) > eps) do begin
    prev := sum;
    current *= x * x / ((factC + 1) * (factC + 2)); 
    sum += current * sign;
    
    factC += 2;
    sign := -sign;
  end;
  
  assert(abs(sum - sin(x)) < eps);
  print(sum, sin(x));
end.

{
Введите eps: 0.0001
Введите x: 0.5
0.479425533234127 0.479425538604203 

Введите eps: 0.00000001
Введите x: 0.5
0.479425538616416 0.479425538604203

Введите eps: 0.0000001
Введите x: 3.1415
9.26530610692126E-05 9.26535896604902E-05 
}