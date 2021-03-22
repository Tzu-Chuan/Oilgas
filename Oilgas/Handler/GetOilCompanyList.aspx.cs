using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Xml;

public partial class Handler_GetOilCompanyList : System.Web.UI.Page
{
	OilCompanyInfo_DB db = new OilCompanyInfo_DB();
    OilMasterCompare_DB mc_db = new OilMasterCompare_DB();
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
            string Competence = LogInfo.competence;
            DataTable dt = new DataTable();

            //db._KeyWord = SearchStr;
            if (type == "list")
            {
                if (Competence != "01")
                {
                    dt = db.GetCompanyList();
                }
                else
                {
                    mc_db._委員guid = LogInfo.mGuid;
                    mc_db._年度 = "110";
                    dt = mc_db.GetMasterList();
                }

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