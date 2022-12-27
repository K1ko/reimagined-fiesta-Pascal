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
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Image1: TImage;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
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
begin
  Image1.Canvas.Pen.Width:=Random(11);
  Image1.Canvas.Pen.Color:=Random(256*256*256);
  Image1.Canvas.Brush.Color:=Random(256*256*256);
  Image1.Canvas.MoveTo(Random(Image1.Width),Image1.Height);
  Image1.Canvas.LineTo(Random(Image1.Width),0);


end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  Image1.Canvas.Pen.Width:=Random(11);
  Image1.Canvas.Pen.Color:=Random(256*256*256);
  Image1.Canvas.Brush.Color:=Random(256*256*256);
  Image1.Canvas.Rectangle(Random(Image1.Width),Random(Image1.Height),Random(Image1.Width),Random(Image1.Height));
  Image1.Canvas.Rectangle(0,0,Random(101)+100,Random(51)+50);
  Image1.Canvas.Rectangle(0,0,50,50);
  Image1.Canvas.Rectangle(Random(Image1.Width),Random(Image1.Height),Random(101)+100,Random(51)+50);
end;

procedure TForm1.Button3Click(Sender: TObject);
Var X,Y,A,R,B:Integer;

begin
  X:=Random(Image1.Width);
  Y:=Random(Image1.Height);
  A:=Random(101)+100;
  R:=Random(61)+20;
  B:=Random(51)+50;
  Image1.Canvas.Pen.Width:=Random(11);
  Image1.Canvas.Pen.Color:=Random(256*256*256);
  Image1.Canvas.Rectangle(0,0,A,A);
  //Image1.Canvas.Rectangle(X,Y,X+A,X+B);
  //Image1.Canvas.Ellipse(X-R,Y-R,X+R,Y+R);
  //Image1.Canvas.Rectangle(X,Y,X+A,Y+A);
 // Image1.Canvas.Rectangle(0,0,A,A);


end;

procedure TForm1.Button4Click(Sender: TObject);
Var X,Y,A,Obvod,Obsah:Integer;
begin

  A:=Random(101)+100;
  X:=Random(Image1.Width-A)+1;
  Y:=Random(Image1.Height-A)+1;
  Obvod:=4*A;
  Obsah:=SQR(A);

  Image1.Canvas.Pen.Width:=(11);
  Image1.Canvas.Pen.Color:=Random(256*256*256);
  Image1.Canvas.Rectangle(X,Y,X+A,Y+A);
  Image1.Canvas.TextOut(10,10,'Obvod štvorca so stranou A = ' + IntToStr(A)+' Je '+ IntToStr(Obvod)+ ' cm . ' );
  Image1.Canvas.TextOut(10,50,'Obsah štvorca so stranou A = ' + IntToStr(A) + ' Je ' + IntToStr(Obsah) + ' cm2 . ');

  //Image1.Canvas.Rectangle(A,0,0,A);

  //Image1.Canvas.Rectangle(Random(101)+100,0,0,Random(51)+50);
  //Image1.Canvas.Rectangle(0,0,Random(101)+100,Random(51)+50);
end;

procedure TForm1.Button5Click(Sender: TObject);
Var A,X,Y:Integer;
  Var Obvod,Obsah:Integer;

begin
  A:=StrToInt(Edit1.Text);
  X:=Random(Image1.Width);
  Y:=Random(Image1.Height);
  Obvod:=4*A;
  Obsah:=SQR(A);
  Image1.Canvas.Pen.Width:=Random(11);
  Image1.Canvas.Pen.Color:=(256*256*256);
  Image1.Canvas.Rectangle(X,Y,X+A,Y+A);
  Image1.Canvas.TextOut(10,50, ' Obvod štvorca so stranou A = ' + IntToStr(A) + ' Je ' + IntToStr(Obvod) + ' CM ');
  Image1.Canvas.TextOut(10,70,'Obsah štvorca so stranou A = ' + IntToStr(A) + ' Je ' + IntToStr(Obsah) + ' CM2 ' );

end;

procedure TForm1.Button6Click(Sender: TObject);
Var Rok_Nar,Rok,Vek:Integer;
begin

  Rok:=2020;
  Rok_Nar:=StrToInt(Edit2.Text);
  Vek:=Rok-Rok_Nar;
  Image1.Canvas.Pen.Width:=Random(11);
  Image1.Canvas.TextOut(10,50, Edit3.Text+ ' Tvoj vek je ' + IntToStr(Vek));
end;

procedure TForm1.Button7Click(Sender: TObject);
Var A,B:Integer;
  Var Sucet:Integer;
begin
 A:=Random(1)+101;
 B:=StrToInt(Edit4.Text);
 Sucet:=A+B;
 Image1.Canvas.TextOut(10,50,' Prvé číslo je ' + IntToStr(A));
 Image1.Canvas.TextOut(10,70, ' Druhé číslo je ' + IntToStr(B));
 Image1.Canvas.TextOut(Image1.Width DIV 2 , Image1.Height DIV 2 , 'Súčet je : ' + IntToStr(A)+ ' + ' + IntToStr(B) + ' = ' + IntToStr(Sucet));
end;


end.

