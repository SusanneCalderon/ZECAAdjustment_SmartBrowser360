-- Nov 14, 2019 8:54:54 AM CST
-- SB_GeneralConfig
INSERT INTO AD_Browse_Access (IsActive,AD_Role_ID,Created,CreatedBy,Updated,UpdatedBy,AD_Browse_ID,AD_Client_ID,AD_Org_ID,IsReadWrite) VALUES ('Y',1000034,TO_TIMESTAMP('2019-11-14 08:54:54','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2019-11-14 08:54:54','YYYY-MM-DD HH24:MI:SS'),100,1000012,1000003,0,'Y')
;

-- Nov 14, 2019 8:55:00 AM CST
-- SB_GeneralConfig
INSERT INTO AD_Browse_Access (IsActive,AD_Role_ID,Created,CreatedBy,Updated,UpdatedBy,AD_Browse_ID,AD_Client_ID,AD_Org_ID,IsReadWrite) VALUES ('Y',1000034,TO_TIMESTAMP('2019-11-14 08:55:00','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2019-11-14 08:55:00','YYYY-MM-DD HH24:MI:SS'),100,1000013,1000003,0,'Y')
;

-- Nov 14, 2019 8:58:16 AM CST
-- SB_GeneralConfig
--  WIEDERHOLT!!!!!!!!!
--INSERT INTO AD_Ref_List (AD_Org_ID,Value,EntityType,AD_Ref_List_ID,AD_Reference_ID,Name,IsActive,AD_Client_ID,Created,CreatedBy,Updated,UpdatedBy) VALUES (0,'FOB','D',1001299,183,'Freight Order','Y',0,TO_TIMESTAMP('2019-11-14 08:58:15','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2019-11-14 08:58:15','YYYY-MM-DD HH24:MI:SS'),100)
--;

-- Nov 14, 2019 8:58:16 AM CST
-- SB_GeneralConfig
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Name,Description, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Name,t.Description, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=1001299 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- Nov 14, 2019 8:59:50 AM CST
-- SB_GeneralConfig
--  WIEDERHOLT!!!!!!!!!
--INSERT INTO AD_Val_Rule (AD_Org_ID,Type,Code,AD_Client_ID,Name,IsActive,AD_Val_Rule_ID,EntityType,Created,CreatedBy,Updated,UpdatedBy) VALUES (0,'S','c_DocType.docbasetype = ''FOB''',0,'C_DocType FOB','Y',1000115,'U',TO_TIMESTAMP('2019-11-14 08:59:50','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2019-11-14 08:59:50','YYYY-MM-DD HH24:MI:SS'),100)
--;

-- Nov 14, 2019 9:00:04 AM CST
-- SB_GeneralConfig
UPDATE AD_Column SET AD_Val_Rule_ID=1000115,Updated=TO_TIMESTAMP('2019-11-14 09:00:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=83735
;

-- Nov 14, 2019 9:03:25 AM CST
-- SB_GeneralConfig
UPDATE AD_Column SET IsMandatory='N',Updated=TO_TIMESTAMP('2019-11-14 09:03:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=83755
;

-- Nov 14, 2019 9:03:33 AM CST
-- SB_GeneralConfig
-- AUSFÜHRUNG ENDET NICHT!!!!!
INSERT INTO t_alter_column values('dd_freightline','M_Freight_ID','NUMERIC(10)',null,'NULL')
;

-- Nov 14, 2019 9:03:33 AM CST
-- SB_GeneralConfig
-- AUSFÜHRUNG ENDET NICHT!!!!!
INSERT INTO t_alter_column values('dd_freightline','M_Freight_ID',null,'NULL',null)
;

