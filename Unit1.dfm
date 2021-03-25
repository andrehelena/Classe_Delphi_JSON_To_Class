object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 589
  ClientWidth = 1102
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -21
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 25
  object Memo1: TMemo
    Left = 568
    Top = 8
    Width = 321
    Height = 573
    ScrollBars = ssBoth
    TabOrder = 0
  end
  object Edit1: TEdit
    Left = 8
    Top = 12
    Width = 337
    Height = 33
    TabOrder = 1
  end
  object Button1: TButton
    Left = 376
    Top = 12
    Width = 186
    Height = 85
    Caption = 'Popular classe CEP'
    TabOrder = 2
    OnClick = Button1Click
  end
  object Edit2: TEdit
    Left = 8
    Top = 64
    Width = 337
    Height = 33
    TabOrder = 3
  end
  object Edit3: TEdit
    Left = 8
    Top = 124
    Width = 337
    Height = 33
    TabOrder = 4
  end
  object Button2: TButton
    Left = 376
    Top = 116
    Width = 186
    Height = 85
    Caption = 'Mostrar conte'#250'do'
    TabOrder = 5
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 376
    Top = 220
    Width = 186
    Height = 85
    Caption = 'Limpa mem'#243'ria'
    TabOrder = 6
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 8
    Top = 163
    Width = 209
    Height = 85
    Caption = 'Popular classe CNPJ'
    TabOrder = 7
    OnClick = Button4Click
  end
  object Button5: TButton
    Left = 8
    Top = 254
    Width = 209
    Height = 85
    Caption = 'Mostrar conte'#250'do'
    TabOrder = 8
    OnClick = Button5Click
  end
  object Button6: TButton
    Left = 903
    Top = 68
    Width = 158
    Height = 89
    Caption = 'Consumir CEP'
    TabOrder = 9
    OnClick = Button6Click
  end
  object Edit4: TEdit
    Left = 903
    Top = 29
    Width = 191
    Height = 33
    TabOrder = 10
  end
  object Button7: TButton
    Left = 903
    Top = 236
    Width = 158
    Height = 89
    Caption = 'Consumir CNPJ'
    TabOrder = 11
    OnClick = Button7Click
  end
  object Edit5: TEdit
    Left = 903
    Top = 197
    Width = 191
    Height = 33
    TabOrder = 12
  end
  object Button8: TButton
    Left = 376
    Top = 311
    Width = 186
    Height = 85
    Caption = 'Limpa mem'#243'ria'
    TabOrder = 13
    OnClick = Button8Click
  end
  object RESTClient1: TRESTClient
    Accept = 'application/json, text/plain; q=0.9, text/html;q=0.8,'
    AcceptCharset = 'utf-8, *;q=0.8'
    BaseURL = 'https://viacep.com.br/ws/'
    Params = <>
    RaiseExceptionOn500 = False
    Left = 968
    Top = 352
  end
  object RESTRequest1: TRESTRequest
    Client = RESTClient1
    Params = <
      item
        Kind = pkURLSEGMENT
        Name = 'CEP'
        Options = [poAutoCreated]
      end>
    Resource = '{CEP}/json/'
    Response = RESTResponse1
    SynchronizedEvents = False
    Left = 968
    Top = 416
  end
  object RESTResponse1: TRESTResponse
    ContentType = 'text/html'
    Left = 968
    Top = 480
  end
end
