unit UnitWorksAdd;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, DBGridEh, DBLookupEh,
  DBCtrlsEh, Vcl.ExtCtrls, PlannersEh, Vcl.Mask, Vcl.DBCtrls;

type
  TWorksAdd = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    DBText1: TDBText;
    DBText2: TDBText;
    Button1: TButton;
    Button2: TButton;
    Label8: TLabel;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBLookupComboboxEh1: TDBLookupComboboxEh;
    DBDateTimeEditEh1: TDBDateTimeEditEh;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit6: TDBEdit;
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  WorksAdd: TWorksAdd;

implementation

{$R *.dfm}

uses Query, DataModule;

procedure TWorksAdd.Button1Click(Sender: TObject);
begin

DataModuleDB.ADOQueryWorks.Append;


DataModuleDB.ADOQueryWorks.Requery;
DataModuleDB.ADOQueryWorks.Last;
WorksAdd.Close;


end;

procedure TWorksAdd.Button2Click(Sender: TObject);
begin
WorksAdd.Close;
end;

end.
