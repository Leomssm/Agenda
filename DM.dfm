object DataModule1: TDataModule1
  OldCreateOrder = False
  Height = 540
  Width = 762
  object Conexao: TUniConnection
    ProviderName = 'Oracle'
    Username = 'leonardo'
    Server = 'XE'
    Connected = True
    LoginPrompt = False
    Left = 72
    Top = 48
    EncryptedPassword = 'CEFFCDFFCCFF'
  end
  object OracleUniProvider1: TOracleUniProvider
    Left = 192
    Top = 48
  end
  object dsAtividade: TDataSource
    DataSet = tbAtividade
    Left = 72
    Top = 224
  end
  object tbAtividade: TUniTable
    TableName = 'ATIVIDADE'
    Connection = Conexao
    Active = True
    Left = 72
    Top = 176
    object tbAtividadeROWID: TStringField
      FieldName = 'ROWID'
      Size = 18
    end
    object tbAtividadeCODIGO: TSmallintField
      FieldName = 'CODIGO'
    end
    object tbAtividadeDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 255
    end
    object tbAtividadeTIPO: TSmallintField
      FieldName = 'TIPO'
    end
    object tbAtividadePRIORIDADE: TStringField
      FieldName = 'PRIORIDADE'
      Size = 3
    end
  end
  object tbTipo: TUniTable
    TableName = 'TIPO'
    Connection = Conexao
    Active = True
    Left = 192
    Top = 176
  end
  object dsTipo: TDataSource
    DataSet = tbTipo
    Left = 192
    Top = 224
  end
  object dsPrioridade: TDataSource
    DataSet = UniQuery1
    Left = 296
    Top = 224
  end
  object tbPrioridade: TUniTable
    TableName = 'PRIORIDADE'
    Connection = Conexao
    Active = True
    Left = 296
    Top = 184
  end
  object UniQuery1: TUniQuery
    Connection = Conexao
    SQL.Strings = (
      
        'SELECT AT.CODIGO, AT.DESCRICAO, T.TIPO_DESCRICAO, CASE WHEN AT.P' +
        'RIORIDADE = '#39'URG'#39' THEN '#39'URGENTE'#39' WHEN AT.PRIORIDADE = '#39'IMP'#39' THEN' +
        ' '#39'IMPORTANTE'#39' WHEN AT.PRIORIDADE = '#39'CIR'#39' THEN '#39'CIRCUNSTANCIAL'#39' E' +
        'LSE '#39'SEM PRIORIDADE'#39' END PRIORIDADE FROM ATIVIDADE AT LEFT JOIN ' +
        'TIPO T ON T.TIPO_COD = AT.TIPO ORDER BY AT.CODIGO')
    Left = 416
    Top = 40
  end
end
