unit UComboBoxSupreme;

interface

uses
  System.SysUtils, System.Classes, Vcl.Controls, Vcl.StdCtrls;

type
  TComboBoxSupreme = class(TComboBox)
  private
    { Private declarations }
  protected
    { Protected declarations }
    FSupremeName : String;
    function getSupremeName : string;
    procedure setSupremeName(Valor : string);
  public
    { Public declarations }
  published
    { Published declarations }
    property Key : String Read getSupremeName Write setSupremeName;
  end;

procedure Register;

implementation

procedure Register;
begin
  RegisterComponents('Samples', [TComboBoxSupreme]);
end;

{ TComboBoxSupreme }

function TComboBoxSupreme.getSupremeName: string;
begin
 Result := FSupremeName;
end;

procedure TComboBoxSupreme.setSupremeName(Valor: string);
begin
  FSupremeName :=  Valor;
end;

end.
