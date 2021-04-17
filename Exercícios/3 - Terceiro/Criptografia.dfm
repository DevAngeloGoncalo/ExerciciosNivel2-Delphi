object Form3: TForm3
  Left = 0
  Top = 0
  Caption = 'Form3'
  ClientHeight = 242
  ClientWidth = 472
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Button1: TButton
    Left = 8
    Top = 176
    Width = 75
    Height = 25
    Caption = 'Procurar'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 104
    Top = 176
    Width = 97
    Height = 25
    Caption = 'Criptografar >:)'
    TabOrder = 1
    OnClick = Button2Click
  end
  object OpenDialog1: TOpenDialog
    Filter = 'Arquivo de Texto (*.txt)|*.txt'
    Title = 'Selecione Um Arquivo'
    Left = 400
    Top = 176
  end
  object SaveDialog1: TSaveDialog
    Filter = 'Arquivo de Texto (*.txt)|*.txt'
    Title = 'Salvar Criptografia'
    Left = 400
    Top = 128
  end
end
