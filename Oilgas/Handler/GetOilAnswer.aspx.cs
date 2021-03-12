using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Xml;

public partial class Handler_GetOilAnswer : System.Web.UI.Page
{
	OilEvaluationAnswer_DB db = new OilEvaluationAnswer_DB();
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
					case "64BF9515-47C0-47A6-BC30-88C6EFD50D03":
						cpid = "A11B680E-4A42-45E0-BCE2-3B16679C0606";
						break;
					case "39DF8B07-2F23-4D0E-8983-22AB7510DD3D":
						cpid = "972153A3-98FE-40F8-9F4D-7C950BD3F51C";
						break;
					case "B73B61B8-6CCF-4141-A858-9A8C4E403A9C":
						cpid = "4B2E5C10-A9D5-4097-BBF7-161A3CCAC1E1";
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