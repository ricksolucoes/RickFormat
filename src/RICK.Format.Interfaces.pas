unit RICK.Format.Interfaces;

interface
uses
  FMX.Edit;
type
  iRICKFormat = interface
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
    function DateValue(AValue: TObject): iRICKFormat;
    function Weight(AValue: TObject): iRICKFormat;
    function Customized(AValue: TObject): iRICKFormat;
  end;
implementation

end.
