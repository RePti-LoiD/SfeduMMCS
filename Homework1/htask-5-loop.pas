﻿{
Дано вещественное число A и целое число N (N>0). Найти A^N.
}

begin
  var (a, n) := ReadInteger2('Введите (а - целое) и (n > 0): ');
  
  var res := 1;
  loop n do
    res *= a;
  
  print($'a^n = {res}');
end.

{
Введите (а - целое) и (n > 0):  2 3
a^n = 8 

Введите (а - целое) и (n > 0):  2 12
a^n = 4096 

Введите (а - целое) и (n > 0):  3 3
a^n = 27 
}