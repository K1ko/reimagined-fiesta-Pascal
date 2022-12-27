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
    Edit1: TEdit;
    Image1: TImage;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
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

procedure TForm1.FormCreate(Sender: TObject);
begin
  Image1.Canvas.FillRect(Image1.ClientRect);
  Randomize;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  Image1.Canvas.Pen.Color:=ClRed;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  Image1.Canvas.Pen.Width:=StrToInt(Edit1.Text);
end;

procedure TForm1.Image1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
     If Shift =[ssLeft]
     then
         Image1.Canvas.MoveTo(x,y)
     else
       If Shift = [ssRight] then begin
       Image1.Canvas.Brush.Color:=Random(256*256*256);
       Image1.Canvas.FloodFill(x,y,clBlack,fsBorder);

       end;

end;

procedure TForm1.Image1MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
    If Shift = [ssLeft]
    then
        Image1.Canvas.LineTo(x,y)
    else If Shift = [ssRight] then begin
    Image1.Canvas.Brush.Color:=ClWhite;
    Image1.Canvas.Pen.Color:=ClWhite;
    Image1.Canvas.Pen.Width:=1;
    Image1.Canvas.Rectangle(x-2,y-2,x+2,y+2);
    end;
end;

end.

