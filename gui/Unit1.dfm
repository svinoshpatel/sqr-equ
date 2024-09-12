object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 441
  ClientWidth = 624
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object alabel: TLabel
    Left = 113
    Top = 48
    Width = 20
    Height = 15
    Caption = 'a = '
  end
  object Label2: TLabel
    Left = 115
    Top = 99
    Width = 18
    Height = 15
    Caption = 'b ='
  end
  object Label3: TLabel
    Left = 116
    Top = 147
    Width = 17
    Height = 15
    Caption = 'c ='
  end
  object x1label: TLabel
    Left = 360
    Top = 48
    Width = 23
    Height = 15
    Caption = 'x1 ='
  end
  object x2label: TLabel
    Left = 360
    Top = 99
    Width = 23
    Height = 15
    Caption = 'x2 ='
  end
  object Edit1: TEdit
    Left = 136
    Top = 48
    Width = 97
    Height = 23
    TabOrder = 0
  end
  object Edit2: TEdit
    Left = 136
    Top = 96
    Width = 97
    Height = 23
    TabOrder = 1
  end
  object Edit3: TEdit
    Left = 136
    Top = 144
    Width = 97
    Height = 23
    TabOrder = 2
  end
  object blabel: TButton
    Left = 113
    Top = 288
    Width = 167
    Height = 57
    Caption = #1056#1086#1079#1074#39#1103#1079#1072#1090#1080
    TabOrder = 3
    OnClick = blabelClick
  end
  object clabel: TButton
    Left = 360
    Top = 288
    Width = 167
    Height = 57
    Caption = #1042#1080#1081#1090#1080
    TabOrder = 4
    OnClick = clabelClick
  end
end
