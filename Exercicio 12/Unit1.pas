unit Unit1;

interface

uses
  Unit2, Unit3, Unit4, Unit5,
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TFormMenu = class(TForm)
    btnInSale: TButton;
    btnExSale: TButton;
    btnMOIPSale: TButton;
    btnOrderSale: TButton;
    procedure btnInSaleClick(Sender: TObject);
    procedure btnExSaleClick(Sender: TObject);
    procedure btnMOIPSaleClick(Sender: TObject);
    procedure btnOrderSaleClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormMenu: TFormMenu;

implementation

{$R *.dfm}

procedure TFormMenu.btnExSaleClick(Sender: TObject);
begin
  FormVendaExterna.Show;
end;

procedure TFormMenu.btnInSaleClick(Sender: TObject);
begin
  FormVendaInterna.Show;
end;

procedure TFormMenu.btnMOIPSaleClick(Sender: TObject);
begin
  FormVendaMOIP.Show;
end;

procedure TFormMenu.btnOrderSaleClick(Sender: TObject);
begin
  FormPedidoVenda.Show;
end;

end.
