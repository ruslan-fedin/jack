object TClient: TTClient
  Left = 0
  Top = 0
  Caption = #1050#1083#1080#1077#1085#1090#1099
  ClientHeight = 573
  ClientWidth = 1130
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = True
  Position = poDesktopCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 15
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1130
    Height = 70
    Align = alTop
    TabOrder = 0
    object Button1: TButton
      Left = 8
      Top = 17
      Width = 190
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
      Left = 204
      Top = 17
      Width = 190
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
      Left = 400
      Top = 17
      Width = 190
      Height = 33
      Caption = #1059#1076#1072#1083#1080#1090#1100
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clBlack
      Font.Height = -16
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object Button4: TButton
      Left = 763
      Top = 17
      Width = 161
      Height = 33
      Caption = #1069#1082#1089#1087#1086#1088#1090' Excel'
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clBlack
      Font.Height = -16
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
    end
    object Button5: TButton
      Left = 930
      Top = 17
      Width = 190
      Height = 33
      Caption = #1047#1072#1082#1088#1099#1090#1100
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clBlack
      Font.Height = -16
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
      OnClick = Button5Click
    end
    object Button7: TButton
      Left = 596
      Top = 17
      Width = 161
      Height = 33
      Caption = #1047#1072#1084#1077#1090#1082#1080
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clBlack
      Font.Height = -16
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnClick = Button7Click
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 70
    Width = 860
    Height = 455
    PopupMenuParams.BuildMenuOnPopup = True
    PopupMenuParams.UseIndicatorMenu = True
    Align = alClient
    AutoFitColWidths = True
    Border.Color = clBtnShadow
    Border.EdgeBorders = []
    Border.ExtendedDraw = True
    DataGrouping.Color = clWindow
    DataGrouping.Font.Charset = DEFAULT_CHARSET
    DataGrouping.Font.Color = clWindowText
    DataGrouping.Font.Height = -11
    DataGrouping.Font.Name = 'Microsoft Sans Serif'
    DataGrouping.Font.Style = []
    DataGrouping.ParentColor = False
    DataGrouping.ParentFont = False
    DataGrouping.ShiftFolldataGroupRow = False
    DataSource = DataModuleDB.DataSource1
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
    FooterParams.Font.Color = clWindowText
    FooterParams.Font.Height = -13
    FooterParams.Font.Name = 'Microsoft Sans Serif'
    FooterParams.Font.Style = [fsBold]
    FooterParams.ParentFont = False
    FooterParams.RowHeight = 5
    FooterParams.RowLines = 1
    GridLineParams.ColorScheme = glcsThemedEh
    GridLineParams.GridBoundaries = True
    IndicatorOptions = [gioShowRecNoEh]
    IndicatorParams.FillStyle = cfstSolidEh
    IndicatorParams.RecNoShowStep = 5
    IndicatorTitle.ShowDropDownSign = True
    IndicatorTitle.TitleButton = True
    OddRowColor = 16772332
    Options = [dgEditing, dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
    OptionsEh = [dghFixed3D, dghResizeWholeRightPart, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghTraceColSizing, dghIncSearch, dghPreferIncSearch, dghRowHighlight, dghDblClickOptimizeColWidth, dghDialogFind, dghShowRecNo, dghColumnResize, dghColumnMove, dghHotTrack, dghExtendVertLines]
    ParentFont = False
    ParentShowHint = False
    PopupMenu = PopupMenu1
    RowDetailPanel.BevelEdges = []
    RowDetailPanel.BorderStyle = bsNone
    RowHeight = 22
    RowSizingAllowed = True
    SearchPanel.FilterEnabled = False
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
    TabOrder = 1
    TitleParams.Font.Charset = DEFAULT_CHARSET
    TitleParams.Font.Color = clWindowText
    TitleParams.Font.Height = -16
    TitleParams.Font.Name = 'Microsoft Sans Serif'
    TitleParams.Font.Style = []
    TitleParams.MultiTitle = True
    TitleParams.ParentFont = False
    TitleParams.SecondColor = 16382457
    TitleParams.SortMarkerStyle = smstDefaultEh
    TitleParams.VTitleMargin = 5
    OnColumnMoved = DBGridEh1ColumnMoved
    Columns = <
      item
        Alignment = taCenter
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'KodClient'
        Footers = <>
        Title.TitleButton = True
        Width = 100
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'FIO'
        Footers = <>
        Title.TitleButton = True
        Width = 350
      end
      item
        Alignment = taCenter
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        EditMask = '!+7\(999\) 000-00-00;1;_'
        FieldName = 'Telephone'
        Footers = <>
        Title.TitleButton = True
        Width = 150
      end
      item
        Alignment = taCenter
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'Pasport'
        Footers = <>
        Title.TitleButton = True
        Width = 150
      end
      item
        Alignment = taCenter
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'Date'
        Footers = <>
        Title.TitleButton = True
        Width = 122
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'Ovd'
        Footers = <>
        Width = 658
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'Note'
        Footers = <>
        Title.TitleButton = True
        Visible = False
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'Foto'
        Footers = <>
        Title.TitleButton = True
        Visible = False
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object Panel2: TPanel
    Left = 860
    Top = 70
    Width = 270
    Height = 455
    Align = alRight
    TabOrder = 2
    object Image1: TImage
      Left = 0
      Top = 6
      Width = 265
      Height = 267
      Proportional = True
    end
    object DBMemo1: TDBMemo
      Left = 6
      Top = 322
      Width = 259
      Height = 41
      DataField = 'Foto'
      DataSource = DataModuleDB.DataSource1
      TabOrder = 0
    end
    object Button6: TButton
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
      TabOrder = 1
      OnClick = Button6Click
    end
  end
  object DBNavigator1: TDBNavigator
    Left = 0
    Top = 525
    Width = 1130
    Height = 48
    DataSource = DataModuleDB.DataSource1
    Align = alBottom
    TabOrder = 3
  end
  object BindSourceDB2: TBindSourceDB
    ScopeMappings = <>
    Left = 240
    Top = 424
  end
  object MainMenu1: TMainMenu
    Left = 376
    Top = 424
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
  object PopupMenu1: TPopupMenu
    Left = 296
    Top = 429
    object Excel2: TMenuItem
      Caption = #1069#1082#1089#1087#1086#1088#1090' '#1074' Excel'
    end
    object Word4: TMenuItem
      Caption = '-'
    end
    object N11: TMenuItem
      Caption = #1042#1099#1093#1086#1076
    end
  end
  object OpenPictureDialog1: TOpenPictureDialog
    Left = 832
    Top = 446
  end
  object BindSourceDB1: TBindSourceDB
    DataSource = DataModuleDB.DataSource2
    ScopeMappings = <>
    Left = 560
    Top = 304
  end
end
