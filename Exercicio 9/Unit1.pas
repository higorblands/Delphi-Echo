unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TPessoas = record
    Nome, idade, peso: string;
  end;

type
  TForm1 = class(TForm)
    ListBox1: TListBox;
    Edit1: TEdit;
    age: TEdit;
    weight: TEdit;
    Button1: TButton;
    function validar(a: string): boolean;
    procedure Button1Click(Sender: TObject);
    procedure adicionarAoVetor(inNome, inIdade, inPeso: string);
    function select(funcFile: string): string;
    procedure filter(line: string);

  private
    { Private declarations }
  public
    { Public declarations }
  var
    vu_vetor: array of TPessoas;

  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.adicionarAoVetor(inNome, inIdade, inPeso: string);
var
  i: integer;
begin
  i := Length(vu_vetor) + 1;
  SetLength(vu_vetor, i);
  vu_vetor[i - 1].Nome := inNome;
  vu_vetor[i - 1].idade := inIdade;
  vu_vetor[i - 1].peso := inPeso;
end;

procedure TForm1.Button1Click(Sender: TObject);
var
   nameFile: string;

begin
  if (validar(Edit1.Text) = false) then
  begin
    ShowMessage('Voc� deixou o campo em branco, n�o � poss�vel seguir.');
  end
  else
  begin
    nameFile := Edit1.Text;
    select(nameFile);
  end;
end;

procedure TForm1.filter(line: string);
var
  arquivo: TextFile;
  pipe,sChar, nameFile, sNome,sIdade,sPeso: string;
  i: integer;
begin
  // Pegar cada linha do nosso arquivo e colocar em nossa vari�vel string
  // line := ZUM|8|24|//
  // Percorrer a linha e identificar o |
  for sChar in line do
  begin
    if sChar = '|' then
    begin
    pipe := sChar;
    end
    else
    begin
       sNome := sNome + sChar;
       sIdade := sIdade + sChar;
       sPeso := sPeso + sChar;
    end;
  end;
  adicionarAoVetor(sNome,sIdade,sPeso);
end;

function TForm1.select(funcFile: string): string;
var
  userFile: TextFile;
  s: string;
begin
  assignFile(userFile, funcFile);
  reset(userFile);
  while NOT EOF(userFile) do
  begin
    Readln(userFile, s);
    filter(s);
  end;
  Readln(userFile, s);
  filter(s);

  closefile(userFile);
end;

function TForm1.validar(a: string): boolean;
begin
  result := true;
  if (a = '') then
  begin
    result := false;
  end;
end;

end.
