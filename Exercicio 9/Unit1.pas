unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    ListBox1: TListBox;
    Edit1: TEdit;
    age: TEdit;
    weight: TEdit;
    Button1: TButton;
    function validar(a: string): boolean;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }

  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var
  arquivo: TextFile;
  sName, nameFile, line: string;
  i,qtdregistro: integer;

begin
  if (validar(Edit1.Text) = false) then
  begin
    ShowMessage('Voc� deixou o campo em branco, n�o � poss�vel seguir.');
  end
  else
  begin
  i:=0;
    nameFile := Edit1.Text + '.txt';
    AssignFile(arquivo, nameFile);
    Reset(arquivo);
    while not Eof(arquivo) do
    begin
      // Pegar cada linha do nosso arquivo e colocar em nossa vari�vel string
      Readln(arquivo, line);// line := AADALGISA CARNEIRO FURTADO DOS SANTOS|9|36|//
      i := i+1;
      //Percorrer a linha identificar o pipe guardar o nome,
      //identificar o pipe guardar idade e
      //identificar o pipe guardar peso
      // Guardar os valores nome, idade e peso em um vetor.
      // Ao clicar no item exibir a idade e peso nos Edit
    end; // Fim do While
    closeFile(arquivo);
  end;
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
