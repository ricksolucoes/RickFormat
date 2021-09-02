program RICKFormat;

uses
  System.StartUpCopy,
  FMX.Forms,
  RICK.Format.Interfaces in 'src\RICK.Format.Interfaces.pas',
  RICK.Format in 'src\RICK.Format.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.Run;
end.
