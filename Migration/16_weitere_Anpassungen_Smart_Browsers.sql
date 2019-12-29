
-- Sequenz aktualisieren!!
update ad_sequence set currentnext= 1 + (select max(AD_View_Definition_ID) from AD_View_Definition) where ad_sequence_id= 53339;
update ad_sequence set currentnext= 1 + (select max(AD_View_Column_ID) from AD_View_Column) where ad_sequence_id= 53340;


--alle BrowserFields löschen (IDs ersetzen durch aktuelle!!):
delete from ad_browse_field_trl where ad_browse_field_ID in (select ad_browse_field_ID from ad_browse_field where AD_Browse_ID=1000013);

delete from ad_browse_field where AD_Browse_ID=1000013;
        
--alle View Spalten der View RV_OrderLineToDeliver löschen:
delete from ad_view_column_trl where ad_view_column_ID in (select ad_view_column_ID from ad_view_column where AD_View_Definition_ID=1000015);

delete from ad_view_column where AD_View_Definition_ID=1000015;

-- Sequenz aktualisieren!!
update ad_sequence set currentnext= 1 + (select max(AD_View_Definition_ID) from AD_View_Definition) where ad_sequence_id= 53339;
update ad_sequence set currentnext= 1 + (select max(AD_View_Column_ID) from AD_View_Column) where ad_sequence_id= 53340;
