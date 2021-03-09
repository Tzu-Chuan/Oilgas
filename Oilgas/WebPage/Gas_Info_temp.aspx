<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Gas_Info_temp.aspx.cs" Inherits="WebPage_Gas_Info_temp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<script type="text/javascript" src="../js/jquery-3.4.1.min.js"></script>
	<title>天然氣基本資料</title>

	<script type="text/javascript">
		$(document).ready(function () {
			GetInfo()
		});

		function GetInfo() {
			$.ajax({
				type: "POST",
				async: true, //在沒有返回值之前,不會執行下一步動作
				url: "../Handler/GetGasInfo.aspx",
				error: function (xhr) {
					alert("Error: " + xhr.status);
					console.log(xhr.responseText);
				},
				success: function (data) {
					if ($(data).find("Error").length > 0)
						alert($(data).find("Error").attr("Message"));
					else {
						if ($(data).find("data_item").length > 0) {
							$(data).find("data_item").each(function () {
								$("#name").html($(this).children("中心庫區儲運課工場").text().trim());
							});
						}
					}
				}
			});
		}
	</script>
</head>
<body>
	<form id="form1">
		<div style="margin-bottom:20px;">
			<div>事業名稱: <span id="name"></span></div>
		</div>
		<div><a href="SelfEvaluation_temp.aspx">自評表</a></div>
	</form>
</body>
</html>
