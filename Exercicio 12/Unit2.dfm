object FormPedidoVenda: TFormPedidoVenda
  Left = 0
  Top = 0
  Caption = 'FormPedidoVenda'
  ClientHeight = 201
  ClientWidth = 445
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 18
    Top = 35
    Width = 87
    Height = 13
    Caption = 'N'#250'mero do pedido'
  end
  object Label2: TLabel
    Left = 18
    Top = 72
    Width = 91
    Height = 13
    Caption = 'Nome do vendedor'
  end
  object Label3: TLabel
    Left = 18
    Top = 115
    Width = 74
    Height = 13
    Caption = 'Valor do pedido'
  end
  object Label4: TLabel
    Left = 18
    Top = 155
    Width = 76
    Height = 13
    Caption = 'Nome do cliente'
  end
  object BtnSalvar: TButton
    Left = 328
    Top = 88
    Width = 75
    Height = 25
    Caption = 'Salvar'
    TabOrder = 0
    OnClick = BtnSalvarClick
  end
  object EditNumPedido: TEdit
    Left = 125
    Top = 32
    Width = 164
    Height = 21
    TabOrder = 1
  end
  object EditNomeVendedor: TEdit
    Left = 125
    Top = 69
    Width = 164
    Height = 21
    TabOrder = 2
  end
  object EditNomeCliente: TEdit
    Left = 125
    Top = 152
    Width = 164
    Height = 21
    TabOrder = 3
  end
  object EditValorPedido: TEdit
    Left = 125
    Top = 112
    Width = 164
    Height = 21
    TabOrder = 4
  end
end
