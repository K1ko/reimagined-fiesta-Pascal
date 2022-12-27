unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, ExtCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Image1: TImage;
    Label1: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Label1Click(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.Button1Click(Sender: TObject);
begin
  Image1.Canvas.MoveTo(356,356);
  Image1.Canvas.Pen.Width:=3;
  Image1.Canvas.Rectangle(20,120,120,20);

end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  Image1.Canvas.Fillrect(Image1.ClientRect);
end;

procedure TForm1.Label1Click(Sender: TObject);
begin

end;

end.

