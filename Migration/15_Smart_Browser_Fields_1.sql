UPDATE AD_View_Definition SET TableAlias='l', AD_Table_ID=1000264,Updated=TO_TIMESTAMP('2019-12-22 18:30:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_View_Definition_ID=1000013
;

UPDATE AD_View_Definition SET JoinClause='INNER JOIN C_Order o on (l.C_Order_ID=o.c_Order_ID)',Updated=TO_TIMESTAMP('2019-12-22 18:31:07','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_View_Definition_ID=1000014
;

INSERT INTO AD_View_Column (Help,ColumnName,AD_Client_ID,ColumnSQL,AD_Org_ID,IsActive,AD_View_Column_ID,EntityType,AD_View_ID,AD_Column_ID,Created,CreatedBy,Description,Updated,UpdatedBy,AD_View_Definition_ID,Name) VALUES ('A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.','L_AD_Client_ID',0,'l.AD_Client_ID',0,'Y',1000743,'ZECA',1000009,1007712,TO_TIMESTAMP('2019-12-22 18:32:05','YYYY-MM-DD HH24:MI:SS'),100,'Client/Tenant for this installation.',TO_TIMESTAMP('2019-12-22 18:32:05','YYYY-MM-DD HH24:MI:SS'),100,1000013,'Client')
;

INSERT INTO AD_View_Column (Help,ColumnName,AD_Client_ID,ColumnSQL,AD_Org_ID,IsActive,AD_View_Column_ID,EntityType,AD_View_ID,AD_Column_ID,Created,CreatedBy,Description,Updated,UpdatedBy,AD_View_Definition_ID,Name) VALUES ('An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.','L_AD_Org_ID',0,'l.AD_Org_ID',0,'Y',1000744,'ZECA',1000009,1007713,TO_TIMESTAMP('2019-12-22 18:32:05','YYYY-MM-DD HH24:MI:SS'),100,'Organizational entity within client',TO_TIMESTAMP('2019-12-22 18:32:05','YYYY-MM-DD HH24:MI:SS'),100,1000013,'Organization')
;

INSERT INTO AD_View_Column (Help,ColumnName,AD_Client_ID,ColumnSQL,AD_Org_ID,IsActive,AD_View_Column_ID,EntityType,AD_View_ID,AD_Column_ID,Created,CreatedBy,Description,Updated,UpdatedBy,AD_View_Definition_ID,Name) VALUES ('The Created field indicates the date that this record was created.','L_Created',0,'l.Created',0,'Y',1000745,'ZECA',1000009,1007715,TO_TIMESTAMP('2019-12-22 18:32:05','YYYY-MM-DD HH24:MI:SS'),100,'Date this record was created',TO_TIMESTAMP('2019-12-22 18:32:05','YYYY-MM-DD HH24:MI:SS'),100,1000013,'Created')
;

INSERT INTO AD_View_Column (Help,ColumnName,AD_Client_ID,ColumnSQL,AD_Org_ID,IsActive,AD_View_Column_ID,EntityType,AD_View_ID,AD_Column_ID,Created,CreatedBy,Description,Updated,UpdatedBy,AD_View_Definition_ID,Name) VALUES ('The Updated field indicates the date that this record was updated.','L_Updated',0,'l.Updated',0,'Y',1000746,'ZECA',1000009,1007716,TO_TIMESTAMP('2019-12-22 18:32:05','YYYY-MM-DD HH24:MI:SS'),100,'Date this record was updated',TO_TIMESTAMP('2019-12-22 18:32:05','YYYY-MM-DD HH24:MI:SS'),100,1000013,'Updated')
;

INSERT INTO AD_View_Column (Help,ColumnName,AD_Client_ID,ColumnSQL,AD_Org_ID,IsActive,AD_View_Column_ID,EntityType,AD_View_ID,AD_Column_ID,Created,CreatedBy,Description,Updated,UpdatedBy,AD_View_Definition_ID,Name) VALUES ('The Created By field indicates the user who created this record.','L_CreatedBy',0,'l.CreatedBy',0,'Y',1000747,'ZECA',1000009,1007717,TO_TIMESTAMP('2019-12-22 18:32:05','YYYY-MM-DD HH24:MI:SS'),100,'User who created this records',TO_TIMESTAMP('2019-12-22 18:32:05','YYYY-MM-DD HH24:MI:SS'),100,1000013,'Created By')
;

INSERT INTO AD_View_Column (Help,ColumnName,AD_Client_ID,ColumnSQL,AD_Org_ID,IsActive,AD_View_Column_ID,EntityType,AD_View_ID,AD_Column_ID,Created,CreatedBy,Description,Updated,UpdatedBy,AD_View_Definition_ID,Name) VALUES ('The Updated By field indicates the user who updated this record.','L_UpdatedBy',0,'l.UpdatedBy',0,'Y',1000748,'ZECA',1000009,1007718,TO_TIMESTAMP('2019-12-22 18:32:05','YYYY-MM-DD HH24:MI:SS'),100,'User who updated this records',TO_TIMESTAMP('2019-12-22 18:32:05','YYYY-MM-DD HH24:MI:SS'),100,1000013,'Updated By')
;

INSERT INTO AD_View_Column (ColumnName,AD_Client_ID,ColumnSQL,AD_Org_ID,IsActive,AD_View_Column_ID,EntityType,AD_View_ID,AD_Column_ID,Created,CreatedBy,Updated,UpdatedBy,AD_View_Definition_ID,Name) VALUES ('L_rv_inout_createfrom_id',0,'l.rv_inout_createfrom_id',0,'Y',1000749,'ZECA',1000009,1007720,TO_TIMESTAMP('2019-12-22 18:32:05','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2019-12-22 18:32:05','YYYY-MM-DD HH24:MI:SS'),100,1000013,'rv_inout_createfrom_id')
;

INSERT INTO AD_View_Column (Help,ColumnName,AD_Client_ID,ColumnSQL,AD_Org_ID,IsActive,AD_View_Column_ID,EntityType,AD_View_ID,AD_Column_ID,Created,CreatedBy,Description,Updated,UpdatedBy,AD_View_Definition_ID,Name) VALUES ('Indicates the unique line for a document.  It will also control the display order of the lines within a document.','L_Line',0,'l.Line',0,'Y',1000750,'ZECA',1000009,1007721,TO_TIMESTAMP('2019-12-22 18:32:05','YYYY-MM-DD HH24:MI:SS'),100,'Unique line for this document',TO_TIMESTAMP('2019-12-22 18:32:05','YYYY-MM-DD HH24:MI:SS'),100,1000013,'Line No')
;

INSERT INTO AD_View_Column (Help,ColumnName,AD_Client_ID,ColumnSQL,AD_Org_ID,IsActive,AD_View_Column_ID,EntityType,AD_View_ID,AD_Column_ID,Created,CreatedBy,Description,Updated,UpdatedBy,AD_View_Definition_ID,Name) VALUES ('The Quantity Entered is converted to base product UoM quantity','L_QtyEntered',0,'l.QtyEntered',0,'Y',1000751,'ZECA',1000009,1007722,TO_TIMESTAMP('2019-12-22 18:32:05','YYYY-MM-DD HH24:MI:SS'),100,'The Quantity Entered is based on the selected UoM',TO_TIMESTAMP('2019-12-22 18:32:05','YYYY-MM-DD HH24:MI:SS'),100,1000013,'Quantity')
;

INSERT INTO AD_View_Column (Help,ColumnName,AD_Client_ID,ColumnSQL,AD_Org_ID,IsActive,AD_View_Column_ID,EntityType,AD_View_ID,AD_Column_ID,Created,CreatedBy,Description,Updated,UpdatedBy,AD_View_Definition_ID,Name) VALUES ('The UOM defines a unique non monetary Unit of Measure','L_C_UOM_ID',0,'l.C_UOM_ID',0,'Y',1000752,'ZECA',1000009,1007723,TO_TIMESTAMP('2019-12-22 18:32:05','YYYY-MM-DD HH24:MI:SS'),100,'Unit of Measure',TO_TIMESTAMP('2019-12-22 18:32:05','YYYY-MM-DD HH24:MI:SS'),100,1000013,'UOM')
;

INSERT INTO AD_View_Column (Help,ColumnName,AD_Client_ID,ColumnSQL,AD_Org_ID,IsActive,AD_View_Column_ID,EntityType,AD_View_ID,AD_Column_ID,Created,CreatedBy,Description,Updated,UpdatedBy,AD_View_Definition_ID,Name) VALUES ('The Movement Quantity indicates the quantity of a product that has been moved.','L_MovementQty',0,'l.MovementQty',0,'Y',1000753,'ZECA',1000009,1007724,TO_TIMESTAMP('2019-12-22 18:32:05','YYYY-MM-DD HH24:MI:SS'),100,'Quantity of a product moved.',TO_TIMESTAMP('2019-12-22 18:32:05','YYYY-MM-DD HH24:MI:SS'),100,1000013,'Movement Quantity')
;

INSERT INTO AD_View_Column (Help,ColumnName,AD_Client_ID,ColumnSQL,AD_Org_ID,IsActive,AD_View_Column_ID,EntityType,AD_View_ID,AD_Column_ID,Created,CreatedBy,Description,Updated,UpdatedBy,AD_View_Definition_ID,Name) VALUES ('The Locator indicates where in a Warehouse a product is located.','L_M_Locator_ID',0,'l.M_Locator_ID',0,'Y',1000754,'ZECA',1000009,1007726,TO_TIMESTAMP('2019-12-22 18:32:05','YYYY-MM-DD HH24:MI:SS'),100,'Warehouse Locator',TO_TIMESTAMP('2019-12-22 18:32:05','YYYY-MM-DD HH24:MI:SS'),100,1000013,'Locator')
;

INSERT INTO AD_View_Column (Help,ColumnName,AD_Client_ID,ColumnSQL,AD_Org_ID,IsActive,AD_View_Column_ID,EntityType,AD_View_ID,AD_Column_ID,Created,CreatedBy,Description,Updated,UpdatedBy,AD_View_Definition_ID,Name) VALUES ('The name of an entity (record) is used as an default search option in addition to the search key. The name is up to 60 characters in length.','L_Name',0,'l.Name',0,'Y',1000755,'ZECA',1000009,1007727,TO_TIMESTAMP('2019-12-22 18:32:05','YYYY-MM-DD HH24:MI:SS'),100,'Alphanumeric identifier of the entity',TO_TIMESTAMP('2019-12-22 18:32:05','YYYY-MM-DD HH24:MI:SS'),100,1000013,'Name')
;

INSERT INTO AD_View_Column (Help,ColumnName,AD_Client_ID,ColumnSQL,AD_Org_ID,IsActive,AD_View_Column_ID,EntityType,AD_View_ID,AD_Column_ID,Created,CreatedBy,Description,Updated,UpdatedBy,AD_View_Definition_ID,Name) VALUES ('Identifies an item which is either purchased or sold in this organization.','L_M_Product_ID',0,'l.M_Product_ID',0,'Y',1000756,'ZECA',1000009,1007728,TO_TIMESTAMP('2019-12-22 18:32:05','YYYY-MM-DD HH24:MI:SS'),100,'Product, Service, Item',TO_TIMESTAMP('2019-12-22 18:32:05','YYYY-MM-DD HH24:MI:SS'),100,1000013,'Product')
;

INSERT INTO AD_View_Column (Help,ColumnName,AD_Client_ID,ColumnSQL,AD_Org_ID,IsActive,AD_View_Column_ID,EntityType,AD_View_ID,AD_Column_ID,Created,CreatedBy,Description,Updated,UpdatedBy,AD_View_Definition_ID,Name) VALUES ('The Charge indicates a type of Charge (Handling, Shipping, Restocking)','L_C_Charge_ID',0,'l.C_Charge_ID',0,'Y',1000757,'ZECA',1000009,1007730,TO_TIMESTAMP('2019-12-22 18:32:05','YYYY-MM-DD HH24:MI:SS'),100,'Additional document charges',TO_TIMESTAMP('2019-12-22 18:32:05','YYYY-MM-DD HH24:MI:SS'),100,1000013,'Charge')
;

INSERT INTO AD_View_Column (Help,ColumnName,AD_Client_ID,ColumnSQL,AD_Org_ID,IsActive,AD_View_Column_ID,EntityType,AD_View_ID,AD_Column_ID,Created,CreatedBy,Description,Updated,UpdatedBy,AD_View_Definition_ID,Name) VALUES ('A description is limited to 255 characters.','L_Description',0,'l.Description',0,'Y',1000758,'ZECA',1000009,1007731,TO_TIMESTAMP('2019-12-22 18:32:05','YYYY-MM-DD HH24:MI:SS'),100,'Optional short description of the record',TO_TIMESTAMP('2019-12-22 18:32:05','YYYY-MM-DD HH24:MI:SS'),100,1000013,'Description')
;

INSERT INTO AD_View_Column (Help,ColumnName,AD_Client_ID,ColumnSQL,AD_Org_ID,IsActive,AD_View_Column_ID,EntityType,AD_View_ID,AD_Column_ID,Created,CreatedBy,Description,Updated,UpdatedBy,AD_View_Definition_ID,Name) VALUES ('The Business Partner Product Key identifies the number used by the Business Partner for this product. It can be printed on orders and invoices when you include the Product Key in the print format.','L_VendorProductNo',0,'l.VendorProductNo',0,'Y',1000759,'ZECA',1000009,1007732,TO_TIMESTAMP('2019-12-22 18:32:05','YYYY-MM-DD HH24:MI:SS'),100,'Product Key of the Business Partner',TO_TIMESTAMP('2019-12-22 18:32:05','YYYY-MM-DD HH24:MI:SS'),100,1000013,'Partner Product Key')
;

INSERT INTO AD_View_Column (Help,ColumnName,AD_Client_ID,ColumnSQL,AD_Org_ID,IsActive,AD_View_Column_ID,EntityType,AD_View_ID,AD_Column_ID,Created,CreatedBy,Description,Updated,UpdatedBy,AD_View_Definition_ID,Name) VALUES ('The Order is a control document.  The  Order is complete when the quantity ordered is the same as the quantity shipped and invoiced.  When you close an order, unshipped (backordered) quantities are cancelled.','L_C_Order_ID',0,'l.C_Order_ID',0,'Y',1000760,'ZECA',1000009,1007733,TO_TIMESTAMP('2019-12-22 18:32:05','YYYY-MM-DD HH24:MI:SS'),100,'Order',TO_TIMESTAMP('2019-12-22 18:32:05','YYYY-MM-DD HH24:MI:SS'),100,1000013,'Order')
;

INSERT INTO AD_View_Column (Help,ColumnName,AD_Client_ID,ColumnSQL,AD_Org_ID,IsActive,AD_View_Column_ID,EntityType,AD_View_ID,AD_Column_ID,Created,CreatedBy,Description,Updated,UpdatedBy,AD_View_Definition_ID,Name) VALUES ('The Invoice Document.','L_C_Invoice_ID',0,'l.C_Invoice_ID',0,'Y',1000761,'ZECA',1000009,1007734,TO_TIMESTAMP('2019-12-22 18:32:05','YYYY-MM-DD HH24:MI:SS'),100,'Invoice Identifier',TO_TIMESTAMP('2019-12-22 18:32:05','YYYY-MM-DD HH24:MI:SS'),100,1000013,'Invoice')
;

INSERT INTO AD_View_Column (Help,ColumnName,AD_Client_ID,ColumnSQL,AD_Org_ID,IsActive,AD_View_Column_ID,EntityType,AD_View_ID,AD_Column_ID,Created,CreatedBy,Description,Updated,UpdatedBy,AD_View_Definition_ID,Name) VALUES ('A Return Material Authorization may be required to accept returns and to create Credit Memos','L_M_RMA_ID',0,'l.M_RMA_ID',0,'Y',1000762,'ZECA',1000009,1007735,TO_TIMESTAMP('2019-12-22 18:32:05','YYYY-MM-DD HH24:MI:SS'),100,'Return Material Authorization',TO_TIMESTAMP('2019-12-22 18:32:05','YYYY-MM-DD HH24:MI:SS'),100,1000013,'RMA')
;

INSERT INTO AD_View_Column (Help,ColumnName,AD_Client_ID,ColumnSQL,AD_Org_ID,IsActive,AD_View_Column_ID,EntityType,AD_View_ID,AD_Column_ID,Created,CreatedBy,Description,Updated,UpdatedBy,AD_View_Definition_ID,Name) VALUES ('The Document Date indicates the date the document was generated.  It may or may not be the same as the accounting date.','L_DateDoc',0,'l.DateDoc',0,'Y',1000763,'ZECA',1000009,1007736,TO_TIMESTAMP('2019-12-22 18:32:06','YYYY-MM-DD HH24:MI:SS'),100,'Date of the Document',TO_TIMESTAMP('2019-12-22 18:32:06','YYYY-MM-DD HH24:MI:SS'),100,1000013,'Document Date')
;

INSERT INTO AD_View_Column (Help,ColumnName,AD_Client_ID,ColumnSQL,AD_Org_ID,IsActive,AD_View_Column_ID,EntityType,AD_View_ID,AD_Column_ID,Created,CreatedBy,Description,Updated,UpdatedBy,AD_View_Definition_ID,Name) VALUES ('A Business Partner is anyone with whom you transact.  This can include Vendor, Customer, Employee or Salesperson','L_C_BPartner_ID',0,'l.C_BPartner_ID',0,'Y',1000764,'ZECA',1000009,1007737,TO_TIMESTAMP('2019-12-22 18:32:06','YYYY-MM-DD HH24:MI:SS'),100,'Identifies a Business Partner',TO_TIMESTAMP('2019-12-22 18:32:06','YYYY-MM-DD HH24:MI:SS'),100,1000013,'Business Partner ')
;

INSERT INTO AD_View_Column (Help,ColumnName,AD_Client_ID,ColumnSQL,AD_Org_ID,IsActive,AD_View_Column_ID,EntityType,AD_View_ID,AD_Column_ID,Created,CreatedBy,Description,Updated,UpdatedBy,AD_View_Definition_ID,Name) VALUES ('The Document Status indicates the status of a document at this time.  If you want to change the document status, use the Document Action field','L_DocStatus',0,'l.DocStatus',0,'Y',1000765,'ZECA',1000009,1007738,TO_TIMESTAMP('2019-12-22 18:32:06','YYYY-MM-DD HH24:MI:SS'),100,'The current status of the document',TO_TIMESTAMP('2019-12-22 18:32:06','YYYY-MM-DD HH24:MI:SS'),100,1000013,'Document Status')
;

INSERT INTO AD_View_Column (ColumnName,AD_Client_ID,ColumnSQL,AD_Org_ID,IsActive,AD_View_Column_ID,EntityType,AD_View_ID,AD_Column_ID,Created,CreatedBy,Updated,UpdatedBy,AD_View_Definition_ID,Name) VALUES ('L_createfromtype',0,'l.createfromtype',0,'Y',1000766,'ZECA',1000009,1007739,TO_TIMESTAMP('2019-12-22 18:32:06','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2019-12-22 18:32:06','YYYY-MM-DD HH24:MI:SS'),100,1000013,'createfromtype')
;

INSERT INTO AD_View_Column (Help,ColumnName,AD_Client_ID,ColumnSQL,AD_Org_ID,IsActive,AD_View_Column_ID,EntityType,AD_View_ID,AD_Column_ID,Created,CreatedBy,Description,Updated,UpdatedBy,AD_View_Definition_ID,Name) VALUES ('Activities indicate tasks that are performed and used to utilize Activity based Costing','L_C_Activity_ID',0,'l.C_Activity_ID',0,'Y',1000767,'ZECA',1000009,1007740,TO_TIMESTAMP('2019-12-22 18:32:06','YYYY-MM-DD HH24:MI:SS'),100,'Business Activity',TO_TIMESTAMP('2019-12-22 18:32:06','YYYY-MM-DD HH24:MI:SS'),100,1000013,'Activity')
;

INSERT INTO AD_View_Column (Help,ColumnName,AD_Client_ID,ColumnSQL,AD_Org_ID,IsActive,AD_View_Column_ID,EntityType,AD_View_ID,AD_Column_ID,Created,CreatedBy,Description,Updated,UpdatedBy,AD_View_Definition_ID,Name) VALUES ('A Project allows you to track and control internal or external activities.','L_C_Project_ID',0,'l.C_Project_ID',0,'Y',1000768,'ZECA',1000009,1007741,TO_TIMESTAMP('2019-12-22 18:32:06','YYYY-MM-DD HH24:MI:SS'),100,'Financial Project',TO_TIMESTAMP('2019-12-22 18:32:06','YYYY-MM-DD HH24:MI:SS'),100,1000013,'Project')
;

INSERT INTO AD_View_Column (Help,ColumnName,AD_Client_ID,ColumnSQL,AD_Org_ID,IsActive,AD_View_Column_ID,EntityType,AD_View_ID,AD_Column_ID,Created,CreatedBy,Description,Updated,UpdatedBy,AD_View_Definition_ID,Name) VALUES ('The Campaign defines a unique marketing program.  Projects can be associated with a pre defined Marketing Campaign.  You can then report based on a specific Campaign.','L_C_Campaign_ID',0,'l.C_Campaign_ID',0,'Y',1000769,'ZECA',1000009,1007742,TO_TIMESTAMP('2019-12-22 18:32:06','YYYY-MM-DD HH24:MI:SS'),100,'Marketing Campaign',TO_TIMESTAMP('2019-12-22 18:32:06','YYYY-MM-DD HH24:MI:SS'),100,1000013,'Campaign')
;

INSERT INTO AD_View_Column (Help,ColumnName,AD_Client_ID,ColumnSQL,AD_Org_ID,IsActive,AD_View_Column_ID,EntityType,AD_View_ID,AD_Column_ID,Created,CreatedBy,Description,Updated,UpdatedBy,AD_View_Definition_ID,Name) VALUES ('The user defined element displays the optional elements that have been defined for this account combination.','L_User1_ID',0,'l.User1_ID',0,'Y',1000770,'ZECA',1000009,1007743,TO_TIMESTAMP('2019-12-22 18:32:06','YYYY-MM-DD HH24:MI:SS'),100,'User defined list element #1',TO_TIMESTAMP('2019-12-22 18:32:06','YYYY-MM-DD HH24:MI:SS'),100,1000013,'User List 1')
;

INSERT INTO AD_View_Column (Help,ColumnName,AD_Client_ID,ColumnSQL,AD_Org_ID,IsActive,AD_View_Column_ID,EntityType,AD_View_ID,AD_Column_ID,Created,CreatedBy,Description,Updated,UpdatedBy,AD_View_Definition_ID,Name) VALUES ('The user defined element displays the optional elements that have been defined for this account combination.','L_User2_ID',0,'l.User2_ID',0,'Y',1000771,'ZECA',1000009,1007744,TO_TIMESTAMP('2019-12-22 18:32:06','YYYY-MM-DD HH24:MI:SS'),100,'User defined list element #2',TO_TIMESTAMP('2019-12-22 18:32:06','YYYY-MM-DD HH24:MI:SS'),100,1000013,'User List 2')
;

INSERT INTO AD_View_Column (ColumnName,AD_Client_ID,ColumnSQL,AD_Org_ID,IsActive,AD_View_Column_ID,EntityType,AD_View_ID,AD_Column_ID,Created,CreatedBy,Updated,UpdatedBy,AD_View_Definition_ID,Name) VALUES ('L_DD_Freight_ID',0,'l.DD_Freight_ID',0,'Y',1000772,'ZECA',1000009,1007745,TO_TIMESTAMP('2019-12-22 18:32:06','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2019-12-22 18:32:06','YYYY-MM-DD HH24:MI:SS'),100,1000013,'Order Freight ID')
;

INSERT INTO AD_View_Column (Help,ColumnName,AD_Client_ID,ColumnSQL,AD_Org_ID,IsActive,AD_View_Column_ID,EntityType,AD_View_ID,AD_Column_ID,Created,CreatedBy,Description,Updated,UpdatedBy,AD_View_Definition_ID,Name) VALUES ('The Sales Order Line is a unique identifier for a line in an order.','L_C_OrderLine_ID',0,'l.C_OrderLine_ID',0,'Y',1000773,'ZECA',1000009,1007746,TO_TIMESTAMP('2019-12-22 18:32:06','YYYY-MM-DD HH24:MI:SS'),100,'Sales Order Line',TO_TIMESTAMP('2019-12-22 18:32:06','YYYY-MM-DD HH24:MI:SS'),100,1000013,'Sales Order Line')
;

INSERT INTO AD_View_Column (Help,ColumnName,AD_Client_ID,ColumnSQL,AD_Org_ID,IsActive,AD_View_Column_ID,EntityType,AD_View_ID,AD_Column_ID,Created,CreatedBy,Description,Updated,UpdatedBy,AD_View_Definition_ID,Name) VALUES ('There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.','L_IsActive',0,'l.IsActive',0,'Y',1000774,'ZECA',1000009,1007714,TO_TIMESTAMP('2019-12-22 18:32:06','YYYY-MM-DD HH24:MI:SS'),100,'The record is active in the system',TO_TIMESTAMP('2019-12-22 18:32:06','YYYY-MM-DD HH24:MI:SS'),100,1000013,'Active')
;

INSERT INTO AD_View_Column (ColumnName,AD_Client_ID,ColumnSQL,AD_Org_ID,IsActive,AD_View_Column_ID,EntityType,AD_View_ID,AD_Column_ID,Created,CreatedBy,Description,Updated,UpdatedBy,AD_View_Definition_ID,Name) VALUES ('L_Multiplier',0,'l.Multiplier',0,'Y',1000775,'ZECA',1000009,1007725,TO_TIMESTAMP('2019-12-22 18:32:06','YYYY-MM-DD HH24:MI:SS'),100,'Type Multiplier (Credit = -1)',TO_TIMESTAMP('2019-12-22 18:32:06','YYYY-MM-DD HH24:MI:SS'),100,1000013,'Multiplier')
;

INSERT INTO AD_View_Column (Help,ColumnName,AD_Client_ID,ColumnSQL,AD_Org_ID,IsActive,AD_View_Column_ID,EntityType,AD_View_ID,AD_Column_ID,Created,CreatedBy,Description,Updated,UpdatedBy,AD_View_Definition_ID,Name) VALUES ('The values of the actual Product Attribute Instances.  The product level attributes are defined on Product level.','L_M_AttributeSetInstance_ID',0,'l.M_AttributeSetInstance_ID',0,'Y',1000776,'ZECA',1000009,1007729,TO_TIMESTAMP('2019-12-22 18:32:06','YYYY-MM-DD HH24:MI:SS'),100,'Product Attribute Set Instance',TO_TIMESTAMP('2019-12-22 18:32:06','YYYY-MM-DD HH24:MI:SS'),100,1000013,'Attribute Set Instance')
;

UPDATE AD_Browse SET WhereClause='o.DocStatus IN (''CL'',''CO'') AND o.IsSoTrx = ''N'' 
AND l.C_OrderLine_ID NOT IN (
SELECT fl2.C_Orderline_ID 
FROM dd_freightline fl2 
INNER JOIN DD_Freight l ON fl2.dd_Freight_ID=l.DD_Freight_ID
WHERE l.docstatus  NOT IN (''VO'',''RE''))',Updated=TO_TIMESTAMP('2019-12-22 18:34:07','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_ID=1000012
;

INSERT INTO AD_Browse_Field (IsMandatory,AD_Client_ID,AD_Org_ID,IsActive,AD_Element_ID,AD_Reference_ID,EntityType,Help,IsDisplayed,IsIdentifier,IsKey,IsQueryCriteria,IsRange,SeqNo,AD_Browse_ID,AD_Browse_Field_ID,Created,CreatedBy,Description,Updated,UpdatedBy,Name,AD_View_Column_ID,IsReadOnly,IsCentrallyMaintained,IsOrderBy,SortNo,FieldLength) VALUES ('N',0,0,'Y',561,19,'ZECA','The Sales Order Line is a unique identifier for a line in an order.','Y','N','Y','N','N',10,1000012,1000483,TO_TIMESTAMP('2019-12-22 18:39:40','YYYY-MM-DD HH24:MI:SS'),100,'Sales Order Line',TO_TIMESTAMP('2019-12-22 18:39:40','YYYY-MM-DD HH24:MI:SS'),100,'Sales Order Line',1000773,'Y','Y','N',0,0)
;

INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Help,Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Help,t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=1000483 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

INSERT INTO AD_Browse_Field (IsMandatory,AD_Client_ID,AD_Org_ID,IsActive,AD_Element_ID,AD_Reference_ID,EntityType,Help,IsDisplayed,IsIdentifier,IsKey,IsQueryCriteria,IsRange,SeqNo,AD_Browse_ID,AD_Reference_Value_ID,AD_Browse_Field_ID,Created,CreatedBy,Description,Updated,UpdatedBy,Name,AD_View_Column_ID,IsReadOnly,IsCentrallyMaintained,IsOrderBy,SortNo,FieldLength) VALUES ('Y',0,0,'Y',187,30,'ZECA','A Business Partner is anyone with whom you transact.  This can include Vendor, Customer, Employee or Salesperson','Y','N','N','Y','N',20,1000012,192,1000484,TO_TIMESTAMP('2019-12-22 18:42:43','YYYY-MM-DD HH24:MI:SS'),100,'Identifies a Business Partner',TO_TIMESTAMP('2019-12-22 18:42:43','YYYY-MM-DD HH24:MI:SS'),100,'Business Partner ',1001014,'Y','Y','N',0,0)
;

INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Help,Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Help,t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=1000484 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

INSERT INTO AD_Browse_Field (IsMandatory,AD_Client_ID,AD_Org_ID,IsActive,AD_Element_ID,AD_Reference_ID,EntityType,Help,IsDisplayed,IsIdentifier,IsKey,IsQueryCriteria,IsRange,SeqNo,AD_Browse_ID,AD_Browse_Field_ID,Created,CreatedBy,Description,Updated,UpdatedBy,Name,AD_View_Column_ID,IsReadOnly,IsCentrallyMaintained,IsOrderBy,SortNo,FieldLength) VALUES ('Y',0,0,'Y',558,19,'ZECA','The Order is a control document.  The  Order is complete when the quantity ordered is the same as the quantity shipped and invoiced.  When you close an order, unshipped (backordered) quantities are cancelled.org.compiere.model.CalloutOrder.nuovoOrdine','Y','N','N','Y','N',30,1000012,1000485,TO_TIMESTAMP('2019-12-22 18:54:27','YYYY-MM-DD HH24:MI:SS'),100,'Order',TO_TIMESTAMP('2019-12-22 18:54:27','YYYY-MM-DD HH24:MI:SS'),100,'Order',1001023,'Y','Y','N',0,0)
;

INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Help,Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Help,t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=1000485 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

INSERT INTO AD_Browse_Field (IsMandatory,AD_Client_ID,AD_Org_ID,IsActive,AD_Element_ID,AD_Reference_ID,EntityType,Help,IsDisplayed,IsIdentifier,IsKey,IsQueryCriteria,IsRange,SeqNo,AD_Browse_ID,AD_Browse_Field_ID,Created,CreatedBy,Description,Updated,UpdatedBy,Name,AD_View_Column_ID,IsReadOnly,IsCentrallyMaintained,IsOrderBy,SortNo,FieldLength) VALUES ('N',0,0,'Y',454,19,'ZECA','Identifies an item which is either purchased or sold in this organization.','Y','N','N','N','N',40,1000012,1000486,TO_TIMESTAMP('2019-12-22 18:56:12','YYYY-MM-DD HH24:MI:SS'),100,'Product, Service, Item',TO_TIMESTAMP('2019-12-22 18:56:12','YYYY-MM-DD HH24:MI:SS'),100,'Product',1000756,'Y','Y','N',0,0)
;

INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Help,Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Help,t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=1000486 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

INSERT INTO AD_Browse_Field (IsMandatory,AD_Client_ID,AD_Org_ID,IsActive,AD_Element_ID,AD_Reference_ID,EntityType,Help,IsDisplayed,IsIdentifier,IsKey,IsQueryCriteria,IsRange,SeqNo,AD_Browse_ID,AD_Browse_Field_ID,Created,CreatedBy,Description,Updated,UpdatedBy,Name,AD_View_Column_ID,IsReadOnly,IsCentrallyMaintained,IsOrderBy,SortNo,FieldLength) VALUES ('N',0,0,'Y',1038,29,'ZECA','The Movement Quantity indicates the quantity of a product that has been moved.','Y','N','N','N','N',50,1000012,1000487,TO_TIMESTAMP('2019-12-22 18:57:45','YYYY-MM-DD HH24:MI:SS'),100,'Quantity of a product moved.',TO_TIMESTAMP('2019-12-22 18:57:45','YYYY-MM-DD HH24:MI:SS'),100,'Movement Quantity',1000753,'N','Y','N',0,0)
;

INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Help,Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Help,t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=1000487 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

INSERT INTO AD_Browse_Field (IsMandatory,AD_Client_ID,AD_Org_ID,IsActive,AD_Element_ID,AD_Reference_ID,EntityType,Help,IsDisplayed,IsIdentifier,IsKey,IsQueryCriteria,IsRange,SeqNo,AD_Browse_ID,AD_Browse_Field_ID,Created,CreatedBy,Description,Updated,UpdatedBy,Name,AD_View_Column_ID,IsReadOnly,IsCentrallyMaintained,IsOrderBy,SortNo,FieldLength) VALUES ('N',0,0,'Y',2589,29,'ZECA','The Quantity Entered is converted to base product UoM quantity','Y','N','N','N','N',60,1000012,1000488,TO_TIMESTAMP('2019-12-22 18:59:53','YYYY-MM-DD HH24:MI:SS'),100,'The Quantity Entered is based on the selected UoM',TO_TIMESTAMP('2019-12-22 18:59:53','YYYY-MM-DD HH24:MI:SS'),100,'Quantity',1000751,'Y','Y','N',0,0)
;

INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Help,Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Help,t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=1000488 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;


-- Validation Rule "C_Order PurchaseOrder Completed and of BPartner" for SB Field Order
INSERT INTO AD_Val_Rule (AD_Org_ID,Type,Code,AD_Client_ID,Name,IsActive,AD_Val_Rule_ID,EntityType,Created,CreatedBy,Updated,UpdatedBy) VALUES (0,'S','C_Order.DocStatus in (''CL'',''CO'') AND C_Order.IsSoTrx = ''N'' AND C_Order.C_BPartner_ID=@o.C_BPartner_ID@ ',0,'C_Order PurchaseOrder Completed and of BPartner','Y',1000038,'U',TO_TIMESTAMP('2019-11-25 12:18:58','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2019-11-25 12:18:58','YYYY-MM-DD HH24:MI:SS'),100)
;

UPDATE AD_Browse_Field SET AD_Val_Rule_ID=1000038,Updated=TO_TIMESTAMP('2019-12-22 19:28:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=1000485
;


