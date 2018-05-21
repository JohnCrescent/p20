unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.Button1Click(Sender: TObject);
var a,b:integer;
begin
  a:=strtoint(edit1.text);
  b:=strtoint(edit2.text);
  while a<>b do
        begin
             if a>b then a:=a-b;
             if b>a then b:=b-a;
        end;
  showmessage('Najväčší spoločný deliteľ je '+inttostr(a))

end;

procedure TForm1.Button2Click(Sender: TObject);
var a,b,mocnina,i:integer;
begin
  a:=strtoint(edit1.text);
  b:=strtoint(edit2.text);
  mocnina:=1;
  for i:=1 to b do mocnina:=mocnina*a;
  showmessage('Mocnina a na b je '+inttostr(mocnina))
end;

end.

