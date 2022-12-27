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

procedure TForm1.Button2Click(Sender: TObject);
Var X,Y,A:Integer;
begin
  X:=50;
  Y:=10;
  A:=15;
  While Y < Image1.Height do begin
    Image1.Canvas.Font.Height:=A;
    Image1.Canvas.Font.Color:=Random(256*256*256);
    Image1.Canvas.TextOut(X,Y,Edit2.Text);
    end;
  Y:=Y+A;
  A:=A+5;
  end;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin

end;

procedure TForm1.Button1Click(Sender: TObject);
begin

end;

end.

