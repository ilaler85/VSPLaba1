object FMain: TFMain
  Left = 999
  Top = 270
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = #1055#1088#1086#1074#1077#1088#1082#1072' '#1088#1072#1074#1085#1072' '#1083#1080' '#1089#1091#1084#1084#1072' '#1094#1080#1092#1088' '#1076#1083#1080#1085#1077' '#1090#1077#1082#1089#1090#1072
  ClientHeight = 177
  ClientWidth = 461
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object L1: TLabel
    Left = 8
    Top = 16
    Width = 224
    Height = 13
    Caption = #1042#1074#1077#1076#1080#1090#1077' '#1090#1077#1082#1089#1090' '#1089#1086#1089#1090#1086#1103#1097#1080#1081' '#1080#1079' '#1073#1091#1082#1074' '#1080#1083#1080' '#1094#1080#1092#1088
  end
  object Lout: TLabel
    Left = 16
    Top = 112
    Width = 3
    Height = 13
  end
  object input: TEdit
    Left = 8
    Top = 40
    Width = 449
    Height = 21
    TabOrder = 0
    OnKeyPress = inputKeyPress
  end
  object BProverka: TButton
    Left = 8
    Top = 64
    Width = 145
    Height = 41
    Caption = #1042#1099#1074#1077#1089#1090#1080' '#1086#1090#1074#1077#1090
    TabOrder = 1
    OnClick = BProverkaClick
  end
end
