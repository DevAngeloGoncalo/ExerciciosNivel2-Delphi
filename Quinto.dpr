program Quinto;

uses
  Vcl.Forms,
  ListBox2 in 'Exercícios\5 - Quinto\ListBox2.pas' {Form5};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm5, Form5);
  Application.Run;
end.
