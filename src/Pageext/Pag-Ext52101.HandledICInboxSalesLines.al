pageextension 52101 "Handled IC Inbox Sales Line" extends "Handled IC Inbox Sales Lines"
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
