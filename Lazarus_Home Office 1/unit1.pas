unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ExtCtrls, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Image1: TImage;
    Label1: TLabel;
    Timer1: TTimer;
    procedure Image1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Timer1Timer(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }
 Var x1 : Integer = 0;
     y1 : Integer = 0;
     sx : Integer = 10;
     sy : Integer = 15;
procedure TForm1.Timer1Timer(Sender: TObject);
begin
  Image1.Canvas.Brush.Color:=ClWhite;
  Image1.Canvas.FillRect(Image1.ClientRect);
  Image1.Canvas.Brush.Color:=ClRed;
  Image1.Canvas.Rectangle(x1,y1,x1+50,y1+50);
  x1:=x1+sx;
  y1:=y1+sy;
  If (x1+50 > Image1.Width) or (x1 < 0)  then sx :=  -sx;
   If (y1+50 > Image1.Height) or (y1 < 0) then sy := -sy;
end;
 Var Skore: Integer = 0;
procedure TForm1.Image1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
    If Shift = [ssLeft]  then begin
       If Image1.Canvas.Pixels [x,y] = ClRed then
       skore := skore + 1
       Else
         skore := skore - 2

    end;
    Label1.Caption:= IntToStr(Skore) ;
end;

end.

