object Form6: TForm6
  Left = 366
  Top = 158
  Width = 1044
  Height = 540
  Caption = 'Form6'
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
    Width = 58
    Height = 13
    Caption = 'ID_PRODUK'
  end
  object lbl2: TLabel
    Left = 72
    Top = 104
    Width = 67
    Height = 13
    Caption = 'ID_pelanggan'
  end
  object lbl3: TLabel
    Left = 72
    Top = 144
    Width = 59
    Height = 13
    Caption = 'ID_pemasok'
  end
  object lbl4: TLabel
    Left = 72
    Top = 176
    Width = 70
    Height = 13
    Caption = 'Jenis transaksi'
  end
  object lbl5: TLabel
    Left = 72
    Top = 208
    Width = 3
    Height = 13
  end
  object lbl6: TLabel
    Left = 72
    Top = 208
    Width = 90
    Height = 13
    Caption = 'Jumlah Stok Keluar'
  end
  object lbl7: TLabel
    Left = 72
    Top = 240
    Width = 86
    Height = 13
    Caption = 'Tanggal Transaksi'
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
    Top = 320
    Width = 75
    Height = 25
    Caption = 'SIMPAN'
    TabOrder = 4
    OnClick = btn1Click
  end
  object btn2: TButton
    Left = 152
    Top = 320
    Width = 75
    Height = 25
    Caption = 'EDIT'
    TabOrder = 5
    OnClick = btn2Click
  end
  object btn3: TButton
    Left = 248
    Top = 320
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
  object e5: TEdit
    Left = 328
    Top = 408
    Width = 121
    Height = 21
    TabOrder = 8
  end
  object e6: TEdit
    Left = 240
    Top = 200
    Width = 121
    Height = 21
    TabOrder = 9
  end
  object e7: TEdit
    Left = 240
    Top = 232
    Width = 121
    Height = 21
    TabOrder = 10
  end
  object btn4: TButton
    Left = 152
    Top = 360
    Width = 75
    Height = 25
    Caption = 'CETAK'
    TabOrder = 11
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
    Left = 56
    Top = 408
  end
  object zqry1: TZQuery
    Connection = con1
    SQL.Strings = (
      'select * from tbl_transaksi')
    Params = <>
    Left = 96
    Top = 408
  end
  object ds1: TDataSource
    DataSet = zqry1
    Left = 136
    Top = 408
  end
  object frxReport1: TfrxReport
    Version = '4.12.6'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 45261.573750104200000000
    ReportOptions.LastChange = 45261.573750104200000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 184
    Top = 408
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
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Laporan Data Transaksi')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object PageHeader1: TfrxPageHeader
        Height = 37.795300000000000000
        Top = 83.149660000000000000
        Width = 740.409927000000000000
        object Memo2: TfrxMemoView
          Width = 68.031540000000000000
          Height = 37.795300000000000000
          ShowHint = False
          Color = clYellow
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Bahnschrift Condensed'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Id Transaksi')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo3: TfrxMemoView
          Left = 68.031540000000000000
          Width = 68.031540000000000000
          Height = 37.795300000000000000
          ShowHint = False
          Color = clYellow
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Bahnschrift Condensed'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Id Produk')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo4: TfrxMemoView
          Left = 136.063080000000000000
          Width = 68.031540000000000000
          Height = 37.795300000000000000
          ShowHint = False
          Color = clYellow
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Bahnschrift Condensed'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Id Pelanggan')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo5: TfrxMemoView
          Left = 204.094620000000000000
          Width = 68.031540000000000000
          Height = 37.795300000000000000
          ShowHint = False
          Color = clYellow
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Bahnschrift Condensed'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Id Pemasok')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo6: TfrxMemoView
          Left = 272.126160000000000000
          Width = 166.299320000000000000
          Height = 37.795300000000000000
          ShowHint = False
          Color = clYellow
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Bahnschrift Condensed'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Jenis Transaksi')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo7: TfrxMemoView
          Left = 438.425480000000000000
          Width = 166.299320000000000000
          Height = 37.795300000000000000
          ShowHint = False
          Color = clYellow
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Bahnschrift Condensed'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Jumlah Produk')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo8: TfrxMemoView
          Left = 604.724800000000000000
          Width = 136.063080000000000000
          Height = 37.795300000000000000
          ShowHint = False
          Color = clYellow
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Bahnschrift Condensed'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Tanggal Transaksi')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object MasterData1: TfrxMasterData
        Height = 26.456710000000000000
        Top = 181.417440000000000000
        Width = 740.409927000000000000
        RowCount = 0
        object frxDBDataset1id_transaksi: TfrxMemoView
          Width = 68.031540000000000000
          Height = 26.456710000000000000
          ShowHint = False
          DataField = 'id_transaksi'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Bahnschrift Condensed'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDataset1."id_transaksi"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object frxDBDataset1id_produk: TfrxMemoView
          Left = 68.031540000000000000
          Width = 68.031540000000000000
          Height = 26.456710000000000000
          ShowHint = False
          DataField = 'id_produk'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Bahnschrift Condensed'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDataset1."id_produk"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object frxDBDataset1id_pelanggan: TfrxMemoView
          Left = 136.063080000000000000
          Width = 68.031540000000000000
          Height = 26.456710000000000000
          ShowHint = False
          DataField = 'id_pelanggan'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Bahnschrift Condensed'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDataset1."id_pelanggan"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object frxDBDataset1id_pemasok: TfrxMemoView
          Left = 204.094620000000000000
          Width = 68.031540000000000000
          Height = 26.456710000000000000
          ShowHint = False
          DataField = 'id_pemasok'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Bahnschrift Condensed'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDataset1."id_pemasok"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object frxDBDataset1jns_transaksi: TfrxMemoView
          Left = 272.126160000000000000
          Width = 166.299320000000000000
          Height = 26.456710000000000000
          ShowHint = False
          DataField = 'jns_transaksi'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Bahnschrift Condensed'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDataset1."jns_transaksi"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object frxDBDataset1jumlah_produk_terlibat: TfrxMemoView
          Left = 438.425480000000000000
          Width = 166.299320000000000000
          Height = 26.456710000000000000
          ShowHint = False
          DataField = 'jumlah_produk_terlibat'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Bahnschrift Condensed'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDataset1."jumlah_produk_terlibat"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object frxDBDataset1tgl_transaksi: TfrxMemoView
          Left = 604.724800000000000000
          Width = 139.842610000000000000
          Height = 26.456710000000000000
          ShowHint = False
          DataField = 'tgl_transaksi'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Bahnschrift Condensed'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDataset1."tgl_transaksi"]')
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
    Left = 248
    Top = 408
  end
end
