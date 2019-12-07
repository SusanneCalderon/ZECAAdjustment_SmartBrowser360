/******************************************************************************
 * Product: Adempiere ERP & CRM Smart Business Solution                       *
 * Copyright (C) 1999-2006 ComPiere, Inc. All Rights Reserved.                *
 * This program is free software; you can redistribute it and/or modify it    *
 * under the terms version 2 of the GNU General Public License as published   *
 * by the Free Software Foundation. This program is distributed in the hope   *
 * that it will be useful, but WITHOUT ANY WARRANTY; without even the implied *
 * warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.           *
 * See the GNU General Public License for more details.                       *
 * You should have received a copy of the GNU General Public License along    *
 * with this program; if not, write to the Free Software Foundation, Inc.,    *
 * 59 Temple Place, Suite 330, Boston, MA 02111-1307 USA.                     *
 * For the text or an alternative of this public license, you may reach us    *
 * ComPiere, Inc., 2620 Augustine Dr. #245, Santa Clara, CA 95054, USA        *
 * or via info@compiere.org or http://www.compiere.org/license.html           *
 *****************************************************************************/
package org.adempiere.process;

import java.math.BigDecimal;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map.Entry;
import java.util.logging.Level;

import org.compiere.model.MAttributeSet;
import org.compiere.model.MAttributeSetInstance;
import org.compiere.model.MClient;
import org.compiere.model.MDocType;
import org.compiere.model.MFreightCategory;
import org.compiere.model.MInOut;
import org.compiere.model.MInOutLine;
import org.compiere.model.MInOutLineMA;
import org.compiere.model.MOrder;
import org.compiere.model.MOrderLine;
import org.compiere.model.MProduct;
import org.compiere.model.MStorage;
import org.compiere.model.Query;
import org.compiere.process.DocAction;
import org.compiere.process.ProcessInfoParameter;
import org.compiere.process.SvrProcess;
import org.compiere.util.AdempiereUserError;
import org.compiere.util.DB;
import org.compiere.util.Env;
import org.eevolution.form.Browser;
import org.eevolution.model.MDDFreight;
import org.eevolution.model.MDDFreightLine;

/**
 *	Generate Shipments.
 *	Manual or Automatic
 *	
 *  @author Jorg Janke
 *  @version $Id: InOutGenerate.java,v 1.2 2006/07/30 00:51:01 jjanke Exp $
 */
public class SBP_CreateFreightLineFromOrderLine extends SvrProcess
{
	/** DocAction				*/
	private String					p_docAction = DocAction.ACTION_Complete;
    /** Shipment Date                       */
	private Timestamp       		p_DateShipped = null;
	
	/**	The current Shipment	*/
	/** Number of Shipments	being created	*/
	private int						m_created = 0;
	/** Movement Date			*/
	private Timestamp				m_movementDate = null;
	/** Shipper*  */
	int shipperID = 0;
	int freightID = 0;
	MDDFreight freight = null;
	/** The Query sql			*/
	private String 		m_sql = null;
	private String alias = "OLINE";


	protected List<MOrderLine> m_records = null;
	protected LinkedHashMap<Integer, LinkedHashMap<String, Object>> m_values = null;
	protected List<MOrder> ordersToShip = null;
	StringBuffer resultMsg = new StringBuffer();

	
	/**
	 *  Prepare - e.g., get Parameters.
	 */
	protected void prepare()
	{
		ProcessInfoParameter[] para = getParameter();
		for (int i = 0; i < para.length; i++)
		{
			String name = para[i].getParameterName();
			if (para[i].getParameter() == null)
				;			
			else if (name.equals(MDDFreight.COLUMNNAME_M_Shipper_ID))
				shipperID =para[i].getParameterAsInt();
			else if (name.equals(MDDFreight.COLUMNNAME_DD_Freight_ID))
				freightID = para[i].getParameterAsInt();
			else if (name.equals("MovementDate"))
                p_DateShipped = (Timestamp)para[i].getParameter();
			else if (name.equals("Alias"))
				alias= (String)para[i].getParameter();
			else
				log.log(Level.SEVERE, "Unknown Parameter: " + name);
			
			if (p_DateShipped == null) {
				m_movementDate = Env.getContextAsDate(getCtx(), "#Date");
				if (m_movementDate == null)
					m_movementDate = new Timestamp(System.currentTimeMillis());
			} else
				m_movementDate = p_DateShipped;
			//	DocAction check
			
		}
	}	//	prepare

	/**
	 * 	Generate Shipments
	 *	@return info
	 *	@throws Exception
	 */
	protected String doIt () throws Exception
	{
		StringBuffer orderClause = new StringBuffer();
		orderClause.append("");
		String whereClause = "EXISTS (SELECT T_Selection_ID FROM T_Selection WHERE  T_Selection.AD_PInstance_ID=? " +
				" AND T_Selection.T_Selection_ID=c_orderLine.C_OrderLine_ID)";
		m_records = new Query(getCtx(), MOrderLine.Table_Name, whereClause, get_TrxName())
		.setParameters(getAD_PInstance_ID())
		.setOrderBy(orderClause.toString())
		.setClient_ID()
		.list();

		setColumnsValues();

		int windowNo = getProcessInfo().getWindowNo();
		int freightId = Env.getContextAsInt(getCtx(),windowNo, "DD_Freight_ID");
		if (freightId>0)
			freight = new MDDFreight(getCtx(), freightId, get_TrxName());
		for (MOrderLine orderLine: m_records) 
		{	
			generate(orderLine);
		}
		return "";
	}	//	doIt
	
	/**
	 * 	Generate Shipments
	 * 	@param pstmt Order Query
	 *	@return info
	 */
	private String generate (MOrderLine orderLine)
	{
		if (freight == null) {
			freight = new MDDFreight(getCtx(), freightID, get_TrxName());
			if (freightID == 0) {
				freight.setAD_Org_ID(orderLine.getAD_Org_ID());
				freight.setC_Order_ID(orderLine.getC_Order_ID());
				freight.setM_Shipper_ID(shipperID);
				freight.setDateDoc(m_movementDate);
				freight.setDateOrdered(m_movementDate);
				//MDocType docType = MDocType.getOfDocBaseType(getCtx(), "FOB")[0];
				freight.setC_DocType_ID(MDocType.getOfDocBaseType(getCtx(), "FOB")[0].getC_DocType_ID());
				freight.saveEx();				
			}
		}
		MDDFreightLine freightLine = new MDDFreightLine(getCtx(), 0, get_TrxName());
		freightLine.setLine(getLineNo(freight));
		freightLine.setDD_Freight_ID(freight.getDD_Freight_ID());
		freightLine.setM_Product_ID(orderLine.getM_Product_ID());
		freightLine.set_ValueOfColumn("MovementQty", getQtyToDeliver(orderLine));
		freightLine.set_ValueOfColumn(MOrderLine.COLUMNNAME_C_OrderLine_ID, orderLine.getC_OrderLine_ID());
		freightLine.setFreightAmt(Env.ZERO);
		freightLine.set_ValueOfColumn("C_UOM_ID", orderLine.getC_UOM_ID());
		freightLine.saveEx();
		
		return "@Created@ = " + m_created;
	}	//	generate
	
	

	private LinkedHashMap<Integer, LinkedHashMap<String, Object>> setColumnsValues() {
		if (m_values != null)
			return m_values;

		m_values = new LinkedHashMap<Integer, LinkedHashMap<String, Object>>();

		for (MOrderLine record : m_records) {
			m_values.put(
					record.get_ID(),
					Browser.getBrowseValues(getAD_PInstance_ID(), null,
							record.get_ID(), null));
		}
		return m_values;
	}
	
	private BigDecimal getQtyToDeliver(MOrderLine oLine)
	{
		LinkedHashMap<String, Object> values = m_values.get(oLine.get_ID());
		BigDecimal toDeliver = oLine.getQtyOrdered()
				.subtract(oLine.getQtyDelivered());				
		for (Entry<String, Object> entry : values.entrySet()) {
			String columnName = entry.getKey();
			
				if (columnName.equals(alias + "_QtyToDeliver"))
				{
					BigDecimal qtyTodeliver = (BigDecimal)entry.getValue();
					if (qtyTodeliver.compareTo(toDeliver) <0)
						toDeliver = qtyTodeliver;
				}
			}
		return toDeliver;
	}
	private int getLineNo(MDDFreight freight) {
        return DB.getSQLValueEx(
                get_TrxName(),
                "SELECT COALESCE(MAX(Line),0)+10 AS DefaultValue FROM DD_FreightLine WHERE DD_Freight_ID=?",
                freight.getDD_Freight_ID());
	}
	 
}	//	InOutGenerate
