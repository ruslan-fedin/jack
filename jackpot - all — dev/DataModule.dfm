object DataModuleDB: TDataModuleDB
  OldCreateOrder = True
  Height = 502
  Width = 435
  object ADOConnectionJackPot: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;User ID=Admin;Data Source=\\Mac' +
      '\Home\Desktop\jackpot - all '#8212' dev\Win32\Debug\DB\db.mdb;Mode=Sha' +
      're Deny None;Persist Security Info=False;Jet OLEDB:System databa' +
      'se="";Jet OLEDB:Registry Path="";Jet OLEDB:Database Password=dbj' +
      '7Psec;Jet OLEDB:Engine Type=5;Jet OLEDB:Database Locking Mode=1;' +
      'Jet OLEDB:Global Partial Bulk Ops=2;Jet OLEDB:Global Bulk Transa' +
      'ctions=1;Jet OLEDB:New Database Password="";Jet OLEDB:Create Sys' +
      'tem Database=False;Jet OLEDB:Encrypt Database=False;Jet OLEDB:Do' +
      'n'#39't Copy Locale on Compact=False;Jet OLEDB:Compact Without Repli' +
      'ca Repair=False;Jet OLEDB:SFP=False'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 216
    Top = 24
  end
  object ADOTableClients: TADOTable
    Active = True
    AutoCalcFields = False
    Connection = ADOConnectionJackPot
    CursorType = ctStatic
    AfterScroll = ADOTableClientsAfterScroll
    EnableBCD = False
    TableName = 'Clients'
    Left = 136
    Top = 120
    object ADOTableClientsKodClient: TAutoIncField
      DisplayLabel = #1050#1086#1076' '#1082#1083#1080#1077#1085#1090#1072
      FieldName = 'KodClient'
      ReadOnly = True
    end
    object ADOTableClientsFIO: TWideStringField
      DisplayLabel = #1060#1048#1054
      FieldName = 'FIO'
      Size = 255
    end
    object ADOTableClientsTelephone: TWideStringField
      DisplayLabel = #1058#1077#1083#1077#1092#1086#1085
      DisplayWidth = 15
      FieldName = 'Telephone'
      Size = 255
    end
    object ADOTableClientsPasport: TWideStringField
      DisplayLabel = #1055#1072#1089#1087#1086#1088#1090
      DisplayWidth = 15
      FieldName = 'Pasport'
      Size = 255
    end
    object ADOTableClientsDate: TDateTimeField
      DisplayLabel = #1044#1072#1090#1072
      FieldName = 'Date'
    end
    object ADOTableClientsOvd: TWideStringField
      DisplayLabel = #1050#1077#1084' '#1074#1099#1076#1072#1085
      FieldName = 'Ovd'
      Size = 255
    end
    object ADOTableClientsNote: TWideStringField
      DisplayLabel = #1047#1072#1084#1077#1090#1082#1080
      FieldName = 'Note'
      Size = 255
    end
    object ADOTableClientsFoto: TWideStringField
      DisplayLabel = #1060#1086#1090#1086
      FieldName = 'Foto'
      Size = 255
    end
  end
  object DataSource2: TDataSource
    DataSet = ADOQueryWorks
    Left = 64
    Top = 176
  end
  object DataSource1: TDataSource
    DataSet = ADOQueryClients
    Left = 64
    Top = 120
  end
  object ADOTableSotr: TADOTable
    Active = True
    Connection = ADOConnectionJackPot
    CursorType = ctStatic
    TableName = 'Sotr'
    Left = 144
    Top = 296
    object ADOTableSotrKod: TAutoIncField
      DisplayLabel = #1050#1086#1076
      FieldName = 'Kod'
      ReadOnly = True
    end
    object ADOTableSotrFio: TWideStringField
      DisplayLabel = #1060#1048#1054
      FieldName = 'Fio'
      Size = 255
    end
    object ADOTableSotrLogin: TWideStringField
      FieldName = 'Login'
      Size = 255
    end
    object ADOTableSotrPass: TWideStringField
      DisplayLabel = 'Password'
      FieldName = 'Pass'
      ReadOnly = True
      Size = 255
    end
    object ADOTableSotrData: TDateTimeField
      DisplayLabel = #1044#1072#1090#1072' '#1042#1093#1086#1076#1072'/'#1042#1099#1093#1086#1076#1072
      FieldName = 'Data'
    end
    object ADOTableSotrRol: TWideStringField
      DisplayLabel = #1056#1086#1083#1100
      FieldName = 'Rol'
      Size = 255
    end
  end
  object DataSource4: TDataSource
    DataSet = ADOTableSotr
    Left = 56
    Top = 296
  end
  object DataSource3: TDataSource
    DataSet = ADOTableOtc
    Left = 56
    Top = 232
  end
  object ADOTableOtc: TADOTable
    Active = True
    Connection = ADOConnectionJackPot
    CursorType = ctStatic
    AfterScroll = ADOTableOtcAfterScroll
    OnCalcFields = ADOTableOtcCalcFields
    TableName = 'Otc'
    Left = 136
    Top = 232
    object ADOTableOtcKod: TAutoIncField
      DisplayLabel = #1050#1086#1076
      DisplayWidth = 10
      FieldName = 'Kod'
      ReadOnly = True
    end
    object ADOTableOtcKodClients: TIntegerField
      DisplayLabel = #1050#1086#1076' '#1050#1083#1080#1077#1085#1090#1072
      DisplayWidth = 10
      FieldName = 'KodClients'
    end
    object ADOTableOtcStringField: TStringField
      DisplayLabel = #1060#1048#1054
      DisplayWidth = 15
      FieldKind = fkLookup
      FieldName = 'FioSel'
      LookupDataSet = ADOTableClients
      LookupKeyFields = 'KodClient'
      LookupResultField = 'FIO'
      KeyFields = 'KodClients'
      Size = 80
      Lookup = True
    end
    object ADOTableOtcData: TDateTimeField
      DisplayLabel = #1044#1072#1090#1072
      DisplayWidth = 12
      FieldName = 'Data'
    end
    object ADOTableOtcIn: TFloatField
      FieldName = 'In'
    end
    object ADOTableOtcOut: TFloatField
      FieldName = 'Out'
    end
    object ADOTableOtcRez: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Rez'
      DisplayFormat = ',#0.##'
      currency = True
      Calculated = True
    end
    object ADOTableOtcFioSel: TStringField
      DisplayLabel = #1060#1086#1090#1086
      DisplayWidth = 66
      FieldKind = fkLookup
      FieldName = 'Foto'
      LookupDataSet = ADOTableClients
      LookupKeyFields = 'KodClient'
      LookupResultField = 'Foto'
      KeyFields = 'KodClients'
      Size = 80
      Lookup = True
    end
  end
  object ADOQuerylogin: TADOQuery
    Active = True
    Connection = ADOConnectionJackPot
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT Users.*'
      'FROM [Users];')
    Left = 344
    Top = 104
    object ADOQueryloginkod: TAutoIncField
      DisplayLabel = #1050#1086#1076
      DisplayWidth = 7
      FieldName = 'kod'
      ReadOnly = True
    end
    object ADOQueryloginlogin: TWideStringField
      DisplayWidth = 14
      FieldName = 'login'
      Size = 255
    end
    object ADOQueryloginpassword: TWideStringField
      FieldName = 'password'
      Size = 255
    end
    object ADOQueryloginfirstname: TWideStringField
      DisplayLabel = #1048#1084#1103
      DisplayWidth = 11
      FieldName = 'firstname'
      Size = 255
    end
    object ADOQueryloginlastname: TWideStringField
      DisplayLabel = #1060#1072#1084#1080#1083#1080#1103
      DisplayWidth = 12
      FieldName = 'lastname'
      Size = 255
    end
    object ADOQueryloginrole: TWideStringField
      DisplayLabel = #1056#1086#1083#1100
      FieldName = 'rol'
      Size = 255
    end
    object ADOQuerylogindata_in: TDateTimeField
      DisplayLabel = #1044#1072#1090#1072' '#1042#1093#1086#1076#1072
      DisplayWidth = 18
      FieldName = 'data_in'
    end
  end
  object DataSourcelogin: TDataSource
    DataSet = ADOQuerylogin
    Left = 344
    Top = 48
  end
  object DataSourceTime: TDataSource
    DataSet = ADOQueryTime
    Left = 352
    Top = 176
  end
  object ADOQueryTime: TADOQuery
    Active = True
    Connection = ADOConnectionJackPot
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from Dataprog;')
    Left = 360
    Top = 240
    object ADOQueryTimeid: TIntegerField
      DisplayWidth = 10
      FieldName = 'id'
    end
    object ADOQueryTimeData_int: TDateTimeField
      DisplayWidth = 18
      FieldName = 'Data_int'
    end
    object ADOQueryTimeData_out: TDateTimeField
      DisplayWidth = 18
      FieldName = 'Data_out'
    end
    object ADOQueryTimeday: TIntegerField
      FieldName = 'day'
    end
    object ADOQueryTimenote: TWideStringField
      FieldName = 'note'
      Size = 255
    end
  end
  object ADOQueryWorks: TADOQuery
    Active = True
    Connection = ADOConnectionJackPot
    CursorType = ctStatic
    AfterScroll = ADOQueryWorksAfterScroll
    OnCalcFields = ADOQueryWorksCalcFields
    Parameters = <>
    SQL.Strings = (
      'select * from works')
    Left = 208
    Top = 192
    object ADOQueryWorksKod: TAutoIncField
      DisplayLabel = 'id'
      FieldName = 'Kod'
      ReadOnly = True
    end
    object ADOQueryWorksNumber: TIntegerField
      DisplayLabel = #1053#1086#1084#1077#1088
      FieldKind = fkCalculated
      FieldName = 'Number'
      Calculated = True
    end
    object ADOQueryWorksFioSel: TStringField
      DisplayLabel = #1060#1048#1054
      FieldKind = fkLookup
      FieldName = 'FioSel'
      LookupDataSet = ADOTableClients
      LookupKeyFields = 'KodClient'
      LookupResultField = 'FIO'
      KeyFields = 'KodFIO'
      Size = 80
      Lookup = True
    end
    object ADOQueryWorksKodFIO: TIntegerField
      Alignment = taCenter
      DisplayLabel = #1050#1086#1076' '#1050#1083#1080#1077#1085#1090#1072
      FieldName = 'KodFIO'
    end
    object ADOQueryWorksData: TDateTimeField
      Alignment = taCenter
      DisplayLabel = #1044#1072#1090#1072
      FieldName = 'Data'
    end
    object ADOQueryWorksJackPot: TFloatField
      Alignment = taCenter
      FieldName = 'JackPot'
      DisplayFormat = ',#0.##'
      EditFormat = ',#0.##'
    end
    object ADOQueryWorksNum_ter: TIntegerField
      Alignment = taCenter
      DisplayLabel = #1053#1086#1084#1077#1088' '#1090#1077#1088#1084#1080#1085#1072#1083#1072
      FieldName = 'Num_ter'
    end
    object ADOQueryWorksDen: TFloatField
      Alignment = taCenter
      FieldName = 'Den'
      DisplayFormat = ',#0.##'
      EditFormat = ',#0.##'
    end
    object ADOQueryWorksP: TFloatField
      Alignment = taCenter
      FieldName = 'P'
      DisplayFormat = ',#0.##'
      EditFormat = ',#0.##'
    end
    object ADOQueryWorksPayment: TFloatField
      Alignment = taCenter
      DisplayLabel = #1042#1099#1087#1083#1072#1090#1072
      FieldName = 'Payment'
      DisplayFormat = ',#0.##'
      EditFormat = ',#0.##'
    end
    object ADOQueryWorksSumma: TFloatField
      Alignment = taCenter
      DisplayLabel = #1057#1091#1084#1084#1072
      FieldKind = fkCalculated
      FieldName = 'Summa'
      DisplayFormat = ',#0.##'
      currency = True
      Calculated = True
    end
    object ADOQueryWorksFoto: TStringField
      DisplayLabel = #1060#1086#1090#1086
      DisplayWidth = 66
      FieldKind = fkLookup
      FieldName = 'Foto'
      LookupDataSet = ADOTableClients
      LookupKeyFields = 'KodClient'
      LookupResultField = 'Foto'
      KeyFields = 'KodFIO'
      Visible = False
      Size = 80
      Lookup = True
    end
    object ADOQueryWorksTicket: TIntegerField
      Alignment = taCenter
      DisplayLabel = #1041#1080#1083#1077#1090#1099
      FieldName = 'Ticket'
    end
  end
  object ADOQueryOtc: TADOQuery
    Active = True
    Connection = ADOConnectionJackPot
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from otc')
    Left = 264
    Top = 344
    object ADOQueryOtcKod: TAutoIncField
      DisplayLabel = #1050#1086#1076
      DisplayWidth = 10
      FieldName = 'Kod'
      ReadOnly = True
    end
    object ADOQueryOtcKodClients: TIntegerField
      DisplayLabel = #1050#1086#1076' '#1050#1083#1080#1077#1085#1090#1072
      DisplayWidth = 10
      FieldName = 'KodClients'
    end
    object ADOQueryOtcFioSel: TStringField
      DisplayLabel = #1060#1048#1054
      DisplayWidth = 15
      FieldKind = fkLookup
      FieldName = 'FioSel'
      LookupDataSet = ADOTableClients
      LookupKeyFields = 'KodClient'
      LookupResultField = 'FIO'
      KeyFields = 'KodClients'
      Size = 80
      Lookup = True
    end
    object ADOQueryOtcData: TDateTimeField
      DisplayLabel = #1044#1072#1090#1072
      DisplayWidth = 12
      FieldName = 'Data'
    end
    object ADOQueryOtcIn: TFloatField
      FieldName = 'In'
    end
    object ADOQueryOtcOut: TFloatField
      FieldName = 'Out'
    end
    object ADOQueryOtcRez: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Rez'
      DisplayFormat = ',#0.##'
      currency = True
      Calculated = True
    end
    object ADOQueryOtcFoto: TStringField
      DisplayLabel = #1060#1086#1090#1086
      DisplayWidth = 66
      FieldKind = fkLookup
      FieldName = 'Foto'
      LookupDataSet = ADOTableClients
      LookupKeyFields = 'KodClient'
      LookupResultField = 'Foto'
      KeyFields = 'KodClients'
      Size = 80
      Lookup = True
    end
  end
  object ADOQueryClients: TADOQuery
    Active = True
    Connection = ADOConnectionJackPot
    CursorType = ctStatic
    AfterScroll = ADOQueryClientsAfterScroll
    Parameters = <>
    SQL.Strings = (
      'select * from Clients')
    Left = 200
    Top = 120
    object ADOQueryClientsKodClient: TAutoIncField
      DisplayLabel = #1050#1086#1076' '#1082#1083#1080#1077#1085#1090#1072
      FieldName = 'KodClient'
      ReadOnly = True
    end
    object ADOQueryClientsFIO: TWideStringField
      DisplayLabel = #1060#1048#1054
      FieldName = 'FIO'
      Size = 255
    end
    object ADOQueryClientsTelephone: TWideStringField
      DisplayLabel = #1058#1077#1083#1077#1092#1086#1085
      DisplayWidth = 15
      FieldName = 'Telephone'
      Size = 255
    end
    object ADOQueryClientsPasport: TWideStringField
      DisplayLabel = #1055#1072#1089#1087#1086#1088#1090
      DisplayWidth = 15
      FieldName = 'Pasport'
      Size = 255
    end
    object ADOQueryClientsDate: TDateTimeField
      DisplayLabel = #1044#1072#1090#1072
      FieldName = 'Date'
    end
    object ADOQueryClientsOvd: TWideStringField
      DisplayLabel = #1050#1077#1084' '#1074#1099#1076#1072#1085
      FieldName = 'Ovd'
      Size = 255
    end
    object ADOQueryClientsNote: TWideStringField
      DisplayLabel = #1047#1072#1084#1077#1090#1082#1080
      FieldName = 'Note'
      Size = 255
    end
    object ADOQueryClientsFoto: TWideStringField
      DisplayLabel = #1060#1086#1090#1086
      FieldName = 'Foto'
      Size = 255
    end
  end
end
