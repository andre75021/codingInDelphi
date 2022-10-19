unit codingInDelphi.generics.classe;

interface

type

    TReturnArray<T> = array of T;

    TGenerics<T> = class
    private
        FStack: TReturnArray<T>;
    public

        procedure Push(aValue: T);
        function Pop: TReturnArray<T>;
        constructor Create;
        destructor Destroy; override;
    end;

implementation

{ TGenerics }

constructor TGenerics<T>.Create;
begin
    SetLength(FStack, 1);
end;

destructor TGenerics<T>.Destroy;
begin

    inherited;
end;

function TGenerics<T>.Pop: TReturnArray<T>;
begin
    Result := FStack;
end;

procedure TGenerics<T>.Push(aValue: T);
var
    i: integer;
begin
    for i := Low(FStack) to High(FStack) do
    begin
        FStack[Length(FStack) - 1] := aValue;
    end;

    SetLength(FStack, Length(FStack) + 1)
end;

end.
