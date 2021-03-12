using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class WebPage_Entrance : System.Web.UI.Page
{
	GasMasterCompare_DB gmc_db = new GasMasterCompare_DB();
	public string name, identity, EnterCtrl;
	protected void Page_Load(object sender, EventArgs e)
	{
		if (LogInfo.mGuid != "")
		{
			name = LogInfo.name;
			identity = LogInfo.competence;
			switch (identity)
			{
				default:
					break;
				case "01": // 委員
						   // for 3/16
					switch (LogInfo.mGuid)
					{
						case "64BF9515-47C0-47A6-BC30-88C6EFD50D03":
							Response.Redirect("~/WebPage/GasInfo.aspx");
							break;
						case "39DF8B07-2F23-4D0E-8983-22AB7510DD3D":
							Response.Redirect("~/DemoHtml/oil-firmB001.html");
							break;
						case "B73B61B8-6CCF-4141-A858-9A8C4E403A9C":
							Response.Redirect("~/DemoHtml/oil-firmC001.html");
							break;
					}

					//gmc_db._年度 = "110";
					//gmc_db._委員guid = LogInfo.mGuid;
					//DataTable dt = gmc_db.GetMasterType();
					//bool bGas = false;
					//bool bOil = false;
					//if (dt.Rows.Count > 0)
					//{
					//	for (int i = 0; i < dt.Rows.Count; i++)
					//	{
					//		if (dt.Rows[i]["網站類別"].ToString() == "01")
					//			bOil = true;
					//		else
					//			bGas = true;
					//	}
					//}

					//if (bGas && bOil)
					//	EnterCtrl = "all";
					//else if (bOil)
					//	EnterCtrl = "oil";
					//else
					//	EnterCtrl = "gas";
					break;
				case "02": // 業者
					if (LogInfo.user == "01")
					{
						// for 3/16
						if (LogInfo.companyGuid == "39DF8B07-2F23-4D0E-8983-22AB7510DD3D")
							Response.Redirect("~/DemoHtml/oil-firmB001.html");
						else
							Response.Redirect("~/DemoHtml/oil-firmC001.html");
					}
					else
						Response.Redirect("~/WebPage/GasInfo.aspx");
					break;
			}
		}
		else
		{
			Response.Write("<script>alert('請重新登入'); location='SignIn.aspx';</script>");
		}
	}
}