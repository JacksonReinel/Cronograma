object dtmConexao: TdtmConexao
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 235
  Width = 446
  object ucnConexao: TUniConnection
    ProviderName = 'SQLite'
    Database = 
      'C:\Users\jackson.santos\Documents\Borland Studio Projects\Cronog' +
      'rama\CRONOGRAMA.DB3'
    Options.KeepDesignConnected = False
    Connected = True
    LoginPrompt = False
    Left = 128
    Top = 64
  end
  object SQLiteUniProvider: TSQLiteUniProvider
    Left = 168
    Top = 64
  end
end
