unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus;

type
  TForm1 = class(TForm)
    mm1: TMainMenu;
    M1: TMenuItem;
    FormPelanggan1: TMenuItem;
    FormPemasok1: TMenuItem;
    Form1: TMenuItem;
    FormStok1: TMenuItem;
    FormTransaksi1: TMenuItem;
    procedure FormPelanggan1Click(Sender: TObject);
    procedure FormPemasok1Click(Sender: TObject);
    procedure Form1Click(Sender: TObject);
    procedure FormStok1Click(Sender: TObject);
    procedure FormTransaksi1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses Unit2, Unit3, Unit4, Unit5, Unit6;

{$R *.dfm}

procedure TForm1.FormPelanggan1Click(Sender: TObject);
begin
Form2.Show;
end;

procedure TForm1.FormPemasok1Click(Sender: TObject);
begin
Form3.Show;
end;

procedure TForm1.Form1Click(Sender: TObject);
begin
Form4.Show;
end;

procedure TForm1.FormStok1Click(Sender: TObject);
begin
Form5.Show;
end;

procedure TForm1.FormTransaksi1Click(Sender: TObject);
begin
Form6.Show;
end;

end.
