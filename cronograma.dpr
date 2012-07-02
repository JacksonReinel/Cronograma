program cronograma;

uses
  Forms,
  FrmPrincipal in 'FrmPrincipal.pas' {FormPrincipal},
  dmConexao in 'Conexao\dmConexao.pas' {dtmConexao: TDataModule},
  FrmConexao in 'Conexao\FrmConexao.pas' {FormConexao},
  FrmBase in 'FormBase\FrmBase.pas' {FormBase},
  FrmCadEmpresa in 'Forms\FrmCadEmpresa.pas' {FormCadEmpresa};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'Cronograma';
  Application.CreateForm(TdtmConexao, dtmConexao);
  Application.CreateForm(TFormCadEmpresa, FormCadEmpresa);
  Application.Run;
end.
