using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Xml;

public partial class Handler_GetSelfEvaluation_QuestionList : System.Web.UI.Page
{
	GasSelfEvaluaion_DB db = new GasSelfEvaluaion_DB();
	protected void Page_Load(object sender, EventArgs e)
	{
		///-----------------------------------------------------
		///功    能: 查詢自評表題目
		///說    明:
		/// * Request[""]: 
		///-----------------------------------------------------
		XmlDocument xDoc = new XmlDocument();
		//string str = (string.IsNullOrEmpty(Request["str"])) ? "" : Request["str"].ToString().Trim();
		try
		{
			string xmlstr = string.Empty;
			DataTable dt = db.GetQuestionList("110");
			if (dt.Rows.Count > 0)
				xDoc.LoadXml(dt.Rows[0]["xmlDoc"].ToString());
			else
				throw new Exception("查無資料!");
		}
		catch (Exception ex)
		{
			xDoc = ExceptionUtil.GetExceptionDocument(ex);
		}
		Response.ContentType = System.Net.Mime.MediaTypeNames.Text.Xml;
		xDoc.Save(Response.Output);
	}
}