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
    Edit3: TEdit;
    Edit4: TEdit;
    Image1: TImage;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
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
Var i,R,X,Y:Integer;
begin
Image1.Canvas.Brush.Color:=ClWhite;
Image1.Canvas.FillRect(ClientRect);
   X:=10;
   Y:=10;
   R:=StrToInt(Edit1.Text);
   i:=1;
While X< (Image1.Width)-R do begin
     If i Mod 2 = 0 then
        Image1.Canvas.Brush.Color:=ClYellow
     Else
       Image1.Canvas.Brush.Color:=ClRed;
       Image1.Canvas.Ellipse(X,Y,X+R,Y+R);
       X:=X+R;
       i:=i+1;
end;
end;

procedure TForm1.Button2Click(Sender: TObject);
Var IntervalA ,IntervalB,i,X,Y :Integer;
begin
Image1.Canvas.Brush.Color:=ClWhite;
Image1.Canvas.FillRect(ClientRect);
  IntervalA:=StrToInt(Edit2.Text);
  IntervalB:=StrToInt(Edit3.Text);
  X:=50;
  Y:=70;
   For i:=IntervalA to IntervalB do begin
      If i MOD 2 = 0 then
         Image1.Canvas.TextOut(X,Y,IntToStr(i));
         Y:=Y+15;
      If Y > (Image1.Height - 15) then
begin
  Y:=70;
  X:=X+25;
  Image1.Canvas.Font.Color:=Random(256*256*256);
end;
end;
end;

procedure TForm1.Button3Click(Sender: TObject);
Var A,B,Cislo,i,P,X,Y,Z:Integer;
begin
Image1.Canvas.Brush.Color:=ClWhite;
Image1.Canvas.FillRect(ClientRect);
   X:=100;
   Y:=100;
   Cislo:=StrToInt(Edit4.Text);
   P:=0;
   i:=0;
While Cislo > 0 do begin
   A:=Cislo MOD 10 ;
   B:=(A*A*A);
   P:=P+B;
   Cislo:=Cislo DIV 10;
end;
   Cislo:=StrToInt(Edit4.Text);
IF P = Cislo then
  Image1.Canvas.TextOut( X,Y,' Číslo ' + Edit4.Text + ' je  Armstrongovo číslo !' )
Else
  Image1.Canvas.TextOut( X,Y,' Číslo ' + Edit4.Text + ' nie je  Armstrongovo číslo !' );
Begin
  X:=150;
  Y:=125;
  P:=0;
  A:=i;
For i:=1 to 1000 do begin
  P:=0;
  A:=i;
    While A > 0 do begin
      Z:= A MOD 10;
      B:=(Z*Z*Z);
      P:=P+B;
      A:=A DIV 10;
      end;
    A:=i;
    If A = P then
      begin
      Image1.Canvas.TextOut(100,Y , ' Všetky Armstrongové čísla od 1 po 1000 sú : ' );
      Image1.Canvas.TextOut(X+215,Y, IntToStr(i) + ' ; ' );
      X:=X+25;
  end;
  end;
  end;
  end;

procedure TForm1.Button4Click(Sender: TObject);
begin
Image1.Canvas.Brush.Color:=ClWhite;
Image1.Canvas.FillRect(ClientRect);
  Button4.Caption:='Prebieha ukončovanie programu... ' ;
  ShowMessage('Naozaj si želáte program ukončiť ? ');
  Close;
end;








end.

