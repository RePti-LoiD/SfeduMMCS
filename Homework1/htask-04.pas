﻿{
Среди математических загадок есть последовательность, которую мы сейчас рассмотрим. 
Утверждается, что для любого начального числа эта последовательность всегда оканчивается 1. 
Последовательность может быть выражена следующим образом.
}

begin
  var n := ReadInteger('Введите целое число >0:');
  assert(n > 0);
  
  print(n);
  while not(n = 1) do begin
    if n mod 2 = 0 then 
      n := n div 2
    else
      n := n * 3 + 1;
    
    print(n);
  end;
end.

{
Введите целое число >0: 10
10 5 16 8 4 2 1 

Введите целое число >0: 5
5 16 8 4 2 1  

Введите целое число >0: 15
15 46 23 70 35 106 53 160 80 40 20 10 5 16 8 4 2 1 

Введите целое число >0: 27
27 82 41 124 62 31 94 47 142 71 214 107 322 161 484 242 121 364 182 91 274 137 412 
206 103 310 155 466 233 700 350 175 526 263 790 395 1186 593 1780 890 445 1336 668 
334 167 502 251 754 377 1132 566 283 850 425 1276 638 319 958 479 1438 719 2158 1079 
3238 1619 4858 2429 7288 3644 1822 911 2734 1367 4102 2051 6154 3077 9232 4616 2308 
1154 577 1732 866 433 1300 650 325 976 488 244 122 61 184 92 46 23 70 35 106 53 160 
80 40 20 10 5 16 8 4 2 1      =)
}