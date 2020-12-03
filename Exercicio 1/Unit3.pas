unit Unit3;
interface
uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;
type
  TForm3 = class(TForm)
    Label1: TLabel;
    edtValor1: TEdit;
    edtValor2: TEdit;
    edtValorResultado: TEdit;
    btCalcular: TButton;
    RadioGroup1: TRadioGroup;
    rdbAdicao: TRadioButton;
    rdbSubtracao: TRadioButton;
    rdbMultiplicacao: TRadioButton;
    rdbDivisao: TRadioButton;
    procedure btCalcularClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    // Declarando as fun��es
    function exibirValorAdicao(valor1 : double; valor2 : double) : double ;
    function exibirValorSubtracao(valor1 : double; valor2 : double) : double ;
    function exibirValorMultiplicacao(valor1 : double; valor2 : double) : double;
    function exibirValorDivisao(valor1 : double; valor2 : double) : double;
  end;
var
  Form3: TForm3;
implementation
{$R *.dfm}
{ TForm3 }
procedure TForm3.btCalcularClick(Sender: TObject);
begin      // Executando condicional de qual RADIO BTN foi marcado
  if (rdbAdicao.Checked) then
    begin
    edtValorResultado.Text := (FloatToStr(exibirValorAdicao(StrToFloat(edtValor1.Text),(StrTofloat(edtValor2.Text)))));
    end
  else
      if (rdbSubtracao.Checked) then
        begin
        edtValorResultado.Text := (FloatToStr(exibirValorSubtracao(StrToFloat(edtValor1.Text),(StrTofloat(edtValor2.Text)))));
        end
      else
        if (rdbMultiplicacao.Checked) then
          begin
          edtValorResultado.Text := (FloatToStr(exibirValorMultiplicacao(StrToFloat(edtValor1.Text),(StrTofloat(edtValor2.Text)))));
          end
        else
        if (rdbDivisao.Checked) then
          begin
            edtValorResultado.Text := (FloatToStr(exibirValorDivisao(StrToFloat(edtValor1.Text),(StrTofloat(edtValor2.Text)))));
          end
end;

// Usando as fun��es
function TForm3.exibirValorAdicao(valor1, valor2: double): double;
begin
Result := (valor1) + (valor2);
end;

function TForm3.exibirValorDivisao(valor1, valor2: double): double;
begin
Result := (valor1) / (valor2);
end;

function TForm3.exibirValorMultiplicacao(valor1, valor2: double): double;
begin
Result := (valor1) * (valor2);
end;

function TForm3.exibirValorSubtracao(valor1, valor2: double): double;
begin
 Result := (valor1) - (valor2);
end;

end.
