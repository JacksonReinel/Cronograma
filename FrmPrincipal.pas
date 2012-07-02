unit FrmPrincipal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxBar, cxClasses, dmConexao;

type
  TFormPrincipal = class(TForm)
    dxBarManager1: TdxBarManager;
    dxBarManager1Bar1: TdxBar;
    dxBarButton1: TdxBarButton;
    dxBarButton2: TdxBarButton;
    dxBarButton3: TdxBarButton;
    dxBarSubItem1: TdxBarSubItem;
    dxBarSubItem2: TdxBarSubItem;
    dxBarSubItem3: TdxBarSubItem;
    mniPais: TdxBarButton;
    mniEstado: TdxBarButton;
    mniMunicipio: TdxBarButton;
    mniEmpresa: TdxBarButton;
    mniFilial: TdxBarButton;
    mniColaborador: TdxBarButton;
    mniSetor: TdxBarButton;
    mniCliente: TdxBarButton;
    dxBarButton7: TdxBarButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormPrincipal: TFormPrincipal;

implementation

{$R *.dfm}

end.
