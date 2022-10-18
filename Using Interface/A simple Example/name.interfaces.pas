unit name.interfaces;

interface

type
    iName = interface
        ['{1B5F278C-D09D-4486-9290-49D57B18FBA3}']
        function FirstName(aValue: string): iName; overload;
        function FirstName: string; overload;
        function LastName(aValue: string): iName; overload;
        function LastName: string; overload;
    end;

implementation

end.
