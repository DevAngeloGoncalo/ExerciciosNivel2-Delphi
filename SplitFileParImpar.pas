unit SplitFileParImpar;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm2 = class(TForm)
    Memo1: TMemo;
    Memo2: TMemo;
    Button1: TButton;
    Button2: TButton;
    OpenDialog1: TOpenDialog;
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  var
    arquivo: TextFile;
    linha: string;
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

procedure TForm2.Button1Click(Sender: TObject);
var
  i: integer;
  MetadeR: currency;
begin
  Memo1.Clear;
  Memo2.Clear;

  reset(arquivo);

  i := 0;

  while not EOF(arquivo) do
  begin
    Readln(arquivo, linha);
    Inc(i);
    if i mod 2 = 0 then
    begin
      Memo2.Lines.Add(linha);
    end
    else
    begin
      Memo1.Lines.Add(linha);
    end;
  end;
  CloseFile(arquivo);
end;

procedure TForm2.Button2Click(Sender: TObject);
begin
  if (OpenDialog1.Execute) then
  begin
    if (OpenDialog1.FileName <> '') then
    begin
      AssignFile(arquivo, OpenDialog1.FileName);
      reset(arquivo);
    end;
  end;
end;
end.
