MIGRATION VON ZECA-PRODUKTIONS-DB VON ADEMPIERE 375 AUS

**************************************************************************************************************
Ausgangspunkt: Datenbank ../01-DBs/01-Ausgangs-DB/20191220_Ursprungs-DB_ExpDat_Zeca.zip
**************************************************************************************************************

01) Installieren Adempiere 3.0, DB Restaurieren
    u.U. neueste postgresql.lib zum Installieren nehmen.

02) Datei 00_SQLs.sql ausführen
    Da werden die Spalten isAlert, dsplaysql,isdisplayidentifier auf Tabelle AD_Element angelegt, inkl AD_Element_IDs, etc.
    Auch AD_User: add Spalte "salt" f. AD_User.

03) SQL-Scripts mit PGAdmin aus Verzeichnis "01_SQL-Scripts-for_Smart_Browser_definition" ausführen.

4) Folgende XMLs und SQLs ausführen. Die Sequenz von  XMLs und SQLs muss gewahrt werden!
    Die XMLs müssen mit Adempiere version 3.8 ausgeführt werden. Die 375-Version hat KEINE XML-Funktionalität.
    Manche XML-Steps weisen Fehler auf; es handelt sich nicht um wichtige Fehler.

    02_ContainerManagement.xml
    03_UpdateSmartBrowserField.xml
    04_UpdateSmartBrowserFields.xml
    
    05_RV_OrderLine_ToDeliver.sql
    
    06_SmartBrowser_1.xml
    
    07_RV_InoutCreateFromFreight.sql
    
    08_SmartBrowser_2.xml
    09_SmartBrowser_3.xml
    
    10_GeneralConfig.sql
    11_InsertMissingTranslations.sql
    
    12-0004_360_memo_alert_and_lookup.xml
    
    13-813_PasswordHash-wg_SALT.sql

**************************************************************************************
BACKUP
**************************************************************************************

6) Folgende SQLs ausführen:
    14_weitere_Anpassungen_Smart_Browsers.sql
    15_Smart_Browser_Fields_1.sql

    Aufgabe: Smart Browser "Freight_CreateFreightLineFromOrderLine" anpassen
    Grund: Die View ist falsch und der SQL-Where wie Susanne sie ursprünglich angelegt.

    Mit den SQLs wird folgendes vorgenommen: 
        alle BrowserFields löschen (IDs ersetzen durch aktuelle!!):
        delete from ad_browse_field_trl where ad_browse_field_ID in (select ad_browse_field_ID from ad_browse_field where AD_Browse_ID=1000012);
        delete from ad_browse_field where AD_Browse_ID=1000012;
        
        alle View Spalten der View RV_OrderLineToDeliver löschen:
        delete from ad_view_column_trl where ad_view_column_ID in (select ad_view_column_ID from ad_view_column where AD_View_Definition_ID=1000013);
        delete from ad_view_column where AD_View_Definition_ID=1000013;
        
        Erste Zeile ersetzen mit View: "RV_Inout_CreateFrom_Freight", alias="l"
        Create View Lines.
        
        Join-Clause der zweiten Zeile korrigieren (die Bedingung ol.C_Order_ID ist falsch!!):
        INNER JOIN C_Order o on (l.C_Order_ID=o.c_Order_ID)
        
        SQL-Where ersetzen (ich musste mogeln im SQL "INNER JOIN DD_Freight l " weil sonst Fehler):
        o.DocStatus IN ('CL','CO') AND o.IsSoTrx = 'N' 
        AND l.C_OrderLine_ID NOT IN (
        SELECT fl2.C_Orderline_ID 
        FROM dd_freightline fl2 
        INNER JOIN DD_Freight l ON fl2.dd_Freight_ID=l.DD_Freight_ID
        WHERE l.docstatus  NOT IN ('VO','RE'))

        SB- Fields so anlegen wie bei AdempiereZeca 393

**************************************************************************************
BACKUP
**************************************************************************************
7) Folgende SQLs ausführen:
    16_weitere_Anpassungen_Smart_Browsers.sql
    17_Smart_Browser_Fields_2.sql
    
    Aufgabe: Gleiches wie im Schritt 6) mit Smart Browser "SB_InOutCreateFrom_Freight"
    Grund: Die View ist falsch und der SQL-Where.

    Mit den SQLs wird folgendes vorgenommen: 
        alle BrowserFields löschen (IDs ersetzen durch aktuelle!!):
        delete from ad_browse_field_trl where ad_browse_field_ID in (select ad_browse_field_ID from ad_browse_field where AD_Browse_ID=1000013);
        delete from ad_browse_field where AD_Browse_ID=1000013;
        
        alle View Spalten der View RV_OrderLineToDeliver löschen:
        delete from ad_view_column_trl where ad_view_column_ID in (select ad_view_column_ID from ad_view_column where AD_View_Definition_ID=1000015);
        delete from ad_view_column where AD_View_Definition_ID=1000015;
        
        Alias ersetzen in View Definition: alias="cf" statt "fl"
        
        Alle Spalten der View "SB_InOutCreateFrom" ersetzen wie in View InOutCreateFrom von DB "AdempiereZeca393".
        Create View Lines.
        
        SQL-Where ersetzen:

        cf.DocStatus IN ('CL','CO') 
        AND fl.DD_FreightLine_ID NOT IN (SELECT fl2.DD_FreightLine_ID FROM dd_FreightLine fl2 
        INNER JOIN DD_Freight f2 ON f2.dd_Freight_ID=fl2.DD_Freight_ID
        INNER JOIN M_InOutLine iol ON fl2.dd_FreightLine_ID=iol.DD_FreightLine_ID
        INNER JOIN M_InOut io ON iol.m_Inout_ID=io.m_inout_id
        WHERE f2.docstatus IN ('CL','CO') 
        AND io.docstatus NOT IN ('VO', 'RE')
        AND iol.dd_FreightLine_ID=fl2.dd_FreightLine_ID)

        SB Fields so anlegen wie bei AdempiereZeca 393
   
**************************************************************************************
BACKUP
**************************************************************************************     
        
8) Folgende SQL ausführen:
    18_C_Order_in_Freightline.sql

    Aufgabe: Weitere Anpassungen
        
    Mit dem SQL wird folgendes vorgenommen: 
        Das sollte die Dynamic Validation = C_OrderLine in Freight Order bei Spalte C_OrderLine_ID der Tabelle DD_FreightLine setzen. Und auch im Smart Browser "SB_InOutCreateFrom_Freight" das Feld "Order" korrigieren.
            
9) Folgende SQL ausführen:
    19_MovementQty_in_Freightline.sql

    Mit dem SQL wird folgendes vorgenommen: 
        Spalte "Movement Quantity in Tabelle DD_Freighline hinzufügen (gleiche Werte wie AdempiereZeca393):
   
**************************************************************************************
BACKUP
**************************************************************************************     
10) weitere Anpassungen       
        
        Datei ausführen: 20_Create_Document_Subtype_Freight_Order.sql
            (auch hier: Dynamic Validation anlegen: C_DocType Freight Order und an Spalte C_DocType_ID der Tabelle DD_Freight zuweisen.)
        
        Datei ausführen: 21_IsSOTrx_to_Window_Freight_Order.sql

        Datei ausführen: 22_Reference_OrderLine_to_FreightLine.sql
        
        Datei ausführen: 23_Freight_Order_Line_Description_in_SOLine.sql
        
        Datei ausführen: 24_Reference_M_InOutline_to DD_Freightline.sql
   
**************************************************************************************
BACKUP
**************************************************************************************   
        
 11) Misc 
        PACKIN ausführen: 25_DD_FreightWorkFlowProcess.zip
        Freight Workflow + Prozess.
            Die XMLs müssen mit Adempiere version 3.8 ausgeführt werden. 
            
        Datei ausführen: 26_Set_WFProcess_for_FreightOrder.sql
            Verifizierung: Prozess "DD_Freight_Process" muss an Spalte "DocAction" von Tabelle "DD_Freight" angehängt werden!
            
        Datei ausführen: 27_CalloutRule_for_POLine_in_Freightline.sql
            VORSICHT!!!!  AD_Column_ID=XXXXXXX so setzen wie die tatsächliche AD_Column_ID die die Spalte C_OrderLine_ID  der Tabelle DD_FreightLine hat!!
            Auch im SQL: Tabelle DD_FreightLine, Spalte M_Prouduct_ID : Search + Dynamic Validation = M_Product (Trx)
            
        Datei ausführen: 28_Constraints_on_FreightLine.sql
            C_UOM_ID musste ich auskommentieren
   
**************************************************************************************
BACKUP
**************************************************************************************         
        

12)  Datei ausführen: 29_FreightOrder_Fields.sql 
        Window Freight Order-Felder beider Tabs anpassen
        Auch Fehler in PO-Fenster: mfg_Linea_Prodotti_ID korrigieren.
        Nur ausführen, wenn Felder 100% übereinstimmen; sonst manuell vorgehen.
    
    Optional (kein SQL dafür)
        In Table C_Order, Spalte R_MailText_ID, oder enfternen der Mandatory Logic=@IsSOTrx@=N, weil sie stört.
    
13) Datei ausführen:
    30_InfoFactoryClass_in_BrowserField.sql 
        Info Factory Class in Smart Browser/Browser field namuell anlegen:
        Spalte "Info Factory Class" in Tabelle AD_Browse_Field hinzufügen (gleiche Werte wie AdempiereZeca393)
    
**************************************************************************************
BACKUP
************************************************************************************** 

14) Datei ausführen:
    31_Misc.sql


Prozess im Smart Browser "SBP_InOutCreateFrom"
    Parameter "BPartner" deaktivieren (nicht nötig)
    
Smart Browser "SB_InOutCreateFrom_Freight"
    Data Access Level = "Client + Organization" setzen
    
Parameter-Validation:
    SB "SB_InOutCreateFrom_Freight", prozess "SBP_InOutCreateFrom", parameter "Locator": Dynamic Validation setzen="M_Locator of Warehouse"
    
NPE-Vermeidung beim ZK-Aufruf der Smart Browsers "Create from Freight"
    Beim Versuch, den Titel des Smart Browser-Titels gibt es eine NPE bei ZK,weil u.a. das Feld des den SM aufrufenden Buttons im Fenster "Material Receipt" keine "Desription" hat.
    Also, muss man sie nachholen:
    UPDATE AD_FIELD SET description = 'Smart Browser' WHERE AD_Field_ID=1019393;
    (nicht vergessen: sicher stellen, dass ID stimmt!!)
        
        
(FOLGENDES WURDE MIT DEN LETZTEN SCHRITTEN BEREITS ERLEDIGT. ES BLEIBT HIER ZUR DOKUENTATION)        
    Mandatory-Felder setzen in beiden Smart Browsers (auf IDs aufpassen!!):
    Business Partner and Purchase Orders are mandatory in SB from freight:
        UPDATE AD_Browse_Field SET IsMandatory='Y' WHERE AD_Browse_Field_ID=1000700;
        UPDATE AD_Browse_Field SET IsMandatory='Y' WHERE AD_Browse_Field_ID=1000691;
    
    Freight Order is mandatory in SB from Material Receipt:
        UPDATE AD_Browse_Field SET IsMandatory='Y' WHERE AD_Browse_Field_ID=1000756;


Feld "Location"=Mandatory + Default Value setzen in Prozess-Parameter des SB "Create from Freight"  (auf IDs aufpassen!!):
    update ad_process_para set  defaultvalue='NULL', ismandatory='Y' where AD_Process_Para_ID=1001683;
    
    
Spalte "Description" von Freight Order hat Länge=1
    man muss sie =255 setzen in AD + DB
    ALTER TABLE DD_Freight MODIFY Description NVARCHAR2(255) DEFAULT NULL;


15) Datei ausführen:
    32_Create_DocumentType_FreightOrder.sql
    
**************************************************************************************************************
16)  Role Access Update ausführen


Vor auslieferung: 33_Restore_ModelValidators_and_Rules.sql
