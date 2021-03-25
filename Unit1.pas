unit Unit1;

interface

uses
	Winapi.Windows,
	Winapi.Messages,
	System.SysUtils,
	System.Variants,
	System.Classes,
	Vcl.Graphics,
	Vcl.Controls,
	Vcl.Forms,
	Vcl.Dialogs,
	Vcl.StdCtrls,
	Pkg.Json.DTO,
	REST.Types,
	REST.Client,
	Data.Bind.Components,
	Data.Bind.ObjectScope;

type
	TForm1 = class(TForm)
		Memo1 : TMemo;
		Edit1 : TEdit;
		Button1 : TButton;
		Edit2 : TEdit;
		Edit3 : TEdit;
		Button2 : TButton;
		Button3 : TButton;
		Button4 : TButton;
		Button5 : TButton;
		RESTClient1 : TRESTClient;
		RESTRequest1 : TRESTRequest;
		RESTResponse1 : TRESTResponse;
		Button6 : TButton;
		Edit4 : TEdit;
		Button7 : TButton;
		Edit5 : TEdit;
    Button8: TButton;
		procedure Button1Click(Sender : TObject);
		procedure Button2Click(Sender : TObject);
		procedure Button3Click(Sender : TObject);
		procedure Button4Click(Sender : TObject);
		procedure Button5Click(Sender : TObject);
		procedure Button6Click(Sender : TObject);
		procedure Button7Click(Sender : TObject);
    procedure Button8Click(Sender: TObject);
		private
			minhaClasse : TJsonDTO;
			procedure teste;

		public
			{ Public declarations }
	end;

var
	Form1 : TForm1;

implementation

uses
	uViaCEP,
	UclasseCNPJ;

{$R *.dfm}


procedure TForm1.Button1Click(Sender : TObject);
begin
	minhaClasse := TViacepDTO.Create;
	try
		TViacepDTO(minhaClasse).AsJson := Memo1.Lines.Text;
		if TViacepDTO(minhaClasse).Erro then
		begin
			ShowMessage('CEP não localizado.');
		end
		else
		begin
			ShowMessage('Sucesso.');
		end;

	finally
		// FreeAndNil(minhaClasse);
	end;
end;

procedure TForm1.Button2Click(Sender : TObject);
begin
	Edit1.Text := TViacepDTO(minhaClasse).Bairro;
	Edit2.Text := TViacepDTO(minhaClasse).Cep;
	Edit3.Text := TViacepDTO(minhaClasse).Localidade;
	ShowMessage(TViacepDTO(minhaClasse).siafi);
end;

procedure TForm1.Button3Click(Sender : TObject);
begin
	try
		FreeAndNil(minhaClasse);
	except
	end;
end;

procedure TForm1.Button4Click(Sender : TObject);
begin
	minhaClasse := TClassecnpjDTO.Create;
	try
		TClassecnpjDTO(minhaClasse).AsJson := Memo1.Lines.Text;
	finally
		// FreeAndNil(minhaClasse);
	end;
end;

procedure TForm1.Button5Click(Sender : TObject);
begin
	Edit1.Text := TClassecnpjDTO(minhaClasse).atividade_principal[0].Text;
	Edit2.Text := TClassecnpjDTO(minhaClasse).nome;
	Edit3.Text := TClassecnpjDTO(minhaClasse).atividades_secundarias[0].Text;
	ShowMessage(TClassecnpjDTO(minhaClasse).telefone);
end;

procedure TForm1.Button6Click(Sender : TObject);
begin
	RESTClient1.BaseURL   := 'https://viacep.com.br/ws/';
	RESTRequest1.Resource := '{CEP}/json/';
	RESTRequest1.Params.AddUrlSegment('CEP', Edit4.Text);
	RESTRequest1.Execute;
	Memo1.Clear;
	if RESTRequest1.Response.StatusCode <> 200 then
		ShowMessage(RESTRequest1.Response.StatusCode.ToString + ' - ' + RESTRequest1.Response.StatusText);

	Memo1.Lines.Add(RESTRequest1.Response.JSONText);
end;

procedure TForm1.Button7Click(Sender : TObject);
var
	I : Integer;
begin

	RESTClient1.BaseURL   := 'https://www.receitaws.com.br/v1/cnpj/';
	RESTRequest1.Resource := '{CNPJ}';
	RESTRequest1.Params.AddUrlSegment('CNPJ', Edit5.Text);
	RESTRequest1.Execute;
	Memo1.Clear;
	Memo1.Lines.Add(RESTRequest1.Response.JSONText);


end;

procedure TForm1.Button8Click(Sender: TObject);
begin
	teste;
end;

procedure TForm1.teste;
var
	k : Integer;
begin
	k := 7;

	repeat

		ShowMessage(IntToStr(k));

		Inc(k);

	until (k >= 10);
end;

end.
