unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, ExtCtrls;

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
  Randomize;
end;

procedure TForm1.Button1Click(Sender: TObject);
Var x,y,i,r,j:Integer;
begin

  Image1.Canvas.Brush.Color:=ClRed;
  r:=10;
  y:=30;
  for j:=1 to 10 do begin

    x:=50;
    for i:=1 to 10 do begin

      Image1.Canvas.Ellipse(x-r, y-r , x+r , y+r);
      x:=x +r*2;
      end;

    y:= y +2*r;
    end;
  end;

procedure TForm1.Button10Click(Sender: TObject);
begin
   Button10.Caption:=('Prebieha ukončovanie programu ');
   ShowMessage('Práve ukončuješ program!');
  Close;
end;

procedure TForm1.Button2Click(Sender: TObject);
 Var x,y,i,r,j:Integer;
begin
     r:=10;
  y:=30;
  for j:=1 to 10 do begin
    x:=50;
    for i:=1 to 10 do begin
       Image1.Canvas.Brush.Color:=Random(256*256*256);
      Image1.Canvas.Ellipse(x-r, y-r , x+r , y+r);
      x:=x +r*2;
      end;
          y:= y +2*r;
          end;
     end;

procedure TForm1.Button3Click(Sender: TObject);
 Var x,y,i,r,j:Integer;
begin
       Image1.Canvas.Brush.Color:=ClRed;
  r:=10;
  y:=30;
  for j:=1 to 10 do begin

    x:=50;
    Image1.Canvas.Brush.Color:=Random(256*256*256);
    for i:=1 to 10 do begin

      Image1.Canvas.Ellipse(x-r, y-r , x+r , y+r);
      x:=x +r*2;
      end;

    y:= y +2*r;
end;
   end;

procedure TForm1.Button4Click(Sender: TObject);
 Var x,y,i,r,j:Integer;
begin
  r:=10;
  y:=30;
  for j:=1 to 10 do begin
    x:=50;
    for i:=1 to 10 do begin
      Image1.Canvas.Ellipse(x-r, y-r , x+r , y+r);
      x:=x +r*2;
      end;
    y:= y +2*r;


end;

     end;

procedure TForm1.Button5Click(Sender: TObject);
Var x,y,r,i,j:Integer;
begin
  Image1.Canvas.Brush.Color:=ClBlue;
   r:=10;
   y:=30;
   for j:=1 to 10 do begin
     x:=50;
     for i:=j to 10 do begin
       Image1.Canvas.Rectangle(x-r,y-r,x+r,y+r);
       x:=x+2*r;
       end;
     y:=y + 2*r;
     end;

    end;

procedure TForm1.Button6Click(Sender: TObject);
 Var x,y,r,i,j:Integer;
begin
  Image1.Canvas.Brush.Color:=ClFuchsia;
   r:=10;
   y:=30;
   for j:=1 to 10 do begin
     x:=250;
     for i:=1 to 11-j  do begin
       Image1.Canvas.Rectangle(x-r,y-r,x+r,y+r);
       x:=x-2*r;
       end;
     y:=y + 2*r;
end;
   end;

procedure TForm1.Button7Click(Sender: TObject);
Var x,y,r,i,j:Integer;
begin
   Image1.Canvas.Brush.Color:=ClFuchsia;
   r:=10;
   y:=30;
   for j:=1 to 10 do begin
     x:=250;
     for i:=1 to j do begin
       Image1.Canvas.Ellipse(x-r,y-r,x+r,y+r);
       x:=x+2*r;
       end;
     y:=y + 2*r;
     end;
     end;

procedure TForm1.Button8Click(Sender: TObject);
 Var x,y,r,i,j:Integer;
begin
     Image1.Canvas.Brush.Color:=ClGreen;
   r:=10;
   y:=30;
   for j:=1 to 10 do begin
     x:=250;
     for i:=1 to j do begin
       Image1.Canvas.Ellipse(x-r,y-r,x+r,y+r);
       x:=x-2*r;
       end;
     y:=y + 2*r;
end;
    end;

procedure TForm1.Button9Click(Sender: TObject);
begin
   Image1.Canvas.Brush.Color:=ClWhite;
   Image1.Canvas.FillRect(Image1.ClientRect);
end;




end.

