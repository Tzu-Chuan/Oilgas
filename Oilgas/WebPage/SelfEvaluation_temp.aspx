<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SelfEvaluation_temp.aspx.cs" Inherits="WebPage_SelfEvaluation_temp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title>自評表</title>
	<script type="text/javascript" src="../js/jquery-3.4.1.min.js"></script>
	<script type="text/javascript" src="../js/jquery.treetable.js"></script>
	<link href="../css/jquery.treetable.css" rel="stylesheet" />
	<link href="../css/jquery.treetable.theme.default.css" rel="stylesheet" />
	<script type="text/javascript">
		$(document).ready(function () {
			$("#example-basic").treetable({ expandable: true });

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
					$("#divlist").show();
				},
				success: function (data) {
					if ($(data).find("Error").length > 0)
						alert($(data).find("Error").attr("Message"));
					else {
						$("#divlist").empty();
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
									$(data).find("lv" + i).each(function (index) {
										// first Ver.
										//dataStr = '<div guid="' + $(this).attr("lvGuid") + '">';
										//dataStr += '<div>' + $(this).attr("lvName");
										//dataStr += '</div></div>';
										//$("#divlist").append(dataStr);

										// second Ver.
										dataStr = '<tr guid="' + $(this).attr("lvGuid") + '" data-tt-id="' + $(this).attr("lvGuid") + '">';
										dataStr += '<td>' + $(this).attr("lvName");
										dataStr += '</td></tr>';
										$("#tablist tbody").append(dataStr);
									});
								}
								else
									ParentLevel(data, i);
							}

							// question list
							var qStr = '';
							$(data).find("q").each(function () {
								// first Ver.
								//qStr = '<div guid="' + $(this).attr("qGuid") + '" style="margin-left:20px;">';
								//qStr += '<div>' + $(this).attr("qTitle");
								//qStr += '</div></div>';
								//$("#divlist div[guid='" + $(this).attr("pGuid") + "']").append(qStr);

								// second Ver.
								qStr += '<tr guid="' + $(this).attr("qGuid") + '"  data-tt-id="' + $(this).attr("lvGuid") + '" data-tt-parent-id="' + $(this).attr("pGuid") + '">';
								qStr += '<td>' + $(this).attr("qTitle");
								qStr += '</td></tr>';

								//check change item
								if ($(this).next().attr("pGuid") == undefined) {
									$("#tablist tbody tr[guid='" + $(this).attr("pGuid") + "']").after(qStr);
									qStr = '';
								}
							});

							
							$("#tablist").treetable({ expandable: true });
						}
					}
				}
			});
			
		});

		// 題目父階層
		function ParentLevel(xml, lv) {
			var dataStr = '';
			var parent_id = '';
			$(xml).find("lv" + lv).each(function (i) {
				if ($(this).attr("lvGuid") != undefined) {
					// first Ver.
					//dataStr = '<div guid="' + $(this).attr("lvGuid") + '" style="margin-left:20px;">';
					//dataStr += '<div>' + $(this).attr("lvName");
					//dataStr += '</div></div>';
					//$("#divlist div[guid='" + $(this).attr("pGuid") + "']").append(dataStr);

					// second Ver.
					dataStr += '<tr guid="' + $(this).attr("lvGuid") + '" data-tt-id="' + $(this).attr("lvGuid") + '" data-tt-parent-id="' + $(this).attr("pGuid") + '">';
					dataStr += '<td>' + $(this).attr("lvName");
					dataStr += '</td></tr>';

					//check change item
					if ($(this).next().attr("pGuid") == undefined) {
						$("#tablist tbody tr[guid='" + $(this).attr("pGuid") + "']").after(dataStr);
						dataStr = '';
					}
				}
			});
		}
	</script>
</head>
<body>
	<form id="form1" runat="server">
		<div id="loading">資料讀取中...</div>
		<%--<div id="divlist" style="display:none;"></div>--%>
		<table id="tablist" width="100%">
			<thead>
				<tr>
					<th>110年天然氣生產及進口事業輸儲設備查核查核項目</th>
				</tr>
			</thead>
			<tbody></tbody>
		</table>

		<table id="example-basic">
        <caption>Basic jQuery treetable Example</caption>
        <thead>
          <tr>
            <th>Tree column</th>
            <th>Additional data</th>
          </tr>
        </thead>
        <tbody>
          <tr data-tt-id="1">
            <td>Node 1: Click on the icon in front of me to expand this branch.</td>
            <td>I live in the second column.</td>
          </tr>
          <tr data-tt-id="1.1" data-tt-parent-id="1">
            <td>Node 1.1: Look, I am a table row <em>and</em> I am part of a tree!</td>
            <td>Interesting.</td>
          </tr>
          <tr data-tt-id="1.1.1" data-tt-parent-id="1.1">
            <td>Node 1.1.1: I am part of the tree too!</td>
            <td>That's it!</td>
          </tr>
          <tr data-tt-id="2">
            <td>Node 2: I am another root node, but without children</td>
            <td>Hurray!</td>
          </tr>
        </tbody>
      </table>
	</form>
</body>
</html>
