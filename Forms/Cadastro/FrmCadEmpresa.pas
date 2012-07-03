unit FrmCadEmpresa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FrmBase, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, DBAccess, Uni, MemDS, cxGridLevel,
  cxClasses, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, cxPC, ComCtrls, DBCtrls, ExtCtrls;

type
  TFormCadEmpresa = class(TFormBase)
    cxGrid1DBTableView1SEQ_CR_EMPRESA: TcxGridDBColumn;
    cxGrid1DBTableView1NOM_EMPRESA: TcxGridDBColumn;
    cxGrid1DBTableView1SEQ_CR_MUNICIPIO: TcxGridDBColumn;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCadEmpresa: TFormCadEmpresa;

implementation

{$R *.dfm}

end.
