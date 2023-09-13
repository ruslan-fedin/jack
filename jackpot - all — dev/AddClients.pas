unit AddClients;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEh, Vcl.DBCtrls, Vcl.StdCtrls,
  DBLookupEh, Vcl.Mask, DBCtrlsEh, Vcl.ComCtrls, Vcl.ExtCtrls, Vcl.ExtDlgs,
  Vcl.Imaging.jpeg, Vcl.Imaging.pngimage;

type
  TClientsAdd = class(TForm)
    Button2: TButton;
    Button1: TButton;
    Label8: TLabel;
    Label1: TLabel;
    DBEdit2: TDBEdit;
    Label2: TLabel;
    Label3: TLabel;
    DBEditEh1: TDBEditEh;
    DBRichEditEh1: TDBRichEditEh;
    Button3: TButton;
    DBMemo1: TDBMemo;
    Image1: TImage;
    OpenPictureDialog1: TOpenPictureDialog;
    DBEdit1: TDBEdit;
    Label4: TLabel;
    DBEdit3: TDBEdit;
    Label5: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure DBEdit2Enter(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ClientsAdd: TClientsAdd;

implementation

{$R *.dfm}

uses DataModule;

procedure TClientsAdd.Button1Click(Sender: TObject);
begin
DataModuleDB.ADOTableClients.Edit;
DataModuleDB.ADOTableClients.Insert;
DataModuleDB.ADOTableClients.Last;

ClientsAdd.close;
end;

procedure TClientsAdd.Button2Click(Sender: TObject);
begin
ClientsAdd.close;
end;

procedure TClientsAdd.Button3Click(Sender: TObject);

var pic:string;
begin

    DataModuleDB.ADOTableClients.Edit;
    if ClientsAdd.OpenPictureDialog1.Execute then ClientsAdd.DBMemo1.Text:=ClientsAdd.OpenPictureDialog1.FileName;
    pic:=ClientsAdd.DBMemo1.Text;
    ClientsAdd.Image1.Picture.LoadFromFile(pic);
    DataModuleDB.ADOTableClients.Post;

end;

procedure TClientsAdd.DBEdit2Enter(Sender: TObject);
begin
DataModuleDB.ADOTableClients.FieldByName('Telephone').EditMask:='!\+7(999\)000-00-00;1;_';
end;

procedure TClientsAdd.FormCreate(Sender: TObject);


begin
  //DataModuleDB.ADOTableClients.Last;




end;

end.
