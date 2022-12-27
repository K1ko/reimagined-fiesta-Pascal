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
    Edit1: TEdit;
    Image1: TImage;
    Label1: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
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
  Var I,X,Y:Integer;
begin
   X:=100;
   Y:=100;
   Image1.Canvas.Font.Name:='ArialBlack';
   Image1.Canvas.Font.Height:=20;
   For i:=10 to 20 do begin
     Image1.Canvas.Font.Color:=Random(256*256*256);
     Image1.Canvas.TextOut(X,Y,IntToStr(I));
     x:=x+40;
   end;
end;

procedure TForm1.Button2Click(Sender: TObject);
  VAR I,X,Y:Integer;
begin
   X:=100;
   Y:=100;
   Image1.Canvas.Brush.Color:=ClWhite;
   Image1.Canvas.FillRect(Image1.ClientRect);
   Image1.Canvas.Font.Name:='ArialBlack';
   Image1.Canvas.Font.Height:=50;
   Image1.Canvas.Font.Color:=ClBlack;
   For i:=10 downto 1 do begin
     Image1.Canvas.TextOut(X,Y,IntToStr(I*I));
     Y:=Y+50;

   end;
end;

procedure TForm1.Button3Click(Sender: TObject);
Var I,X,Y:Integer;
begin
  X:=50;
  Y:=25;
  Image1.Canvas.Brush.Color:=ClWhite;
  Image1.Canvas.FillRect(Image1.ClientRect);
  Image1.Canvas.Font.Name:='ArialBlack';
  Image1.Canvas.Font.Color:=ClBlack;
  For i:=1 to 9 do begin
    Image1.Canvas.Font.Height:=Y;
    Image1.Canvas.TextOut(X,X,IntToStr(10*i));
    X:=X+60;
    Y:=Y+6;
end;
   end;

procedure TForm1.Button4Click(Sender: TObject);
Var I,X,N,Y,sucet:Integer;

begin
  X:=50;
  Y:=50;
  N:=StrToInt(Edit1.Text);
  Sucet:= 0;
  Image1.Canvas.Brush.Color:=ClWhite;
  Image1.Canvas.FillRect(Image1.ClientRect);
  Image1.Canvas.Font.Name:='ArialBlack';
  Image1.Canvas.Font.Color:=ClBlack;
  For i:=1 to N do begin
    Image1.Canvas.Font.Height:=20;
    Sucet:= Sucet+i;
    Image1.Canvas.TextOut(X,Y,' Súčet čísel od 1 do ' + IntToStr(N) + ' je ' + IntToStr(Sucet));
  end;
end;

procedure TForm1.Button5Click(Sender: TObject);
begin
     Image1.Canvas.Brush.Color:=ClWhite;
  Image1.Canvas.FillRect(Image1.ClientRect);
  Button5.Caption:=' Program sa ukončuje ! ';
  ShowMessage(' Prajete si ukončiť program ? ');
  Close;
end;

end.

