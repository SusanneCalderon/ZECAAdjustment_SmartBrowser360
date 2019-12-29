-- Change alias
UPDATE AD_View_Definition SET TableAlias='cf',Updated=TO_TIMESTAMP('2019-12-22 19:50:39','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_View_Definition_ID=1000015
;

-- SQL-Where ersetzen
UPDATE AD_Browse SET WhereClause='cf.DocStatus IN (''CL'',''CO'') 
AND fl.DD_FreightLine_ID NOT IN (SELECT fl2.DD_FreightLine_ID FROM dd_FreightLine fl2 
INNER JOIN DD_Freight f2 ON f2.dd_Freight_ID=fl2.DD_Freight_ID
INNER JOIN M_InOutLine iol ON fl2.dd_FreightLine_ID=iol.DD_FreightLine_ID
INNER JOIN M_InOut io ON iol.m_Inout_ID=io.m_inout_id
WHERE f2.docstatus IN (''CL'',''CO'') 
AND io.docstatus NOT IN (''VO'', ''RE'')
AND iol.dd_FreightLine_ID=fl2.dd_FreightLine_ID)',Updated=TO_TIMESTAMP('2019-12-22 19:59:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_ID=1000013
;


-- View columns for View "SB_InOutCreateFrom", 1. View AD_View_Definition
INSERT INTO AD_View_Column (Help,AD_Client_ID,ColumnName,ColumnSQL,AD_Org_ID,IsActive,AD_View_Column_ID,EntityType,AD_View_ID,AD_Column_ID,Created,CreatedBy,Description,Updated,UpdatedBy,AD_View_Definition_ID,Name) VALUES ('A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.',0,'CF_AD_Client_ID','cf.AD_Client_ID',0,'Y',1001064,'ZECA',1000010,1007712,TO_TIMESTAMP('2019-12-22 22:13:23','YYYY-MM-DD HH24:MI:SS'),100,'Client/Tenant for this installation.',TO_TIMESTAMP('2019-12-22 22:13:23','YYYY-MM-DD HH24:MI:SS'),100,1000015,'Client')
;

INSERT INTO AD_View_Column (Help,AD_Client_ID,ColumnName,ColumnSQL,AD_Org_ID,IsActive,AD_View_Column_ID,EntityType,AD_View_ID,AD_Column_ID,Created,CreatedBy,Description,Updated,UpdatedBy,AD_View_Definition_ID,Name) VALUES ('An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.',0,'CF_AD_Org_ID','cf.AD_Org_ID',0,'Y',1001065,'ZECA',1000010,1007713,TO_TIMESTAMP('2019-12-22 22:13:23','YYYY-MM-DD HH24:MI:SS'),100,'Organizational entity within client',TO_TIMESTAMP('2019-12-22 22:13:23','YYYY-MM-DD HH24:MI:SS'),100,1000015,'Organization')
;

INSERT INTO AD_View_Column (Help,AD_Client_ID,ColumnName,ColumnSQL,AD_Org_ID,IsActive,AD_View_Column_ID,EntityType,AD_View_ID,AD_Column_ID,Created,CreatedBy,Description,Updated,UpdatedBy,AD_View_Definition_ID,Name) VALUES ('The Created field indicates the date that this record was created.',0,'CF_Created','cf.Created',0,'Y',1001066,'ZECA',1000010,1007715,TO_TIMESTAMP('2019-12-22 22:13:23','YYYY-MM-DD HH24:MI:SS'),100,'Date this record was created',TO_TIMESTAMP('2019-12-22 22:13:23','YYYY-MM-DD HH24:MI:SS'),100,1000015,'Created')
;

INSERT INTO AD_View_Column (Help,AD_Client_ID,ColumnName,ColumnSQL,AD_Org_ID,IsActive,AD_View_Column_ID,EntityType,AD_View_ID,AD_Column_ID,Created,CreatedBy,Description,Updated,UpdatedBy,AD_View_Definition_ID,Name) VALUES ('The Updated field indicates the date that this record was updated.',0,'CF_Updated','cf.Updated',0,'Y',1001067,'ZECA',1000010,1007716,TO_TIMESTAMP('2019-12-22 22:13:23','YYYY-MM-DD HH24:MI:SS'),100,'Date this record was updated',TO_TIMESTAMP('2019-12-22 22:13:23','YYYY-MM-DD HH24:MI:SS'),100,1000015,'Updated')
;

INSERT INTO AD_View_Column (Help,AD_Client_ID,ColumnName,ColumnSQL,AD_Org_ID,IsActive,AD_View_Column_ID,EntityType,AD_View_ID,AD_Column_ID,Created,CreatedBy,Description,Updated,UpdatedBy,AD_View_Definition_ID,Name) VALUES ('The Created By field indicates the user who created this record.',0,'CF_CreatedBy','cf.CreatedBy',0,'Y',1001068,'ZECA',1000010,1007717,TO_TIMESTAMP('2019-12-22 22:13:23','YYYY-MM-DD HH24:MI:SS'),100,'User who created this records',TO_TIMESTAMP('2019-12-22 22:13:23','YYYY-MM-DD HH24:MI:SS'),100,1000015,'Created By')
;

INSERT INTO AD_View_Column (Help,AD_Client_ID,ColumnName,ColumnSQL,AD_Org_ID,IsActive,AD_View_Column_ID,EntityType,AD_View_ID,AD_Column_ID,Created,CreatedBy,Description,Updated,UpdatedBy,AD_View_Definition_ID,Name) VALUES ('The Updated By field indicates the user who updated this record.',0,'CF_UpdatedBy','cf.UpdatedBy',0,'Y',1001069,'ZECA',1000010,1007718,TO_TIMESTAMP('2019-12-22 22:13:23','YYYY-MM-DD HH24:MI:SS'),100,'User who updated this records',TO_TIMESTAMP('2019-12-22 22:13:23','YYYY-MM-DD HH24:MI:SS'),100,1000015,'Updated By')
;

INSERT INTO AD_View_Column (AD_Client_ID,ColumnName,ColumnSQL,AD_Org_ID,IsActive,AD_View_Column_ID,EntityType,AD_View_ID,AD_Column_ID,Created,CreatedBy,Updated,UpdatedBy,AD_View_Definition_ID,Name) VALUES (0,'CF_rv_inout_createfrom_id','cf.rv_inout_createfrom_id',0,'Y',1001070,'ZECA',1000010,1007720,TO_TIMESTAMP('2019-12-22 22:13:23','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2019-12-22 22:13:23','YYYY-MM-DD HH24:MI:SS'),100,1000015,'rv_inout_createfrom_id')
;

INSERT INTO AD_View_Column (Help,AD_Client_ID,ColumnName,ColumnSQL,AD_Org_ID,IsActive,AD_View_Column_ID,EntityType,AD_View_ID,AD_Column_ID,Created,CreatedBy,Description,Updated,UpdatedBy,AD_View_Definition_ID,Name) VALUES ('Indicates the unique line for a document.  It will also control the display order of the lines within a document.',0,'CF_Line','cf.Line',0,'Y',1001071,'ZECA',1000010,1007721,TO_TIMESTAMP('2019-12-22 22:13:23','YYYY-MM-DD HH24:MI:SS'),100,'Unique line for this document',TO_TIMESTAMP('2019-12-22 22:13:23','YYYY-MM-DD HH24:MI:SS'),100,1000015,'Line No')
;

INSERT INTO AD_View_Column (Help,AD_Client_ID,ColumnName,ColumnSQL,AD_Org_ID,IsActive,AD_View_Column_ID,EntityType,AD_View_ID,AD_Column_ID,Created,CreatedBy,Description,Updated,UpdatedBy,AD_View_Definition_ID,Name) VALUES ('The Quantity Entered is converted to base product UoM quantity',0,'CF_QtyEntered','cf.QtyEntered',0,'Y',1001072,'ZECA',1000010,1007722,TO_TIMESTAMP('2019-12-22 22:13:23','YYYY-MM-DD HH24:MI:SS'),100,'The Quantity Entered is based on the selected UoM',TO_TIMESTAMP('2019-12-22 22:13:23','YYYY-MM-DD HH24:MI:SS'),100,1000015,'Quantity')
;

INSERT INTO AD_View_Column (Help,AD_Client_ID,ColumnName,ColumnSQL,AD_Org_ID,IsActive,AD_View_Column_ID,EntityType,AD_View_ID,AD_Column_ID,Created,CreatedBy,Description,Updated,UpdatedBy,AD_View_Definition_ID,Name) VALUES ('The UOM defines a unique non monetary Unit of Measure',0,'CF_C_UOM_ID','cf.C_UOM_ID',0,'Y',1001073,'ZECA',1000010,1007723,TO_TIMESTAMP('2019-12-22 22:13:23','YYYY-MM-DD HH24:MI:SS'),100,'Unit of Measure',TO_TIMESTAMP('2019-12-22 22:13:23','YYYY-MM-DD HH24:MI:SS'),100,1000015,'UOM')
;

INSERT INTO AD_View_Column (Help,AD_Client_ID,ColumnName,ColumnSQL,AD_Org_ID,IsActive,AD_View_Column_ID,EntityType,AD_View_ID,AD_Column_ID,Created,CreatedBy,Description,Updated,UpdatedBy,AD_View_Definition_ID,Name) VALUES ('The Movement Quantity indicates the quantity of a product that has been moved.',0,'CF_MovementQty','cf.MovementQty',0,'Y',1001074,'ZECA',1000010,1007724,TO_TIMESTAMP('2019-12-22 22:13:23','YYYY-MM-DD HH24:MI:SS'),100,'Quantity of a product moved.',TO_TIMESTAMP('2019-12-22 22:13:23','YYYY-MM-DD HH24:MI:SS'),100,1000015,'Movement Quantity')
;

INSERT INTO AD_View_Column (Help,AD_Client_ID,ColumnName,ColumnSQL,AD_Org_ID,IsActive,AD_View_Column_ID,EntityType,AD_View_ID,AD_Column_ID,Created,CreatedBy,Description,Updated,UpdatedBy,AD_View_Definition_ID,Name) VALUES ('The Locator indicates where in a Warehouse a product is located.',0,'CF_M_Locator_ID','cf.M_Locator_ID',0,'Y',1001075,'ZECA',1000010,1007726,TO_TIMESTAMP('2019-12-22 22:13:23','YYYY-MM-DD HH24:MI:SS'),100,'Warehouse Locator',TO_TIMESTAMP('2019-12-22 22:13:23','YYYY-MM-DD HH24:MI:SS'),100,1000015,'Locator')
;

INSERT INTO AD_View_Column (Help,AD_Client_ID,ColumnName,ColumnSQL,AD_Org_ID,IsActive,AD_View_Column_ID,EntityType,AD_View_ID,AD_Column_ID,Created,CreatedBy,Description,Updated,UpdatedBy,AD_View_Definition_ID,Name) VALUES ('The name of an entity (record) is used as an default search option in addition to the search key. The name is up to 60 characters in length.',0,'CF_Name','cf.Name',0,'Y',1001076,'ZECA',1000010,1007727,TO_TIMESTAMP('2019-12-22 22:13:23','YYYY-MM-DD HH24:MI:SS'),100,'Alphanumeric identifier of the entity',TO_TIMESTAMP('2019-12-22 22:13:23','YYYY-MM-DD HH24:MI:SS'),100,1000015,'Name')
;

INSERT INTO AD_View_Column (Help,AD_Client_ID,ColumnName,ColumnSQL,AD_Org_ID,IsActive,AD_View_Column_ID,EntityType,AD_View_ID,AD_Column_ID,Created,CreatedBy,Description,Updated,UpdatedBy,AD_View_Definition_ID,Name) VALUES ('Identifies an item which is either purchased or sold in this organization.',0,'CF_M_Product_ID','cf.M_Product_ID',0,'Y',1001077,'ZECA',1000010,1007728,TO_TIMESTAMP('2019-12-22 22:13:23','YYYY-MM-DD HH24:MI:SS'),100,'Product, Service, Item',TO_TIMESTAMP('2019-12-22 22:13:23','YYYY-MM-DD HH24:MI:SS'),100,1000015,'Product')
;

INSERT INTO AD_View_Column (Help,AD_Client_ID,ColumnName,ColumnSQL,AD_Org_ID,IsActive,AD_View_Column_ID,EntityType,AD_View_ID,AD_Column_ID,Created,CreatedBy,Description,Updated,UpdatedBy,AD_View_Definition_ID,Name) VALUES ('The Charge indicates a type of Charge (Handling, Shipping, Restocking)',0,'CF_C_Charge_ID','cf.C_Charge_ID',0,'Y',1001078,'ZECA',1000010,1007730,TO_TIMESTAMP('2019-12-22 22:13:23','YYYY-MM-DD HH24:MI:SS'),100,'Additional document charges',TO_TIMESTAMP('2019-12-22 22:13:23','YYYY-MM-DD HH24:MI:SS'),100,1000015,'Charge')
;

INSERT INTO AD_View_Column (Help,AD_Client_ID,ColumnName,ColumnSQL,AD_Org_ID,IsActive,AD_View_Column_ID,EntityType,AD_View_ID,AD_Column_ID,Created,CreatedBy,Description,Updated,UpdatedBy,AD_View_Definition_ID,Name) VALUES ('A description is limited to 255 characters.',0,'CF_Description','cf.Description',0,'Y',1001079,'ZECA',1000010,1007731,TO_TIMESTAMP('2019-12-22 22:13:23','YYYY-MM-DD HH24:MI:SS'),100,'Optional short description of the record',TO_TIMESTAMP('2019-12-22 22:13:23','YYYY-MM-DD HH24:MI:SS'),100,1000015,'Description')
;

INSERT INTO AD_View_Column (Help,AD_Client_ID,ColumnName,ColumnSQL,AD_Org_ID,IsActive,AD_View_Column_ID,EntityType,AD_View_ID,AD_Column_ID,Created,CreatedBy,Description,Updated,UpdatedBy,AD_View_Definition_ID,Name) VALUES ('The Business Partner Product Key identifies the number used by the Business Partner for this product. It can be printed on orders and invoices when you include the Product Key in the print format.',0,'CF_VendorProductNo','cf.VendorProductNo',0,'Y',1001080,'ZECA',1000010,1007732,TO_TIMESTAMP('2019-12-22 22:13:23','YYYY-MM-DD HH24:MI:SS'),100,'Product Key of the Business Partner',TO_TIMESTAMP('2019-12-22 22:13:23','YYYY-MM-DD HH24:MI:SS'),100,1000015,'Partner Product Key')
;

INSERT INTO AD_View_Column (Help,AD_Client_ID,ColumnName,ColumnSQL,AD_Org_ID,IsActive,AD_View_Column_ID,EntityType,AD_View_ID,AD_Column_ID,Created,CreatedBy,Description,Updated,UpdatedBy,AD_View_Definition_ID,Name) VALUES ('The Order is a control document.  The  Order is complete when the quantity ordered is the same as the quantity shipped and invoiced.  When you close an order, unshipped (backordered) quantities are cancelled.',0,'CF_C_Order_ID','cf.C_Order_ID',0,'Y',1001081,'ZECA',1000010,1007733,TO_TIMESTAMP('2019-12-22 22:13:23','YYYY-MM-DD HH24:MI:SS'),100,'Order',TO_TIMESTAMP('2019-12-22 22:13:23','YYYY-MM-DD HH24:MI:SS'),100,1000015,'Order')
;

INSERT INTO AD_View_Column (Help,AD_Client_ID,ColumnName,ColumnSQL,AD_Org_ID,IsActive,AD_View_Column_ID,EntityType,AD_View_ID,AD_Column_ID,Created,CreatedBy,Description,Updated,UpdatedBy,AD_View_Definition_ID,Name) VALUES ('The Invoice Document.',0,'CF_C_Invoice_ID','cf.C_Invoice_ID',0,'Y',1001082,'ZECA',1000010,1007734,TO_TIMESTAMP('2019-12-22 22:13:23','YYYY-MM-DD HH24:MI:SS'),100,'Invoice Identifier',TO_TIMESTAMP('2019-12-22 22:13:23','YYYY-MM-DD HH24:MI:SS'),100,1000015,'Invoice')
;

INSERT INTO AD_View_Column (Help,AD_Client_ID,ColumnName,ColumnSQL,AD_Org_ID,IsActive,AD_View_Column_ID,EntityType,AD_View_ID,AD_Column_ID,Created,CreatedBy,Description,Updated,UpdatedBy,AD_View_Definition_ID,Name) VALUES ('A Return Material Authorization may be required to accept returns and to create Credit Memos',0,'CF_M_RMA_ID','cf.M_RMA_ID',0,'Y',1001083,'ZECA',1000010,1007735,TO_TIMESTAMP('2019-12-22 22:13:23','YYYY-MM-DD HH24:MI:SS'),100,'Return Material Authorization',TO_TIMESTAMP('2019-12-22 22:13:23','YYYY-MM-DD HH24:MI:SS'),100,1000015,'RMA')
;

INSERT INTO AD_View_Column (Help,AD_Client_ID,ColumnName,ColumnSQL,AD_Org_ID,IsActive,AD_View_Column_ID,EntityType,AD_View_ID,AD_Column_ID,Created,CreatedBy,Description,Updated,UpdatedBy,AD_View_Definition_ID,Name) VALUES ('The Document Date indicates the date the document was generated.  It may or may not be the same as the accounting date.',0,'CF_DateDoc','cf.DateDoc',0,'Y',1001084,'ZECA',1000010,1007736,TO_TIMESTAMP('2019-12-22 22:13:23','YYYY-MM-DD HH24:MI:SS'),100,'Date of the Document',TO_TIMESTAMP('2019-12-22 22:13:23','YYYY-MM-DD HH24:MI:SS'),100,1000015,'Document Date')
;

INSERT INTO AD_View_Column (Help,AD_Client_ID,ColumnName,ColumnSQL,AD_Org_ID,IsActive,AD_View_Column_ID,EntityType,AD_View_ID,AD_Column_ID,Created,CreatedBy,Description,Updated,UpdatedBy,AD_View_Definition_ID,Name) VALUES ('A Business Partner is anyone with whom you transact.  This can include Vendor, Customer, Employee or Salesperson',0,'CF_C_BPartner_ID','cf.C_BPartner_ID',0,'Y',1001085,'ZECA',1000010,1007737,TO_TIMESTAMP('2019-12-22 22:13:23','YYYY-MM-DD HH24:MI:SS'),100,'Identifies a Business Partner',TO_TIMESTAMP('2019-12-22 22:13:23','YYYY-MM-DD HH24:MI:SS'),100,1000015,'Business Partner ')
;

INSERT INTO AD_View_Column (Help,AD_Client_ID,ColumnName,ColumnSQL,AD_Org_ID,IsActive,AD_View_Column_ID,EntityType,AD_View_ID,AD_Column_ID,Created,CreatedBy,Description,Updated,UpdatedBy,AD_View_Definition_ID,Name) VALUES ('The Document Status indicates the status of a document at this time.  If you want to change the document status, use the Document Action field',0,'CF_DocStatus','cf.DocStatus',0,'Y',1001086,'ZECA',1000010,1007738,TO_TIMESTAMP('2019-12-22 22:13:23','YYYY-MM-DD HH24:MI:SS'),100,'The current status of the document',TO_TIMESTAMP('2019-12-22 22:13:23','YYYY-MM-DD HH24:MI:SS'),100,1000015,'Document Status')
;

INSERT INTO AD_View_Column (AD_Client_ID,ColumnName,ColumnSQL,AD_Org_ID,IsActive,AD_View_Column_ID,EntityType,AD_View_ID,AD_Column_ID,Created,CreatedBy,Updated,UpdatedBy,AD_View_Definition_ID,Name) VALUES (0,'CF_createfromtype','cf.createfromtype',0,'Y',1001087,'ZECA',1000010,1007739,TO_TIMESTAMP('2019-12-22 22:13:23','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2019-12-22 22:13:23','YYYY-MM-DD HH24:MI:SS'),100,1000015,'createfromtype')
;

INSERT INTO AD_View_Column (Help,AD_Client_ID,ColumnName,ColumnSQL,AD_Org_ID,IsActive,AD_View_Column_ID,EntityType,AD_View_ID,AD_Column_ID,Created,CreatedBy,Description,Updated,UpdatedBy,AD_View_Definition_ID,Name) VALUES ('Activities indicate tasks that are performed and used to utilize Activity based Costing',0,'CF_C_Activity_ID','cf.C_Activity_ID',0,'Y',1001088,'ZECA',1000010,1007740,TO_TIMESTAMP('2019-12-22 22:13:23','YYYY-MM-DD HH24:MI:SS'),100,'Business Activity',TO_TIMESTAMP('2019-12-22 22:13:23','YYYY-MM-DD HH24:MI:SS'),100,1000015,'Activity')
;

INSERT INTO AD_View_Column (Help,AD_Client_ID,ColumnName,ColumnSQL,AD_Org_ID,IsActive,AD_View_Column_ID,EntityType,AD_View_ID,AD_Column_ID,Created,CreatedBy,Description,Updated,UpdatedBy,AD_View_Definition_ID,Name) VALUES ('A Project allows you to track and control internal or external activities.',0,'CF_C_Project_ID','cf.C_Project_ID',0,'Y',1001089,'ZECA',1000010,1007741,TO_TIMESTAMP('2019-12-22 22:13:23','YYYY-MM-DD HH24:MI:SS'),100,'Financial Project',TO_TIMESTAMP('2019-12-22 22:13:23','YYYY-MM-DD HH24:MI:SS'),100,1000015,'Project')
;

INSERT INTO AD_View_Column (Help,AD_Client_ID,ColumnName,ColumnSQL,AD_Org_ID,IsActive,AD_View_Column_ID,EntityType,AD_View_ID,AD_Column_ID,Created,CreatedBy,Description,Updated,UpdatedBy,AD_View_Definition_ID,Name) VALUES ('The Campaign defines a unique marketing program.  Projects can be associated with a pre defined Marketing Campaign.  You can then report based on a specific Campaign.',0,'CF_C_Campaign_ID','cf.C_Campaign_ID',0,'Y',1001090,'ZECA',1000010,1007742,TO_TIMESTAMP('2019-12-22 22:13:23','YYYY-MM-DD HH24:MI:SS'),100,'Marketing Campaign',TO_TIMESTAMP('2019-12-22 22:13:23','YYYY-MM-DD HH24:MI:SS'),100,1000015,'Campaign')
;

INSERT INTO AD_View_Column (Help,AD_Client_ID,ColumnName,ColumnSQL,AD_Org_ID,IsActive,AD_View_Column_ID,EntityType,AD_View_ID,AD_Column_ID,Created,CreatedBy,Description,Updated,UpdatedBy,AD_View_Definition_ID,Name) VALUES ('The user defined element displays the optional elements that have been defined for this account combination.',0,'CF_User1_ID','cf.User1_ID',0,'Y',1001091,'ZECA',1000010,1007743,TO_TIMESTAMP('2019-12-22 22:13:23','YYYY-MM-DD HH24:MI:SS'),100,'User defined list element #1',TO_TIMESTAMP('2019-12-22 22:13:23','YYYY-MM-DD HH24:MI:SS'),100,1000015,'User List 1')
;

INSERT INTO AD_View_Column (Help,AD_Client_ID,ColumnName,ColumnSQL,AD_Org_ID,IsActive,AD_View_Column_ID,EntityType,AD_View_ID,AD_Column_ID,Created,CreatedBy,Description,Updated,UpdatedBy,AD_View_Definition_ID,Name) VALUES ('The user defined element displays the optional elements that have been defined for this account combination.',0,'CF_User2_ID','cf.User2_ID',0,'Y',1001092,'ZECA',1000010,1007744,TO_TIMESTAMP('2019-12-22 22:13:23','YYYY-MM-DD HH24:MI:SS'),100,'User defined list element #2',TO_TIMESTAMP('2019-12-22 22:13:23','YYYY-MM-DD HH24:MI:SS'),100,1000015,'User List 2')
;

INSERT INTO AD_View_Column (AD_Client_ID,ColumnName,ColumnSQL,AD_Org_ID,IsActive,AD_View_Column_ID,EntityType,AD_View_ID,AD_Column_ID,Created,CreatedBy,Updated,UpdatedBy,AD_View_Definition_ID,Name) VALUES (0,'CF_DD_Freight_ID','cf.DD_Freight_ID',0,'Y',1001093,'ZECA',1000010,1007745,TO_TIMESTAMP('2019-12-22 22:13:23','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2019-12-22 22:13:23','YYYY-MM-DD HH24:MI:SS'),100,1000015,'Order Freight ID')
;

INSERT INTO AD_View_Column (Help,AD_Client_ID,ColumnName,ColumnSQL,AD_Org_ID,IsActive,AD_View_Column_ID,EntityType,AD_View_ID,AD_Column_ID,Created,CreatedBy,Description,Updated,UpdatedBy,AD_View_Definition_ID,Name) VALUES ('The Sales Order Line is a unique identifier for a line in an order.',0,'CF_C_OrderLine_ID','cf.C_OrderLine_ID',0,'Y',1001094,'ZECA',1000010,1007746,TO_TIMESTAMP('2019-12-22 22:13:23','YYYY-MM-DD HH24:MI:SS'),100,'Sales Order Line',TO_TIMESTAMP('2019-12-22 22:13:23','YYYY-MM-DD HH24:MI:SS'),100,1000015,'Sales Order Line')
;

INSERT INTO AD_View_Column (Help,AD_Client_ID,ColumnName,ColumnSQL,AD_Org_ID,IsActive,AD_View_Column_ID,EntityType,AD_View_ID,AD_Column_ID,Created,CreatedBy,Description,Updated,UpdatedBy,AD_View_Definition_ID,Name) VALUES ('There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.',0,'CF_IsActive','cf.IsActive',0,'Y',1001095,'ZECA',1000010,1007714,TO_TIMESTAMP('2019-12-22 22:13:23','YYYY-MM-DD HH24:MI:SS'),100,'The record is active in the system',TO_TIMESTAMP('2019-12-22 22:13:23','YYYY-MM-DD HH24:MI:SS'),100,1000015,'Active')
;

INSERT INTO AD_View_Column (AD_Client_ID,ColumnName,ColumnSQL,AD_Org_ID,IsActive,AD_View_Column_ID,EntityType,AD_View_ID,AD_Column_ID,Created,CreatedBy,Description,Updated,UpdatedBy,AD_View_Definition_ID,Name) VALUES (0,'CF_Multiplier','cf.Multiplier',0,'Y',1001096,'ZECA',1000010,1007725,TO_TIMESTAMP('2019-12-22 22:13:23','YYYY-MM-DD HH24:MI:SS'),100,'Type Multiplier (Credit = -1)',TO_TIMESTAMP('2019-12-22 22:13:23','YYYY-MM-DD HH24:MI:SS'),100,1000015,'Multiplier')
;

INSERT INTO AD_View_Column (Help,AD_Client_ID,ColumnName,ColumnSQL,AD_Org_ID,IsActive,AD_View_Column_ID,EntityType,AD_View_ID,AD_Column_ID,Created,CreatedBy,Description,Updated,UpdatedBy,AD_View_Definition_ID,Name) VALUES ('The values of the actual Product Attribute Instances.  The product level attributes are defined on Product level.',0,'CF_M_AttributeSetInstance_ID','cf.M_AttributeSetInstance_ID',0,'Y',1001097,'ZECA',1000010,1007729,TO_TIMESTAMP('2019-12-22 22:13:23','YYYY-MM-DD HH24:MI:SS'),100,'Product Attribute Set Instance',TO_TIMESTAMP('2019-12-22 22:13:23','YYYY-MM-DD HH24:MI:SS'),100,1000015,'Attribute Set Instance')
;


-- Sequenz aktualisieren!!
update ad_sequence set currentnext= 1 + (select max(AD_View_Definition_ID) from AD_View_Definition) where ad_sequence_id= 53339;
update ad_sequence set currentnext= 1 + (select max(AD_View_Column_ID) from AD_View_Column) where ad_sequence_id= 53340;

-- View Definition f.DD_FreightLine
INSERT INTO AD_View_Definition (JoinClause,Processing,AD_Client_ID,AD_Org_ID,IsActive,AD_View_ID,TableAlias,AD_View_Definition_ID,EntityType,Created,CreatedBy,Updated,UpdatedBy,AD_Table_ID,SeqNo) VALUES ('LEFT JOIN DD_FreightLine fl on (fl.c_OrderLine_ID=cf.c_OrderLine_ID)','N',0,0,'Y',1000010,'fl',1000016,'ZECA',TO_TIMESTAMP('2019-12-22 22:22:50','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2019-12-22 22:22:50','YYYY-MM-DD HH24:MI:SS'),100,54259,20)
;

INSERT INTO AD_View_Column (Help,AD_Client_ID,ColumnName,ColumnSQL,AD_Org_ID,IsActive,AD_View_Column_ID,EntityType,AD_View_ID,AD_Column_ID,Created,CreatedBy,Description,Updated,UpdatedBy,AD_View_Definition_ID,Name) VALUES ('A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.',0,'FL_AD_Client_ID','fl.AD_Client_ID',0,'Y',1001098,'ZECA',1000010,83742,TO_TIMESTAMP('2019-12-22 22:23:53','YYYY-MM-DD HH24:MI:SS'),100,'Client/Tenant for this installation.',TO_TIMESTAMP('2019-12-22 22:23:53','YYYY-MM-DD HH24:MI:SS'),100,1000016,'Client')
;

INSERT INTO AD_View_Column (Help,AD_Client_ID,ColumnName,ColumnSQL,AD_Org_ID,IsActive,AD_View_Column_ID,EntityType,AD_View_ID,AD_Column_ID,Created,CreatedBy,Description,Updated,UpdatedBy,AD_View_Definition_ID,Name) VALUES ('An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.',0,'FL_AD_Org_ID','fl.AD_Org_ID',0,'Y',1001099,'ZECA',1000010,83743,TO_TIMESTAMP('2019-12-22 22:23:53','YYYY-MM-DD HH24:MI:SS'),100,'Organizational entity within client',TO_TIMESTAMP('2019-12-22 22:23:53','YYYY-MM-DD HH24:MI:SS'),100,1000016,'Organization')
;

INSERT INTO AD_View_Column (Help,AD_Client_ID,ColumnName,ColumnSQL,AD_Org_ID,IsActive,AD_View_Column_ID,EntityType,AD_View_ID,AD_Column_ID,Created,CreatedBy,Description,Updated,UpdatedBy,AD_View_Definition_ID,Name) VALUES ('There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.',0,'FL_IsActive','fl.IsActive',0,'Y',1001100,'ZECA',1000010,83744,TO_TIMESTAMP('2019-12-22 22:23:53','YYYY-MM-DD HH24:MI:SS'),100,'The record is active in the system',TO_TIMESTAMP('2019-12-22 22:23:53','YYYY-MM-DD HH24:MI:SS'),100,1000016,'Active')
;

INSERT INTO AD_View_Column (Help,AD_Client_ID,ColumnName,ColumnSQL,AD_Org_ID,IsActive,AD_View_Column_ID,EntityType,AD_View_ID,AD_Column_ID,Created,CreatedBy,Description,Updated,UpdatedBy,AD_View_Definition_ID,Name) VALUES ('The Created field indicates the date that this record was created.',0,'FL_Created','fl.Created',0,'Y',1001101,'ZECA',1000010,83745,TO_TIMESTAMP('2019-12-22 22:23:53','YYYY-MM-DD HH24:MI:SS'),100,'Date this record was created',TO_TIMESTAMP('2019-12-22 22:23:53','YYYY-MM-DD HH24:MI:SS'),100,1000016,'Created')
;

INSERT INTO AD_View_Column (Help,AD_Client_ID,ColumnName,ColumnSQL,AD_Org_ID,IsActive,AD_View_Column_ID,EntityType,AD_View_ID,AD_Column_ID,Created,CreatedBy,Description,Updated,UpdatedBy,AD_View_Definition_ID,Name) VALUES ('The Updated field indicates the date that this record was updated.',0,'FL_Updated','fl.Updated',0,'Y',1001102,'ZECA',1000010,83746,TO_TIMESTAMP('2019-12-22 22:23:53','YYYY-MM-DD HH24:MI:SS'),100,'Date this record was updated',TO_TIMESTAMP('2019-12-22 22:23:53','YYYY-MM-DD HH24:MI:SS'),100,1000016,'Updated')
;

INSERT INTO AD_View_Column (Help,AD_Client_ID,ColumnName,ColumnSQL,AD_Org_ID,IsActive,AD_View_Column_ID,EntityType,AD_View_ID,AD_Column_ID,Created,CreatedBy,Description,Updated,UpdatedBy,AD_View_Definition_ID,Name) VALUES ('The Created By field indicates the user who created this record.',0,'FL_CreatedBy','fl.CreatedBy',0,'Y',1001103,'ZECA',1000010,83747,TO_TIMESTAMP('2019-12-22 22:23:53','YYYY-MM-DD HH24:MI:SS'),100,'User who created this records',TO_TIMESTAMP('2019-12-22 22:23:53','YYYY-MM-DD HH24:MI:SS'),100,1000016,'Created By')
;

INSERT INTO AD_View_Column (Help,AD_Client_ID,ColumnName,ColumnSQL,AD_Org_ID,IsActive,AD_View_Column_ID,EntityType,AD_View_ID,AD_Column_ID,Created,CreatedBy,Description,Updated,UpdatedBy,AD_View_Definition_ID,Name) VALUES ('The Updated By field indicates the user who updated this record.',0,'FL_UpdatedBy','fl.UpdatedBy',0,'Y',1001104,'ZECA',1000010,83748,TO_TIMESTAMP('2019-12-22 22:23:53','YYYY-MM-DD HH24:MI:SS'),100,'User who updated this records',TO_TIMESTAMP('2019-12-22 22:23:53','YYYY-MM-DD HH24:MI:SS'),100,1000016,'Updated By')
;

INSERT INTO AD_View_Column (AD_Client_ID,ColumnName,ColumnSQL,AD_Org_ID,IsActive,AD_View_Column_ID,EntityType,AD_View_ID,AD_Column_ID,Created,CreatedBy,Updated,UpdatedBy,AD_View_Definition_ID,Name) VALUES (0,'FL_DD_FreightLine_ID','fl.DD_FreightLine_ID',0,'Y',1001105,'ZECA',1000010,83749,TO_TIMESTAMP('2019-12-22 22:23:53','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2019-12-22 22:23:53','YYYY-MM-DD HH24:MI:SS'),100,1000016,'Order Freight Line ID')
;

INSERT INTO AD_View_Column (Help,AD_Client_ID,ColumnName,ColumnSQL,AD_Org_ID,IsActive,AD_View_Column_ID,EntityType,AD_View_ID,AD_Column_ID,Created,CreatedBy,Description,Updated,UpdatedBy,AD_View_Definition_ID,Name) VALUES ('Indicates the unique line for a document.  It will also control the display order of the lines within a document.',0,'FL_Line','fl.Line',0,'Y',1001106,'ZECA',1000010,83750,TO_TIMESTAMP('2019-12-22 22:23:53','YYYY-MM-DD HH24:MI:SS'),100,'Unique line for this document',TO_TIMESTAMP('2019-12-22 22:23:53','YYYY-MM-DD HH24:MI:SS'),100,1000016,'Line No')
;

INSERT INTO AD_View_Column (Help,AD_Client_ID,ColumnName,ColumnSQL,AD_Org_ID,IsActive,AD_View_Column_ID,EntityType,AD_View_ID,AD_Column_ID,Created,CreatedBy,Description,Updated,UpdatedBy,AD_View_Definition_ID,Name) VALUES ('Freight Categories are used to calculate the Freight for the Shipper selected',0,'FL_M_FreightCategory_ID','fl.M_FreightCategory_ID',0,'Y',1001107,'ZECA',1000010,83751,TO_TIMESTAMP('2019-12-22 22:23:53','YYYY-MM-DD HH24:MI:SS'),100,'Category of the Freight',TO_TIMESTAMP('2019-12-22 22:23:53','YYYY-MM-DD HH24:MI:SS'),100,1000016,'Freight Category')
;

INSERT INTO AD_View_Column (Help,AD_Client_ID,ColumnName,ColumnSQL,AD_Org_ID,IsActive,AD_View_Column_ID,EntityType,AD_View_ID,AD_Column_ID,Created,CreatedBy,Description,Updated,UpdatedBy,AD_View_Definition_ID,Name) VALUES ('The Freight Amount indicates the amount charged for Freight in the document currency.',0,'FL_FreightAmt','fl.FreightAmt',0,'Y',1001108,'ZECA',1000010,83752,TO_TIMESTAMP('2019-12-22 22:23:53','YYYY-MM-DD HH24:MI:SS'),100,'Freight Amount ',TO_TIMESTAMP('2019-12-22 22:23:53','YYYY-MM-DD HH24:MI:SS'),100,1000016,'Freight Amount')
;

INSERT INTO AD_View_Column (Help,AD_Client_ID,ColumnName,ColumnSQL,AD_Org_ID,IsActive,AD_View_Column_ID,EntityType,AD_View_ID,AD_Column_ID,Created,CreatedBy,Description,Updated,UpdatedBy,AD_View_Definition_ID,Name) VALUES ('The Weight indicates the weight  of the product in the Weight UOM of the Client',0,'FL_Weight','fl.Weight',0,'Y',1001109,'ZECA',1000010,83753,TO_TIMESTAMP('2019-12-22 22:23:53','YYYY-MM-DD HH24:MI:SS'),100,'Weight of a product',TO_TIMESTAMP('2019-12-22 22:23:53','YYYY-MM-DD HH24:MI:SS'),100,1000016,'Weight')
;

INSERT INTO AD_View_Column (Help,AD_Client_ID,ColumnName,ColumnSQL,AD_Org_ID,IsActive,AD_View_Column_ID,EntityType,AD_View_ID,AD_Column_ID,Created,CreatedBy,Description,Updated,UpdatedBy,AD_View_Definition_ID,Name) VALUES ('The Volume indicates the volume of the product in the Volume UOM of the Client',0,'FL_Volume','fl.Volume',0,'Y',1001110,'ZECA',1000010,83754,TO_TIMESTAMP('2019-12-22 22:23:53','YYYY-MM-DD HH24:MI:SS'),100,'Volume of a product',TO_TIMESTAMP('2019-12-22 22:23:53','YYYY-MM-DD HH24:MI:SS'),100,1000016,'Volume')
;

INSERT INTO AD_View_Column (Help,AD_Client_ID,ColumnName,ColumnSQL,AD_Org_ID,IsActive,AD_View_Column_ID,EntityType,AD_View_ID,AD_Column_ID,Created,CreatedBy,Description,Updated,UpdatedBy,AD_View_Definition_ID,Name) VALUES ('The Total Amount indicates the total document amount.',0,'FL_TotalAmt','fl.TotalAmt',0,'Y',1001111,'ZECA',1000010,83756,TO_TIMESTAMP('2019-12-22 22:23:53','YYYY-MM-DD HH24:MI:SS'),100,'Total Amount',TO_TIMESTAMP('2019-12-22 22:23:53','YYYY-MM-DD HH24:MI:SS'),100,1000016,'Total Amount')
;

INSERT INTO AD_View_Column (AD_Client_ID,ColumnName,ColumnSQL,AD_Org_ID,IsActive,AD_View_Column_ID,EntityType,AD_View_ID,AD_Column_ID,Created,CreatedBy,Updated,UpdatedBy,AD_View_Definition_ID,Name) VALUES (0,'FL_DD_Freight_ID','fl.DD_Freight_ID',0,'Y',1001112,'ZECA',1000010,83759,TO_TIMESTAMP('2019-12-22 22:23:53','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2019-12-22 22:23:53','YYYY-MM-DD HH24:MI:SS'),100,1000016,'Order Freight ID')
;

INSERT INTO AD_View_Column (Help,AD_Client_ID,ColumnName,ColumnSQL,AD_Org_ID,IsActive,AD_View_Column_ID,EntityType,AD_View_ID,AD_Column_ID,Created,CreatedBy,Description,Updated,UpdatedBy,AD_View_Definition_ID,Name) VALUES ('The Location To indicates the location that a product was moved to.',0,'FL_C_LocTo_ID','fl.C_LocTo_ID',0,'Y',1001113,'ZECA',1000010,83760,TO_TIMESTAMP('2019-12-22 22:23:53','YYYY-MM-DD HH24:MI:SS'),100,'Location that inventory was moved to',TO_TIMESTAMP('2019-12-22 22:23:53','YYYY-MM-DD HH24:MI:SS'),100,1000016,'Location To')
;

INSERT INTO AD_View_Column (Help,AD_Client_ID,ColumnName,ColumnSQL,AD_Org_ID,IsActive,AD_View_Column_ID,EntityType,AD_View_ID,AD_Column_ID,Created,CreatedBy,Description,Updated,UpdatedBy,AD_View_Definition_ID,Name) VALUES ('The Location From indicates the location that a product was moved from.',0,'FL_C_LocFrom_ID','fl.C_LocFrom_ID',0,'Y',1001114,'ZECA',1000010,83761,TO_TIMESTAMP('2019-12-22 22:23:54','YYYY-MM-DD HH24:MI:SS'),100,'Location that inventory was moved from',TO_TIMESTAMP('2019-12-22 22:23:54','YYYY-MM-DD HH24:MI:SS'),100,1000016,'Location From')
;

INSERT INTO AD_View_Column (Help,AD_Client_ID,ColumnName,ColumnSQL,AD_Org_ID,IsActive,AD_View_Column_ID,EntityType,AD_View_ID,AD_Column_ID,Created,CreatedBy,Description,Updated,UpdatedBy,AD_View_Definition_ID,Name) VALUES ('Actual Date/Time of Shipment (pick up)',0,'FL_ShipDate','fl.ShipDate',0,'Y',1001115,'ZECA',1000010,83762,TO_TIMESTAMP('2019-12-22 22:23:54','YYYY-MM-DD HH24:MI:SS'),100,'Shipment Date/Time',TO_TIMESTAMP('2019-12-22 22:23:54','YYYY-MM-DD HH24:MI:SS'),100,1000016,'Ship Date')
;

INSERT INTO AD_View_Column (Help,AD_Client_ID,ColumnName,ColumnSQL,AD_Org_ID,IsActive,AD_View_Column_ID,EntityType,AD_View_ID,AD_Column_ID,Created,CreatedBy,Description,Updated,UpdatedBy,AD_View_Definition_ID,Name) VALUES ('Identifies an item which is either purchased or sold in this organization.',0,'FL_M_Product_ID','fl.M_Product_ID',0,'Y',1001116,'ZECA',1000010,84243,TO_TIMESTAMP('2019-12-22 22:23:54','YYYY-MM-DD HH24:MI:SS'),100,'Product, Service, Item',TO_TIMESTAMP('2019-12-22 22:23:54','YYYY-MM-DD HH24:MI:SS'),100,1000016,'Product')
;

INSERT INTO AD_View_Column (Help,AD_Client_ID,ColumnName,ColumnSQL,AD_Org_ID,IsActive,AD_View_Column_ID,EntityType,AD_View_ID,AD_Column_ID,Created,CreatedBy,Description,Updated,UpdatedBy,AD_View_Definition_ID,Name) VALUES ('Freight Rate for Shipper',0,'FL_M_Freight_ID','fl.M_Freight_ID',0,'Y',1001117,'ZECA',1000010,83755,TO_TIMESTAMP('2019-12-22 22:23:54','YYYY-MM-DD HH24:MI:SS'),100,'Freight Rate',TO_TIMESTAMP('2019-12-22 22:23:54','YYYY-MM-DD HH24:MI:SS'),100,1000016,'Freight')
;

INSERT INTO AD_View_Column (Help,AD_Client_ID,ColumnName,ColumnSQL,AD_Org_ID,IsActive,AD_View_Column_ID,EntityType,AD_View_ID,AD_Column_ID,Created,CreatedBy,Description,Updated,UpdatedBy,AD_View_Definition_ID,Name) VALUES ('The Charge indicates a type of Charge (Handling, Shipping, Restocking)',0,'FL_C_Charge_ID','fl.C_Charge_ID',0,'Y',1001118,'ZECA',1000010,84244,TO_TIMESTAMP('2019-12-22 22:23:54','YYYY-MM-DD HH24:MI:SS'),100,'Additional document charges',TO_TIMESTAMP('2019-12-22 22:23:54','YYYY-MM-DD HH24:MI:SS'),100,1000016,'Charge')
;

INSERT INTO AD_View_Column (Help,AD_Client_ID,ColumnName,ColumnSQL,AD_Org_ID,IsActive,AD_View_Column_ID,EntityType,AD_View_ID,AD_Column_ID,Created,CreatedBy,Description,Updated,UpdatedBy,AD_View_Definition_ID,Name) VALUES ('The Sales Order Line is a unique identifier for a line in an order.',0,'FL_C_OrderLine_ID','fl.C_OrderLine_ID',0,'Y',1001119,'ZECA',1000010,1007612,TO_TIMESTAMP('2019-12-22 22:23:54','YYYY-MM-DD HH24:MI:SS'),100,'Sales Order Line',TO_TIMESTAMP('2019-12-22 22:23:54','YYYY-MM-DD HH24:MI:SS'),100,1000016,'Sales Order Line')
;

-- Sequenz aktualisieren!!
update ad_sequence set currentnext= 1 + (select max(AD_View_Definition_ID) from AD_View_Definition) where ad_sequence_id= 53339;
update ad_sequence set currentnext= 1 + (select max(AD_View_Column_ID) from AD_View_Column) where ad_sequence_id= 53340;


-- View Definition f.DD_Freight
INSERT INTO AD_View_Definition (JoinClause,Processing,AD_Client_ID,AD_Org_ID,IsActive,AD_View_ID,TableAlias,AD_View_Definition_ID,EntityType,Created,CreatedBy,Updated,UpdatedBy,AD_Table_ID,SeqNo) VALUES ('LEFT JOIN DD_Freight f on (fl.DD_Freight_ID=f.DD_Freight_ID)','N',0,0,'Y',1000010,'f',1000017,'ZECA',TO_TIMESTAMP('2019-12-22 22:30:20','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2019-12-22 22:30:20','YYYY-MM-DD HH24:MI:SS'),100,54258,30)
;

INSERT INTO AD_View_Column (Help,AD_Client_ID,ColumnName,ColumnSQL,AD_Org_ID,IsActive,AD_View_Column_ID,EntityType,AD_View_ID,AD_Column_ID,Created,CreatedBy,Description,Updated,UpdatedBy,AD_View_Definition_ID,Name) VALUES ('The Create From process will create a new document based on information in an existing document selected by the user.',0,'F_CreateFrom','f.CreateFrom',0,'Y',1001120,'ZECA',1000010,1007711,TO_TIMESTAMP('2019-12-22 22:30:24','YYYY-MM-DD HH24:MI:SS'),100,'Process which will generate a new document lines based on an existing document',TO_TIMESTAMP('2019-12-22 22:30:24','YYYY-MM-DD HH24:MI:SS'),100,1000017,'Create lines from')
;

INSERT INTO AD_View_Column (Help,AD_Client_ID,ColumnName,ColumnSQL,AD_Org_ID,IsActive,AD_View_Column_ID,EntityType,AD_View_ID,AD_Column_ID,Created,CreatedBy,Description,Updated,UpdatedBy,AD_View_Definition_ID,Name) VALUES ('A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.',0,'F_AD_Client_ID','f.AD_Client_ID',0,'Y',1001121,'ZECA',1000010,83714,TO_TIMESTAMP('2019-12-22 22:30:24','YYYY-MM-DD HH24:MI:SS'),100,'Client/Tenant for this installation.',TO_TIMESTAMP('2019-12-22 22:30:24','YYYY-MM-DD HH24:MI:SS'),100,1000017,'Client')
;

INSERT INTO AD_View_Column (Help,AD_Client_ID,ColumnName,ColumnSQL,AD_Org_ID,IsActive,AD_View_Column_ID,EntityType,AD_View_ID,AD_Column_ID,Created,CreatedBy,Description,Updated,UpdatedBy,AD_View_Definition_ID,Name) VALUES ('An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.',0,'F_AD_Org_ID','f.AD_Org_ID',0,'Y',1001122,'ZECA',1000010,83715,TO_TIMESTAMP('2019-12-22 22:30:24','YYYY-MM-DD HH24:MI:SS'),100,'Organizational entity within client',TO_TIMESTAMP('2019-12-22 22:30:24','YYYY-MM-DD HH24:MI:SS'),100,1000017,'Organization')
;

INSERT INTO AD_View_Column (Help,AD_Client_ID,ColumnName,ColumnSQL,AD_Org_ID,IsActive,AD_View_Column_ID,EntityType,AD_View_ID,AD_Column_ID,Created,CreatedBy,Description,Updated,UpdatedBy,AD_View_Definition_ID,Name) VALUES ('There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.',0,'F_IsActive','f.IsActive',0,'Y',1001123,'ZECA',1000010,83716,TO_TIMESTAMP('2019-12-22 22:30:24','YYYY-MM-DD HH24:MI:SS'),100,'The record is active in the system',TO_TIMESTAMP('2019-12-22 22:30:24','YYYY-MM-DD HH24:MI:SS'),100,1000017,'Active')
;

INSERT INTO AD_View_Column (Help,AD_Client_ID,ColumnName,ColumnSQL,AD_Org_ID,IsActive,AD_View_Column_ID,EntityType,AD_View_ID,AD_Column_ID,Created,CreatedBy,Description,Updated,UpdatedBy,AD_View_Definition_ID,Name) VALUES ('The Created field indicates the date that this record was created.',0,'F_Created','f.Created',0,'Y',1001124,'ZECA',1000010,83717,TO_TIMESTAMP('2019-12-22 22:30:24','YYYY-MM-DD HH24:MI:SS'),100,'Date this record was created',TO_TIMESTAMP('2019-12-22 22:30:24','YYYY-MM-DD HH24:MI:SS'),100,1000017,'Created')
;

INSERT INTO AD_View_Column (Help,AD_Client_ID,ColumnName,ColumnSQL,AD_Org_ID,IsActive,AD_View_Column_ID,EntityType,AD_View_ID,AD_Column_ID,Created,CreatedBy,Description,Updated,UpdatedBy,AD_View_Definition_ID,Name) VALUES ('The Updated field indicates the date that this record was updated.',0,'F_Updated','f.Updated',0,'Y',1001125,'ZECA',1000010,83718,TO_TIMESTAMP('2019-12-22 22:30:24','YYYY-MM-DD HH24:MI:SS'),100,'Date this record was updated',TO_TIMESTAMP('2019-12-22 22:30:24','YYYY-MM-DD HH24:MI:SS'),100,1000017,'Updated')
;

INSERT INTO AD_View_Column (Help,AD_Client_ID,ColumnName,ColumnSQL,AD_Org_ID,IsActive,AD_View_Column_ID,EntityType,AD_View_ID,AD_Column_ID,Created,CreatedBy,Description,Updated,UpdatedBy,AD_View_Definition_ID,Name) VALUES ('The Created By field indicates the user who created this record.',0,'F_CreatedBy','f.CreatedBy',0,'Y',1001126,'ZECA',1000010,83719,TO_TIMESTAMP('2019-12-22 22:30:24','YYYY-MM-DD HH24:MI:SS'),100,'User who created this records',TO_TIMESTAMP('2019-12-22 22:30:24','YYYY-MM-DD HH24:MI:SS'),100,1000017,'Created By')
;

INSERT INTO AD_View_Column (Help,AD_Client_ID,ColumnName,ColumnSQL,AD_Org_ID,IsActive,AD_View_Column_ID,EntityType,AD_View_ID,AD_Column_ID,Created,CreatedBy,Description,Updated,UpdatedBy,AD_View_Definition_ID,Name) VALUES ('The Updated By field indicates the user who updated this record.',0,'F_UpdatedBy','f.UpdatedBy',0,'Y',1001127,'ZECA',1000010,83720,TO_TIMESTAMP('2019-12-22 22:30:25','YYYY-MM-DD HH24:MI:SS'),100,'User who updated this records',TO_TIMESTAMP('2019-12-22 22:30:25','YYYY-MM-DD HH24:MI:SS'),100,1000017,'Updated By')
;

INSERT INTO AD_View_Column (AD_Client_ID,ColumnName,ColumnSQL,AD_Org_ID,IsActive,AD_View_Column_ID,EntityType,AD_View_ID,AD_Column_ID,Created,CreatedBy,Updated,UpdatedBy,AD_View_Definition_ID,Name) VALUES (0,'F_DD_Freight_ID','f.DD_Freight_ID',0,'Y',1001128,'ZECA',1000010,83721,TO_TIMESTAMP('2019-12-22 22:30:25','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2019-12-22 22:30:25','YYYY-MM-DD HH24:MI:SS'),100,1000017,'Order Freight ID')
;

INSERT INTO AD_View_Column (Help,AD_Client_ID,ColumnName,ColumnSQL,AD_Org_ID,IsActive,AD_View_Column_ID,EntityType,AD_View_ID,AD_Column_ID,Created,CreatedBy,Description,Updated,UpdatedBy,AD_View_Definition_ID,Name) VALUES ('The Shipper indicates the method of delivering product',0,'F_M_Shipper_ID','f.M_Shipper_ID',0,'Y',1001129,'ZECA',1000010,83722,TO_TIMESTAMP('2019-12-22 22:30:25','YYYY-MM-DD HH24:MI:SS'),100,'Method or manner of product delivery',TO_TIMESTAMP('2019-12-22 22:30:25','YYYY-MM-DD HH24:MI:SS'),100,1000017,'Shipper')
;

INSERT INTO AD_View_Column (Help,AD_Client_ID,ColumnName,ColumnSQL,AD_Org_ID,IsActive,AD_View_Column_ID,EntityType,AD_View_ID,AD_Column_ID,Created,CreatedBy,Description,Updated,UpdatedBy,AD_View_Definition_ID,Name) VALUES ('Freight Categories are used to calculate the Freight for the Shipper selected',0,'F_M_FreightCategory_ID','f.M_FreightCategory_ID',0,'Y',1001130,'ZECA',1000010,83723,TO_TIMESTAMP('2019-12-22 22:30:25','YYYY-MM-DD HH24:MI:SS'),100,'Category of the Freight',TO_TIMESTAMP('2019-12-22 22:30:25','YYYY-MM-DD HH24:MI:SS'),100,1000017,'Freight Category')
;

INSERT INTO AD_View_Column (Help,AD_Client_ID,ColumnName,ColumnSQL,AD_Org_ID,IsActive,AD_View_Column_ID,EntityType,AD_View_ID,AD_Column_ID,Created,CreatedBy,Description,Updated,UpdatedBy,AD_View_Definition_ID,Name) VALUES ('The Freight Cost Rule indicates the method used when charging for freight.',0,'F_FreightCostRule','f.FreightCostRule',0,'Y',1001131,'ZECA',1000010,83724,TO_TIMESTAMP('2019-12-22 22:30:25','YYYY-MM-DD HH24:MI:SS'),100,'Method for charging Freight',TO_TIMESTAMP('2019-12-22 22:30:25','YYYY-MM-DD HH24:MI:SS'),100,1000017,'Freight Cost Rule')
;

INSERT INTO AD_View_Column (Help,AD_Client_ID,ColumnName,ColumnSQL,AD_Org_ID,IsActive,AD_View_Column_ID,EntityType,AD_View_ID,AD_Column_ID,Created,CreatedBy,Description,Updated,UpdatedBy,AD_View_Definition_ID,Name) VALUES ('The Freight Amount indicates the amount charged for Freight in the document currency.',0,'F_FreightAmt','f.FreightAmt',0,'Y',1001132,'ZECA',1000010,83725,TO_TIMESTAMP('2019-12-22 22:30:25','YYYY-MM-DD HH24:MI:SS'),100,'Freight Amount ',TO_TIMESTAMP('2019-12-22 22:30:25','YYYY-MM-DD HH24:MI:SS'),100,1000017,'Freight Amount')
;

INSERT INTO AD_View_Column (Help,AD_Client_ID,ColumnName,ColumnSQL,AD_Org_ID,IsActive,AD_View_Column_ID,EntityType,AD_View_ID,AD_Column_ID,Created,CreatedBy,Description,Updated,UpdatedBy,AD_View_Definition_ID,Name) VALUES ('Indicates the Date an item was ordered.',0,'F_DateOrdered','f.DateOrdered',0,'Y',1001133,'ZECA',1000010,83728,TO_TIMESTAMP('2019-12-22 22:30:25','YYYY-MM-DD HH24:MI:SS'),100,'Date of Order',TO_TIMESTAMP('2019-12-22 22:30:25','YYYY-MM-DD HH24:MI:SS'),100,1000017,'Date Ordered')
;

INSERT INTO AD_View_Column (Help,AD_Client_ID,ColumnName,ColumnSQL,AD_Org_ID,IsActive,AD_View_Column_ID,EntityType,AD_View_ID,AD_Column_ID,Created,CreatedBy,Description,Updated,UpdatedBy,AD_View_Definition_ID,Name) VALUES ('The document number is usually automatically generated by the system and determined by the document type of the document. If the document is not saved, the preliminary number is displayed in "<>".

If the document type of your document has no automatic document sequence defined, the field is empty if you create a new document. This is for documents which usually have an external number (like vendor invoice).  If you leave the field empty, the system will generate a document number for you. The document sequence used for this fallback number is defined in the "Maintain Sequence" window with the name "DocumentNo_<TableName>", where TableName is the actual name of the table (e.g. C_Order).',0,'F_DocumentNo','f.DocumentNo',0,'Y',1001134,'ZECA',1000010,83733,TO_TIMESTAMP('2019-12-22 22:30:25','YYYY-MM-DD HH24:MI:SS'),100,'Document sequence number of the document',TO_TIMESTAMP('2019-12-22 22:30:25','YYYY-MM-DD HH24:MI:SS'),100,1000017,'Document No')
;

INSERT INTO AD_View_Column (Help,AD_Client_ID,ColumnName,ColumnSQL,AD_Org_ID,IsActive,AD_View_Column_ID,EntityType,AD_View_ID,AD_Column_ID,Created,CreatedBy,Description,Updated,UpdatedBy,AD_View_Definition_ID,Name) VALUES ('The Document Status indicates the status of a document at this time.  If you want to change the document status, use the Document Action field',0,'F_DocStatus','f.DocStatus',0,'Y',1001135,'ZECA',1000010,83734,TO_TIMESTAMP('2019-12-22 22:30:25','YYYY-MM-DD HH24:MI:SS'),100,'The current status of the document',TO_TIMESTAMP('2019-12-22 22:30:25','YYYY-MM-DD HH24:MI:SS'),100,1000017,'Document Status')
;

INSERT INTO AD_View_Column (AD_Client_ID,ColumnName,ColumnSQL,AD_Org_ID,IsActive,AD_View_Column_ID,EntityType,AD_View_ID,AD_Column_ID,Created,CreatedBy,Description,Updated,UpdatedBy,AD_View_Definition_ID,Name) VALUES (0,'F_PP_Order_ID','f.PP_Order_ID',0,'Y',1001136,'ZECA',1000010,83732,TO_TIMESTAMP('2019-12-22 22:30:25','YYYY-MM-DD HH24:MI:SS'),100,'Manufacturing Order',TO_TIMESTAMP('2019-12-22 22:30:25','YYYY-MM-DD HH24:MI:SS'),100,1000017,'Manufacturing Order')
;

INSERT INTO AD_View_Column (Help,AD_Client_ID,ColumnName,ColumnSQL,AD_Org_ID,IsActive,AD_View_Column_ID,EntityType,AD_View_ID,AD_Column_ID,Created,CreatedBy,Description,Updated,UpdatedBy,AD_View_Definition_ID,Name) VALUES ('The Document Type determines document sequence and processing rules',0,'F_C_DocType_ID','f.C_DocType_ID',0,'Y',1001137,'ZECA',1000010,83735,TO_TIMESTAMP('2019-12-22 22:30:25','YYYY-MM-DD HH24:MI:SS'),100,'Document type or rules',TO_TIMESTAMP('2019-12-22 22:30:25','YYYY-MM-DD HH24:MI:SS'),100,1000017,'Document Type')
;

INSERT INTO AD_View_Column (Help,AD_Client_ID,ColumnName,ColumnSQL,AD_Org_ID,IsActive,AD_View_Column_ID,EntityType,AD_View_ID,AD_Column_ID,Created,CreatedBy,Description,Updated,UpdatedBy,AD_View_Definition_ID,Name) VALUES ('The Document Date indicates the date the document was generated.  It may or may not be the same as the accounting date.',0,'F_DateDoc','f.DateDoc',0,'Y',1001138,'ZECA',1000010,83736,TO_TIMESTAMP('2019-12-22 22:30:25','YYYY-MM-DD HH24:MI:SS'),100,'Date of the Document',TO_TIMESTAMP('2019-12-22 22:30:25','YYYY-MM-DD HH24:MI:SS'),100,1000017,'Document Date')
;

INSERT INTO AD_View_Column (Help,AD_Client_ID,ColumnName,ColumnSQL,AD_Org_ID,IsActive,AD_View_Column_ID,EntityType,AD_View_ID,AD_Column_ID,Created,CreatedBy,Description,Updated,UpdatedBy,AD_View_Definition_ID,Name) VALUES ('The Processed checkbox indicates that a document has been processed.',0,'F_Processed','f.Processed',0,'Y',1001139,'ZECA',1000010,83737,TO_TIMESTAMP('2019-12-22 22:30:25','YYYY-MM-DD HH24:MI:SS'),100,'The document has been processed',TO_TIMESTAMP('2019-12-22 22:30:25','YYYY-MM-DD HH24:MI:SS'),100,1000017,'Processed')
;

INSERT INTO AD_View_Column (Help,AD_Client_ID,ColumnName,ColumnSQL,AD_Org_ID,IsActive,AD_View_Column_ID,EntityType,AD_View_ID,AD_Column_ID,Created,CreatedBy,Description,Updated,UpdatedBy,AD_View_Definition_ID,Name) VALUES ('The Approved checkbox indicates if this document requires approval before it can be processed.',0,'F_IsApproved','f.IsApproved',0,'Y',1001140,'ZECA',1000010,83738,TO_TIMESTAMP('2019-12-22 22:30:25','YYYY-MM-DD HH24:MI:SS'),100,'Indicates if this document requires approval',TO_TIMESTAMP('2019-12-22 22:30:25','YYYY-MM-DD HH24:MI:SS'),100,1000017,'Approved')
;

INSERT INTO AD_View_Column (Help,AD_Client_ID,ColumnName,ColumnSQL,AD_Org_ID,IsActive,AD_View_Column_ID,EntityType,AD_View_ID,AD_Column_ID,Created,CreatedBy,Description,Updated,UpdatedBy,AD_View_Definition_ID,Name) VALUES ('A description is limited to 255 characters.',0,'F_Description','f.Description',0,'Y',1001141,'ZECA',1000010,83739,TO_TIMESTAMP('2019-12-22 22:30:25','YYYY-MM-DD HH24:MI:SS'),100,'Optional short description of the record',TO_TIMESTAMP('2019-12-22 22:30:25','YYYY-MM-DD HH24:MI:SS'),100,1000017,'Description')
;

INSERT INTO AD_View_Column (Help,AD_Client_ID,ColumnName,ColumnSQL,AD_Org_ID,IsActive,AD_View_Column_ID,EntityType,AD_View_ID,AD_Column_ID,Created,CreatedBy,Description,Updated,UpdatedBy,AD_View_Definition_ID,Name) VALUES ('You find the current status in the Document Status field. The options are listed in a popup',0,'F_DocAction','f.DocAction',0,'Y',1001142,'ZECA',1000010,83740,TO_TIMESTAMP('2019-12-22 22:30:25','YYYY-MM-DD HH24:MI:SS'),100,'The targeted status of the document',TO_TIMESTAMP('2019-12-22 22:30:25','YYYY-MM-DD HH24:MI:SS'),100,1000017,'Document Action')
;

INSERT INTO AD_View_Column (Help,AD_Client_ID,ColumnName,ColumnSQL,AD_Org_ID,IsActive,AD_View_Column_ID,EntityType,AD_View_ID,AD_Column_ID,Created,CreatedBy,Description,Updated,UpdatedBy,AD_View_Definition_ID,Name) VALUES ('A Business Partner is anyone with whom you transact.  This can include Vendor, Customer, Employee or Salesperson',0,'F_C_BPartner_ID','f.C_BPartner_ID',0,'Y',1001143,'ZECA',1000010,83741,TO_TIMESTAMP('2019-12-22 22:30:25','YYYY-MM-DD HH24:MI:SS'),100,'Identifies a Business Partner',TO_TIMESTAMP('2019-12-22 22:30:25','YYYY-MM-DD HH24:MI:SS'),100,1000017,'Business Partner ')
;

INSERT INTO AD_View_Column (AD_Client_ID,ColumnName,ColumnSQL,AD_Org_ID,IsActive,AD_View_Column_ID,EntityType,AD_View_ID,AD_Column_ID,Created,CreatedBy,Updated,UpdatedBy,AD_View_Definition_ID,Name) VALUES (0,'F_DD_Order_ID','f.DD_Order_ID',0,'Y',1001144,'ZECA',1000010,83730,TO_TIMESTAMP('2019-12-22 22:30:25','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2019-12-22 22:30:25','YYYY-MM-DD HH24:MI:SS'),100,1000017,'Distribution Order')
;

INSERT INTO AD_View_Column (Help,AD_Client_ID,ColumnName,ColumnSQL,AD_Org_ID,IsActive,AD_View_Column_ID,EntityType,AD_View_ID,AD_Column_ID,Created,CreatedBy,Description,Updated,UpdatedBy,AD_View_Definition_ID,Name) VALUES ('The Order is a control document.  The  Order is complete when the quantity ordered is the same as the quantity shipped and invoiced.  When you close an order, unshipped (backordered) quantities are cancelled.',0,'F_C_Order_ID','f.C_Order_ID',0,'Y',1001145,'ZECA',1000010,83729,TO_TIMESTAMP('2019-12-22 22:30:25','YYYY-MM-DD HH24:MI:SS'),100,'Order',TO_TIMESTAMP('2019-12-22 22:30:25','YYYY-MM-DD HH24:MI:SS'),100,1000017,'Order')
;


-- Sequenz aktualisieren!!
update ad_sequence set currentnext= 1 + (select max(AD_View_Definition_ID) from AD_View_Definition) where ad_sequence_id= 53339;
update ad_sequence set currentnext= 1 + (select max(AD_View_Column_ID) from AD_View_Column) where ad_sequence_id= 53340;


-- Create Validation Rule FO
INSERT INTO AD_Val_Rule (AD_Org_ID,Type,Code,AD_Client_ID,Name,IsActive,AD_Val_Rule_ID,EntityType,Created,CreatedBy,Updated,UpdatedBy) VALUES (0,'S','DD_Freight.DocStatus in (''CL'',''CO'') ',0,'DD_Freight Freight Order Completed','Y',1000088,'U',TO_TIMESTAMP('2019-11-25 12:18:58','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2019-11-25 12:18:58','YYYY-MM-DD HH24:MI:SS'),100)
;

INSERT INTO AD_Browse_Field (IsMandatory,AD_Client_ID,AD_Org_ID,IsActive,AD_Element_ID,AD_Reference_ID,EntityType,Help,IsDisplayed,IsIdentifier,IsKey,IsQueryCriteria,IsRange,SeqNo,AD_Browse_Field_ID,AD_Browse_ID,Created,CreatedBy,Description,Updated,UpdatedBy,Name,AD_View_Column_ID,IsReadOnly,IsCentrallyMaintained,IsOrderBy,SortNo,FieldLength) VALUES ('N',0,0,'Y',561,19,'ZECA','The Sales Order Line is a unique identifier for a line in an order.','Y','N','Y','N','N',10,1000489,1000013,TO_TIMESTAMP('2019-12-22 22:38:20','YYYY-MM-DD HH24:MI:SS'),100,'Sales Order Line',TO_TIMESTAMP('2019-12-22 22:38:20','YYYY-MM-DD HH24:MI:SS'),100,'Sales Order Line',1001119,'Y','Y','N',0,0)
;

INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Help,Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Help,t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=1000489 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

INSERT INTO AD_Browse_Field (IsMandatory,AD_Client_ID,AD_Org_ID,IsActive,AD_Element_ID,AD_Reference_ID,EntityType,Help,IsDisplayed,IsIdentifier,IsKey,IsQueryCriteria,IsRange,SeqNo,AD_Browse_Field_ID,AD_Browse_ID,Created,CreatedBy,Description,Updated,UpdatedBy,Name,AD_View_Column_ID,IsReadOnly,IsCentrallyMaintained,IsOrderBy,SortNo,FieldLength) VALUES ('N',0,0,'Y',439,11,'ZECA','Indicates the unique line for a document.  It will also control the display order of the lines within a document.','Y','N','N','N','N',20,1000490,1000013,TO_TIMESTAMP('2019-12-22 22:39:41','YYYY-MM-DD HH24:MI:SS'),100,'Unique line for this document',TO_TIMESTAMP('2019-12-22 22:39:41','YYYY-MM-DD HH24:MI:SS'),100,'Line No',1001106,'Y','Y','N',0,0)
;

INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Help,Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Help,t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=1000490 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

INSERT INTO AD_Browse_Field (IsMandatory,AD_Client_ID,AD_Org_ID,IsActive,AD_Element_ID,AD_Reference_ID,EntityType,Help,IsDisplayed,IsIdentifier,IsKey,IsQueryCriteria,IsRange,SeqNo,AD_Reference_Value_ID,AD_Browse_Field_ID,AD_Browse_ID,Created,CreatedBy,Description,Updated,UpdatedBy,Name,AD_View_Column_ID,IsReadOnly,IsCentrallyMaintained,IsOrderBy,SortNo,FieldLength) VALUES ('N',0,0,'Y',558,18,'ZECA','The Order is a control document.  The  Order is complete when the quantity ordered is the same as the quantity shipped and invoiced.  When you close an order, unshipped (backordered) quantities are cancelled.','Y','N','N','N','N',30,290,1000491,1000013,TO_TIMESTAMP('2019-12-22 22:41:23','YYYY-MM-DD HH24:MI:SS'),100,'Order',TO_TIMESTAMP('2019-12-22 22:41:23','YYYY-MM-DD HH24:MI:SS'),100,'Order',1001119,'Y','Y','N',0,0)
;

INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Help,Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Help,t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=1000491 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

INSERT INTO AD_Browse_Field (IsMandatory,AD_Client_ID,AD_Org_ID,IsActive,AD_Element_ID,AD_Reference_ID,EntityType,Help,IsDisplayed,IsIdentifier,IsKey,IsQueryCriteria,IsRange,SeqNo,AD_Browse_Field_ID,AD_Browse_ID,Created,CreatedBy,Description,Updated,UpdatedBy,Name,AD_View_Column_ID,IsReadOnly,IsCentrallyMaintained,IsOrderBy,SortNo,FieldLength) VALUES ('N',0,0,'Y',454,30,'ZECA','Identifies an item which is either purchased or sold in this organization.','Y','N','N','N','N',40,1000492,1000013,TO_TIMESTAMP('2019-12-22 22:43:04','YYYY-MM-DD HH24:MI:SS'),100,'Product, Service, Item',TO_TIMESTAMP('2019-12-22 22:43:04','YYYY-MM-DD HH24:MI:SS'),100,'Product',1001116,'Y','Y','N',0,0)
;

INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Help,Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Help,t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=1000492 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

INSERT INTO AD_Browse_Field (IsMandatory,AD_Client_ID,AD_Org_ID,IsActive,AD_Element_ID,AD_Reference_ID,EntityType,IsDisplayed,IsIdentifier,IsKey,IsQueryCriteria,IsRange,SeqNo,AD_Browse_Field_ID,AD_Browse_ID,Created,CreatedBy,Updated,UpdatedBy,Name,AD_View_Column_ID,IsReadOnly,IsCentrallyMaintained,IsOrderBy,SortNo,AD_Val_Rule_ID,FieldLength) VALUES ('Y',0,0,'Y',59465,19,'ZECA','Y','N','N','Y','N',60,1000493,1000013,TO_TIMESTAMP('2019-12-22 22:56:56','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2019-12-22 22:56:56','YYYY-MM-DD HH24:MI:SS'),100,'Order Freight ID',1001112,'Y','Y','N',0,1000088,0)
;

INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Help,Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Help,t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=1000493 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

INSERT INTO AD_Browse_Field (IsMandatory,AD_Client_ID,AD_Org_ID,IsActive,AD_Element_ID,AD_Reference_ID,EntityType,Help,IsDisplayed,IsIdentifier,IsKey,IsQueryCriteria,IsRange,SeqNo,AD_Browse_Field_ID,AD_Browse_ID,Created,CreatedBy,Description,Updated,UpdatedBy,Name,AD_View_Column_ID,IsReadOnly,IsCentrallyMaintained,IsOrderBy,SortNo,FieldLength) VALUES ('N',0,0,'Y',265,15,'ZECA','The Document Date indicates the date the document was generated.  It may or may not be the same as the accounting date.','Y','N','N','Y','N',70,1000494,1000013,TO_TIMESTAMP('2019-12-22 23:00:00','YYYY-MM-DD HH24:MI:SS'),100,'Date of the Document',TO_TIMESTAMP('2019-12-22 23:00:00','YYYY-MM-DD HH24:MI:SS'),100,'Document Date',1001138,'Y','Y','N',0,0)
;

INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Help,Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Help,t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=1000494 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;



-- Es fehlt in weiteren SQLS:
-- MovementQty in Freight Line hinzufügen, dann in View Column + Browse Field
-- Order in Freight Line hinzufügen, dann in View Column + Browse Field
