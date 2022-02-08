uses turtlePas, graphABC;

var tur := new turtle(200, 100);

begin
  for var i := 0 to 180 do begin
    tur.setAngle(i * 2);
    tur.go(2);
    Arc(Trunc(tur.x), Trunc(tur.y), 40, 0, 360);
  end;
end.