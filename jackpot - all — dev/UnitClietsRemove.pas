unit UnitClietsRemove;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TClientsRemove = class(TForm)
    Label8: TLabel;
    Button1: TButton;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ClientsRemove: TClientsRemove;

implementation

{$R *.dfm}

uses DataModule;

procedure TClientsRemove.Button1Click(Sender: TObject);
begin
DataModuleDB.ADOTableClients.Delete;

ClientsRemove.close;
end;

procedure TClientsRemove.Button2Click(Sender: TObject);
begin
 DataModuleDB.ADOTableClients.Cancel;
 ClientsRemove.close;
end;

end.
