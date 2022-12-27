unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ExtCtrls, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Image1: TImage;
    Timer1: TTimer;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }
 // Globálna premenná
Var x: Integer = 0;
    y : Integer = 100;
    s : Integer = 10;
procedure TForm1.Timer1Timer(Sender: TObject);
Var r:Integer;  // lokálna premenná

begin

 //x:= 0;
 //y:=100;
 r:=50;
 Image1.Canvas.FillRect(Image1.ClientRect);
 Image1.Canvas.Rectangle(x,y,x+100,y+50);
 Image1.Canvas.Ellipse(x+20,y+40,x+r,y+40+30);
 Image1.Canvas.Ellipse(x+20+40,y+40,x+r+40,y+40+30);
 x:= x + s;
 if x > Image1.Width then x:=0;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  y:= y +50;
  if y > Image1.Height then y := 0;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  y := y -50;
  if y < 0 then y := Image1.Height-70;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
    If s > 0 then  s:=-10
    else  s:=10;

end;

end.

