﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class WebPage_Gas_Info_temp : System.Web.UI.Page
{
	public string identity;
	protected void Page_Load(object sender, EventArgs e)
	{
		if (LogInfo.mGuid == "")
			Response.Write("<script>alert('請重新登入'); location='SignIn.aspx';</script>");
		else
		{
			identity = LogInfo.competence;
			if (LogInfo.competence != "02")
			{
				if (string.IsNullOrEmpty(Request.QueryString["cp"]))
					Response.Write("<script>alert('參數錯誤'); location='GasCompanyList_temp.aspx';</script>");
			}
		}
	}
}