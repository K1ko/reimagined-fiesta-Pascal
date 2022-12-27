unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, ExtCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Image1: TImage;
    Timer1: TTimer;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Image1Click(Sender: TObject);
    procedure Image1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image1MouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer
      );
    procedure Timer1Timer(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }
Var x: Integer =0;
    y :Integer = 0;
    s: Integer =0;
procedure TForm1.Timer1Timer(Sender: TObject);

begin

  x:=Random(Image1.Width);
   y:=Random(Image1.Height);
  Image1.Canvas.Brush.Color:=Random(256*256*256);
  Image1.Canvas.Rectangle(x,y,x+30,y+60);
  s := s+1;
  If  (s+1) >= 50 then
  //Image1.Canvas.Brush.Color:=ClWhite;
  Image1.Canvas.FillRect(Image1.ClientRect);
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
   Image1.Canvas.FillRect(Image1.ClientRect);
end;

procedure TForm1.Button1Click(Sender: TObject);
Var a:Integer;
begin
  a :=100;
  Timer1.Interval := Timer1.Interval +a;
  Timer1.Enabled:=True;
  a := a+100;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  Timer1.Enabled:=False;
end;

procedure TForm1.Image1Click(Sender: TObject);
begin

end;

procedure TForm1.Image1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin

end;

procedure TForm1.Image1MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  Image1.Canvas.Brush.Color:=ClBlue;
  If shift = [ssLeft] then Image1.Canvas.Fillrect(Image1.ClientRect);
end;

end.

