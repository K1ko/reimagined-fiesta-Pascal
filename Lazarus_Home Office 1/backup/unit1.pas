unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ExtCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Image1: TImage;
    Timer1: TTimer;
    procedure Timer1Timer(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }
 Var x : Integer = 0;
     y : Integer = 0;
     sx : Integer = 10;
     sy : Integer = 15;
procedure TForm1.Timer1Timer(Sender: TObject);
begin
  Image1.Canvas.FillRect(Image1.ClientRect);
  Image1.Canvas.Rectangle(x,y,x+50,y+50);
  x:=x+sx;
  y:=y+sy;
  If (x+50 > Image1.Width) or (x < 0)  then sx :=  -sx;
   If (y+50 > Image1.Height) or (y < 0) then sy := -sy;
end;

end.

