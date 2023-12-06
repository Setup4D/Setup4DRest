unit Setup4D.Rest.Interf;

interface

uses
  {$IFDEF FPC}
    SysUtils, Classes, fpjson;
  {$ELSE}
    System.SysUtils, System.JSON, System.Classes;
  {$ENDIF}

type
  ISetup4DRest = interface

    {$IFDEF HAS_PORTUGUES}
    /// <summary>
    /// Define a URL base para a requisição REST.
    /// </summary>
    /// <param name="AValue">
    /// A URL base a ser definida.
    /// </param>
    /// <returns>
    /// A instância atual da interface ISetup4DRest.
    /// </returns>
    {$ELSE}
    /// <summary>
    /// Sets the base URL for the REST request.
    /// </summary>
    /// <param name="AValue">
    /// The base URL to be set.
    /// </param>
    /// <returns>
    /// The current instance of the ISetup4DRest interface.
    /// </returns>
    {$ENDIF}
    function BaseURL(const AValue: string): ISetup4DRest;

    {$IFDEF HAS_PORTUGUES}
    /// <summary>
    /// Configura um proxy para a requisição REST.
    /// </summary>
    /// <param name="AServer">
    /// O endereço do servidor proxy.
    /// </param>
    /// <param name="APassword">
    /// A senha para autenticação no proxy.
    /// </param>
    /// <param name="AUsername">
    /// O nome de usuário para autenticação no proxy.
    /// </param>
    /// <param name="APort">
    /// A porta do servidor proxy.
    /// </param>
    /// <returns>
    /// A instância atual da interface ISetup4DRest.
    /// </returns>
    {$ELSE}
    /// <summary>
    /// Configures a proxy for the REST request.
    /// </summary>
    /// <param name="AServer">
    /// The proxy server address.
    /// </param>
    /// <param name="APassword">
    /// The password for proxy authentication.
    /// </param>
    /// <param name="AUsername">
    /// The username for proxy authentication.
    /// </param>
    /// <param name="APort">
    /// The port for the proxy server.
    /// </param>
    /// <returns>
    /// The current instance of the ISetup4DRest interface.
    /// </returns>
    {$ENDIF}
    function Proxy(const AServer, APassword, AUsername: string; const APort: Integer): ISetup4DRest;

    {$IFDEF HAS_PORTUGUES}
    /// <summary>
    /// Desativa qualquer configuração de proxy previamente definida.
    /// </summary>
    /// <returns>
    /// A instância atual da interface ISetup4DRest.
    /// </returns>
    {$ELSE}
    /// <summary>
    /// Deactivates any previously set proxy configuration.
    /// </summary>
    /// <returns>
    /// The current instance of the ISetup4DRest interface.
    /// </returns>
    {$ENDIF}
    function DeactivateProxy: ISetup4DRest;

    {$IFDEF HAS_PORTUGUES}
    /// <summary>
    /// Define o tempo limite para a requisição REST.
    /// </summary>
    /// <param name="ATimeout">
    /// O valor do tempo limite em milissegundos.
    /// </param>
    /// <returns>
    /// A instância atual da interface ISetup4DRest.
    /// </returns>
    {$ELSE}
    /// <summary>
    /// Sets the timeout for the REST request.
    /// </summary>
    /// <param name="ATimeout">
    /// The timeout value in milliseconds.
    /// </param>
    /// <returns>
    /// The current instance of the ISetup4DRest interface.
    /// </returns>
    {$ENDIF}
    function Timeout(const ATimeout: Integer): ISetup4DRest; overload;

    {$IFDEF HAS_PORTUGUES}
    /// <summary>
    /// Define um sufixo para o recurso na requisição REST.
    /// </summary>
    /// <param name="AResourceSuffix">
    /// O sufixo a ser adicionado ao recurso.
    /// </param>
    /// <returns>
    /// A instância atual da interface ISetup4DRest.
    /// </returns>
    {$ELSE}
    /// <summary>
    /// Sets a suffix for the resource in the REST request.
    /// </summary>
    /// <param name="AResourceSuffix">
    /// The suffix to be added to the resource.
    /// </param>
    /// <returns>
    /// The current instance of the ISetup4DRest interface.
    /// </returns>
    {$ENDIF}
    function Resource(const AResourceSuffix: string): ISetup4DRest; overload;

    {$IFDEF HAS_PORTUGUES}
    /// <summary>
    /// Obtém o recurso atualmente definido na requisição REST.
    /// </summary>
    /// <returns>
    /// O recurso atualmente definido.
    /// </returns>
    {$ELSE}
    /// <summary>
    /// Gets the currently set resource in the REST request.
    /// </summary>
    /// <returns>
    /// The currently set resource.
    /// </returns>
    {$ENDIF}
    function Resource: string; overload;

    {$IFDEF HAS_PORTUGUES}
    /// <summary>
    /// Limpa qualquer configuração de recurso previamente definida na requisição REST.
    /// </summary>
    /// <returns>
    /// A instância atual da interface ISetup4DRest.
    /// </returns>
    {$ELSE}
    /// <summary>
    /// Clears any previously set resource configuration in the REST request.
    /// </summary>
    /// <returns>
    /// The current instance of the ISetup4DRest interface.
    /// </returns>
    {$ENDIF}
    function ClearResource: ISetup4DRest; overload;


    {$IFDEF HAS_PORTUGUES}
    /// <summary>
    /// Define um sufixo adicional para o recurso na requisição REST.
    /// </summary>
    /// <param name="AResourceSuffix">
    /// O sufixo adicional a ser adicionado ao recurso.
    /// </param>
    /// <returns>
    /// A instância atual da interface ISetup4DRest.
    /// </returns>
    {$ELSE}
    /// <summary>
    /// Sets an additional suffix for the resource in the REST request.
    /// </summary>
    /// <param name="AResourceSuffix">
    /// The additional suffix to be added to the resource.
    /// </param>
    /// <returns>
    /// The current instance of the ISetup4DRest interface.
    /// </returns>
    {$ENDIF}
    function ResourceSuffix(const AResourceSuffix: string): ISetup4DRest; overload;

    {$IFDEF HAS_PORTUGUES}
    /// <summary>
    /// Obtém o sufixo adicional atualmente definido para o recurso na requisição REST.
    /// </summary>
    /// <returns>
    /// O sufixo adicional atualmente definido.
    /// </returns>
    {$ELSE}
    /// <summary>
    /// Gets the currently set additional suffix for the resource in the REST request.
    /// </summary>
    /// <returns>
    /// The currently set additional suffix.
    /// </returns>
    {$ENDIF}
    function ResourceSuffix: string; overload;

    {$IFDEF HAS_PORTUGUES}
    /// <summary>
    /// Limpa qualquer sufixo adicional previamente definido para o recurso na requisição REST.
    /// </summary>
    /// <returns>
    /// A instância atual da interface ISetup4DRest.
    /// </returns>
    {$ELSE}
    /// <summary>
    /// Clears any previously set additional suffix for the resource in the REST request.
    /// </summary>
    /// <returns>
    /// The current instance of the ISetup4DRest interface.
    /// </returns>
    {$ENDIF}
    function ClearResourceSuffix: ISetup4DRest; overload;

    {$IFDEF HAS_PORTUGUES}
    /// <summary>
    /// Adiciona um cabeçalho à requisição REST.
    /// </summary>
    /// <param name="AName">
    /// O nome do cabeçalho.
    /// </param>
    /// <param name="AValue">
    /// O valor do cabeçalho.
    /// </param>
    /// <returns>
    /// A instância atual da interface ISetup4DRest.
    /// </returns>
    {$ELSE}
    /// <summary>
    /// Adds a header to the REST request.
    /// </summary>
    /// <param name="AName">
    /// The name of the header.
    /// </param>
    /// <param name="AValue">
    /// The value of the header.
    /// </param>
    /// <returns>
    /// The current instance of the ISetup4DRest interface.
    /// </returns>
    {$ENDIF}
    function AddHeader(const AName, AValue: string): ISetup4DRest;

    {$IFDEF HAS_PORTUGUES}
    /// <summary>
    /// Limpa qualquer cabeçalho previamente definido na requisição REST.
    /// </summary>
    /// <returns>
    /// A instância atual da interface ISetup4DRest.
    /// </returns>
    {$ELSE}
    /// <summary>
    /// Clears any previously set headers in the REST request.
    /// </summary>
    /// <returns>
    /// The current instance of the ISetup4DRest interface.
    /// </returns>
    {$ENDIF}
    function ClearHeaders: ISetup4DRest;

    {$IFDEF HAS_PORTUGUES}
    /// <summary>
    /// Adiciona um parâmetro à requisição REST.
    /// </summary>
    /// <param name="AName">
    /// O nome do parâmetro.
    /// </param>
    /// <param name="AValue">
    /// O valor do parâmetro.
    /// </param>
    /// <returns>
    /// A instância atual da interface ISetup4DRest.
    /// </returns>
    {$ELSE}
    /// <summary>
    /// Adds a parameter to the REST request.
    /// </summary>
    /// <param name="AName">
    /// The name of the parameter.
    /// </param>
    /// <param name="AValue">
    /// The value of the parameter.
    /// </param>
    /// <returns>
    /// The current instance of the ISetup4DRest interface.
    /// </returns>
    {$ENDIF}
    function AddParam(const AName, AValue: string): ISetup4DRest;

    {$IFDEF HAS_PORTUGUES}
    /// <summary>
    /// Limpa qualquer parâmetro previamente definido na requisição REST.
    /// </summary>
    /// <returns>
    /// A instância atual da interface ISetup4DRest.
    /// </returns>
    {$ELSE}
    /// <summary>
    /// Clears any previously set parameters in the REST request.
    /// </summary>
    /// <returns>
    /// The current instance of the ISetup4DRest interface.
    /// </returns>
    {$ENDIF}
    function ClearParams: ISetup4DRest;

    {$IFDEF HAS_PORTUGUES}
    /// <summary>
    /// Define o conteúdo do corpo da requisição REST a partir de uma string.
    /// </summary>
    /// <param name="AContent">
    /// A string contendo o conteúdo do corpo da requisição.
    /// </param>
    /// <returns>
    /// A instância atual da interface ISetup4DRest.
    /// </returns>
    {$ELSE}
    /// <summary>
    /// Sets the content of the REST request body from a string.
    /// </summary>
    /// <param name="AContent">
    /// The string containing the content of the request body.
    /// </param>
    /// <returns>
    /// The current instance of the ISetup4DRest interface.
    /// </returns>
    {$ENDIF}
    function AddBody(const AContent: string): ISetup4DRest; overload;

    {$IFDEF HAS_PORTUGUES}
    /// <summary>
    /// Define o conteúdo do corpo da requisição REST a partir de um objeto TJSONObject.
    /// </summary>
    /// <param name="AContent">
    /// O objeto TJSONObject contendo o conteúdo do corpo da requisição.
    /// </param>
    /// <param name="AOwns">
    /// Indica se o objeto TJSONObject é de propriedade da requisição e deve ser liberado.
    /// </param>
    /// <returns>
    /// A instância atual da interface ISetup4DRest.
    /// </returns>
    {$ELSE}
    /// <summary>
    /// Sets the content of the REST request body from a TJSONObject.
    /// </summary>
    /// <param name="AContent">
    /// The TJSONObject containing the content of the request body.
    /// </param>
    /// <param name="AOwns">
    /// Indicates whether the TJSONObject is owned by the request and should be freed.
    /// </param>
    /// <returns>
    /// The current instance of the ISetup4DRest interface.
    /// </returns>
    {$ENDIF}
    function AddBody(const AContent: TJSONObject; const AOwns: Boolean = True): ISetup4DRest; overload;

    {$IFDEF HAS_PORTUGUES}
    /// <summary>
    /// Define o conteúdo do corpo da requisição REST a partir de um objeto TJSONArray.
    /// </summary>
    /// <param name="AContent">
    /// O objeto TJSONArray contendo o conteúdo do corpo da requisição.
    /// </param>
    /// <param name="AOwns">
    /// Indica se o objeto TJSONArray é de propriedade da requisição e deve ser liberado.
    /// </param>
    /// <returns>
    /// A instância atual da interface ISetup4DRest.
    /// </returns>
    {$ELSE}
    /// <summary>
    /// Sets the content of the REST request body from a TJSONArray.
    /// </summary>
    /// <param name="AContent">
    /// The TJSONArray containing the content of the request body.
    /// </param>
    /// <param name="AOwns">
    /// Indicates whether the TJSONArray is owned by the request and should be freed.
    /// </param>
    /// <returns>
    /// The current instance of the ISetup4DRest interface.
    /// </returns>
    {$ENDIF}
    function AddBody(const AContent: TJSONArray; const AOwns: Boolean = True): ISetup4DRest; overload;

    {$IFDEF HAS_PORTUGUES}
    /// <summary>
    /// Define o conteúdo do corpo da requisição REST a partir de um objeto.
    /// </summary>
    /// <param name="AContent">
    /// O objeto contendo o conteúdo do corpo da requisição.
    /// </param>
    /// <param name="AOwns">
    /// Indica se o objeto é de propriedade da requisição e deve ser liberado.
    /// </param>
    /// <returns>
    /// A instância atual da interface ISetup4DRest.
    /// </returns>
    {$ELSE}
    /// <summary>
    /// Sets the content of the REST request body from an object.
    /// </summary>
    /// <param name="AContent">
    /// The object containing the content of the request body.
    /// </param>
    /// <param name="AOwns">
    /// Indicates whether the object is owned by the request and should be freed.
    /// </param>
    /// <returns>
    /// The current instance of the ISetup4DRest interface.
    /// </returns>
    {$ENDIF}
    function AddBody(const AContent: TObject; const AOwns: Boolean = True): ISetup4DRest; overload;

    {$IFDEF HAS_PORTUGUES}
    /// <summary>
    /// Define o conteúdo do corpo da requisição REST a partir de um fluxo de dados.
    /// </summary>
    /// <param name="AContent">
    /// O fluxo de dados contendo o conteúdo do corpo da requisição.
    /// </param>
    /// <param name="AOwns">
    /// Indica se o fluxo de dados é de propriedade da requisição e deve ser liberado.
    /// </param>
    /// <returns>
    /// A instância atual da interface ISetup4DRest.
    /// </returns>
    {$ELSE}
    /// <summary>
    /// Sets the content of the REST request body from a stream.
    /// </summary>
    /// <param name="AContent">
    /// The stream containing the content of the request body.
    /// </param>
    /// <param name="AOwns">
    /// Indicates whether the stream is owned by the request and should be freed.
    /// </param>
    /// <returns>
    /// The current instance of the ISetup4DRest interface.
    /// </returns>
    {$ENDIF}
    function AddBody(const AContent: TStream; const AOwns: Boolean = True): ISetup4DRest; overload;

    {$IFDEF HAS_PORTUGUES}
    /// <summary>
    /// Limpa qualquer conteúdo do corpo previamente definido na requisição REST.
    /// </summary>
    /// <returns>
    /// A instância atual da interface ISetup4DRest.
    /// </returns>
    {$ELSE}
    /// <summary>
    /// Clears any previously set body content in the REST request.
    /// </summary>
    /// <returns>
    /// The current instance of the ISetup4DRest interface.
    /// </returns>
    {$ENDIF}
    function ClearBody: ISetup4DRest;

    {$IFDEF HAS_PORTUGUES}
    /// <summary>
    /// Define um token de autenticação para a requisição REST.
    /// </summary>
    /// <param name="AToken">
    /// O token a ser utilizado na autenticação.
    /// </param>
    /// <returns>
    /// A instância atual da interface ISetup4DRest.
    /// </returns>
    {$ELSE}
    /// <summary>
    /// Sets an authentication token for the REST request.
    /// </summary>
    /// <param name="AToken">
    /// The token to be used in authentication.
    /// </param>
    /// <returns>
    /// The current instance of the ISetup4DRest interface.
    /// </returns>
    {$ENDIF}
    function Token(const AToken: string): ISetup4DRest;

    {$IFDEF HAS_PORTUGUES}
    /// <summary>
    /// Define um token de autenticação no formato "Bearer" para a requisição REST.
    /// </summary>
    /// <param name="AToken">
    /// O token a ser utilizado na autenticação.
    /// </param>
    /// <returns>
    /// A instância atual da interface ISetup4DRest.
    /// </returns>
    {$ELSE}
    /// <summary>
    /// Sets an authentication token in "Bearer" format for the REST request.
    /// </summary>
    /// <param name="AToken">
    /// The token to be used in authentication.
    /// </param>
    /// <returns>
    /// The current instance of the ISetup4DRest interface.
    /// </returns>
    {$ENDIF}
    function TokenBearer(const AToken: string): ISetup4DRest;

    {$IFDEF HAS_PORTUGUES}
    /// <summary>
    /// Define a autenticação básica (username e password) para a requisição REST.
    /// </summary>
    /// <param name="AUsername">
    /// O nome de usuário para autenticação básica.
    /// </param>
    /// <param name="APassword">
    /// A senha para autenticação básica.
    /// </param>
    /// <returns>
    /// A instância atual da interface ISetup4DRest.
    /// </returns>
    {$ELSE}
    /// <summary>
    /// Sets basic authentication (username and password) for the REST request.
    /// </summary>
    /// <param name="AUsername">
    /// The username for basic authentication.
    /// </param>
    /// <param name="APassword">
    /// The password for basic authentication.
    /// </param>
    /// <returns>
    /// The current instance of the ISetup4DRest interface.
    /// </returns>
    {$ENDIF}
    function BasicAuthentication(const AUsername, APassword: string): ISetup4DRest;

    {$IFDEF HAS_PORTUGUES}
    /// <summary>
    /// Define o tipo de conteúdo que o cliente aceita na resposta da requisição REST.
    /// </summary>
    /// <param name="AAccept">
    /// O tipo de conteúdo desejado (por exemplo, "application/json").
    /// </param>
    /// <returns>
    /// A instância atual da interface ISetup4DRest.
    /// </returns>
    {$ELSE}
    /// <summary>
    /// Sets the content type that the client accepts in the response of the REST request.
    /// </summary>
    /// <param name="AAccept">
    /// The desired content type (e.g., "application/json").
    /// </param>
    /// <returns>
    /// The current instance of the ISetup4DRest interface.
    /// </returns>
    {$ENDIF}
    function Accept(const AAccept: string): ISetup4DRest; overload;

    {$IFDEF HAS_PORTUGUES}
    /// <summary>
    /// Define a codificação de caracteres que o cliente aceita na resposta da requisição REST.
    /// </summary>
    /// <param name="AAcceptCharset">
    /// A codificação de caracteres desejada (por exemplo, "utf-8").
    /// </param>
    /// <returns>
    /// A instância atual da interface ISetup4DRest.
    /// </returns>
    {$ELSE}
    /// <summary>
    /// Sets the character encoding that the client accepts in the response of the REST request.
    /// </summary>
    /// <param name="AAcceptCharset">
    /// The desired character encoding (e.g., "utf-8").
    /// </param>
    /// <returns>
    /// The current instance of the ISetup4DRest interface.
    /// </returns>
    {$ENDIF}
    function AcceptCharset(const AAcceptCharset: string): ISetup4DRest; overload;

    {$IFDEF HAS_PORTUGUES}
    /// <summary>
    /// Define as codificações de conteúdo que o cliente aceita na resposta da requisição REST.
    /// </summary>
    /// <param name="AAcceptEncoding">
    /// As codificações de conteúdo desejadas (por exemplo, "gzip, deflate").
    /// </param>
    /// <returns>
    /// A instância atual da interface ISetup4DRest.
    /// </returns>
    {$ELSE}
    /// <summary>
    /// Sets the content encodings that the client accepts in the response of the REST request.
    /// </summary>
    /// <param name="AAcceptEncoding">
    /// The desired content encodings (e.g., "gzip, deflate").
    /// </param>
    /// <returns>
    /// The current instance of the ISetup4DRest interface.
    /// </returns>
    {$ENDIF}
    function AcceptEncoding(const AAcceptEncoding: string): ISetup4DRest; overload;

    {$IFDEF HAS_PORTUGUES}
    /// <summary>
    /// Realiza uma requisição HTTP GET utilizando as configurações previamente definidas.
    /// </summary>
    /// <returns>
    /// A instância atual da interface ISetup4DRest.
    /// </returns>
    {$ELSE}
    /// <summary>
    /// Performs an HTTP GET request using the previously defined settings.
    /// </summary>
    /// <returns>
    /// The current instance of the ISetup4DRest interface.
    /// </returns>
    {$ENDIF}
    function Get: ISetup4DRest;

    {$IFDEF HAS_PORTUGUES}
    /// <summary>
    /// Realiza uma requisição HTTP POST utilizando as configurações previamente definidas.
    /// </summary>
    /// <returns>
    /// A instância atual da interface ISetup4DRest.
    /// </returns>
    {$ELSE}
    /// <summary>
    /// Performs an HTTP POST request using the previously defined settings.
    /// </summary>
    /// <returns>
    /// The current instance of the ISetup4DRest interface.
    /// </returns>
    {$ENDIF}
    function Post: ISetup4DRest;

    {$IFDEF HAS_PORTUGUES}
    /// <summary>
    /// Realiza uma requisição HTTP PUT utilizando as configurações previamente definidas.
    /// </summary>
    /// <returns>
    /// A instância atual da interface ISetup4DRest.
    /// </returns>
    {$ELSE}
    /// <summary>
    /// Performs an HTTP PUT request using the previously defined settings.
    /// </summary>
    /// <returns>
    /// The current instance of the ISetup4DRest interface.
    /// </returns>
    {$ENDIF}
    function Put: ISetup4DRest;

    {$IFDEF HAS_PORTUGUES}
    /// <summary>
    /// Realiza uma requisição HTTP DELETE utilizando as configurações previamente definidas.
    /// </summary>
    /// <returns>
    /// A instância atual da interface ISetup4DRest.
    /// </returns>
    {$ELSE}
    /// <summary>
    /// Performs an HTTP DELETE request using the previously defined settings.
    /// </summary>
    /// <returns>
    /// The current instance of the ISetup4DRest interface.
    /// </returns>
    {$ENDIF}
    function Delete: ISetup4DRest;

    {$IFDEF HAS_PORTUGUES}
    /// <summary>
    /// Realiza uma requisição HTTP PATCH utilizando as configurações previamente definidas.
    /// </summary>
    /// <returns>
    /// A instância atual da interface ISetup4DRest.
    /// </returns>
    {$ELSE}
    /// <summary>
    /// Performs an HTTP PATCH request using the previously defined settings.
    /// </summary>
    /// <returns>
    /// The current instance of the ISetup4DRest interface.
    /// </returns>
    {$ENDIF}
    function Patch: ISetup4DRest;

    {$IFDEF HAS_PORTUGUES}
    /// <summary>
    /// Obtém o conteúdo da resposta da última requisição como uma string.
    /// </summary>
    /// <returns>
    /// A string contendo o conteúdo da resposta.
    /// </returns>
    {$ELSE}
    /// <summary>
    /// Gets the content of the last response as a string.
    /// </summary>
    /// <returns>
    /// The string containing the content of the response.
    /// </returns>
    {$ENDIF}
    function AsContent: string;

    {$IFDEF HAS_PORTUGUES}
    /// <summary>
    /// Obtém o código de status da última resposta HTTP.
    /// </summary>
    /// <returns>
    /// O código de status como um valor Int64.
    /// </returns>
    {$ELSE}
    /// <summary>
    /// Gets the status code of the last HTTP response.
    /// </summary>
    /// <returns>
    /// The status code as an Int64 value.
    /// </returns>
    {$ENDIF}
    function AsStatusCode: Int64;

    {$IFDEF HAS_PORTUGUES}
    /// <summary>
    /// Obtém o valor JSON da última resposta.
    /// </summary>
    /// <returns>
    /// O valor JSON como {$IFDEF FPC}TJSONData{$ELSE}TJSONValue{$ENDIF}.
    /// </returns>
    {$ELSE}
    /// <summary>
    /// Gets the JSON value of the last response.
    /// </summary>
    /// <returns>
    /// The JSON value as {$IFDEF FPC}TJSONData{$ELSE}TJSONValue{$ENDIF}.
    /// </returns>
    {$ENDIF}
    function AsJSONValue: {$IFDEF FPC}TJSONData{$ELSE}TJSONValue{$ENDIF};

  end;

implementation

end.
