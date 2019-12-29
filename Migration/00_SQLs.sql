
-- Damit man überhaupt sich einloggen kann
-- Wenn man echt live geht, rückgängig machen
UPDATE ad_modelvalidator SET isActive= 'N'; 
UPDATE ad_rule SET isActive= 'N'; 


--AD_Element isAlert anlegen
INSERT INTO AD_Element (Name,AD_Element_ID,AD_Org_ID,AD_Client_ID,PrintName,IsActive,EntityType,ColumnName,AD_Reference_ID,FieldLength,Created,CreatedBy,Description,Updated,UpdatedBy) VALUES ('Alert',55277,0,0,'Alert','Y','D','IsAlert',20,1,TO_TIMESTAMP('2011-08-30 10:53:32','YYYY-MM-DD HH24:MI:SS'),100,'Display alert message when referenced record is accessed',TO_TIMESTAMP('2011-08-30 10:53:32','YYYY-MM-DD HH24:MI:SS'),100)
;

INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Name,Help,PrintName,PO_PrintName,PO_Description,PO_Help,PO_Name,Description, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Name,t.Help,t.PrintName,t.PO_PrintName,t.PO_Description,t.PO_Help,t.PO_Name,t.Description, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=55277 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;


-- Spalte isAlert auf Tabelle ADRef_Table
INSERT INTO AD_Column (EntityType,Version,FieldLength,IsKey,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsParent,IsSyncDatabase,IsAlwaysUpdateable,IsAllowLogging,IsAutocomplete,AD_Element_ID,AD_Column_ID,SeqNo,AD_Table_ID,ColumnName,IsMandatory,DefaultValue,IsUpdateable,Name,IsEncrypted,IsIdentifier,IsTranslated,IsActive,IsSelectionColumn,Created,CreatedBy,Description,Updated,UpdatedBy) VALUES ('D',0,1,'N',20,0,0,'N','N','N','Y','N',55277,62120,0,103,'IsAlert','Y','N','Y','Alert','N','N','N','Y','N',TO_TIMESTAMP('2011-08-30 11:15:47','YYYY-MM-DD HH24:MI:SS'),100,'Display alert message when referenced record is accessed',TO_TIMESTAMP('2011-08-30 11:15:47','YYYY-MM-DD HH24:MI:SS'),100)
;

INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=62120 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;


-- Add isAlert to DB
ALTER TABLE AD_Ref_Table ADD COLUMN  isalert  character(1) NOT NULL DEFAULT 'N'; 



-- AD_Element dsplaysql angelegt
INSERT INTO AD_Element (Name,AD_Element_ID,AD_Org_ID,AD_Client_ID,Help,PrintName,IsActive,EntityType,ColumnName,FieldLength,Created,CreatedBy,Description,Updated,UpdatedBy) VALUES ('Display SQL',55278,0,0,'Fully qualified subquery SQL','Display SQL','Y','D','DisplaySQL',0,TO_TIMESTAMP('2011-08-30 11:50:00','YYYY-MM-DD HH24:MI:SS'),100,'SQL for display of lookup value',TO_TIMESTAMP('2011-08-30 11:50:00','YYYY-MM-DD HH24:MI:SS'),100)
;

INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Name,Help,PrintName,PO_PrintName,PO_Description,PO_Help,PO_Name,Description, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Name,t.Help,t.PrintName,t.PO_PrintName,t.PO_Description,t.PO_Help,t.PO_Name,t.Description, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=55278 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;


INSERT INTO AD_Column (EntityType,Version,FieldLength,IsKey,Help,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsParent,IsSyncDatabase,IsAlwaysUpdateable,IsAllowLogging,IsAutocomplete,AD_Element_ID,AD_Column_ID,SeqNo,AD_Table_ID,ColumnName,IsMandatory,IsUpdateable,Name,IsEncrypted,IsIdentifier,IsTranslated,IsActive,IsSelectionColumn,Created,CreatedBy,Description,Updated,UpdatedBy) VALUES ('D',0,2000,'N','Fully qualified subquery SQL',14,0,0,'N','N','N','Y','N',55278,62121,0,103,'DisplaySQL','N','Y','Display SQL','N','N','N','Y','N',TO_TIMESTAMP('2019-12-22 12:12:18','YYYY-MM-DD HH24:MI:SS'),100,'SQL for display of lookup value',TO_TIMESTAMP('2019-12-22 12:12:18','YYYY-MM-DD HH24:MI:SS'),100)
;

INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=62121 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

ALTER TABLE AD_Ref_Table ADD COLUMN displaysql character varying(2000); 


--AD_Element IsDisplayIdentifier anlegen
INSERT INTO AD_Element (Name,AD_Element_ID,AD_Org_ID,AD_Client_ID,Help,PrintName,IsActive,EntityType,ColumnName,FieldLength,Created,CreatedBy,Description,Updated,UpdatedBy) VALUES ('Display Identifier',55279,0,0,'Display the columns that are marked as part of the identifier for this table.  ','Display Identifier','Y','D','IsDisplayIdentifier',0,TO_TIMESTAMP('2019-12-22 12:24:43','YYYY-MM-DD HH24:MI:SS'),100,'Display the record identifier',TO_TIMESTAMP('2019-12-22 12:24:43','YYYY-MM-DD HH24:MI:SS'),100)
;

INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Name,Help,PrintName,PO_PrintName,PO_Description,PO_Help,PO_Name,Description, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Name,t.Help,t.PrintName,t.PO_PrintName,t.PO_Description,t.PO_Help,t.PO_Name,t.Description, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=55279 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;


INSERT INTO AD_Column (EntityType,Version,FieldLength,IsKey,Help,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsParent,IsSyncDatabase,IsAlwaysUpdateable,IsAllowLogging,IsAutocomplete,AD_Element_ID,AD_Column_ID,SeqNo,AD_Table_ID,ColumnName,IsMandatory,DefaultValue,IsUpdateable,Name,IsEncrypted,IsIdentifier,IsTranslated,IsActive,IsSelectionColumn,Created,CreatedBy,Description,Updated,UpdatedBy) VALUES ('D',0,1,'N','Display the columns that are marked as part of the identifier for this table.  ',20,0,0,'N','N','N','Y','N',55279,62122,0,103,'IsDisplayIdentifier','Y','N','Y','Display Identifier','N','N','N','Y','N',TO_TIMESTAMP('2019-12-22 12:35:56','YYYY-MM-DD HH24:MI:SS'),100,'Display the record identifier',TO_TIMESTAMP('2019-12-22 12:35:56','YYYY-MM-DD HH24:MI:SS'),100)
;

INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=62122 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- in Tabelle AD_User
ALTER TABLE ad_user ADD COLUMN  salt character varying(16) DEFAULT NULL; 
