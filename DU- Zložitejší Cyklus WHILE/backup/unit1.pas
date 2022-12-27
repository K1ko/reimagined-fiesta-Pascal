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
Var X,Y,Sirka,Vyska,P:Integer;
begin
  Image1.Canvas.Brush.Color:=ClWhite;
  Image1.Canvas.FillRect(Image1.ClientRect);
  X:=0;
   Y:=0;
  P:=0;
   Sirka:=StrToInt(Edit1.Text);
   Vyska:=StrToInt(Edit2.Text);
   While (X<  Image1.Width) And (Y<  Image1.Height) do begin
  Image1.Canvas.Line(X,Y,X+Sirka,Y);
  Image1.Canvas.Line(X+Sirka,Y,X+Sirka,Y+Vyska);
  X:=X+Sirka;
  Y:=Y+Vyska;
  Sirka:=Sirka;
  Vyska:=Vyska;
  P:=P+1;
  Image1.Canvas.Font.Name:='ArialBlack';
  Image1.Canvas.Font.Height:=20;
  Image1.Canvas.TextOut(0,Image1.Height DIV 2,' Bolo vykreslených ' + IntToStr(P) + ' schodov !');


  end;
   end;

procedure TForm1.Button2Click(Sender: TObject);
Var R,X,Y:Integer;
begin
  Image1.Canvas.Brush.Color:=ClWhite;
  Image1.Canvas.FillRect(Image1.ClientRect);
  X:=20;
   Y:=15;
   R:=10;
   While (X<Image1.Width) and (Y<Image1.Height) do begin
       Image1.Canvas.Brush.Color:=ClRed;
       Image1.Canvas.Ellipse(X-R,Y-R,X+R,Y+R);
       X:=X+25;
       Y:=Y+25;
       end;
   X:=20;
   Y:=(Image1.Height) -15;
   R:=10;
       While (X< Image1.Width) and (Y>0) do begin
       Image1.Canvas.Brush.Color:=ClBlue;
       Image1.Canvas.Ellipse(X-R,Y-R,X+R,Y+R);
       X:=X+25;
       Y:=Y-25;
       end;
      end;
procedure TForm1.Button3Click(Sender: TObject);
Var X,Y,Z:Integer;
begin
  Image1.Canvas.Brush.Color:=ClWhite;
  Image1.Canvas.FillRect(Image1.ClientRect);
  X:=Random(10);
  Y:=Random(10);
  Z:=Random(10);
  While (X=Y) or (X=Z) or (Y=Z) do begin
      X:=Random(10);
      Y:=Random(10);
      Z:=Random(10);
      end;
  Image1.Canvas.Font.Name:='ArialBlack';
  Image1.Canvas.Font.Height:=70;
  Image1.Canvas.TextOut(70,0,IntToStr(X));
  Image1.Canvas.TextOut(140,0,IntToStr(Y));
  Image1.Canvas.TextOut(210,0,IntToStr(Z));


end;

procedure TForm1.Button4Click(Sender: TObject);
begin
     Image1.Canvas.Brush.Color:=ClWhite;
  Image1.Canvas.FillRect(Image1.ClientRect);
  Button4.Caption:='Prebieha Ukončovanie Programu ...';
  ShowMessage(' Želáte si program naozaj ukončiť ? ' );
  Close;
end;




end.

