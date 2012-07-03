inherited FormCadEmpresa: TFormCadEmpresa
  Caption = 'Cadastro de Empresas'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlBaseBotoes: TPanel
    inherited DBNavigator1: TDBNavigator
      Hints.Strings = ()
    end
    inherited DBNavigator2: TDBNavigator
      Hints.Strings = ()
    end
  end
  inherited cxPageControl1: TcxPageControl
    inherited tbsDados: TcxTabSheet
      inherited cxGrid1: TcxGrid
        inherited cxGrid1DBTableView1: TcxGridDBTableView
          object cxGrid1DBTableView1SEQ_CR_EMPRESA: TcxGridDBColumn
            Caption = 'ID'
            DataBinding.FieldName = 'SEQ_CR_EMPRESA'
          end
          object cxGrid1DBTableView1NOM_EMPRESA: TcxGridDBColumn
            Caption = 'Nome'
            DataBinding.FieldName = 'NOM_EMPRESA'
          end
          object cxGrid1DBTableView1SEQ_CR_MUNICIPIO: TcxGridDBColumn
            DataBinding.FieldName = 'SEQ_CR_MUNICIPIO'
          end
        end
      end
    end
  end
  inherited uqrDados: TUniQuery
    SQL.Strings = (
      'SELECT * FROM CR_EMPRESA')
    Active = True
  end
end
