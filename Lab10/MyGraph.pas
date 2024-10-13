unit MyGraph;
uses GraphWPF;

procedure DrawCenteredCircle;
begin
  Circle(Window.Center.X, Window.Center.Y, Window.Height / 2, RandomColor);
end;

procedure DrawDiagonals;
begin
  Line(0, 0, Window.Width, Window.Height, Colors.Black);
  Line(Window.Width, 0, 0, Window.Height, Colors.Black);
end;

procedure DrawRectInCorners(w: real; h: real);
begin
  Rectangle(0, 0, w, h, Colors.Green);
  Rectangle(Window.Width - w, Window.Height - h, w, h, Colors.Red);
end;

procedure CrossEllipse(x: real; y: real; w: real; h: real);
begin
  Ellipse(x, y, w, h, Colors.Bisque);
end;

begin
end.