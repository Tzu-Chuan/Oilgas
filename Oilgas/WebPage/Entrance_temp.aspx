<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Entrance_temp.aspx.cs" Inherits="WebPage_Entrance_temp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title>入口</title>
	<script type="text/javascript" src="../js/jquery-3.4.1.min.js"></script>
	<script type="text/javascript">
		$(document).ready(function () {
			switch ($("#EnterCtrl").val()) {
				case "oil":
					$("#dvGas").hide();
					break;
				case "gas":
					$("#dvOil").hide();
					break;
			}
		});
	</script>
</head>
<body>
	<input type="hidden" id="Competence" value="<%= identity %>" />
	<input type="hidden" id="EnterCtrl" value="<%= EnterCtrl %>" />
	<form id="form1">
		<div>
			登入者名稱:<%= name %>
		</div>
		<div id="dvOil"><a href="Oil_Info_temp.aspx">石油入口</a></div>
		<div id="dvGas"><a href="GasCompanyList_temp.aspx">天然氣入口</a></div>
	</form>
</body>
</html>
