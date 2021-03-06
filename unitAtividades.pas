unit unitAtividades;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Data.DB,
  Vcl.Grids, Vcl.DBGrids, Vcl.DBCtrls, Vcl.Buttons;

type
  TformAtividade = class(TForm)
    DBMemo1: TDBMemo;
    Label2: TLabel;
    Panel2: TPanel;
    DBGrid1: TDBGrid;
    Label3: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    DBRadioGroup1: TDBRadioGroup;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    RadioButton3: TRadioButton;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Image1: TImage;
    Panel1: TPanel;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  formAtividade: TformAtividade;

implementation

{$R *.dfm}

uses DM;

procedure TformAtividade.BitBtn1Click(Sender: TObject);
begin
  DBGrid1.Enabled := True;
  DBMemo1.Enabled := True;
  DBLookupComboBox1.Enabled := True;
  DBRadioGroup1.Enabled := True;
  DataModule1.tbAtividade.Append;
  DBMemo1.SetFocus;
  BitBtn1.Enabled := False;
  BitBtn2.Enabled := True;
end;

procedure TformAtividade.BitBtn2Click(Sender: TObject);
begin
  if RadioButton1.Checked = True then
  begin
    DataModule1.tbAtividadePRIORIDADE.Text := 'URGENTE';
  end;

  if RadioButton2.Checked = True then
  begin
    DataModule1.tbAtividadePRIORIDADE.Text := 'IMPORTANTE';
  end;

  if RadioButton3.Checked = True then
  begin
    DataModule1.tbAtividadePRIORIDADE.Text := 'CIRCUNSTANCIAL';
  end;

  DataModule1.tbAtividade.Post;
  DataModule1.tbAtividade.Refresh;
  DBMemo1.Clear;
  DbLookupComboBox1.KeyValue := null;
  DataModule1.tbAtividade.Refresh;
  BitBtn2.Enabled := True;
  BitBtn4.Enabled := True;
  BitBtn1.Enabled := True;
  ShowMessage('Atividade cadastrada com sucesso!');
  DBMemo1.Enabled := False;
  DBLookupComboBox1.Enabled := False;
end;

procedure TformAtividade.BitBtn3Click(Sender: TObject);
begin
  BitBtn1.Enabled := False;
  BitBtn4.Enabled := False;
  BitBtn2.Enabled := True;
  DBMemo1.Enabled := True;
  DBLookupComboBox1.Enabled := True;
  DbGrid1.Enabled := True;
  DataModule1.tbAtividade.Edit;
  DataModule1.tbAtividade.Refresh;
end;

procedure TformAtividade.BitBtn4Click(Sender: TObject);
begin
  if MessageDlg('Tem certeza que deseja excluir esta Atividade?', mtConfirmation,[mbYes,mbNo],0)=mrYes then
    begin
      DataModule1.tbAtividade.Delete;
      DataModule1.tbAtividade.Refresh;
      ShowMessage('Tipo deletado com sucesso!');
    end
  else
    begin

    end;
end;

procedure TformAtividade.BitBtn5Click(Sender: TObject);
begin
  BitBtn1.Enabled := True;
  BitBtn4.Enabled := True;
  DataModule1.tbAtividade.Cancel;
  DBMemo1.Clear;
  DbLookupComboBox1.KeyValue := null;
  BitBtn2.Enabled := False;
  DBMemo1.Enabled := False;
  DBLookupComboBox1.Enabled := False;
end;

procedure TformAtividade.FormShow(Sender: TObject);
begin
  DBMemo1.Clear;
  DbLookupComboBox1.KeyValue := null;
end;

end.
