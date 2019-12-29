-- Prozess im Smart Browser "SBP_InOutCreateFrom"
-- Parameter "BPartner" deaktivieren (nicht nötig)
UPDATE AD_Process_Para SET IsActive='N',Updated=TO_TIMESTAMP('2019-12-23 03:34:10','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=1001684
;

-- Smart Browser "SB_InOutCreateFrom_Freight"
-- Data Access Level = "Client + Organization" setzen
UPDATE AD_Browse SET AccessLevel='3',Updated=TO_TIMESTAMP('2019-12-23 03:36:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_ID=1000013
;

--SB "SB_InOutCreateFrom_Freight", prozess "SBP_InOutCreateFrom", parameter "Locator": Dynamic Validation setzen="M_Locator of Warehouse"
UPDATE AD_Process_Para SET AD_Val_Rule_ID=127,Updated=TO_TIMESTAMP('2019-12-23 03:39:01','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=1001683
;

-- NPE-Vermeidung beim ZK-Aufruf der Smart Browsers "Create from Freight"
UPDATE AD_FIELD SET description = 'Smart Browser' WHERE AD_Field_ID=1019393;

-- Feld "Location"=Mandatory + Default Value setzen in Prozess-Parameter des SB "Create from Freight"
UPDATE AD_Process_Para SET DefaultValue='NULL', IsMandatory='Y',Updated=TO_TIMESTAMP('2019-12-23 03:53:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=1001683
;


UPDATE AD_Column SET FieldLength=255,Updated=TO_TIMESTAMP('2019-12-23 03:56:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=83739
;
alter table DD_Freight alter column Description type character varying(255);
INSERT INTO t_alter_column values('dd_freight','Description','VARCHAR(255)',null,'NULL')
;
