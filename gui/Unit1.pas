﻿unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    alabel: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    x1label: TLabel;
    x2label: TLabel;
    blabel: TButton;
    clabel: TButton;
    procedure clabelClick(Sender: TObject);
    procedure blabelClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.blabelClick(Sender: TObject);
begin
var a,b,c,x,x1,x2,D,Eps : Real;
Eps := 0.0001;
a := strtofloat(Edit1.text);
b := strtofloat(Edit2.text);
c := strtofloat(Edit3.text);

if a = 0 then
  if b = 0 then
    begin
    x1label.caption := '';
    x2label.caption := '';
    showMessage('Рівняння несумісне');
    end  else
begin
  x1 := -c / b;
  x1label.caption := 'x=' + floattostr(x1);
  x2label.caption := '';
  showMessage('Рівняння не є квадратним');
end else
begin
  D := sqr(b) - 4*a*c;
if D < 0 then
begin
  x1label.caption := '';
  x2label.caption := '';
  showMessage('Рівняння не має дійсних коренів');
end else
begin
x := -b / (2 * a);
if D < Eps then
begin
x1label.caption := 'x1=x2= ' + floattostr(x);
x2label.caption := '';
showmessage('Рівняння має два однакових кореня');
end;
x2 := sqrt(D) / (2 * a);
x1 := x2 + x;
x2 := x -x2;
x1label.Caption := 'x1=' + floattostr(x1);
x2label.Caption := 'x2=' + floattostr(x2);
end
end;
end;

procedure TForm1.clabelClick(Sender: TObject);
begin
close;
end;

end.
