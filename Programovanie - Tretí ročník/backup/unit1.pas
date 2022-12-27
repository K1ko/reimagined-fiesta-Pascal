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
    Edit1: TEdit;
    Image1: TImage;
    Timer1: TTimer;
    Timer2: TTimer;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure Timer2Timer(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.Timer1Timer(Sender: TObject);
Var x,y,i:Integer;
begin
  Image1.Canvas.Brush.Color:=Random(256*256*256);
  For i := 1 to 10 do begin
   x :=Random(Image1.Width);
   y := Random(Image1.Height);
   Image1.Canvas.Ellipse(x,y,x+50,y+50);
 end;

end;

procedure TForm1.Timer2Timer(Sender: TObject);
Var x,x1,y,y1,i:Integer;
begin
   x:=Random(Image1.Width);
   y:= Random(Image1.Height);
   x1:=Random(Image1.Width);
   y1 := Random(Image1.Height);
   Image1.Canvas.Pen.Color:=Random(256*256*256);
   Image1.Canvas.Line(x,y,x1,y1);

end;

procedure TForm1.Button1Click(Sender: TObject);
begin
   Timer1.Interval:=StrToInt(Edit1.Text);
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  Timer1.Enabled:=True;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  Timer1.Enabled:=False;
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
   If Timer1.Enabled = True then  Timer1.Enabled:=False
   else
     Timer1.Enabled:=True;
end;

end.

