-- View: adempiere.SB_InOutCreateFromrv_inout_createfrom_freight

-- DROP VIEW adempiere.rv_inout_createfrom_freight;

CREATE OR REPLACE VIEW adempiere.rv_inout_createfrom_freight
 AS
 SELECT l.ad_client_id,
    l.ad_org_id,
    l.createdby,
    l.created,
    l.updatedby,
    l.updated,
    l.isactive,
    l.c_orderline_id AS rv_inout_createfrom_id,
    l.line,
        CASE
            WHEN l.qtyordered = 0::numeric THEN 0::numeric
            ELSE l.qtyentered / l.qtyordered
        END * (l.qtyordered - sum(COALESCE(m.qty, 0::numeric))) AS qtyentered,
    l.c_uom_id,
    l.qtyordered - sum(COALESCE(m.qty, 0::numeric)) AS movementqty,
        CASE
            WHEN l.qtyordered = 0::numeric THEN 0::numeric
            ELSE l.qtyentered / l.qtyordered
        END AS multiplier,
    p.m_locator_id,
    COALESCE(p.name, c.name) AS name,
    l.m_product_id,
    l.m_attributesetinstance_id,
    l.c_charge_id,
    l.description,
    po.vendorproductno,
    o.c_order_id,
    0 AS c_invoice_id,
    0 AS m_rma_id,
    o.dateordered AS datedoc,
    o.c_bpartner_id,
    o.docstatus,
    'O'::text AS createfromtype,
    l.c_activity_id,
    l.c_project_id,
    l.c_campaign_id,
    l.user1_id,
    l.user2_id,
    fl.dd_freight_id,
    l.c_orderline_id
   FROM c_order o
     JOIN c_orderline l ON l.c_order_id = o.c_order_id
     LEFT JOIN m_product_po po ON l.m_product_id = po.m_product_id AND l.c_bpartner_id = po.c_bpartner_id
     LEFT JOIN m_matchpo m ON l.c_orderline_id = m.c_orderline_id AND m.m_inoutline_id IS NOT NULL
     LEFT JOIN m_product p ON l.m_product_id = p.m_product_id
     LEFT JOIN c_charge c ON l.c_charge_id = c.c_charge_id
     LEFT JOIN dd_freightline fl ON l.c_orderline_id = fl.c_orderline_id
  WHERE l.qtyordered <> 0::numeric
  GROUP BY l.ad_client_id, l.ad_org_id, l.createdby, l.created, l.updatedby, l.updated, l.isactive, l.c_orderline_id, fl.dd_freight_id, l.line, l.qtyordered, l.qtyentered, l.c_uom_id, p.m_locator_id, p.name, c.name, l.m_product_id, l.m_attributesetinstance_id, l.c_charge_id, l.description, po.vendorproductno, o.c_order_id, o.dateordered, o.c_bpartner_id, o.docstatus, l.c_activity_id, l.c_project_id, l.c_campaign_id, l.user1_id, l.user2_id
 HAVING (l.qtyordered - sum(COALESCE(m.qty, 0::numeric))) <> 0::numeric;

ALTER TABLE adempiere.rv_inout_createfrom_freight
    OWNER TO adempiere;

