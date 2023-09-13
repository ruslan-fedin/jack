unit Works;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.DBCtrls, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh,
  Vcl.ComCtrls, Vcl.Menus, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.UI.Intf,
  FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Phys, FireDAC.Phys.MSAcc,
  FireDAC.Phys.MSAccDef, FireDAC.VCLUI.Wait, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Vcl.ToolWin;

type
  TFWorks = class(TForm)
    Panel2: TPanel;
    Label1: TLabel;
    DBNavigator1: TDBNavigator;
    Edit1: TEdit;
    DBGridEh1: TDBGridEh;
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    N7: TMenuItem;
    StatusBar1: TStatusBar;
    ToolBar1: TToolBar;
    procedure N7Click(Sender: TObject);
    procedure FDTableWorksCalcFields(DataSet: TDataSet);
    procedure DBGridEh1ApplyFilter(Sender: TObject);


  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FWorks: TFWorks;

implementation

{$R *.dfm}

uses DataModule;



procedure TFWorks.DBGridEh1ApplyFilter(Sender: TObject);
begin
 DBGridEh1.DefaultApplyFilter;
end;

procedure TFWorks.FDTableWorksCalcFields(DataSet: TDataSet);
begin
//DataModuleDB.ADOTableWorksSumma.Value:= DataModuleDB.ADOTableWorksJackPot.Value + DataModuleDB.ADOTableWorksP.Value + DataModuleDB.ADOTableWorksPayment.Value;

end;

procedure TFWorks.N7Click(Sender: TObject);
begin
     FWorks.Close;
end;

end.
