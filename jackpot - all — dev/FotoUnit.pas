unit FotoUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.DBCtrls,
  Vcl.Imaging.pngimage, Vcl.ExtCtrls, Vcl.ExtDlgs;

type
  TFoto = class(TForm)
    OpenPictureDialog1: TOpenPictureDialog;
    Image1: TImage;
    DBMemo1: TDBMemo;
    Button5: TButton;
    Button3: TButton;
    procedure FormCreate(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Foto: TFoto;

implementation

{$R *.dfm}

uses DataModule, Client;

procedure TFoto.Button3Click(Sender: TObject);
var pic:string;
begin
  DatamoduleDB.ADOTableClients.Edit;
  if foto.OpenPictureDialog1.Execute then foto.DBMemo1.Text:=foto.OpenPictureDialog1.FileName;
   pic:=foto.DBMemo1.Text;
   foto.Image1.Picture.LoadFromFile(pic);
   DatamoduleDB.ADOTableClients.Post;
  //  DatamoduleDB.ADOTableClients.Refresh;
end;

procedure TFoto.Button5Click(Sender: TObject);
begin
Foto.close;
end;

procedure TFoto.FormCreate(Sender: TObject);
begin



   //Foto.Image1.Picture.LoadFromFile(Foto.DBMemo1.Text)

if Foto.DBMemo1.Text='' then Foto.Image1.Picture.LoadFromFile('img\default.png')

else  Foto.Image1.Picture.LoadFromFile(Foto.DBMemo1.Text)
 // Foto.Image1.Picture.LoadFromFile(Foto.DBMemo1.Text);
//DatamoduleDB.ADOTableClients.Edit;
end;

end.
