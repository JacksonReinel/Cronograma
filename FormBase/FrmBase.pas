unit FrmBase;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBAccess, Uni, MemDS, dmConexao, ExtCtrls, ComCtrls, DBCtrls,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxPC, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxDBData, cxGridLevel,
  cxClasses, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid;

type
  TFormBase = class(TForm)
    uqrDados: TUniQuery;
    dtsDados: TUniDataSource;
    pnlBaseBotoes: TPanel;
    stbInfoTopo: TStatusBar;
    DBNavigator1: TDBNavigator;
    DBNavigator2: TDBNavigator;
    cxPageControl1: TcxPageControl;
    tbsDados: TcxTabSheet;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    procedure dtsDadosStateChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    FTabela: String;

    procedure SetDataSetState;
    procedure SetID;
    
    function GetKeyFieldName: String;
    function GetTableName: String;
  public
    { Public declarations }
    property Tabela: String read FTabela write FTabela;
  end;

var
  FormBase: TFormBase;

implementation

{$R *.dfm}

procedure TFormBase.dtsDadosStateChange(Sender: TObject);
begin
  SetDataSetState;
  SetID;
end;

procedure TFormBase.FormCreate(Sender: TObject);
begin
  uqrDados.Close;
  uqrDados.Connection := dtmConexao.ucnConexao;
  if Trim(uqrDados.SQL.Text) = EmptyStr then
  begin
    Application.MessageBox('Comando SQL não definido para a tabela.',
                           PChar(Self.Caption),
                           MB_ICONERROR + MB_OK);
    Abort;
  end
  else
    uqrDados.Open;
end;

function TFormBase.GetKeyFieldName: String;
var I: Integer;
begin
  Result := EmptyStr;
  with uqrDados do
  begin
    for I := 0 to FieldCount - 1 do
    if Fields[i].AutoGenerateValue = arAutoInc then
    begin
      Result := Fields[i].FullName;
      Break;
    end;
  end;
end;

function TFormBase.GetTableName: String;
begin
  Result := Trim(Copy(GetKeyFieldName, 5, 50));
end;

procedure TFormBase.SetDataSetState;
begin
  with dtsDados, stbInfoTopo.Panels[1] do
  begin
    case State of
      dsInactive : Text := 'Inativo';
      dsBrowse   : Text := 'Consultando';
      dsEdit     : Text := 'Alterando';
      dsInsert   : Text := 'Incluindo';
    end;
  end;
end;

procedure TFormBase.SetID;
var
  infoBar : TStatusBar;
  nomeKey : String;
begin
  if (Self.FindComponent('stbInfoTopo') <> nil) then
    infoBar := TStatusBar(Self.FindComponent('stbInfoTopo'));
    
  nomeKey := GetKeyFieldName;

  if ((Assigned(infoBar)) and
      (nomeKey <> '')) then
    infoBar.Panels[0].Text := 'ID: ' + uqrDados.FieldByName(nomeKey).AsString;
end;

end.
