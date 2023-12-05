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
