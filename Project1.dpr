program Project1;

uses
  Vcl.Forms,
  Unit1 in 'Unit1.pas' {Form1},
  Pkg.Json.DTO in 'Pkg.Json.DTO.pas',
  uViaCEP in 'uViaCEP.pas',
  UclasseCNPJ in 'UclasseCNPJ.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
