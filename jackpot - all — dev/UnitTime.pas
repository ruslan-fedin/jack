unit UnitTime;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh,
  Vcl.DBCtrls, Vcl.ExtCtrls, Vcl.ComCtrls, Vcl.StdCtrls,DateUtils;

type
  TTime = class(TForm)
    Panel1: TPanel;
    Edit2: TEdit;
    Label1: TLabel;
    Button1: TButton;
    Label2: TLabel;
    Label3: TLabel;
    MonthCalendar1: TMonthCalendar;
    Label4: TLabel;
    Button2: TButton;
    CheckBox1: TCheckBox;
    Panel2: TPanel;
    DBNavigator1: TDBNavigator;
    Button3: TButton;
    DBGridEh1: TDBGridEh;
    procedure MonthCalendar1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
  function setDataSum():string;
  function RefreshDataSet():string;
    { Public declarations }
  end;

var
  Time: TTime;
  data:tdate;
  datasum:tdate;

implementation

{$R *.dfm}

uses DataModule;

procedure TTime.Button1Click(Sender: TObject);
begin
setDataSum();
end;

procedure TTime.Button2Click(Sender: TObject);

begin
  with DataModuleDB.ADOQueryTime do
  begin
    // ������ � ����
    SQL.Clear;
    SQL.Text :=
      'UPDATE Dataprog SET Dataprog.data_out = (:data_out), Dataprog.day = (:day) WHERE (((Dataprog.id)=1))';
    Parameters.ParamByName('data_out').Value :=datetostr(datasum);
    Parameters.ParamByName('day').Value :=edit2.Text;
    ExecSQL;

  end;
  with DataModuleDB.ADOQueryTime do
  begin
    SQL.Clear;
    SQL.Text :=
      'select *from Dataprog';
     ExecSQL;
  end;

  DataModuleDB.ADOQueryTime.Close;
  DataModuleDB.ADOQueryTime.Open;
 //DataModuleDB.ADOTableTime.Close;
 //DataModuleDB.ADOTableTime.Open;


end;

procedure TTime.Button3Click(Sender: TObject);
begin
Time.Close;
end;

procedure TTime.CheckBox1Click(Sender: TObject);
begin

if CheckBox1.Checked then
  begin
   Panel2.Visible:=true;
  end
   else
    Panel2.Visible:=false;


end;

procedure TTime.FormShow(Sender: TObject);
begin
DataModuleDB.DataSourceTime.Enabled:=true;
end;

procedure TTime.MonthCalendar1Click(Sender: TObject);

begin
data:=MonthCalendar1.date;
label4.Caption:=datetostr(data);
end;

function TTime.RefreshDataSet: string;
begin
if DataModuleDB.ADOQueryTime.Active then
    DataModuleDB.ADOQueryTime.Refresh
  else
    DataModuleDB.ADOQueryTime.open;

end;

function TTime.setDataSum: string;
var

day:integer;
begin
  day:=strtoint(edit2.Text);
  datasum:=IncDay(data, day);
  label1.caption:= datetostr(datasum);
end;
end.
