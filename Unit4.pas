unit Unit4;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  ZAbstractConnection, ZConnection, Grids, DBGrids, StdCtrls, frxClass,
  frxDBSet;

type
  TForm4 = class(TForm)
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
  Form4: TForm4;

implementation

{$R *.dfm}

procedure TForm4.btn1Click(Sender: TObject);
begin
zqry1.SQL.Clear;
zqry1.SQL.Add('insert into tbl_produk values(null,"'+e1.Text+'","'+e2.Text+'","'+e3.Text+'","'+e4.Text+'")');
zqry1.ExecSQL ;

zqry1.SQL.Clear;
zqry1.SQL.Add('select * from tbl_produk');
zqry1.Open;
Showmessage('DATA BERHASIL DI SIMPAN');
end;

procedure TForm4.btn3Click(Sender: TObject);
begin
  zqry1.SQL.Clear;
  zqry1.SQL.Add('DELETE FROM `tbl_produk` WHERE 1');
  zqry1.ExecSQL;

  zqry1.SQL.Clear;
  zqry1.SQL.Add('select * from tbl_produk');
  zqry1.Open;
  ShowMessage('DATA BERHASIL DIHAPUS!');
end;

procedure TForm4.btn4Click(Sender: TObject);
begin
frxReport1.ShowReport();
end;

procedure TForm4.btn2Click(Sender: TObject);
begin
  zqry1.FieldByName('nm_produk').Text := e1.Text;
  zqry1.FieldByName('desk_produk').Text := e2.Text;
  zqry1.FieldByName('harga_produk').Text := e3.Text;
  zqry1.FieldByName('jumlah_stok_produk').Text := e4.Text;
  zqry1.Post;
end;

end.
