unit FrmConexao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, jpeg, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, cxLabel, Buttons, cxTextEdit,
  Menus, StdCtrls, cxButtons, dmConexao;

type
  TFormConexao = class(TForm)
    pnlBase: TPanel;
    Image1: TImage;
    cxLabel1: TcxLabel;
    edtCaminhoBD: TcxTextEdit;
    spbSelecionaBD: TSpeedButton;
    btnConectar: TcxButton;
    btnCancelar: TcxButton;
    opdBD: TOpenDialog;
    procedure spbSelecionaBDClick(Sender: TObject);
    procedure btnConectarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormConexao: TFormConexao;

implementation

{$R *.dfm}

procedure TFormConexao.btnCancelarClick(Sender: TObject);
begin
  Conexao.BancoDeDados := EmptyStr;
  Close;
end;

procedure TFormConexao.btnConectarClick(Sender: TObject);
begin
  if edtCaminhoBD.Text <> EmptyStr then
  begin
    Conexao.BancoDeDados := edtCaminhoBD.Text;
    Close;
  end
  else
  begin
    Application.MessageBox('Banco de dados inválido.',
                           'Conexão com o banco de dados.',
                           MB_ICONERROR + MB_OK + MB_DEFBUTTON2)
  end;
end;

procedure TFormConexao.spbSelecionaBDClick(Sender: TObject);
begin
  opdBD.Execute;
  edtCaminhoBD.Text := opdBD.FileName;
end;

end.
