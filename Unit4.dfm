object Form4: TForm4
  Left = 380
  Top = 235
  Width = 1044
  Height = 540
  Caption = 'Form4'
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
    Left = 72
    Top = 72
    Width = 73
    Height = 13
    Caption = 'NAMA PRODUK'
  end
  object lbl2: TLabel
    Left = 72
    Top = 104
    Width = 96
    Height = 13
    Caption = 'DESKRIPSI PRODUK'
  end
  object lbl3: TLabel
    Left = 72
    Top = 144
    Width = 79
    Height = 13
    Caption = 'HARGA PRODUK'
  end
  object lbl4: TLabel
    Left = 72
    Top = 176
    Width = 112
    Height = 13
    Caption = 'JUMLAH STOK BARANG'
  end
  object e1: TEdit
    Left = 240
    Top = 72
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object e2: TEdit
    Left = 240
    Top = 104
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object e3: TEdit
    Left = 240
    Top = 136
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object e4: TEdit
    Left = 240
    Top = 168
    Width = 121
    Height = 21
    TabOrder = 3
  end
  object btn1: TButton
    Left = 56
    Top = 248
    Width = 75
    Height = 25
    Caption = 'SIMPAN'
    TabOrder = 4
    OnClick = btn1Click
  end
  object btn2: TButton
    Left = 152
    Top = 248
    Width = 75
    Height = 25
    Caption = 'EDIT'
    TabOrder = 5
    OnClick = btn2Click
  end
  object btn3: TButton
    Left = 248
    Top = 248
    Width = 75
    Height = 25
    Caption = 'HAPUS'
    TabOrder = 6
    OnClick = btn3Click
  end
  object dbgrd1: TDBGrid
    Left = 416
    Top = 64
    Width = 553
    Height = 209
    DataSource = ds1
    TabOrder = 7
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object btn4: TButton
    Left = 152
    Top = 288
    Width = 75
    Height = 25
    Caption = 'CETAK'
    TabOrder = 8
    OnClick = btn4Click
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
    Left = 32
    Top = 352
  end
  object zqry1: TZQuery
    Connection = con1
    Active = True
    SQL.Strings = (
      'select * from tbl_produk'
      '')
    Params = <>
    Left = 72
    Top = 352
  end
  object ds1: TDataSource
    DataSet = zqry1
    Left = 112
    Top = 352
  end
  object frxReport1: TfrxReport
    Version = '4.12.6'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 45261.552151365700000000
    ReportOptions.LastChange = 45261.552151365700000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 160
    Top = 360
    Datasets = <
      item
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 215.900000000000000000
      PaperHeight = 279.400000000000000000
      PaperSize = 1
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object ReportTitle1: TfrxReportTitle
        Height = 41.574830000000000000
        Top = 18.897650000000000000
        Width = 740.409927000000000000
        object Memo1: TfrxMemoView
          Width = 740.787880000000000000
          Height = 41.574830000000000000
          ShowHint = False
          Color = clYellow
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -24
          Font.Name = 'Bahnschrift Condensed'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Laporan Data Produk')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object PageHeader1: TfrxPageHeader
        Height = 30.236240000000000000
        Top = 83.149660000000000000
        Width = 740.409927000000000000
        object Memo2: TfrxMemoView
          Width = 60.472480000000000000
          Height = 30.236240000000000000
          ShowHint = False
          Color = clYellow
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Id Produk')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo3: TfrxMemoView
          Left = 60.472480000000000000
          Width = 222.992270000000000000
          Height = 30.236240000000000000
          ShowHint = False
          Color = clYellow
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Nama Produk')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo4: TfrxMemoView
          Left = 283.464750000000000000
          Width = 200.315090000000000000
          Height = 30.236240000000000000
          ShowHint = False
          Color = clYellow
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Deskripsi')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo5: TfrxMemoView
          Left = 483.779840000000000000
          Width = 132.283550000000000000
          Height = 30.236240000000000000
          ShowHint = False
          Color = clYellow
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Harga Produk')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo6: TfrxMemoView
          Left = 616.063390000000000000
          Width = 124.724490000000000000
          Height = 30.236240000000000000
          ShowHint = False
          Color = clYellow
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Jumlah Stok Produk')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object MasterData1: TfrxMasterData
        Height = 26.456710000000000000
        Top = 173.858380000000000000
        Width = 740.409927000000000000
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
        RowCount = 0
        object frxDBDataset1id_produk: TfrxMemoView
          Width = 60.472480000000000000
          Height = 26.456710000000000000
          ShowHint = False
          DataField = 'id_produk'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDataset1."id_produk"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object frxDBDataset1nm_produk: TfrxMemoView
          Left = 60.472480000000000000
          Width = 222.992270000000000000
          Height = 26.456710000000000000
          ShowHint = False
          DataField = 'nm_produk'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDataset1."nm_produk"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object frxDBDataset1desk_produk: TfrxMemoView
          Left = 283.464750000000000000
          Width = 200.315090000000000000
          Height = 26.456710000000000000
          ShowHint = False
          DataField = 'desk_produk'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDataset1."desk_produk"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object frxDBDataset1harga_produk: TfrxMemoView
          Left = 483.779840000000000000
          Width = 132.283550000000000000
          Height = 26.456710000000000000
          ShowHint = False
          DataField = 'harga_produk'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDataset1."harga_produk"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object frxDBDataset1jumlah_stok_produk: TfrxMemoView
          Left = 616.063390000000000000
          Width = 124.724490000000000000
          Height = 26.456710000000000000
          ShowHint = False
          DataField = 'jumlah_stok_produk'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDataset1."jumlah_stok_produk"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
    end
  end
  object frxDBDataset1: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    DataSet = zqry1
    BCDToCurrency = False
    Left = 240
    Top = 360
  end
end
