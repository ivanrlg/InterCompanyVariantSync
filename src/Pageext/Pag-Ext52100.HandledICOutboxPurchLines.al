pageextension 52100 "Handled IC Outbox Purch Lines" extends "Handled IC Outbox Purch. Lines"
{
    layout
    {
        addafter("IC Partner Reference")
        {
            field("IC Partner Variant"; Rec."IC Partner Variant")
            {
                Caption = 'IC Partner Variant';
                Editable = false;
                ApplicationArea = Intercompany;
            }
        }
    }
}
