object DtmCadEmpresa: TDtmCadEmpresa
  OldCreateOrder = False
  Height = 233
  Width = 420
  object uqrMunicipio: TUniQuery
    Connection = dtmConexao.ucnConexao
    SQL.Strings = (
      'SELECT '
      '  SEQ_CR_MUNICIPIO,'
      '  NOM_MUNICIPIO,'
      '  SGL_ESTADO'
      'FROM'
      '  CR_MUNICIPIO'
      '  JOIN CR_ESTADO ON'
      '  CR_ESTADO.SEQ_CR_ESTADO = CR_MUNICIPIO.SEQ_CR_ESTADO'
      'ORDER BY'
      '  SGL_ESTADO,'
      '  NOM_MUNICIPIO')
    Active = True
    Left = 32
    Top = 16
  end
  object dtsMunicipio: TDataSource
    DataSet = uqrMunicipio
    Left = 32
    Top = 72
  end
end
