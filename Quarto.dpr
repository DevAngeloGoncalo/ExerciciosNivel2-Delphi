program Quarto;

uses
  Vcl.Forms,
  ListBox1 in 'Exercícios\4 - Quarto\ListBox1.pas' {Form4};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm4, Form4);
  Application.Run;
end.
