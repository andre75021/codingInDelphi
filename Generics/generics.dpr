program generics;

uses
  Vcl.Forms,
  codingInDelphi.generics.main in 'codingInDelphi.generics.main.pas' {Form1},
  codingInDelphi.generics.classe in 'codingInDelphi.generics.classe.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
