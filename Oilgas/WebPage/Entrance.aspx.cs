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
    OilMasterCompare_DB omc_db = new OilMasterCompare_DB();
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
				case "01": //委員
                    gmc_db._年度 = "110"; //暫時先抓110年
                    gmc_db._委員guid = LogInfo.mGuid;
                    omc_db._年度 = "110"; //暫時先抓110年
                    omc_db._委員guid = LogInfo.mGuid;
                    DataTable Gasdt = gmc_db.GetMasterType();
                    DataTable Oildt = omc_db.GetMasterType();
                    bool bGas = false;
                    bool bOil = false;
                    if (Gasdt.Rows.Count > 0)
                        bGas = true;
                    if (Oildt.Rows.Count > 0)
                        bOil = true;                   

                    if (bGas && bOil)
                        EnterCtrl = "all";
                    else if (bOil)
                        EnterCtrl = "oil";
                    else
                        EnterCtrl = "gas";
                    break;
				case "02": // 業者
					if (LogInfo.user == "01")
					{
						// for 3/16
						if (LogInfo.companyGuid == "972153A3-98FE-40F8-9F4D-7C950BD3F51C") //豐德供油服務中心
                        {
                            Response.Redirect("~/DemoHtml/oil-firmB001.html");
                        }							
						else if(LogInfo.companyGuid == "4B2E5C10-A9D5-4097-BBF7-161A3CCAC1E1") //第十蒸餾工場
                        {
                            Response.Redirect("~/DemoHtml/oil-firmC001.html");
                        }
                        else
                        {
                            Response.Redirect("~/DemoHtml/oil-firmTemplate001.html");
                        }	
					}
                    else
                    {
                        if (LogInfo.companyGuid == "A11B680E-4A42-45E0-BCE2-3B16679C0606") //海管室
                        {
                            Response.Redirect("~/WebPage/GasInfo.aspx");
                        }
                        else if (LogInfo.companyGuid == "FE80EC82-2F88-4FBD-A136-D5E9D3233CD9") //高雄供氣中心
                        {
                            Response.Redirect("~/DemoHtml/gas-firmB001.html");
                        }
                        else
                        {
                            Response.Redirect("~/DemoHtml/gas-firmTemplate001.html");
                        }
                    }                        						
					break;
				case "03":
					break;
			}
		}
		else
		{
			Response.Write("<script>alert('請重新登入'); location='SignIn.aspx';</script>");
		}
	}
}