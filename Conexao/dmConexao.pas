unit dmConexao;

interface

uses
  SysUtils, Classes, UniProvider, SQLiteUniProvider, DB, DBAccess, Uni, Forms,
  Windows, IniFiles;

type
  TConexao = Record
    Fornecedor,
    Usuario,
    Senha,
    Servidor,
    BancoDeDados : String;
  end;

type
  TdtmConexao = class(TDataModule)
    ucnConexao: TUniConnection;
    SQLiteUniProvider: TSQLiteUniProvider;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
    function Conectar(Con:TConexao):Boolean;
    procedure Desconectar(Con:TUniConnection);
    procedure ClearParamsConnection(Con:TConexao);
    procedure LoadParamsConnection(Con:TConexao);
    function MakeConnection(Con:TUniConnection):Boolean;

    procedure ExtractSQLiteResource;
  public
    { Public declarations }
  end;

var
  dtmConexao: TdtmConexao;
  ArqIni: TIniFile;
  Conexao:TConexao;

implementation

{$R *.dfm}

{$R sqlite.res}

uses FrmConexao, FrmPrincipal;

var
  oFormConexao : TFormConexao;
  oFormPrincipal : TFormPrincipal;

procedure TdtmConexao.ClearParamsConnection(Con: TConexao);
begin
  with ucnConexao do
  begin
    ProviderName := 'SQLite';
    Username     := EmptyStr;
    Password     := EmptyStr;
    Server       := EmptyStr;
    Database     := EmptyStr;
  end;
end;

function TdtmConexao.Conectar(Con: TConexao):Boolean;
begin
  Desconectar(ucnConexao);

  ClearParamsConnection(Con);
  LoadParamsConnection(Con);

  Result := MakeConnection(ucnConexao);
end;

procedure TdtmConexao.DataModuleCreate(Sender: TObject);
begin
  ExtractSQLiteResource;

  ArqIni := TIniFile.Create(ExtractFilePath(Application.ExeName)+'cronograma.ini');

  Conexao.BancoDeDados := ArqIni.ReadString('CON','BancodeDados','');

  if Conexao.BancoDeDados = EmptyStr then
  begin
    oFormConexao := TFormConexao.Create(nil);
    oFormConexao.ShowModal;
    FreeAndNil(oFormConexao);
  end;

  if Conexao.BancoDeDados <> EmptyStr then
    if Conectar(Conexao) then
    begin
      ArqIni.WriteString('CON','BancodeDados', Conexao.BancoDeDados);
      oFormPrincipal := TFormPrincipal.Create(Application);
      oFormPrincipal.ShowModal;
      FreeAndNil(oFormPrincipal);
    end;
end;

procedure TdtmConexao.Desconectar(Con: TUniConnection);
begin
  if Con.Connected then
    Con.Disconnect;
end;

procedure TdtmConexao.ExtractSQLiteResource;
var Res : TResourceStream;
begin
  Res := TResourceStream.Create(HInstance, 'sqlite3', 'dlls');
  try
    Res.SaveToFile(ExtractFilePath(Application.ExeName)+'sqlite3.dll');
    Res.SaveToFile('C:\Windows\System32\sqlite3.dll');
  finally
    Res.Free;
  end;
end;

procedure TdtmConexao.LoadParamsConnection(Con: TConexao);
begin
  with ucnConexao, Con do
  begin
    ProviderName := 'SQLite';
    Username     := Usuario;
    Password     := Senha;
    Server       := Servidor;
    Database     := BancoDeDados;
  end;
end;

function TdtmConexao.MakeConnection(Con: TUniConnection):Boolean;
begin
  try
    Result := True;
    LoadParamsConnection(Conexao);
    Con.Connect;
  except on E:Exception do
    begin
      Result := False;
      Application.MessageBox(PChar('Não foi possível se conectar ao banco de dados.'+#13#10+
                             'Mensagem original de erro:'+#13#10+#13#10+ E.Message),
                             'Conexão com banco de dados',MB_ICONERROR+MB_OK);
      Con.Disconnect;
    end;
  end;
end;

end.
