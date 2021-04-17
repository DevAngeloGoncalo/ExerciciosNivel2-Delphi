unit SplitLine;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Memo1: TMemo;
    Memo2: TMemo;
    Button1: TButton;
    Button2: TButton;
    OpenDialog1: TOpenDialog;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  var
    arquivo: TextFile;
    linha: string;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);

var
  i, nLinhas, MetadeI: integer;
  MetadeR: currency;
begin
  Memo1.Clear;
  Memo2.Clear;

  nLinhas := 0;
  reset(arquivo);

  while not EOF(arquivo) do
  begin
    Readln(arquivo, linha);
    Inc(nLinhas);
  end;

  reset(arquivo);

  MetadeI := nLinhas div 2;
  MetadeR := nLinhas / 2;

  if MetadeI = MetadeR then
  begin
    for i := 1 to MetadeI do
    begin
      Readln(arquivo, linha);
      Memo1.Lines.Add(linha);
    end;
    for i := MetadeI to nLinhas do
    begin
      Readln(arquivo, linha);
      Memo2.Lines.Add(linha);
    end;
  end
  else
  begin
    for i := 1 to MetadeI + 1 do
    begin
      Readln(arquivo, linha);
      Memo1.Lines.Add(linha);
    end;
    for i := MetadeI to nLinhas do
    begin
      Readln(arquivo, linha);
      Memo2.Lines.Add(linha);
    end;
  end;
  CloseFile(arquivo)
end;

procedure TForm1.Button2Click(Sender: TObject);
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
