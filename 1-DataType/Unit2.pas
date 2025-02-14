unit Unit2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm2 = class(TForm)
    Button1: TButton;
    Edit1: TEdit;
    procedure Button1Click(Sender: TObject);

  private
    { Private declarations }
    // nomeVariavel : tipo;
    // tipos de variaveis:
    inteiro : integer; //numeros
    moeda : Currency; //moedas
    fracionario:double; // flutuantes
    texto:string; // texto
    bool:boolean; // Booleano

  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}


procedure TForm2.Button1Click(Sender: TObject);
begin
  //Atribuir valor é ":="
  inteiro := 10;
  texto := '10';
  moeda := 10.4;
  bool := false;
  inteiro := StrToInt(Edit1.Text);

  if texto = '10' then
    ShowMessage(IntToStr(inteiro));
end;

end.
