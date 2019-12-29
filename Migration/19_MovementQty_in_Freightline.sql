-- Spalte "Movement Quantity in Tabelle DD_Freighline hinzufügen (gleiche Werte wie AdempiereZeca393):
INSERT INTO AD_Column (EntityType,Version,FieldLength,IsKey,Help,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsParent,IsSyncDatabase,IsAlwaysUpdateable,IsAllowLogging,IsAutocomplete,AD_Element_ID,AD_Column_ID,SeqNo,AD_Table_ID,ColumnName,IsMandatory,IsUpdateable,Name,IsEncrypted,IsIdentifier,IsTranslated,IsActive,IsSelectionColumn,Created,CreatedBy,Description,Updated,UpdatedBy) VALUES ('EE03',0,22,'N','The Movement Quantity indicates the quantity of a product that has been moved.',29,0,0,'N','N','N','Y','N',1038,95006,0,54259,'MovementQty','N','Y','Movement Quantity','N','N','N','Y','N',TO_TIMESTAMP('2019-12-23 00:18:07','YYYY-MM-DD HH24:MI:SS'),100,'Quantity of a product moved.',TO_TIMESTAMP('2019-12-23 00:18:07','YYYY-MM-DD HH24:MI:SS'),100)
;

INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=95006 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

INSERT INTO AD_Field (IsEncrypted,AD_Client_ID,SortNo,AD_Org_ID,IsDisplayed,IsActive,DisplayLength,AD_Field_ID,AD_Column_ID,IsFieldOnly,SeqNo,Name,AD_Tab_ID,IsCentrallyMaintained,EntityType,Help,IsReadOnly,IsSameLine,IsHeading,PreferredWidth,HideInListView,Created,CreatedBy,Description,Updated,UpdatedBy) VALUES ('N',0,0,0,'Y','Y',22,1000024,95006,'N',60,'Movement Quantity',54313,'Y','U','The Movement Quantity indicates the quantity of a product that has been moved.','N','N','N',0,'N',TO_TIMESTAMP('2019-12-23 00:33:19','YYYY-MM-DD HH24:MI:SS'),100,'Quantity of a product moved.',TO_TIMESTAMP('2019-12-23 00:33:19','YYYY-MM-DD HH24:MI:SS'),100)
;

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Help,Description, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Help,t.Description, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1000024 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

ALTER TABLE DD_FreightLine ADD MovementQty numeric DEFAULT NULL;


-- MovementQty in View Column + Browse Field
INSERT INTO AD_View_Column (Help,AD_Client_ID,ColumnName,ColumnSQL,AD_Org_ID,IsActive,AD_View_Column_ID,EntityType,AD_View_ID,AD_Column_ID,Created,CreatedBy,Description,Updated,UpdatedBy,AD_View_Definition_ID,Name) VALUES ('The Movement Quantity indicates the quantity of a product that has been moved.',0,'FL_MovementQty','fl.MovementQty',0,'Y',1001147,'ZECA',1000010,95006,TO_TIMESTAMP('2019-12-23 00:37:18','YYYY-MM-DD HH24:MI:SS'),100,'Quantity of a product moved.',TO_TIMESTAMP('2019-12-23 00:37:18','YYYY-MM-DD HH24:MI:SS'),100,1000016,'Movement Quantity')
;

-- Sequenz AD_Browse_Field aktualisieren!!
update ad_sequence set currentnext= 1 + (select max(AD_Browse_Field_ID) from AD_Browse_Field) where ad_sequence_id= 53331;

INSERT INTO AD_Browse_Field (IsMandatory,AD_Client_ID,AD_Org_ID,IsActive,AD_Element_ID,AD_Reference_ID,EntityType,Help,IsDisplayed,IsIdentifier,IsKey,IsQueryCriteria,IsRange,SeqNo,AD_Browse_Field_ID,AD_Browse_ID,Created,CreatedBy,Description,Updated,UpdatedBy,Name,AD_View_Column_ID,IsReadOnly,IsCentrallyMaintained,IsOrderBy,SortNo,FieldLength) VALUES ('N',0,0,'Y',1038,29,'ZECA','The Movement Quantity indicates the quantity of a product that has been moved.','Y','N','N','N','N',50,1000495,1000013,TO_TIMESTAMP('2019-12-23 01:09:54','YYYY-MM-DD HH24:MI:SS'),100,'Quantity of a product moved.',TO_TIMESTAMP('2019-12-23 01:09:54','YYYY-MM-DD HH24:MI:SS'),100,'Movement Quantity',1001147,'N','Y','N',0,0)
;

INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Help,Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Help,t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=1000495 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;
