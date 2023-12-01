unit Unit6;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  ZAbstractConnection, ZConnection, Grids, DBGrids, StdCtrls, frxClass,
  frxDBSet;

type
  TForm6 = class(TForm)
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    e1: TEdit;
    e2: TEdit;
    e3: TEdit;
    e4: TEdit;
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    dbgrd1: TDBGrid;
    con1: TZConnection;
    zqry1: TZQuery;
    ds1: TDataSource;
    lbl5: TLabel;
    lbl6: TLabel;
    lbl7: TLabel;
    e5: TEdit;
    e6: TEdit;
    e7: TEdit;
    btn4: TButton;
    frxReport1: TfrxReport;
    frxDBDataset1: TfrxDBDataset;
    procedure btn1Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form6: TForm6;

implementation

{$R *.dfm}

procedure TForm6.btn1Click(Sender: TObject);
begin
zqry1.SQL.Clear;
zqry1.SQL.Add('insert into tbl_transaksi values(null,"'+e1.Text+'","'+e2.Text+'","'+e3.Text+'","'+e4.Text+'","'+e6.Text+'","'+e7.Text+'")');
zqry1.ExecSQL ;

zqry1.SQL.Clear;
zqry1.SQL.Add('select * from tbl_transaksi');
zqry1.Open;
Showmessage('DATA BERHASIL DI SIMPAN');

end;

procedure TForm6.btn3Click(Sender: TObject);
begin
  zqry1.SQL.Clear;
  zqry1.SQL.Add('DELETE FROM `tbl_transaksi` WHERE 1');
  zqry1.ExecSQL;

  zqry1.SQL.Clear;
  zqry1.SQL.Add('select * from tbl_transaksi');
  zqry1.Open;
  ShowMessage('DATA BERHASIL DIHAPUS!');
end;

procedure TForm6.btn4Click(Sender: TObject);
begin
frxReport1.ShowReport();
end;

procedure TForm6.btn2Click(Sender: TObject);
begin
 zqry1.Edit;
  zqry1.FieldByName('id_produk').Text := e1.Text;
  zqry1.FieldByName('id_pelanggan').Text := e2.Text;
  zqry1.FieldByName('id_pemasok').Text := e3.Text;
  zqry1.FieldByName('jns_transaksi').Text := e4.Text;
  zqry1.FieldByName('jumlah_produk_terlibat').Text := e6.Text;
  zqry1.FieldByName('tgl_transaksi').Text := e7.Text;
  zqry1.Post;
end;

end.
