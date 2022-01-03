unit unitPrioridade;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.DBCtrls,
  Vcl.ExtCtrls, Data.DB, Vcl.Grids, Vcl.DBGrids;

type
  TformRelatorio = class(TForm)
    BitBtn1: TBitBtn;
    DBGrid1: TDBGrid;
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  formRelatorio: TformRelatorio;

implementation

{$R *.dfm}

uses DM;

procedure TformRelatorio.BitBtn1Click(Sender: TObject);
begin
  with DataModule1.UniQuery1 do
  begin
    Close;
    DbGrid1.DataSource := DataModule1.DsPrioridade;
    DataModule1.dsPrioridade.DataSet := DataModule1.UniQuery1;
    SQL.Clear;
    SQL.Add('SELECT AT.CODIGO, AT.DESCRICAO, T.TIPO_DESCRICAO, CASE WHEN AT.PRIORIDADE = ''URG'' THEN ''URGENTE'' WHEN AT.PRIORIDADE = ''IMP'' THEN ''IMPORTANTE'' WHEN AT.PRIORIDADE = ''CIR'' THEN ''CIRCUNSTANCIAL'' ELSE ''SEM PRIORIDADE'' END PRIORIDADE');
    SQL.Add('FROM ATIVIDADE AT LEFT JOIN TIPO T ON T.TIPO_COD = AT.TIPO ORDER BY AT.CODIGO');
    Open;
    DBGrid1.Columns[0].Width := 60;
    DBGrid1.Columns[1].Width := 770;
    DBGrid1.Columns[2].Width := 300;
    DBGrid1.Columns[3].Width := 200;
  end;
end;
end.
