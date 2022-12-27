unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ExtCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Image1: TImage;
    procedure Image1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image1MouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer
      );
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.Image1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  If Shift = [ssLeft] then
     Image1.Canvas.Ellipse(x-20,y-20,x+20,y+20)
  Else

  If Shift = [ssRight] then
     Image1.Canvas.FillRect(Image1.ClientRect)
  Else
    Image1.Canvas.Rectangle(x-20,y-20,x+20,y+20);
end;

procedure TForm1.Image1MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  If Shift = [ssLeft] then begin
  Image1.Canvas.Brush.Color:=Random(256*256*256);
  Image1.Canvas.Ellipse(x-50,y-50,x+50,y+50)
    end;
end;

end.

