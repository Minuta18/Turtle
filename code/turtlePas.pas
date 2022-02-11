unit turtlePas;

interface

  uses GraphABC;

  type
    ///Turtle - класс черепашки
    turtle = class
  
    public
    
      ///Координата X
      x: real;
      ///Координата Y
      y: real;
      ///Угол
      angle: real;
      ///Опущено ли перо
      isPenDown := false;
      ///Системное
      superFastMode := false;
    
      constructor Create(x, y: integer);
      begin
        self.x := x;
        self.y := y;
      end;
    
      ///Активирет "Супер-быстрый" рехжим
      procedure ActiveSuperFastMode();
      begin
        superFastMode := true;
        LockDrawing;
      end;
      
      ///Максимизирует окно
      procedure fullWindow();
      begin
        Window.Maximize;
      end;
      
      ///Рендеринг черепашки в супер-быстром режиме
      procedure update();
      begin
        if superFastMode then Redraw;
      end;
    
      ///Устанавливает позицию черепашки
      procedure setPos(x, y: integer);
      begin
        self.x := x;
        self.y := y;
      end;
      
      ///Опускает перо
      procedure penDown();
      begin
        self.isPenDown := true;
      end;
      
      ///Поднимает перо
      procedure penUp();
      begin
        self.isPenDown := false;
      end;
      
      ///Устанавливает Угол
      procedure setAngle(angle: real);
      begin
        self.angle := DegToRad(angle);
      end;
      
      ///Устанавливает угол в радианах
      procedure setAngleRad(angle: real);
      begin
        self.angle := angle;
      end;
      
      ///Поворачивает черепашку на угол
      procedure newAngle(angle: real);
      begin
        self.angle += DegToRad(angle);
      end;
      
      ///Очищает всё
      procedure clearAll();
      begin
        Window.Clear;
      end;
      
      ///Рисует точку в позиции черепахи с радиусом n
      procedure dot(n: integer);
      begin
        SetBrushColor(clBlack);
        if self.isPenDown then Circle(Trunc(x), Trunc(y), Trunc(n));
      end;
      
      ///Изменяет толщину пера
      procedure setPenWidth(n: integer);
      begin
        GraphABC.SetPenWidth(n);
      end;
      
      ///Двигает черепашку на расстояние n
      procedure go(n: integer);
      begin
        if(self.isPenDown)then begin
          Line(Trunc(self.x), Trunc(self.y), Trunc(self.x + n * Cos(self.angle)), Trunc(self.y + n * Sin(self.angle)));
          self.x := self.x + n * Cos(self.angle);
          self.y := self.y + n * Sin(self.angle);
        end else begin
          self.x := self.x + n * Cos(self.angle);
          self.y := self.y + n * Sin(self.angle);
        end;
        if not superFastMode then Sleep(50);
      end;
  
    end;

implementation

end.