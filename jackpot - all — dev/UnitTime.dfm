object Time: TTime
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Time'
  ClientHeight = 491
  ClientWidth = 747
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 747
    Height = 491
    Align = alClient
    TabOrder = 0
    object Label1: TLabel
      Left = 213
      Top = 133
      Width = 3
      Height = 13
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 46
      Top = 11
      Width = 65
      Height = 13
      Caption = #1044#1072#1090#1072' '#1085#1072#1095#1072#1083#1072
    end
    object Label3: TLabel
      Left = 237
      Top = 11
      Width = 26
      Height = 13
      Caption = #1044#1085#1077#1081
    end
    object Label4: TLabel
      Left = 46
      Top = 224
      Width = 3
      Height = 13
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Edit2: TEdit
      Left = 197
      Top = 48
      Width = 121
      Height = 21
      TabOrder = 0
    end
    object Button1: TButton
      Left = 197
      Top = 93
      Width = 121
      Height = 25
      Caption = #1056#1072#1089#1095#1077#1090' '#1076#1072#1090#1099
      TabOrder = 1
      OnClick = Button1Click
    end
    object MonthCalendar1: TMonthCalendar
      Left = 0
      Top = 48
      Width = 191
      Height = 160
      Date = 45176.000000000000000000
      TabOrder = 2
      OnClick = MonthCalendar1Click
    end
    object Button2: TButton
      Left = 197
      Top = 152
      Width = 121
      Height = 25
      Caption = #1047#1072#1087#1080#1089#1072#1090#1100' '#1074' '#1073#1072#1079#1091
      TabOrder = 3
      OnClick = Button2Click
    end
    object CheckBox1: TCheckBox
      Left = 221
      Top = 191
      Width = 97
      Height = 17
      Caption = 'Open table'
      TabOrder = 4
      OnClick = CheckBox1Click
    end
    object Panel2: TPanel
      Left = 1
      Top = 320
      Width = 745
      Height = 170
      Align = alBottom
      TabOrder = 5
      Visible = False
      object DBNavigator1: TDBNavigator
        Left = 1
        Top = 126
        Width = 743
        Height = 43
        Align = alBottom
        TabOrder = 0
      end
      object DBGridEh1: TDBGridEh
        Left = 1
        Top = 1
        Width = 743
        Height = 120
        Align = alTop
        DataSource = DataModuleDB.DataSourceTime
        DynProps = <>
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Microsoft Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        TitleParams.Font.Charset = RUSSIAN_CHARSET
        TitleParams.Font.Color = clWindowText
        TitleParams.Font.Height = -16
        TitleParams.Font.Name = 'Microsoft Sans Serif'
        TitleParams.Font.Style = [fsBold]
        TitleParams.ParentFont = False
        Columns = <
          item
            Alignment = taCenter
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'id'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Tahoma'
            Font.Style = []
            Footers = <>
            Title.Alignment = taCenter
            Title.Font.Charset = RUSSIAN_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -16
            Title.Font.Name = 'Microsoft Sans Serif'
            Title.Font.Style = []
          end
          item
            Alignment = taCenter
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'Data_int'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Tahoma'
            Font.Style = []
            Footers = <>
            Title.Alignment = taCenter
            Title.Font.Charset = RUSSIAN_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -16
            Title.Font.Name = 'Microsoft Sans Serif'
            Title.Font.Style = []
          end
          item
            Alignment = taCenter
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'Data_out'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Tahoma'
            Font.Style = []
            Footers = <>
            Title.Alignment = taCenter
            Title.Font.Charset = RUSSIAN_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -16
            Title.Font.Name = 'Microsoft Sans Serif'
            Title.Font.Style = []
          end
          item
            Alignment = taCenter
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'day'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Tahoma'
            Font.Style = []
            Footers = <>
            Title.Alignment = taCenter
            Title.Font.Charset = RUSSIAN_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -16
            Title.Font.Name = 'Microsoft Sans Serif'
            Title.Font.Style = []
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'note'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Tahoma'
            Font.Style = []
            Footers = <>
            Title.Alignment = taCenter
            Title.Font.Charset = RUSSIAN_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -16
            Title.Font.Name = 'Microsoft Sans Serif'
            Title.Font.Style = []
          end>
        object RowDetailData: TRowDetailPanelControlEh
        end
      end
    end
    object Button3: TButton
      Left = 197
      Top = 216
      Width = 121
      Height = 25
      Caption = #1047#1072#1082#1088#1099#1090#1100
      TabOrder = 6
      OnClick = Button3Click
    end
  end
end
