unit ListBox2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm5 = class(TForm)
    Button1: TButton;
    OpenDialog1: TOpenDialog;
    ListBox1: TListBox;
    Edit1: TEdit;
    Edit2: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure ListBox1Click(Sender: TObject);
  private
    { Private declarations }
  var
    matriz: array of array of string;
    nLinha, nColuna, linha, coluna: integer;
  public
    { Public declarations }
  end;

var
  Form5: TForm5;

implementation

{$R *.dfm}

procedure TForm5.Button1Click(Sender: TObject);
var
  arquivo: TextFile;
  caractere: char;
  nome, Aux: string;
  i, nChar, idade, peso: integer;
begin
  linha := 0;
  coluna := -1;
  nChar := 0;
  if (OpenDialog1.Execute) then
  begin
    if (OpenDialog1.FileName <> '') then
    begin
      AssignFile(arquivo, OpenDialog1.FileName);
      reset(arquivo);
    end;
  end;

  while not EOF(arquivo) do
  begin
    Readln(arquivo);
    INC(nLinha);
  end;
  nColuna := 3;
  reset(arquivo);

  while not EOF(arquivo) do
  begin
    SetLength(matriz, nLinha, nColuna);
    while not EOLN(arquivo) do
    begin
      INC(nChar);
      Read(arquivo, caractere);

      if nChar < 101 then
      begin
        Aux := Aux + caractere;
        nome := Aux;
      end;
      if nChar = 100 then
      begin
        INC(coluna);
        matriz[linha, coluna] := trim(nome);
        Aux := '';
      end;
      if (nChar > 100) AND (nChar < 104) then
      begin
        Aux := Aux + caractere;
        idade := StrToInt(Aux);
      end;
      if nChar = 103 then
      begin
        INC(coluna);
        matriz[linha, coluna] := IntToStr(idade);
        Aux := '';
      end;
      if (nChar > 103) AND (nChar < 109) then
      begin
        Aux := Aux + caractere;
        peso := StrToInt(Aux);
      end;
      if nChar = 108 then
      begin
        INC(coluna);
        matriz[linha, coluna] := IntToStr(peso);
        Aux := '';
      end;
    end;
    nChar := 0;
    Readln(arquivo);
    INC(linha);
    coluna := -1;
  end;

  for i := 0 to linha - 1 do
  begin
    ListBox1.Items.Add(matriz[i, 0]);
  end;
  CloseFile(arquivo);
end;

procedure TForm5.ListBox1Click(Sender: TObject);
begin
  Edit1.Text := matriz[ListBox1.ItemIndex, 1];
  Edit2.Text := matriz[ListBox1.ItemIndex, 2] + ' KG';
end;
end.
