program Primeiro;

uses
  Vcl.Forms,
  SplitLine in 'Exerc�cios\1 - Primeiro\SplitLine.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
