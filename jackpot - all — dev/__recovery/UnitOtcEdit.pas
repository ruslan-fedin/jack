unit UnitOtcEdit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.DBCtrls, Vcl.ComCtrls;

type
  TOtcEdit = class(TForm)
    Label3: TLabel;
    Label4: TLabel;
    Button2: TButton;
    Button1: TButton;
    Label2: TLabel;
    Label6: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Edit2: TEdit;
    Edit3: TEdit;
    DateTimePicker1: TDateTimePicker;
    Label12: TLabel;
    procedure FormShow(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
  function getValueDB():string;
  function setValueDB():string;
    { Public declarations }
  end;

var
  OtcEdit: TOtcEdit;

implementation

{$R *.dfm}

uses DataModule;

procedure TOtcEdit.Button1Click(Sender: TObject);
begin
setValueDB();
otcedit.Close;
end;

procedure TOtcEdit.Button2Click(Sender: TObject);
begin
otcedit.close;
end;

procedure TOtcEdit.FormShow(Sender: TObject);
begin

  getValueDB();

end;

function TOtcEdit.getValueDB: string;
begin

//Label1.caption:=DatamoduleDB.ADOQueryOtc.FieldByName('Rez').Value;
Label12.caption:=DatamoduleDB.ADOQueryOtc.FieldByName('KodClients').Value;
Label11.caption:=DatamoduleDB.ADOQueryOtc.FieldByName('FIOSel').Value;
DateTimePicker1.DateTime:=DatamoduleDB.ADOQueryOtc.FieldByName('Data').Value;
Edit2.Text:=DatamoduleDB.ADOQueryOtc.FieldByName('in').Value;
Edit3.Text:=DatamoduleDB.ADOQueryOtc.FieldByName('Out').Value;

end;

function TOtcEdit.setValueDB: string;
begin
DatamoduleDB.ADOTableOtc.edit;
DatamoduleDB.ADOTableOtc.FieldByName('Data').Value:=DateTimePicker1.DateTime;
DatamoduleDB.ADOTableOtc.FieldByName('In').Value:=Edit2.Text;
DatamoduleDB.ADOTableOtc.FieldByName('Out').Value:=Edit3.Text;
end;

end.
