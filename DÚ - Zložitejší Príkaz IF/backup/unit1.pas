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
Var X,Y,Z,A,B,C:Integer;
begin
  Image1.Canvas.Brush.Color:=ClWhite;
  Image1.Canvas.FillRect(Image1.ClientRect);
  Image1.Canvas.Font.Height:=20;
  Image1.Canvas.Font.Name:=' Arial Black ';
   A:=50;
   B:=70;
   C:=50;
   X:=Random(8)+2;
   Y:=Random(8)+2;
   Z:=Random(8)+2;
   Image1.Canvas.TextOut( A,B,IntToStr(X));
   Image1.Canvas.TextOut(A+40,B,IntToStr(Y));
   Image1.Canvas.TextOut(A+80,B,IntToStr(Z));
   If (X=Y) and (Y=Z) and (X=Z) then Image1.Canvas.TextOut(C,B+C,' BINGO! ')
      else
   If (X=Y) or (Y=Z) or (X=Z)then Image1.Canvas.TextOut(C,B+C,' Super! ')
      else
   If (X<>Y) and (Y<>Z) and (Z<>X) then Image1.Canvas.TextOut(C,B+C,' Škoda !');
end;

procedure TForm1.Button2Click(Sender: TObject);
Var Vek,A,X,Y:Integer;
  Meno:String;
begin
  Image1.Canvas.Brush.Color:=ClWhite;
  Image1.Canvas.FillRect(Image1.ClientRect);
  Image1.Canvas.Font.Height:=20;
  Image1.Canvas.Font.Name:=' Arial Black ';
  A:=15;
  X:=50;
  Y:=100;
  Meno:=Edit1.Text;
  Vek:=StrToInt(Edit2.Text);
  If Vek < A
    then
     Begin
     Image1.Canvas.Font.Color:=ClRed;
     Image1.Canvas.TextOut(X,Y,Meno + ' má ' + IntToStr(Vek) + ' rokov ' + ' , nemá občiansky preukaz , ' + ' bude ho mať o ' IntToStr(A-Vek) + ' rokov ! ');
     end
    Else
  If Vek = A
    then
     Begin
     Image1.Canvas.Font.Color:=ClBlue;
     Image1.Canvas.TextOut(X,Y,Meno + ' má ' + IntToStr(Vek) + ' rokov ' + ' , preto dostane tento rok občiansky preukaz ! ');
     end
    Else
     Begin
     Image1.Canvas.Font.Color:=ClGreen;
     Image1.Canvas.TextOut(X,Y,Meno + ' má ' + IntToStr(Vek) + ' rokov ' + ' , má občiansky preukaz ' + ' už ' + IntToStr(Vek - A) + ' rokov !' );
end;
  end;
procedure TForm1.Button3Click(Sender: TObject);
Var A,X,Y,I,V:Integer;
begin
   V:=Image1.Width Div 3;
   Image1.Canvas.Brush.Color:=ClWhite;
   Image1.Canvas.FillRect(Image1.ClientRect);
   for i:= 1 to 50 do begin
   X:=Random(Image1.Width);
   Y:=Random(Image1.Height);
   A:=10;
   If (X > 0) AND (X < (V +1)) then
   Image1.Canvas.Brush.Color:=ClRed
       Else
         If (X > V) and (X < (V * 2)+1) then
         Image1.Canvas.Brush.Color:=ClBlue
         Else
           If (X> V*2 ) And (X < (Image1.Width+1)) then
           Image1.Canvas.Brush.Color:=ClGreen;
         Image1.Canvas.Rectangle(X-A,Y-A,X+A,Y+A);
   end;
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
  Button4.Caption:=' Prebieha ukončovanie programu ... ';
  ShowMessage(' Naozaj si želáte program ukončiť ? ');
  Close;
end;


end.

