{
Даны два целых числа. Сформировать новое число, в записи которого сначала идут разряды 
первого числа, а затем второго. В качестве знака для нового числа выбрать знак первого 
числа (если первое число — 0, то выбрать положительный знак).
}

begin
    var (a, b) := ReadInteger2('Введите 2 целых числа:');
    var sign := if a = 0 then 1 else sign(a);    
    (a, b) := (abs(a), abs(b));
    var (res, modifier) := (0, if b = 0 then 10 else 1);
    
    while b > 0 do begin 
      res += (b mod 10) * modifier;
      b := b div 10;
      modifier *= 10;
    end;
    
    while a > 0 do begin
      res += (if a mod 10 = 0 then 1 else (a mod 10)) * modifier;
      a := a div 10;
      modifier *= 10;
    end;
    
    print(res * sign);
end.

{
Введите 2 целых числа: 72 0
720 

Введите 2 целых числа: -1 390
-1390 

Введите 2 целых числа: 0 -21
21

Введите 2 целых числа: -77 666
-77666 
}