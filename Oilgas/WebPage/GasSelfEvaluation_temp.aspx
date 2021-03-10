<%@ Page Language="C#" AutoEventWireup="true" CodeFile="GasSelfEvaluation_temp.aspx.cs" Inherits="WebPage_GasSelfEvaluation_temp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title>自評表</title>
	<script type="text/javascript" src="../js/jquery-3.4.1.min.js"></script>
	<script type="text/javascript" src="../js/NickCommon.js"></script>
	<script type="text/javascript" src="../js/jquery-ui.1.12.1.js"></script>
	<script type="text/javascript" src="../js/jquery.treetable.js"></script>
	<link href="../css/jquery.treetable.css" rel="stylesheet" />
	<link href="../css/jquery.treetable.theme.default.css" rel="stylesheet" />
	<link href="../css/jquery-ui.css" rel="stylesheet" />
	<script type="text/javascript">
		$(document).ready(function () {
			ddlYear();
			GetList();
			if ($("#Competence").val() == "01")
				$(".cRadio").prop("disabled", true);
			// 業者隱藏題目
			else if ($("#Competence").val() == "02") {
				hideQuestion();
				$(".mRadio").prop("disabled", true);
			}
			
			// Get Answer
			GetAns();

			//$(".mRadio[value='01']").prop("checked", true);

			// 送出自評表
			$(document).on("click", "#subbtn", function () {
				// Get form
				var form = $('#form1')[0];

				// Create an FormData object 
				var data = new FormData(form);

				// If you want to add an extra field for the FormData
				data.append("cpid", $.getQueryString("cp"));

				$.ajax({
					type: "POST",
					async: true, //在沒有返回值之前,不會執行下一步動作
					url: "../Handler/GasSaveSelfEvaluation.aspx",
					data: data,
					processData: false,
					contentType: false,
					cache: false,
					error: function (xhr) {
						$("#errMsg").html("Error: " + xhr.status);
						console.log(xhr.responseText);
					},
					beforeSend: function () {
						$("#subbtn").val("資料儲存中...");
						$("#subbtn").prop("disabled", true);
					},
					complete: function () {
						$("#subbtn").val("儲存");
						$("#subbtn").prop("disabled", false);
					},
					success: function (data) {
						if ($(data).find("Error").length > 0) {
							$("#errMsg").html($(data).find("Error").attr("Message"));
						}
						else {
							alert($("Response", data).text());
							//location.href = "LessonManage.aspx";
						}
					}
				});
			});

			$(document).on("change", ".psCtrl", function () {
				if (this.value != "01")
					$(this).closest("tr").find("input[name='psbtn']").show();
				else
					$(this).closest("tr").find("input[name='psbtn']").hide();
			});

			// 編輯備註
			$(document).on("click", "input[name='psbtn']", function () {
				$("#qGuid").val($(this).attr("qid"));
				$("#psStr").val($("#ps_" + $(this).attr("qid")).val());
				doOpenDialog();
			});

			// 儲存備註
			$(document).on("click", "#ps_savebtn", function () {
				var simpleStr = $("#psStr").val();
				simpleStr = (simpleStr.length > 15) ? simpleStr.substr(0, 15) + "..." : simpleStr;
				$($("#sp_" + $("#qGuid").val())).html(simpleStr);
				$($("#ps_" + $("#qGuid").val())).val($("#psStr").val());
				$('#psDialog').dialog('close');
			});
		}); // end js

		function GetList() {
			$.ajax({
				type: "POST",
				async: false, //在沒有返回值之前,不會執行下一步動作
				url: "../Handler/GetSelfEvaluation_QuestionList.aspx",
				data: {
					year: $("#year").val()
				},
				error: function (xhr) {
					$("#errMsg").html("Error: " + xhr.status);
					console.log(xhr.responseText);
				},
				success: function (data) {
					if ($(data).find("Error").length > 0)
						$("#errMsg").html($(data).find("Error").attr("Message"));
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
										dataStr += '<td>' + $(this).attr("lvName") + '</td>';
										dataStr += '<td></td><td></td><td></td>';
										dataStr += '</tr>'
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
								qStr += '<td>' + $(this).attr("qTitle") + '</td>';
								qStr += '<td>';
								qStr += '<input type="radio" name="cg_' + $(this).attr("qGuid") + '" value="01" class="cRadio"  />符合';
								qStr += '<input type="radio" name="cg_' + $(this).attr("qGuid") + '" value="02" class="cRadio" />不符合';
								qStr += '<input type="radio" name="cg_' + $(this).attr("qGuid") + '" value="03" class="cRadio" />不適用';
								qStr += '</td>';
								qStr += '<td>';
								qStr += '<input type="radio" name="mg_' + $(this).attr("qGuid") + '" value="01" class="psCtrl mRadio" />符合';
								qStr += '<input type="radio" name="mg_' + $(this).attr("qGuid") + '" value="02" class="psCtrl mRadio" />不符合';
								qStr += '<input type="radio" name="mg_' + $(this).attr("qGuid") + '" value="03" class="psCtrl mRadio" />不適用';
								qStr += '</td>';
								qStr += '<td>';
								qStr += '<span id="sp_' + $(this).attr("qGuid") + '"></span>';
								qStr += '<input type="button" qid="' + $(this).attr("qGuid") + '" value="編輯" name="psbtn" style="display:none;" />';
								qStr += '<input type="hidden" id="ps_' + $(this).attr("qGuid") + '" name="ps_' + $(this).attr("qGuid") + '" />';
								qStr += '</td>';
								qStr += '</tr>';

								//check change item
								if ($(this).next().attr("pGuid") == undefined) {
									$("#tablist tbody tr[guid='" + $(this).attr("pGuid") + "']").after(qStr);
									qStr = '';
								}
							});

							$("#tablist").treetable({
								expandable: false, // 展開or收合
								column: 0
							});
						}
					}
				}
			});
		}

		// 題目父階層
		function ParentLevel(xml, lv) {
			var dataStr = '';
			$(xml).find("lv" + lv).each(function (i) {
				if ($(this).attr("lvGuid") != undefined) {
					// first Ver.
					//dataStr = '<div guid="' + $(this).attr("lvGuid") + '" style="margin-left:20px;">';
					//dataStr += '<div>' + $(this).attr("lvName");
					//dataStr += '</div></div>';
					//$("#divlist div[guid='" + $(this).attr("pGuid") + "']").append(dataStr);

					// second Ver.
					dataStr += '<tr guid="' + $(this).attr("lvGuid") + '" data-tt-id="' + $(this).attr("lvGuid") + '" data-tt-parent-id="' + $(this).attr("pGuid") + '">';
					dataStr += '<td>' + $(this).attr("lvName")+ '</td>';
					dataStr += '<td></td><td></td><td></td>';
					dataStr += '</tr>';

					//check change item
					if ($(this).next().attr("pGuid") == undefined) {
						$("#tablist tbody tr[guid='" + $(this).attr("pGuid") + "']").after(dataStr);
						dataStr = '';
					}
				}
			});
		}

		function hideQuestion() {
			$.ajax({
				type: "POST",
				async: false, //在沒有返回值之前,不會執行下一步動作
				url: "../Handler/GetGasExclude.aspx",
				error: function (xhr) {
					$("#errMsg").html("Error: " + xhr.status);
					console.log(xhr.responseText);
				},
				success: function (data) {
					if ($(data).find("Error").length > 0)
						$("#errMsg").html($(data).find("Error").attr("Message"));
					else {
						if ($(data).find("data_item").length > 0) {
							$(data).find("data_item").each(function () {
								if ($(this).children("排除題目guid").text().trim() != "")
									$("#tablist tbody").find("tr[guid='" + $(this).children("排除題目guid").text().trim() + "']").hide();
								else {
									$("#tablist tbody").find("tr[guid='" + $(this).children("排除分類guid").text().trim() + "']").hide();
									$("#tablist tbody").find("tr[data-tt-parent-id='" + $(this).children("排除分類guid").text().trim() + "']").hide();
								}
							});
						}
					}
				}
			});
		}

		function GetAns() {
			$.ajax({
				type: "POST",
				async: false, //在沒有返回值之前,不會執行下一步動作
				url: "../Handler/GetGasAnswer.aspx",
				data: {
					cpid: $.getQueryString("cp"),
					year: $("#year").val()
				},
				error: function (xhr) {
					$("#errMsg").html("Error: " + xhr.status);
					console.log(xhr.responseText);
				},
				complete: function () {
					$("#loading").hide();
					$(".ShowCss").show();
				},
				success: function (data) {
					if ($(data).find("Error").length > 0)
						$("#errMsg").html($(data).find("Error").attr("Message"));
					else {
						if ($(data).find("data_item").length > 0) {
							$(data).find("data_item[填寫人員類別='01']").each(function () {
								$("input[name='mg_" + $(this).attr("題目guid") + "'][value='" + $(this).attr("答案") + "']").prop("checked", true);
								$("input[name='ps_" + $(this).attr("題目guid") + "']").val($(this).attr("委員意見"));
								$("#sp_" + $(this).attr("題目guid")).html($(this).attr("委員意見"));
								if ($(this).attr("答案") != "01" && $("#Competence").val() != "02")
									$("input[name='psbtn'][qid='" + $(this).attr("題目guid") + "']").show();
							});
							$(data).find("data_item[填寫人員類別='02']").each(function () {
								$("input[name='cg_" + $(this).attr("題目guid") + "'][value='" + $(this).attr("答案") + "']").prop("checked", true);
							});
						}
					}
				}
			});
		}

		function ddlYear() {
			$.ajax({
				type: "POST",
				async: false, //在沒有返回值之前,不會執行下一步動作
				url: "../Handler/GetQuestionYear.aspx",
				error: function (xhr) {
					$("#errMsg").html("Error: " + xhr.status);
					console.log(xhr.responseText);
				},
				success: function (data) {
					if ($(data).find("Error").length > 0)
						$("#errMsg").html($(data).find("Error").attr("Message"));
					else {
						$("#year").empty();
						var ddlstr = '';
						if ($(data).find("data_item").length > 0) {
							$(data).find("data_item").each(function () {
								ddlstr += '<option value="' + $(this).children("天然氣自評表題目年份").text().trim() + '">' + $(this).children("天然氣自評表題目年份").text().trim() + '</option>';
							});
						}
						$("#year").append(ddlstr);
					}
				}
			});
		}

		function doOpenDialog() {
			$("#psDialog").dialog({
				title: "備註",
				autoOpen: false,
				width: 450,
				height: 250,
				closeOnEscape: false,
				position: { my: "center", at: "center", of: window },
				modal: true,
				resizable: false,
				close: function (event, ui) {
				}
			});

			$("#psDialog").dialog("open");
		}
	</script>
</head>
<body>
	<input type="hidden" id="Competence" value="<%= identity %>" />
	<form id="form1">
		<div style="margin-bottom:20px;">年度: 
			<select id="year"></select>
		</div>
		<div id="loading">資料讀取中...</div>
		<%--<div id="divlist" style="display:none;"></div>--%>
		<table id="tablist" width="100%"  class="ShowCss" style="display:none;">
			<thead>
				<tr>
					<th>110年天然氣生產及進口事業輸儲設備查核查核項目</th>
					<th>業者</th>
					<th>委員</th>
					<th>備註</th>
				</tr>
			</thead>
			<tbody></tbody>
		</table>
		<div id="errMsg" style="color:red;"></div>
		<input type="button" id="subbtn" value="儲存" class="ShowCss" style="display:none;" />
		<!--dialog-->
		<input type="hidden" id="qGuid" />
		<div id="psDialog" style="display:none;">
			<table style="width:100%;">
				<tr>
					<th>備註</th>
					<td><textarea id="psStr" rows="5" style="width:100%;"></textarea></td>
				</tr>
				<tr>
					<td colspan="2" style="text-align:right;">
						<input type="button" value="取消" onclick="javascript: $('#psDialog').dialog('close');" />
						<input type="button" id="ps_savebtn" value="儲存" />
					</td>
				</tr>
			</table>
		</div>
	</form>
</body>
</html>
