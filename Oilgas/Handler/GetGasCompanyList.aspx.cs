using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Xml;

public partial class Handler_GetGasCompanyList : System.Web.UI.Page
{
	GasCompanyInfo_DB db = new GasCompanyInfo_DB();
	protected void Page_Load(object sender, EventArgs e)
	{
		///-----------------------------------------------------
		///功    能: 查詢天然氣業者清單
		///說    明:
		/// * Request[""]: 
		///-----------------------------------------------------
		XmlDocument xDoc = new XmlDocument();
		try
		{
            //string SearchStr = (string.IsNullOrEmpty(Request["SearchStr"])) ? "" : Request["SearchStr"].ToString().Trim();
            string type = (string.IsNullOrEmpty(Request["type"])) ? "" : Request["type"].ToString().Trim();
            string cpid = (string.IsNullOrEmpty(Request["cpid"])) ? "" : Request["cpid"].ToString().Trim();
            string xmlstr = string.Empty;
            DataTable dt = new DataTable();

            //db._KeyWord = SearchStr;
            if (type == "list")
            {
                dt = db.GetCompanyList();                
                xmlstr = DataTableToXml.ConvertDatatableToXML(dt, "dataList", "data_item");
                xmlstr = "<?xml version='1.0' encoding='utf-8'?><root>" + xmlstr + "</root>";
                xDoc.LoadXml(xmlstr);
            }
            else
            {
                db._guid = cpid;
                dt = db.GetCompany();
                xmlstr = "<?xml version='1.0' encoding='utf-8'?><root><guid>" + dt.Rows[0]["guid"].ToString() + "</guid></root>";
                xDoc.LoadXml(xmlstr);
            }
            
		}
		catch (Exception ex)
		{
			xDoc = ExceptionUtil.GetExceptionDocument(ex);
		}
		Response.ContentType = System.Net.Mime.MediaTypeNames.Text.Xml;
		xDoc.Save(Response.Output);
	}
}