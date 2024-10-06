{
  Дано целое число N и цифра D. Если в записи числа N 
  имеется цифра D, вывести True, иначе вывести False.
}

begin
  var (a, b) := ReadInteger2('Введите 2 числа: ');
  
  var flag := False;
  while a > 0 do begin
    if a mod 10 = b then
      flag := True;
      
    a := a div 10;
  end;
  
  Println($'Цифра D есть в числе N: {flag}'); 
end.

{
Введите 2 числа:  123 3
Цифра D есть в числе N: True

Введите 2 числа:  123 5
Цифра D есть в числе N: False

Введите 2 числа:  777 7
Цифра D есть в числе N: True

Введите 2 числа:  777 8
Цифра D есть в числе N: False
}