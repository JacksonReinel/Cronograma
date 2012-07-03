unit FrmCadEmpresa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FrmBase, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, DBAccess, Uni, MemDS, cxGridLevel,
  cxClasses, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, cxPC, ComCtrls, DBCtrls, ExtCtrls,
  cxDBLookupComboBox, cxContainer, cxLabel, cxTextEdit, cxDBEdit, cxMaskEdit,
  cxDropDownEdit, cxLookupEdit, cxDBLookupEdit;

type
  TFormCadEmpresa = class(TFormBase)
    cxGrid1DBTableView1SEQ_CR_EMPRESA: TcxGridDBColumn;
    cxGrid1DBTableView1NOM_EMPRESA: TcxGridDBColumn;
    cxGrid1DBTableView1SEQ_CR_MUNICIPIO: TcxGridDBColumn;
    cxDBTextEdit1: TcxDBTextEdit;
    cxDBTextEdit2: TcxDBTextEdit;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    cxLabel3: TcxLabel;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCadEmpresa: TFormCadEmpresa;

implementation

uses DmCadEmpresa;

{$R *.dfm}

end.
