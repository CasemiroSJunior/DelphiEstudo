unit Unit2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm2 = class(TForm)
    btnPrimeiro: TButton;
    btnSegundo: TButton;
    Memo1: TMemo;
    cxMemo: TEdit;
    TEdit1: TEdit;
    procedure btnPrimeiroClick(Sender: TObject);
    procedure btnSegundoClick(Sender: TObject);
    procedure btnSomarValores(Sender: TObject);
  private
    FValorTotal: Integer;
    FAliquota: Double;
    TextTemp: String;
  public
    function CalculaValor: Integer;
    function CalculaTributos: Double;
    procedure VisualizaMsg;
    function SomaValores(Valor1, Valor2: Double): Double;
    function SomaRef(var aValor1: Double): String;
    procedure Calculo(Valor1: Integer; out Valor2: integer);
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

procedure TForm2.btnPrimeiroClick(Sender: TObject);
begin
  TextTemp := cxMemo.Text;
  memo1.Lines.Add(textTemp);
  cxMemo.Text := '';
end;

procedure TForm2.btnSegundoClick(Sender: TObject);
var
  lValor:Integer;


begin
  FValorTotal := String(cxMemo.Text).ToInteger();
  FAliquota := String(cxMemo.Text).ToInteger();

  lValor := CalculaValor;


  memo1.Lines.Add('======== Retornmo sem o m�todo');
  memo1.Lines.Add(FValorTotal.ToString);
  memo1.Lines.Add('======== M�todo com Retorno (Function)');
  memo1.Lines.Add(lValor.ToString());

  memo1.Lines.Add('======== M�todo com Retorno 2 (Function)');
  memo1.Lines.Add(CalculaTributos.ToString);

  VisualizaMsg;
end;

function TForm2.CalculaTributos: Double;
begin
  Result := FAliquota * 0.1;
end;

function TForm2.CalculaValor: Integer;
begin

  Result := FValorTotal + 1;
end;

procedure TForm2.Calculo(Valor1: Integer; out Valor2: integer);
begin
  Valor2:= Valor1 + 10;
end;

function TForm2.SomaRef(var aValor1: Double): String;
begin
  aValor1 := aValor1 + 10;
  Result := 'Soma: ' + 10.ToString;
end;

function TForm2.SomaValores(Valor1, Valor2: Double): Double;
begin
  Result := Valor1 + Valor2;
end;

procedure TForm2.btnSomarValores(Sender: TObject);
  var
    soma, valor1, valor2: double;
    lSomaref: String;
    lOut: Integer;

begin
  valor1 := String(cxMemo.Text).ToDouble();
  valor2 := String(TEdit1.Text).ToDouble();
  soma := SomaValores(valor1, valor2);
  memo1.Lines.Add(soma.ToString);

  lSomaref := SomaRef(soma); //Soma Ref Altera o valor da vari�vel, ou seja,
  // passei a refer�ncia da var�avel para ajudar na soma, e n�o apenas o valor
  memo1.Lines.Add('======== Por refer�ncias (Function)');
  memo1.Lines.Add('Retorno de soma: ' + soma.ToString);
  memo1.Lines.Add('Retorno de lSomaRef: ' + lSomaref);

  lOut := 10;
  Calculo(3,lOut);
  memo1.Lines.Add('Metodo sem retorno com refer�ncias; ' + lOut.ToString);
end;

procedure TForm2.VisualizaMsg;
begin
  ShowMessage('Estou Dentro de uma procedure');
end;

end.
