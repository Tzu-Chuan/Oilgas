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

public partial class Handler_OilSaveLogSefEvaluation : System.Web.UI.Page
{
    OilSelfEvaluation_DB q_db = new OilSelfEvaluation_DB();
    OilEvaluationAnswer_DB ans_db = new OilEvaluationAnswer_DB();
    OilCommitteeSuggestion_DB cs_db = new OilCommitteeSuggestion_DB();
    protected void Page_Load(object sender, EventArgs e)
    {
        ///-----------------------------------------------------
        ///功    能: 儲存石油自評表意見log
        ///說    明:
        /// * Request["qid"]: 自評表題目guid
        /// * Request["qOpinions"]: 自評表委員意見
        /// * Request["qAnswer"]: 自評表委員答案
        /// * Request["qYear"]: 自評表題目年份
        /// * Request["qViewFile"]: 自評表檢視文件
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

            string qid = (string.IsNullOrEmpty(Request["qid"])) ? "" : Request["qid"].ToString().Trim();
            string qOpinions = (string.IsNullOrEmpty(Request["qOpinions"])) ? "" : Request["qOpinions"].ToString().Trim();
            string qAnswer = (string.IsNullOrEmpty(Request["qAnswer"])) ? "" : Request["qAnswer"].ToString().Trim();
            string qYear = (string.IsNullOrEmpty(Request["qYear"])) ? "" : Request["qYear"].ToString().Trim();
            string qViewFile = (string.IsNullOrEmpty(Request["qViewFile"])) ? "" : Request["qViewFile"].ToString().Trim();
            string cpid = LogInfo.companyGuid;
            string logguid = Guid.NewGuid().ToString("D").ToUpper();

            #region 委員意見log
            cs_db._guid = logguid;
            cs_db._委員guid = LogInfo.mGuid;
            cs_db._委員 = LogInfo.name;
            cs_db._業者guid = LogInfo.companyGuid;
            cs_db._題目guid = qid;
            cs_db._年度 = qYear;
            cs_db._答案 = qAnswer;
            cs_db._檢視文件 = qViewFile;
            cs_db._委員意見 = qOpinions;
            cs_db._建立者 = LogInfo.mGuid;
            cs_db._修改者 = LogInfo.mGuid;
            #endregion

            #region 自評表答案
            ans_db._業者guid = cpid;
            ans_db._答案 = qAnswer;
            ans_db._檢視文件 = qViewFile;
            ans_db._委員意見 = qOpinions;

            ans_db._題目guid = qid;
            ans_db._年度 = qYear;
            ans_db._填寫人員類別 = "01"; //暫時for 3/23
            ans_db._建立者 = LogInfo.mGuid;
            ans_db._修改者 = LogInfo.mGuid;
            #endregion

            cs_db.SaveSuggestion(oConn, myTrans);
            ans_db.SaveAnswer(oConn, myTrans);

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