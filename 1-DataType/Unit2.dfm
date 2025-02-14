object Form2: TForm2
  Left = 0
  Top = 0
  Caption = 'Form2'
  ClientHeight = 305
  ClientWidth = 211
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object Button1: TButton
    Left = 64
    Top = 120
    Width = 89
    Height = 33
    Caption = 'Exaltar valor'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Edit1: TEdit
    Left = 40
    Top = 64
    Width = 137
    Height = 33
    Alignment = taCenter
    TabOrder = 1
    TextHint = 'Digite um valor inteiro'
  end
end
