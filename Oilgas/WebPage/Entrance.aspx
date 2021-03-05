<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Entrance.aspx.cs" Inherits="WebPage_Entrance" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
			登入者名稱:<%= name %>
        </div>
		<div><a href="SelfEvaluation_temp.aspx">自評表</a></div>
    </form>
</body>
</html>
