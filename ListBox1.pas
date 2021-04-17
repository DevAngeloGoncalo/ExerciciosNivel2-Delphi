unit ListBox1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm4 = class(TForm)
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
    nLinha, linha, coluna: integer;
  public
    { Public declarations }

  end;

var
  Form4: TForm4;

implementation

{$R *.dfm}

procedure TForm4.Button1Click(Sender: TObject);
var
  arquivo: TextFile;
  caractere: char;
  nome, Aux: string;
  i: integer;

begin
  linha := 0;
  coluna := -1;
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

  reset(arquivo);

  while not EOF(arquivo) do
  begin
    SetLength(matriz, nLinha, 3);
    while not EOLN(arquivo) do
    begin
      Read(arquivo, caractere);
      Aux := Aux + caractere;
      if caractere = '|' then
      begin
        INC(coluna);
        matriz[linha, coluna] := nome;
        Aux := '';
      end;
      nome := Aux;
    end;
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

procedure TForm4.ListBox1Click(Sender: TObject);
begin
  Edit1.Text := matriz[ListBox1.ItemIndex,1];
  Edit2.Text := matriz[ListBox1.ItemIndex,2] + ' KG';
end;
end.
