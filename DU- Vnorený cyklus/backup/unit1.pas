unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ExtCtrls, StdCtrls;

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
Var X,Y,I,J,N,M:Integer;
begin
  Image1.Canvas.Brush.Color:=ClWhite;
  Image1.Canvas.FillRect(Image1.ClientRect);
  Y:=15;
  N:=StrToInt(Edit1.Text);
  M:=StrToInt(Edit1.Text);
  For j:=1 to n do begin
    x:=50;
    For i:=1 to m do begin
      Image1.Canvas.Brush.Color:=Random(256*256*256);
      Image1.Canvas.Rectangle(X,Y,X+20,Y+20);
         X:=X+20;
         end;
    Y:=Y+20;
    end;
  end;

procedure TForm1.Button2Click(Sender: TObject);
Var X,Y,I,J:Integer;
begin
  Image1.Canvas.Brush.Color:=ClWhite;
  Image1.Canvas.FillRect(Image1.ClientRect);
  Image1.Canvas.Brush.Color:=ClRed;
 Y:=575;
 X:=150;
 For j:=10 downto 1 do begin
 For i:= 1 to j do begin
     Image1.Canvas.Rectangle(X,Y,X+50,Y+50);
     X:=X+50;
     end;
     X:=(X-j*50)+25;
     Y:=Y-50;
     end;
 end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  Image1.Canvas.Brush.Color:=ClWhite;
  Image1.Canvas.FillRect(Image1.ClientRect);
  Button3.Caption:=('Prebieha ukončovanie programu ...');
  ShowMessage('Naozaj chcete ukončiť program ? ');
  Close;

end;



end.

