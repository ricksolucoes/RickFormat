[0]: https://github.com/ricksolucoes/boss "Site do BOOS"

# RickFormat

**RickFormat**  is a Delphi library created to be able to mask the edit as it is typed. Using delphi's Fluent Interface.

## ⚙️ Pre-requisites

1. Delphi FMX
2. If you choose to use [BOOS][0] ```https://github.com/ricksolucoes/boss or https://github.com/HashLoad/boss```  the dependency manager, you will have the facility to install all frameworks that are [Pre-requisites](#pre-requisites) for the project.

## 💻 Installation

- By using BOOS
```shell
$ boss install https://github.com/ricksolucoes/RickFormat
```
- Manual Installation
  - Download the RickFormat;
  - Add the following folders to your project, in <em>Project &gt; Options &gt; Resource Compiler &gt; Directories and Conditionals &gt; Include file search path ``` ../RickFormat/src ```

 ## ⚡️ How to use the project

  Example of using the **RICKLibrary**

- How to use custom mask

```delphi  
  uses
    RICK.Format;
  procedure Tform.EditDataTyping(Sender: TObject);
  begin
    TRICKFormat.New.FormatExtra('##.###-###-####>###').Customized(Sender);
  end;
```

- How to use Brazil's Telephone mask. Using the interface.

```delphi  
  uses
    RICK.Format,
    RICK.Format.Interfaces;
  procedure Tform.EditDataTyping(Sender: TObject);
  var
    LRICKFormat: iRICKFormat;
  begin
    LRICKFormat:= TRICKFormat.New;
    LRICKFormat.LandlinePhone(Sender);
  end;
```
  
- How to use Brazil's Mobile mask

```delphi  
  uses
    RICK.Format;
  procedure Tform.EditDataTyping(Sender: TObject);
  begin
    TRICKFormat.New.Mobile(Sender);
  end;
```
  
- How to use Brazil's CNPJ mask

```delphi  
  uses
    RICK.Format;
  procedure Tform.EditDataTyping(Sender: TObject);
  begin
    TRICKFormat.New.CNPJ(Sender);
  end;
```
- How to use Brazil's CPF mask

```delphi  
  uses
    RICK.Format;
  procedure Tform.EditDataTyping(Sender: TObject);
  begin
    TRICKFormat.New.CPF(Sender);
  end;
```
  
- How to use Brazil's CPF or CNPJ mask

```delphi  
  uses
    RICK.Format;
  procedure Tform.EditDataTyping(Sender: TObject);
  begin
    TRICKFormat.New.CNPJorCPF(Sender);
  end;
```
  
- How to use Brazil's State Registration mask

```delphi  
  uses
    RICK.Format;
  procedure Tform.EditDataTyping(Sender: TObject);
  begin
    TRICKFormat.New.FormatExtra('rj').StateRegistration(Sender);
  end;
```
  
- How to use Brazil's Currency Value mask

```delphi  
  uses
    RICK.Format;
  procedure Tform.EditDataTyping(Sender: TObject);
  begin
    TRICKFormat.New.CurrencyValue(Sender);
  end;
```

- How to use Brazil's Zip Code mask

```delphi  
  uses
    RICK.Format;
  procedure Tform.EditDataTyping(Sender: TObject);
  begin
    TRICKFormat.New.ZipCode(Sender);
  end;
```

- How to use Brazil's Date mask

```delphi  
  uses
    RICK.Format;
  procedure Tform.EditDataTyping(Sender: TObject);
  begin
    TRICKFormat.New.DateValue(Sender);
  end;
```
  
- How to use Brazil's Weight mask

```delphi  
  uses
    RICK.Format;
  procedure Tform.EditDataTyping(Sender: TObject);
  begin
    TRICKFormat.New.Weight(Sender);
  end;
```
