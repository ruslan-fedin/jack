unit OpenBD;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls,iniFiles;

type
  TBDopen = class(TForm)
    Label1: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    Button2: TButton;
    OpenDialog1: TOpenDialog;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure OpenDialog1Show(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  BDopen: TBDopen;
  Ini : TIniFile;

implementation

{$R *.dfm}

uses DataModule, Run;

procedure TBDopen.Button1Click(Sender: TObject);
begin

if BDopen.OpenDialog1.Execute then BDopen.Edit1.Text:= BDopen.OpenDialog1.FileName;



end;

procedure TBDopen.Button2Click(Sender: TObject);
begin

Ini:=TIniFile.Create(ExtractFilePath(ParamStr(0))+'setting.ini');
Ini.WriteString('Ïóòü ê ÁÄ','ConSrt',BDopen.Edit1.Text);
Ini.Free;

DataModuleDB.DataSource1.Enabled:=False;
DataModuleDB.DataSource2.Enabled:=False;
//DataModuleDB.DataSourceTable.Enabled:=False;
//DataModuleDB.DataSourceWorks.Enabled:=False;

DataModuleDB.ADOTableClients.Active:=False;
DataModuleDB.ADOTableWorks.Active:=False;
DataModuleDB.ADOConnectionJackPot.Close;
DataModuleDB.ADOConnectionJackPot.ConnectionString:='Provider=Microsoft.Jet.OLEDB.4.0;User ID=Admin;Data Source='+BDopen.Edit1.Text+';Persist Security info=False;';
DataModuleDB.ADOConnectionJackPot.Open;

DataModuleDB.DataSource1.Enabled:=True;
DataModuleDB.DataSource2.Enabled:=True;
//DataModuleDB.DataSourceTable.Enabled:=True;
//DataModuleDB.DataSourceWorks.Enabled:=True;


DataModuleDB.ADOTableWorks.Active:=True;
DataModuleDB.ADOTableClients.Active:=True;
BDopen.Close;
end;

procedure TBDopen.FormCreate(Sender: TObject);
begin


Ini:=TIniFile.Create(ExtractFilePath(ParamStr(0))+'setting.ini');
BDopen.Edit1.Text:=Ini.ReadString('Ïóòü ê ÁÄ','ConSrt',BDopen.Edit1.Text);
Ini.Free;

end;

procedure TBDopen.OpenDialog1Show(Sender: TObject);
begin
DataModuleDB.ADOTableWorks.Active:=False;
DataModuleDB.ADOTableClients.Active:=False;
DataModuleDB.DataSource1.Enabled:=False;
DataModuleDB.DataSource2.Enabled:=False;
//DataModuleDB.DataSourceTable.Enabled:=False;
//DataModuleDB.DataSourceWorks.Enabled:=False;
DataModuleDB.ADOConnectionJackPot.Close;
end;

end.
