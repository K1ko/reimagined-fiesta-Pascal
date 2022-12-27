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
    Edit1: TEdit;
    Edit2: TEdit;
    Image1: TImage;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.Button1Click(Sender: TObject);
Var i,x,y:Integer;
  znak,z:char;
begin
  //x:=Random(Image1.Width);
  //y:=Random(Image1.Height);
  znak:='A';
  for i:=1 to 26 do begin

     x:=Random(Image1.Width);
     y:=Random(Image1.Height);
    Image1.Canvas.TextOut(x,y,znak);
    znak:=Succ(znak);
    if x > (Image1.Width/2) then
    Image1.Canvas.Font.Color:=ClBlue
    else
    Image1.Canvas.Font.Color:=ClRed;
  end;
end;

procedure TForm1.Button2Click(Sender: TObject);
Var kod:Integer;
begin
 kod:=StrToInt(Edit1.Text);
 ShowMessage('Kod ' + IntToStr(kod)+ ' má znak ' + char(kod));
end;

procedure TForm1.Button3Click(Sender: TObject);
Var kod:Integer;
  znak,znakZa:char;
begin
   znak:='@';
   znakZa:=Succ(znak);
   ShowMessage(znakZa);
   //ShowMessage('Znak, ktorý nasleduje za @ , má kód' + StrToInt(znakZa));
end;

procedure TForm1.Button4Click(Sender: TObject);
Var veta,malp:String;
  i,j : Integer;
begin
  veta:=Edit2.Text;
  malp:='';
  for i:=1 to Length(veta) do begin
     if (veta[i]>='a') and (veta[i]<='z') then
      ShowMessage(veta[i]);

 end;
     //ShowMessage(veta[i]);
end;

end.

