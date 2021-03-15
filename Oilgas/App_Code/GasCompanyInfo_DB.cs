using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Text;
using System.Configuration;

/// <summary>
/// GasCompanyInfo_DB 的摘要描述
/// </summary>
public class GasCompanyInfo_DB
{
	string KeyWord = string.Empty;
	public string _KeyWord { set { KeyWord = value; } }
	#region private
	string id = string.Empty;
	string guid = string.Empty;
	string 公司名稱 = string.Empty;
	string 事業部 = string.Empty;
	string 營業處廠 = string.Empty;
	string 中心庫區儲運課工場 = string.Empty;
	string 地址 = string.Empty;
	string 電話 = string.Empty;
	string fun2 = string.Empty;
	string 建立者 = string.Empty;
	DateTime 建立日期;
	string 修改者 = string.Empty;
	DateTime 修改日期;
	string 資料狀態 = string.Empty;
	#endregion
	#region public
	public string _id { set { id = value; } }
	public string _guid { set { guid = value; } }
	public string _公司名稱 { set { 公司名稱 = value; } }
	public string _事業部 { set { 事業部 = value; } }
	public string _營業處廠 { set { 營業處廠 = value; } }
	public string _中心庫區儲運課工場 { set { 中心庫區儲運課工場 = value; } }
	public string _地址 { set { 地址 = value; } }
	public string _電話 { set { 電話 = value; } }
	public string _fun2 { set { fun2 = value; } }
	public string _建立者 { set { 建立者 = value; } }
	public DateTime _建立日期 { set { 建立日期 = value; } }
	public string _修改者 { set { 修改者 = value; } }
	public DateTime _修改日期 { set { 修改日期 = value; } }
	public string _資料狀態 { set { 資料狀態 = value; } }
	#endregion

	 public DataSet GetCompanyList(string pStart, string pEnd)
	{
		SqlCommand oCmd = new SqlCommand();
		oCmd.Connection = new SqlConnection(ConfigurationManager.AppSettings["ConnectionString"]);
		StringBuilder sb = new StringBuilder();

		sb.Append(@"select [guid],[父層guid],[排序編號],[天然氣組織階層]
,[地址],[電話],[fun2]
,case when [中心庫區儲運課工場] is not null and [中心庫區儲運課工場]<>''  then [中心庫區儲運課工場]
when [營業處廠] is not null and [營業處廠]<>'' then [營業處廠]
when [事業部] is not null and [事業部]<>'' then [事業部]
else ''
end as [company] 
into #tmp
from [天然氣_業者基本資料表] 
where [資料狀態]='A' and [父層guid] is not null and [父層guid]<>'' ");

		if (KeyWord != "")
		{
			sb.Append(@"and (lower(
                                isnull(中心庫區儲運課工場,'')
                                ) like '%' + lower(@KeyWord) + '%')  ");
		}

		sb.Append(@"
select count(*) as total from #tmp

select * from (
           select ROW_NUMBER() over (order by 排序編號) itemNo,* from #tmp
)#tmp where itemNo between @pStart and @pEnd ");

		oCmd.CommandText = sb.ToString();
		oCmd.CommandType = CommandType.Text;
		SqlDataAdapter oda = new SqlDataAdapter(oCmd);
		DataSet ds = new DataSet();

		oCmd.Parameters.AddWithValue("@KeyWord", KeyWord);
		oCmd.Parameters.AddWithValue("@pStart", pStart);
		oCmd.Parameters.AddWithValue("@pEnd", pEnd);
		oda.Fill(ds);
		return ds;
	}

	public DataTable GetInfo()
	{
		SqlCommand oCmd = new SqlCommand();
		oCmd.Connection = new SqlConnection(ConfigurationManager.AppSettings["ConnectionString"]);
		StringBuilder sb = new StringBuilder();

		sb.Append(@"select * from 天然氣_業者基本資料表 where 資料狀態='A' and guid=@guid ");

		oCmd.CommandText = sb.ToString();
		oCmd.CommandType = CommandType.Text;
		SqlDataAdapter oda = new SqlDataAdapter(oCmd);
		DataTable ds = new DataTable();

		oCmd.Parameters.AddWithValue("@guid", guid);

		oda.Fill(ds);
		return ds;
	}
}