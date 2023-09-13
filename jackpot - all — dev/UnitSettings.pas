unit UnitSettings;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, DBGridEhGrouping,
  ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, EhLibVCL, GridsEh, DBAxisGridsEh,
  DBGridEh;

type
  TSettings = class(TForm)
    Button3: TButton;
    BtnPass: TButton;
    BtnTime: TButton;
    BtnCloseSettings: TButton;
    BtnLic: TButton;
    procedure Button3Click(Sender: TObject);
    procedure BtnPassClick(Sender: TObject);
    procedure BtnTimeClick(Sender: TObject);
    procedure BtnCloseSettingsClick(Sender: TObject);
    procedure BtnLicClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Settings: TSettings;
   // SerialNum,dtyp:Dword;

implementation

{$R *.dfm}

uses OpenBD, pass, DataModule, UnitTime, Run, UnitLicense;


procedure TSettings.BtnPassClick(Sender: TObject);
begin
DataModuleDB.DataSourcelogin.Enabled:=true;
//DataModuleDB.ADOTablelogin.Active:=true;
DataModuleDB.ADOQuerylogin.SQL.Text := 'SELECT * FROM Users';
DataModuleDB.ADOQuerylogin.ExecSQL;
DataModuleDB.ADOQuerylogin.Open;
DataModuleDB.ADOQuerylogin.Last;
password.ShowModal;
end;

procedure TSettings.BtnTimeClick(Sender: TObject);
begin
DataModuleDB.ADOQueryTime.Open;
time.ShowModal;


DataModuleDB.ADOQuerylogin.Close;
DataModuleDB.ADOQuerylogin.Open;
 {DataModuleDB.ADOTableTime.Close;
 DataModuleDB.ADOTableTime.Open;
  }

end;

procedure TSettings.Button3Click(Sender: TObject);
begin
 BDopen.ShowModal;
end;




procedure TSettings.BtnCloseSettingsClick(Sender: TObject);
begin
Settings.Close;
end;

procedure TSettings.BtnLicClick(Sender: TObject);
begin
License.ShowModal;
end;


end.
