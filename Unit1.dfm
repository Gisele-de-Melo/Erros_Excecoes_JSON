object Form1: TForm1
  Left = 0
  Top = 0
  BorderStyle = bsSizeToolWin
  Caption = 'Erros e Exce'#231#245'es em JSON'
  ClientHeight = 197
  ClientWidth = 187
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object Button1: TButton
    Left = 8
    Top = 16
    Width = 169
    Height = 50
    Caption = 'Formata'#231#227'o Inv'#225'lida'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 8
    Top = 72
    Width = 169
    Height = 49
    Caption = 'Propriedade Inexistente'
    TabOrder = 1
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 8
    Top = 127
    Width = 169
    Height = 57
    Caption = 'Tipos Incompat'#237'veis'
    TabOrder = 2
    OnClick = Button3Click
  end
end
