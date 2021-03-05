<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SelfEvaluation_temp.aspx.cs" Inherits="WebPage_SelfEvaluation_temp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title>自評表</title>
	<script type="text/javascript" src="../js/jquery-3.4.1.min.js"></script>
	<script type="text/javascript">
		$(document).ready(function () {
			$.ajax({
				type: "POST",
				async: true, //在沒有返回值之前,不會執行下一步動作
				url: "../Handler/SelfEvaluation_QuestionList.aspx",
				error: function (xhr) {
					alert("Error: " + xhr.status);
					console.log(xhr.responseText);
				},
				complete: function () {
					$("#loading").hide();
					$("#tablist").show();
				},
				success: function (data) {
					if ($(data).find("Error").length > 0)
						alert($(data).find("Error").attr("Message"));
					else {
						$("#tablist").empty();
						if ($(data).find("lv1").length > 0) {
							// get max level
							var tCont = 1;
							var xLv = 0;
							do {
								xLv++;
								tCont++;
							}
							while ($(data).find("lv" + tCont).length > 0)

							// parent list
							for (var i = 1; i <= xLv; i++) {
								if (i == 1) {
									var dataStr = '';
									$(data).find("lv" + i).each(function () {
										dataStr = '<div guid="' + $(this).attr("lvGuid") + '">';
										dataStr += '<div>' + $(this).attr("lvName");
										dataStr += '</div></div>';
										$("#tablist").append(dataStr);
									});
								}
								else
									ParentLevel(data, i);
							}

							// question list
							var qStr = '';
							$(data).find("q").each(function () {
								qStr = '<div guid="' + $(this).attr("qGuid") + '" style="margin-left:20px;">';
								qStr += '<div>' + $(this).attr("qTitle");
								qStr += '</div></div>';
								$("#tablist div[guid='" + $(this).attr("pGuid") + "']").append(qStr);
							});
						}
					}
				}
			});
		});

		// 題目父階層
		function ParentLevel(xml,lv) {
			$(xml).find("lv" + lv).each(function (i) {
				if ($(this).attr("lvGuid") != "") {
					dataStr = '<div guid="' + $(this).attr("lvGuid") + '" style="margin-left:20px;">';
					dataStr += '<div>' + $(this).attr("lvName");
					dataStr += '</div></div>';
					$("#tablist div[guid='" + $(this).attr("pGuid") + "']").append(dataStr);
				}
			});
		}
	</script>
</head>
<body>
	<form id="form1" runat="server">
		<div id="loading">資料讀取中...</div>
		<div id="tablist" style="display:none;"></div>
	</form>
</body>
</html>
