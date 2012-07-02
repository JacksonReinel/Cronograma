object FormBase: TFormBase
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'FormBase'
  ClientHeight = 343
  ClientWidth = 531
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poScreenCenter
  Visible = True
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object pnlBaseBotoes: TPanel
    Left = 0
    Top = 302
    Width = 531
    Height = 41
    Align = alBottom
    TabOrder = 0
    object DBNavigator1: TDBNavigator
      Left = 6
      Top = 16
      Width = 144
      Height = 18
      DataSource = dtsDados
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      TabOrder = 0
    end
    object DBNavigator2: TDBNavigator
      Left = 324
      Top = 15
      Width = 185
      Height = 18
      DataSource = dtsDados
      VisibleButtons = [nbInsert, nbDelete, nbPost, nbCancel, nbRefresh]
      TabOrder = 1
    end
  end
  object stbInfoTopo: TStatusBar
    Left = 0
    Top = 0
    Width = 531
    Height = 19
    Align = alTop
    Panels = <
      item
        Width = 400
      end
      item
        Alignment = taCenter
        Width = 100
      end>
  end
  object cxPageControl1: TcxPageControl
    Left = 0
    Top = 152
    Width = 531
    Height = 150
    ActivePage = tbsDados
    Align = alBottom
    TabOrder = 2
    ClientRectBottom = 150
    ClientRectRight = 531
    ClientRectTop = 24
    object tbsDados: TcxTabSheet
      Caption = 'Visualiza'#231#227'o'
      ImageIndex = 0
      object cxGrid1: TcxGrid
        Left = 0
        Top = 0
        Width = 531
        Height = 126
        Align = alClient
        TabOrder = 0
        object cxGrid1DBTableView1: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = dtsDados
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsView.NoDataToDisplayInfoText = '<N'#227'o h'#225' dados>'
          OptionsView.GroupByBox = False
          OptionsView.Indicator = True
        end
        object cxGrid1Level1: TcxGridLevel
          GridView = cxGrid1DBTableView1
        end
      end
    end
  end
  object uqrDados: TUniQuery
    Connection = dtmConexao.ucnConexao
    DMLRefresh = True
    Options.StrictUpdate = False
    Left = 16
    Top = 24
  end
  object dtsDados: TUniDataSource
    DataSet = uqrDados
    OnStateChange = dtsDadosStateChange
    Left = 56
    Top = 24
  end
end
