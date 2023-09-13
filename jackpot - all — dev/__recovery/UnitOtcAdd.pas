unit UnitOtcAdd;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls, DBCtrlsEh,
  Vcl.Mask, Vcl.DBCtrls;

type
  TOtcAdd = class(TForm)
    Label8: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Button2: TButton;
    Button1: TButton;
    DBEdit2: TDBEdit;
    DBEditEh1: TDBEditEh;
    DBEdit1: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  OtcAdd: TOtcAdd;

implementation

{$R *.dfm}

uses DataModule;

procedure TOtcAdd.Button1Click(Sender: TObject);
begin
DataModuleDB.ADOQueryOtc.Edit;
DataModuleDB.ADOQueryOtc.Insert;
DataModuleDB.ADOQueryOtc.Last;
end;

procedure TOtcAdd.Button2Click(Sender: TObject);
begin
otcadd.close;
end;

end.
