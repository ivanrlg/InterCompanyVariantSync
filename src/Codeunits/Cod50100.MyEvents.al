codeunit 52100 "My Events"
{
    [EventSubscriber(ObjectType::Codeunit, Codeunit::ICInboxOutboxMgt, OnCreateOutboxPurchDocTransOnAfterICOutBoxPurchLineInsert, '', true, true)]
    local procedure OnCreateOutboxPurchDocTransOnAfterICOutBoxPurchLineInsert(var ICOutboxPurchaseLine: Record "IC Outbox Purchase Line"; PurchaseLine: Record "Purchase Line")
    begin
        ICOutboxPurchaseLine."IC Partner Variant" := PurchaseLine."Variant Code";
        ICOutboxPurchaseLine.Modify();
    end;

    [EventSubscriber(ObjectType::Codeunit, Codeunit::ICInboxOutboxMgt, OnBeforeICInboxSalesLineInsert, '', true, true)]
    local procedure OnBeforeICInboxSalesLineInsert(var ICInboxSalesLine: Record "IC Inbox Sales Line"; ICOutboxPurchaseLine: Record "IC Outbox Purchase Line")
    begin
        ICInboxSalesLine."IC Partner Variant" := ICOutboxPurchaseLine."IC Partner Variant";
    end;

    [EventSubscriber(ObjectType::Codeunit, Codeunit::ICInboxOutboxMgt, OnCreateSalesLinesOnAfterValidateNo, '', true, true)]
    local procedure OnCreateSalesLinesOnAfterValidateNo(var SalesLine: Record "Sales Line"; SalesHeader: Record "Sales Header"; ICInboxSalesLine: Record "IC Inbox Sales Line")
    begin
        SalesLine."Variant Code" := ICInboxSalesLine."IC Partner Variant";
    end;
}
