unit Setup4D.Rest.Interf;

interface

uses
  RESTRequest4D.Request.Contract,

  {$IFDEF FPC}
    SysUtils, Classes, fpjson;
  {$ELSE}
    System.SysUtils, System.JSON, System.Classes;
  {$ENDIF}

type
  ISetup4DResponse = RESTRequest4D.Request.Contract.IRequest;

  ISetup4DRest = interface

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

  end;

implementation

end.
