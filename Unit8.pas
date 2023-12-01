unit Unit8;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  ZAbstractConnection, ZConnection, StdCtrls;

type
  TForm8 = class(TForm)
    lbl1: TLabel;
    lbl2: TLabel;
    e1: TEdit;
    e2: TEdit;
    con1: TZConnection;
    zqry1: TZQuery;
    btn1: TButton;
    procedure btn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form8: TForm8;
  nama, password, level, loginLevel, querylogin, userid: string;
  sts: integer;

implementation

uses Unit3, Unit2, Unit4, Unit1;

{$R *.dfm}

procedure TForm8.btn1Click(Sender: TObject);
begin
//cukup jelas
  nama := e1.Text;
  password := e2.Text;

  //assign kueri ke variabel querylogin
  querylogin := 'SELECT * FROM tbl_user WHERE username = :nama AND `password` = :password';

  //clear properti SQL dan tambahkan querylogin
  zqry1.SQL.Clear;
  zqry1.SQL.Add(querylogin);

  //bandingkan variabel 'nama' dan 'password' dengan kolom `nama` dan `password` di database
  zqry1.ParamByName('nama').AsString := nama; //assign var 'nama' ke :nama di kueri
  zqry1.ParamByName('password').AsString := password; //cukup jelas
  zqry1.Open; //jalankan kueri dan cocokan dengan parameter di atas

  if (zqry1.RecordCount > 0) then //jika kueri di atas mengembalikan hasil
    begin
      sts := zqry1.FieldValues['status']; //ambil value dari kolom `status`
      if (sts = 1) then //memeriksa sts
        begin
          loginLevel := zqry1.FieldValues['level']; //ambil value dari kolom `level` sebagai string
          if (loginLevel = 'Pembeli') then //memeriksa loginLevel
            begin
              userid := zqry1.FieldValues['user_id']; //set userid berdasarkan sintaks di kanan
              //l1.Caption := userid; //assign userid sebagai value di Label4.Caption
              ShowMessage('Login sebagai Pembeli');
              form4.ShowModal;
            end
          else if (loginLevel = 'Admin') then
            begin
              userid := zqry1.FieldValues['user_id'];
              //lblId.Caption := userid;
              ShowMessage('Login sebagai Admin');
              form1.ShowModal;
            end;
        end
      else //jika tidak
        begin
          ShowMessage('Login Gagal'); //jalankan ini
        end;
    end;
//  frConnection.ZqLogin.Close;
end;

end.
