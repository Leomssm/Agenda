unit DM;

interface

uses
  System.SysUtils, System.Classes, Data.DB, MemDS, DBAccess, Uni, UniProvider,
  OracleUniProvider;

type
  TDataModule1 = class(TDataModule)
    Conexao: TUniConnection;
    OracleUniProvider1: TOracleUniProvider;
    dsAtividade: TDataSource;
    tbAtividade: TUniTable;
    tbTipo: TUniTable;
    dsTipo: TDataSource;
    dsPrioridade: TDataSource;
    tbPrioridade: TUniTable;
    tbAtividadeROWID: TStringField;
    tbAtividadeCODIGO: TSmallintField;
    tbAtividadeDESCRICAO: TStringField;
    tbAtividadeTIPO: TSmallintField;
    tbAtividadePRIORIDADE: TStringField;
    UniQuery1: TUniQuery;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModule1: TDataModule1;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
