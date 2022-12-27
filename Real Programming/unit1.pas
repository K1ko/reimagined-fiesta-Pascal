unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, ExtCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Button10: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    Button9: TButton;
    Edit1: TEdit;
    Image1: TImage;
    procedure Button10Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }
Var znak1:Char = 'A';

procedure TForm1.Button1Click(Sender: TObject);
Var znak : char;
  x,y,i : Integer;
begin
 znak := 'N';
 Image1.Canvas.Brush.Style:=bsClear;
 for i:= 1 to 10 do begin
     x:=Random(Image1.Width);
     y:=Random(Image1.Height);
     Image1.Canvas.TextOut(x,y,znak);
     Image1.Canvas.Font.Color:=Random(256*256*256);
     Image1.Canvas.Font.Size:=Random(50);
end;
 end;

procedure TForm1.Button10Click(Sender: TObject);
begin
  znak1:=Succ(znak1);
  Button10.Caption:=znak1;
  if znak1 = 'Z' then Application.Terminate;
  //if znak1 = 'Z' then
end;

procedure TForm1.Button2Click(Sender: TObject);
Var z1,z2 : char;
begin
 z1 :='C';
 z2 :='=';
 If z1 < z2 then ShowMessage('C je skôr v ASCII ako =')
 else ShowMessage('C je neskôr v ASCII ako =');
end;

procedure TForm1.Button3Click(Sender: TObject);
Var znak : char;
  kod : integer;
begin
   znak := ':';
   //kod:=Ord(znak); // Ordinálna hodnota (Znaky sú jednoznačne definované)
   //ShowMessage(znak+' má kód '+IntToStr(kod));
   ShowMessage(znak + ' má kód '+ IntToStr(Ord(znak)));
end;

procedure TForm1.Button4Click(Sender: TObject);
Var kod : Integer;
  znak : char;
begin
   kod :=38;
   //znak := Char(kod);
   //ShowMessage('Kód '+ IntToStr(kod)+ ' ukrýva písmenko '+ znak);

   ShowMessage('Kód' + IntToStr(kod)+ ' ukrýva písmenko ' + Char(kod));
end;

procedure TForm1.Button5Click(Sender: TObject);
Var znak,znakZa,znakPred : char;
begin
   znak:='J';
   znakZa:=Succ(znak);  //Nasledovník
   ShowMessage(znakZa);
   znakPred:=Pred(znak);
   ShowMessage(znakPred);
end;

procedure TForm1.Button6Click(Sender: TObject);
Var kod:Integer;
  znak: char;
begin
 kod:= StrToInt(Edit1.Text);
 znak:=Char(kod);

 ShowMessage(znak+ 'nasledovník '+ Succ(znak)+'Predchodca ' + Pred(znak));

end;

procedure TForm1.Button7Click(Sender: TObject);
Var i,x:Integer;
  znak,z : char;
begin
   znak := 'A';
   for i:= 1 to 26 do begin
       Image1.Canvas.TextOut(i*20,50,znak);
       znak:=Succ(znak);
   end;
   x:=20;
   for i:= Ord('a') to Ord('z') do begin
       Image1.Canvas.Textout(x,100,Char(i));
       x:= x+20;
   end;
   x:=20;
   for z:= 'a' to 'z' do begin
       Image1.Canvas.TextOut(x,150,z);
       x:=x+20;
   end;
end;

procedure TForm1.Button8Click(Sender: TObject);
Var i,j:char;
  x,y: Integer;
begin
    x:=100;
    y:=100;
    for i:='a' to 'i' do begin
        for j:= 'a' {i}to i {'i'}do begin
            Image1.Canvas.TextOut(x,y,j{i}) ;
            x:=x+20;            //y:=y+20;
        end;
        y:=y+20;           //x:=x+20;
        x:=100;            // y:=-y+20;
    end;
end;

procedure TForm1.Button9Click(Sender: TObject);
Var pism:Char;
begin
   //random(20)   0-19
 // random(26)+65 65-90
 Image1.Canvas.FillRect(ClientRect);
 pism:= Char(random(Ord('Z')-Ord('A')+1) + Ord('A')) ;
 Image1.Canvas.Font.Size:=30;
 Image1.Canvas.TextOut(100,100,pism);

end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  Image1.Canvas.FillRect(ClientRect);
  Randomize;
  Button10.Caption:=znak1;
end;

end.

