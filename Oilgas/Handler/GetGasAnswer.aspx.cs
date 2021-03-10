using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Xml;

public partial class Handler_GetGasAnswer : System.Web.UI.Page
{
	GasEvaluationAnswer_DB db = new GasEvaluationAnswer_DB();
	protected void Page_Load(object sender, EventArgs e)
	{
		///-----------------------------------------------------
		///功    能: 查詢自評表答案
		///說    明:
		/// * Request["cpid"]: 業者Guid 
		/// * Request["year"]: 年度 
		///-----------------------------------------------------
		XmlDocument xDoc = new XmlDocument();
		try
		{
			string cpid = (string.IsNullOrEmpty(Request["cpid"])) ? LogInfo.companyGuid : Request["cpid"].ToString().Trim();
			string year = (string.IsNullOrEmpty(Request["year"])) ? "" : Request["year"].ToString().Trim();

			// for 3/16
			if (LogInfo.competence == "01")
			{
				switch (LogInfo.mGuid)
				{
					case "CE7DB104-3185-4AF9-9F9C-3E0D51522E83":
						cpid = "A11B680E-4A42-45E0-BCE2-3B16679C0606";
						break;
					case "033D2CC5-B7A1-479A-B442-D2C161963E53":
						cpid = "85529526-A0E3-4367-8A3F-AA4386671647";
						break;
					case "2B9705DE-B9B7-42C6-AFC5-E7F49D5A2261":
						cpid = "4F11FDF8-E800-4D60-931C-4481A80D8AF2";
						break;
				}
			}

			db._業者guid = cpid;
			db._年度 = "110";
			DataTable dt = db.GetCompanyAns();
			string xmlstr = string.Empty;
			xmlstr = DataTableToXml.ConvertDatatableToXmlByAttribute(dt, "dataList", "data_item");
			xmlstr = "<?xml version='1.0' encoding='utf-8'?><root>" + xmlstr + "</root>";
			xDoc.LoadXml(xmlstr);
		}
		catch (Exception ex)
		{
			xDoc = ExceptionUtil.GetExceptionDocument(ex);
		}
		Response.ContentType = System.Net.Mime.MediaTypeNames.Text.Xml;
		xDoc.Save(Response.Output);
	}
}