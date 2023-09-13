object License: TLicense
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'License'
  ClientHeight = 282
  ClientWidth = 203
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 32
    Top = 120
    Width = 128
    Height = 13
    Caption = #1042#1074#1077#1076#1080#1090#1077' '#1089#1077#1088#1080#1081#1085#1099#1081' '#1085#1086#1084#1077#1088
  end
  object Label2: TLabel
    Left = 24
    Top = 16
    Width = 147
    Height = 13
    Caption = #1051#1080#1094#1077#1085#1079#1080#1103' '#1069#1090#1086#1075#1086' '#1082#1086#1084#1087#1100#1102#1090#1077#1088#1072
  end
  object Edit1: TEdit
    Left = 24
    Top = 45
    Width = 145
    Height = 21
    TabOrder = 0
  end
  object Edit2: TEdit
    Left = 24
    Top = 157
    Width = 145
    Height = 21
    TabOrder = 1
  end
  object Button1: TButton
    Left = 64
    Top = 80
    Width = 75
    Height = 25
    Caption = #1057#1086#1079#1076#1072#1090#1100
    TabOrder = 2
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 64
    Top = 200
    Width = 75
    Height = 25
    Caption = #1057#1086#1079#1076#1072#1090#1100
    TabOrder = 3
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 64
    Top = 240
    Width = 75
    Height = 25
    Caption = #1047#1072#1082#1088#1099#1090#1100
    TabOrder = 4
    OnClick = Button3Click
  end
end
