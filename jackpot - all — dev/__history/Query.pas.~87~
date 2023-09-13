unit Query;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  EhlibADO,DbUtilsEh,
  Vcl.StdCtrls, Vcl.ExtCtrls, Data.Win.ADODB, System.Rtti,
  System.Bindings.Outputs, Vcl.Bind.Editors, Data.Bind.EngExt,
  Vcl.Bind.DBEngExt, Data.Bind.Components, Data.Bind.DBScope, Data.FMTBcd,
  Data.SqlExpr, Vcl.DBCtrls, DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls,
  DynVarsEh, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh, Vcl.Mask, DBCtrlsEh,
  Vcl.Menus, DBSumLst, DataSetImpExpEh, PrnDbgeh, Vcl.ExtDlgs, Vcl.ToolWin,
  Vcl.ComCtrls, frxDCtrl,MemTableDataEh,DBGridEhImpExp, MemTableEh,Shellapi,
  Data.Bind.Controls, Vcl.Buttons, Vcl.Bind.Navigator, System.ImageList,
  Vcl.ImgList, FireDAC.Stan.Intf, FireDAC.Stan.Param, FireDAC.Phys.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.MSAcc,
  FireDAC.Phys.MSAccDef, FireDAC.VCLUI.Wait, FireDAC.Comp.Client;


type
  TTQuery = class(TForm)
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    N6: TMenuItem;
    StatusBar1: TStatusBar;
    DataSetTextExporterEh1: TDataSetTextExporterEh;
    PopupMenu1: TPopupMenu;
    Excel2: TMenuItem;
    Word4: TMenuItem;
    N11: TMenuItem;
    BindNavigator1: TBindNavigator;
    DBGridEh1: TDBGridEh;
    BindSourceDB1: TBindSourceDB;
    Panel1: TPanel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    BindSourceDB2: TBindSourceDB;
    Panel3: TPanel;
    Image1: TImage;
    Button7: TButton;
    DBMemo1: TDBMemo;
    CheckBox1: TCheckBox;
  


    procedure DBGridEh11SortMarkingChanged(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBGridEh11ApplyFilter(Sender: TObject);
    procedure N8Click(Sender: TObject);
    procedure Pdf1Click(Sender: TObject);
    procedure Excel1Click(Sender: TObject);
    procedure Word1Click(Sender: TObject);
    procedure Excel2Click(Sender: TObject);
    procedure N11Click(Sender: TObject);
    procedure BindNavigator1Click(Sender: TObject; Button: TNavigateButton);
    procedure Button5Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure N13Click(Sender: TObject);
    procedure N6Click(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  TQuery: TTQuery;

implementation

{$R *.dfm}

uses DataModule, Works, Previewdb, UnitWorksAdd, UnitWorksEdit, UnitWorksRemove,
  ABOUT, FotoUnit;



  //ќбновл€ем таблицу после добавлени€
procedure TTQuery.BindNavigator1Click(Sender: TObject; Button: TNavigateButton);
begin
 if button = nbRefresh then
   begin
      DataModuleDB.ADOTableWorks.Requery;
      DataModuleDB.ADOTableWorks.Refresh;


   end;
end;
//Ёксплуатирую Excell  затем открываем ‘айл
procedure TTQuery.Button1Click(Sender: TObject);
begin

         DataModuleDB.ADOTableWorks.Active:=true;
         DataModuleDB.ADOTableWorks.Insert;


WorksAdd.ShowModal;
end;

procedure TTQuery.Button2Click(Sender: TObject);
begin

  WorksEdit.ShowModal;
end;

procedure TTQuery.Button3Click(Sender: TObject);
begin
WorksRemove.ShowModal;
end;

procedure TTQuery.Button4Click(Sender: TObject);
var
  Path:string;
begin
  GetDir(0,Path);
  ExportDBGridEhToXlsx(DBGridEh1,Path+'\File1.xlsx',[]);

  ShowMessage('Ёкспорт завершен');
begin
 GetDir(0,Path);
 ShellExecute(Handle, nil, PChar(Path + '\File1.xlsx'), nil, nil, SW_SHOWNORMAL);
end;
end;

procedure TTQuery.Button5Click(Sender: TObject);
begin
  TQuery.Close;
end;
 procedure TTQuery.CheckBox1Click(Sender: TObject);
begin
if CheckBox1.Checked then
   Panel3.Visible := true
   else
   Panel3.Visible := false;
end;

//”становлю фильтр по умолчанию
procedure TTQuery.DBGridEh11ApplyFilter(Sender: TObject);
begin
  DBGridEh1.DefaultApplyFilter;

end;


 //—ортировка по умолчанию
procedure TTQuery.DBGridEh11SortMarkingChanged(Sender: TObject);
begin
  DBGridEh1.DefaultApplySorting;

end;
 //ѕросматриваем отчЄт
procedure TTQuery.Excel1Click(Sender: TObject);
begin
Preview.frxReport1.ShowReport();
Preview.frxReport1.Export(Preview.frxXLSExport1);
end;
 //Ёкспорт в Excel
procedure TTQuery.Excel2Click(Sender: TObject);
var
  Path:string;
begin
  GetDir(0,Path);
  ExportDBGridEhToXlsx(DBGridEh1,Path+'\File1.xlsx',[]);
  ShowMessage('Ёкспорт завершен');
begin
 GetDir(0,Path);
 ShellExecute(Handle, nil, PChar(Path + '\File1.xlsx'), nil, nil, SW_SHOWNORMAL);
end;
end;
//”станавливаю ћаркер фильтра
procedure TTQuery.FormCreate(Sender: TObject);
begin
DbUtilsEh.SQLFilterMarker := '1=1 AND';
end;

procedure TTQuery.N11Click(Sender: TObject);
begin
TQuery.Close;
end;
 procedure TTQuery.N13Click(Sender: TObject);
begin
AboutBox.show;
end;

procedure TTQuery.N2Click(Sender: TObject);
begin

          DataModuleDB.ADOTableWorks.Active:=true;
         DataModuleDB.ADOTableWorks.Insert;


WorksAdd.ShowModal;

end;

procedure TTQuery.N3Click(Sender: TObject);
begin

  WorksEdit.ShowModal;
end;

procedure TTQuery.N4Click(Sender: TObject);
begin
WorksRemove.ShowModal;
end;

procedure TTQuery.N6Click(Sender: TObject);
begin
close;
end;

//ѕросматриваем отчЄт
procedure TTQuery.N8Click(Sender: TObject);
begin
Preview.Show;
Preview.frxReport1.ShowReport();
end;
 //Ёкспорт отчета
procedure TTQuery.Pdf1Click(Sender: TObject);
begin
Preview.frxReport1.ShowReport();
Preview.frxReport1.Export(Preview.frxPDFExport1);
end;

procedure TTQuery.Word1Click(Sender: TObject);
begin

Preview.frxReport1.ShowReport();
Preview.frxReport1.Export(Preview.frxDOCXExport1);


end;



end.
