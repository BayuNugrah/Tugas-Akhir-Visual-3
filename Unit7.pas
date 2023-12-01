unit Unit7;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  ZAbstractConnection, ZConnection, StdCtrls;

type
  TForm7 = class(TForm)
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    lbl5: TLabel;
    lbl6: TLabel;
    e1: TEdit;
    e2: TEdit;
    e3: TEdit;
    e4: TEdit;
    e5: TEdit;
    btn1: TButton;
    cbbc1: TComboBox;
    con1: TZConnection;
    zqry1: TZQuery;
    procedure btn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form7: TForm7;

implementation

{$R *.dfm}

procedure TForm7.btn1Click(Sender: TObject);
begin
zqry1.SQL.Clear;
  zqry1.SQL.Add('insert into tbl_user values("'+e1.Text+'", "'+e2.Text+'", "'+e3.Text+'", "'+e4.Text+'", "'+cbbc1.Text+'", "'+e5.Text+'")');
  zqry1.ExecSQL;

  zqry1.SQL.Clear;
  zqry1.SQL.Add('select * from tbl_user');
  zqry1.Open;
  Showmessage('Akun Berhasil Dibuat')
end;

end.
