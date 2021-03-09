<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SignIn.aspx.cs" Inherits="WebPage_SignIn" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<title>石油與天然氣登入</title>
<script type="text/javascript" src="../js/jquery-3.4.1.min.js"></script>

	<script type="text/javascript">
		$(document).ready(function () {
			$(document).on("keyup", "body", function (e) {
				if (e.keyCode == 13)
					$("#lgbtn").click();
			});

			$(document).on("click", "#lgbtn", function () {
				$("#errMsg").empty();
				$.ajax({
					type: "POST",
					async: true, //在沒有返回值之前,不會執行下一步動作
					url: "../Handler/Login.aspx",
					data: {
						acc: $("#acStr").val(),
						pw: $("#pStr").val(),
						vCode: $("#codeStr").val()
					},
					error: function (xhr) {
						$("#errMsg").html("Error: " + xhr.status);
						console.log(xhr.responseText);
					},
					success: function (data) {
						if ($(data).find("Error").length > 0)
							$("#errMsg").html($(data).find("Error").attr("Message"));
						else {
							location.href = "Entrance_temp.aspx";
						}
					}
				});
			});
		});

		function changeCode() {
			$("#imgCode").attr("src", "../handler/ValidationCode.aspx?" + Math.random());
		}
	</script>
</head>
<body>
    <form id="form1">
        <div>
			<table align="center">
				<tr>
					<td align="right">帳號：</td>
					<td colspan="2"><input type="text" id="acStr" style="width:99%" /></td>
				</tr>
				<tr>
					<td align="right">密碼：</td>
					<td colspan="2"><input type="password" id="pStr" style="width:99%" /></td>
				</tr>
				<tr>
					<td align="right">驗証碼：</td>
					<td><input type="text" id="codeStr" maxlength="4" />&nbsp;&nbsp;<a href="javascript:void(0);" onclick="changeCode()"><img src="../images/refresh.png" alt="變更驗證碼" height="20" /></a></td>
					<td><img src="../handler/ValidationCode.aspx" alt="驗證碼" id="imgCode" height="30" /></td>
				</tr>
			</table>
        </div>
		<div id="errMsg" style="color:red; text-align:center; "></div>
		<div style="text-align:center;"><input id="lgbtn" type="button" value="登入" /></div>
    </form>
</body>
</html>
