uses turtlePas, graphABC;

var tur := new turtle(200, 100);

begin
  tur.setAngle(34);
  tur.penDown();
  tur.go(100);
  tur.penUp();
  tur.setAngle(0);
  tur.go(90);
  tur.setAngle(78);
  tur.penDown();
  tur.go(200);
end.