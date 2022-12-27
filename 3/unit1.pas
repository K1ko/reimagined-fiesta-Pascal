unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Label1: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
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
  Label1.Caption:=('Vitaj pri spustení testu!');
  Label1.Left:=(50);
  Button1.Caption:=('Práve si spustil test!');
  Button1.Left:=(511);
  Button1.Height:=(250);
  Button1.Width:=(500);

end;

procedure TForm1.Button2Click(Sender: TObject);
begin
    Button2.Caption:=('Vypínam  Testovací program...');
    Button1.Hide;
    Label1.Hide;
    Showmessage('Práve ste vypli testovací program');
    Close
end;

end.

