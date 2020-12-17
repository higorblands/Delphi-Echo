unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Menus;

type
  TForm1 = class(TForm)
    ListBox1: TListBox;
    age: TEdit;
    weight: TEdit;
    Idade: TLabel;
    Peso: TLabel;
    Button1: TButton;
    fileName: TEdit;
    Label1: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure ListBox1Click(Sender: TObject);
  private
    { Private declarations }
    function select(funcFile: string): string;
    procedure filter(line: string);

  var
    matriz: array of array of string; // Matriz para armazenar os valores
    temp: array of string;     //L� na frente vamos entender o uso
    mLine, mColumn, h, b: integer;     // Linhas e colunas do vetor
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

// E:\Delphi\studio\Projects\Exercicio\Nivel 00\Delphi-Echo\Exercicio 10\Win32\Debug\alunos fixos.txt
procedure TForm1.Button1Click(Sender: TObject);
var

  i: integer;
begin
  mLine := 0;
  mColumn := 0;
  select(fileName.Text);  // Acessa o arquivo atrav�s de uma fun��o
  for i := 0 to (mLine - 1) do
  begin
    ListBox1.Items.Add(matriz[i, 0]);
  end;
end;

procedure TForm1.filter(line: string); // Filtrando o arquivo ( espa�o e caracteres )
var
  size, i, c, clear: integer;
  linetemp, linefinal: string;
begin
  h := 0;
  linetemp := '';
  linefinal := '';
  size := Length(line);  // Passando a quantidade de caracteres para a variavel SIZE
  for i := 1 to size do // Loop de 1 at� o tamanho de SIZE, aqui estamos falando de quantidade e n�o posi��o de vetor
  begin
    SetLength(matriz, mLine + 1);  // Definindo tamanho das linhas da matriz
    linetemp := linetemp + line[i];    // Comentar
    if (Length(linetemp) = 100) then
    begin
      linefinal := trim(linetemp); // Limpando os zereos
      SetLength(matriz[mLine], h + 1); // Definindo o tamanho da matriz
      SetLength(temp, h + 1); // Definindo o tamanho do vetor TEMPO
      temp[h] := linefinal; // Vetor TEMPORARIO recebe na posi��o H o conteudo limpo do NOME
      linefinal := '';    // Limpando a vari�vel
      h := h + 1;     // Acrescentando mais um ao contador ( Posi��o para o vetor TEMP )
    end;

    if (Length(linetemp) = 103) then
    begin
      for c := 101 to 103 do   // Percorrendo da posi��o 101 at� 103
      begin
        linefinal := linefinal + linetemp[c];   // lineFinal recebe o conteudo do valor percorrido
      end;
      clear := StrToInt(linefinal); // Variavel auxiliar recebe o conteudo de lineFinal  removendo os zeros a esquerda
      linefinal := IntToStr(clear);
      SetLength(matriz[mLine], h + 1);
      SetLength(temp, h + 1);// Crescendo uma posi��o no vetor
      temp[h] := linefinal; // Vetor TEMPORARIO recebe na posi��o H o conteudo limpo da Idade
      linefinal := '';
      h := h + 1;
    end;

    if (Length(linetemp) = 108) then
    begin
      for c := 104 to 108 do
      begin
        linefinal := linefinal + linetemp[c];
      end;
      clear := StrToInt(linefinal);
      linefinal := IntToStr(clear);
      SetLength(matriz[mLine], h + 1);
      SetLength(temp, h + 1);
      temp[h] := linefinal;
      linefinal := '';
      h := h + 1;
    end;

    b := h;
  end;

  for c := 0 to b - 1 do    // De 0 at� a quantidade de B que � a quantidade de valores guardados no vetor TEMPO
  begin
    matriz[mLine, c] := temp[c];  // Preenchendo a matriz
  end;
end;

procedure TForm1.ListBox1Click(Sender: TObject);
var
  i: integer;
begin
  i := ListBox1.itemindex;
  age.Text := matriz[i, 1];
  weight.Text := matriz[i, 2];
end;

function TForm1.select(funcFile: string): string;
var
  userFile: TextFile;
  sLine: string;
begin
  assignFile(userFile, funcFile);
  reset(userFile);
  while NOT EOF(userFile) do
  begin
    readLn(userFile, sLine);    // L� a linha no arquivo e salva em "sLine"
    filter(sLine); // Passa para a procedure FILTER o conte�do de "sLine"
    mLine := mLine + 1; // Contando a quantidade de linhas do arquivo
  end;

  closefile(userFile);
end;

end.