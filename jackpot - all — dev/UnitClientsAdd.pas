unit UnitClientsAdd;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, DBGridEh, DBLookupEh,
  DBCtrlsEh, Vcl.ExtCtrls, PlannersEh, Vcl.Mask, Vcl.DBCtrls;

type
  TClientsAdd = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Button1: TButton;
    Button2: TButton;
    Label8: TLabel;
    DBText2: TDBText;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ClientsAdd: TClientsAdd;

implementation

{$R *.dfm}

uses Query, DataModule;

procedure TClientsAdd.Button1Click(Sender: TObject);
begin

DataModuleDB.ADOTableClients.insert;


DataModuleDB.ADOTableClients.Requery;
DataModuleDB.ADOTableClients.Last;
//WorksAdd.Close;


end;

procedure TClientsAdd.Button2Click(Sender: TObject);
begin
ClientsAdd.Close;
end;

end.
