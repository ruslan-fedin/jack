object FWorks: TFWorks
  Left = 0
  Top = 0
  Caption = 'FWorks'
  ClientHeight = 557
  ClientWidth = 819
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = True
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 15
  object Panel2: TPanel
    Left = 0
    Top = 29
    Width = 819
    Height = 24
    Align = alTop
    AutoSize = True
    TabOrder = 0
    ExplicitTop = 41
    object Label1: TLabel
      Left = 1
      Top = 1
      Width = 62
      Height = 15
      Align = alLeft
      Alignment = taRightJustify
      BiDiMode = bdLeftToRight
      Caption = '    '#1055#1086#1080#1089#1082'     '
      ParentBiDiMode = False
    end
    object Edit1: TEdit
      Left = 63
      Top = 1
      Width = 755
      Height = 22
      Align = alClient
      TabOrder = 0
      ExplicitHeight = 23
    end
  end
  object DBNavigator1: TDBNavigator
    AlignWithMargins = True
    Left = 3
    Top = 478
    Width = 813
    Height = 57
    DataSource = DataModuleDB.DataSourceWorks
    Align = alBottom
    TabOrder = 1
    ExplicitLeft = 8
    ExplicitTop = 412
  end
  object DBGridEh1: TDBGridEh
    AlignWithMargins = True
    Left = 3
    Top = 56
    Width = 813
    Height = 416
    Align = alClient
    ColumnDefValues.Title.Alignment = taCenter
    ColumnDefValues.Title.TitleButton = True
    DataSource = DataModuleDB.DataSourceWorks
    DynProps = <>
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Segoe UI'
    Font.Style = []
    FooterRowCount = 1
    FooterParams.Font.Charset = RUSSIAN_CHARSET
    FooterParams.Font.Color = clWindowText
    FooterParams.Font.Height = -13
    FooterParams.Font.Name = 'Segoe UI Semibold'
    FooterParams.Font.Style = [fsBold]
    FooterParams.ParentFont = False
    OddRowColor = clWindow
    OptionsEh = [dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghEnterAsTab, dghDialogFind, dghColumnResize, dghColumnMove, dghExtendVertLines]
    ParentFont = False
    STFilter.InstantApply = False
    STFilter.Visible = True
    SumList.Active = True
    TabOrder = 2
    TitleParams.BorderInFillStyle = True
    TitleParams.Color = clMoneyGreen
    TitleParams.FillStyle = cfstThemedEh
    TitleParams.Font.Charset = RUSSIAN_CHARSET
    TitleParams.Font.Color = clBlack
    TitleParams.Font.Height = -13
    TitleParams.Font.Name = 'Segoe UI Semibold'
    TitleParams.Font.Style = [fsBold]
    TitleParams.HorzLineColor = clSilver
    TitleParams.ParentFont = False
    OnApplyFilter = DBGridEh1ApplyFilter
    Columns = <
      item
        Alignment = taCenter
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'Kod'
        Footers = <>
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'FioSel'
        Footers = <>
        Width = 191
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'KodFIO'
        Footers = <>
      end
      item
        Alignment = taCenter
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'Data'
        Footers = <>
      end
      item
        Alignment = taCenter
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'JackPot'
        Footer.ValueType = fvtSum
        Footers = <>
      end
      item
        Alignment = taCenter
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'P'
        Footer.ValueType = fvtSum
        Footers = <>
      end
      item
        Alignment = taCenter
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'Payment'
        Footer.ValueType = fvtSum
        Footers = <>
      end
      item
        Alignment = taCenter
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'Summa'
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        Footer.ValueType = fvtSum
        Footers = <>
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 538
    Width = 819
    Height = 19
    Panels = <>
    ExplicitLeft = 416
    ExplicitTop = 296
    ExplicitWidth = 0
  end
  object ToolBar1: TToolBar
    Left = 0
    Top = 0
    Width = 819
    Height = 29
    Caption = 'ToolBar1'
    TabOrder = 4
    ExplicitLeft = 8
  end
  object MainMenu1: TMainMenu
    Left = 632
    Top = 8
    object N1: TMenuItem
      Caption = #1043#1083#1072#1074#1085#1072#1103
      object N3: TMenuItem
        Caption = #1044#1086#1073#1072#1074#1080#1090#1100
      end
      object N4: TMenuItem
        Caption = #1048#1079#1084#1077#1085#1080#1090#1100
      end
      object N5: TMenuItem
        Caption = #1059#1076#1072#1083#1080#1090#1100
      end
      object N6: TMenuItem
        Caption = '-'
      end
      object N7: TMenuItem
        Caption = #1047#1072#1082#1088#1099#1090#1100
        OnClick = N7Click
      end
    end
    object N2: TMenuItem
      Caption = #1047#1072#1082#1088#1099#1090#1100
    end
  end
end
