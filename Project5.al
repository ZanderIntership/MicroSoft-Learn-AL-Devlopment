page 50114 ProcedurePage
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    Caption = 'Procedure Practice';
    
    layout
    {
        area(Content)
        {
           field(num1;num1){
            Caption = 'Num 1 field';
            ToolTip = 'Num1';
            ApplicationArea = All;

           } 
        }
    }
    
    actions
    {
        area(Processing)
        {
            action(CheckValue)
            {
                
                trigger OnAction()
                begin
                    Experiment(num1);
                end;
            }
            action(IncrementValue){
                trigger OnAction()
                begin
                    Incrment(num1);
                end;
            }
        }
    }
    
    var
        num1,num2,total : Integer;
        Value1 : Text;
    
    local procedure Experiment(Number1 : Integer)
    var

    begin
        if Number1 > 100 then
            Message('Please note that the number you have entered exceeds that of 100')
        else    
            Message('The number you have entered is below 100');


    end;

    local procedure Incrment (Numer2 : Integer)
    var
    begin   
        num1 := num1 + 1;
        Message('Num has been incremented ');
    end;
}
