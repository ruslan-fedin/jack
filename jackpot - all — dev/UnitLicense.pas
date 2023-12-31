unit UnitLicense;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TLicense = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    Button1: TButton;
    Button2: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Button3: TButton;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  License: TLicense;

implementation

{$R *.dfm}

uses Run, func;
function EncodeLic(s:string;code:boolean):string;
const
   Pas=10;
var
  i,Delta,Res:integer;
begin
  Result:='';
  for i:=1 to Length(s) do
  begin
    Delta:=((i xor Pas) mod (256-32));
    if code then
      Res:=((ord(s[i])+Delta) mod (256-32))+32
    else
    begin
      Res:=ord(s[i])-Delta-32;
      if Res<32 then
        Res:=Res+256-32;
    end;
      Result:=Result+chr(Res);
  end;
end;


procedure TLicense.Button1Click(Sender: TObject);
begin
try
  AssignFile(f, edit1.text+'.lic');
  ReWrite(f);
  Write(f, EncodeLic(edit1.text, true));
  CloseFile(f);
  showmessage('���� � ��������� ��� '+edit1.text+' ������ �������');
 except
 showmessage('������');
 end;
end;

procedure TLicense.Button2Click(Sender: TObject);
begin
 try
  AssignFile(f, edit2.text+'.lic');
  ReWrite(f);
  Write(f, EncodeLic(edit2.text, true));
  CloseFile(f);
  showmessage('���� � ��������� ��� '+edit2.text+' ������ �������');
 except
 showmessage('������');
 end;
end;

procedure TLicense.Button3Click(Sender: TObject);
begin
License.Close;
end;

procedure TLicense.FormCreate(Sender: TObject);
begin
serialNumberDisk();
edit1.text:=IntToStr(SerialNum);
end;

end.
