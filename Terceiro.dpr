program Terceiro;

uses
  Vcl.Forms,
  Criptografia in 'Exerc�cios\3 - Terceiro\Criptografia.pas' {Form3};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm3, Form3);
  Application.Run;
end.
