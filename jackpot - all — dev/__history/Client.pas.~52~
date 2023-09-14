unit Client;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  EhlibADO,DbUtilsEh,
  Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.DBCtrls, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh,
  Vcl.ToolWin, Vcl.ComCtrls, Data.Bind.Controls, Vcl.Menus, DataSetImpExpEh,
  Data.Bind.Components, Data.Bind.DBScope, Vcl.Buttons, Vcl.Bind.Navigator,
  DBCtrlsEh, Vcl.ExtDlgs;

type
  TTClient = class(TForm)
    BindSourceDB2: TBindSourceDB;
    MainMenu1: TMainMenu;
    N6: TMenuItem;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    Panel1: TPanel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    PopupMenu1: TPopupMenu;
    Excel2: TMenuItem;
    Word4: TMenuItem;
    N11: TMenuItem;
    DBGridEh1: TDBGridEh;
    Panel2: TPanel;
    Image1: TImage;
    OpenPictureDialog1: TOpenPictureDialog;
    DBMemo1: TDBMemo;
    Button6: TButton;
    Button7: TButton;
    DBNavigator1: TDBNavigator;
    procedure Button5Click(Sender: TObject);
    procedure N6Click(Sender: TObject);
    procedure DBGridEh1SortMarkingChanged(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure DBGridEh1ColumnMoved(Sender: TObject; FromIndex,
      ToIndex: Integer);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);


  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  TClient: TTClient;

implementation

{$R *.dfm}

uses DataModule, AddClients, UnitClietsEdit, UnitClietsRemove, note;

procedure TTClient.Button1Click(Sender: TObject);
begin
 DataModuleDB.ADOTableClients.Active:=true;
 DataModuleDB.ADOTableClients.edit;
 DataModuleDB.ADOTableClients.Insert;
 DataModuleDB.ADOTableClients.FieldByName('Telephone').EditMask:='';
 ClientsAdd.Show;
end;

procedure TTClient.Button2Click(Sender: TObject);
begin
 DataModuleDB.ADOTableClients.Active:=true;
ClientsEdit.show;
end;

procedure TTClient.Button5Click(Sender: TObject);
begin
 DatamoduleDB.ADOTableClients.Refresh;
 TClient.close;
end;

procedure TTClient.Button6Click(Sender: TObject);
var pic:string;
begin

    DataModuleDB.ADOTableClients.Edit;
    if ClientsAdd.OpenPictureDialog1.Execute then ClientsAdd.DBMemo1.Text:=ClientsAdd.OpenPictureDialog1.FileName;
    pic:=ClientsAdd.DBMemo1.Text;
    ClientsAdd.Image1.Picture.LoadFromFile(pic);


    DataModuleDB.ADOTableClients.Post;
  //    DatamoduleDB.ADOTableClients.Refresh;
end;

procedure TTClient.Button7Click(Sender: TObject);
begin
TNote.Showmodal;
end;

procedure TTClient.DBGridEh1ColumnMoved(Sender: TObject; FromIndex,
  ToIndex: Integer);
begin

//if tclient.DBMemo1.Text ='' then tclient.Image1.Picture.LoadFromFile('img\default.png')

//else  tclient.Image1.Picture.LoadFromFile(tclient.DBMemo1.Text)
end;



procedure TTClient.DBGridEh1SortMarkingChanged(Sender: TObject);
begin
     DBGridEh1.DefaultApplySorting;
end;

procedure TTClient.FormClose(Sender: TObject; var Action: TCloseAction);
begin
//DatamoduleDB.ADOTableClients.Refresh;
end;

procedure TTClient.FormCreate(Sender: TObject);
begin

//if tclient.DBMemo1.Text ='' then tclient.Image1.Picture.LoadFromFile('img\default.png')

//else  tclient.Image1.Picture.LoadFromFile(tclient.DBMemo1.Text)
//DbUtilsEh.SQLFilterMarker := '1=1 AND';
end;

procedure TTClient.N2Click(Sender: TObject);
begin
DataModuleDB.ADOTableClients.Active:=true;
 DataModuleDB.ADOTableClients.edit;
 DataModuleDB.ADOTableClients.Insert;
 DataModuleDB.ADOTableClients.FieldByName('Telephone').EditMask:='';
 ClientsAdd.Show;
end;

procedure TTClient.N3Click(Sender: TObject);
begin
ClientsEdit.show;
end;

procedure TTClient.N4Click(Sender: TObject);
begin
ClientsRemove.ShowModal;
end;

procedure TTClient.N6Click(Sender: TObject);
begin
 TClient.close;


end;


end.
