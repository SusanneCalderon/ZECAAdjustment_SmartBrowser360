/******************************************************************************
 * Product: ADempiere ERP & CRM Smart Business Solution                       *
 * Copyright (C) 2006-2016 ADempiere Foundation, All Rights Reserved.         *
 * This program is free software, you can redistribute it and/or modify it    *
 * under the terms version 2 of the GNU General Public License as published   *
 * by the Free Software Foundation. This program is distributed in the hope   *
 * that it will be useful, but WITHOUT ANY WARRANTY, without even the implied *
 * warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.           *
 * See the GNU General Public License for more details.                       *
 * You should have received a copy of the GNU General Public License along    *
 * with this program, if not, write to the Free Software Foundation, Inc.,    *
 * 59 Temple Place, Suite 330, Boston, MA 02111-1307 USA.                     *
 * For the text or an alternative of this public license, you may reach us    *
 * or via info@adempiere.net or http://www.adempiere.net/license.html         *
 *****************************************************************************/

package org.adempiere.process;

import java.math.BigDecimal;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map.Entry;

import org.adempiere.exceptions.AdempiereException;
import org.compiere.model.MInOut;
import org.compiere.model.MInOutLine;
import org.compiere.model.MInvoiceLine;
import org.compiere.model.MLocator;
import org.compiere.model.MOrderLine;
import org.compiere.model.MProduct;
import org.compiere.model.MWarehouse;
import org.compiere.model.Query;
import org.compiere.util.DB;
import org.compiere.util.Env;
import org.eevolution.form.Browser;

/** Generated Process for (In Out Create From)
 *  @author ADempiere (generated) 
 *  @version Release 3.8.0
 * 	@author Yamel Senih, ysenih@erpcya.com, ERPCyA http://www.erpcya.com
 *  <li> FR [ 327 ] Create From in M_InOut change to Smart Browse
 *  @see https://github.com/adempiere/adempiere/issues/327
 *	@author Victor Perez , victor.perez@e-evolution.com, http://e-evolution.com
 */
public class SBP_InOutCreateFrom extends SBP_InOutCreateFromAbstract {

	/**	Create From Type of RMA		*/
	private static final String RMA = "A";
	/**	Create From Type of Order	*/
	private static final String ORDER = "O";
	/**	Create From Type of Invoice	*/
	private static final String INVOICE = "I";
	/**	Created						*/
	private int created = 0;
	protected List<MOrderLine> m_records = null;
	protected LinkedHashMap<Integer, LinkedHashMap<String, Object>> m_values = null;
	
	@Override
	protected void prepare() {
		super.prepare();
	}
	
	@Override
	protected String doIt() throws Exception {
		// Get Shipment
		int windowNo = getProcessInfo().getWindowNo();
		int M_InOut_ID = Env.getContextAsInt(getCtx(),windowNo, "M_InOut_ID");
		MInOut inout = new MInOut(getCtx(), M_InOut_ID, get_TrxName());
		//	Create From Type
		String createFromType = null;
		//	Get Default Locator
		MLocator locator = MLocator.getDefault((MWarehouse) inout.getM_Warehouse());
		//	Loop
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
		for(MOrderLine orderLine: m_records) {
			if(createFromType == null) {
				createFromType = ORDER;
				//	Valid Mandatory Create From Type
				if(createFromType == null
						|| createFromType.length() == 0)
					throw new AdempiereException("@CreateFromType@ @NotFound@");
			}
			// variable values
			
			int m_M_Product_ID = orderLine.getM_Product_ID();
			BigDecimal m_QtyEntered = orderLine.getQtyEntered();
			BigDecimal qtyToDeliver = getQtyToDeliver(orderLine);
			int m_C_UOM_ID = orderLine.getC_UOM_ID();
			int m_M_Locator_ID = 0;
			// If a locator is specified on the product, choose that otherwise default locator
			if(m_M_Locator_ID == 0)
				m_M_Locator_ID = getLocatorId();
			//	Valid locator
			if(m_M_Locator_ID == 0) {
				if(locator != null)
					m_M_Locator_ID = locator.getM_Locator_ID();
				else
					throw new AdempiereException("@M_Locator_ID@ @NotFound@");
			}
			MInvoiceLine il = null;
			//	Precision of Qty UOM
			int precision = 2;
			if (m_M_Product_ID != 0) {
				MProduct product = MProduct.get(getCtx(), m_M_Product_ID);
				precision = product.getUOMPrecision();
			}
			qtyToDeliver = qtyToDeliver.setScale(precision, BigDecimal.ROUND_HALF_DOWN);
			//
			log.fine("Line QtyEntered=" + m_QtyEntered
					+ ", Product=" + m_M_Product_ID 
					+ ", CreateFromType=" + createFromType + ", Key=" + orderLine.getC_OrderLine_ID());

			//	Create new InOut Line
			MInOutLine iol = new MInOutLine (inout);
			iol.setM_Product_ID(m_M_Product_ID, m_C_UOM_ID);	//	Line UOM
			iol.setQty(qtyToDeliver);							//	Movement/Entered
			//
			if(createFromType.equals(ORDER)) {
				iol.setC_OrderLine_ID(orderLine.getC_OrderLine_ID());
				if (orderLine.getQtyEntered().compareTo(orderLine.getQtyOrdered()) != 0) {
					iol.setMovementQty(m_QtyEntered
							.multiply(orderLine.getQtyOrdered())
							.divide(orderLine.getQtyEntered(), 12, BigDecimal.ROUND_HALF_UP));
					iol.setC_UOM_ID(orderLine.getC_UOM_ID());
				}
				iol.setM_AttributeSetInstance_ID(orderLine.getM_AttributeSetInstance_ID());
				iol.setDescription(orderLine.getDescription());
				//
				iol.setC_Project_ID(orderLine.getC_Project_ID());
				iol.setC_ProjectPhase_ID(orderLine.getC_ProjectPhase_ID());
				iol.setC_ProjectTask_ID(orderLine.getC_ProjectTask_ID());
				iol.setC_Activity_ID(orderLine.getC_Activity_ID());
				iol.setC_Campaign_ID(orderLine.getC_Campaign_ID());
				iol.setAD_OrgTrx_ID(orderLine.getAD_OrgTrx_ID());
				iol.setUser1_ID(orderLine.getUser1_ID());
				iol.setUser2_ID(orderLine.getUser2_ID());
				iol.set_ValueOfColumn("DD_FreightLine_ID", getddFreightLine_ID(orderLine.getC_OrderLine_ID()));

				iol.setM_Locator_ID(m_M_Locator_ID);
				iol.saveEx();
				created ++;
			}
		//	
		}
		return "@Created@ " + created;
	}
	
	private BigDecimal getQtyToDeliver(MOrderLine oLine)
	{
		LinkedHashMap<String, Object> values = m_values.get(oLine.get_ID());
		BigDecimal toDeliver = oLine.getQtyOrdered()
				.subtract(oLine.getQtyDelivered());				
		for (Entry<String, Object> entry : values.entrySet()) {
			String columnName = entry.getKey();
			
				if (columnName.equals("OL_QtyEntered"))
				{
					BigDecimal qtyTodeliver = (BigDecimal)entry.getValue();
					if (qtyTodeliver.compareTo(toDeliver) <0)
						toDeliver = qtyTodeliver;
				}
			}
		return toDeliver;
	}
	


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
	
	
	private int getddFreightLine_ID(int cOrderLine_ID) {
        return DB.getSQLValueEx(
                get_TrxName(),
                "SELECT fl.DD_FreightLine_ID FROM DD_FreightLine fl " +
                "INNER JOIN C_OrderLine ol ON (fl.C_OrderLine_ID=ol.C_OrderLine_ID) " + 
                "WHERE ol.C_OrderLine_ID=? FETCH FIRST 1 ROW ONLY",
                cOrderLine_ID);
	} // getddFreightLine_ID
		
}