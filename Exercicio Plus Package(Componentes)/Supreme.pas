unit Supreme;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, UComboBoxSupreme;

type
  TForm1 = class(TForm)
    ComboBoxSupreme1: TComboBoxSupreme;
    Button1: TButton;
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
begin
ComboBoxSupreme1.Key := 'Vegeta';
ComboBoxSupreme1.Items.Add('Vegeta');
ShowMessage(IntToStr(ComboBoxSupreme1.ItemIndex));
end;

end.
