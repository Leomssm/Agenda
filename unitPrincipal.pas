unit unitPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls;

type
  TformPrincipal = class(TForm)
    MainMenu1: TMainMenu;
    Sistema1: TMenuItem;
    Sair1: TMenuItem;
    CadastrarTarefa1: TMenuItem;
    Atividade1: TMenuItem;
    Atividade2: TMenuItem;
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    Image1: TImage;
    procedure Sair1Click(Sender: TObject);
    procedure Atividade2Click(Sender: TObject);
    procedure Atividade1Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  formPrincipal: TformPrincipal;

implementation

{$R *.dfm}

uses unitTipo, unitAtividades, unitPrioridade;

procedure TformPrincipal.Atividade1Click(Sender: TObject);
begin
  formAtividade.ShowModal;
end;

procedure TformPrincipal.Atividade2Click(Sender: TObject);
begin
  formTipo.ShowModal;
end;

procedure TformPrincipal.BitBtn1Click(Sender: TObject);
begin
  formAtividade.ShowModal;
end;

procedure TformPrincipal.BitBtn2Click(Sender: TObject);
begin
  formTipo.ShowModal;
end;

procedure TformPrincipal.BitBtn3Click(Sender: TObject);
begin
  formRelatorio.ShowModal;
end;

procedure TformPrincipal.Sair1Click(Sender: TObject);
begin
  Application.Terminate;
end;

end.
