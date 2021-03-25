unit uViaCEP;

interface

uses
	Pkg.Json.DTO,
	System.Generics.Collections,
	REST.Json.Types;

{$M+}


type
	TViacepDTO = class(TJsonDTO)
		private
			FBairro      : string;
			FCep         : string;
			FComplemento : string;
			FDdd         : string;
			FGia         : string;
			FIbge        : string;
			FLocalidade  : string;
			FLogradouro  : string;
			FSiafi       : string;
			FUf          : string;
			FErro        : Boolean;
		published
			property Bairro      : string read FBairro write FBairro;
			property Cep         : string read FCep write FCep;
			property Complemento : string read FComplemento write FComplemento;
			property Ddd         : string read FDdd write FDdd;
			property Gia         : string read FGia write FGia;
			property Ibge        : string read FIbge write FIbge;
			property Localidade  : string read FLocalidade write FLocalidade;
			property Logradouro  : string read FLogradouro write FLogradouro;
			property Siafi       : string read FSiafi write FSiafi;
			property Uf          : string read FUf write FUf;
			property Erro        : Boolean read FErro write FErro;
	end;

implementation

end.
