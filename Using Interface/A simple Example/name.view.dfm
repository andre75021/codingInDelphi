object frmMain: TfrmMain
  Left = 0
  Top = 0
  Caption = 'Simple example - Interfaces'
  ClientHeight = 126
  ClientWidth = 353
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
    Left = 8
    Top = 8
    Width = 51
    Height = 13
    Caption = 'First Name'
  end
  object Label2: TLabel
    Left = 8
    Top = 53
    Width = 50
    Height = 13
    Caption = 'Last Name'
  end
  object edtFirstName: TEdit
    Left = 8
    Top = 26
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object edtLastName: TEdit
    Left = 8
    Top = 72
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object btnProcess: TButton
    Left = 54
    Top = 99
    Width = 75
    Height = 25
    Caption = 'Process'
    TabOrder = 2
    OnClick = btnProcessClick
  end
  object memOut: TMemo
    Left = 160
    Top = 8
    Width = 185
    Height = 85
    TabOrder = 3
  end
end
