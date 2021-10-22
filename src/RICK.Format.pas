unit RICK.Format;

interface

uses
  FMX.Edit,
  FMX.Types,

  System.SysUtils,

  RICK.Librarys,
  RICK.Librarys.Interfaces,
  RICK.Format.Interfaces;

type
  TRICKFormat = class(TInterfacedObject, iRICKFormat)
  private
    FExtra: string;
    FMask: string;
    FRICKLibrarys: iRICKLibrarys;

    constructor Create;
  public
    destructor Destroy; override;
    class function New: iRICKFormat;

    function FormatExtra(const AValue: string): iRICKFormat;
    function FormatMask(const AValue: string): iRICKFormat;
    function LandlinePhone(AValue: TObject): iRICKFormat;
    function Mobile(AValue: TObject): iRICKFormat;
    function CNPJ(AValue: TObject): iRICKFormat;
    function CPF(AValue: TObject): iRICKFormat;
    function CNPJorCPF(AValue: TObject): iRICKFormat;
    function StateRegistration(AValue: TObject): iRICKFormat;
    function CurrencyValue(AValue: TObject): iRICKFormat;
    function ZipCode(AValue: TObject): iRICKFormat;
    function DateValue(AValue: TObject): iRICKFormat; overload;
    function Weight(AValue: TObject): iRICKFormat;
    function Customized(AValue: TObject): iRICKFormat;

  end;

implementation

{ TRICKFormat }


function TRICKFormat.ZipCode(AValue: TObject): iRICKFormat;
var
  LText: string;
begin
  Result := Self;

  if AValue is TEdit then
    LText := TEdit(AValue).Text;

  if FMask.Trim.IsEmpty then
    FMask:= '##.###-###';

  LText := FRICKLibrarys.Mask(FMask, FRICKLibrarys.OnlyNumber(LText));

  if AValue is TEdit then
  begin
    TEdit(AValue).KeyboardType:= TVirtualKeyBoardType.NumberPad;
    TEdit(AValue).Text := LText;
    TEdit(AValue).CaretPosition := TEdit(AValue).Text.Length;
  end;
end;

function TRICKFormat.CNPJ(AValue: TObject): iRICKFormat;
var
  LText: string;
begin
  Result := Self;

  if AValue is TEdit then
    LText := TEdit(AValue).Text;

  if FMask.Trim.IsEmpty then
    FMask:= '##.###.###/####-##';

  LText := FRICKLibrarys.Mask(FMask, FRICKLibrarys.OnlyNumber(LText));

  if AValue is TEdit then
  begin
    TEdit(AValue).KeyboardType:= TVirtualKeyBoardType.NumberPad;
    TEdit(AValue).Text := LText;
    TEdit(AValue).CaretPosition := TEdit(AValue).Text.Length;
  end;
end;

function TRICKFormat.CNPJorCPF(AValue: TObject): iRICKFormat;
var
  LText: string;
begin
  Result := Self;

  if AValue is TEdit then
    LText := TEdit(AValue).Text;

  if FMask.Trim.IsEmpty then
  begin
    if Length(FRICKLibrarys.OnlyNumber(LText)) <= 11 then
      FMask := '###.###.###-##'
    else
      FMask := '##.###.###/####-##';
  end;

  LText := FRICKLibrarys.Mask(FMask, FRICKLibrarys.OnlyNumber(LText));

  if AValue is TEdit then
  begin
    TEdit(AValue).KeyboardType:= TVirtualKeyBoardType.NumberPad;
    TEdit(AValue).Text := LText;
    TEdit(AValue).CaretPosition := TEdit(AValue).Text.Length;
  end;
end;

function TRICKFormat.CPF(AValue: TObject): iRICKFormat;
var
  LText: string;
begin
  Result := Self;

  if AValue is TEdit then
    LText := TEdit(AValue).Text;

  if FMask.Trim.IsEmpty then
    FMask:= '###.###.###-##';

  LText := FRICKLibrarys.Mask(FMask, FRICKLibrarys.OnlyNumber(LText));

  if AValue is TEdit then
  begin
    TEdit(AValue).KeyboardType:= TVirtualKeyBoardType.NumberPad;
    TEdit(AValue).Text := LText;
    TEdit(AValue).CaretPosition := TEdit(AValue).Text.Length;
  end;
end;

constructor TRICKFormat.Create;
begin
  FRICKLibrarys:= TRICKLibrarys.New;
end;

function TRICKFormat.CurrencyValue(AValue: TObject): iRICKFormat;
var
  LText: string;
begin
  Result := Self;

  if AValue is TEdit then
    LText := TEdit(AValue).Text;

  if FExtra.Trim.IsEmpty then
    LText := FRICKLibrarys.FormatValue(FRICKLibrarys.OnlyNumber(LText))
  else
    LText := Format('%s %s', [FExtra, FRICKLibrarys.FormatValue(FRICKLibrarys.OnlyNumber(LText))]);

  if AValue is TEdit then
  begin
    TEdit(AValue).KeyboardType:= TVirtualKeyBoardType.DecimalNumberPad;
    TEdit(AValue).Text := LText;
    TEdit(AValue).CaretPosition := TEdit(AValue).Text.Length;
  end;
end;

function TRICKFormat.Customized(AValue: TObject): iRICKFormat;
var
  LText: string;
begin
  Result := Self;

  if AValue is TEdit then
    LText := TEdit(AValue).Text;

  LText:= FRICKLibrarys.Mask(FExtra, FRICKLibrarys.OnlyNumber(LText));

  if AValue is TEdit then
  begin
    TEdit(AValue).Text := LText;
    TEdit(AValue).CaretPosition := TEdit(AValue).Text.Length;
  end;
end;

function TRICKFormat.DateValue(AValue: TObject): iRICKFormat;
var
  LText: string;
begin
  Result := Self;

  if AValue is TEdit then
    LText := TEdit(AValue).Text;

  LText := FRICKLibrarys.FormatDate(FRICKLibrarys.OnlyNumber(LText));

  if AValue is TEdit then
  begin
    TEdit(AValue).KeyboardType:= TVirtualKeyBoardType.NumberPad;
    TEdit(AValue).Text := LText;
    TEdit(AValue).CaretPosition := TEdit(AValue).Text.Length;
  end;
end;

destructor TRICKFormat.Destroy;
begin

  inherited;
end;

function TRICKFormat.FormatExtra(const AValue: string): iRICKFormat;
begin
  Result := Self;
  FExtra := AValue;
end;

function TRICKFormat.FormatMask(const AValue: string): iRICKFormat;
begin
  Result:= Self;
  FMask:= AValue;
end;

function TRICKFormat.LandlinePhone(AValue: TObject): iRICKFormat;
var
  LText: string;
begin
  Result := Self;

  if AValue is TEdit then
    LText := TEdit(AValue).Text;

  if FMask.Trim.IsEmpty then
    FMask:= '(##) ####-####';

  LText := FRICKLibrarys.Mask(FMask, FRICKLibrarys.OnlyNumber(LText));

  if AValue is TEdit then
  begin
    TEdit(AValue).KeyboardType:= TVirtualKeyBoardType.PhonePad;
    TEdit(AValue).Text := LText;
    TEdit(AValue).CaretPosition := TEdit(AValue).Text.Length;
  end;
end;

function TRICKFormat.Mobile(AValue: TObject): iRICKFormat;
var
  LText: string;
begin
  Result := Self;

  if AValue is TEdit then
    LText := TEdit(AValue).Text;

  if FMask.Trim.IsEmpty then
    FMask:= '(##) # ####-####';

  LText := FRICKLibrarys.Mask(FMask, FRICKLibrarys.OnlyNumber(LText));

  if AValue is TEdit then
  begin
    TEdit(AValue).KeyboardType:= TVirtualKeyBoardType.PhonePad;
    TEdit(AValue).Text := LText;
    TEdit(AValue).CaretPosition := TEdit(AValue).Text.Length;
  end;
end;

class function TRICKFormat.New: iRICKFormat;
begin
  Result := Self.Create;
end;

function TRICKFormat.Weight(AValue: TObject): iRICKFormat;
var
  LText: string;
begin
  Result := Self;

  if AValue is TEdit then
    LText := TEdit(AValue).Text;

  LText := FRICKLibrarys.FormatPeso(FRICKLibrarys.OnlyNumber(LText));

  if AValue is TEdit then
  begin
    TEdit(AValue).KeyboardType:= TVirtualKeyBoardType.DecimalNumberPad;
    TEdit(AValue).Text := LText;
    TEdit(AValue).CaretPosition := TEdit(AValue).Text.Length;
  end;
end;

function TRICKFormat.StateRegistration(AValue: TObject): iRICKFormat;
var
  LText: string;
begin
  Result := Self;

  if AValue is TEdit then
    LText := TEdit(AValue).Text;

  LText := FRICKLibrarys.IEFormat(FRICKLibrarys.OnlyNumber(LText), FExtra);

  if AValue is TEdit then
  begin
    TEdit(AValue).KeyboardType:= TVirtualKeyBoardType.NumberPad;
    TEdit(AValue).Text := LText;
    TEdit(AValue).CaretPosition := TEdit(AValue).Text.Length;
  end;
end;

end.
