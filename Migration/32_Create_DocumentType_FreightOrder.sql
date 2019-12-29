INSERT INTO C_DocType (IsDefault,GL_Category_ID,PrintName,IsDocNoControlled,IsActive,AD_Org_ID,IsSOTrx,HasCharges,AD_Client_ID,HasProforma,IsCreateCounter,IsOverwriteDateOnComplete,IsPickQAConfirm,GenerateWithholding,IsInTransit,IsShipConfirm,IsSplitWhenDifference,IsDefaultCounterDoc,IsIndexed,IsOverwriteSeqOnComplete,IsPrepareSplitDocument,IsNotReported,IsPayNotPosted,C_DocType_ID,Name,DocBaseType,Created,CreatedBy,DocumentCopies,Updated,UpdatedBy) VALUES ('N',0,'Freight Order','Y','Y',0,'N','N',0,'N','Y','N','N','N','N','N','N','N','N','N','Y','N','N',2001111,'Freight Order','FRO',TO_TIMESTAMP('2019-12-23 20:47:07','YYYY-MM-DD HH24:MI:SS'),100,1,TO_TIMESTAMP('2019-12-23 20:47:07','YYYY-MM-DD HH24:MI:SS'),100)
;

INSERT INTO C_DocType_Trl (AD_Language,C_DocType_ID, PrintName,DocumentNote,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.C_DocType_ID, t.PrintName,t.DocumentNote,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, C_DocType t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.C_DocType_ID=2001111 AND NOT EXISTS (SELECT * FROM C_DocType_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.C_DocType_ID=t.C_DocType_ID)
;

INSERT INTO AD_Document_Action_Access (AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,C_DocType_ID , AD_Ref_List_ID, AD_Role_ID) (SELECT 1000003,0,'Y', CURRENT_TIMESTAMP,100, CURRENT_TIMESTAMP,100, doctype.C_DocType_ID, "action".AD_Ref_List_ID, rol.AD_Role_ID FROM AD_Client client INNER JOIN C_DocType doctype ON (doctype.AD_Client_ID=client.AD_Client_ID) INNER JOIN AD_Ref_List "action" ON ("action".AD_Reference_ID=135) INNER JOIN AD_Role rol ON (rol.AD_Client_ID=client.AD_Client_ID) WHERE client.AD_Client_ID=0 AND doctype.C_DocType_ID=2001111 AND rol.IsManual='N')
;

-- wg. ColumnSQL bei C_Orderline
UPDATE AD_Ref_Table SET AD_Key=83749,Updated=TO_TIMESTAMP('2019-12-23 21:51:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Reference_ID=1000084
;

-- Damit in Purchase Orderline der Verweis auf Freight Order Line sichtbar wird.
UPDATE AD_Column SET AD_Reference_Value_ID=NULL, AD_Reference_ID=19,Updated=TO_TIMESTAMP('2019-12-23 21:53:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1000678
;

UPDATE AD_Column SET SeqNo=10, IsUpdateable='N', IsIdentifier='Y',Updated=TO_TIMESTAMP('2019-12-23 21:55:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=83759
;

UPDATE AD_Column SET SeqNo=20, IsIdentifier='Y',Updated=TO_TIMESTAMP('2019-12-23 21:55:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=83750
;

-- wg. Referenz auf DD_FreightLine_ID in M_InOut_line
UPDATE AD_Column SET AD_Reference_Value_ID=NULL, AD_Reference_ID=19,Updated=TO_TIMESTAMP('2019-12-23 22:52:47','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1001688
;
