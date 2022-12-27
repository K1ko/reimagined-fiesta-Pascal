unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ExtCtrls, StdCtrls;

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
Var znak1:Char='A';

procedure TForm1.Button1Click(Sender: TObject);
Var znak:char;
  x,y,i: Integer;
begin
  znak:='N';
  Image1.Canvas.Brush.Style:=bsClear;              //Vypísanie písmena 10krát náhodnej veľkosti na náhodnú pozíciu.
  for i:=1 to 10 do begin
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
 if znak1='Z' then Application.Terminate;                            //Zmena názvu tlačidla podľa písmen abecedy a následné ukončenie aplikácie po dosiahnutí limitu
end;

procedure TForm1.Button2Click(Sender: TObject);
Var z1,z2 : char;
begin
 z1:='C';                                                                  //Zistenie , ktorý znak je skôr v ASCII tabuľke , ako ten druhý
 z2:='=';
 If z1<z2 then ShowMessage('C je skôr v ASCII tabuľke ako =')
 else ShowMessage('C je neskôr v ASCII tabuľke ako =');
end;

procedure TForm1.Button3Click(Sender: TObject);
Var znak:char;
  kod:Integer;
begin                                                               //Zistenie kódu znaku v ASCII tabuľke
   znak:=':';
   ShowMessage(znak+' má kód '+ IntToStr(Ord(znak)));
end;

procedure TForm1.Button4Click(Sender: TObject);
Var znak:char;
  kod : Integer;
begin
  kod:=38;
  ShowMessage('Kód ' + IntToStr(kod) + ' ukrýva písmenko '+ Char(kod))     // Zistenie písmenka podľa kódu v ASCII tabuľke
end;

procedure TForm1.Button5Click(Sender: TObject);
Var znak,znakZa,znakPred:char;
begin
  znak:='J';
  ZnakZa:=Succ(znak);                     //Zistenie predchodcu a nasledovníka znaku v tabuľke
  ShowMessage(ZnakZa);
  znakPred:=Pred(znak);
  ShowMessage(ZnakPred) ;
end;

procedure TForm1.Button6Click(Sender: TObject);
Var kod:Integer;
  znak:Char;
begin                                                                    // Zistenie znaku podľa kódu , zistenie jeho predchodcu a nasledovníka
  kod:=StrToInt(Edit1.Text);
  znak:=Char(kod);
  ShowMessage(znak+ ' Nasledovník ' + Succ(znak) + ' Predchodca ' + Pred(znak));
end;

procedure TForm1.Button7Click(Sender: TObject);
Var i,x:Integer;
  znak,z:char;
begin
     znak:='A';
     for i:= 1 to 26 do begin
       Image1.Canvas.TextOut(i*20,50,znak);                     //Malá a veľká abeceda
       znak:=Succ(znak);
     end;
     x:=20;
     for i:=Ord('a') to Ord('z') do begin
       Image1.Canvas.TextOut(x,100,Char(i));
       x:=x+20;

    end;
end;

procedure TForm1.Button8Click(Sender: TObject);
Var i,j:Char;
  x,y:Integer;                                                            //Pyramída z písmen
begin
 x:=100;
 y:=100;
 for i:='a' to 'i' do begin
   for j:='a' {i} to i {'i'} do begin
     Image1.Canvas.TextOut(x,y,j{i});
     x:=x+20; //x:=x-20; -> Otočenie do druhej strany
     end;
   y:=y+20;
   x:=100;
 end;

end;

procedure TForm1.Button9Click(Sender: TObject);
Var pism:Char;
begin
  //Random(20) 0-19
 // Random(26)+65 65-90
 Image1.Canvas.FillRect(Image1.ClientRect);
 pism:=Char(random(Ord('Z')-Ord('A')+1)+Ord('A'));
 Image1.Canvas.Font.Size:=30;
 Image1.Canvas.TextOut(100,100,pism);
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  Image1.Canvas.FillRect(Image1.ClientRect);
end;

end.

