program simpleExample;

uses
  Vcl.Forms,
  name.view in 'name.view.pas' {frmMain},
  name.interfaces in 'name.interfaces.pas',
  name.classes in 'name.classes.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmMain, frmMain);
  Application.Run;
end.
