unit name.classes;

interface

uses
    name.interfaces;

type
    Tperson = class(TInterfacedObject, iName)
    private
        FFirstName: string;
        FLastName: string;
    public
        function FirstName(aValue: string): iName; overload;
        function FirstName: string; overload;
        function LastName(aValue: string): iName; overload;
        function LastName: string; overload;
        constructor Create;
        destructor Destroy; override;
        class function New: iName;
    end;

implementation

{ Tperson }

constructor Tperson.Create;
begin

end;

destructor Tperson.Destroy;
begin

    inherited;
end;

function Tperson.FirstName(aValue: string): iName;
begin
    Result := Self;
    FFirstName := aValue;
end;

function Tperson.FirstName: string;
begin
    Result := FFirstName;
end;

function Tperson.LastName(aValue: string): iName;
begin
    Result := Self;
    FLastName := aValue;
end;

function Tperson.LastName: string;
begin
    Result := FLastName;
end;

class function Tperson.New: iName;
begin
    Result := Self.Create;
end;

end.
