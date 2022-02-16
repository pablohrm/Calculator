object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Calculadora'
  ClientHeight = 243
  ClientWidth = 225
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 225
    Height = 243
    Align = alClient
    TabOrder = 0
    ExplicitLeft = 32
    ExplicitTop = 120
    ExplicitWidth = 185
    ExplicitHeight = 41
    object Btn00: TButton
      Left = 24
      Top = 188
      Width = 41
      Height = 41
      Caption = '0'
      TabOrder = 0
      OnClick = Btn00Click
    end
    object Btn01: TButton
      Left = 24
      Top = 141
      Width = 41
      Height = 41
      Caption = '1'
      TabOrder = 1
      OnClick = Btn01Click
    end
    object Btn02: TButton
      Left = 71
      Top = 141
      Width = 41
      Height = 41
      Caption = '2'
      TabOrder = 2
      OnClick = Btn02Click
    end
    object Btn03: TButton
      Left = 118
      Top = 141
      Width = 41
      Height = 41
      Caption = '3'
      TabOrder = 3
      OnClick = Btn03Click
    end
    object Btn04: TButton
      Left = 24
      Top = 94
      Width = 41
      Height = 41
      Caption = '4'
      TabOrder = 4
      OnClick = Btn04Click
    end
    object Btn05: TButton
      Left = 71
      Top = 94
      Width = 41
      Height = 41
      Caption = '5'
      TabOrder = 5
      OnClick = Btn05Click
    end
    object Btn06: TButton
      Left = 118
      Top = 94
      Width = 41
      Height = 41
      Caption = '6'
      TabOrder = 6
      OnClick = Btn06Click
    end
    object Btn07: TButton
      Left = 24
      Top = 47
      Width = 41
      Height = 41
      Caption = '7'
      TabOrder = 7
      OnClick = Btn07Click
    end
    object Btn08: TButton
      Left = 71
      Top = 47
      Width = 41
      Height = 41
      Caption = '8'
      TabOrder = 8
      OnClick = Btn08Click
    end
    object Btn09: TButton
      Left = 118
      Top = 47
      Width = 41
      Height = 41
      Caption = '9'
      TabOrder = 9
      OnClick = Btn09Click
    end
    object BtnResultado: TButton
      Left = 118
      Top = 188
      Width = 41
      Height = 41
      Caption = '='
      TabOrder = 10
      OnClick = BtnResultadoClick
    end
    object BtnSoma: TButton
      Left = 165
      Top = 137
      Width = 41
      Height = 41
      Caption = '+'
      TabOrder = 11
      OnClick = BtnSomaClick
    end
    object Button1: TButton
      Left = 165
      Top = 94
      Width = 41
      Height = 41
      Caption = '-'
      TabOrder = 12
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 165
      Top = 47
      Width = 41
      Height = 41
      Caption = 'x'
      TabOrder = 13
      OnClick = Button2Click
    end
    object BtnDiv: TButton
      Left = 165
      Top = 188
      Width = 41
      Height = 41
      Caption = '/'
      TabOrder = 14
      OnClick = BtnDivClick
    end
    object edtVisor: TEdit
      Left = 24
      Top = 8
      Width = 182
      Height = 29
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = 21
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 15
    end
    object BtnClear: TButton
      Left = 71
      Top = 188
      Width = 41
      Height = 41
      Caption = 'C'
      TabOrder = 16
      OnClick = BtnClearClick
    end
  end
end
