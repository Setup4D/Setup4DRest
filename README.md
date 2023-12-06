[![Setup4D Logo](https://setup4d.com.br/github/assets/logotransparente.png)](https://www.setup4d.com.br)

<a href="https://github.com/Setup4D/Setup4DRest/blob/main/README-PTBr.md">
   <img src="https://user-images.githubusercontent.com/138676601/275272225-61609e1d-764f-4e9d-9ead-8593985af595.png">
</a>

<a href="https://github.com/Setup4D/Setup4DRest/blob/main/README.md">
   <img src="https://user-images.githubusercontent.com/138676601/275272281-5f9f5df0-d563-4046-b5a9-207f0fa0e674.png">
</a>

# Setup4DRest

![Delphi Supported Versions](https://img.shields.io/badge/Delphi%20Supported%20Versions-XE3..11-blue.svg)
![Platforms](https://img.shields.io/badge/Supported%20platforms-Win32%20and%20Win64-red.svg)

Welcome to the Setup4DRest project repository! This addon was developed to streamline interaction with REST APIs in Delphi projects, providing advanced features for efficient integration of web services into your applications.

Setup4DRest simplifies the process of making HTTP requests and manipulating JSON data, making these operations fast, simple, and reliable. With this set of tools, you can create RESTful clients in Delphi more effectively, providing an enhanced experience in developing applications that depend on interactions with web APIs.

## 📐 How to use

### ⚙️ Installation

#### ⚡️ Automatic (via Boss)

* `[Optional]` To make it easier, I recommend using [**Boss**](https://github.com/HashLoad/boss) (Dependency Manager for Delphi) for installation. Just run the command below in a terminal (e.g., Windows PowerShell):

```
boss install github.com/Setup4D/Setup4DRest
```

#### ⚡️ Manual (Delphi)

* If you choose to install manually, add the folder below to your project, under *Project > Options > Resource Compiler > Directories and Conditionals > Include file search path*.

```
../Setup4DRest/src
```

### ⚙️ Dependencies

* This project has a fundamental dependency on [**RESTRequest4Delphi**](https://github.com/viniciussanchez/RESTRequest4Delphi), a robust tool that facilitates integration with REST services. It is recommended to install RESTRequest4Delphi before using Setup4DRest, ensuring a technical and effective approach to interacting with REST services in Delphi projects. It's important to note that when using Boss, this dependency is automatically installed.

## 📐 How to use

### ⚙️ Language of messages

* The system supports two languages, with English being the default language. However, it is possible to use the application in Brazilian Portuguese. To do this, follow the steps below:

```
Access Project > Options > Delphi Compiler > Conditionals Defines
```

* Add the directive *HAS_PORTUGUES*, necessary to enable Brazilian Portuguese language.


## 🌐 TSetup4DRest Function

The `TSetup4DRest` class implements additional methods for specific configuration of HTTP requests.

### 📐 Methods

#### ✔️ `function BaseURL(const AValue: string): ISetup4DRest;`

Sets the base URL for the requests.

- **Parameters:**
  - `AValue`: The base URL.

#### ✔️ `function Proxy(const AServer, APassword, AUsername: string; const APort: Integer): ISetup4DRest;`

Configures a proxy for the requests.

- **Parameters:**
  - `AServer`: The proxy server address.
  - `APassword`: The password for authentication on the proxy.
  - `AUsername`: The username for authentication on the proxy.
  - `APort`: The proxy server port.

#### ✔️ `function DeactivateProxy: ISetup4DRest;`

Deactivates the proxy configuration.

#### ✔️ `function Timeout(const ATimeout: Integer): ISetup4DRest;`

Sets the timeout for the requests.

- **Parameters:**
  - `ATimeout`: The timeout in milliseconds.

#### ✔️ `function Resource(const AResourceSuffix: string): ISetup4DRest;`

Sets the target resource for the request.

- **Parameters:**
  - `AResourceSuffix`: The resource suffix.

#### ✔️ `function Resource: string;`

Gets the currently configured resource.

#### ✔️ `function ClearResource: ISetup4DRest;`

Clears the resource configuration.

#### ✔️ `function ResourceSuffix(const AResourceSuffix: string): ISetup4DRest;`

Sets the resource suffix for the request.

- **Parameters:**
  - `AResourceSuffix`: The resource suffix.

#### ✔️ `function ResourceSuffix: string;`

Gets the currently configured resource suffix.

#### ✔️ `function ClearResourceSuffix: ISetup4DRest;`

Clears the resource suffix configuration.

#### ✔️ `function AddHeader(const AName, AValue: string): ISetup4DRest;`

Adds a header to the request.

- **Parameters:**
  - `AName`: The header name.
  - `AValue`: The header value.

#### ✔️ `function ClearHeaders: ISetup4DRest;`

Clears all configured headers.

#### ✔️ `function AddParam(const AName, AValue: string): ISetup4DRest;`

Adds a parameter to the request.

- **Parameters:**
  - `AName`: The parameter name.
  - `AValue`: The parameter value.

#### ✔️ `function ClearParams: ISetup4DRest;`

Clears all configured parameters.

#### ✔️ `function AddBody(const AContent: string): ISetup4DRest; overload;`

Adds a text body to the request.

- **Parameters:**
  - `AContent`: The text content to be added as the request body.

#### ✔️ `function AddBody(const AContent: TJSONObject; const AOwns: Boolean = True): ISetup4DRest; overload;`

Adds a JSON object body to the request.

- **Parameters:**
  - `AContent`: The JSON object to be added as the request body.
  - `AOwns`: Indicates whether the request should take ownership of the content property.

#### ✔️ `function AddBody(const AContent: TJSONArray; const AOwns: Boolean = True): ISetup4DRest; overload;`

Adds a JSON array body to the request.

- **Parameters:**
  - `AContent`: The JSON array to be added as the request body.
  - `AOwns`: Indicates whether the request should take ownership of the content property.

#### ✔️ `function AddBody(const AContent: TObject; const AOwns: Boolean = True): ISetup4DRest; overload;`

Adds an object body to the request.

- **Parameters:**
  - `AContent`: The object to be added as the request body.
  - `AOwns`: Indicates whether the request should take ownership of the content property.

#### ✔️ `function AddBody(const AContent: TStream; const AOwns: Boolean = True): ISetup4DRest; overload;`

Adds a stream body to the request.

- **Parameters:**
  - `AContent`: The stream to be added as the request body.
  - `AOwns`: Indicates whether the request should take ownership of the content property.

#### ✔️ `function ClearBody: ISetup4DRest;`

Clears the request body.

#### ✔️ `function Token(const AToken: string): ISetup4DRest;`

Sets a token for request authentication.

- **Parameters:**
  - `AToken`: The token to be used for authentication.

#### ✔️ `function TokenBearer(const AToken: string): ISetup4DRest;`

Sets a token in Bearer format for request authentication.

- **Parameters:**
  - `AToken`: The token to be used for authentication.

#### ✔️ `function BasicAuthentication(const AUsername, APassword: string): ISetup4DRest;`

Sets basic authentication credentials for the request.

- **Parameters:**
  - `AUsername`: User name.
  - `APassword`: Password associated with the user name.

#### ✔️ `function Accept(const AAccept: string): ISetup4DRest; overload;`

Sets the "Accept" header for the request.

- **Parameters:**
  - `AAccept`: The value for the "Accept" header.

#### ✔️ `function AcceptCharset(const AAcceptCharset: string): ISetup4DRest; overload;`

Sets the "Accept-Charset" header for the request.

- **Parameters:**
  - `AAcceptCharset`: The value for the "Accept-Charset" header.

#### ✔️ `function AcceptEncoding(const AAcceptEncoding: string): ISetup4DRest; overload;`

Sets the "Accept-Encoding" header for the request.

- **Parameters:**
  - `AAcceptEncoding`: The value for the "Accept-Encoding" header.

#### ✔️ `function Get: ISetup4DRest;`

This method performs an HTTP GET request.

#### ✔️ `function Post: ISetup4DRest;`

This method performs an HTTP POST request.

#### ✔️ `function Put: ISetup4DRest;`

This method performs an HTTP PUT request.

#### ✔️ `function Delete: ISetup4DRest;`

This method performs an HTTP DELETE request.

#### ✔️ `function Patch: ISetup4DRest;`

This method performs an HTTP PATCH request.

### ℹ️ Note

- The methods `Get`, `Post`, `Put`, `Delete`, and `Patch` are responsible for initiating configuration for a specific HTTP request, setting the corresponding method.

#### ✔️ `function AsContent: String;`

This method gets the response content as a string.

- **Return:**
  - A string containing the response content.

#### ✔️ `function AsStatusCode: Int64;`

This method gets the response status code.

- **Return:**
  - An integer value representing the HTTP response status code.

#### ✔️ `function AsJSONValue: {$IFDEF FPC}TJSONData{$ELSE}TJSONValue{$ENDIF};`

This method gets the response content as a JSON object.

- **Return:**
  - A JSON object representing the response content.

### ℹ️ Note

- The `AsJSONValue` method is used to obtain the response content as a JSON object, allowing structured manipulation and analysis of the data returned by the request.
