unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, ZAbstractConnection, ZConnection, frxClass,
  frxDBSet;

type
  TForm2 = class(TForm)
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
  Form2: TForm2;

implementation

{$R *.dfm}

procedure TForm2.btn1Click(Sender: TObject);
begin
zqry1.SQL.Clear;
zqry1.SQL.Add('insert into tbl_pelanggan values(null,"'+e1.Text+'","'+e2.Text+'","'+e3.Text+'","'+e4.Text+'")');
zqry1.ExecSQL ;

zqry1.SQL.Clear;
zqry1.SQL.Add('select * from tbl_pelanggan');
zqry1.Open;
Showmessage('DATA BERHASIL DI SIMPAN');
end;

procedure TForm2.btn3Click(Sender: TObject);
begin
  zqry1.SQL.Clear;
  zqry1.SQL.Add('DELETE FROM `tbl_pelanggan` WHERE 1');
  zqry1.ExecSQL;

  zqry1.SQL.Clear;
  zqry1.SQL.Add('select * from tbl_pelanggan');
  zqry1.Open;
  ShowMessage('DATA BERHASIL DIHAPUS!');
end;

procedure TForm2.btn4Click(Sender: TObject);
begin
frxReport1.ShowReport();
end;

procedure TForm2.btn2Click(Sender: TObject);
begin
  zqry1.Edit;
  zqry1.FieldByName('nm_pelanggan').Text := e1.Text;
  zqry1.FieldByName('almt_pelanggan').Text := e2.Text;
  zqry1.FieldByName('no_pelanggan').Text := e3.Text;
  zqry1.FieldByName('email_pelanggan').Text := e4.Text;
  zqry1.Post;
end;

end.
