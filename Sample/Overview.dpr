program Overview;

uses
  Vcl.Forms,
  main in 'main.pas' {DfmJsonMappingOverviewForm},
  DFMJSON in '..\DFMJSON.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TDfmJsonMappingOverviewForm, DfmJsonMappingOverviewForm);
  Application.Run;
end.
