page 50116 CodeUnitPrac
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    Caption = 'Code Unit Prac';
    
    layout
    {
        area(Content)
        {
            group(Input)
            {
                field(Value1;Value1){
                    Caption = 'Value1';
                    ToolTip = 'Value 1 Input';
                    ApplicationArea = All;

                }
            }
        }
    }
    
    actions
    {
        area(Processing)
        {
            action(CodeBlock1)
            {
                
                trigger OnAction()
                var
                    MyCodeUnit : Codeunit  "MyCodeunit123";
                    Result : Integer;
                begin
                    Result := MyCodeUnit.MyFunction(Value1);
                    Value1 := Result;
                end;
            }

            action(CodeBlock2){

                trigger OnAction()
                var
                    MySecondCodeUnit : Codeunit "MyCodeUnit222";
                    Result : Integer;
                begin

                    Result := MySecondCodeUnit.MySecondFunction(Value1);
                    Value1 := Result;
                    CheckValue(Value1)
                end;
            }
        }
    }
    
    var
        Value1: Integer;

    local procedure CheckValue(value : Integer)
    var
    begin
        if value < 10 then
            Message('The value you entered is to low')
        else
            Message('The value you entered meets the criteria ');
    end;

}   
