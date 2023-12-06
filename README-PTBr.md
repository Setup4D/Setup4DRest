[![Logo da Setup4D](https://setup4d.com.br/github/assets/logotransparente.png)](https://www.setup4d.com.br)

<a href="https://github.com/Setup4D/Setup4DRest/blob/main/README.md">
   <img src="https://user-images.githubusercontent.com/138676601/275272281-5f9f5df0-d563-4046-b5a9-207f0fa0e674.png">
</a>

<a href="https://github.com/Setup4D/Setup4DRest/blob/main/README-PTBr.md">
   <img src="https://user-images.githubusercontent.com/138676601/275272225-61609e1d-764f-4e9d-9ead-8593985af595.png">
</a>

# Setup4DRest

![Delphi Supported Versions](https://img.shields.io/badge/Delphi%20Supported%20Versions-XE3..11-blue.svg)
![Platforms](https://img.shields.io/badge/Supported%20platforms-Win32%20and%20Win64-red.svg)

Bem-vindo(a) ao repositório do projeto Setup4DRest! Este complemento foi desenvolvido para simplificar a interação com APIs REST em projetos Delphi, proporcionando recursos avançados para a integração eficiente de serviços web em suas aplicações.

O Setup4DRest facilita o processo de realizar requisições HTTP e manipular dados JSON, tornando essas operações rápidas, simples e confiáveis. Com este conjunto de ferramentas, você poderá criar clientes RESTful em Delphi de forma mais eficaz, proporcionando uma experiência aprimorada no desenvolvimento de aplicações que dependem de interações com APIs web.

## 📐 Como utilizar

### ⚙️ Instalação

#### ⚡️ Automática (via boss)

* `[Optional]` Para facilitar, recomendo utilizar [**Boss**](https://github.com/HashLoad/boss) (Dependency Manager for Delphi) para instalação. Basta rodar o comando abaixo em um terminal (por exemplo, Windows PowerShell):

```
boss install github.com/Setup4D/Setup4DRest
```

#### ⚡️ Manual (Delphi)

* Se você optar por instalar manualmente, adicione a pasta abaixo ao seu projeto, em *Project > Options > Resource Compiler > Directories and Conditionals > Include file search path*.

```
../Setup4DRest/src
```

### ⚙️ Dependências

* Este projeto possui uma dependência fundamental do [**RESTRequest4Delphi**](https://github.com/viniciussanchez/RESTRequest4Delphi), uma ferramenta robusta que facilita a integração com serviços REST. Recomenda-se a instalação prévia do RESTRequest4Delphi antes de utilizar o Setup4DRest, assegurando uma abordagem técnica e eficaz na interação com serviços REST em projetos Delphi. É importante observar que, ao utilizar o Boss, essa dependência é automaticamente instalada.

## 📐 Modo de uso

### ⚙️ Idioma das mensagens

* O sistema suporta dois idiomas, com o inglês sendo o idioma padrão. No entanto, é possível utilizar o aplicativo em português do Brasil. Para isso, siga as etapas a seguir:

```
Acesse Project > Options > Delphi Compiler > Conditionals Defines
```

* Adicione a diretiva *HAS_PORTUGUES*, necessária para habilitar o idioma português do Brasil.

## 🌐 Função do TSetup4DRest

   A classe `TSetup4DRest` implementa métodos adicionais para configuração específica de requisições HTTP.

### 📐 Métodos

#### ✔️ `function BaseURL(const AValue: string): ISetup4DRest;`

Define a URL base para as requisições.

- **Parâmetros:**
  - `AValue`: A URL base.

#### ✔️ `function Proxy(const AServer, APassword, AUsername: string; const APort: Integer): ISetup4DRest;`

Configura um proxy para as requisições.

- **Parâmetros:**
  - `AServer`: O endereço do servidor proxy.
  - `APassword`: A senha para autenticação no proxy.
  - `AUsername`: O nome de usuário para autenticação no proxy.
  - `APort`: A porta do servidor proxy.

#### ✔️ `function DeactivateProxy: ISetup4DRest;`

Desativa a configuração de proxy.

#### ✔️ `function  Timeout(const ATimeout: Integer): ISetup4DRest;`

Define o timeout para as requisições.

- **Parâmetros:**
  - `ATimeout`: O tempo limite em milissegundos.

#### ✔️ `function  Resource(const AResourceSuffix: string): ISetup4DRest;`

Define o recurso alvo da requisição.

- **Parâmetros:**
  - `AResourceSuffix`: O sufixo do recurso.

#### ✔️ `function  Resource: string;`

Obtém o recurso atualmente configurado.

#### ✔️ `function  ClearResource: ISetup4DRest;`

Limpa a configuração do recurso.

#### ✔️ `function  ResourceSuffix(const AResourceSuffix: string): ISetup4DRest;`

Define o sufixo do recurso para a requisição.

- **Parâmetros:**
  - `AResourceSuffix`: O sufixo do recurso.

#### ✔️ `function  ResourceSuffix: string;`

Obtém o sufixo do recurso atualmente configurado.

#### ✔️ `function  ClearResourceSuffix: ISetup4DRest;`

Limpa a configuração do sufixo do recurso.

#### ✔️ `function  AddHeader(const AName, AValue: string): ISetup4DRest;`

Adiciona um cabeçalho à requisição.

- **Parâmetros:**
  - `AName`: O nome do cabeçalho.
  - `AValue`: O valor do cabeçalho.
 
#### ✔️ `function  ClearHeaders: ISetup4DRest;`

Limpa todos os cabeçalhos configurados.

#### ✔️ `function  AddParam(const AName, AValue: string): ISetup4DRest;`

Adiciona um parâmetro à requisição.

- **Parâmetros:**
  - `AName`: O nome do parâmetro.
  - `AValue`: O valor do parâmetro.

#### ✔️ `function  ClearParams: ISetup4DRest;`

Limpa todos os parâmetros configurados.

#### ✔️ `function  AddBody(const AContent: string): ISetup4DRest; overload;`

Adiciona um corpo de texto à requisição.

- **Parâmetros:**
  - `AContent`: O conteúdo de texto a ser adicionado como corpo da requisição.

#### ✔️ `function  AddBody(const AContent: TJSONObject; const AOwns: Boolean = True): ISetup4DRest; overload;`

Adiciona um corpo de objeto JSON à requisição.

- **Parâmetros:**
  - `AContent`: O objeto JSON a ser adicionado como corpo da requisição.
  - `AOwns`: Indica se a requisição deve assumir a propriedade do conteúdo.

#### ✔️ `function  AddBody(const AContent: TJSONArray; const AOwns: Boolean = True): ISetup4DRest; overload;`

Adiciona um corpo de array JSON à requisição.

- **Parâmetros:**
  - `AContent`: O array JSON a ser adicionado como corpo da requisição.
  - `AOwns`: Indica se a requisição deve assumir a propriedade do conteúdo.

#### ✔️ `function  AddBody(const AContent: TObject; const AOwns: Boolean = True): ISetup4DRest; overload;`

Adiciona um corpo de objeto à requisição.

- **Parâmetros:**
  - `AContent`: O objeto a ser adicionado como corpo da requisição.
  - `AOwns`: Indica se a requisição deve assumir a propriedade do conteúdo.

#### ✔️ `function  AddBody(const AContent: TStream; const AOwns: Boolean = True): ISetup4DRest; overload;`

Adiciona um corpo de fluxo de dados à requisição.

- **Parâmetros:**
  - `AContent`: O fluxo de dados a ser adicionado como corpo da requisição.
  - `AOwns`: Indica se a requisição deve assumir a propriedade do conteúdo.

#### ✔️ `function  ClearBody: ISetup4DRest;`

Limpa o corpo da requisição.

#### ✔️ `function  Token(const AToken: string): ISetup4DRest;`

Define um token para a autenticação da requisição.

- **Parâmetros:**
  - `AToken`: O token a ser utilizado na autenticação.

#### ✔️ `function  TokenBearer(const AToken: string): ISetup4DRest;`

Define um token no formato Bearer para a autenticação da requisição.

- **Parâmetros:**
  - `AToken`: O token a ser utilizado na autenticação.

#### ✔️ `function  BasicAuthentication(const AUsername, APassword: string): ISetup4DRest;`

Define credenciais de autenticação no formato básico (Basic Authentication) para a requisição.

- **Parâmetros:**
  - `AUsername`: Nome de usuário.
  - `APassword`: Senha associada ao nome de usuário.

#### ✔️ `function  Accept(const AAccept: string): ISetup4DRest; overload;`

Define o cabeçalho "Accept" da requisição.

- **Parâmetros:**
  - `AAccept`: O valor para o cabeçalho "Accept".

#### ✔️ `function  AcceptCharset(const AAcceptCharset: string): ISetup4DRest; overload;`

Define o cabeçalho "Accept-Charset" da requisição.

- **Parâmetros:**
  - `AAcceptCharset`: O valor para o cabeçalho "Accept-Charset".

#### ✔️ `function  AcceptEncoding(const AAcceptEncoding: string): ISetup4DRest; overload;`

Define o cabeçalho "Accept-Encoding" da requisição.

- **Parâmetros:**
  - `AAcceptEncoding`: O valor para o cabeçalho "Accept-Encoding".

#### ✔️ `function  Get: ISetup4DRest;`

Este método realiza uma requisição HTTP do tipo GET.

#### ✔️ `function  Post: ISetup4DRest;`

Este método realiza uma requisição HTTP do tipo POST.

#### ✔️ `function  Put: ISetup4DRest;`

Este método realiza uma requisição HTTP do tipo PUT.

#### ✔️ `function  Delete: ISetup4DRest;`

Este método realiza uma requisição HTTP do tipo DELETE.

#### ✔️ `function  Patch: ISetup4DRest;`

Este método realiza uma requisição HTTP do tipo PATCH.

### ℹ️ Observação

- Os métodos `Get`, `Post`, `Put`, `Delete` e `Patch` são responsáveis por iniciar uma configuração para uma requisição HTTP específica, definindo o método correspondente.

#### ✔️ `function  AsContent: String;`

Este método obtém o conteúdo da resposta como uma string.

- **Retorno:**
  - Uma string contendo o conteúdo da resposta.

#### ✔️ `function  AsStatusCode: Int64;`

Este método obtém o código de status da resposta.

- **Retorno:**
  - Um valor inteiro representando o código de status da resposta HTTP.

#### ✔️ `function  AsJSONValue: {$IFDEF FPC}TJSONData{$ELSE}TJSONValue{$ENDIF};`

Este método obtém o conteúdo da resposta como um objeto JSON.

- **Retorno:**
  - Um objeto JSON representando o conteúdo da resposta.

### ℹ️ Observação

- O método `AsJSONValue` é utilizado para obter o conteúdo da resposta como um objeto JSON, permitindo manipulação e análise estruturada dos dados retornados pela requisição.
