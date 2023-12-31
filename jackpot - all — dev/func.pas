unit func;

interface

function BtnFalseMain: string;
function BtnTrueMain: string;
function EncodeLic(s: string; code: boolean): string;
function VerifyPassword(const Password, Hash: string): boolean;
function HashPassword(const Password: string): string;
function SerialNumberDisk(): string;
function LogOut(): string;
function SetDbValue(): string;
//function ConnectDB(): string;

implementation

uses Run, DataModule, System.Hash, DateUtils, Vcl.ComCtrls, Winapi.Windows,
  System.SysUtils;

var

  keyharddisk: string;
  SerialNum, dtyp: Dword;
  a, b: Dword;
  Buffer, disk: array [0 .. 255] of char;
  f: TextFile;





 //
function SetDbValue: string;
begin

  DataModuleDB.ADOQuerylogin.sql.text :=
    'select * from Users where login=:p1 and password=:p2';
  DataModuleDB.ADOQuerylogin.Parameters.ParamByName('p1').Value :=
    Trun.Edit1.text;
  DataModuleDB.ADOQuerylogin.Parameters.ParamByName('p2').Value :=
    Trun.Edit2.text;
  DataModuleDB.ADOQuerylogin.ExecSQL;
  DataModuleDB.ADOQuerylogin.open;
end;

//
function LogOut: string;
begin
  Trun.GroupBox1.Visible := true;
  Trun.Edit1.text := '';
  Trun.Edit2.text := '';
  DataModuleDB.ADOQuerylogin.Refresh;
  DataModuleDB.ADOQuerylogin.Close;
  DataModuleDB.ADOQuerylogin.open;
  DataModuleDB.ADOQuerylogin.last;
end;

// �������� ����� ������� �����
function SerialNumberDisk(): string;
begin
  dtyp := GetDriveType('c:/');
  dtyp := DRIVE_REMOVABLE;
  GetVolumeInformation('c:/', Buffer, sizeof(Buffer), @SerialNum, a, b, nil, 0);

end;

// �������� ������
function HashPassword(const Password: string): string;
begin
  // ����������� ������ � MD5
  Result := THashSHA2.GetHashString(Password, THashSHA2.TSHA2Version.SHA256);
end;

// ��������� ������
function VerifyPassword(const Password, Hash: string): boolean;
begin

  Result := HashPassword(Password) = Hash;
end;

// ������� ����
function EncodeLic(s: string; code: boolean): string;
const
  Pas = 10;
var
  i, Delta, Res: integer;
begin
  Result := '';
  for i := 1 to Length(s) do
  begin
    Delta := ((i xor Pas) mod (256 - 32));
    if code then
      Res := ((ord(s[i]) + Delta) mod (256 - 32)) + 32
    else
    begin
      Res := ord(s[i]) - Delta - 32;
      if Res < 32 then
        Res := Res + 256 - 32;
    end;
    Result := Result + chr(Res);
  end;
end;

// ��������� ������ �� ������� �����
function BtnFalseMain: string;
begin
  Trun.BtnSotr.Enabled := false;
  Trun.BtnClients.Enabled := false;
  Trun.BtnSM.Enabled := false;
  Trun.BtnOtc.Enabled := false;
  Trun.BtnSettings.Enabled := false;
end;

// �������� ������ �� ������� �����
function BtnTrueMain: string;
begin
  Trun.BtnSotr.Enabled := true;
  Trun.BtnClients.Enabled := true;
  Trun.BtnSM.Enabled := true;
  Trun.BtnOtc.Enabled := true;
  Trun.BtnSettings.Enabled := true;
end;

end.
