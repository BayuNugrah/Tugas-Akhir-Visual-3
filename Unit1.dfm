object Form1: TForm1
  Left = 263
  Top = 194
  Width = 1044
  Height = 540
  Caption = 'Form1'
  Color = clGradientActiveCaption
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = mm1
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object mm1: TMainMenu
    Left = 64
    Top = 40
    object M1: TMenuItem
      Caption = 'Menu'
      object FormPelanggan1: TMenuItem
        Caption = 'Form Pelanggan'
        OnClick = FormPelanggan1Click
      end
      object FormPemasok1: TMenuItem
        Caption = 'Form Pemasok'
        OnClick = FormPemasok1Click
      end
      object Form1: TMenuItem
        Caption = 'Form Produk'
        OnClick = Form1Click
      end
      object FormStok1: TMenuItem
        Caption = 'Form Stok'
        OnClick = FormStok1Click
      end
      object FormTransaksi1: TMenuItem
        Caption = 'Form Transaksi'
        OnClick = FormTransaksi1Click
      end
    end
  end
end
