object Settings: TSettings
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = #1053#1072#1089#1090#1088#1086#1081#1082#1080
  ClientHeight = 463
  ClientWidth = 323
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Button3: TButton
    Left = 8
    Top = 22
    Width = 305
    Height = 57
    Caption = #1055#1091#1090#1100' '#1082' '#1041#1044
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Microsoft Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    OnClick = Button3Click
  end
  object BtnPass: TButton
    Left = 8
    Top = 96
    Width = 305
    Height = 57
    Caption = #1055#1072#1088#1086#1083#1080
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Microsoft Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    OnClick = BtnPassClick
  end
  object BtnTime: TButton
    Left = 8
    Top = 168
    Width = 305
    Height = 57
    Caption = 'Time'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Microsoft Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    OnClick = BtnTimeClick
  end
  object BtnCloseSettings: TButton
    Left = 10
    Top = 384
    Width = 305
    Height = 57
    Caption = #1047#1072#1082#1088#1099#1090#1100
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Microsoft Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    OnClick = BtnCloseSettingsClick
  end
  object BtnLic: TButton
    Left = 8
    Top = 240
    Width = 307
    Height = 49
    Caption = #1051#1080#1080#1094#1077#1085#1079#1080#1080
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Microsoft Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    OnClick = BtnLicClick
  end
end
