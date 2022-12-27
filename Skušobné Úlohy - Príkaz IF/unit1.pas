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
    Edit1: TEdit;
    Image1: TImage;
    Label1: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
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
Var A,X,Y,I,Z:Integer;
begin
  A:=20;
  X:=50;
  Y:=100;
  Z:=Random(256*256*256);
  For i:=1 to 20 do begin
    Z:=Random(256*256*256);
    If I mod 4 = 0 then
    Image1.Canvas.Brush.Color:=Z
    else
      Image1.Canvas.Brush.Color:=ClYellow;
    Image1.Canvas.Rectangle(X,Y,X+A,Y+A);
    X:=X+20;

  end;
end;

procedure TForm1.Button2Click(Sender: TObject);
Var Cislo,I,Y:Integer;
begin
 Image1.Canvas.Brush.Color:=ClWhite;
 Image1.Canvas.FillRect(Image1.ClientRect);
 Cislo:=StrToInt(Edit1.Text);
 Y:=0;
 For i:=1 to Cislo do Begin
     If Cislo MOD I= 0 then
     begin
       Image1.Canvas.TextOut(100,Y,IntToStr(I));
       Y:=Y+50;
     end;
 end;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  Button3.Caption:='Prebieha ukončovanie programu...';
  ShowMessage(' Želáte si program naozaj ukončiť ? ' );
  Close;
end;

end.

