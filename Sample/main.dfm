object DfmJsonMappingOverviewForm: TDfmJsonMappingOverviewForm
  Left = 0
  Top = 0
  Caption = 'Dfm  Json mapping overview'
  ClientHeight = 525
  ClientWidth = 846
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object edtJson: TSynEdit
    Left = 173
    Top = 0
    Width = 673
    Height = 525
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Courier New'
    Font.Style = []
    TabOrder = 0
    CodeFolding.GutterShapeSize = 11
    CodeFolding.CollapsedLineColor = clGrayText
    CodeFolding.FolderBarLinesColor = clGrayText
    CodeFolding.IndentGuidesColor = clGray
    CodeFolding.IndentGuides = True
    CodeFolding.ShowCollapsedLine = False
    CodeFolding.ShowHintMark = True
    UseCodeFolding = False
    Gutter.Font.Charset = DEFAULT_CHARSET
    Gutter.Font.Color = clWindowText
    Gutter.Font.Height = -11
    Gutter.Font.Name = 'Courier New'
    Gutter.Font.Style = []
    FontSmoothing = fsmNone
    ExplicitLeft = 312
    ExplicitWidth = 534
  end
  object pnlLeftBar: TFlowPanel
    Left = 0
    Top = 0
    Width = 173
    Height = 525
    Align = alLeft
    BevelOuter = bvNone
    Color = 15395562
    Padding.Left = 5
    Padding.Top = 5
    ParentBackground = False
    TabOrder = 1
    object btnMapStreamedComponentToJson: TButton
      Left = 5
      Top = 5
      Width = 154
      Height = 25
      Caption = 'Streamed component -> Json'
      TabOrder = 0
      OnClick = btnMapStreamedComponentToJsonClick
    end
    object btnResourceMapTest: TButton
      Left = 5
      Top = 30
      Width = 154
      Height = 25
      Caption = 'ResourceMapTest'
      TabOrder = 1
      OnClick = btnResourceMapTestClick
    end
  end
  object dlgOpen: TOpenDialog
    Filter = 'TextFille|*.txt|All|*.*'
    Options = [ofHideReadOnly, ofFileMustExist, ofEnableSizing]
    Left = 64
    Top = 96
  end
end
