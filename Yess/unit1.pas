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
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.Button1Click(Sender: TObject);
Var veta:String;
  a,b:Integer;
  i:Integer;
begin
  veta:=Edit1.Text;
  ShowMessage(veta);
  for i:=1 to Length(veta) do begin
    a:=Random(Image1.Width);
    b:=Random(Image1.Height);
    Image1.Canvas.Font.Size:=Random(50);
    Image1.Canvas.Font.Color:=Random(256*256*256);
    Image1.Canvas.TextOut(a,b,veta[i]);

  end;
end;

end.

