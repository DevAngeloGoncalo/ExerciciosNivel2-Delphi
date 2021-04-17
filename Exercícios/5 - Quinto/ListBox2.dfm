object Form5: TForm5
  Left = 0
  Top = 0
  Caption = 'Form5'
  ClientHeight = 242
  ClientWidth = 450
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
    Left = 367
    Top = 8
    Width = 28
    Height = 13
    Caption = 'Idade'
  end
  object Label2: TLabel
    Left = 367
    Top = 48
    Width = 23
    Height = 13
    Caption = 'Peso'
  end
  object Button1: TButton
    Left = 367
    Top = 86
    Width = 75
    Height = 25
    Caption = 'Selecione'
    TabOrder = 0
    OnClick = Button1Click
  end
  object ListBox1: TListBox
    Left = 8
    Top = 8
    Width = 353
    Height = 226
    ItemHeight = 13
    TabOrder = 1
    OnClick = ListBox1Click
  end
  object Edit1: TEdit
    Left = 367
    Top = 21
    Width = 75
    Height = 21
    TabOrder = 2
  end
  object Edit2: TEdit
    Left = 367
    Top = 59
    Width = 75
    Height = 21
    TabOrder = 3
  end
  object OpenDialog1: TOpenDialog
    Left = 408
    Top = 120
  end
end
