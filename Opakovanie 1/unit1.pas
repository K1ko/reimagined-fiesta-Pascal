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
  Image1.Canvas.FillRect(Image1.ClientRect);
  Randomize;
end;

procedure TForm1.Button1Click(Sender: TObject);
Var A, B , i , X , Y , R , Z : Integer;
begin
     X:=50;
     Y:= 100;
     R := 25;
     For i := 1 to 10 do begin
       Image1.Canvas.Brush.Color:=Random(256*256*256);
       Image1.Canvas.Ellipse(X-25,Y-25,X+25,Y+25);
       X:= X + 50;
       Y:= Y + 15;
       begin
       For Z := 1 to 10 do begin
         A:= 50;
         B:=Image1.Height -25;
         Image1.Canvas.Brush.Color:=Random(256*256*256);
         Image1.Canvas.Ellipse( A -25 , B - 25 , A + 25 , B + 25) ;
         A:= A + 50 ;
         B:= B - 15;

        end;
        end;
     end;

end;

end.

