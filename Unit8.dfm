object Form8: TForm8
  Left = 685
  Top = 181
  Width = 504
  Height = 540
  Caption = 'Form8'
  Color = clActiveCaption
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lbl1: TLabel
    Left = 48
    Top = 64
    Width = 48
    Height = 13
    Caption = 'Username'
  end
  object lbl2: TLabel
    Left = 48
    Top = 96
    Width = 46
    Height = 13
    Caption = 'Password'
  end
  object e1: TEdit
    Left = 112
    Top = 56
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object e2: TEdit
    Left = 112
    Top = 88
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object btn1: TButton
    Left = 80
    Top = 120
    Width = 75
    Height = 25
    Caption = 'Login'
    TabOrder = 2
    OnClick = btn1Click
  end
  object con1: TZConnection
    ControlsCodePage = cGET_ACP
    UTF8StringsAsWideField = False
    AutoEncodeStrings = False
    Connected = True
    HostName = 'localhost'
    Port = 3306
    Database = 'penjualan_ban'
    User = 'root'
    Protocol = 'mysql'
    LibraryLocation = 'C:\Tugas Kuliah\Visual 3\libmysql.dll'
    Left = 40
    Top = 232
  end
  object zqry1: TZQuery
    Connection = con1
    Active = True
    SQL.Strings = (
      'select * from tbl_user')
    Params = <>
    Left = 80
    Top = 232
  end
end
