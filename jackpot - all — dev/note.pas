unit note;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls;

type
  TTNote = class(TForm)
    Button2: TButton;
    DBText1: TDBText;
    DBMemo1: TDBMemo;
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  TNote: TTNote;

implementation

{$R *.dfm}

uses DataModule;

procedure TTNote.Button2Click(Sender: TObject);
begin
TNote.close;
end;

end.
