object Password: TPassword
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Password'
  ClientHeight = 452
  ClientWidth = 819
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
  object DBNavigator1: TDBNavigator
    Left = 0
    Top = 411
    Width = 819
    Height = 41
    DataSource = DataModuleDB.DataSourcelogin
    Align = alBottom
    TabOrder = 0
    ExplicitLeft = 8
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 193
    Width = 819
    Height = 218
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
    DataSource = DataModuleDB.DataSourcelogin
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
    FooterParams.Font.Height = -16
    FooterParams.Font.Name = 'Microsoft Sans Serif'
    FooterParams.Font.Style = []
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
    TabOrder = 1
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
        FieldName = 'kod'
        Footers = <>
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'login'
        Footers = <>
        Width = 100
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'password'
        Footers = <>
        Width = 358
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'lastname'
        Footers = <>
        Width = 130
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'firstname'
        Footers = <>
        Width = 155
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'rol'
        Footers = <>
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'data_in'
        Footers = <>
        Width = 185
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 819
    Height = 41
    Align = alTop
    TabOrder = 2
    object Button1: TButton
      Left = 671
      Top = 10
      Width = 137
      Height = 25
      Caption = #1059#1076#1072#1083#1080#1090#1100' Log'
      TabOrder = 0
      OnClick = Button1Click
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 41
    Width = 819
    Height = 152
    Align = alTop
    TabOrder = 3
    object DBText1: TDBText
      Left = 193
      Top = 12
      Width = 65
      Height = 17
      DataField = 'login'
      DataSource = DataModuleDB.DataSourcelogin
    end
    object DBText2: TDBText
      Left = 16
      Top = 12
      Width = 65
      Height = 17
      DataField = 'firstname'
      DataSource = DataModuleDB.DataSourcelogin
    end
    object DBText3: TDBText
      Left = 95
      Top = 12
      Width = 65
      Height = 17
      DataField = 'lastname'
      DataSource = DataModuleDB.DataSourcelogin
    end
    object Label1: TLabel
      Left = 304
      Top = 6
      Width = 82
      Height = 13
      Caption = #1042#1074#1077#1076#1080#1090#1077' '#1087#1072#1088#1086#1083#1100
    end
    object Label2: TLabel
      Left = 528
      Top = 6
      Width = 55
      Height = 13
      Caption = #1055#1086#1074#1090#1086#1088#1080#1090#1077
    end
    object Label3: TLabel
      Left = 320
      Top = 56
      Width = 95
      Height = 13
      Caption = #1057#1083#1086#1078#1085#1086#1089#1090#1100' '#1087#1072#1088#1086#1083#1103
    end
    object Edit2: TEdit
      Left = 457
      Top = 23
      Width = 177
      Height = 21
      PasswordChar = '*'
      TabOrder = 0
    end
    object Button2: TButton
      Left = 671
      Top = 21
      Width = 137
      Height = 25
      Caption = #1059#1089#1090#1072#1085#1086#1074#1080#1090#1100' '#1087#1072#1088#1086#1083#1100
      TabOrder = 1
      OnClick = Button2Click
    end
    object Edit1: TEdit
      Left = 264
      Top = 23
      Width = 177
      Height = 21
      PasswordChar = '*'
      TabOrder = 2
    end
    object Edit3: TEdit
      Left = 457
      Top = 74
      Width = 177
      Height = 21
      TabOrder = 3
    end
    object Button3: TButton
      Left = 671
      Top = 72
      Width = 137
      Height = 25
      Caption = #1057#1075#1077#1085#1077#1088#1080#1088#1086#1074#1072#1090#1100' '#1087#1072#1088#1086#1083#1100
      TabOrder = 4
      OnClick = Button3Click
    end
    object Edit4: TEdit
      Left = 264
      Top = 74
      Width = 177
      Height = 21
      Alignment = taCenter
      TabOrder = 5
    end
    object Button4: TButton
      Left = 671
      Top = 112
      Width = 137
      Height = 25
      Caption = #1047#1072#1087#1086#1083#1085#1080#1090#1100
      TabOrder = 6
      Visible = False
      OnClick = Button4Click
    end
  end
end
