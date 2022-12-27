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
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Image1: TImage;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Image1Click(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.Image1Click(Sender: TObject);
begin

end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  Image1.Canvas.FillRect(Image1.ClientRect);
  Randomize;
end;

procedure TForm1.Button1Click(Sender: TObject);
Var i,x:Integer;
begin


     Image1.Canvas.MoveTo(0,0) ;
     Image1.Canvas.LineTo(0,300);

     For i:= 1 to 31 do begin

   x:=300-(10*i);
   Image1.Canvas.Pen.Color:=Random(256*256*256);
  Image1.Canvas.Pen.Width:=3;
  Image1.Canvas.MoveTo(10*i,0);
  Image1.Canvas.LineTo(0,x);
   Button4.Caption:='Vyčisti Plochu!';
end;

end;

procedure TForm1.Button2Click(Sender: TObject);
Var
  x,y,i:Integer;
begin
   x:=0;
   y:=0;
   Image1.Canvas.Font.Name:='Ink Free';
   Image1.Canvas.Font.Height:=25;
   Image1.Canvas.Brush.Style:=bsclear;
   For i:=1 to 10 do begin
     Image1.Canvas.Font.Color:=ClGray;
     Image1.Canvas.TextOut(x,y,'I love Slovakia');
     x:=x+1;
     y:=y+1;
     end ;
   Image1.Canvas.Font.Color:=ClBlue;
   Image1.Canvas.TextOut(x,y,'I love Slovakia');
   Button4.Caption:='Vyčisti Plochu!';
   end;

procedure TForm1.Button3Click(Sender: TObject);
Var
i,k,r,x,y:Integer;
begin
  x:=Image1.Width - 75;
  y:=0+75;

  r:=10;
  For i:=1 to 10 do begin
    k:=Random(256*256*256);
    Image1.Canvas.Pen.Width:=10;
    Image1.Canvas.Pen.Color:=k;
    Image1.Canvas.Brush.Color:=k;
    Image1.Canvas.Ellipse(x-r,y-r,x+r,y+r);
    x:=x-75;
    y:=y+75;
  end;
  Button4.Caption:='Vyčisti Plochu!';
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
   Image1.Canvas.Brush.Color:=ClWhite;
   Image1.Canvas.FillRect(Image1.ClientRect);
  Button4.Caption:='Plocha úspešne vybielená!';
end;

procedure TForm1.Button5Click(Sender: TObject);
begin
  Button4.Caption:='Vyčisti Plochu!';
  Button5.Caption:='Ukončujete program !';
  ShowMessage('Naozaj chcete ukončiť program ?');
  Close;
end;






 End.

