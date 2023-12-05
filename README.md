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
