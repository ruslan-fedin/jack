object BDopen: TBDopen
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = #1054#1090#1082#1088#1099#1090#1100' '#1041#1044
  ClientHeight = 108
  ClientWidth = 476
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 16
    Top = 19
    Width = 55
    Height = 13
    Caption = #1055#1091#1090#1100' '#1082' '#1041#1044':'
  end
  object Edit1: TEdit
    Left = 77
    Top = 16
    Width = 300
    Height = 21
    TabOrder = 0
  end
  object Button1: TButton
    Left = 392
    Top = 14
    Width = 75
    Height = 25
    Caption = #1054#1073#1079#1086#1088
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 392
    Top = 64
    Width = 75
    Height = 25
    Caption = #1054#1090#1082#1088#1099#1090#1100' '#1041#1044
    TabOrder = 2
    OnClick = Button2Click
  end
  object OpenDialog1: TOpenDialog
    OnShow = OpenDialog1Show
    FileName = '*.mdb'
    Left = 16
    Top = 48
  end
end
