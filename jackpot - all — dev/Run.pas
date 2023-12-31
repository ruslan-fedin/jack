unit Run;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, IniFiles,
  DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, EhLibVCL,
  GridsEh, DBAxisGridsEh, DBGridEh, IdBaseComponent, IdComponent,
  IdTCPConnection, IdTCPClient, IdExplicitTLSClientServerBase, IdMessageClient,
  IdSMTPBase, IdSMTP, IdUDPBase, IdUDPClient, IdSNTP, IdHTTP, Vcl.ComCtrls;

type
  TTRun = class(TForm)
    BtnExit: TButton;
    BtnAbout: TButton;
    BtnLogQut: TButton;
    Label4: TLabel;
    Label6: TLabel;
    BtnLic: TButton;
    BtnSettings: TButton;
    BtnOtc: TButton;
    BtnSM: TButton;
    BtnClients: TButton;
    BtnSotr: TButton;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    BtnLogin: TButton;
    BtnExitLogin: TButton;
    Label7: TLabel;
    StatusBar1: TStatusBar;
    IdHTTP1: TIdHTTP;
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BtnClientsClick(Sender: TObject);
    procedure BtnExitClick(Sender: TObject);
    procedure BtnSMClick(Sender: TObject);
    procedure BtnSotrClick(Sender: TObject);
    procedure BtnSettingsClick(Sender: TObject);
    procedure BtnLoginClick(Sender: TObject);
    procedure BtnExitLoginClick(Sender: TObject);
    procedure BtnOtcClick(Sender: TObject);
    procedure BtnAboutClick(Sender: TObject);
    procedure BtnLogQutClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure BtnLicClick(Sender: TObject);

  private



    { Private declarations }
  public

    function getLicInternat(): string;
    Function putDB(): string;
    // function connectDB(): string;

    function isAdmin(): string;

    // function WriteDbLogin(): string;
    function GetDateInt(): tdate;
    function writeDataInt(): string;
    function timeProg(): string;
    function CheckLoginAndPassword(Login, Password: String): Boolean;
    function getLicHardDisk(): string;
    function isRole(Login: string): String;

    { Public declarations }
  end;

var
  TRun: TTRun;
  Ini: TIniFile;
  Login: string;
  SNTPClient: TIdSNTP;
  data_out: tdate;
  data_int: tdate;
  rez: integer;
  SerialNum, dtyp: Dword;
  a, b: Dword;
  Buffer, disk: array [0 .. 255] of char;
  f: TextFile;
  text: string;
  keyharddisk: string;
  day_end: string;
  role: string;


var
  put: string;

implementation

{$R *.dfm}

uses DataModule, Sprav, Works, Query, Client, Previewdb, UnitWorksAdd,
  UnitWorksEdit, UnitWorksRemove, OpenBD, ABOUT, UnitLogo, AddClients, FotoUnit,
  UnitClietsEdit, UnitClietsRemove, UnitOtchet, UnitSort, UnitSettings,
  UnitTime, DateUtils, Unit1, System.Hash, pass, func;

procedure TTRun.BtnLogQutClick(Sender: TObject);
begin
  logOut();

end;

procedure TTRun.BtnLicClick(Sender: TObject);
begin
  Form1.ShowModal;
end;

procedure TTRun.BtnClientsClick(Sender: TObject);
begin
  TClient.ShowModal;
end;

procedure TTRun.BtnExitClick(Sender: TObject);
begin
  TRun.Close;
end;

procedure TTRun.BtnSettingsClick(Sender: TObject);
begin

  Settings.ShowModal;
end;

procedure TTRun.BtnSMClick(Sender: TObject);
begin

  TQuery.ShowModal;

end;

procedure TTRun.BtnAboutClick(Sender: TObject);
begin
  AboutBox.ShowModal;
end;

procedure TTRun.BtnOtcClick(Sender: TObject);
begin
  DataModuleDB.ADOTableOtc.edit;
  DataModuleDB.ADOTableClients.open;
  DataModuleDB.ADOTableOtc.UpdateRecord;
  Otchet.ShowModal;
end;

procedure TTRun.BtnSotrClick(Sender: TObject);
begin
  Sotr.ShowModal;
end;

function TTRun.CheckLoginAndPassword(Login, Password: String): Boolean;

begin

  var
    s1, s2: string;
  begin
    DataModuleDB.ADOQuerylogin.Close;
    DataModuleDB.ADOQuerylogin.sql.clear;
    s1 := ' Select * from Users where Login=' + QuotedStr(Login) +
      'and Password=' + QuotedStr(Password);

    DataModuleDB.ADOQuerylogin.sql.Add(s1);

    { DataModuleDB.ADOQuerylogin.sql.add(s1);

    }
    DataModuleDB.ADOQuerylogin.active := true;
    DataModuleDB.ADOQuerylogin.open;

    if not DataModuleDB.ADOQuerylogin.isEmpty then
    begin
      GroupBox1.Visible := false;


      // form1.ShowModal ;

    end
    else
      ShowMessage
        ('����������� ������� Login#Pass ���������� �������� �����������')

  end;
end;

procedure TTRun.BtnLoginClick(Sender: TObject);

var
  Login, Password: String;
begin
  Login := Edit1.text;
  Password := HashPassword(Edit2.text);
  CheckLoginAndPassword(Login, Password);


  // Password := Edit2.Text;
  // ShowMessage(password);

  // setDbValue();
  // writeDbLogin();
  Login := Edit1.text;

  ShowMessage('ssdsd' + Login);
  isRole(Login);

  // isAdmin();

  // ���������� ��������� ������������
  Label6.Caption := 'login: ' + Login;
  // ���� �� ���� ���� ��������� ���������
  DataModuleDB.ADOQueryTime.sql.clear;
  DataModuleDB.ADOQueryTime.sql.text := 'Select * from Dataprog';
  DataModuleDB.ADOQueryTime.open;
  data_out := DataModuleDB.ADOQueryTime.FieldByName('Data_out').AsDateTime;
  DataModuleDB.ADOQueryTime.Close;
  // ������� ���� ��������� ���������
  Label7.Caption := '�������� ������� ������������ ��: ' +
    DateTimeToStr(data_out) + '. �������)';

end;

procedure TTRun.BtnExitLoginClick(Sender: TObject);
begin
  TRun.Close;
end;

procedure TTRun.FormCreate(Sender: TObject);

begin

  // hashPassword();

  serialNumberDisk();

  //GetDateInt();
  Label4.Caption := '����: ' + datetostr(data_int);
  //
  // writeDataInt();
  // putDB();

end;

procedure TTRun.FormDestroy(Sender: TObject);
begin
  FreeAndNil(SNTPClient);
end;

procedure TTRun.FormShow(Sender: TObject);
begin
  // ConnectDB();
  // timeProg();
  // Logo.Show;

  // DataModuleDB.ADOQuerylogin.Active := true;

end;

// ���� ���������� ���� �� ���������
function TTRun.GetDateInt: tdate;
var
  data: string;
begin
  SNTPClient := TIdSNTP.Create(nil);
  try
    SNTPClient.Host := '0.europe.pool.ntp.org';
    SNTPClient.SyncTime;
  finally

    data := DateTimeToStr(SNTPClient.DateTime);
    data_int := strtodate(Copy(data, 1, 10));

  end;

end;

// �������� �������� �� ������ �����
function TTRun.getLicHardDisk: string;
var
  licnotdisk: string;
begin

  licnotdisk := '��� ��������� ��������! �������� ��������.';
  if FileExists(keyharddisk) then

  begin
    BtnFalseMain();

  end
  else
  begin
    ShowMessage(licnotdisk);
    BtnFalseMain();

  end;

end;

// ��������� �������� �� �������
function TTRun.getLicInternat: string;

var
  key: string;
  licnotsrvtext: string;

begin
  licnotsrvtext :=
    '�� ������� ��� ����� ��������! ���������� � ��������������.';

  keyharddisk := IntToStr(SerialNum) + '.lic';

  Try
    IdHTTP1.Get('http://rusla2sq.beget.tech/');
    key := IdHTTP1.Get('http://rusla2sq.beget.tech/lic/' + IntToStr(SerialNum)
      + '.lic');

    if EncodeLic(key, false) = IntToStr(SerialNum) then
    begin
      Label7.Caption := '�������� ����������������. �������)';

      BtnTrueMain();

    end
    else
    begin
      ShowMessage(licnotsrvtext);
      BtnFalseMain();

    end;
  Except
    ShowMessage(licnotsrvtext);
    BtnFalseMain();
  End;
  getLicHardDisk();

end;

function TTRun.isAdmin: string;
begin

  if Login = 'Admin' then
  begin

    Settings.BtnPass.Visible := true;
    Settings.BtnTime.Visible := true;
    Settings.BtnLic.Visible := true;

    BtnTrueMain();

  end
  else
  begin
    // getLicInternat();
    timeProg();

    Settings.BtnPass.Visible := false;
    Settings.BtnTime.Visible := false;
    Settings.BtnLic.Visible := false;

  end;
end;

function TTRun.isRole(Login: string): String;

begin



  // �������� ���� �� ����� � ����������
  DataModuleDB.ADOQuerylogin.active := false;
  DataModuleDB.ADOQuerylogin.sql.clear;
  DataModuleDB.ADOQuerylogin.sql.Add('select *');
  DataModuleDB.ADOQuerylogin.sql.Add('from users');
  DataModuleDB.ADOQuerylogin.sql.Add('where login =:log');
  DataModuleDB.ADOQuerylogin.Parameters.ParamByName('log').value := Login;

  DataModuleDB.ADOQuerylogin.active := true;
  role := DataModuleDB.ADOQuerylogin.FieldByName('rol').AsString;
  ShowMessage(role);

  //������� �����

  if role = 'User' then

  BtnSettings.Enabled:=false;




  if role = 'Admin' then

  Settings.Btnpass.enabled:=false;




  // �������� ������ ������ ����
  { DataModuleDB.ADOQueryLogin.Close;
    DataModuleDB.ADOQueryLogin.SQL.Clear;
    DataModuleDB.ADOQuerylogin.sql.text :='select * from Users';
    DataModuleDB.ADOQuerylogin.open;
    r:=DataModuleDB.ADOQuerylogin.FieldByName('rol').AsString;
    showmessage(r); }






end;

// ���� � ���� ������
function TTRun.putDB: string;

begin
  Ini := TIniFile.Create(ExtractFilePath(ParamStr(0)) + 'setting.ini');
  put := Ini.ReadString('���� � ��', 'ConSrt', put);
  Ini.Free;
end;


// ����� ���������
function TTRun.timeProg: string;
var
  day: string;

begin
  DataModuleDB.ADOQueryTime.sql.clear;
  DataModuleDB.ADOQueryTime.sql.text := 'Select * from Dataprog';
  DataModuleDB.ADOQueryTime.open;
  data_int := DataModuleDB.ADOQueryTime.FieldByName('Data_int').AsDateTime;
  data_out := DataModuleDB.ADOQueryTime.FieldByName('Data_out').AsDateTime;
  //
  if data_int < data_out then

    // ������� ����� ������
    rez := daysBetween(data_int, data_out);

  DataModuleDB.ADOQueryTime.last;
  day := DataModuleDB.ADOQueryTime.FieldByName('day').AsString;
  day_end := day;
  ShowMessage(day_end);

  if rez < strtoint(day_end) then
  begin
    ShowMessage('���� �������� �������� �����. ���������� � ��������������');
    DeleteFile(keyharddisk);

    // Application.Terminate;
  end

end;

// ���������� ���� �� ��������� � ����
function TTRun.writeDataInt: string;
begin
  with DataModuleDB.ADOQueryTime do
  begin
    sql.clear;
    sql.text :=
      'UPDATE Dataprog SET Dataprog.data_int = (:data_int) WHERE (((Dataprog.id)=1))';
    Parameters.ParamByName('data_int').value := datetostr(data_int);
    ExecSQL;
  end;
end;

// function TTRun.WriteDbLogin: string;
// begin
// if DataModuleDB.ADOQuerylogin.FieldByName('login').AsString <> '' then
//
// begin
// var
// today: TDateTime;
// GroupBox1.Visible := false;
// var
// p: string;
//
// with DataModuleDB.ADOQuerylogin do
// begin
// // ������ � ����
// today := Now;
// p := THashMD5.GetHashString(Edit2.text);
// // showmessage(p);
// Edit2.text := p;
// sql.clear;
// sql.text := 'insert into [Users] ([login],[password],[data_in]) ' +
// ' values (:login,:password,:data_in)';
// Parameters.ParamByName('login').Value := Edit1.text;
//
// Parameters.ParamByName('password').Value :=
// THashMD5.GetHashString(Edit2.text);
// Parameters.ParamByName('data_in').Value := datetostr(today) + ' ' +
// TimeToStr(today);
// ExecSQL;
//
// end;
// with DataModuleDB.ADOQuerylogin do
// begin
// sql.clear;
// sql.text := 'select * from Users';
// ExecSQL;
// end;
// DataModuleDB.ADOQuerylogin.Close;
//
// DataModuleDB.ADOQuerylogin.open;
// DataModuleDB.ADOQuerylogin.Refresh;
// end
// else
// ShowMessage('������ ��� ����� �� ������');
// end;





// �������� ����������  ����
// function Ttrun.ConnectDB: string;
//
// begin
// DataModuleDB.ADOConnectionJackPot.Close;
//
// DataModuleDB.ADOConnectionJackPot.ConnectionString :=
// 'Provider=Microsoft.Jet.OLEDB.4.0;User ID=Admin;Data Source=' + put +
// ';Persist Security info=False;';
// DataModuleDB.ADOConnectionJackPot.open;
//
// DataModuleDB.ADOTableWorks.active := true;
// DataModuleDB.ADOTableClients.active := true;
// DataModuleDB.ADOTableOtc.active := true;
// DataModuleDB.DataSource1.Enabled := true;
// DataModuleDB.DataSource2.Enabled := true;
// DataModuleDB.DataSource3.Enabled := true;
// DataModuleDB.DataSourcelogin.Enabled := true;
// DataModuleDB.DataSourceTime.Enabled := true;
// DataModuleDB.ADOTableClients.active := false;
// DataModuleDB.ADOTableWorks.active := false;
// DataModuleDB.ADOTableOtc.active := false;
// DataModuleDB.DataSourceTime.Enabled := false;
// DataModuleDB.ADOTableWorks.active := true;
// DataModuleDB.ADOTableClients.active := true;
// DataModuleDB.ADOTableOtc.active := true;
// DataModuleDB.ADOTableWorks.last;
// DataModuleDB.ADOTableClients.last;
// DataModuleDB.ADOTableOtc.edit;
// DataModuleDB.DataSourcelogin.edit;
// end;
//

procedure RefreshDataSet();
begin
  if DataModuleDB.ADOTableClients.active then
    DataModuleDB.ADOTableClients.Refresh
  else
    DataModuleDB.ADOTableClients.open;
end;

end.
