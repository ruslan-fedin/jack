unit DataModule;

interface

uses
  System.SysUtils, System.Classes, Data.DB, Data.Win.ADODB, IniFiles;

type
  TDataModuleDB = class(TDataModule)
    ADOConnectionJackPot: TADOConnection;
    ADOTableClients: TADOTable;
    DataSource1: TDataSource;
    DataSource2: TDataSource;
    DataSource3: TDataSource;
    ADOTableOtc: TADOTable;
    ADOTableOtcKod: TAutoIncField;
    ADOTableOtcKodClients: TIntegerField;
    ADOTableOtcData: TDateTimeField;
    ADOTableOtcStringField: TStringField;
    ADOTableOtcFioSel: TStringField;
    ADOQuerylogin: TADOQuery;
    DataSourcelogin: TDataSource;
    ADOQueryloginkod: TAutoIncField;
    ADOQueryloginlogin: TWideStringField;
    ADOQueryloginfirstname: TWideStringField;
    ADOQueryloginlastname: TWideStringField;
    ADOQuerylogindata_in: TDateTimeField;
    DataSourceTime: TDataSource;
    ADOQueryTime: TADOQuery;
    ADOQueryTimeid: TIntegerField;
    ADOQueryTimeData_int: TDateTimeField;
    ADOQueryTimeData_out: TDateTimeField;
    ADOQueryTimeday: TIntegerField;
    ADOQueryTimenote: TWideStringField;
    ADOTableClientsKodClient: TAutoIncField;
    ADOTableClientsFIO: TWideStringField;
    ADOTableClientsTelephone: TWideStringField;
    ADOTableClientsPasport: TWideStringField;
    ADOTableClientsDate: TDateTimeField;
    ADOTableClientsOvd: TWideStringField;
    ADOTableClientsNote: TWideStringField;
    ADOTableClientsFoto: TWideStringField;
    ADOTableOtcIn: TFloatField;
    ADOTableOtcOut: TFloatField;
    ADOTableOtcRez: TFloatField;
    ADOTableSotrLogin: TWideStringField;
    ADOTableSotrPass: TWideStringField;
    ADOQueryloginpassword: TWideStringField;
    ADOQueryloginrole: TWideStringField;
    ADOQueryWorks: TADOQuery;
    ADOQueryWorksKod: TAutoIncField;
    ADOQueryWorksKodFIO: TIntegerField;
    ADOQueryWorksData: TDateTimeField;
    ADOQueryWorksJackPot: TFloatField;
    ADOQueryWorksNum_ter: TIntegerField;
    ADOQueryWorksDen: TFloatField;
    ADOQueryWorksP: TFloatField;
    ADOQueryWorksPayment: TFloatField;
    ADOQueryWorksTicket: TIntegerField;
    ADOQueryWorksNumber: TIntegerField;
    ADOQueryWorksFioSel: TStringField;
    ADOQueryWorksSumma: TFloatField;
    ADOQueryWorksFoto: TStringField;
    ADOQueryOtc: TADOQuery;
    ADOQueryOtcKod: TAutoIncField;
    ADOQueryOtcKodClients: TIntegerField;
    ADOQueryOtcFioSel: TStringField;
    ADOQueryOtcData: TDateTimeField;
    ADOQueryOtcIn: TFloatField;
    ADOQueryOtcOut: TFloatField;
    ADOQueryOtcRez: TFloatField;
    ADOQueryOtcFoto: TStringField;
    ADOQueryClients: TADOQuery;
    ADOQueryClientsKodClient: TAutoIncField;
    ADOQueryClientsFIO: TWideStringField;
    ADOQueryClientsTelephone: TWideStringField;
    ADOQueryClientsPasport: TWideStringField;
    ADOQueryClientsDate: TDateTimeField;
    ADOQueryClientsOvd: TWideStringField;
    ADOQueryClientsNote: TWideStringField;
    ADOQueryClientsFoto: TWideStringField;
    procedure ADOQueryWorksCalcFields(DataSet: TDataSet);
    procedure ADOQuery1CalcFields(DataSet: TDataSet);
    procedure ADOTableWorksAfterScroll(DataSet: TDataSet);
    procedure ADOTableClientsAfterScroll(DataSet: TDataSet);
    procedure ADOTableOtcCalcFields(DataSet: TDataSet);
    procedure ADOTableOtcAfterScroll(DataSet: TDataSet);
    procedure ADOQueryWorksAfterScroll(DataSet: TDataSet);
    procedure sc(DataSet: TDataSet);
    procedure ADOQueryClientsAfterScroll(DataSet: TDataSet);


  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModuleDB: TDataModuleDB;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses Previewdb, UnitWorksEdit, Client, UnitOtchet, Query;

{$R *.dfm}

procedure TDataModuleDB.ADOQuery1CalcFields(DataSet: TDataSet);
begin
  // Вычисляем сумму
  // DataModuleDB.ADOQuery1FieldSumma.AsInteger:= DataModuleDB.ADOQuery1JackPot.Value + DataModuleDB.ADOQuery1P.Value + DataModuleDB.ADOQuery1Payment.Value;
  // Получаем номер написи
  // DataModuleDB.ADOTableWorks.AsInteger:=abs(DataModuleDB.ADOTableWorks.RecNo);
end;

procedure TDataModuleDB.ADOQueryClientsAfterScroll(DataSet: TDataSet);
begin
  if not Assigned(tclient) then
    Exit;
  if tclient.DBMemo1.Text = '' then
    tclient.Image1.Picture.LoadFromFile('default.png')

  else
    tclient.Image1.Picture.LoadFromFile(tclient.DBMemo1.Text)
end;

procedure TDataModuleDB.ADOQueryWorksAfterScroll(DataSet: TDataSet);
begin

    if not Assigned(TQuery) then
    Exit;
  if TQuery.DBMemo1.Text = '' then
    TQuery.Image1.Picture.LoadFromFile('default.png')

  else
    TQuery.Image1.Picture.LoadFromFile(TQuery.DBMemo1.Text)

end;

procedure TDataModuleDB.ADOQueryWorksCalcFields(DataSet: TDataSet);
begin

    ADOQueryWorksSumma.Value := ADOQueryWorksJackPot.Value + ADOQueryWorksP.Value
    + ADOQueryWorksPayment.Value;
  // ADOTableWorksSumma.Value := ADOTableWorksP + ADOTableWorksJackPot
  // DataModuleDB.ADOQuery1Number.AsInteger:=abs(DataModuleDB.ADOQuery1.RecNo);
  ADOQueryWorksNumber.AsInteger := abs(ADOQueryWorks.RecNo);
end;

procedure TDataModuleDB.ADOTableClientsAfterScroll(DataSet: TDataSet);

begin
  if not Assigned(tclient) then
    Exit;
  if tclient.DBMemo1.Text = '' then
    tclient.Image1.Picture.LoadFromFile('default.png')

  else
    tclient.Image1.Picture.LoadFromFile(tclient.DBMemo1.Text)
end;



procedure TDataModuleDB.ADOTableOtcAfterScroll(DataSet: TDataSet);
begin
          if not Assigned(otchet) then
    Exit;
  if otchet.DBMemo1.Text = '' then
    otchet.Image1.Picture.LoadFromFile('default.png')

  else
    otchet.Image1.Picture.LoadFromFile(otchet.DBMemo1.Text)
end;

procedure TDataModuleDB.ADOTableOtcCalcFields(DataSet: TDataSet);
begin
  ADOTableOtcRez.Value := ADOTableOtcIn.Value - ADOTableOtcOut.Value;
end;

// DataModuleDB.ADOTableClients.RecNoend;

procedure TDataModuleDB.ADOTableWorksAfterScroll(DataSet: TDataSet);
begin

    if not Assigned(TQuery) then
    Exit;
  if TQuery.DBMemo1.Text = '' then
    TQuery.Image1.Picture.LoadFromFile('default.png')

  else
    TQuery.Image1.Picture.LoadFromFile(TQuery.DBMemo1.Text)

  // DataModuleDB.ADOTableWorks.RecNo
  // Worksedit.Label9.Caption:= ADOTableWorks.FieldByName('KodFIO').AsString;
end;

procedure TDataModuleDB.sc(DataSet: TDataSet);
begin
end;

{ DataModuleDB.ADOConnectionJackPot.ConnectionString:='';




  ADOConnectionJackPot.Close;
  //Получаем полный путь к файлу БД с учётом текущего расположения исполняемого файла программы.
  FileName := ExtractFilePath(ParamStr(0)) + Fn;
  //Формируем строку соединения с учётом нового пути в файлу БД.
  S :=
  'Provider=Microsoft.Jet.OLEDB.4.0;'
  + 'Data Source="' + FileName + '";'
  + 'Mode=Share Deny None;'
  + 'User Id=;'
  + 'Password=;';
  //Записываем новую строку соединения.
  ADOConnectionJackPot.ConnectionString := S;
  //Открываем БД.
  ADOConnectionJackPot.Open; }
end.
