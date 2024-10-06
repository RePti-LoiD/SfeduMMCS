{
Дано целое трёхзначное число. Вывести значение True, если все цифры 
данного числа различны, и False в противном случае.
}

begin
  var inputValue := ReadInteger('Введите трехзначное число: ');
  
  assert(inputValue in 100..999);
  
  var fDigit := inputValue mod 1000 div 100;
  var sDigit := inputValue mod 100 div 10;
  var tDigit := inputValue mod 10;
  
  print($'{not((fDigit = sDigit) or (fDigit = tDigit) or (sDigit = tDigit))}');
end.

{
Введите трехзначное число:  221
False 

Введите трехзначное число:  212
False 

Введите трехзначное число:  122
False 

Введите трехзначное число:  123
True 
}