page 50111 ExpressionsCard
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Documents;
    Caption = 'Expressions Card';
    
    layout
    {
        area(Content)
        {
            group(Input){
                Caption = 'Input';
                field(Value1;Value1){
                    ApplicationArea = All;
                    ToolTip = 'Enter a value for Value1';
                    Caption = 'Value1';
                }
                field(Value2;Value2){
                    ApplicationArea = All;
                    ToolTip = 'Enter a value for Value2';
                    Caption = 'Value2';
                }
            }

            group(Output){
                Caption = 'Execute';
                field(Result;Result){
                    ApplicationArea = All;
                    ToolTip = 'Result of the operation';
                    Caption = 'Result';
                    Editable = true;
                }
            }
        }

     
        
    }
    
    actions
    {
        area(Processing)
        {
            action(Execute)
            {
                
                ApplicationArea = All;
                Caption = 'Execute';
                ToolTip = 'Click to calculate the result';
                Image = ExecuteBatch;

                trigger OnAction()
                begin
                    Result := Value1 > Value2;
                end;
            }
        }
    }
    
    var
        myInt: Integer;
        Value1 : Integer;
        Value2 : Integer;
        Result : Boolean;
}
