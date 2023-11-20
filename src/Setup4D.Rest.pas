unit Setup4D.Rest;

interface

uses
  RESTRequest4D,

  Setup4D.Rest.Interf,

  {$IFDEF FPC}
    SysUtils, Classes, fpjson;
  {$ELSE}
    System.SysUtils, System.JSON, System.Classes;
  {$ENDIF}

type
  TSetup4DRest = class(TInterfacedObject, ISetup4DRest)
  private
    FRequest : IRequest;
    FResponse : IResponse;

  protected
    function BaseURL(Const AValue: string) : ISetup4DRest;

    function Timeout(const ATimeout: Integer): ISetup4DRest; overload;

    function Resource(const AResourceSuffix: string): ISetup4DRest; overload;
    function Resource: string; overload;
    function ClearResource: ISetup4DRest; overload;

    function ResourceSuffix(const AResourceSuffix: string): ISetup4DRest; overload;
    function ResourceSuffix: string; overload;
    function ClearResourceSuffix: ISetup4DRest; overload;

    function AddHeader(const AName, AValue: string): ISetup4DRest;
    function ClearHeaders: ISetup4DRest;

    function AddParam(const AName, AValue: string): ISetup4DRest;
    function ClearParams: ISetup4DRest;

    function AddBody(const AContent: string): ISetup4DRest; overload;
    function AddBody(const AContent: TJSONObject; const AOwns: Boolean = True): ISetup4DRest; overload;
    function AddBody(const AContent: TJSONArray; const AOwns: Boolean = True): ISetup4DRest; overload;
    function AddBody(const AContent: TObject; const AOwns: Boolean = True): ISetup4DRest; overload;
    function AddBody(const AContent: TStream; const AOwns: Boolean = True): ISetup4DRest; overload;
    function ClearBody: ISetup4DRest;

    function Token(const AToken: string): ISetup4DRest;
    function TokenBearer(const AToken: string): ISetup4DRest;
    function BasicAuthentication(const AUsername, APassword: string): ISetup4DRest;

    function Accept(const AAccept: string): ISetup4DRest; overload;
    function AcceptCharset(const AAcceptCharset: string): ISetup4DRest; overload;
    function AcceptEncoding(const AAcceptEncoding: string): ISetup4DRest; overload;

    function Get: ISetup4DRest;
    function Post: ISetup4DRest;
    function Put: ISetup4DRest;
    function Delete: ISetup4DRest;
    function Patch: ISetup4DRest;

    function AsContent : string;
    function AsStatusCode : Int64;
    function AsJSONValue : {$IFDEF FPC}TJSONData{$ELSE}TJSONValue{$ENDIF};


  public
    Constructor Create;
    Destructor Destroy; override;
    class function New: ISetup4DRest;
  end;

implementation

{ TSetup4DRest }

function TSetup4DRest.Accept(const AAccept: string): ISetup4DRest;
begin
  Result := Self;
  FRequest.Accept(AAccept);
end;

function TSetup4DRest.AcceptCharset(
  const AAcceptCharset: string): ISetup4DRest;
begin
  Result := Self;
  FRequest.AcceptCharset(AAcceptCharset);
end;

function TSetup4DRest.AcceptEncoding(
  const AAcceptEncoding: string): ISetup4DRest;
begin
  Result := Self;
  FRequest.AcceptEncoding(AAcceptEncoding);
end;

function TSetup4DRest.AddBody(const AContent: TStream;
  const AOwns: Boolean): ISetup4DRest;
begin
  Result := Self;
  FRequest.AddBody(AContent, AOwns);
end;

function TSetup4DRest.AddBody(const AContent: TObject;
  const AOwns: Boolean): ISetup4DRest;
begin
  Result := Self;
  FRequest.AddBody(AContent, AOwns);
end;

function TSetup4DRest.AddBody(const AContent: TJSONArray;
  const AOwns: Boolean): ISetup4DRest;
begin
  Result := Self;
  FRequest.AddBody(AContent, AOwns);
end;

function TSetup4DRest.AddBody(const AContent: TJSONObject;
  const AOwns: Boolean): ISetup4DRest;
begin
  Result := Self;
  FRequest.AddBody(AContent, AOwns);
end;

function TSetup4DRest.AddBody(const AContent: string): ISetup4DRest;
begin
  Result := Self;
  FRequest.AddBody(AContent);
end;

function TSetup4DRest.AddHeader(const AName, AValue: string): ISetup4DRest;
begin
  Result := Self;
  FRequest.AddHeader(AName, AValue);

end;

function TSetup4DRest.AddParam(const AName, AValue: string): ISetup4DRest;
begin
  Result := Self;
  FRequest.AddParam(AName, AValue);
end;

function TSetup4DRest.AsContent: string;
begin
  Result := FResponse.Content;
end;

function TSetup4DRest.AsJSONValue: {$IFDEF FPC}TJSONData{$ELSE}TJSONValue{$ENDIF};
begin
  Result := FResponse.JSONValue;
end;

function TSetup4DRest.AsStatusCode: Int64;
begin
  Result := FResponse.StatusCode;
end;

function TSetup4DRest.BaseURL(const AValue: string): ISetup4DRest;
begin
  Result := Self;
  FRequest.BaseURL(AValue);
end;

function TSetup4DRest.BasicAuthentication(const AUsername,
  APassword: string): ISetup4DRest;
begin
  Result := Self;
  FRequest.BasicAuthentication(AUsername, APassword);
end;

function TSetup4DRest.ClearBody: ISetup4DRest;
begin
  Result := Self;
  FRequest.ClearBody
end;

function TSetup4DRest.ClearHeaders: ISetup4DRest;
begin
  Result := Self;
  FRequest.ClearHeaders;
end;

function TSetup4DRest.ClearParams: ISetup4DRest;
begin
  Result := Self;
  FRequest.ClearParams;
end;

function TSetup4DRest.ClearResource: ISetup4DRest;
begin
  Result := Self;
  FRequest.Resource(EmptyStr);
end;

function TSetup4DRest.ClearResourceSuffix: ISetup4DRest;
begin
  Result := Self;
  FRequest.ResourceSuffix(EmptyStr);
end;

constructor TSetup4DRest.Create;
begin
  FRequest := TRequest.New;
end;

function TSetup4DRest.Delete: ISetup4DRest;
begin
  Result := Self;
  FResponse := FRequest.Delete;
end;

destructor TSetup4DRest.Destroy;
begin

  inherited;
end;

function TSetup4DRest.Get: ISetup4DRest;
begin
  Result := Self;
  FResponse := FRequest.Get;
end;

class function TSetup4DRest.New: ISetup4DRest;
begin
  Result:= Self.Create;
end;

function TSetup4DRest.Patch: ISetup4DRest;
begin
  Result := Self;
  FResponse := FRequest.Patch;
end;

function TSetup4DRest.Post: ISetup4DRest;
begin
  Result := Self;
  FResponse := FRequest.Post;
end;

function TSetup4DRest.Put: ISetup4DRest;
begin
  Result := Self;
  FResponse := FRequest.Put;
end;

function TSetup4DRest.Resource(
  const AResourceSuffix: string): ISetup4DRest;
begin
  Result := Self;
  FRequest.Resource(AResourceSuffix);
end;

function TSetup4DRest.Resource: string;
begin
  Result := FRequest.Resource;
end;

function TSetup4DRest.ResourceSuffix(
  const AResourceSuffix: string): ISetup4DRest;
begin
  Result := Self;
  FRequest.ResourceSuffix(AResourceSuffix);
end;

function TSetup4DRest.ResourceSuffix: string;
begin
  Result := FRequest.ResourceSuffix;
end;

function TSetup4DRest.Timeout(const ATimeout: Integer): ISetup4DRest;
begin
  Result := Self;
  FRequest.Timeout(ATimeout);
end;

function TSetup4DRest.Token(const AToken: string): ISetup4DRest;
begin
  Result := Self;
  FRequest.Token(AToken);
end;

function TSetup4DRest.TokenBearer(const AToken: string): ISetup4DRest;
begin
  Result := Self;
  FRequest.TokenBearer(AToken);
end;

initialization
 {$IFDEF FPC}
  // Define o CodePage para UTF-8
  if not (DefaultSystemCodePage = CP_UTF8) then
    DefaultSystemCodePage := CP_UTF8;
  {$ENDIF}

end.