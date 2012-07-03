unit DmCadEmpresa;

interface

uses
  SysUtils, Classes, DB, MemDS, DBAccess, Uni, DmConexao;

type
  TDtmCadEmpresa = class(TDataModule)
    uqrMunicipio: TUniQuery;
    dtsMunicipio: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DtmCadEmpresa: TDtmCadEmpresa;

implementation

{$R *.dfm}

end.
