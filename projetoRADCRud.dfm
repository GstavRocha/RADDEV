object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 414
  ClientWidth = 646
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 21
  object Label1: TLabel
    Left = 48
    Top = 336
    Width = 62
    Height = 21
    Caption = 'cod_user'
    FocusControl = DBEdit3
  end
  object DBGrid1: TDBGrid
    Left = 10
    Top = 39
    Width = 434
    Height = 150
    DataSource = DataSource1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = 1
    TitleFont.Name = 'Segoe UI'
    TitleFont.Pitch = fpVariable
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'txt_post'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'name_user'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'date_post'
        Visible = True
      end>
  end
  object StaticText1: TStaticText
    Left = 8
    Top = 8
    Width = 80
    Height = 25
    Caption = 'CHAT TEXT'
    TabOrder = 1
  end
  object DBGrid2: TDBGrid
    Left = 455
    Top = 31
    Width = 161
    Height = 226
    DataSource = DataSource2
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -16
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
  end
  object StaticText2: TStaticText
    Left = 450
    Top = 8
    Width = 80
    Height = 25
    Caption = 'USUARIOS'
    TabOrder = 3
  end
  object StaticText3: TStaticText
    Left = 331
    Top = 8
    Width = 75
    Height = 25
    Caption = 'Postagens'
    TabOrder = 4
  end
  object DBEdit1: TDBEdit
    Left = 412
    Top = 4
    Width = 32
    Height = 29
    DataField = 'COUNT(cod_post)'
    DataSource = DataSource3
    TabOrder = 5
  end
  object StaticText4: TStaticText
    Left = 8
    Top = 232
    Width = 73
    Height = 25
    Caption = 'Postagem'
    TabOrder = 6
  end
  object Button1: TButton
    Left = 327
    Top = 263
    Width = 75
    Height = 29
    Caption = 'Enviar'
    TabOrder = 7
  end
  object DBNavigator1: TDBNavigator
    Left = 8
    Top = 298
    Width = 240
    Height = 25
    DataSource = DataSource5
    TabOrder = 8
  end
  object DBEdit2: TDBEdit
    Left = 8
    Top = 263
    Width = 313
    Height = 29
    DataField = 'txt_post'
    DataSource = DataSource5
    TabOrder = 9
  end
  object DBEdit3: TDBEdit
    Left = 48
    Top = 360
    Width = 214
    Height = 29
    DataField = 'cod_user'
    DataSource = DataSource5
    TabOrder = 10
  end
  object FDPhysMySQLDriverLink1: TFDPhysMySQLDriverLink
    VendorLib = 
      'C:\Users\20211148060008\Desktop\RADDEV\dll.Lib\libmysql\libmysql' +
      '.dll'
    Left = 72
    Top = 48
  end
  object DataSource1: TDataSource
    DataSet = FDQuery1
    Left = 272
    Top = 88
  end
  object FDConnection1: TFDConnection
    Params.Strings = (
      'ConnectionDef=teste')
    Connected = True
    Left = 24
    Top = 112
  end
  object FDQuery1: TFDQuery
    Active = True
    Connection = FDConnection1
    SQL.Strings = (
      ''
      'select * from up_grup_post')
    Left = 336
    Top = 88
    object FDQuery1txt_post: TStringField
      FieldName = 'txt_post'
      Origin = 'txt_post'
      Required = True
      Size = 200
    end
    object FDQuery1name_user: TStringField
      FieldName = 'name_user'
      Origin = 'name_user'
      Required = True
      Size = 60
    end
    object FDQuery1date_post: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'date_post'
      Origin = 'date_post'
    end
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 104
    Top = 128
  end
  object Tb_userTable: TFDQuery
    DetailFields = 'cod_user;count_post;name_user'
    SQL.Strings = (
      'SELECT * FROM db_site.tb_user')
    Left = 508
    Top = 63
  end
  object Tb_postTable: TFDQuery
    SQL.Strings = (
      'SELECT * FROM db_site.tb_post')
    Left = 186
    Top = 50
  end
  object FDTable1: TFDTable
    Connection = FDConnection1
    Left = 184
    Top = 112
  end
  object DataSource2: TDataSource
    DataSet = FDQuery2
    Left = 504
    Top = 192
  end
  object FDQuery2: TFDQuery
    Active = True
    Connection = FDConnection1
    SQL.Strings = (
      'select name_user from tb_user')
    Left = 504
    Top = 128
  end
  object FDQuery3: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'select * from contador_post')
    Left = 288
  end
  object DataSource3: TDataSource
    DataSet = FDQuery3
    Left = 352
    Top = 24
  end
  object FDQuery4: TFDQuery
    Connection = FDConnection1
    Left = 136
    Top = 200
  end
  object DataSource4: TDataSource
    Left = 40
    Top = 176
  end
  object FDQuery5: TFDQuery
    Active = True
    AfterPost = FDQuery5AfterPost
    Connection = FDConnection1
    SQL.Strings = (
      'select * from tb_post')
    Left = 216
    Top = 256
    object FDQuery5cod_post: TFDAutoIncField
      FieldName = 'cod_post'
      Origin = 'cod_post'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object FDQuery5txt_post: TStringField
      FieldName = 'txt_post'
      Origin = 'txt_post'
      Required = True
      Size = 200
    end
    object FDQuery5date_post: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'date_post'
      Origin = 'date_post'
    end
    object FDQuery5cod_user: TIntegerField
      FieldName = 'cod_user'
      Origin = 'cod_user'
      Required = True
    end
    object FDQuery5cod_origin_post: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'cod_origin_post'
      Origin = 'cod_origin_post'
    end
  end
  object DataSource5: TDataSource
    DataSet = FDQuery5
    Left = 176
    Top = 264
  end
end
