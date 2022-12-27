unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, ExtCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Image1: TImage;
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
  Image1.Canvas.Fillrect(Image1.ClientRect);

end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  Button1.Caption:= 'Hello World"! ';
  Image1.Canvas.Pen.Width:=3;
  Image1.Canvas.Pen.Color:=clblue;
  Image1.Canvas.Ellipse(250,50,350,150);
  Image1.Canvas.Ellipse(200,150,400,350);
  Image1.Canvas.Ellipse(150,350,450,650);
end;

end.

