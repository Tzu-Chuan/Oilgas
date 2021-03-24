using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class WebPage_OilSelfEvaluation : System.Web.UI.Page
{
	public string userguid, username, identity, companyName;
	OilCompanyInfo_DB oilInfo_db = new OilCompanyInfo_DB();
	protected void Page_Load(object sender, EventArgs e)
	{
		if (LogInfo.mGuid == "")
			Response.Write("<script>alert('請重新登入'); location='SignIn.aspx';</script>");
		else
		{
            userguid = LogInfo.mGuid;
			username = LogInfo.name;
			identity = LogInfo.competence;
			//if (LogInfo.competence != "02")
			//{
			//	if (string.IsNullOrEmpty(Request.QueryString["cp"]))
			//		Response.Write("<script>alert('參數錯誤'); location='GasCompanyList_temp.aspx';</script>");
			//}

			// for 3/23
			string cpid = LogInfo.companyGuid;
			//if (LogInfo.competence == "01")
			//{
			//	switch (LogInfo.mGuid)
			//	{
			//		case "64BF9515-47C0-47A6-BC30-88C6EFD50D03":
			//			cpid = "A11B680E-4A42-45E0-BCE2-3B16679C0606";
			//			break;
			//		case "B73B61B8-6CCF-4141-A858-9A8C4E403A9C":
			//			cpid = "4B2E5C10-A9D5-4097-BBF7-161A3CCAC1E1";
			//			break;
   //                 case "39DF8B07-2F23-4D0E-8983-22AB7510DD3D":
   //                     cpid = "972153A3-98FE-40F8-9F4D-7C950BD3F51C";
   //                     break;
   //                 case "5A2DE9FD-2A4D-4E0B-91D3-35951984571F":
   //                     cpid = "972153A3-98FE-40F8-9F4D-7C950BD3F51C";
   //                     break;
   //                 case "FB0B69A5-4F28-4A6F-8EAC-3787D248E94A":
   //                     cpid = "972153A3-98FE-40F8-9F4D-7C950BD3F51C";
   //                     break;
   //             }
			//}
   //         else if(LogInfo.competence == "03")
   //         {
   //             cpid = "972153A3-98FE-40F8-9F4D-7C950BD3F51C";
   //         }

			oilInfo_db._guid = cpid;
			DataTable dt = oilInfo_db.GetInfo();
			if (dt.Rows.Count > 0)
			{
                string cpNameTmp = string.Empty;
                if (string.IsNullOrEmpty(dt.Rows[0]["組"].ToString()))
                {
                    cpNameTmp = dt.Rows[0]["事業部"].ToString() + dt.Rows[0]["營業處廠"].ToString() + dt.Rows[0]["中心庫區儲運課工場"].ToString();
                }
                else
                {
                    if (string.IsNullOrEmpty(dt.Rows[0]["中心庫區儲運課工場"].ToString()))
                    {
                        cpNameTmp = dt.Rows[0]["事業部"].ToString() + dt.Rows[0]["營業處廠"].ToString() + dt.Rows[0]["組"].ToString();
                    }
                    else
                    {
                        cpNameTmp = dt.Rows[0]["事業部"].ToString() + dt.Rows[0]["營業處廠"].ToString() + dt.Rows[0]["組"].ToString() + dt.Rows[0]["中心庫區儲運課工場"].ToString();
                    }
                }
                companyName = cpNameTmp;
            }
		}
	}
}