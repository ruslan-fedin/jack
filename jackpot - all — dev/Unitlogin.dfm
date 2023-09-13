object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 471
  ClientWidth = 606
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 88
    Top = 40
    Width = 44
    Height = 19
    Caption = 'Login'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 88
    Top = 96
    Width = 88
    Height = 19
    Caption = 'Passoword'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object DBGridEh1: TDBGridEh
    Left = 8
    Top = 304
    Width = 590
    Height = 159
    DynProps = <>
    TabOrder = 0
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object Edit1: TEdit
    Left = 216
    Top = 32
    Width = 177
    Height = 33
    TabOrder = 1
  end
  object Edit2: TEdit
    Left = 216
    Top = 88
    Width = 177
    Height = 33
    TabOrder = 2
  end
  object Button1: TButton
    Left = 224
    Top = 168
    Width = 169
    Height = 33
    Caption = 'Button1'
    TabOrder = 3
  end
end
