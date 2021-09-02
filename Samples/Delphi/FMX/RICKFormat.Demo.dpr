program RICKFormat.Demo;

uses
  System.StartUpCopy,
  FMX.Forms,
  RICK.Format.Demo.View.Main in 'RICK.Format.Demo.View.Main.pas' {frmDemo};

{$R *.res}

begin
{$IFDEF DEBUG}
  ReportMemoryLeaksOnShutdown:= True;
{$ENDIF}
  Application.Initialize;
  Application.CreateForm(TfrmDemo, frmDemo);
  Application.Run;
end.
