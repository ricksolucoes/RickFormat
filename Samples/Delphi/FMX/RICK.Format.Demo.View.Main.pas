unit RICK.Format.Demo.View.Main;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.StdCtrls,
  FMX.Controls.Presentation, FMX.Edit, FMX.ListBox, FMX.Layouts, FMX.Objects,

  RICK.Librarys,
  RICK.Librarys.Interfaces;

type
  TfrmDemo = class(TForm)
    imgLogo: TImage;
    Layout1: TLayout;
    lytInputData: TLayout;
    lytTypeData: TLayout;
    cbxDataFormat: TComboBox;
    edtData: TEdit;
    lblData: TLabel;
    lblDataFormat: TLabel;
    lnData: TLine;
    procedure FormShow(Sender: TObject);
    procedure cbxDataFormatChange(Sender: TObject);
    procedure edtDataTyping(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    FRICKLibrarys: iRICKLibrarys;
  public
    { Public declarations }
  end;

var
  frmDemo: TfrmDemo;

implementation

{$R *.fmx}
uses
  RICK.Format,
  RICK.Format.Interfaces;

procedure TfrmDemo.cbxDataFormatChange(Sender: TObject);
begin
  edtData.Text:= EmptyStr;
  FRICKLibrarys.DelayedSetFocus(edtData);
end;

procedure TfrmDemo.edtDataTyping(Sender: TObject);
var
  LRICKFormat: iRICKFormat;
begin
  LRICKFormat:= TRICKFormat.New;

  case cbxDataFormat.ItemIndex of
    0 : LRICKFormat.LandlinePhone(Sender);
    1 : LRICKFormat.Mobile(Sender);
    2 : LRICKFormat.CNPJ(Sender);
    3 : LRICKFormat.CPF(Sender);
    4 : LRICKFormat.CNPJorCPF(Sender);
    5 : LRICKFormat.FormatExtra('rj').StateRegistration(Sender);
    6 : LRICKFormat.CurrencyValue(Sender);
    7 : LRICKFormat.FormatExtra('R$').CurrencyValue(Sender);
    8 : LRICKFormat.CEP(Sender);
    9 : LRICKFormat.DateValue(Sender);
    10: LRICKFormat.Peso(Sender);
    11: LRICKFormat.FormatExtra('##.###-###-####>###').Customized(Sender);
  end;

end;

procedure TfrmDemo.FormCreate(Sender: TObject);
begin
  FRICKLibrarys:= TRICKLibrarys.New;
end;

procedure TfrmDemo.FormShow(Sender: TObject);
begin
  FRICKLibrarys.DelayedSetFocus(edtData);
end;

end.
