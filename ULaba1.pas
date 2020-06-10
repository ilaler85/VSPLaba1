unit ULaba1;
{� �������� �� ������ ����� ������ ������ ����� � �����.
���������� ������������� �� �� ���������� �������: ����� �������� ���� ����� ����� ������.
�������� ������� ������}
interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TFMain = class(TForm)
    input: TEdit;
    BProverka: TButton;
    L1: TLabel;
    Lout: TLabel;
    procedure BProverkaClick(Sender: TObject);
    procedure inputKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;
const dopusk : set of Char = ['a'..'z','A'..'Z','0'..'9','�','�','�','�','�','�','�','�','�','�','�','�','�','�','�','�','�','�','�','�','�','�','�','�','�','�','�','�','�','�','�','�','�','�','�','�','�','�','�','�','�','�','�','�','�','�','�','�','�','�','�','�','�','�','�','�','�','�','�','�','�','�','�','�','�'];
      dopchis : set of Char = ['0'..'9'];
var
  FMain: TFMain;
  sum:Integer;

implementation

{$R *.dfm}

procedure TFMain.BProverkaClick(Sender: TObject);
begin
  {Textt:=input.Text;
  {sum:=0;
  {for i:=1 to Length(input.Text) do
  begin
    if not (Textt[i] in dopusk) then
      Delete(Textt, i, 1)
    else
      if Textt[i] in dopchis then
        sum:=sum+StrToInt(Textt[i]);
  end; }
  {input.Text:=Textt; }
  if sum=Length(input.Text)then
    ShowMessage('����� ������ ����� ����� ����')
  else
    ShowMessage('����� ������ �� ����� ����� ����');

end;

procedure TFMain.inputKeyPress(Sender: TObject; var Key: Char);
begin
   if  (Key in dopusk)or(Key=#8) then
    begin
      if Key in dopchis then
        sum:=sum+StrToInt(Key);
    end
   else
    Key:=#0;
end;

procedure TFMain.FormCreate(Sender: TObject);
begin
  sum:=0;
end;

end.
