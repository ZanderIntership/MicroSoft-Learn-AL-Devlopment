page 50112 StatementsCard
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Documents;
    Caption = 'Statement Card';
  
    
    layout
    {
        area(Content)
        {
            group(Input)
            {
                Caption = 'Input';
                field(Diffculty;Diffculty){
                    ApplicationArea = All;
                    Caption = 'Enter the Diffculty';
                    ToolTip = 'The Input field for the Diffculty';
                    trigger OnValidate()
                    begin
                        GetSuggestion();
                    end;
                }
            }

            group(Output){
                
                field(Suggestion;Suggestion){
                    ApplicationArea = All;
                    Editable = false;
                    Caption = 'Suggestion Output';
                    ToolTip = 'This is the Suggestion Output';
                }

                field(Level;Level){
                    ApplicationArea = All;
                    Editable = false;
                    Caption = 'Level Output';
                    ToolTip = 'This is the Level Output';

                }

            }
        }
    }
    
    // actions
    // {
    //     area(Processing)
    //     {
    //         action(ActionName)
    //         {
                
    //             trigger OnAction()
    //             begin
                    
    //             end;
    //         }
    //     }
    // }
    
    var
        Level : Text[30];
        Suggestion : Text[80];
        Diffculty : Integer;

    local procedure GetSuggestion()
    var
        myInt: Integer;
    begin
        Level := '';
        Suggestion := '';

    case Diffculty of
        1..5:
       begin
            Level := 'Beginner';
            Suggestion := 'Take e-Learning or remote training';
       end;
        6..8:
        begin
            Level := 'Intermediate';
            Suggestion := 'Attend instructor-Led';
        end;
        9..10:
        begin
            Level := 'Advanced';
            Suggestion := 'Attend instructor-Led and self study';
        end;
        11..10000000:
        begin    
            Level := 'Please enter a value less then 11 diffculty';
            Suggestion := 'Please enter a value less tnen 11 for diffculty';
        end;
end;
    end;
}
