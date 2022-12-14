unit name.view;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfrmMain = class(TForm)
    edtFirstName: TEdit;
    edtLastName: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    btnProcess: TButton;
    memOut: TMemo;
    procedure btnProcessClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMain: TfrmMain;

implementation

uses
  name.interfaces, name.classes;

{$R *.dfm}

procedure TfrmMain.btnProcessClick(Sender: TObject);
var
    person: iName;
begin

    person := Tperson
        .New
        .FirstName(edtFirstName.Text)
        .LastName(edtLastName.Text);

    memOut.Lines.Add(person.FirstName +' ' + person.LastName);

end;

end.
