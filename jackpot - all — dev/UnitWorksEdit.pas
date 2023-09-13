 unit UnitWorksEdit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, DBGridEh, DBLookupEh,
  DBCtrlsEh, Vcl.ExtCtrls, PlannersEh, Vcl.Mask, Vcl.DBCtrls, Vcl.ComCtrls;

type
  TWorksEdit = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label7: TLabel;
    Button1: TButton;
    Button2: TButton;
    Label8: TLabel;
    Jack: TEdit;
    P: TEdit;
    Label9: TLabel;
    DateTimePicker1: TDateTimePicker;
    Pay: TEdit;
    Label6: TLabel;
    Label10: TLabel;
    Term: TEdit;
    Label11: TLabel;
    Den: TEdit;
    Label12: TLabel;
    Ticket: TEdit;
    procedure Button2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  WorksEdit: TWorksEdit;

implementation

{$R *.dfm}

uses Query, DataModule;

procedure TWorksEdit.Button1Click(Sender: TObject);
begin
DatamoduleDB.ADOQueryWorks.edit;
DatamoduleDB.ADOQueryWorks.FieldByName('Data').Value:=DateTimePicker1.DateTime;
DatamoduleDB.ADOQueryWorks.FieldByName('JackPot').Value:=jack.Text;
DatamoduleDB.ADOQueryWorks.FieldByName('Num_ter').Value:=Term.Text;
DatamoduleDB.ADOQueryWorks.FieldByName('Den').Value:=Den.Text;
DatamoduleDB.ADOQueryWorks.FieldByName('P').Value:=p.Text;
DatamoduleDB.ADOQueryWorks.FieldByName('Payment').Value:=pay.Text;
DatamoduleDB.ADOQueryWorks.FieldByName('Ticket').Value:=Ticket.Text;

 WorksEdit.Close;
end;

procedure TWorksEdit.Button2Click(Sender: TObject);
begin
 WorksEdit.Close;
end;

 procedure TWorksEdit.FormShow(Sender: TObject);
begin

Label9.caption:=DatamoduleDB.ADOQueryWorks.FieldByName('KodFIO').Value;
Label6.caption:=DatamoduleDB.ADOQueryWorks.FieldByName('FIOSel').Value;
DateTimePicker1.DateTime:=DatamoduleDB.ADOQueryWorks.FieldByName('Data').Value;
jack.Text:=DatamoduleDB.ADOQueryWorks.FieldByName('JackPot').Value;
Term.Text:=DatamoduleDB.ADOQueryWorks.FieldByName('Num_ter').Value;
Den.Text:=DatamoduleDB.ADOQueryWorks.FieldByName('Den').Value;
P.Text:=DatamoduleDB.ADOQueryWorks.FieldByName('P').Value;
Pay.Text:=DatamoduleDB.ADOQueryWorks.FieldByName('Payment').Value;
Ticket.Text:=DatamoduleDB.ADOQueryWorks.FieldByName('Ticket').Value;

end;

end.
