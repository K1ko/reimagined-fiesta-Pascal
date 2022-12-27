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
    Image1: TImage;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
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
Var Cislo:Integer;
begin
  Cislo:=Random(10);
  Image1.Canvas.TextOut(10,20,' Tvoj pin je : ' + IntToStr(Cislo));
  Cislo:=Random(10);
  Image1.Canvas.TextOut(90,20,IntToStr(Cislo));
  Cislo:=Random(10);
  Image1.Canvas.TextOut(100,20,IntToStr(Cislo));
  Cislo:=Random(10);
  Image1.Canvas.TextOut(110,20,IntToStr(Cislo));



end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  ShowMessage(' Práve vypínaš program .');
  Close;
end;

end.

