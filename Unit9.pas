unit Unit9;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm9 = class(TForm)
    btn1: TButton;
    lbl1: TLabel;
    btn2: TButton;
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form9: TForm9;

implementation

uses Unit8, Unit7;

{$R *.dfm}

procedure TForm9.btn1Click(Sender: TObject);
begin
form8.show;
end;

procedure TForm9.btn2Click(Sender: TObject);
begin
form7.show;
end;

end.
