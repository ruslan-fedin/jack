object TNote: TTNote
  Left = 0
  Top = 0
  Caption = #1047#1072#1084#1077#1090#1082#1080
  ClientHeight = 311
  ClientWidth = 678
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object DBText1: TDBText
    Left = 72
    Top = 24
    Width = 529
    Height = 17
    Alignment = taCenter
    DataField = 'FIO'
    DataSource = DataModuleDB.DataSource1
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Microsoft Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Button2: TButton
    Left = 72
    Top = 248
    Width = 537
    Height = 41
    Caption = #1047#1072#1082#1088#1099#1090#1100
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Microsoft Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    OnClick = Button2Click
  end
  object DBMemo1: TDBMemo
    Left = 72
    Top = 72
    Width = 537
    Height = 153
    DataField = 'Note'
    DataSource = DataModuleDB.DataSource1
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Microsoft Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
  end
end
