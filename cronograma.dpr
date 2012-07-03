program cronograma;

uses
  Forms,
  FrmPrincipal in 'FrmPrincipal.pas' {FormPrincipal},
  dmConexao in 'Conexao\dmConexao.pas' {dtmConexao: TDataModule},
  FrmConexao in 'Conexao\FrmConexao.pas' {FormConexao},
  FrmBase in 'FormBase\FrmBase.pas' {FormBase},
  DmCadEmpresa in 'Forms\Datamodulo\DmCadEmpresa.pas' {DtmCadEmpresa: TDataModule},
  FrmCadEmpresa in 'Forms\Cadastro\FrmCadEmpresa.pas' {FormCadEmpresa},
  FrmLogin in 'Forms\Utilitários\FrmLogin.pas' {FormLogin};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'Cronograma';
  Application.CreateForm(TdtmConexao, dtmConexao);
  Application.Run;
end.
