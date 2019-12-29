--alle BrowserFields löschen (IDs ersetzen durch aktuelle!!):
delete from ad_browse_field_trl where ad_browse_field_ID in (select ad_browse_field_ID from ad_browse_field where AD_Browse_ID=1000012);

delete from ad_browse_field where AD_Browse_ID=1000012;

--alle View Spalten der View RV_OrderLineToDeliver löschen:
delete from ad_view_column_trl where ad_view_column_ID in (select ad_view_column_ID from ad_view_column where AD_View_Definition_ID=1000013);

delete from ad_view_column where AD_View_Definition_ID=1000013;
