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
    Edit1: TEdit;
    Edit2: TEdit;
    Image1: TImage;
    Label1: TLabel;
    Label2: TLabel;
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

procedure TForm1.Button1Click(Sender: TObject);
Var X,Y,RozmerStvorca:Integer;
begin
 Image1.Canvas.Brush.Color:=ClWhite;
 Image1.Canvas.FillRect(Image1.ClientRect);
 Image1.Canvas.Pen.Width:=2;
   X:=25;
   Y:=150;
   RozmerStvorca:=StrToInt(Edit1.Text);
   while x + RozmerStvorca < Image1.Width do
begin
  Image1.Canvas.Rectangle(X,Y,X+RozmerStvorca,Y-RozmerStvorca);
  X:=X+RozmerStvorca;
  end;
   end;

procedure TForm1.Button2Click(Sender: TObject);
Var X,Y,VelkostPisma:Integer;
begin
 Image1.Canvas.Brush.Color:=ClWhite;
 Image1.Canvas.FillRect(Image1.ClientRect);
   X:=50;
   Y:=10;
   VelkostPisma:=15;
   While Y < Image1.Height - 15 do begin
   Image1.Canvas.Font.Height:=VelkostPisma;
   Image1.Canvas.Font.Name:='ArialBlack';
   Image1.Canvas.Font.Color:=Random(256*256*256);
   Image1.Canvas.TextOut(X,Y, Edit2.Text);
   Y:=Y+VelkostPisma;
   VelkostPisma:=VelkostPisma+5;
   end;

end;

procedure TForm1.Button3Click(Sender: TObject);
 Var R,X,Y,Z:Integer;
begin
 Image1.Canvas.Brush.Color:=ClWhite;
 Image1.Canvas.FillRect(Image1.ClientRect);
 X:=300;
 Y:=120;
 R:=120;
 Z:=0;
 While r >0 do begin
 Z:=Z+5;

 Image1.Canvas.Pen.Width:=2;
 Image1.Canvas.Ellipse(x,y,X+(2*r),Y+(2*r));
 R:=R-Z;
 X:=X+Z;
 Y:=Y+Z;

end;
  end;

procedure TForm1.Button4Click(Sender: TObject);
begin
  Button4.Caption:='Prebieha ukončovanie programu!';
  ShowMessage('Prajete si naozaj ukončiť program ?');
  Close;
end;

end.

