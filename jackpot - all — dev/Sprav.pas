unit Sprav;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TTSprav = class(TForm)
    Button1: TButton;
    Button2: TButton;
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  TSprav: TTSprav;

implementation

{$R *.dfm}

uses Client;

procedure TTSprav.Button1Click(Sender: TObject);
begin
Tclient.ShowModal;
end;

procedure TTSprav.Button2Click(Sender: TObject);
begin
TSprav.Close;
end;

end.
