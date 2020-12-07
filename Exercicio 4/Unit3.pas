unit Unit3;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls;

type
  TForm3 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Panel1: TPanel;

    procedure verde(Sender : TObject);
    procedure vermelho (Sender : TObject);
    procedure amarelo (Sender : TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

{$R *.dfm}
procedure TForm3.amarelo(Sender: TObject);
begin
   Panel1.Color := clYellow;
end;

procedure TForm3.verde(Sender: TObject);
begin
 Panel1.Color := clGreen;
end;

procedure TForm3.vermelho(Sender: TObject);
begin
 Panel1.Color := clRed;
end;


end.
