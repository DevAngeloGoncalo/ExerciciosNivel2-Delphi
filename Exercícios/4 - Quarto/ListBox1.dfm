object Form4: TForm4
  Left = 0
  Top = 0
  Caption = 'Form4'
  ClientHeight = 250
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
    Left = 296
    Top = 8
    Width = 28
    Height = 13
    Caption = 'Idade'
  end
  object Label2: TLabel
    Left = 360
    Top = 8
    Width = 23
    Height = 13
    Caption = 'Peso'
  end
  object Button1: TButton
    Left = 306
    Top = 192
    Width = 112
    Height = 25
    Caption = 'Selecione o Arquivo'
    TabOrder = 0
    OnClick = Button1Click
  end
  object ListBox1: TListBox
    Left = 8
    Top = 8
    Width = 282
    Height = 209
    ItemHeight = 13
    TabOrder = 1
    OnClick = ListBox1Click
  end
  object Edit1: TEdit
    Left = 296
    Top = 24
    Width = 58
    Height = 21
    TabOrder = 2
  end
  object Edit2: TEdit
    Left = 360
    Top = 24
    Width = 58
    Height = 21
    TabOrder = 3
  end
  object OpenDialog1: TOpenDialog
    Left = 352
    Top = 152
  end
end
