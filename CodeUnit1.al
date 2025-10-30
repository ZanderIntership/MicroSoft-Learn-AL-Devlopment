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

codeunit 50120 "Validations"
{
    
    Access = Public;
    Subtype = Normal;
    
    trigger OnRun()
    begin
        
    end;
    
    procedure CheckForPlusSign ( TextToVerify : Text) : Boolean
    var
        i : Integer;
        Contains : Boolean;
    begin

        for i := 1 to StrLen(TextToVerify) do begin
            if TextToVerify[i] = '+' then
            begin
                Contains := true;
                
            end

        end;
    
        if Contains = true then
            Message('There is a + in the word')
        else
            Message('There is no +');
    end;

    


    var

}
