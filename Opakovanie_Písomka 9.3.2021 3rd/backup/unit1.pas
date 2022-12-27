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
    Button3: TButton;
    Edit1: TEdit;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.Button1Click(Sender: TObject);
Var veta,sam:String;
  pocet:Integer;
  i,j:Integer;
begin     // Počet samohlások // Obdobne môžu byť spoluhlásky atď
    veta:=Edit1.Text;
    sam:='aeiouyAEIOUY';
    pocet:=0;
    for i:=1 to Length(veta) do begin
      for j:=1 to Length(sam) do begin
        if veta[i] = sam[j] then pocet:=pocet+1;
      end;
    end;
    ShowMessage('Veta má ' + IntToStr(Pocet) +' samohlások.');
end;

procedure TForm1.Button2Click(Sender: TObject);
Var veta,odzadu,kopia:string;
  i:Integer;
begin        // Palindrom --> Kobyla má malý bok, bok --> oko
      veta:=Upcase(Edit1.Text); // Lowercase: Univerzálny program
      Showmessage(veta);
      odzadu:='';
      kopia:='';

      for i:=1 to Length(veta) do begin
        if (veta[i] >= 'A') and (veta[i] <= 'Z') then begin
        odzadu:=veta[i] + odzadu;
        kopia:= kopia+ veta[i];
        end;
      end;
      ShowMessage(kopia);
      If kopia = odzadu then ShowMessage('Je to palindrom')
      else ShowMessage('Nie je to Palindrom');
end;

procedure TForm1.Button3Click(Sender: TObject);
Var veta,sifra:String;
  n,i:Integer;
begin        // Cézarova šifra n=3
    veta:=Lowercase(Edit1.Text);
n:=3;
sifra:='';
for i:=1 to Length(veta) do begin
  if (veta[i]>='a') and (veta[i]<='z') {or (veta[i]>='A') and  (veta[i]<='Z')} then
     if Ord(veta[i])+n <= Ord('z') then
        sifra:=sifra+Char(Ord(veta[i])+n)
     else sifra:=sifra+Char(Ord(veta[i])+n - Ord('z') + Ord('a')-1)
  else sifra:=sifra +veta[i];

end;
ShowMessage(sifra);
end;
end;

end.

