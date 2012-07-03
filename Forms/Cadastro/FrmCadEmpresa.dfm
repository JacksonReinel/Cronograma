inherited FormCadEmpresa: TFormCadEmpresa
  Caption = 'Cadastro de Empresas'
  ClientHeight = 298
  ExplicitWidth = 537
  ExplicitHeight = 326
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlBaseBotoes: TPanel
    Top = 257
    inherited DBNavigator1: TDBNavigator
      Hints.Strings = ()
    end
    inherited DBNavigator2: TDBNavigator
      Hints.Strings = ()
    end
  end
  inherited cxPageControl1: TcxPageControl
    Top = 107
    inherited tbsDados: TcxTabSheet
      ExplicitTop = 24
      ExplicitWidth = 531
      ExplicitHeight = 126
      inherited cxGrid1: TcxGrid
        inherited cxGrid1DBTableView1: TcxGridDBTableView
          OptionsData.CancelOnExit = False
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          object cxGrid1DBTableView1SEQ_CR_EMPRESA: TcxGridDBColumn
            Caption = 'ID'
            DataBinding.FieldName = 'SEQ_CR_EMPRESA'
          end
          object cxGrid1DBTableView1NOM_EMPRESA: TcxGridDBColumn
            Caption = 'Nome'
            DataBinding.FieldName = 'NOM_EMPRESA'
            Width = 334
          end
          object cxGrid1DBTableView1SEQ_CR_MUNICIPIO: TcxGridDBColumn
            Caption = 'Munic'#237'pio'
            DataBinding.FieldName = 'SEQ_CR_MUNICIPIO'
            PropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.KeyFieldNames = 'SEQ_CR_MUNICIPIO'
            Properties.ListColumns = <
              item
                FieldName = 'NOM_MUNICIPIO'
              end>
            Properties.ListSource = DtmCadEmpresa.dtsMunicipio
            Width = 109
          end
        end
      end
    end
  end
  object cxDBTextEdit1: TcxDBTextEdit [3]
    Left = 79
    Top = 24
    DataBinding.DataField = 'SEQ_CR_EMPRESA'
    DataBinding.DataSource = dtsDados
    TabOrder = 3
    Width = 100
  end
  object cxDBTextEdit2: TcxDBTextEdit [4]
    Left = 79
    Top = 49
    DataBinding.DataField = 'NOM_EMPRESA'
    DataBinding.DataSource = dtsDados
    TabOrder = 4
    Width = 350
  end
  object cxLabel1: TcxLabel [5]
    Left = 56
    Top = 25
    Caption = 'ID:'
    ParentFont = False
    Style.LookAndFeel.Kind = lfOffice11
    Style.TextStyle = [fsBold]
    StyleDisabled.LookAndFeel.Kind = lfOffice11
    StyleFocused.LookAndFeel.Kind = lfOffice11
    StyleHot.LookAndFeel.Kind = lfOffice11
  end
  object cxLabel2: TcxLabel [6]
    Left = 37
    Top = 50
    Caption = 'Nome:'
    ParentFont = False
    Style.LookAndFeel.Kind = lfOffice11
    Style.TextStyle = [fsBold]
    StyleDisabled.LookAndFeel.Kind = lfOffice11
    StyleFocused.LookAndFeel.Kind = lfOffice11
    StyleHot.LookAndFeel.Kind = lfOffice11
  end
  object cxLabel3: TcxLabel [7]
    Left = 16
    Top = 75
    Caption = 'Munic'#237'pio:'
    ParentFont = False
    Style.LookAndFeel.Kind = lfOffice11
    Style.TextStyle = [fsBold]
    StyleDisabled.LookAndFeel.Kind = lfOffice11
    StyleFocused.LookAndFeel.Kind = lfOffice11
    StyleHot.LookAndFeel.Kind = lfOffice11
  end
  object cxDBLookupComboBox1: TcxDBLookupComboBox [8]
    Left = 79
    Top = 74
    DataBinding.DataField = 'SEQ_CR_MUNICIPIO'
    DataBinding.DataSource = dtsDados
    Properties.DropDownWidth = 350
    Properties.ImmediatePost = True
    Properties.KeyFieldNames = 'SEQ_CR_MUNICIPIO'
    Properties.ListColumns = <
      item
        FieldName = 'NOM_MUNICIPIO'
      end>
    Properties.ListOptions.ShowHeader = False
    Properties.ListSource = DtmCadEmpresa.dtsMunicipio
    TabOrder = 8
    Width = 350
  end
  inherited uqrDados: TUniQuery
    SQL.Strings = (
      'SELECT * FROM CR_EMPRESA')
    Active = True
    Left = 472
    Top = 32
  end
  inherited dtsDados: TUniDataSource
    Left = 472
    Top = 80
  end
end
