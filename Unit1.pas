unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Unit3, Vcl.ExtCtrls;

type
  TForm1 = class(TForm)
    btn1: TButton;
    btn2: TButton;
    pnl1: TPanel;
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
  private
    { Private declarations }
    procedure CallForm(Modal : TFormClass);
  public
    { Public declarations }
  end;

var
  Form1: TForm1;


implementation

uses
  Unit2;

{$R *.dfm}

procedure TForm1.btn1Click(Sender: TObject);
begin
  CallForm(TForm2);
end;

procedure TForm1.btn2Click(Sender: TObject);
begin
  CallForm(TForm3);
end;

procedure TForm1.CallForm(Modal : TFormClass);
begin
  with Modal.Create(Application) do
  begin
    try
      ShowModal;
    finally
      Release;
    end;
  end;
end;

end.
