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

procedure TForm1.Button1Click(Sender: TObject);
Var znak,znakZa:char;
  kod:Integer;
begin
  znak:='(';
  ShowMessage('Náš vybraný znak je : '+ znak);
  ShowMessage(znak+' má kód '+ IntToStr(Ord(znak)));
  ZnakZa:=Succ(znak);
  ShowMessage('Nasledovník je '+ ZnakZa);

end;

procedure TForm1.Button2Click(Sender: TObject);
Var veta:String;
  x,y:Integer;
  i:Integer;
begin
  veta:='Viem to!!!';
  ShowMessage(veta);
  veta[4]:='M';
  for i:=1 to Length(veta) do begin
    x:=Random(Image1.Width);
    y:=Random(Image1.Height);
    Image1.Canvas.Font.Color:=ClBlack;
    Image1.Canvas.TextOut(x,y,veta[i]);
end;
end;
procedure TForm1.Button3Click(Sender: TObject);
Var veta,znak:String;
  pocet:Integer;
  i,j:Integer;
begin
 veta:=Edit1.Text;
 znak:='u,k';
 pocet:=0;
 for i:=1 to Length(veta) do begin
   for j:=1 to Length(znak) do begin
     if veta[i] = znak[j] then pocet:=pocet+1;

   end;
 end;
 ShowMessage('Veta má ' + IntToStr(Pocet)+' vybraných znakov.') ;
end;

end.

