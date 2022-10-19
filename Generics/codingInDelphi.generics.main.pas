unit codingInDelphi.generics.main;

interface

uses
    Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
    System.Classes, Vcl.Graphics,
    Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
    TForm1 = class(TForm)
        Edit1: TEdit;
        Button1: TButton;
        Button2: TButton;
        Memo1: TMemo;
        procedure Button1Click(Sender: TObject);
        procedure Button2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    private
        { Private declarations }
    public
        { Public declarations }
    end;

var
    Form1: TForm1;

implementation

uses
    codingInDelphi.generics.classe;

{$R *.dfm}

var
    stack: TGenerics<String> ;

procedure TForm1.Button1Click(Sender: TObject);

begin
    stack.Push(Edit1.Text);
end;

procedure TForm1.Button2Click(Sender: TObject);
var
    i: integer;
begin

    Memo1.Lines.Clear;
    for i := Low(stack.Pop) to High(stack.Pop) do
    begin
        Memo1.Lines.Add(stack.Pop[i]);
    end;

end;

procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    FreeAndNil(stack);
    ReportMemoryLeaksOnShutdown := True;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
    stack := TGenerics<string>.Create;
end;

end.
