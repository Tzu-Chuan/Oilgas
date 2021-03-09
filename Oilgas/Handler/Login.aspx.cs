using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml;
using System.Data;

public partial class Manage_BackEnd_Login : System.Web.UI.Page
{
	protected void Page_Load(object sender, EventArgs e)
	{
		///-----------------------------------------------------
		///功    能: 登入
		///說    明:
		/// * Request["acc"]: 帳號
		/// * Request["pw"]: 密碼
		/// * Request["vCode"]: 驗證碼
		///-----------------------------------------------------
		XmlDocument xDoc = new XmlDocument();
		string acc = (string.IsNullOrEmpty(Request["acc"])) ? "" : Request["acc"].ToString().Trim();
		string pw = (string.IsNullOrEmpty(Request["pw"])) ? "" : Request["pw"].ToString().Trim();
		string vCode = (string.IsNullOrEmpty(Request["vCode"])) ? "" : Request["vCode"].ToString().Trim();
		
		try
		{
			#region 檢查驗証碼
			//if (Session["ValidateNumber"] != null)
			//{
			//	if (Session["ValidateNumber"].ToString() != vCode.ToUpper())
			//	{
			//		throw new Exception("驗證碼輸入錯誤");
			//	}
			//}
			#endregion

			string xmlstr = string.Empty;
			Account.ExecSignIn(acc, pw);

			xmlstr = "<?xml version='1.0' encoding='utf-8'?><root><Response>Success</Response></root>";
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