#### Модуль TurtlePas для PascalABC.NET

Модуль позваляет работать с черепашьей графикой в языке PascalABC.NET. Для работы требуется наличие модуля GraphABC (встроенный модуль). Пример кода:

`Pascal uses turtlePas;

var tur := new turtle(200, 100);

begin
  tur.penDown();
  tur.setAngle(45);
  tur.go(100);
end. 
`
