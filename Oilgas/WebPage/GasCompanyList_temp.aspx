<%@ Page Language="C#" AutoEventWireup="true" CodeFile="GasCompanyList_temp.aspx.cs" Inherits="WebPage_GasCompanyList_temp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
	<script type="text/javascript" src="../js/jquery-3.4.1.min.js"></script>
	<script type="text/javascript" src="../js/PageList.js"></script>
    <title>天然氣業者列表</title>
	<script type="text/javascript">
		$(document).ready(function () {
			getData(0);

			$(document).on("click", "input[name='editbtn']", function () {
				location.href = "Gas_Info_temp.aspx?cp=" + $(this).attr("aid");
			});
		}); // end js

		function getData(p) {
			$.ajax({
				type: "POST",
				async: false, //在沒有返回值之前,不會執行下一步動作
				url: "../Handler/GetGasCompanyList.aspx",
				data: {
					SearchStr: $("#SearchStr").val(),
					PageNo: p,
					PageSize: Page.Option.PageSize
				},
				error: function (xhr) {
					alert("Error: " + xhr.status);
					console.log(xhr.responseText);
				},
				success: function (data) {
					if ($(data).find("Error").length > 0) {
						alert($(data).find("Error").attr("Message"));
					}
					else {
						$("#tablist tbody").empty();
						var tabstr = '';
						if ($(data).find("data_item").length > 0) {
							$(data).find("data_item").each(function (i) {
								tabstr += '<tr>';
								tabstr += '<td align="center" nowrap="nowrap">' + $(this).children("itemNo").text().trim() + '</td>';
								tabstr += '<td align="center" nowrap="nowrap">' + $(this).children("中心庫區儲運課工場").text().trim() + '</td>';
								tabstr += '<td align="center" nowrap="nowrap"><input type="button" name="editbtn" value="檢視" aid="'+$(this).children("guid").text().trim()+'"></td>';
								tabstr += '</tr>';
							});
						}
						else
							tabstr += '<tr><td colspan="3">查詢無資料</td></tr>';
						$("#tablist tbody").append(tabstr);
						Page.Option.Selector = "#pageblock";
						Page.CreatePage(p, $("total", data).text());
					}
				}
			});
        }
	</script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
			<table id="tablist" style="width:100%;">
				<thead>
					<tr>
						<th>年度</th>
						<th>業者</th>
						<th>功能</th>
					</tr>
				</thead>
				<tbody></tbody>
			</table>
			<div class="margin10B margin10T textcenter">
				<div id="pageblock"></div>
			</div>
        </div>
    </form>
</body>
</html>
