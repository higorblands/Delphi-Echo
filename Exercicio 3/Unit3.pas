unit Unit3;
interface
uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;
type
  TForm3 = class(TForm)
    Label1: TLabel;
    edtValor1: TEdit;
    edtValor2: TEdit;
    edtValor3: TEdit;
    btCalcular: TButton;
    edtVerificaSeEumTriangulo: TEdit;
    edtTipoTriangulo: TEdit;
    function verificarTriangulo ( a : integer ; b : integer ; c : integer ) : string;
    procedure btCalcularClick(Sender: TObject);
    function tipoDeTriangulo (a : integer ; b : integer ; c : integer ) : string;
  private
    { Private declarations }
  public
    { Public declarations }
  end;
var
  Form3: TForm3;
implementation
{$R *.dfm}
{ TForm3 }
procedure TForm3.btCalcularClick(Sender: TObject);
begin
  edtVerificaSeEumTriangulo.Text := verificarTriangulo(StrToInt(edtValor1.Text),(StrToInt(edtValor2.Text)),(StrToInt(edtValor3.Text)));
  edtTipoTriangulo.Text := tipoDeTriangulo(StrToInt(edtValor1.Text),(StrToInt(edtValor2.Text)),(StrToInt(edtValor3.Text)));
end;

function TForm3.tipoDeTriangulo(a, b, c: integer): string;
begin
      if ( a=b ) and ( b = c)  then
      begin
        result := 'Equilatero';
      end
      else if (a=b) and (b<>c) or (a<>b) and (b=c) or (a<>b) and (a=c)  then
      begin
        result := 'Isosceles';
      end
      else if (a<>b) and (a<>c) then
      begin
        result := 'Escaleno';
      end;

end;

function TForm3.verificarTriangulo(a, b, c: integer): string;
begin
        if (a<b+c) and (b<a+c) and (c<a+b)  then
        begin
          result := '� um triangulo';
        end
          else
          begin
            result := 'N�o � um triangulo';
          end;
end;
end.
