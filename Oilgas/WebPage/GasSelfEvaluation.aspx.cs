using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class WebPage_GasSelfEvaluation : System.Web.UI.Page
{
	public string username, identity, companyName;
	GasCompanyInfo_DB gasInfo_db = new GasCompanyInfo_DB();
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
                cpid = "A11B680E-4A42-45E0-BCE2-3B16679C0606";
            }

			gasInfo_db._guid = cpid;
			DataTable dt = gasInfo_db.GetInfo();
			if (dt.Rows.Count > 0)
			{
				companyName = dt.Rows[0]["營業處廠"].ToString();
			}
		}
	}
}