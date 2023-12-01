object Form7: TForm7
  Left = 805
  Top = 191
  Width = 466
  Height = 540
  Caption = 'Form7'
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
    Left = 88
    Top = 48
    Width = 35
    Height = 13
    Caption = 'Id User'
  end
  object lbl2: TLabel
    Left = 88
    Top = 88
    Width = 48
    Height = 13
    Caption = 'Username'
  end
  object lbl3: TLabel
    Left = 88
    Top = 128
    Width = 46
    Height = 13
    Caption = 'Password'
  end
  object lbl4: TLabel
    Left = 88
    Top = 168
    Width = 24
    Height = 13
    Caption = 'Email'
  end
  object lbl5: TLabel
    Left = 88
    Top = 208
    Width = 25
    Height = 13
    Caption = 'Level'
  end
  object lbl6: TLabel
    Left = 88
    Top = 248
    Width = 31
    Height = 13
    Caption = 'Status'
  end
  object e1: TEdit
    Left = 192
    Top = 40
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object e2: TEdit
    Left = 192
    Top = 80
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object e3: TEdit
    Left = 192
    Top = 120
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object e4: TEdit
    Left = 192
    Top = 160
    Width = 121
    Height = 21
    TabOrder = 3
  end
  object e5: TEdit
    Left = 192
    Top = 240
    Width = 121
    Height = 21
    TabOrder = 4
  end
  object btn1: TButton
    Left = 144
    Top = 296
    Width = 75
    Height = 25
    Caption = 'Simpan'
    TabOrder = 5
    OnClick = btn1Click
  end
  object cbbc1: TComboBox
    Left = 192
    Top = 200
    Width = 121
    Height = 21
    ItemHeight = 13
    TabOrder = 6
    Items.Strings = (
      'Admin,'
      'Pembeli')
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
    Left = 48
    Top = 384
  end
  object zqry1: TZQuery
    Connection = con1
    Active = True
    SQL.Strings = (
      'select * from tbl_user')
    Params = <>
    Left = 88
    Top = 384
  end
end
