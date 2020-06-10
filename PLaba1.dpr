program PLaba1;

uses
  Forms,
  ULaba1 in 'ULaba1.pas' {FMain};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFMain, FMain);
  Application.Run;
end.
