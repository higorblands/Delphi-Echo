object FormExternalOrder: TFormExternalOrder
  Left = 0
  Top = 0
  Caption = 'External Order'
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
  object LDAV: TLabel
    Left = 32
    Top = 152
    Width = 47
    Height = 13
    Caption = 'Dav Code'
  end
  object LExternalSalerName: TLabel
    Left = 304
    Top = 5
    Width = 97
    Height = 13
    Caption = 'External Saler Name'
  end
  object edtDav: TEdit
    Left = 14
    Top = 171
    Width = 73
    Height = 21
    Alignment = taCenter
    TabOrder = 0
    TextHint = 'Dav Code'
  end
  object edtExternalSalerName: TEdit
    Left = 288
    Top = 24
    Width = 137
    Height = 21
    Alignment = taCenter
    BiDiMode = bdLeftToRight
    ParentBiDiMode = False
    TabOrder = 1
    TextHint = 'Enter saler external name'
  end
end
