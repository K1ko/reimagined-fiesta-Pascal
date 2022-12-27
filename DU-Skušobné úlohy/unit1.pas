unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ExtCtrls, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Button10: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    Button9: TButton;
    Image1: TImage;
    procedure Button10Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
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
  Var x,y,r,i:Integer;
begin
   Image1.Canvas.Brush.Color:=ClWhite;
    Image1.Canvas.FillRect(Image1.ClientRect);
    x:=150;
   y:=50;
   for i:=1 to 10 do begin
     r:=55-5*i;
     Image1.Canvas.Ellipse(x-r,y-r,x+r,y+r);
   end;
end;

procedure TForm1.Button10Click(Sender: TObject);
Var X,Y,R,I,J:Integer;
begin
   Image1.Canvas.Brush.Color:=ClWhite;
   Image1.Canvas.FillRect(Image1.ClientRect);
   Image1.Canvas.Brush.Color:=ClRed;
   R:=20;
   Y:=50;
   For j:=1 to 10 do begin
   x:=50;
   For i:=j to j+5 do begin
   Image1.Canvas.Ellipse(X-r,Y-r,X+r,Y+r);
   X:=X+2*r;
   end;
   Y:=Y+2*r;

   end;
end;

procedure TForm1.Button2Click(Sender: TObject);
Var x,y,r,i,j:Integer;
begin
    Image1.Canvas.Brush.Color:=ClWhite;
    Image1.Canvas.FillRect(Image1.ClientRect);
    x:=150;
    y:=100;
    for j:=1 to 4 do begin
      for i:=1 to 10 do begin
        r:=55-5*i;
        Image1.Canvas.Ellipse(x-r,y-r,x+r,y+r);
        end;
      x:=x+100;


      end;
    end;

procedure TForm1.Button3Click(Sender: TObject);
Var x,y,r,i:Integer;
begin
   Image1.Canvas.Brush.Color:=ClWhite;
   Image1.Canvas.FillRect(Image1.ClientRect);
   Image1.Canvas.Brush.Color:=ClRed;
  X:=50;
  Y:=50;
  r:=20;
  For i:=1 to 10 do begin
    Image1.Canvas.Ellipse(x-r,y-r,x+r,y+r);

  X:=X+2*r

  end;

end;

procedure TForm1.Button4Click(Sender: TObject);
Var X,Y,R,I,J:Integer;
begin
   Image1.Canvas.Brush.Color:=ClWhite;
   Image1.Canvas.FillRect(Image1.ClientRect);
   Image1.Canvas.Brush.Color:=ClRed;
   Y:=50;
   R:=20;
   For j:=1 to 10 do begin
    X:=50;
   For  i:=1 to 10 do begin

   Image1.Canvas.Ellipse(X-r,Y-r,X+r,Y+r);
   X:=X+2*r;
   end;
   Y:=Y+2*r;

   end;
end;

procedure TForm1.Button5Click(Sender: TObject);
Var X,Y,R,I,J:Integer;
begin
   Image1.Canvas.Brush.Color:=ClWhite;
   Image1.Canvas.FillRect(Image1.ClientRect);
   Image1.Canvas.Brush.Color:=ClRed;
   R:=20;
   Y:=50;
   For j:=1 to 10 do begin
   x:=50;
   For i:=1 to j do begin
   Image1.Canvas.Ellipse(X-r,Y-r,X+r,Y+r);
   X:=X+2*r;
   end;
   Y:=Y+2*r;
   end;
end;

procedure TForm1.Button6Click(Sender: TObject);
Var X,Y,R,I,J:Integer;
begin
    Image1.Canvas.Brush.Color:=ClWhite;
   Image1.Canvas.FillRect(Image1.ClientRect);
   Image1.Canvas.Brush.Color:=ClRed;
   R:=20;
   Y:=50;
   For j:=1 to 10 do begin
   x:=50;
   For i:=1 to 2*j do begin
   Image1.Canvas.Ellipse(X-r,Y-r,X+r,Y+r);
   X:=X+2*r;
   end;
   Y:=Y+2*r;

   end;
end;

procedure TForm1.Button7Click(Sender: TObject);
Var X,Y,R,I,J:Integer;
begin
     Image1.Canvas.Brush.Color:=ClWhite;
   Image1.Canvas.FillRect(Image1.ClientRect);
   Image1.Canvas.Brush.Color:=ClRed;
   R:=20;
   Y:=50;
   For j:=1 to 10 do begin
   x:=50;
   For i:=1 to 11-j do begin
   Image1.Canvas.Ellipse(X-r,Y-r,X+r,Y+r);
   X:=X+2*r;
   end;
   Y:=Y+2*r;

   end;
end;

procedure TForm1.Button8Click(Sender: TObject);
Var X,Y,R,I,J:Integer;
begin
    Image1.Canvas.Brush.Color:=ClWhite;
   Image1.Canvas.FillRect(Image1.ClientRect);
   Image1.Canvas.Brush.Color:=ClRed;
   R:=20;
   Y:=50;
   For j:=1 to 10 do begin
   x:=50;
   For i:=j to 10 do begin
   Image1.Canvas.Ellipse(X-r,Y-r,X+r,Y+r);
   X:=X+2*r;
   end;
   Y:=Y+2*r;

   end;
end;

procedure TForm1.Button9Click(Sender: TObject);
Var X,Y,R,I,J:Integer;
begin
    Image1.Canvas.Brush.Color:=ClWhite;
   Image1.Canvas.FillRect(Image1.ClientRect);
   Image1.Canvas.Brush.Color:=ClRed;
   R:=20;
   Y:=50;
   For j:=1 to 10 do begin
   x:=50;
   For i:=1 to (j DIV 2)+1 do begin
   Image1.Canvas.Ellipse(X-r,Y-r,X+r,Y+r);
   X:=X+2*r;
   end;
   Y:=Y+2*r;

   end;
end;

end.

