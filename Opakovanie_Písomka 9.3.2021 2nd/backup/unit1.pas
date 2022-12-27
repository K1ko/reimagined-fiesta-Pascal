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
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Image1: TImage;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.Button1Click(Sender: TObject);
Var veta,datum,ret:String;
  i:Integer;
begin
  veta:='Dnes je utorok,';
  datum:='9.2.2021 .';

  veta:=veta+datum; // Zreťazenie
  ShowMessage(veta);

  ret:='a';
  for i:=1 to 15 do begin        //Ohraniečenie písmena hviezdičkami
    ret:='*'+ret + '*';
  end;
  ShowMessage(ret);
end;

procedure TForm1.Button2Click(Sender: TObject);
Var veta:String;
  dlzka:Integer;
begin
  veta:='Mame radi programovanie';        //ASCII tabuľka nepozná diakritiku
  //ShowMessage(veta[2]);                    Druhé písmenko vo vete
  veta[9]:='y';                                    //Index
  veta[12]:=Succ(veta[12]); // Nasledovník

  veta:='';            //Prázdny reťazec , zmazanie obsahu vety
  veta:='cau' + veta + 'Ahoj';
  //ShowMessage(veta);                                                                     //Zistenie počtu znakov vo vete
  veta:='Mame radi programovanie,dnes je 9.2.';
  dlzka:=Length(veta);
  ShowMessage(veta + ' má dĺžku/počet znakov '+ IntToStr(dlzka)+'.');

end;

procedure TForm1.Button3Click(Sender: TObject);
Var veta:String;
  i:Integer;
begin
  Image1.Canvas.Font.Size:=50;
  Image1.Canvas.Font.Name:='Courier New';
  veta:='Dnes je utorok.';                                    //Zmena farby písmen vo veta
  for i:=1 to Length(veta) do begin
    Image1.Canvas.Font.Color:=Random(256*256*256);
    Image1.Canvas.TextOut(i*50,100,veta[i]);
end;
 end;

procedure TForm1.Button4Click(Sender: TObject);
Var veta:String;
  pP,pC,pZ,i:Integer;
begin
 veta:=Edit1.Text;
 pP:=0; pC:=0; pZ:=0;                                                                           //Zistenie počtu znakov, písmen, a čísel vo vete danej editom.

 for i:=1 to Length(veta) do begin
   if ((veta[i]) <='z') and ((veta[i]) >='a') or
      ((veta[i]) <='Z') and ((veta[i]) >='A')    then pP:=pP+1
   else if (veta[i]<='9') and (veta[i]>='0') then pC:=pC+1
        else pZ:=pZ+1;
 end;
 ShowMessage(' Písmen je: '+IntToStr(pP) + ' Čísel je: ' + IntToStr(pC) + ' Počet znakov je: ' + IntToStr(pZ));
end;

procedure TForm1.Button5Click(Sender: TObject);
Var veta:String;
  pism:Char;
  i:Integer;
begin
  veta:=Edit1.Text;
  pism:=Edit2.Text[1];
                                                       //Nahradenie vybraného písmena vo vete iným.
  for i:=1 to Length(veta) do begin
    if (veta[i]='o') or (veta[i]='O') then begin
      veta[i]:=pism;

    end;
  end;
  ShowMessage(veta);
end;

procedure TForm1.Button6Click(Sender: TObject);
Var veta,slovo:String;
  i,y:Integer;
begin
  Image1.Canvas.FillRect(ClientRect);
  veta:=Edit1.Text+' ';
  slovo:='';                                           //Napísanie vety pod seba , do stĺpca
                                                       // Napísanie vety do riadku x:=x+20;
  y:=10;
  for i:=1 to Length(veta) do begin
    slovo:=slovo+veta[i];
    if veta[i] = ' ' then begin
      Image1.Canvas.TextOut(100,y,slovo);
      y:=y+20;
      slovo:='';

    end;
  end;

end;

procedure TForm1.Button7Click(Sender: TObject);
Var veta,odzadu:String;
  i:Integer;
begin
  veta:=Edit1.Text;
  odzadu:='';
  for i:= Length(veta)downto 1 do begin
    odzadu:=odzadu + veta[i];
  end;
  ShowMessage(odzadu);
  odzadu:='';
  for i:=1 to Length(veta) do begin
    odzadu:=veta[i] + odzadu;
  end;
  ShowMessage(odzadu);
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
   Image1.Canvas.FillRect(Image1.ClientRect);
   Randomize;
end;

end.

