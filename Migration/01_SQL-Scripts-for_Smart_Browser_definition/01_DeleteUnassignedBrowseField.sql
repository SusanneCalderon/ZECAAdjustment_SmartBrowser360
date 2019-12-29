delete 
from ad_browse_Field_trl where ad_browse_field_ID in (
select ad_browse_Field_ID
from ad_Browse_Field bf
where ad_View_Column_ID not in (select ad_View_Column_ID from ad_View_Column));

delete from ad_Browse_Field where ad_View_Column_ID not in (select ad_View_Column_ID from ad_View_Column);

delete from ad_Browse_Access where (ad_role_id) in (1000087,1000088,1000091,1000092);
--select * from ad_role where (ad_role_id)in (1000087,1000088); 

--select ad_View_Definition_ID
--from ad_View_Column where ad_View_Definition_ID not in (select ad_View_Definition_ID from ad_View_Definition)

delete from ad_View_Column_trl where ad_View_Column_ID in (select ad_View_Column_ID from ad_View_Column where 
														  ad_View_definition_ID=50139);
														  
delete from ad_View_Column where ad_View_Column_ID in (select ad_View_Column_ID from ad_View_Column where 
														  ad_View_definition_ID=50139);
														  
