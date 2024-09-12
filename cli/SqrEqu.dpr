program SqrEqu;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;

var a, b, c, x1, x2, x, D, Eps : Real;

BEGIN
Eps := 0.0001;

write('Input a b c =>');
readln(a, b, c);

If a = 0 then
  if b = 0 then
    begin
    writeln('The equation is not compatible');
    readln;
    halt
    end
else
  begin
  x := -c / b;
  writeln('Root x=', x:8:2);
  readln;
  halt
  end
else
  begin
    D := sqr(b) - 4 * a * c;
    if D < 0 then
      begin
      writeln('The equation has no real roots');
      readln;
      halt
      end
else
  begin
    x := -b / (2 * a);
    if abs(D) < Eps then
      begin
      writeln('Roots are equal x1=x2=', x:8:2);
      readln;
      end
    else
      begin
      x2 := sqrt(D) / (2 * a);
      x1 := x2 + x;
      x2 := x - x2;
      writeln(' Roots:x1=', x1:8:2, ' x2=', x2:8:2);
      readln;
      end
  end
end
END.
