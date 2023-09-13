object TQuery: TTQuery
  Left = 0
  Top = 0
  Caption = #1057#1052
  ClientHeight = 611
  ClientWidth = 1094
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clBlack
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = True
  PopupMenu = PopupMenu1
  Position = poDesktopCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 15
  object StatusBar1: TStatusBar
    Left = 0
    Top = 592
    Width = 1094
    Height = 19
    Panels = <>
    ExplicitWidth = 998
  end
  object BindNavigator1: TBindNavigator
    Left = 0
    Top = 544
    Width = 1094
    Height = 48
    DataSource = BindSourceDB1
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbDelete]
    Align = alBottom
    Flat = True
    Hints.Strings = (
      #1055#1077#1088#1074#1072#1103' '#1079#1072#1087#1080#1089#1100
      #1055#1088#1077#1076#1099#1076#1091#1097#1072#1103' '#1079#1072#1087#1080#1089#1100
      #1057#1083#1077#1076#1091#1102#1097#1072#1103' '#1079#1072#1087#1080#1089#1100
      #1055#1086#1089#1083#1077#1076#1085#1103#1103' '#1079#1072#1087#1080#1089#1100
      #1042#1089#1090#1072#1074#1080#1090#1100' '#1079#1072#1087#1080#1089#1100
      #1059#1076#1072#1083#1080#1090#1100' '#1079#1072#1087#1080#1089#1100
      #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100' '#1079#1072#1087#1080#1089#1100
      #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100' '#1089#1086#1086#1073#1097#1077#1085#1080#1077
      #1054#1090#1084#1077#1085#1080#1090#1100' '#1088#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077
      #1054#1073#1085#1086#1074#1080#1090#1100' '#1076#1072#1085#1085#1099#1077
      #1055#1088#1080#1084#1077#1085#1103#1090#1100' '#1086#1073#1085#1086#1074#1083#1077#1085#1080#1103
      #1054#1090#1084#1077#1085#1080#1090#1100' '#1086#1073#1085#1086#1074#1083#1077#1085#1080#1103)
    Orientation = orHorizontal
    TabOrder = 1
    OnClick = BindNavigator1Click
    ExplicitWidth = 998
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 70
    Width = 824
    Height = 474
    PopupMenuParams.BuildMenuOnPopup = True
    PopupMenuParams.UseIndicatorMenu = True
    Align = alClient
    AutoFitColWidths = True
    Border.Color = clBtnShadow
    Border.EdgeBorders = []
    Border.ExtendedDraw = True
    Ctl3D = True
    DataGrouping.Color = clWindow
    DataGrouping.Font.Charset = DEFAULT_CHARSET
    DataGrouping.Font.Color = clWindowText
    DataGrouping.Font.Height = -11
    DataGrouping.Font.Name = 'Microsoft Sans Serif'
    DataGrouping.Font.Style = []
    DataGrouping.ParentColor = False
    DataGrouping.ParentFont = False
    DataGrouping.ShiftFolldataGroupRow = False
    DataSource = DataModuleDB.DataSource2
    DynProps = <>
    EditActions = [geaCopyEh, geaSelectAllEh]
    EvenRowColor = clWindow
    Flat = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Microsoft Sans Serif'
    Font.Style = []
    FooterRowCount = 1
    FooterParams.Font.Charset = DEFAULT_CHARSET
    FooterParams.Font.Color = clMaroon
    FooterParams.Font.Height = -16
    FooterParams.Font.Name = 'Microsoft Sans Serif'
    FooterParams.Font.Style = [fsBold]
    FooterParams.HorzLines = True
    FooterParams.ParentFont = False
    FooterParams.RowHeight = 5
    FooterParams.RowLines = 1
    GridLineParams.ColorScheme = glcsThemedEh
    GridLineParams.DataHorzLines = True
    GridLineParams.DataVertLines = True
    GridLineParams.GridBoundaries = True
    GridLineParams.VertEmptySpaceStyle = dessNonEh
    IndicatorOptions = [gioShowRecNoEh]
    IndicatorParams.FillStyle = cfstSolidEh
    IndicatorParams.RecNoShowStep = 5
    IndicatorTitle.ShowDropDownSign = True
    IndicatorTitle.TitleButton = True
    EmptyDataInfo.Text = ',#.00'
    OddRowColor = 16772332
    Options = [dgEditing, dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
    OptionsEh = [dghFixed3D, dghResizeWholeRightPart, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghTraceColSizing, dghIncSearch, dghPreferIncSearch, dghRowHighlight, dghDblClickOptimizeColWidth, dghDialogFind, dghShowRecNo, dghColumnResize, dghColumnMove, dghHotTrack]
    ParentCtl3D = False
    ParentFont = False
    ParentShowHint = False
    PopupMenu = PopupMenu1
    RowDetailPanel.BevelEdges = []
    RowDetailPanel.BorderStyle = bsNone
    RowHeight = 2
    RowLines = 1
    RowSizingAllowed = True
    ShowHint = True
    EditButtonsShowOptions = [sebShowOnlyForCurCellEh, sebShowOnlyForCurRowEh, sebShowOnlyWhenGridActiveEh, sebShowOnlyWhenDataEditingEh]
    SortLocal = True
    STFilter.FilterButtonDrawTime = fbdtWhenCellHotEh
    STFilter.Font.Charset = DEFAULT_CHARSET
    STFilter.Font.Color = clWindowText
    STFilter.Font.Height = -13
    STFilter.Font.Name = 'Microsoft Sans Serif'
    STFilter.Font.Style = []
    STFilter.InstantApply = True
    STFilter.Local = True
    STFilter.ParentFont = False
    STFilter.Visible = True
    SumList.Active = True
    SumList.VirtualRecords = True
    TabOrder = 2
    TitleParams.FillStyle = cfstGradientEh
    TitleParams.Font.Charset = DEFAULT_CHARSET
    TitleParams.Font.Color = clWindowText
    TitleParams.Font.Height = -16
    TitleParams.Font.Name = 'Microsoft Sans Serif'
    TitleParams.Font.Style = []
    TitleParams.MultiTitle = True
    TitleParams.ParentFont = False
    TitleParams.SecondColor = 16382457
    TitleParams.SortMarkerStyle = smstFrameEh
    TitleParams.VTitleMargin = 5
    Columns = <
      item
        Alignment = taCenter
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'Kod'
        Footers = <>
        Visible = False
      end
      item
        Alignment = taCenter
        AutoDropDown = True
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'Number'
        Footers = <>
        Width = 69
      end
      item
        Alignment = taCenter
        AutoDropDown = True
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'KodFIO'
        Footers = <>
        Width = 89
      end
      item
        AutoDropDown = True
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'FioSel'
        Footers = <>
        Width = 329
      end
      item
        AutoDropDown = True
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'Data'
        Footers = <>
        Width = 215
      end
      item
        Alignment = taRightJustify
        AutoDropDown = True
        CellButtons = <>
        DisplayFormat = ',#0.##'
        DynProps = <>
        EditButtons = <>
        FieldName = 'JackPot'
        Footer.DisplayFormat = ',#0.##'
        Footer.Font.Charset = DEFAULT_CHARSET
        Footer.Font.Color = clMaroon
        Footer.Font.Height = -16
        Footer.Font.Name = 'Microsoft Sans Serif'
        Footer.Font.Style = []
        Footer.ValueType = fvtSum
        Footers = <>
        Width = 123
      end
      item
        Alignment = taCenter
        AutoDropDown = True
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'Num_ter'
        Footers = <>
      end
      item
        Alignment = taRightJustify
        AutoDropDown = True
        CellButtons = <>
        DisplayFormat = ',#0.##'
        DynProps = <>
        EditButtons = <>
        FieldName = 'Den'
        Footer.DisplayFormat = ',#0.##'
        Footer.Font.Charset = DEFAULT_CHARSET
        Footer.Font.Color = clMaroon
        Footer.Font.Height = -16
        Footer.Font.Name = 'Microsoft Sans Serif'
        Footer.Font.Style = []
        Footer.ValueType = fvtSum
        Footers = <>
      end
      item
        Alignment = taRightJustify
        AutoDropDown = True
        CellButtons = <>
        DisplayFormat = ',#0.##'
        DynProps = <>
        EditButtons = <>
        FieldName = 'P'
        Footer.DisplayFormat = ',#0.##'
        Footer.Font.Charset = DEFAULT_CHARSET
        Footer.Font.Color = clMaroon
        Footer.Font.Height = -16
        Footer.Font.Name = 'Microsoft Sans Serif'
        Footer.Font.Style = []
        Footer.ValueType = fvtSum
        Footers = <>
      end
      item
        Alignment = taRightJustify
        AutoDropDown = True
        CellButtons = <>
        DisplayFormat = ',#0.##'
        DynProps = <>
        EditButtons = <>
        FieldName = 'Payment'
        Footer.DisplayFormat = ',#0.##'
        Footer.Font.Charset = DEFAULT_CHARSET
        Footer.Font.Color = clMaroon
        Footer.Font.Height = -16
        Footer.Font.Name = 'Microsoft Sans Serif'
        Footer.Font.Style = []
        Footer.ValueType = fvtSum
        Footers = <>
      end
      item
        Alignment = taRightJustify
        AutoDropDown = True
        CellButtons = <>
        DisplayFormat = ',#0.##'
        DynProps = <>
        EditButtons = <>
        FieldName = 'Summa'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -16
        Font.Name = 'Microsoft Sans Serif'
        Font.Style = []
        Footer.DisplayFormat = ',#0.##'
        Footer.Font.Charset = DEFAULT_CHARSET
        Footer.Font.Color = clMaroon
        Footer.Font.Height = -16
        Footer.Font.Name = 'Microsoft Sans Serif'
        Footer.Font.Style = []
        Footer.ValueType = fvtSum
        Footers = <>
      end
      item
        Alignment = taCenter
        AutoDropDown = True
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'Ticket'
        Footer.DisplayFormat = ',#0.##'
        Footer.Font.Charset = DEFAULT_CHARSET
        Footer.Font.Color = clMaroon
        Footer.Font.Height = -16
        Footer.Font.Name = 'Microsoft Sans Serif'
        Footer.Font.Style = []
        Footer.ValueType = fvtSum
        Footers = <>
      end
      item
        AutoDropDown = True
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'Foto'
        Footers = <>
        Visible = False
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1094
    Height = 70
    Align = alTop
    TabOrder = 3
    ExplicitWidth = 998
    object Button1: TButton
      Left = 16
      Top = 18
      Width = 145
      Height = 33
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clBlack
      Font.Height = -16
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 167
      Top = 18
      Width = 145
      Height = 33
      Caption = #1048#1079#1084#1077#1085#1080#1090#1100
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clBlack
      Font.Height = -16
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = Button2Click
    end
    object Button3: TButton
      Left = 318
      Top = 18
      Width = 145
      Height = 33
      Caption = #1059#1076#1072#1083#1080#1090#1100
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clBlack
      Font.Height = -16
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = Button3Click
    end
    object Button4: TButton
      Left = 469
      Top = 18
      Width = 145
      Height = 33
      Caption = #1069#1082#1089#1087#1086#1088#1090' Excel'
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clBlack
      Font.Height = -16
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnClick = Button4Click
    end
    object Button5: TButton
      Left = 620
      Top = 18
      Width = 145
      Height = 33
      Caption = #1047#1072#1082#1088#1099#1090#1100
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clBlack
      Font.Height = -16
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      OnClick = Button5Click
    end
    object CheckBox1: TCheckBox
      Left = 805
      Top = 25
      Width = 97
      Height = 17
      Caption = #1060#1086#1090#1086
      Color = clBtnFace
      Ctl3D = False
      DoubleBuffered = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -16
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentCtl3D = False
      ParentDoubleBuffered = False
      ParentFont = False
      TabOrder = 5
      OnClick = CheckBox1Click
    end
  end
  object Panel3: TPanel
    Left = 824
    Top = 70
    Width = 270
    Height = 474
    Align = alRight
    TabOrder = 4
    Visible = False
    ExplicitLeft = 728
    object Image1: TImage
      Left = 0
      Top = 6
      Width = 265
      Height = 360
      Proportional = True
    end
    object Button7: TButton
      Left = 6
      Top = 369
      Width = 259
      Height = 33
      Caption = #1054#1073#1079#1086#1088
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      Visible = False
    end
    object DBMemo1: TDBMemo
      Left = 6
      Top = 322
      Width = 259
      Height = 41
      DataField = 'Foto'
      DataSource = DataModuleDB.DataSource2
      TabOrder = 1
      Visible = False
    end
  end
  object MainMenu1: TMainMenu
    Left = 96
    Top = 168
    object N1: TMenuItem
      Caption = #1047#1072#1087#1080#1089#1100
      object N2: TMenuItem
        Caption = #1044#1086#1073#1072#1074#1080#1090#1100
        ShortCut = 121
        OnClick = N2Click
      end
      object N3: TMenuItem
        Caption = #1048#1079#1084#1077#1085#1080#1090#1100
        ShortCut = 122
        OnClick = N3Click
      end
      object N4: TMenuItem
        Caption = #1059#1076#1072#1083#1080#1090#1100
        ShortCut = 123
        OnClick = N4Click
      end
    end
    object N6: TMenuItem
      Caption = #1047#1072#1082#1088#1099#1090#1100
      ShortCut = 16472
      OnClick = N6Click
    end
  end
  object DataSetTextExporterEh1: TDataSetTextExporterEh
    FieldsMap = <
      item
        DataSetFieldName = 'Kod'
        FileFieldName = 'Kod'
      end
      item
        DataSetFieldName = 'KodFIO'
        FileFieldName = 'KodFIO'
      end
      item
        DataSetFieldName = 'Data'
        FileFieldName = 'Data'
      end
      item
        DataSetFieldName = 'JackPot'
        FileFieldName = 'JackPot'
      end
      item
        DataSetFieldName = 'P'
        FileFieldName = 'P'
      end
      item
        DataSetFieldName = 'Payment'
        FileFieldName = 'Payment'
      end
      item
        DataSetFieldName = 'FIO'
        FileFieldName = 'FIO'
      end
      item
        DataSetFieldName = 'Summa'
        FileFieldName = 'Summa'
      end>
    ExportValueAsDisplayText = True
    ExportFormats.DateSeparator = '-'
    Left = 624
    Top = 152
  end
  object PopupMenu1: TPopupMenu
    Left = 552
    Top = 157
    object Excel2: TMenuItem
      Caption = #1069#1082#1089#1087#1086#1088#1090' '#1074' Excel'
      OnClick = Excel2Click
    end
    object Word4: TMenuItem
      Caption = '-'
    end
    object N11: TMenuItem
      Caption = #1042#1099#1093#1086#1076
      OnClick = N11Click
    end
  end
  object BindSourceDB1: TBindSourceDB
    DataSet = DataModuleDB.ADOTableWorks
    ScopeMappings = <>
    Left = 352
    Top = 96
  end
  object BindSourceDB2: TBindSourceDB
    ScopeMappings = <>
    Left = 616
    Top = 408
  end
end
