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
Var A,X,Y,I:Integer;
begin
  Image1.Canvas.Brush.Color:=ClWhite;
  Image1.Canvas.FillRect(Image1.ClientRect);
  Image1.Canvas.Pen.Width:=3;
     Image1.Canvas.Brush.Color:=ClYellow;
  X:=60;
  Y:=60;
  For i:=1 to 15 do begin
    If I MOD 3 = 0 then
    begin
    A:=60;
    Image1.Canvas.Rectangle(X,Y,X+A,Y+60);
    X:=X+60;
    end
    else
    begin
    A:=20;
    Image1.Canvas.Rectangle(X,Y+20,X+A,Y+40);
    X:=X+20;
      end;
  end;
end;

procedure TForm1.Button2Click(Sender: TObject);
Var Cislo,X,I,Y:Integer;
begin
  Image1.Canvas.Brush.Color:=ClWhite;
  Image1.Canvas.FillRect(Image1.ClientRect);
  Cislo:=StrToInt(Edit1.Text);
    X:=25;
    Y:=15;
    For i:= 1 to Cislo do begin
        If (X+25) < Image1.Width then
        begin
        Image1.Canvas.TextOut(X,Y,IntToStr(I));
        X:=X+20;
        end
    else
    begin
     Image1.Canvas.TextOut(X,Y,IntToStr(I));
     Y:=Y+15;
     X:=25;
     Image1.Canvas.Font.Color:=Random(256*256*256);
    end;
    end;
end;

procedure TForm1.Button3Click(Sender: TObject);
Var Cislo , Pocet ,I, A:Integer;
begin
   Image1.Canvas.Brush.Color:=ClWhite;
   Image1.Canvas.FillRect(Image1.ClientRect);
   Cislo:=StrToInt(Edit2.Text);
     Pocet:=0;
     A:=0;
     For i:=1 to cislo do
     If Cislo MOD i =0 then
     begin
     Pocet:=Pocet + 1;
     A:=A+i;
     Image1.Canvas.TextOut(10,100,'Počet deliteľov čísla ' + IntToStr(Cislo) + ' je ' + IntToStr(Pocet) + ' . ');
     end;
     If Pocet = 2 then
     Image1.Canvas.TextOut(10,120, ' Číslo ' + IntToStr(Cislo) + ' je ' + ' prvočíslo . ' );
     If (A - Cislo ) <= Cislo then
     Image1.Canvas.TextOut(10,170,'Číslo '+ IntToStr(Cislo) + ' je dokonalé . ');
     Image1.Canvas.TextOut(10,150,'Súčet deliteľov čísla ' +IntToStr(Cislo)+ ' je ' +  IntToStr(A - Cislo) + ' , pokiaľ nepočítame číslo samotné . ');
     end;

procedure TForm1.Button4Click(Sender: TObject);
begin
  Image1.Canvas.Brush.Color:=ClWhite;
  Image1.Canvas.FillRect(Image1.ClientRect);
  Button4.Caption:=' Prebieha ukončovanie programu ... ' ;
  ShowMessage(' Želáte si program naozaj ukončiť ? ' );
  Close;
end;

end.

