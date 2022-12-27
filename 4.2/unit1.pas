unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, ExtCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Edit1: TEdit;
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
end;

procedure TForm1.Button1Click(Sender: TObject);
Var Vek,Rok_Nar:Integer;
  Var A:Integer;
    Var X,Y:Integer;
      Var Obvod:Integer;
begin
  Rok_Nar:=StrToInt(Edit1.Text);
  Vek:=2020-Rok_Nar;
  A:=Random(301);
  X:=Random(Image1.Width);
  Y:=Random(Image1.Height);
  Obvod:=4*A;
  Image1.Canvas.TextOut(50,20,'Tvoj vek je : ' + IntToStr(Vek));
  Image1.Canvas.TextOut(Random(Image1.Width),Random(Image1.Height),'Hello Lazarus ' );
  Image1.Canvas.Rectangle(X,Y,X+A,Y+A);
  Image1.Canvas.TextOut(X,Y,'Obvod štvorca je : ' + IntToStr(Obvod));


end;

end.

