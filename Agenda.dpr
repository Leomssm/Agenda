program Agenda;

uses
  Vcl.Forms,
  unitPrincipal in 'unitPrincipal.pas' {formPrincipal},
  unitTipo in 'unitTipo.pas' {formTipo},
  unitPrioridade in 'unitPrioridade.pas' {formRelatorio},
  unitAtividades in 'unitAtividades.pas' {formAtividade},
  DM in 'DM.pas' {DataModule1: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TformPrincipal, formPrincipal);
  Application.CreateForm(TformTipo, formTipo);
  Application.CreateForm(TformRelatorio, formRelatorio);
  Application.CreateForm(TformAtividade, formAtividade);
  Application.CreateForm(TDataModule1, DataModule1);
  Application.Run;
end.
