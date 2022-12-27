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
Var veta,slovo:String;
  i:Integer;
begin
  veta:='Dnes je utorok,nechce sa nám';
  slovo:=Copy(veta,9,6);
  //ShowMessage(slovo);
  for i:=1 to Length(veta) do begin
    Image1.Canvas.TextOut(20,i*20,Copy(veta,1,i));
  end;
end;

procedure TForm1.Button2Click(Sender: TObject);
Var veta,slabika: String;
  i,pocet:Integer;
begin
  veta:='mama ma Emu,ema ma mamu';
  slabika:=Edit1.Text;
  pocet:=0;
  for i:=1 to Length(veta) do begin
     if Copy(veta,i,Length(slabika)) = slabika then pocet:=pocet+1;
  end;
  ShowMessage(veta+' má '+ IntToStr(pocet)+ ' slabík '+ slabika + '.');
end;

procedure TForm1.Button3Click(Sender: TObject);
Var veta,slabika:String;
  index:Integer;
  pocet:Integer;
begin
  veta:='Dnes je utorok,nechce sa nám';
  index:=Pos('ne',veta);
  ShowMessage(IntToStr(index));
  veta:='mama ma Emu,ema ma mamu';
  slabika:='ma';

  while Length(veta) >= 0 do begin
    if Pos('ma',veta) <> 0 then begin
       pocet:=pocet+1 ;
       Delete(veta,1,Pos('ma',veta)+1);
       ShowMessage(veta);
    end
  else Delete(veta,1,1);

  end;
  ShowMessage(IntToStr(pocet));

end;

procedure TForm1.Button4Click(Sender: TObject);
Var veta:String;
  i:Integer;
begin
 veta:='Dnes je utorok';
 Insert('x',veta,3);
 ShowMessage(veta);

 for i:=1 to Length(veta) do begin
     Insert('*',veta,i*2);
 end;
 ShowMessage(veta);
end;

end.

