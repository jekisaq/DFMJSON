unit main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, SynEdit, Vcl.ExtCtrls;

type
  TDfmJsonMappingOverviewForm = class(TForm)
    edtJson: TSynEdit;
    pnlLeftBar: TFlowPanel;
    btnMapStreamedComponentToJson: TButton;
    dlgOpen: TOpenDialog;
    btnResourceMapTest: TButton;
    procedure btnMapStreamedComponentToJsonClick(Sender: TObject);
    procedure btnResourceMapTestClick(Sender: TObject);
  end;

var
  DfmJsonMappingOverviewForm: TDfmJsonMappingOverviewForm;

implementation

uses
  System.JSON,
  System.IOUtils,
  DFMJSON;

{$R *.dfm}

procedure TDfmJsonMappingOverviewForm.btnMapStreamedComponentToJsonClick(Sender: TObject);
var
  Json: TJsonObject;
  SaveFileName: string;
begin
  if dlgOpen.Execute(Handle) then
  begin
    Json := DfmResourceToJson(dlgOpen.FileName);

    edtJson.Lines.Text := Json.ToJSON;

    SaveFileName := ChangeFileExt(dlgOpen.FileName, '.json');
    TFile.WriteAllText(SaveFileName, Json.ToJSON);
  end;
end;

procedure TDfmJsonMappingOverviewForm.btnResourceMapTestClick(Sender: TObject);
var
  FileStream: TFileStream;
  TextStream: TMemoryStream;
begin
  if dlgOpen.Execute(Handle) then
  begin
    FileStream := TFile.OpenRead(dlgOpen.FileName);
    TextStream := TMemoryStream.Create;
    try
      ObjectResourceToText(FileStream, TextStream);

      TextStream.Position := 0;
      edtJson.Lines.LoadFromStream(TextStream);
    finally
      FreeAndNil(TextStream);
      FreeAndNil(FileStream);
    end;
  end;
end;

end.
