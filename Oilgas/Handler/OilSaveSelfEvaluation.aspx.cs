﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.IO;
using System.Data.SqlClient;
using System.Data;
using System.Xml;

public partial class Handler_OilSaveSelfEvaluation : System.Web.UI.Page
{
	OilSelfEvaluation_DB q_db = new OilSelfEvaluation_DB();
	OilEvaluationAnswer_DB ans_db = new OilEvaluationAnswer_DB();
	protected void Page_Load(object sender, EventArgs e)
	{
		///-----------------------------------------------------
		///功    能: 儲存石油自評表答案
		///說    明:
		/// * Request["cpid"]: 業者Guid
		///-----------------------------------------------------

		XmlDocument xDoc = new XmlDocument();

		/// Transaction
		SqlConnection oConn = new SqlConnection(ConfigurationManager.AppSettings["ConnectionString"].ToString());
		oConn.Open();
		SqlCommand oCmmd = new SqlCommand();
		oCmmd.Connection = oConn;
		SqlTransaction myTrans = oConn.BeginTransaction();
		oCmmd.Transaction = myTrans;
		try
		{
			#region 檢查登入資訊
			if (LogInfo.mGuid == "")
			{
				throw new Exception("請重新登入");
			}
			#endregion

			string cpid = (string.IsNullOrEmpty(Request["cpid"])) ? LogInfo.companyGuid : Request["cpid"].ToString().Trim();

            // for 3/23
            if (LogInfo.competence == "01")
            {
                switch (LogInfo.mGuid)
                {
                    case "64BF9515-47C0-47A6-BC30-88C6EFD50D03":
                        cpid = "A11B680E-4A42-45E0-BCE2-3B16679C0606";
                        break;
                    case "B73B61B8-6CCF-4141-A858-9A8C4E403A9C":
                        cpid = "4B2E5C10-A9D5-4097-BBF7-161A3CCAC1E1";
                        break;
                    case "39DF8B07-2F23-4D0E-8983-22AB7510DD3D":
                        cpid = "972153A3-98FE-40F8-9F4D-7C950BD3F51C";
                        break;
                    case "5A2DE9FD-2A4D-4E0B-91D3-35951984571F":
                        cpid = "972153A3-98FE-40F8-9F4D-7C950BD3F51C";
                        break;
                    case "FB0B69A5-4F28-4A6F-8EAC-3787D248E94A":
                        cpid = "972153A3-98FE-40F8-9F4D-7C950BD3F51C";
                        break;
                }
            }
            else if (LogInfo.competence == "03")
            {
                cpid = "972153A3-98FE-40F8-9F4D-7C950BD3F51C";
            }

            DataTable qdt = q_db.GetQuestionGuid();
			if (qdt.Rows.Count > 0)
			{
				for (int i = 0; i < qdt.Rows.Count; i++)
				{
					string cAns = (string.IsNullOrEmpty(Request["cg_" + qdt.Rows[i]["石油自評表題目guid"].ToString()])) ? "" : Request["cg_" + qdt.Rows[i]["石油自評表題目guid"].ToString()].ToString().Trim();
					string mAns = (string.IsNullOrEmpty(Request["mg_" + qdt.Rows[i]["石油自評表題目guid"].ToString()])) ? "" : Request["mg_" + qdt.Rows[i]["石油自評表題目guid"].ToString()].ToString().Trim();
					string PsStr = (string.IsNullOrEmpty(Request["ps_" + qdt.Rows[i]["石油自評表題目guid"].ToString()])) ? "" : Request["ps_" + qdt.Rows[i]["石油自評表題目guid"].ToString()].ToString().Trim();

					if (LogInfo.competence == "02") // 業者
					{
                        if (cAns != "")
                        {
                            ans_db._業者guid = cpid;
                            ans_db._答案 = cAns;
                            ans_db._委員意見 = "";

                            ans_db._題目guid = qdt.Rows[i]["石油自評表題目guid"].ToString();
                            ans_db._年度 = qdt.Rows[i]["石油自評表題目年份"].ToString();
                            ans_db._填寫人員類別 = LogInfo.competence;
                            ans_db._建立者 = LogInfo.mGuid;
                            ans_db._修改者 = LogInfo.mGuid;

                            ans_db.SaveAnswer(oConn, myTrans);
                        }
						
                    }
					else if(LogInfo.competence == "01")
					{
						ans_db._業者guid = cpid;
						ans_db._答案 = mAns;
						string pStr = (mAns != "01") ? PsStr : "";
						ans_db._委員意見 = pStr;


                        ans_db._題目guid = qdt.Rows[i]["石油自評表題目guid"].ToString();
                        ans_db._年度 = qdt.Rows[i]["石油自評表題目年份"].ToString();
                        ans_db._填寫人員類別 = LogInfo.competence;
                        ans_db._建立者 = LogInfo.mGuid;
                        ans_db._修改者 = LogInfo.mGuid;

                        ans_db.SaveAnswer(oConn, myTrans);
                    }
                    else
                    {
                        ans_db._業者guid = cpid;
                        ans_db._答案 = mAns;
                        string pStr = (mAns != "01") ? PsStr : "";
                        ans_db._委員意見 = pStr;


                        ans_db._題目guid = qdt.Rows[i]["石油自評表題目guid"].ToString();
                        ans_db._年度 = qdt.Rows[i]["石油自評表題目年份"].ToString();
                        ans_db._填寫人員類別 = "01"; //暫時for 3/23
                        ans_db._建立者 = LogInfo.mGuid;
                        ans_db._修改者 = LogInfo.mGuid;

                        ans_db.SaveAnswer(oConn, myTrans);
                    }
					
				}
			}

			myTrans.Commit();

			string xmlstr = string.Empty;
			xmlstr = "<?xml version='1.0' encoding='utf-8'?><root><Response>儲存完成</Response></root>";
			xDoc.LoadXml(xmlstr);
		}
		catch (Exception ex)
		{
			myTrans.Rollback();
			xDoc = ExceptionUtil.GetExceptionDocument(ex);
		}
		finally
		{
			oCmmd.Connection.Close();
			oConn.Close();
		}
		Response.ContentType = System.Net.Mime.MediaTypeNames.Text.Xml;
		xDoc.Save(Response.Output);
	}
}