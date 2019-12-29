INSERT INTO AD_Column (EntityType,Version,FieldLength,IsKey,Help,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsParent,IsSyncDatabase,IsAlwaysUpdateable,IsAllowLogging,IsAutocomplete,AD_Element_ID,AD_Column_ID,SeqNo,AD_Table_ID,ColumnName,IsMandatory,IsUpdateable,Name,IsEncrypted,IsIdentifier,IsTranslated,IsActive,IsSelectionColumn,Created,CreatedBy,Description,Updated,UpdatedBy) VALUES ('EE07',0,255,'N','Fully qualified class name that implements the InfoFactory interface. This can be use to provide custom Info class for column.',10,0,0,'N','N','N','Y','N',53349,64853,0,53223,'InfoFactoryClass','N','Y','Info Factory Class','N','N','N','Y','N',TO_TIMESTAMP('2019-12-23 02:52:01','YYYY-MM-DD HH24:MI:SS'),100,'Fully qualified class name that implements the InfoFactory interface',TO_TIMESTAMP('2019-12-23 02:52:01','YYYY-MM-DD HH24:MI:SS'),100)
;

INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=64853 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;


INSERT INTO AD_Field (IsEncrypted,AD_Client_ID,SortNo,AD_Org_ID,IsDisplayed,IsActive,DisplayLength,AD_Field_ID,AD_Column_ID,IsFieldOnly,SeqNo,Name,AD_Tab_ID,IsCentrallyMaintained,EntityType,Help,IsReadOnly,IsSameLine,IsHeading,PreferredWidth,HideInListView,Created,CreatedBy,Description,Updated,UpdatedBy) VALUES ('N',0,0,0,'Y','Y',255,66114,64853,'N',150,'Info Factory Class',53247,'Y','EE07','Fully qualified class name that implements the InfoFactory interface. This can be use to provide custom Info class for column.','N','Y','N',0,'N',TO_TIMESTAMP('2019-12-23 03:23:50','YYYY-MM-DD HH24:MI:SS'),100,'Fully qualified class name that implements the InfoFactory interface',TO_TIMESTAMP('2019-12-23 03:23:50','YYYY-MM-DD HH24:MI:SS'),100)
;

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Help,Description, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Help,t.Description, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=66114 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

ALTER TABLE AD_Browse_Field ADD InfoFactoryClass character varying(255) DEFAULT NULL;
