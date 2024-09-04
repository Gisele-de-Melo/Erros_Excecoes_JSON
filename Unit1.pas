//------------------------------------------------------------------------------------------------------------
//********* Sobre ************
//Autor: Gisele de Melo
//Esse código foi desenvolvido com o intuito de aprendizado para o blog codedelphi.com, portanto não me
//responsabilizo pelo uso do mesmo.
//
//********* About ************
//Author: Gisele de Melo
//This code was developed for learning purposes for the codedelphi.com blog, therefore I am not responsible for
//its use.
//------------------------------------------------------------------------------------------------------------

unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, System.JSON;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
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
  JSONString: string;
  JSONObject: TJSONObject;

begin

  JSONString := '{"nome": "João", "idade": 30, "ativo": true'; // Falta o fechamento do JSON
  try
    JSONObject := TJSONObject.ParseJSONValue(JSONString) as TJSONObject;
    if JSONObject = nil then
      raise Exception.Create('Erro ao analisar o JSON: Formatação inválida.');
  except
    on E: Exception do
      ShowMessage('Exceção: ' + E.Message);
  end;
end;

procedure TForm1.Button2Click(Sender: TObject);
var
  JSONString: string;
  JSONObject: TJSONObject;

begin

  JSONString := '{"nome": "João", "idade": 30}';  //JSON sem a propriedade "sobrenome"
  try
    JSONObject := TJSONObject.ParseJSONValue(JSONString) as TJSONObject;
    if JSONObject.GetValue('sobrenome') = nil then
      raise Exception.Create('Erro: Propriedade "sobrenome" não encontrada.');
  except
    on E: Exception do
      ShowMessage('Exceção: ' + E.Message);
  end;

end;

procedure TForm1.Button3Click(Sender: TObject);
var
  JSONString: string;
  JSONObject: TJSONObject;
  Idade: Integer;

begin

  JSONString := '{"nome": "João", "idade": "trinta"}'; // Idade é uma string e não um inteiro
  try
    JSONObject := TJSONObject.ParseJSONValue(JSONString) as TJSONObject;
    if JSONObject.GetValue('idade').TryGetValue(Idade) then
      Writeln('Idade: ' + IntToStr(Idade))
    else
      raise Exception.Create('Erro ao converter a idade para inteiro.');
  except
    on E: Exception do
      ShowMessage('Exceção: ' + E.Message);
  end;

end;

end.
