unit ULaba1;
{В заданный не пустой текст входят только буквы и цифры.
Опрелелить удовлетворяет ли он следующему условию: сумма значений цифр равна длине текста.
Выполнил Микляев Михаил}
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
const dopusk : set of Char = ['a'..'z','A'..'Z','0'..'9','А','Б','В','Г','Д','Е','Ё','Ж','З','И','Й','К','Л','М','Н','О','П','Р','С','Т','У','Ф','Х','Ц','Ч','Ш','Щ','Ь','Ъ','Э','Ю','Я','а','б','в','г','д','е','ё','ж','з','и','й','к','л','м','н','о','п','р','с','т','у','ф','х','ц','ч','ш','щ','ь','ы','ъ','э','ю','я'];
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
    ShowMessage('Длина текста равна сумме цифр')
  else
    ShowMessage('Длина текста НЕ равна сумме цифр');

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
