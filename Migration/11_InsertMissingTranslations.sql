--ad_browse_field
INSERT INTO ad_element_trl (ad_element_ID, AD_LANGUAGE, AD_Client_ID, AD_Org_ID,
				IsActive, Created, CreatedBy, Updated, UpdatedBy,
				Name, IsTranslated, printname)
				SELECT m.ad_element_ID, l.AD_LANGUAGE, m.AD_Client_ID, m.AD_Org_ID,
				m.IsActive, m.Created, m.CreatedBy, m.Updated, m.UpdatedBy,
				m.Name,  'N', printname
				FROM	ad_element m, AD_LANGUAGE l
				WHERE	l.IsActive = 'Y' AND l.IsSystemLanguage = 'Y'
				AND	ad_element_ID || AD_LANGUAGE NOT IN (SELECT ad_element_ID || AD_LANGUAGE FROM ad_element_TRL);
		


--ad_browse_field
INSERT INTO ad_browse_trl (ad_browse_ID, AD_LANGUAGE, AD_Client_ID, AD_Org_ID,
				IsActive, Created, CreatedBy, Updated, UpdatedBy,
				Name, IsTranslated)
				SELECT m.ad_browse_ID, l.AD_LANGUAGE, m.AD_Client_ID, m.AD_Org_ID,
				m.IsActive, m.Created, m.CreatedBy, m.Updated, m.UpdatedBy,
				m.Name,  'N'
				FROM	ad_browse m, AD_LANGUAGE l
				WHERE	l.IsActive = 'Y' AND l.IsSystemLanguage = 'Y'
				AND	ad_browse_ID || AD_LANGUAGE NOT IN 
				(SELECT ad_browse_ID || AD_LANGUAGE FROM ad_browse_TRL);

--AD_BrowseField
INSERT INTO ad_browse_field_trl (ad_browse_field_ID, AD_LANGUAGE, AD_Client_ID, AD_Org_ID,
				IsActive, Created, CreatedBy, Updated, UpdatedBy,
				Name, IsTranslated)
				SELECT m.ad_browse_field_ID, l.AD_LANGUAGE, m.AD_Client_ID, m.AD_Org_ID,
				m.IsActive, m.Created, m.CreatedBy, m.Updated, m.UpdatedBy,
				m.Name,  'N'
				FROM	ad_browse_field m, AD_LANGUAGE l
				WHERE	l.IsActive = 'Y' AND l.IsSystemLanguage = 'Y'
				AND	ad_browse_field_ID || AD_LANGUAGE NOT IN 
				(SELECT ad_browse_field_ID || AD_LANGUAGE FROM ad_browse_field_TRL);

--AD_Field

INSERT INTO ad_field_trl (ad_field_ID, AD_LANGUAGE, AD_Client_ID, AD_Org_ID,
				IsActive, Created, CreatedBy, Updated, UpdatedBy,
				Name, IsTranslated)
				SELECT m.ad_field_ID, l.AD_LANGUAGE, m.AD_Client_ID, m.AD_Org_ID,
				m.IsActive, m.Created, m.CreatedBy, m.Updated, m.UpdatedBy,
				m.Name,  'N'
				FROM	ad_field m, AD_LANGUAGE l
				WHERE	l.IsActive = 'Y' AND l.IsSystemLanguage = 'Y'
				AND	ad_field_ID || AD_LANGUAGE NOT IN 
				(SELECT ad_field_ID || AD_LANGUAGE FROM ad_field_TRL);

--AD_Column

INSERT INTO ad_column_trl (ad_column_ID, AD_LANGUAGE, AD_Client_ID, AD_Org_ID,
				IsActive, Created, CreatedBy, Updated, UpdatedBy,
				Name, IsTranslated)
				SELECT m.ad_column_ID, l.AD_LANGUAGE, m.AD_Client_ID, m.AD_Org_ID,
				m.IsActive, m.Created, m.CreatedBy, m.Updated, m.UpdatedBy,
				m.Name,  'N'
				FROM	ad_column m, AD_LANGUAGE l
				WHERE	l.IsActive = 'Y' AND l.IsSystemLanguage = 'Y'
				AND	ad_column_ID || AD_LANGUAGE NOT IN 
				(SELECT ad_column_ID || AD_LANGUAGE FROM ad_column_TRL);
--AD_Process_Para

INSERT INTO ad_process_para_trl (ad_process_para_ID, AD_LANGUAGE, AD_Client_ID, AD_Org_ID,
				IsActive, Created, CreatedBy, Updated, UpdatedBy,
				Name, IsTranslated)
				SELECT m.ad_process_para_ID, l.AD_LANGUAGE, m.AD_Client_ID, m.AD_Org_ID,
				m.IsActive, m.Created, m.CreatedBy, m.Updated, m.UpdatedBy,
				m.Name,  'N'
				FROM	ad_process_para m, AD_LANGUAGE l
				WHERE	l.IsActive = 'Y' AND l.IsSystemLanguage = 'Y'
				AND	ad_process_para_ID || AD_LANGUAGE NOT IN 
				(SELECT ad_process_para_ID || AD_LANGUAGE FROM ad_process_para_TRL);
--AD_Reference

INSERT INTO ad_reference_trl (ad_reference_ID, AD_LANGUAGE, AD_Client_ID, AD_Org_ID,
				IsActive, Created, CreatedBy, Updated, UpdatedBy,
				name, IsTranslated)
				SELECT m.ad_reference_ID, l.AD_LANGUAGE, m.AD_Client_ID, m.AD_Org_ID,
				m.IsActive, m.Created, m.CreatedBy, m.Updated, m.UpdatedBy,
				m.Name,  'N'
				FROM	ad_reference m, AD_LANGUAGE l
				WHERE	l.IsActive = 'Y' AND l.IsSystemLanguage = 'Y'
				AND	ad_reference_ID || AD_LANGUAGE NOT IN 
				(SELECT ad_reference_ID || AD_LANGUAGE FROM ad_reference_TRL);


--AD_Reportview

--INSERT INTO ad_reportview_trl (ad_reportview_ID, AD_LANGUAGE, AD_Client_ID, AD_Org_ID,
--				IsActive, Created, CreatedBy, Updated, UpdatedBy,
--				name, IsTranslated)
--				SELECT m.ad_reportview_ID, l.AD_LANGUAGE, m.AD_Client_ID, m.AD_Org_ID,
--				m.IsActive, m.Created, m.CreatedBy, m.Updated, m.UpdatedBy,
--				m.Name,  'N'
--				FROM	ad_reportview m, AD_LANGUAGE l
--				WHERE	l.IsActive = 'Y' AND l.IsSystemLanguage = 'Y'
--				AND	ad_reportview_ID || AD_LANGUAGE NOT IN 
--				(SELECT ad_reportview_ID || AD_LANGUAGE FROM ad_reportview_TRL);

--AD_Tab

INSERT INTO ad_tab_trl (ad_tab_ID, AD_LANGUAGE, AD_Client_ID, AD_Org_ID,
				IsActive, Created, CreatedBy, Updated, UpdatedBy,
				name, IsTranslated)
				SELECT m.ad_tab_ID, l.AD_LANGUAGE, m.AD_Client_ID, m.AD_Org_ID,
				m.IsActive, m.Created, m.CreatedBy, m.Updated, m.UpdatedBy,
				m.Name,  'N'
				FROM	ad_tab m, AD_LANGUAGE l
				WHERE	l.IsActive = 'Y' AND l.IsSystemLanguage = 'Y'
				AND	ad_tab_ID || AD_LANGUAGE NOT IN 
				(SELECT ad_tab_ID || AD_LANGUAGE FROM ad_tab_TRL);
--AD_Table

INSERT INTO ad_table_trl (ad_table_ID, AD_LANGUAGE, AD_Client_ID, AD_Org_ID,
				IsActive, Created, CreatedBy, Updated, UpdatedBy,
				name, IsTranslated)
				SELECT m.ad_table_ID, l.AD_LANGUAGE, m.AD_Client_ID, m.AD_Org_ID,
				m.IsActive, m.Created, m.CreatedBy, m.Updated, m.UpdatedBy,
				m.Name,  'N'
				FROM	ad_table m, AD_LANGUAGE l
				WHERE	l.IsActive = 'Y' AND l.IsSystemLanguage = 'Y'
				AND	ad_table_ID || AD_LANGUAGE NOT IN 
				(SELECT ad_table_ID || AD_LANGUAGE FROM ad_table_TRL);

--ad_view

INSERT INTO ad_view_trl (ad_view_ID, AD_LANGUAGE, AD_Client_ID, AD_Org_ID,
				IsActive, Created, CreatedBy, Updated, UpdatedBy,
				name, IsTranslated)
				SELECT m.ad_view_ID, l.AD_LANGUAGE, m.AD_Client_ID, m.AD_Org_ID,
				m.IsActive, m.Created, m.CreatedBy, m.Updated, m.UpdatedBy,
				m.Name,  'N'
				FROM	ad_view m, AD_LANGUAGE l
				WHERE	l.IsActive = 'Y' AND l.IsSystemLanguage = 'Y'
				AND	ad_view_ID || AD_LANGUAGE NOT IN 
				(SELECT ad_view_ID || AD_LANGUAGE FROM ad_view_TRL);
--ad_view_column
INSERT INTO ad_view_column_trl (ad_view_column_ID, AD_LANGUAGE, AD_Client_ID, AD_Org_ID,
				IsActive, Created, CreatedBy, Updated, UpdatedBy,
				name, IsTranslated)
				SELECT m.ad_view_column_ID, l.AD_LANGUAGE, m.AD_Client_ID, m.AD_Org_ID,
				m.IsActive, m.Created, m.CreatedBy, m.Updated, m.UpdatedBy,
				m.Name,  'N'
				FROM	ad_view_column m, AD_LANGUAGE l
				WHERE	l.IsActive = 'Y' AND l.IsSystemLanguage = 'Y'
				AND	ad_view_column_ID || AD_LANGUAGE NOT IN 
				(SELECT ad_view_column_ID || AD_LANGUAGE FROM ad_view_column_TRL);

-- Ref list

INSERT INTO ad_ref_list_trl (ad_ref_list_ID, AD_LANGUAGE, AD_Client_ID, AD_Org_ID,
				IsActive, Created, CreatedBy, Updated, UpdatedBy,
				name, IsTranslated)
				SELECT m.ad_ref_list_ID, l.AD_LANGUAGE, m.AD_Client_ID, m.AD_Org_ID,
				m.IsActive, m.Created, m.CreatedBy, m.Updated, m.UpdatedBy,
				m.Name,  'N'
				FROM	ad_ref_list m, AD_LANGUAGE l
				WHERE	l.IsActive = 'Y' AND l.IsSystemLanguage = 'Y'
				AND	ad_ref_list_ID || AD_LANGUAGE NOT IN 
				(SELECT ad_ref_list_ID || AD_LANGUAGE FROM ad_ref_list_TRL);



INSERT INTO ad_process_trl (ad_process_ID, AD_LANGUAGE, AD_Client_ID, AD_Org_ID,
				IsActive, Created, CreatedBy, Updated, UpdatedBy,
				name, IsTranslated)
				SELECT m.ad_process_ID, l.AD_LANGUAGE, m.AD_Client_ID, m.AD_Org_ID,
				m.IsActive, m.Created, m.CreatedBy, m.Updated, m.UpdatedBy,
				m.Name,  'N'
				FROM	ad_process m, AD_LANGUAGE l
				WHERE	l.IsActive = 'Y' AND l.IsSystemLanguage = 'Y'
				AND	ad_process_ID || AD_LANGUAGE NOT IN 
				(SELECT ad_process_ID || AD_LANGUAGE FROM ad_process_TRL);

				


INSERT INTO ad_menu_trl (ad_menu_ID, AD_LANGUAGE, AD_Client_ID, AD_Org_ID,
				IsActive, Created, CreatedBy, Updated, UpdatedBy,
				name, IsTranslated)
				SELECT m.ad_menu_ID, l.AD_LANGUAGE, m.AD_Client_ID, m.AD_Org_ID,
				m.IsActive, m.Created, m.CreatedBy, m.Updated, m.UpdatedBy,
				m.Name,  'N'
				FROM	ad_menu m, AD_LANGUAGE l
				WHERE	l.IsActive = 'Y' AND l.IsSystemLanguage = 'Y'
				AND	ad_menu_ID || AD_LANGUAGE NOT IN 
				(SELECT ad_menu_ID || AD_LANGUAGE FROM ad_menu_TRL);

				

INSERT INTO ad_form_trl (ad_form_ID, AD_LANGUAGE, AD_Client_ID, AD_Org_ID,
				IsActive, Created, CreatedBy, Updated, UpdatedBy,
				name, IsTranslated)
				SELECT m.ad_form_ID, l.AD_LANGUAGE, m.AD_Client_ID, m.AD_Org_ID,
				m.IsActive, m.Created, m.CreatedBy, m.Updated, m.UpdatedBy,
				m.Name,  'N'
				FROM	ad_form m, AD_LANGUAGE l
				WHERE	l.IsActive = 'Y' AND l.IsSystemLanguage = 'Y'
				AND	ad_form_ID || AD_LANGUAGE NOT IN 
				(SELECT ad_form_ID || AD_LANGUAGE FROM ad_form_TRL);

				
INSERT INTO ad_window_trl (ad_window_ID, AD_LANGUAGE, AD_Client_ID, AD_Org_ID,
				IsActive, Created, CreatedBy, Updated, UpdatedBy,
				name, IsTranslated)
				SELECT m.ad_window_ID, l.AD_LANGUAGE, m.AD_Client_ID, m.AD_Org_ID,
				m.IsActive, m.Created, m.CreatedBy, m.Updated, m.UpdatedBy,
				m.Name,  'N'
				FROM	ad_window m, AD_LANGUAGE l
				WHERE	l.IsActive = 'Y' AND l.IsSystemLanguage = 'Y'
				AND	ad_window_ID || AD_LANGUAGE NOT IN 
				(SELECT ad_window_ID || AD_LANGUAGE FROM ad_window_TRL);

				
INSERT INTO ad_message_trl (ad_message_ID, AD_LANGUAGE, AD_Client_ID, AD_Org_ID,
				IsActive, Created, CreatedBy, Updated, UpdatedBy,
				msgText, IsTranslated)
				SELECT m.ad_message_ID, l.AD_LANGUAGE, m.AD_Client_ID, m.AD_Org_ID,
				m.IsActive, m.Created, m.CreatedBy, m.Updated, m.UpdatedBy,
				m.msgtext,  'N'
				FROM	ad_message m, AD_LANGUAGE l
				WHERE	l.IsActive = 'Y' AND l.IsSystemLanguage = 'Y'
				AND	ad_message_ID || AD_LANGUAGE NOT IN 
				(SELECT ad_message_ID || AD_LANGUAGE FROM ad_message_TRL);

				
				
INSERT INTO c_TaxCategory_trl (c_Taxcategory_ID, AD_LANGUAGE, AD_Client_ID, AD_Org_ID,
				IsActive, Created, CreatedBy, Updated, UpdatedBy,
				name, IsTranslated)
				SELECT m.c_Taxcategory_ID, l.AD_LANGUAGE, m.AD_Client_ID, m.AD_Org_ID,
				m.IsActive, m.Created, m.CreatedBy, m.Updated, m.UpdatedBy,
				m.name,  'N'
				FROM	c_Taxcategory m, AD_LANGUAGE l
				WHERE	l.IsActive = 'Y' AND l.IsSystemLanguage = 'Y'
				AND	c_Taxcategory_ID || AD_LANGUAGE NOT IN 
				(SELECT c_Taxcategory_ID || AD_LANGUAGE FROM c_Taxcategory_Trl);

				
INSERT INTO c_elementvalue_trl (c_elementvalue_ID, AD_LANGUAGE, AD_Client_ID, AD_Org_ID,
				IsActive, Created, CreatedBy, Updated, UpdatedBy,
				name, IsTranslated)
				SELECT m.c_elementvalue_ID, l.AD_LANGUAGE, m.AD_Client_ID, m.AD_Org_ID,
				m.IsActive, m.Created, m.CreatedBy, m.Updated, m.UpdatedBy,
				m.name,  'N'
				FROM	c_elementvalue m, AD_LANGUAGE l
				WHERE	l.IsActive = 'Y' AND l.IsSystemLanguage = 'Y'
				AND	c_elementvalue_ID || AD_LANGUAGE NOT IN 
				(SELECT c_elementvalue_ID || AD_LANGUAGE FROM c_elementvalue_Trl);
				
				
INSERT INTO c_Tax_trl (c_Tax_ID, AD_LANGUAGE, AD_Client_ID, AD_Org_ID,
				IsActive, Created, CreatedBy, Updated, UpdatedBy,
				name, IsTranslated)
				SELECT m.c_Tax_ID, l.AD_LANGUAGE, m.AD_Client_ID, m.AD_Org_ID,
				m.IsActive, m.Created, m.CreatedBy, m.Updated, m.UpdatedBy,
				m.name,  'N'
				FROM	c_Tax m, AD_LANGUAGE l
				WHERE	l.IsActive = 'Y' AND l.IsSystemLanguage = 'Y'
				AND	c_Tax_ID || AD_LANGUAGE NOT IN 
				(SELECT c_Tax_ID || AD_LANGUAGE FROM c_Tax_Trl);

INSERT INTO c_TaxCategory_trl (c_TaxCategory_ID, AD_LANGUAGE, AD_Client_ID, AD_Org_ID,
				IsActive, Created, CreatedBy, Updated, UpdatedBy,
				name, IsTranslated)
				SELECT m.c_TaxCategory_ID, l.AD_LANGUAGE, m.AD_Client_ID, m.AD_Org_ID,
				m.IsActive, m.Created, m.CreatedBy, m.Updated, m.UpdatedBy,
				m.name,  'N'
				FROM	c_TaxCategory m, AD_LANGUAGE l
				WHERE	l.IsActive = 'Y' AND l.IsSystemLanguage = 'Y'
				AND	c_TaxCategory_ID || AD_LANGUAGE NOT IN 
				(SELECT c_TaxCategory_ID|| AD_LANGUAGE FROM c_TaxCategory_Trl);

				
				
				
-- INSERT INTO pa_dashboardcontent_trl (pa_dashboardcontent_ID, AD_LANGUAGE, AD_Client_ID, AD_Org_ID,
-- 				IsActive, Created, CreatedBy, Updated, UpdatedBy,
-- 				name, IsTranslated)
-- 				SELECT m.pa_dashboardcontent_ID, l.AD_LANGUAGE, m.AD_Client_ID, m.AD_Org_ID,
-- 				m.IsActive, m.Created, m.CreatedBy, m.Updated, m.UpdatedBy,
-- 				m.name,  'N'
-- 				FROM	pa_dashboardcontent m, AD_LANGUAGE l
-- 				WHERE	l.IsActive = 'Y' AND l.IsSystemLanguage = 'Y'
-- 				AND	pa_dashboardcontent_ID || AD_LANGUAGE NOT IN 
-- 				(SELECT pa_dashboardcontent_ID || AD_LANGUAGE FROM pa_dashboardcontent_trl);
--AD_Table
--AD_Table



				
				
INSERT INTO c_Doctype_trl (c_Doctype_ID, AD_LANGUAGE, AD_Client_ID, AD_Org_ID,
				IsActive, Created, CreatedBy, Updated, UpdatedBy,
				name,printname,  IsTranslated)
				SELECT m.c_Doctype_ID, l.AD_LANGUAGE, m.AD_Client_ID, m.AD_Org_ID,
				m.IsActive, m.Created, m.CreatedBy, m.Updated, m.UpdatedBy,
				m.name, printname, 'N'
				FROM	c_Doctype m, AD_LANGUAGE l
				WHERE	l.IsActive = 'Y' AND l.IsSystemLanguage = 'Y'
				AND	c_Doctype_ID || AD_LANGUAGE NOT IN 
				(SELECT c_Doctype_ID || AD_LANGUAGE FROM c_Doctype_trl);
				
			
INSERT INTO c_charge_trl (c_charge_ID, AD_LANGUAGE, AD_Client_ID, AD_Org_ID,
				IsActive, Created, CreatedBy, Updated, UpdatedBy,
				name,  IsTranslated)
				SELECT m.c_charge_ID, l.AD_LANGUAGE, m.AD_Client_ID, m.AD_Org_ID,
				m.IsActive, m.Created, m.CreatedBy, m.Updated, m.UpdatedBy,
				m.name,  'N'
				FROM	c_charge m, AD_LANGUAGE l
				WHERE	l.IsActive = 'Y' AND l.IsSystemLanguage = 'Y'
				AND	c_charge_ID || AD_LANGUAGE NOT IN 
				(SELECT c_charge_ID || AD_LANGUAGE FROM c_charge_trl);
