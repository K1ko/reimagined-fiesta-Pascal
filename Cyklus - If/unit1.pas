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
    Edit2: TEdit;
    Image1: TImage;
    Label1: TLabel;
    Label2: TLabel;
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
Var A,Vek:Integer;
   Meno:String;
begin
  A:=17;
  Vek:=StrToInt(Edit1.Text);
  Meno:= Edit2.Text ;
  If Vek < A then
  Image1.Canvas.TextOut(20,50, Meno + ' je mladší ako ja , konkrétne o ' + IntToStr( A - Vek ) + ' rokov . ');
 If Vek > A then
    Image1.Canvas.TextOut(20,100,Meno + ' je starší ako ja , konkrétne o ' + IntToStr(Vek-A) + ' rokov . ');
If Vek = A Then
Image1.Canvas.TextOut(20,10, Meno +' je rovnako starý ako ja , je mojim rovesníkom ! ') ;

end;

procedure TForm1.Button2Click(Sender: TObject);
Var A,I,X,Y:Integer;
begin
  Image1.Canvas.Brush.Color:=ClWhite;
  Image1.Canvas.FillRect(Image1.ClientRect);
  for i:= 1 to 100 do begin
    X:=Random(Image1.Width);
    Y:=Random(Image1.Height);
    A:=10;
    If Y< (Image1.Height Div 2) - A then
    Image1.Canvas.Brush.Color:=ClBlue
    else
      Image1.Canvas.Brush.Color:=ClYellow;
      Image1.Canvas.Rectangle(X-A,Y-A,X+A,Y+A);
  end;
   end;

procedure TForm1.Button3Click(Sender: TObject);
begin
 Image1.Canvas.Brush.Color:=ClWhite;
 Image1.Canvas.FillRect(Image1.ClientRect);
 Button3.Caption:=' Prebieha ukončovanie programu ... ';
 ShowMessage('Želáte si program naozaj ukočiť ? ' );
 Close;
end;

end.

