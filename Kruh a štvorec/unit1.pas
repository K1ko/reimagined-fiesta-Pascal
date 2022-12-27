unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, ExtCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Image1: TImage;
    Label1: TLabel;
    Label2: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
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
Var X,Y,A,B,Obsah:Integer;
begin
  A:=StrToInt(Edit1.Text);
  B:=StrToInt(Edit2.Text);
  X:=Image1.Width DIV 2;
  Y:=Image1.Height DIV 2;
  Obsah:=SQR(B);
  Image1.Canvas.Pen.Width:=1;
  Image1.Canvas.Brush.Color:=clBlack;
  Image1.Canvas.Brush.Style:=bsHorizontal;
  Image1.Canvas.Ellipse(X-A,Y-A,X+A,Y+A);
  Image1.Canvas.Brush.Color:=clWhite;
  Image1.Canvas.Brush.Style:=bsSolid;
  Image1.Canvas.Rectangle(X-B DIV 2,Y-B DIV 2,X+B Div 2,Y+B Div 2);
  Image1.Canvas.Font.Height:=20;
  Image1.Canvas.TextOut(0,10,'Obsah štvorca so stranou a = ' + IntToStr(B)+ ' je ' + IntToStr(Obsah));



end;

end.

