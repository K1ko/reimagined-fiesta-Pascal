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
    Button3: TButton;
    Button4: TButton;
    Image1: TImage;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
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

procedure TForm1.Button4Click(Sender: TObject);
begin
  ShowMessage(' Práve vypínaš program' );
  Close;
end;

procedure TForm1.Button1Click(Sender: TObject);
VAR X,Y,X1,Y1:Integer;
begin
  X:=Image1.Width DIV 2;
  Y:=Image1.Height DIV 2;
  X1:=Random(Image1.Width)+1;
  Y1:=Random(Image1.Height)+1;
  Image1.Canvas.Pen.Width:=Random(11)+10;
  Image1.Canvas.Pen.Color:=Random(256*256*256);
  Image1.Canvas.MoveTo(X,Y);
  Image1.Canvas.LineTo(X1,Y1);

end;

procedure TForm1.Button2Click(Sender: TObject);
VAR X,Y,A:Integer;
begin
  X:=Random(Image1.Width);
  Y:=Random(Image1.Height);
  A:=Random(20)+50;
  Image1.Canvas.Pen.Width:=2;
  Image1.Canvas.Pen.Color:=Random(256*256*256);
  Image1.Canvas.Brush.Color:=Random(256*256*256);
  Image1.Canvas.Ellipse(X,Y,X+A,Y+A);;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  Image1.Canvas.Pen.Color:=clWhite;
  Image1.Canvas.Brush.Color:=ClWhite;
  Image1.Canvas.FillRect(Image1.ClientRect);
end;

end.

