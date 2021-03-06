unit unitTipo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls, Vcl.ExtCtrls, Vcl.Menus;

type
  TformTipo = class(TForm)
    Button1: TButton;
    DBEdit1: TDBEdit;
    DBGrid1: TDBGrid;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Image1: TImage;
    Panel1: TPanel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  formTipo: TformTipo;

implementation

{$R *.dfm}

uses DM;

procedure TformTipo.Button1Click(Sender: TObject);
begin
  DBEdit1.Enabled := True;
  DataModule1.tbTipo.Append;
  DBEdit1.SetFocus;
  Button1.Enabled := False;
  DBGrid1.Enabled := False;
end;

procedure TformTipo.Button2Click(Sender: TObject);
begin
  if DBEdit1.Text <> '' then
  begin
  DataModule1.tbTipo.Post;
  DataModule1.tbTipo.Refresh;
  ShowMessage('Tipo cadastrado com sucesso!');
  DBEdit1.Clear;
  DBEdit1.Enabled := False;
  Button1.Enabled := True;
  Button3.Enabled := True;
  end
  else
  begin
    ShowMessage('Insira um valor no campo de cadastro!!');
  end;
end;

procedure TformTipo.Button3Click(Sender: TObject);
begin
  if MessageDlg('Tem certeza que deseja excluir Tipo?', mtConfirmation,[mbYes,mbNo],0)=mrYes then
    begin
      DataModule1.tbTipo.Delete;
      ShowMessage('Tipo deletado com sucesso!');
    end
  else
    begin

    end;
end;

procedure TformTipo.Button4Click(Sender: TObject);
begin
  DBGrid1.Enabled := True;
  DBEdit1.Enabled := True;
  Button1.Enabled := False;
  Button3.Enabled := False;
  DataModule1.tbTipo.Refresh;
end;

procedure TformTipo.Button5Click(Sender: TObject);
begin
  Button1.Enabled := True;
  DBEdit1.Clear;
  DataModule1.tbTipo.Cancel;
  DBEdit1.Enabled := False;
  DBEdit1.Clear;
end;

procedure TformTipo.FormShow(Sender: TObject);
begin
  DBEdit1.Clear;
end;

end.
