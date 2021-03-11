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
						case "gas0000":
							Response.Redirect("~/DemoHtml/gas-firmA001.html");
							break;
						case "oil1111":
							Response.Redirect("~/DemoHtml/oil-firmB001.html");
							break;
						case "oil2222":
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
						if (LogInfo.companyGuid == "6247cd5d6f7f4408889b0bd760576ff3")
							Response.Redirect("~/DemoHtml/oil-firmB001.html");
						else
							Response.Redirect("~/DemoHtml/oil-firmC001.html");
					}
					else
						Response.Redirect("~/DemoHtml/gas-firmA001.html");
					break;
			}
		}
		else
		{
			Response.Write("<script>alert('請重新登入'); location='SignIn.aspx';</script>");
		}
	}
}