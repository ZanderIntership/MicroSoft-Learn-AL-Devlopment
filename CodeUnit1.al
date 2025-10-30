codeunit 50100 "MyCodeunit123"
{
    
    Access = Public;
    Subtype = Normal;
    
    trigger OnRun()
    begin
        
    end;

    procedure MyFunction (Param1 : Integer) : Integer
    begin
        exit(Param1 * Param1);
    end;

}

codeunit 50119 "MyCodeUnit222"{

    Access = Public;
    Subtype = Normal;

    trigger OnRun()
    begin

    end;

    procedure MySecondFunction (Param1 : Integer) : Integer
    begin
        exit(Param1 / 10);
    end;

}
