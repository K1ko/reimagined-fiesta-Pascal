unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ExtCtrls, StdCtrls;

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
  Image1.Canvas.FillRect(Image1.ClientRect);
end;

procedure TForm1.Button1Click(Sender: TObject);
VAR A: INTEGER;
begin
  A:=Random(101)+100;
  Button1.Caption:=('Grafika');
  Image1.Canvas.Pen.Width:=Random(10);
  Image1.Canvas.Brush.Color:=Random(256*256*256);
  Image1.Canvas.Pen.Color:=Random(256*256*256);
  Image1.Canvas.Rectangle(0,0,A,A);
end;

end.

