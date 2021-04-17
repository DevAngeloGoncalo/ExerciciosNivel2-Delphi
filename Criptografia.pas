unit Criptografia;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm3 = class(TForm)
    Button1: TButton;
    OpenDialog1: TOpenDialog;
    Button2: TButton;
    SaveDialog1: TSaveDialog;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
    function StrToAscii(Texto: string): string;
  var
    arquivo: TextFile;
    caractere: char;
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

{$R *.dfm}

procedure TForm3.Button1Click(Sender: TObject);
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

procedure TForm3.Button2Click(Sender: TObject);
var
  i, nCaractere: integer;
  nvArquivo: TextFile;

begin
  reset(arquivo);

  if (SaveDialog1.Execute) then
  begin
    SaveDialog1.FileName := OpenDialog1.FileName + '_c';
    AssignFile(nvArquivo, SaveDialog1.FileName);
    RenameFile(SaveDialog1.FileName, SaveDialog1.FileName + '.txt');
    Rewrite(nvArquivo);
    if (Trim(SaveDialog1.FileName) <> '') then
    begin
      while not EOF(arquivo) do
      begin
        while not EOLN(arquivo) do
        begin
          Read(arquivo, caractere);
          Write(nvArquivo, StrToAscii(caractere));
        end;
        Readln(arquivo);
        Writeln(nvArquivo);
      end;
    end;
    CloseFile(nvArquivo);
  end;
end;

function TForm3.StrToAscii(Texto: string): string;
var
  i, asciiDec: integer;
  PalavraHex: String;
begin
  for i := 1 to Length(Texto) do
  begin
    PalavraHex := PalavraHex + IntToStr(Ord(Texto[i]));
  end;

  asciiDec := StrToInt(PalavraHex);
  asciiDec := asciiDec + 10;

  if (asciiDec >= 266) then
  begin
    asciiDec := asciiDec - 266;
    Result := char(asciiDec);
  end
  else
  begin
    Result := char(asciiDec);
  end;
end;

end.
