using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class WebPage_OilSelfEvaluation : System.Web.UI.Page
{
	public string username, identity, companyName;
	OilCompanyInfo_DB oilInfo_db = new OilCompanyInfo_DB();
	protected void Page_Load(object sender, EventArgs e)
	{
		if (LogInfo.mGuid == "")
			Response.Write("<script>alert('請重新登入'); location='SignIn.aspx';</script>");
		else
		{
			username = LogInfo.name;
			identity = LogInfo.competence;
			//if (LogInfo.competence != "02")
			//{
			//	if (string.IsNullOrEmpty(Request.QueryString["cp"]))
			//		Response.Write("<script>alert('參數錯誤'); location='GasCompanyList_temp.aspx';</script>");
			//}

			// for 3/16
			string cpid = LogInfo.companyGuid;
			if (LogInfo.competence == "01")
			{
				switch (LogInfo.mGuid)
				{
					case "gas0000":
						cpid = "fe7263bf055c4974a38ca85ded1832b7";
						break;
					case "oil1111":
						cpid = "6247cd5d6f7f4408889b0bd760576ff3";
						break;
					case "oil2222":
						cpid = "a76c92cdb6894a11a2a870c3af50ed1b";
						break;
				}
			}

			oilInfo_db._guid = cpid;
			DataTable dt = oilInfo_db.GetInfo();
			if (dt.Rows.Count > 0)
			{
				companyName = dt.Rows[0]["中心庫區儲運課工場"].ToString();
			}
		}
	}
}