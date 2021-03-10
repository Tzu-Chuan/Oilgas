<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Oil_Info_temp.aspx.cs" Inherits="WebPage_Oil_Info_temp" %>

<!DOCTYPE html>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
	<script type="text/javascript" src="../js/jquery-3.4.1.min.js"></script>
	<script type="text/javascript" src="../js/NickCommon.js"></script>
    <title>石油基本資料</title>
</head>
<body>
    <form id="form1">
        <input type="hidden" id="Competence" value="<%= identity %>" />
		<div style="margin-bottom:20px;">
			<div>事業名稱: <span id="name"></span></div>
		</div>
		<div><input id="EvalBtn" type="button" value="自評表" /></div>
    </form>
</body>
</html>
