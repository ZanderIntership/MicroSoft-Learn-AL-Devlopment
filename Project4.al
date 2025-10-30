page 50113 ArmStrongCard
{


    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Documents;
    Caption = 'Armstrong Card';
    
    layout
    {
        area(Content)
        {

        }
    }
    
    var
        // myInt: Integer;

    trigger OnOpenPage()
    var
    Counter1 : Integer;
    CounterText : Text[5];
    Counter2 : Integer;
    PowerNumber : Integer;
    Number : Integer;
    Result : Integer;
    ResultList : List of [Integer];
    ArmStrongNumbes : Text;
    ch10 : Char;
    Ch13 : Char;
    Newline : Text;
    begin
        Ch10 := 10;
    Ch13 := 13;
    Newline := Format(Ch10) + Format(Ch13);
    for Counter1 := 0 to 10000 do begin
        CounterText := Format(Counter1);
        Evaluate(PowerNumber, CopyStr(CounterText, StrLen(CounterText), 1));
        for Counter2 := 1 to StrLen(CounterText) do begin
            Evaluate(Number, CopyStr(CounterText, Counter2, 1));
            Result += Power(Number, PowerNumber);
        end;

        if Result = Counter1 then
            ResultList.Add(Result);
        Clear(Result);
    end;

    foreach Counter1 in ResultList do
        ArmStrongNumbes += Newline + Format(Counter1);

    Message(ArmStrongNumbes);
    end;
}
