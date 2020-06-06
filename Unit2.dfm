object Form2: TForm2
  Left = 0
  Top = 0
  Caption = 'Form2'
  ClientHeight = 730
  ClientWidth = 1350
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  WindowState = wsMaximized
  OnResize = FormResize
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 233
    Height = 730
    Align = alLeft
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label5: TLabel
      Left = 136
      Top = 352
      Width = 58
      Height = 13
      Caption = 'antrian.wav'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label6: TLabel
      Left = 136
      Top = 400
      Width = 56
      Height = 13
      Caption = 'putarnomor'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label7: TLabel
      Left = 136
      Top = 416
      Width = 61
      Height = 13
      Caption = 'counter.wav'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label8: TLabel
      Left = 136
      Top = 368
      Width = 25
      Height = 13
      Caption = 'ratus'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label9: TLabel
      Left = 136
      Top = 384
      Width = 26
      Height = 13
      Caption = 'puluh'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label10: TLabel
      Left = 136
      Top = 444
      Width = 55
      Height = 19
      Caption = 'Label10'
    end
    object Panel3: TPanel
      Left = 1
      Top = 1
      Width = 231
      Height = 146
      Align = alTop
      Caption = '00:00:00'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -53
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object MediaPlayer1: TMediaPlayer
      Left = 9
      Top = 476
      Width = 85
      Height = 30
      VisibleButtons = [btPlay, btPause, btStop]
      AutoOpen = True
      DoubleBuffered = True
      FileName = 'D:\My Projects\Antrian\Win32\Debug\wav\antrian.wav'
      ParentDoubleBuffered = False
      TabOrder = 1
    end
    object ProgressBarAntri: TProgressBar
      Left = 9
      Top = 355
      Width = 121
      Height = 10
      TabOrder = 2
    end
    object ProgressBarPutarNomor: TProgressBar
      Left = 9
      Top = 403
      Width = 121
      Height = 10
      TabOrder = 3
    end
    object ProgressBarCounter: TProgressBar
      Left = 9
      Top = 419
      Width = 121
      Height = 10
      TabOrder = 4
    end
    object SpinEdit1: TSpinEdit
      Left = 9
      Top = 441
      Width = 121
      Height = 29
      MaxValue = 0
      MinValue = 0
      TabOrder = 5
      Value = 0
    end
    object ProgressBarRatus: TProgressBar
      Left = 9
      Top = 371
      Width = 121
      Height = 10
      TabOrder = 6
    end
    object ProgressBarPuluh: TProgressBar
      Left = 9
      Top = 387
      Width = 121
      Height = 10
      TabOrder = 7
    end
    object Calendar1: TCalendar
      Left = 1
      Top = 147
      Width = 231
      Height = 192
      Align = alTop
      StartOfWeek = 0
      TabOrder = 8
      ExplicitLeft = 0
      ExplicitTop = 153
      ExplicitWidth = 281
    end
  end
  object Panel2: TPanel
    Left = 233
    Top = 0
    Width = 1117
    Height = 730
    Align = alClient
    TabOrder = 1
    object Panel4: TPanel
      Left = 1
      Top = 1
      Width = 1115
      Height = 364
      Align = alTop
      TabOrder = 0
      object Panel6: TPanel
        Left = 529
        Top = 1
        Width = 585
        Height = 362
        Align = alClient
        TabOrder = 0
        object Label2: TLabel
          Left = 1
          Top = 57
          Width = 583
          Height = 241
          Align = alTop
          Alignment = taCenter
          Caption = '0'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -200
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          ExplicitWidth = 109
        end
        object Panel12: TPanel
          Left = 1
          Top = 1
          Width = 583
          Height = 56
          Align = alTop
          Caption = 'MEJA 2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -21
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
        end
        object Panel16: TPanel
          Left = 1
          Top = 294
          Width = 583
          Height = 67
          Align = alBottom
          TabOrder = 1
          object Panel17: TPanel
            Left = 1
            Top = 1
            Width = 581
            Height = 24
            Align = alTop
            BevelOuter = bvNone
            Caption = 'Meja 2'
            Color = clGradientActiveCaption
            ParentBackground = False
            TabOrder = 0
          end
          object Button3: TButton
            Left = 5
            Top = 31
            Width = 75
            Height = 25
            Caption = 'Panggil'
            TabOrder = 1
            OnClick = Button3Click
          end
          object Button4: TButton
            Left = 86
            Top = 31
            Width = 75
            Height = 25
            Caption = 'Ulang'
            TabOrder = 2
            OnClick = Button4Click
          end
        end
      end
      object Panel8: TPanel
        Left = 1
        Top = 1
        Width = 528
        Height = 362
        Align = alLeft
        TabOrder = 1
        object Label1: TLabel
          Left = 1
          Top = 57
          Width = 526
          Height = 237
          Align = alClient
          Alignment = taCenter
          Caption = '0'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -200
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          ExplicitWidth = 109
          ExplicitHeight = 241
        end
        object Panel10: TPanel
          Left = 1
          Top = 1
          Width = 526
          Height = 56
          Align = alTop
          Caption = 'MEJA 1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -21
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
        end
        object Panel14: TPanel
          Left = 1
          Top = 294
          Width = 526
          Height = 67
          Align = alBottom
          TabOrder = 1
          object Panel15: TPanel
            Left = 1
            Top = 1
            Width = 524
            Height = 24
            Align = alTop
            BevelOuter = bvNone
            Caption = 'Meja 1'
            Color = clGradientActiveCaption
            ParentBackground = False
            TabOrder = 0
          end
          object Button1: TButton
            Left = 3
            Top = 31
            Width = 75
            Height = 25
            Caption = 'Panggil'
            TabOrder = 1
            OnClick = Button1Click
          end
          object Button2: TButton
            Left = 84
            Top = 31
            Width = 75
            Height = 25
            Caption = 'Ulang'
            TabOrder = 2
            OnClick = Button2Click
          end
        end
      end
    end
    object Panel5: TPanel
      Left = 1
      Top = 365
      Width = 1115
      Height = 364
      Align = alClient
      TabOrder = 1
      object Panel7: TPanel
        Left = 529
        Top = 1
        Width = 585
        Height = 362
        Align = alClient
        TabOrder = 0
        object Label4: TLabel
          Left = 1
          Top = 57
          Width = 583
          Height = 241
          Align = alTop
          Alignment = taCenter
          Caption = '0'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -200
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          ExplicitWidth = 109
        end
        object Panel13: TPanel
          Left = 1
          Top = 1
          Width = 583
          Height = 56
          Align = alTop
          Caption = 'MEJA 4'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -21
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
        end
        object Panel20: TPanel
          Left = 1
          Top = 294
          Width = 583
          Height = 67
          Align = alBottom
          TabOrder = 1
          object Panel21: TPanel
            Left = 1
            Top = 1
            Width = 581
            Height = 24
            Align = alTop
            BevelOuter = bvNone
            Caption = 'Meja 4'
            Color = clGradientActiveCaption
            ParentBackground = False
            TabOrder = 0
          end
          object Button7: TButton
            Left = 86
            Top = 31
            Width = 75
            Height = 25
            Caption = 'Ulang'
            TabOrder = 1
            OnClick = Button7Click
          end
          object Button8: TButton
            Left = 5
            Top = 31
            Width = 75
            Height = 25
            Caption = 'Panggil'
            TabOrder = 2
            OnClick = Button8Click
          end
        end
      end
      object Panel9: TPanel
        Left = 1
        Top = 1
        Width = 528
        Height = 362
        Align = alLeft
        TabOrder = 1
        object Label3: TLabel
          Left = 1
          Top = 57
          Width = 526
          Height = 241
          Align = alTop
          Alignment = taCenter
          Caption = '0'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -200
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          ExplicitWidth = 109
        end
        object Panel11: TPanel
          Left = 1
          Top = 1
          Width = 526
          Height = 56
          Align = alTop
          Caption = 'MEJA 3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -21
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
        end
        object Panel18: TPanel
          Left = 1
          Top = 294
          Width = 526
          Height = 67
          Align = alBottom
          TabOrder = 1
          object Panel19: TPanel
            Left = 1
            Top = 1
            Width = 524
            Height = 24
            Align = alTop
            BevelOuter = bvNone
            Caption = 'Meja 3'
            Color = clGradientActiveCaption
            ParentBackground = False
            TabOrder = 0
          end
          object Button5: TButton
            Left = 3
            Top = 31
            Width = 75
            Height = 25
            Caption = 'Panggil'
            TabOrder = 1
            OnClick = Button5Click
          end
          object Button6: TButton
            Left = 84
            Top = 31
            Width = 75
            Height = 25
            Caption = 'Ulang'
            TabOrder = 2
            OnClick = Button6Click
          end
        end
      end
    end
  end
  object Timer1: TTimer
    Interval = 10
    OnTimer = Timer1Timer
    Left = 249
    Top = 193
  end
end
