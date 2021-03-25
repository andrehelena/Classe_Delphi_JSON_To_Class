unit UclasseCNPJ;

interface

uses
  Pkg.Json.DTO, System.Generics.Collections, REST.Json.Types;

{$M+}

type
  TExtraDTO = class
  end;
  
  TQsaDTO = class
  private
    FNome: string;
    FNome_Rep_Legal: string;
    FPais_Origem: string;
    FQual: string;
    FQual_Rep_Legal: string;
  published
    property Nome: string read FNome write FNome;
    property Nome_Rep_Legal: string read FNome_Rep_Legal write FNome_Rep_Legal;
    property Pais_Origem: string read FPais_Origem write FPais_Origem;
    property Qual: string read FQual write FQual;
    property Qual_Rep_Legal: string read FQual_Rep_Legal write FQual_Rep_Legal;
  end;
  
  TAtividades_SecundariasDTO = class
  private
    FCode: string;
    FText: string;
  published
    property Code: string read FCode write FCode;
    property Text: string read FText write FText;
  end;
  
  TAtividade_PrincipalDTO = class
  private
    FCode: string;
    FText: string;
  published
    property Code: string read FCode write FCode;
    property Text: string read FText write FText;
  end;
  
  TClassecnpjDTO = class(TJsonDTO)
  private
    FAbertura: string;
    [JSONName('atividade_principal'), JSONMarshalled(False)]
    FAtividade_PrincipalArray: TArray<TAtividade_PrincipalDTO>;
    [GenericListReflect]
    FAtividade_Principal: TObjectList<TAtividade_PrincipalDTO>;
    [JSONName('atividades_secundarias'), JSONMarshalled(False)]
    FAtividades_SecundariasArray: TArray<TAtividades_SecundariasDTO>;
    [GenericListReflect]
    FAtividades_Secundarias: TObjectList<TAtividades_SecundariasDTO>;
    FBairro: string;
    FCapital_Social: string;
    FCep: string;
    FCnpj: string;
    FComplemento: string;
    FData_Situacao: string;
    FData_Situacao_Especial: string;
    FEfr: string;
    FEmail: string;
    FExtra: TExtraDTO;
    FFantasia: string;
    FLogradouro: string;
    FMotivo_Situacao: string;
    FMunicipio: string;
    FNatureza_Juridica: string;
    FNome: string;
    FNumero: string;
    FPorte: string;
    [JSONName('qsa'), JSONMarshalled(False)]
    FQsaArray: TArray<TQsaDTO>;
    [GenericListReflect]
    FQsa: TObjectList<TQsaDTO>;
    FSituacao: string;
    FSituacao_Especial: string;
    FStatus: string;
    FTelefone: string;
    FTipo: string;
    FUf: string;
    FUltima_Atualizacao: TDateTime;
    function GetAtividade_Principal: TObjectList<TAtividade_PrincipalDTO>;
    function GetAtividades_Secundarias: TObjectList<TAtividades_SecundariasDTO>;
    function GetQsa: TObjectList<TQsaDTO>;
  published
    property Abertura: string read FAbertura write FAbertura;
    property Atividade_Principal: TObjectList<TAtividade_PrincipalDTO> read GetAtividade_Principal;
    property Atividades_Secundarias: TObjectList<TAtividades_SecundariasDTO> read GetAtividades_Secundarias;
    property Bairro: string read FBairro write FBairro;
    property Capital_Social: string read FCapital_Social write FCapital_Social;
    property Cep: string read FCep write FCep;
    property Cnpj: string read FCnpj write FCnpj;
    property Complemento: string read FComplemento write FComplemento;
    property Data_Situacao: string read FData_Situacao write FData_Situacao;
    property Data_Situacao_Especial: string read FData_Situacao_Especial write FData_Situacao_Especial;
    property Efr: string read FEfr write FEfr;
    property Email: string read FEmail write FEmail;
    property Extra: TExtraDTO read FExtra;
    property Fantasia: string read FFantasia write FFantasia;
    property Logradouro: string read FLogradouro write FLogradouro;
    property Motivo_Situacao: string read FMotivo_Situacao write FMotivo_Situacao;
    property Municipio: string read FMunicipio write FMunicipio;
    property Natureza_Juridica: string read FNatureza_Juridica write FNatureza_Juridica;
    property Nome: string read FNome write FNome;
    property Numero: string read FNumero write FNumero;
    property Porte: string read FPorte write FPorte;
    property Qsa: TObjectList<TQsaDTO> read GetQsa;
    property Situacao: string read FSituacao write FSituacao;
    property Situacao_Especial: string read FSituacao_Especial write FSituacao_Especial;
    property Status: string read FStatus write FStatus;
    property Telefone: string read FTelefone write FTelefone;
    property Tipo: string read FTipo write FTipo;
    property Uf: string read FUf write FUf;
    property Ultima_Atualizacao: TDateTime read FUltima_Atualizacao write FUltima_Atualizacao;
  public
    constructor Create; override;
    destructor Destroy; override;
  end;
  
implementation

{ TClassecnpjDTO }

constructor TClassecnpjDTO.Create;
begin
  inherited;
  FExtra := TExtraDTO.Create;
end;

destructor TClassecnpjDTO.Destroy;
begin
  FExtra.Free;
  GetAtividade_Principal.Free;
  GetAtividades_Secundarias.Free;
  GetQsa.Free;
  inherited;
end;

function TClassecnpjDTO.GetAtividade_Principal: TObjectList<TAtividade_PrincipalDTO>;
begin
  Result := ObjectList<TAtividade_PrincipalDTO>(FAtividade_Principal, FAtividade_PrincipalArray);
end;

function TClassecnpjDTO.GetAtividades_Secundarias: TObjectList<TAtividades_SecundariasDTO>;
begin
  Result := ObjectList<TAtividades_SecundariasDTO>(FAtividades_Secundarias, FAtividades_SecundariasArray);
end;

function TClassecnpjDTO.GetQsa: TObjectList<TQsaDTO>;
begin
  Result := ObjectList<TQsaDTO>(FQsa, FQsaArray);
end;

end.