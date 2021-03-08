<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Entrance_temp.aspx.cs" Inherits="WebPage_Entrance_temp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>入口</title>
<script type="text/javascript" src="../js/jquery-3.4.1.min.js"></script>
</head>
<body>
	<input type="hidden" id="Competence" value="identity" />
    <form id="form1" runat="server">
        <div>
			登入者名稱:<%= name %>
        </div>
		<div><a href="SelfEvaluation_temp.aspx">自評表</a></div>
    </form>
</body>
</html>
