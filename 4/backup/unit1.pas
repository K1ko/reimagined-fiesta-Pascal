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
    Image1: TImage;
    Label1: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
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
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  Image1.Canvas.Pen.Width:=3;
  Image1.Canvas.Pen.Color:=clBlue;
  Image1.Canvas.Rectangle(100,50,200,150);
  Image1.Canvas.Line(100,250,250,250);
  Image1.Canvas.Line(0,0,668,397);
  Image1.Canvas.Line(0,Image1.Height,Image1.Width,0);
  Image1.Canvas.Line(100,200,200,100);
  Image1.Canvas.Pen.Color:=clYellow;
  Image1.Canvas.Line(200,100,200,300);
  Image1.Canvas.Line(300,150,300,350);
  Image1.Canvas.Line(150,200,500,200);
  Image1.Canvas.Pen.Color:=clRed;
  Image1.Canvas.Rectangle(100,50,200,75);
  Image1.Canvas.Rectangle(50,100,150,200);
  Image1.Canvas.Ellipse(0,50,100,150);
  Image1.Canvas.Ellipse(0,50,100,100);
  Image1.Canvas.Ellipse(0,50,50,150);
  Label1.Caption:=('Hello World!');
  Image1.Canvas.Line(334,0,334,397);
  Image1.Canvas.Pen.Color:=clGreen;
  Image1.Canvas.MoveTo(334,0);
  Image1.Canvas.LineTo(350,397);
  Image1.Canvas.MoveTo(0,Image1.Height);
  Image1.Canvas.LineTo(Image1.Width,0);
  Image1.Canvas.TextOut(334,0,'Programujeme v Pascale');
  Image1.Canvas.MoveTo(0,200);
  Image1.Canvas.LineTo(Random(300),Random(200));

end;

procedure TForm1.Button2Click(Sender: TObject);
begin
 Button1.Hide;
 Button2.Caption:=('Program sa vypína');
 ShowMessage('Práve ste vypli Program');


 Close;

end;

end.

