object Form3: TForm3
  Left = 0
  Top = 0
  Caption = 'Form3'
  ClientHeight = 242
  ClientWidth = 527
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
    Left = 176
    Top = 24
    Width = 111
    Height = 13
    Caption = 'Verificador de tri'#226'ngulo'
  end
  object edtValor1: TEdit
    Left = 24
    Top = 128
    Width = 129
    Height = 21
    TabOrder = 0
    TextHint = 'Digite um n'#250'mero'
  end
  object edtValor2: TEdit
    Left = 176
    Top = 128
    Width = 129
    Height = 21
    TabOrder = 1
    TextHint = 'Digite um n'#250'mero'
  end
  object edtValor3: TEdit
    Left = 344
    Top = 128
    Width = 129
    Height = 21
    TabOrder = 2
    TextHint = 'Digite um n'#250'mero'
  end
  object btCalcular: TButton
    Left = 200
    Top = 192
    Width = 75
    Height = 25
    Caption = 'Calcular'
    TabOrder = 3
    OnClick = btCalcularClick
  end
  object edtVerificaSeEumTriangulo: TEdit
    Left = 176
    Top = 43
    Width = 121
    Height = 21
    TabOrder = 4
    TextHint = 'Tri'#226'ngulo ou n'#227'o'
  end
  object edtTipoTriangulo: TEdit
    Left = 176
    Top = 80
    Width = 121
    Height = 21
    TabOrder = 5
    TextHint = 'Tipo de tri'#226'ngulo'
  end
end
