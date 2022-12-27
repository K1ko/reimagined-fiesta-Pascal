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
    Image1: TImage;
    Label1: TLabel;
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
 VAR P,X,Y,R:Integer;
begin
   Image1.Canvas.Brush.Color:=ClWhite;
     Image1.Canvas.FillRect(Image1.ClientRect);
   P:=0;
     Image1.Canvas.Brush.Color:=Random(256*256*256);
     While R<>20 do begin
      R:=Random(21)+10;
      X:=Random(Image1.Width-R);
     Y:=Random(Image1.Height-R);
     Image1.Canvas.Ellipse(X-R,Y-R,X+R,Y+R);
      P:=A+1;
     end;
     Image1.Canvas.Brush.Color:=ClWhite;
     Image1.Canvas.Font.Height:=20;
     Image1.Canvas.Font.Name:='ArialBlack';
     Image1.Canvas.TextOut(10,10,'Počet kruhov je ' + IntToStr(P)+ ' . ');
     end;

procedure TForm1.Button2Click(Sender: TObject);
Var X,Y,Cislo,Cifra,PocetA,PocetB,PocetC,PocetE,FH:Integer;
begin
     Image1.Canvas.Brush.Color:=ClWhite;
     Image1.Canvas.FillRect(Image1.ClientRect);
     X:=100;
     Y:=150;
     Cislo:=StrToInt(Edit1.Text);
     PocetA:=0;
     PocetB:=0;
     PocetC:=0;
     PocetE:=0;
     FH:=120;
     While Cislo>0 do begin
      Cifra:=Cislo MOD 10;
       Cislo:=Cislo DIV 10;
       PocetA:=PocetA+1;
      PocetB:=PocetB+Cifra;
      PocetC:=PocetC+(Cifra*Cifra);
      PocetE:=PocetE*10+Cifra;
      Image1.Canvas.Font.Color:=Random(256*256*256);
         Image1.Canvas.Font.Height:=FH;
         Image1.Canvas.TextOut(X+450,Y+150,IntToStr(Cifra));
         Y:=Y-1;
         X:=X-60;
         FH:=FH-10;
         end;
     X:=100;
     Y:=100;
Cislo:=StrToInt(Edit1.Text);
Image1.Canvas.Font.Name:='ArialBlack';
Image1.Canvas.Font.Color:=ClBlack;
Image1.Canvas.Font.Height:=20;
Image1.Canvas.TextOut(X,Y,' A)    Počet cifier čísla ' + IntToStr(Cislo)+ ' je ' + IntToStr(PocetA));
Image1.Canvas.TextOut(X,Y+50,' B)  Ciferný súčet čísla ' + IntToStr(Cislo)+ ' je ' + IntToStr(PocetB));
Image1.Canvas.TextOut(X,Y+80,' C)   Súčet druhých mocnín čísla ' + IntToStr(Cislo)+ ' je ' + IntToStr(PocetC));
Image1.Canvas.TextOut(X,Y+100,' E)  Číslo ' + IntToStr(Cislo) + ' je' + ' prevrátené ' + IntToStr(PocetE));
end;

procedure TForm1.Button3Click(Sender: TObject);
Var X,Y,Cislo,Cifra:Integer;
begin
   Image1.Canvas.Brush.Color:=ClWhite;
   Image1.Canvas.FillRect(Image1.ClientRect);
   X:=400;
   Y:=400;
   Cislo:=StrToInt(Edit1.Text);
   Image1.Canvas.Pen.Width:=2;
   While Cislo >0 do begin
       Image1.Canvas.Brush.Color:=Random(256*256*256);
       Cifra:=Cislo MOD 10 ;
       Cislo:=Cislo DIV 10;
       Image1.Canvas.Rectangle(X,Y,X-25,Y-Cifra*10-10);
       X:=X-25;
       end;
       end;

procedure TForm1.Button4Click(Sender: TObject);
begin
    Image1.Canvas.Brush.Color:=ClWhite;
    Image1.Canvas.FillRect(Image1.ClientRect);
    Button4.Caption:='Prebieha ukončovanie programu ! ' ;
    ShowMessage(' Prajete si program naozaj ukončiť ? ');
    Close;
end;


end.

