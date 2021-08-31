object Form1: TForm1
  Left = 299
  Height = 211
  Top = 256
  Width = 332
  Anchors = []
  BorderStyle = bsNone
  Caption = 'sdtools'
  ClientHeight = 211
  ClientWidth = 332
  Color = 9327671
  OnClose = FormClose
  OnCreate = FormCreate
  ParentBiDiMode = False
  Position = poWorkAreaCenter
  ShowHint = True
  ShowInTaskBar = stNever
  LCLVersion = '7.5'
  object DTAnalogClock1: TDTAnalogClock
    Left = 8
    Height = 120
    Hint = 'Thơif gian hiện tại'
    Top = 32
    Width = 120
    Enabled = True
  end
  object mode: TBCComboBox
    Left = 144
    Height = 30
    Hint = 'Chế độ'#13#10'tắt máy (shutdown)'#13#10'khởi động lại (restart)'#13#10'đăng xuất (logoff)'
    Top = 32
    Width = 176
    Items.Strings = (
      'shutdown'
      'restart'
      'logoff'
    )
    ItemIndex = -1
    ArrowSize = 8
    ArrowWidth = 16
    FocusBorderOpacity = 0
    DropDownBorderColor = clBlack
    DropDownBorderSize = 0
    DropDownColor = 6897449
    DropDownFontColor = clWhite
    DropDownHighlight = 16554286
    DropDownFontHighlight = 6897449
    GlobalOpacity = 255
    MemoryUsage = bmuHigh
    Rounding.RoundX = 0
    Rounding.RoundY = 0
    StateClicked.Background.Color = 11889734
    StateClicked.Background.Gradient1.StartColor = 16577765
    StateClicked.Background.Gradient1.EndColor = 16180676
    StateClicked.Background.Gradient1.GradientType = gtLinear
    StateClicked.Background.Gradient1.Point1XPercent = 0
    StateClicked.Background.Gradient1.Point1YPercent = 0
    StateClicked.Background.Gradient1.Point2XPercent = 0
    StateClicked.Background.Gradient1.Point2YPercent = 100
    StateClicked.Background.Gradient2.StartColor = 15716760
    StateClicked.Background.Gradient2.EndColor = 14398312
    StateClicked.Background.Gradient2.GradientType = gtLinear
    StateClicked.Background.Gradient2.Point1XPercent = 0
    StateClicked.Background.Gradient2.Point1YPercent = 0
    StateClicked.Background.Gradient2.Point2XPercent = 0
    StateClicked.Background.Gradient2.Point2YPercent = 100
    StateClicked.Background.Gradient1EndPercent = 55
    StateClicked.Background.Style = bbsColor
    StateClicked.Border.Color = 10048512
    StateClicked.Border.LightColor = clBlack
    StateClicked.Border.LightOpacity = 100
    StateClicked.Border.Style = bboNone
    StateClicked.FontEx.Color = clWhite
    StateClicked.FontEx.FontQuality = fqSystemClearType
    StateClicked.FontEx.Shadow = False
    StateClicked.FontEx.ShadowRadius = 5
    StateClicked.FontEx.ShadowOffsetX = 5
    StateClicked.FontEx.ShadowOffsetY = 5
    StateClicked.FontEx.Style = []
    StateHover.Background.Color = 11889734
    StateHover.Background.Gradient1.StartColor = 16643818
    StateHover.Background.Gradient1.EndColor = 16576729
    StateHover.Background.Gradient1.GradientType = gtLinear
    StateHover.Background.Gradient1.Point1XPercent = 0
    StateHover.Background.Gradient1.Point1YPercent = 0
    StateHover.Background.Gradient1.Point2XPercent = 0
    StateHover.Background.Gradient1.Point2YPercent = 100
    StateHover.Background.Gradient2.StartColor = 16639678
    StateHover.Background.Gradient2.EndColor = 16112039
    StateHover.Background.Gradient2.GradientType = gtLinear
    StateHover.Background.Gradient2.Point1XPercent = 0
    StateHover.Background.Gradient2.Point1YPercent = 0
    StateHover.Background.Gradient2.Point2XPercent = 0
    StateHover.Background.Gradient2.Point2YPercent = 100
    StateHover.Background.Gradient1EndPercent = 50
    StateHover.Background.Style = bbsColor
    StateHover.Border.Color = 14120960
    StateHover.Border.LightOpacity = 200
    StateHover.Border.Style = bboNone
    StateHover.FontEx.Color = clWhite
    StateHover.FontEx.FontQuality = fqSystemClearType
    StateHover.FontEx.Shadow = False
    StateHover.FontEx.ShadowRadius = 5
    StateHover.FontEx.ShadowOffsetX = 5
    StateHover.FontEx.ShadowOffsetY = 5
    StateHover.FontEx.Style = []
    StateNormal.Background.Color = 6897449
    StateNormal.Background.Gradient1.StartColor = 15921906
    StateNormal.Background.Gradient1.EndColor = 15461355
    StateNormal.Background.Gradient1.GradientType = gtLinear
    StateNormal.Background.Gradient1.Point1XPercent = 0
    StateNormal.Background.Gradient1.Point1YPercent = 0
    StateNormal.Background.Gradient1.Point2XPercent = 0
    StateNormal.Background.Gradient1.Point2YPercent = 100
    StateNormal.Background.Gradient2.StartColor = 14540253
    StateNormal.Background.Gradient2.EndColor = 13619151
    StateNormal.Background.Gradient2.GradientType = gtLinear
    StateNormal.Background.Gradient2.Point1XPercent = 0
    StateNormal.Background.Gradient2.Point1YPercent = 0
    StateNormal.Background.Gradient2.Point2XPercent = 0
    StateNormal.Background.Gradient2.Point2YPercent = 100
    StateNormal.Background.Gradient1EndPercent = 50
    StateNormal.Background.Style = bbsColor
    StateNormal.Border.Color = 11382189
    StateNormal.Border.LightOpacity = 200
    StateNormal.Border.Style = bboNone
    StateNormal.FontEx.Color = clWhite
    StateNormal.FontEx.FontQuality = fqSystemClearType
    StateNormal.FontEx.Shadow = False
    StateNormal.FontEx.ShadowRadius = 5
    StateNormal.FontEx.ShadowOffsetX = 5
    StateNormal.FontEx.ShadowOffsetY = 5
    StateNormal.FontEx.Style = []
    StaticButton = False
    TabOrder = 1
  end
  object start: TBCButton
    Left = 144
    Height = 25
    Hint = 'Bắt đầu quá trình hẹn giờ tắt máy'
    Top = 112
    Width = 80
    StateClicked.Background.Color = 11889734
    StateClicked.Background.Gradient1.StartColor = 16577765
    StateClicked.Background.Gradient1.EndColor = 16180676
    StateClicked.Background.Gradient1.GradientType = gtLinear
    StateClicked.Background.Gradient1.Point1XPercent = 0
    StateClicked.Background.Gradient1.Point1YPercent = 0
    StateClicked.Background.Gradient1.Point2XPercent = 0
    StateClicked.Background.Gradient1.Point2YPercent = 100
    StateClicked.Background.Gradient2.StartColor = 15716760
    StateClicked.Background.Gradient2.EndColor = 14398312
    StateClicked.Background.Gradient2.GradientType = gtLinear
    StateClicked.Background.Gradient2.Point1XPercent = 0
    StateClicked.Background.Gradient2.Point1YPercent = 0
    StateClicked.Background.Gradient2.Point2XPercent = 0
    StateClicked.Background.Gradient2.Point2YPercent = 100
    StateClicked.Background.Gradient1EndPercent = 55
    StateClicked.Background.Style = bbsColor
    StateClicked.Border.Color = 10048512
    StateClicked.Border.LightColor = clBlack
    StateClicked.Border.LightOpacity = 100
    StateClicked.Border.Style = bboNone
    StateClicked.FontEx.Color = clWhite
    StateClicked.FontEx.FontQuality = fqSystemClearType
    StateClicked.FontEx.Shadow = False
    StateClicked.FontEx.ShadowRadius = 5
    StateClicked.FontEx.ShadowOffsetX = 5
    StateClicked.FontEx.ShadowOffsetY = 5
    StateClicked.FontEx.Style = []
    StateHover.Background.Color = 11889734
    StateHover.Background.Gradient1.StartColor = 16643818
    StateHover.Background.Gradient1.EndColor = 16576729
    StateHover.Background.Gradient1.GradientType = gtLinear
    StateHover.Background.Gradient1.Point1XPercent = 0
    StateHover.Background.Gradient1.Point1YPercent = 0
    StateHover.Background.Gradient1.Point2XPercent = 0
    StateHover.Background.Gradient1.Point2YPercent = 100
    StateHover.Background.Gradient2.StartColor = 16639678
    StateHover.Background.Gradient2.EndColor = 16112039
    StateHover.Background.Gradient2.GradientType = gtLinear
    StateHover.Background.Gradient2.Point1XPercent = 0
    StateHover.Background.Gradient2.Point1YPercent = 0
    StateHover.Background.Gradient2.Point2XPercent = 0
    StateHover.Background.Gradient2.Point2YPercent = 100
    StateHover.Background.Gradient1EndPercent = 50
    StateHover.Background.Style = bbsColor
    StateHover.Border.Color = 14120960
    StateHover.Border.LightOpacity = 200
    StateHover.Border.Style = bboNone
    StateHover.FontEx.Color = clWhite
    StateHover.FontEx.FontQuality = fqSystemClearType
    StateHover.FontEx.Shadow = False
    StateHover.FontEx.ShadowRadius = 5
    StateHover.FontEx.ShadowOffsetX = 5
    StateHover.FontEx.ShadowOffsetY = 5
    StateHover.FontEx.Style = []
    StateNormal.Background.Color = 6897449
    StateNormal.Background.Gradient1.StartColor = 15921906
    StateNormal.Background.Gradient1.EndColor = 15461355
    StateNormal.Background.Gradient1.GradientType = gtLinear
    StateNormal.Background.Gradient1.Point1XPercent = 0
    StateNormal.Background.Gradient1.Point1YPercent = 0
    StateNormal.Background.Gradient1.Point2XPercent = 0
    StateNormal.Background.Gradient1.Point2YPercent = 100
    StateNormal.Background.Gradient2.StartColor = 14540253
    StateNormal.Background.Gradient2.EndColor = 13619151
    StateNormal.Background.Gradient2.GradientType = gtLinear
    StateNormal.Background.Gradient2.Point1XPercent = 0
    StateNormal.Background.Gradient2.Point1YPercent = 0
    StateNormal.Background.Gradient2.Point2XPercent = 0
    StateNormal.Background.Gradient2.Point2YPercent = 100
    StateNormal.Background.Gradient1EndPercent = 50
    StateNormal.Background.Style = bbsColor
    StateNormal.Border.Color = 11382189
    StateNormal.Border.LightOpacity = 200
    StateNormal.Border.Style = bboNone
    StateNormal.FontEx.Color = clWhite
    StateNormal.FontEx.FontQuality = fqSystemClearType
    StateNormal.FontEx.Shadow = False
    StateNormal.FontEx.ShadowRadius = 5
    StateNormal.FontEx.ShadowOffsetX = 5
    StateNormal.FontEx.ShadowOffsetY = 5
    StateNormal.FontEx.Style = []
    Caption = 'start'
    Color = 6897449
    DropDownWidth = 16
    DropDownArrowSize = 8
    GlobalOpacity = 255
    OnClick = startclick
    ParentColor = False
    Rounding.RoundX = 0
    Rounding.RoundY = 0
    RoundingDropDown.RoundX = 1
    RoundingDropDown.RoundY = 1
    TextApplyGlobalOpacity = False
    MemoryUsage = bmuHigh
  end
  object clock: TBCLabel
    Left = 8
    Height = 32
    Hint = 'Thời gian hiện tại'
    Top = 168
    Width = 120
    AutoSize = False
    Background.Gradient1.StartColor = clWhite
    Background.Gradient1.EndColor = clBlack
    Background.Gradient1.GradientType = gtLinear
    Background.Gradient1.Point1XPercent = 0
    Background.Gradient1.Point1YPercent = 0
    Background.Gradient1.Point2XPercent = 0
    Background.Gradient1.Point2YPercent = 100
    Background.Gradient2.StartColor = clWhite
    Background.Gradient2.EndColor = clBlack
    Background.Gradient2.GradientType = gtLinear
    Background.Gradient2.Point1XPercent = 0
    Background.Gradient2.Point1YPercent = 0
    Background.Gradient2.Point2XPercent = 0
    Background.Gradient2.Point2YPercent = 100
    Background.Gradient1EndPercent = 35
    Background.Style = bbsClear
    Border.Style = bboNone
    Caption = 'time'
    FontEx.Color = clWhite
    FontEx.FontQuality = fqSystemClearType
    FontEx.Height = 20
    FontEx.Shadow = True
    FontEx.ShadowRadius = 5
    FontEx.ShadowOffsetX = 5
    FontEx.ShadowOffsetY = 5
    FontEx.Style = []
    Rounding.RoundX = 1
    Rounding.RoundY = 1
    ShowHint = True
  end
  object BCPanel1: TBCPanel
    Left = 0
    Height = 20
    Top = 0
    Width = 332
    Align = alTop
    Background.Color = 6897449
    Background.Gradient1.StartColor = 15722194
    Background.Gradient1.EndColor = 13137169
    Background.Gradient1.GradientType = gtLinear
    Background.Gradient1.Point1XPercent = 0
    Background.Gradient1.Point1YPercent = 0
    Background.Gradient1.Point2XPercent = 0
    Background.Gradient1.Point2YPercent = 100
    Background.Gradient2.StartColor = 15722194
    Background.Gradient2.EndColor = 13137169
    Background.Gradient2.GradientType = gtLinear
    Background.Gradient2.Point1XPercent = 0
    Background.Gradient2.Point1YPercent = 0
    Background.Gradient2.Point2XPercent = 0
    Background.Gradient2.Point2YPercent = 100
    Background.Gradient1EndPercent = 35
    Background.Style = bbsColor
    BevelInner = bvNone
    BevelOuter = bvNone
    BevelWidth = 1
    Border.Style = bboNone
    BorderBCStyle = bpsBorder
    FontEx.Color = clDefault
    FontEx.FontQuality = fqSystemClearType
    FontEx.Shadow = False
    FontEx.ShadowRadius = 5
    FontEx.ShadowOffsetX = 5
    FontEx.ShadowOffsetY = 5
    FontEx.Style = []
    ParentBackground = False
    Rounding.RoundX = 1
    Rounding.RoundY = 1
    TabOrder = 0
    OnMouseDown = BCPanel1MouseDown
    OnMouseMove = BCPanel1MouseMove
    OnMouseUp = BCPanel1MouseUp
    object BCButton4: TBCButton
      Left = 312
      Height = 20
      Hint = 'Thoát SDTools'
      Top = 0
      Width = 20
      Align = alRight
      StateClicked.Background.Color = 8421631
      StateClicked.Background.Gradient1.StartColor = 16577765
      StateClicked.Background.Gradient1.EndColor = 16180676
      StateClicked.Background.Gradient1.GradientType = gtLinear
      StateClicked.Background.Gradient1.Point1XPercent = 0
      StateClicked.Background.Gradient1.Point1YPercent = 0
      StateClicked.Background.Gradient1.Point2XPercent = 0
      StateClicked.Background.Gradient1.Point2YPercent = 100
      StateClicked.Background.Gradient2.StartColor = 15716760
      StateClicked.Background.Gradient2.EndColor = 14398312
      StateClicked.Background.Gradient2.GradientType = gtLinear
      StateClicked.Background.Gradient2.Point1XPercent = 0
      StateClicked.Background.Gradient2.Point1YPercent = 0
      StateClicked.Background.Gradient2.Point2XPercent = 0
      StateClicked.Background.Gradient2.Point2YPercent = 100
      StateClicked.Background.Gradient1EndPercent = 55
      StateClicked.Background.Style = bbsColor
      StateClicked.Border.Color = 10048512
      StateClicked.Border.LightColor = clBlack
      StateClicked.Border.LightOpacity = 100
      StateClicked.Border.Style = bboNone
      StateClicked.FontEx.Color = clWhite
      StateClicked.FontEx.FontQuality = fqSystemClearType
      StateClicked.FontEx.Shadow = False
      StateClicked.FontEx.ShadowRadius = 5
      StateClicked.FontEx.ShadowOffsetX = 5
      StateClicked.FontEx.ShadowOffsetY = 5
      StateClicked.FontEx.Style = []
      StateHover.Background.Color = clRed
      StateHover.Background.Gradient1.StartColor = 16643818
      StateHover.Background.Gradient1.EndColor = 16576729
      StateHover.Background.Gradient1.GradientType = gtLinear
      StateHover.Background.Gradient1.Point1XPercent = 0
      StateHover.Background.Gradient1.Point1YPercent = 0
      StateHover.Background.Gradient1.Point2XPercent = 0
      StateHover.Background.Gradient1.Point2YPercent = 100
      StateHover.Background.Gradient2.StartColor = 16639678
      StateHover.Background.Gradient2.EndColor = 16112039
      StateHover.Background.Gradient2.GradientType = gtLinear
      StateHover.Background.Gradient2.Point1XPercent = 0
      StateHover.Background.Gradient2.Point1YPercent = 0
      StateHover.Background.Gradient2.Point2XPercent = 0
      StateHover.Background.Gradient2.Point2YPercent = 100
      StateHover.Background.Gradient1EndPercent = 50
      StateHover.Background.Style = bbsColor
      StateHover.Border.Color = 14120960
      StateHover.Border.LightOpacity = 200
      StateHover.Border.Style = bboNone
      StateHover.FontEx.Color = clWhite
      StateHover.FontEx.FontQuality = fqSystemClearType
      StateHover.FontEx.Shadow = False
      StateHover.FontEx.ShadowRadius = 5
      StateHover.FontEx.ShadowOffsetX = 5
      StateHover.FontEx.ShadowOffsetY = 5
      StateHover.FontEx.Style = []
      StateNormal.Background.Color = 6897449
      StateNormal.Background.Gradient1.StartColor = 15921906
      StateNormal.Background.Gradient1.EndColor = 15461355
      StateNormal.Background.Gradient1.GradientType = gtLinear
      StateNormal.Background.Gradient1.Point1XPercent = 0
      StateNormal.Background.Gradient1.Point1YPercent = 0
      StateNormal.Background.Gradient1.Point2XPercent = 0
      StateNormal.Background.Gradient1.Point2YPercent = 100
      StateNormal.Background.Gradient2.StartColor = 14540253
      StateNormal.Background.Gradient2.EndColor = 13619151
      StateNormal.Background.Gradient2.GradientType = gtLinear
      StateNormal.Background.Gradient2.Point1XPercent = 0
      StateNormal.Background.Gradient2.Point1YPercent = 0
      StateNormal.Background.Gradient2.Point2XPercent = 0
      StateNormal.Background.Gradient2.Point2YPercent = 100
      StateNormal.Background.Gradient1EndPercent = 50
      StateNormal.Background.Style = bbsColor
      StateNormal.Border.Color = 11382189
      StateNormal.Border.LightOpacity = 200
      StateNormal.Border.Style = bboNone
      StateNormal.FontEx.Color = clWhite
      StateNormal.FontEx.FontQuality = fqSystemClearType
      StateNormal.FontEx.Height = 20
      StateNormal.FontEx.Shadow = False
      StateNormal.FontEx.ShadowRadius = 5
      StateNormal.FontEx.ShadowOffsetX = 5
      StateNormal.FontEx.ShadowOffsetY = 5
      StateNormal.FontEx.Style = []
      Caption = 'X'
      Color = clNone
      DropDownWidth = 16
      DropDownArrowSize = 8
      GlobalOpacity = 255
      OnClick = BCButton4Click
      ParentColor = False
      Rounding.RoundX = 0
      Rounding.RoundY = 0
      RoundingDropDown.RoundX = 1
      RoundingDropDown.RoundY = 1
      TextApplyGlobalOpacity = False
      MemoryUsage = bmuHigh
    end
    object start1: TBCButton
      Left = 0
      Height = 20
      Hint = 'Thông tinSdTools'
      Top = 0
      Width = 80
      Align = alLeft
      StateClicked.Background.Color = 11889734
      StateClicked.Background.Gradient1.StartColor = 16577765
      StateClicked.Background.Gradient1.EndColor = 16180676
      StateClicked.Background.Gradient1.GradientType = gtLinear
      StateClicked.Background.Gradient1.Point1XPercent = 0
      StateClicked.Background.Gradient1.Point1YPercent = 0
      StateClicked.Background.Gradient1.Point2XPercent = 0
      StateClicked.Background.Gradient1.Point2YPercent = 100
      StateClicked.Background.Gradient2.StartColor = 15716760
      StateClicked.Background.Gradient2.EndColor = 14398312
      StateClicked.Background.Gradient2.GradientType = gtLinear
      StateClicked.Background.Gradient2.Point1XPercent = 0
      StateClicked.Background.Gradient2.Point1YPercent = 0
      StateClicked.Background.Gradient2.Point2XPercent = 0
      StateClicked.Background.Gradient2.Point2YPercent = 100
      StateClicked.Background.Gradient1EndPercent = 55
      StateClicked.Background.Style = bbsColor
      StateClicked.Border.Color = 10048512
      StateClicked.Border.LightColor = clBlack
      StateClicked.Border.LightOpacity = 100
      StateClicked.Border.Style = bboNone
      StateClicked.FontEx.Color = clWhite
      StateClicked.FontEx.FontQuality = fqSystemClearType
      StateClicked.FontEx.Shadow = False
      StateClicked.FontEx.ShadowRadius = 5
      StateClicked.FontEx.ShadowOffsetX = 5
      StateClicked.FontEx.ShadowOffsetY = 5
      StateClicked.FontEx.Style = []
      StateHover.Background.Color = 6897449
      StateHover.Background.Gradient1.StartColor = 16643818
      StateHover.Background.Gradient1.EndColor = 16576729
      StateHover.Background.Gradient1.GradientType = gtLinear
      StateHover.Background.Gradient1.Point1XPercent = 0
      StateHover.Background.Gradient1.Point1YPercent = 0
      StateHover.Background.Gradient1.Point2XPercent = 0
      StateHover.Background.Gradient1.Point2YPercent = 100
      StateHover.Background.Gradient2.StartColor = 16639678
      StateHover.Background.Gradient2.EndColor = 16112039
      StateHover.Background.Gradient2.GradientType = gtLinear
      StateHover.Background.Gradient2.Point1XPercent = 0
      StateHover.Background.Gradient2.Point1YPercent = 0
      StateHover.Background.Gradient2.Point2XPercent = 0
      StateHover.Background.Gradient2.Point2YPercent = 100
      StateHover.Background.Gradient1EndPercent = 50
      StateHover.Background.Style = bbsColor
      StateHover.Border.Color = 14120960
      StateHover.Border.LightOpacity = 200
      StateHover.Border.Style = bboNone
      StateHover.FontEx.Color = clBlack
      StateHover.FontEx.FontQuality = fqSystemClearType
      StateHover.FontEx.Shadow = False
      StateHover.FontEx.ShadowRadius = 5
      StateHover.FontEx.ShadowOffsetX = 5
      StateHover.FontEx.ShadowOffsetY = 5
      StateHover.FontEx.Style = []
      StateNormal.Background.Color = 6897449
      StateNormal.Background.Gradient1.StartColor = 15921906
      StateNormal.Background.Gradient1.EndColor = 15461355
      StateNormal.Background.Gradient1.GradientType = gtLinear
      StateNormal.Background.Gradient1.Point1XPercent = 0
      StateNormal.Background.Gradient1.Point1YPercent = 0
      StateNormal.Background.Gradient1.Point2XPercent = 0
      StateNormal.Background.Gradient1.Point2YPercent = 100
      StateNormal.Background.Gradient2.StartColor = 14540253
      StateNormal.Background.Gradient2.EndColor = 13619151
      StateNormal.Background.Gradient2.GradientType = gtLinear
      StateNormal.Background.Gradient2.Point1XPercent = 0
      StateNormal.Background.Gradient2.Point1YPercent = 0
      StateNormal.Background.Gradient2.Point2XPercent = 0
      StateNormal.Background.Gradient2.Point2YPercent = 100
      StateNormal.Background.Gradient1EndPercent = 50
      StateNormal.Background.Style = bbsColor
      StateNormal.Border.Color = 11382189
      StateNormal.Border.LightOpacity = 200
      StateNormal.Border.Style = bboNone
      StateNormal.FontEx.Color = clWhite
      StateNormal.FontEx.FontQuality = fqSystemClearType
      StateNormal.FontEx.Shadow = False
      StateNormal.FontEx.ShadowRadius = 5
      StateNormal.FontEx.ShadowOffsetX = 5
      StateNormal.FontEx.ShadowOffsetY = 5
      StateNormal.FontEx.Style = []
      Caption = 'SDTools-V2.5'
      Color = 6897449
      DropDownWidth = 16
      DropDownArrowSize = 8
      GlobalOpacity = 255
      OnClick = start1Click
      ParentColor = False
      Rounding.RoundX = 0
      Rounding.RoundY = 0
      RoundingDropDown.RoundX = 1
      RoundingDropDown.RoundY = 1
      TextApplyGlobalOpacity = False
      MemoryUsage = bmuHigh
    end
  end
  object cancel: TBCButton
    Left = 240
    Height = 25
    Hint = 'Hủy quá trình hẹn giờ tắt máy'
    Top = 112
    Width = 80
    StateClicked.Background.Color = 11889734
    StateClicked.Background.Gradient1.StartColor = 16577765
    StateClicked.Background.Gradient1.EndColor = 16180676
    StateClicked.Background.Gradient1.GradientType = gtLinear
    StateClicked.Background.Gradient1.Point1XPercent = 0
    StateClicked.Background.Gradient1.Point1YPercent = 0
    StateClicked.Background.Gradient1.Point2XPercent = 0
    StateClicked.Background.Gradient1.Point2YPercent = 100
    StateClicked.Background.Gradient2.StartColor = 15716760
    StateClicked.Background.Gradient2.EndColor = 14398312
    StateClicked.Background.Gradient2.GradientType = gtLinear
    StateClicked.Background.Gradient2.Point1XPercent = 0
    StateClicked.Background.Gradient2.Point1YPercent = 0
    StateClicked.Background.Gradient2.Point2XPercent = 0
    StateClicked.Background.Gradient2.Point2YPercent = 100
    StateClicked.Background.Gradient1EndPercent = 55
    StateClicked.Background.Style = bbsColor
    StateClicked.Border.Color = 10048512
    StateClicked.Border.LightColor = clBlack
    StateClicked.Border.LightOpacity = 100
    StateClicked.Border.Style = bboNone
    StateClicked.FontEx.Color = clWhite
    StateClicked.FontEx.FontQuality = fqSystemClearType
    StateClicked.FontEx.Shadow = False
    StateClicked.FontEx.ShadowRadius = 5
    StateClicked.FontEx.ShadowOffsetX = 5
    StateClicked.FontEx.ShadowOffsetY = 5
    StateClicked.FontEx.Style = []
    StateHover.Background.Color = 11889734
    StateHover.Background.Gradient1.StartColor = 16643818
    StateHover.Background.Gradient1.EndColor = 16576729
    StateHover.Background.Gradient1.GradientType = gtLinear
    StateHover.Background.Gradient1.Point1XPercent = 0
    StateHover.Background.Gradient1.Point1YPercent = 0
    StateHover.Background.Gradient1.Point2XPercent = 0
    StateHover.Background.Gradient1.Point2YPercent = 100
    StateHover.Background.Gradient2.StartColor = 16639678
    StateHover.Background.Gradient2.EndColor = 16112039
    StateHover.Background.Gradient2.GradientType = gtLinear
    StateHover.Background.Gradient2.Point1XPercent = 0
    StateHover.Background.Gradient2.Point1YPercent = 0
    StateHover.Background.Gradient2.Point2XPercent = 0
    StateHover.Background.Gradient2.Point2YPercent = 100
    StateHover.Background.Gradient1EndPercent = 50
    StateHover.Background.Style = bbsColor
    StateHover.Border.Color = 14120960
    StateHover.Border.LightOpacity = 200
    StateHover.Border.Style = bboNone
    StateHover.FontEx.Color = clWhite
    StateHover.FontEx.FontQuality = fqSystemClearType
    StateHover.FontEx.Shadow = False
    StateHover.FontEx.ShadowRadius = 5
    StateHover.FontEx.ShadowOffsetX = 5
    StateHover.FontEx.ShadowOffsetY = 5
    StateHover.FontEx.Style = []
    StateNormal.Background.Color = 6897449
    StateNormal.Background.Gradient1.StartColor = 15921906
    StateNormal.Background.Gradient1.EndColor = 15461355
    StateNormal.Background.Gradient1.GradientType = gtLinear
    StateNormal.Background.Gradient1.Point1XPercent = 0
    StateNormal.Background.Gradient1.Point1YPercent = 0
    StateNormal.Background.Gradient1.Point2XPercent = 0
    StateNormal.Background.Gradient1.Point2YPercent = 100
    StateNormal.Background.Gradient2.StartColor = 14540253
    StateNormal.Background.Gradient2.EndColor = 13619151
    StateNormal.Background.Gradient2.GradientType = gtLinear
    StateNormal.Background.Gradient2.Point1XPercent = 0
    StateNormal.Background.Gradient2.Point1YPercent = 0
    StateNormal.Background.Gradient2.Point2XPercent = 0
    StateNormal.Background.Gradient2.Point2YPercent = 100
    StateNormal.Background.Gradient1EndPercent = 50
    StateNormal.Background.Style = bbsColor
    StateNormal.Border.Color = 11382189
    StateNormal.Border.LightOpacity = 200
    StateNormal.Border.Style = bboNone
    StateNormal.FontEx.Color = clWhite
    StateNormal.FontEx.FontQuality = fqSystemClearType
    StateNormal.FontEx.Shadow = False
    StateNormal.FontEx.ShadowRadius = 5
    StateNormal.FontEx.ShadowOffsetX = 5
    StateNormal.FontEx.ShadowOffsetY = 5
    StateNormal.FontEx.Style = []
    Caption = 'cancel'
    Color = clNone
    DropDownWidth = 16
    DropDownArrowSize = 8
    Enabled = False
    GlobalOpacity = 255
    OnClick = cancelClick
    ParentColor = False
    Rounding.RoundX = 0
    Rounding.RoundY = 0
    RoundingDropDown.RoundX = 1
    RoundingDropDown.RoundY = 1
    TextApplyGlobalOpacity = False
    MemoryUsage = bmuHigh
  end
  object hour: TBCComboBox
    Left = 144
    Height = 30
    Hint = 'Giờ tắt máy'
    Top = 72
    Width = 80
    Items.Strings = (
      '1'
      '2'
      '3'
      '4'
      '5'
      '6'
      '7'
      '8'
      '9'
      '10'
      '11'
      '12'
      '13'
      '14'
      '15'
      '16'
      '17'
      '18'
      '19'
      '20'
      '21'
      '22'
      '23'
      '00'
    )
    ItemIndex = -1
    ArrowSize = 8
    ArrowWidth = 16
    FocusBorderOpacity = 0
    DropDownBorderColor = clBlack
    DropDownColor = 6897449
    DropDownFontColor = clWhite
    DropDownHighlight = 16554286
    DropDownFontHighlight = 6897449
    GlobalOpacity = 255
    MemoryUsage = bmuHigh
    Rounding.RoundX = 0
    Rounding.RoundY = 0
    StateClicked.Background.Color = 11889734
    StateClicked.Background.Gradient1.StartColor = 16577765
    StateClicked.Background.Gradient1.EndColor = 16180676
    StateClicked.Background.Gradient1.GradientType = gtLinear
    StateClicked.Background.Gradient1.Point1XPercent = 0
    StateClicked.Background.Gradient1.Point1YPercent = 0
    StateClicked.Background.Gradient1.Point2XPercent = 0
    StateClicked.Background.Gradient1.Point2YPercent = 100
    StateClicked.Background.Gradient2.StartColor = 15716760
    StateClicked.Background.Gradient2.EndColor = 14398312
    StateClicked.Background.Gradient2.GradientType = gtLinear
    StateClicked.Background.Gradient2.Point1XPercent = 0
    StateClicked.Background.Gradient2.Point1YPercent = 0
    StateClicked.Background.Gradient2.Point2XPercent = 0
    StateClicked.Background.Gradient2.Point2YPercent = 100
    StateClicked.Background.Gradient1EndPercent = 55
    StateClicked.Background.Style = bbsColor
    StateClicked.Border.Color = 10048512
    StateClicked.Border.LightColor = clBlack
    StateClicked.Border.LightOpacity = 100
    StateClicked.Border.Style = bboNone
    StateClicked.FontEx.Color = clWhite
    StateClicked.FontEx.FontQuality = fqSystemClearType
    StateClicked.FontEx.Shadow = False
    StateClicked.FontEx.ShadowRadius = 5
    StateClicked.FontEx.ShadowOffsetX = 5
    StateClicked.FontEx.ShadowOffsetY = 5
    StateClicked.FontEx.Style = []
    StateHover.Background.Color = 11889734
    StateHover.Background.Gradient1.StartColor = 16643818
    StateHover.Background.Gradient1.EndColor = 16576729
    StateHover.Background.Gradient1.GradientType = gtLinear
    StateHover.Background.Gradient1.Point1XPercent = 0
    StateHover.Background.Gradient1.Point1YPercent = 0
    StateHover.Background.Gradient1.Point2XPercent = 0
    StateHover.Background.Gradient1.Point2YPercent = 100
    StateHover.Background.Gradient2.StartColor = 16639678
    StateHover.Background.Gradient2.EndColor = 16112039
    StateHover.Background.Gradient2.GradientType = gtLinear
    StateHover.Background.Gradient2.Point1XPercent = 0
    StateHover.Background.Gradient2.Point1YPercent = 0
    StateHover.Background.Gradient2.Point2XPercent = 0
    StateHover.Background.Gradient2.Point2YPercent = 100
    StateHover.Background.Gradient1EndPercent = 50
    StateHover.Background.Style = bbsColor
    StateHover.Border.Color = 14120960
    StateHover.Border.LightOpacity = 200
    StateHover.Border.Style = bboNone
    StateHover.FontEx.Color = clWhite
    StateHover.FontEx.FontQuality = fqSystemClearType
    StateHover.FontEx.Shadow = False
    StateHover.FontEx.ShadowRadius = 5
    StateHover.FontEx.ShadowOffsetX = 5
    StateHover.FontEx.ShadowOffsetY = 5
    StateHover.FontEx.Style = []
    StateNormal.Background.Color = 6897449
    StateNormal.Background.Gradient1.StartColor = 15921906
    StateNormal.Background.Gradient1.EndColor = 15461355
    StateNormal.Background.Gradient1.GradientType = gtLinear
    StateNormal.Background.Gradient1.Point1XPercent = 0
    StateNormal.Background.Gradient1.Point1YPercent = 0
    StateNormal.Background.Gradient1.Point2XPercent = 0
    StateNormal.Background.Gradient1.Point2YPercent = 100
    StateNormal.Background.Gradient2.StartColor = 14540253
    StateNormal.Background.Gradient2.EndColor = 13619151
    StateNormal.Background.Gradient2.GradientType = gtLinear
    StateNormal.Background.Gradient2.Point1XPercent = 0
    StateNormal.Background.Gradient2.Point1YPercent = 0
    StateNormal.Background.Gradient2.Point2XPercent = 0
    StateNormal.Background.Gradient2.Point2YPercent = 100
    StateNormal.Background.Gradient1EndPercent = 50
    StateNormal.Background.Style = bbsColor
    StateNormal.Border.Color = 11382189
    StateNormal.Border.LightOpacity = 200
    StateNormal.Border.Style = bboNone
    StateNormal.FontEx.Color = clWhite
    StateNormal.FontEx.FontQuality = fqSystemClearType
    StateNormal.FontEx.Shadow = False
    StateNormal.FontEx.ShadowRadius = 5
    StateNormal.FontEx.ShadowOffsetX = 5
    StateNormal.FontEx.ShadowOffsetY = 5
    StateNormal.FontEx.Style = []
    StaticButton = False
    TabOrder = 2
  end
  object minute: TBCComboBox
    Left = 240
    Height = 30
    Hint = 'phút'
    Top = 72
    Width = 80
    Items.Strings = (
      '1'
      '2'
      '3'
      '4'
      '5'
      '6'
      '7'
      '8'
      '9'
      '10'
      '11'
      '12'
      '13'
      '14'
      '15'
      '16'
      '17'
      '18'
      '19'
      '20'
      '21'
      '22'
      '23'
      '24'
      '25'
      '26'
      '27'
      '28'
      '29'
      '30'
      '31'
      '32'
      '33'
      '34'
      '35'
      '36'
      '37'
      '38'
      '39'
      '40'
      '41'
      '42'
      '43'
      '44'
      '45'
      '46'
      '47'
      '48'
      '49'
      '50'
      '51'
      '52'
      '53'
      '54'
      '55'
      '56'
      '57'
      '58'
      '59'
      '00'
    )
    ItemIndex = -1
    ArrowSize = 8
    ArrowWidth = 16
    FocusBorderOpacity = 0
    DropDownBorderColor = 6897449
    DropDownBorderSize = 0
    DropDownColor = 6897449
    DropDownFontColor = clWhite
    DropDownHighlight = 16554286
    DropDownFontHighlight = 6897449
    GlobalOpacity = 255
    MemoryUsage = bmuHigh
    Rounding.RoundX = 0
    Rounding.RoundY = 0
    StateClicked.Background.Color = 11889734
    StateClicked.Background.Gradient1.StartColor = 16577765
    StateClicked.Background.Gradient1.EndColor = 16180676
    StateClicked.Background.Gradient1.GradientType = gtLinear
    StateClicked.Background.Gradient1.Point1XPercent = 0
    StateClicked.Background.Gradient1.Point1YPercent = 0
    StateClicked.Background.Gradient1.Point2XPercent = 0
    StateClicked.Background.Gradient1.Point2YPercent = 100
    StateClicked.Background.Gradient2.StartColor = 15716760
    StateClicked.Background.Gradient2.EndColor = 14398312
    StateClicked.Background.Gradient2.GradientType = gtLinear
    StateClicked.Background.Gradient2.Point1XPercent = 0
    StateClicked.Background.Gradient2.Point1YPercent = 0
    StateClicked.Background.Gradient2.Point2XPercent = 0
    StateClicked.Background.Gradient2.Point2YPercent = 100
    StateClicked.Background.Gradient1EndPercent = 55
    StateClicked.Background.Style = bbsColor
    StateClicked.Border.Color = 10048512
    StateClicked.Border.LightColor = clBlack
    StateClicked.Border.LightOpacity = 100
    StateClicked.Border.Style = bboNone
    StateClicked.FontEx.Color = clWhite
    StateClicked.FontEx.FontQuality = fqSystemClearType
    StateClicked.FontEx.Shadow = False
    StateClicked.FontEx.ShadowRadius = 5
    StateClicked.FontEx.ShadowOffsetX = 5
    StateClicked.FontEx.ShadowOffsetY = 5
    StateClicked.FontEx.Style = []
    StateHover.Background.Color = 11889734
    StateHover.Background.Gradient1.StartColor = 16643818
    StateHover.Background.Gradient1.EndColor = 16576729
    StateHover.Background.Gradient1.GradientType = gtLinear
    StateHover.Background.Gradient1.Point1XPercent = 0
    StateHover.Background.Gradient1.Point1YPercent = 0
    StateHover.Background.Gradient1.Point2XPercent = 0
    StateHover.Background.Gradient1.Point2YPercent = 100
    StateHover.Background.Gradient2.StartColor = 16639678
    StateHover.Background.Gradient2.EndColor = 16112039
    StateHover.Background.Gradient2.GradientType = gtLinear
    StateHover.Background.Gradient2.Point1XPercent = 0
    StateHover.Background.Gradient2.Point1YPercent = 0
    StateHover.Background.Gradient2.Point2XPercent = 0
    StateHover.Background.Gradient2.Point2YPercent = 100
    StateHover.Background.Gradient1EndPercent = 50
    StateHover.Background.Style = bbsColor
    StateHover.Border.Color = 14120960
    StateHover.Border.LightOpacity = 200
    StateHover.Border.Style = bboNone
    StateHover.FontEx.Color = clWhite
    StateHover.FontEx.FontQuality = fqSystemClearType
    StateHover.FontEx.Shadow = False
    StateHover.FontEx.ShadowRadius = 5
    StateHover.FontEx.ShadowOffsetX = 5
    StateHover.FontEx.ShadowOffsetY = 5
    StateHover.FontEx.Style = []
    StateNormal.Background.Color = 6897449
    StateNormal.Background.Gradient1.StartColor = 15921906
    StateNormal.Background.Gradient1.EndColor = 15461355
    StateNormal.Background.Gradient1.GradientType = gtLinear
    StateNormal.Background.Gradient1.Point1XPercent = 0
    StateNormal.Background.Gradient1.Point1YPercent = 0
    StateNormal.Background.Gradient1.Point2XPercent = 0
    StateNormal.Background.Gradient1.Point2YPercent = 100
    StateNormal.Background.Gradient2.StartColor = 14540253
    StateNormal.Background.Gradient2.EndColor = 13619151
    StateNormal.Background.Gradient2.GradientType = gtLinear
    StateNormal.Background.Gradient2.Point1XPercent = 0
    StateNormal.Background.Gradient2.Point1YPercent = 0
    StateNormal.Background.Gradient2.Point2XPercent = 0
    StateNormal.Background.Gradient2.Point2YPercent = 100
    StateNormal.Background.Gradient1EndPercent = 50
    StateNormal.Background.Style = bbsColor
    StateNormal.Border.Color = 11382189
    StateNormal.Border.LightOpacity = 200
    StateNormal.Border.Style = bboNone
    StateNormal.FontEx.Color = clWhite
    StateNormal.FontEx.FontQuality = fqSystemClearType
    StateNormal.FontEx.Shadow = False
    StateNormal.FontEx.ShadowRadius = 5
    StateNormal.FontEx.ShadowOffsetX = 5
    StateNormal.FontEx.ShadowOffsetY = 5
    StateNormal.FontEx.Style = []
    StaticButton = False
    TabOrder = 3
  end
  object clock1: TBCLabel
    Left = 168
    Height = 40
    Hint = 'Thời gian còn lại'
    Top = 160
    Width = 128
    AutoSize = False
    Background.Gradient1.StartColor = clWhite
    Background.Gradient1.EndColor = clBlack
    Background.Gradient1.GradientType = gtLinear
    Background.Gradient1.Point1XPercent = 0
    Background.Gradient1.Point1YPercent = 0
    Background.Gradient1.Point2XPercent = 0
    Background.Gradient1.Point2YPercent = 100
    Background.Gradient2.StartColor = clWhite
    Background.Gradient2.EndColor = clBlack
    Background.Gradient2.GradientType = gtLinear
    Background.Gradient2.Point1XPercent = 0
    Background.Gradient2.Point1YPercent = 0
    Background.Gradient2.Point2XPercent = 0
    Background.Gradient2.Point2YPercent = 100
    Background.Gradient1EndPercent = 35
    Background.Style = bbsClear
    Border.Style = bboNone
    FontEx.Color = clWhite
    FontEx.FontQuality = fqSystemClearType
    FontEx.Height = 20
    FontEx.Shadow = True
    FontEx.ShadowRadius = 5
    FontEx.ShadowOffsetX = 5
    FontEx.ShadowOffsetY = 5
    FontEx.Style = []
    Rounding.RoundX = 1
    Rounding.RoundY = 1
    ShowHint = True
  end
  object Timer1: TTimer
    OnTimer = Timer1Timer
    Left = 232
    Top = 176
  end
  object timecount: TTimer
    Enabled = False
    OnTimer = timecountTimer
    Left = 296
    Top = 176
  end
end
