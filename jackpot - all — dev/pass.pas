unit pass;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.DBCtrls,
  DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, EhLibVCL,
  GridsEh, DBAxisGridsEh, DBGridEh, Vcl.StdCtrls,System.Hash, Vcl.Mask,System.Math;

type
  TPassword = class(TForm)
    DBNavigator1: TDBNavigator;
    DBGridEh1: TDBGridEh;
    Panel1: TPanel;
    Button1: TButton;
    Panel2: TPanel;
    DBText1: TDBText;
    DBText2: TDBText;
    Edit2: TEdit;
    DBText3: TDBText;
    Button2: TButton;
    Edit1: TEdit;
    Edit3: TEdit;
    Button3: TButton;
    Edit4: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Button4: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
   function RandomPassword(PLen: Integer): string;

    { Public declarations }
  end;

var
  Password: TPassword;
  strRecombine: string;

implementation

{$R *.dfm}

uses DataModule, Run, func;


procedure TPassword.Button1Click(Sender: TObject);
begin
 with DataModuleDB.ADOQuerylogin do
  begin
    // ������ � ����
    SQL.Clear;
    SQL.Text :=
      'DELETE avtoriz.[data_in], * FROM avtoriz WHERE (((avtoriz.[data_in]) Is Not Null));';
    ExecSQL;
    SQL.Text :='select * from avtoriz';

  end;
  with DataModuleDB.ADOQuerylogin do
  begin

  SQL.Text :='select * from avtoriz';
     DataModuleDB.ADOQuerylogin.Open;
  end;
// DataModuleDB.ADOTableLogin.Close;
 //DataModuleDB.ADOTableLogin.Open;

end;


procedure TPassword.Button2Click(Sender: TObject);
var pass,pass1:string;
begin

pass:= HashPassword(Edit1.Text);
pass1:=HashPassword(Edit2.Text);



if pass<>pass1 then

showmessage('������ �� ��������� ��������� �������')
else
   showmessage('������  ���������');

    DataModuleDB.ADOQuerylogin.Edit;
    DataModuleDB.ADOQuerylogin.FieldByName('password').AsString:=pass;
    DataModuleDB.ADOQuerylogin.Post;

    Edit1.Text:='';
    Edit2.Text:='';

  end;


procedure TPassword.Button3Click(Sender: TObject);
var len:string;
begin
len:=edit4.Text;


 len:=RandomPassword(strtoint(len));
 edit3.Text:=len;
 Button4.visible:=true;

end;

procedure TPassword.Button4Click(Sender: TObject);
var pass:string;
begin

pass:=Edit3.Text;
edit1.text:=pass;
edit2.Text:=pass;

end;

procedure TPassword.FormShow(Sender: TObject);
begin
edit4.Text:='8';
end;



function TPassword.RandomPassword(PLen: Integer): string;

   var

    strBase: string;
    strUpper: string;
    strSpecial: string;

  begin
    strRecombine:='';
    Result := '';
    Randomize;
    //string with all possible chars
    strBase   := 'abcdefghijklmnopqrstuvwxyz1234567890';
    strUpper:='ABCDEFGHIJKLMNOPQRSTUVWXYZ';
    strSpecial:='@!_^&*()~#$';
    // Start Random
    strRecombine:= strUpper[Random(Length(strUpper)) + 1];
    Result:=strRecombine;
    strRecombine:= strSpecial[Random(Length(strSpecial))+1];
    repeat
      Result := Result +  strBase[Random(Length(strBase)) + 1];
    until (Length(Result) = PLen);
      RandomRange(2, Length(strBase));
      Result[RandomRange(2, PLen)]:=strRecombine[1];
  result:=Result+strRecombine;
end;



end.
