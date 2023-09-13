unit UnitOtchet;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, DBGridEhGrouping,
  ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, EhLibVCL, GridsEh, DBAxisGridsEh,
  DBGridEh, Vcl.DBCtrls, Vcl.StdCtrls, Vcl.ExtDlgs;

type
  TOtchet = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    DBNavigator1: TDBNavigator;
    Panel3: TPanel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Image1: TImage;
    Button7: TButton;
    DBMemo1: TDBMemo;
    CheckBox1: TCheckBox;
    DBGridEh1: TDBGridEh;
    procedure Button6Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Otchet: TOtchet;

implementation

{$R *.dfm}

uses DataModule, FotoUnit, UnitOtcAdd, UnitOtcEdit;

procedure TOtchet.Button1Click(Sender: TObject);
begin
 DataModuleDB.ADOQueryOtc.Active:=true;
 DataModuleDB.ADOQueryOtc.edit;
 DataModuleDB.ADOQueryOtc.Insert;
OtcAdd.ShowModal;
end;

procedure TOtchet.Button2Click(Sender: TObject);
begin
OtcEdit.ShowModal;
end;

procedure TOtchet.Button5Click(Sender: TObject);
begin
Otchet.Close;
end;

procedure TOtchet.Button6Click(Sender: TObject);
begin
//DatamoduleDB.ADOTableClients.Edit;



end;

procedure TOtchet.CheckBox1Click(Sender: TObject);
begin
   if CheckBox1.Checked then
   Panel3.Visible := true
   else
   Panel3.Visible := false;
end;

end.
