<%@ Page Language="C#" AutoEventWireup="true" CodeFile="OilSelfEvaluation.aspx.cs" Inherits="WebPage_OilSelfEvaluation" %>

<!DOCTYPE html>

<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta http-equiv="X-UA-Compatible" content="IE=11; IE=10; IE=9; IE=8" />
	<meta name="viewport" content="width=device-width, initial-scale=1" />
	<meta name="keywords" content="關鍵字內容" />
	<meta name="description" content="描述" /><!--告訴搜尋引擎這篇網頁的內容或摘要。--> 
	<meta name="generator" content="Notepad" /><!--告訴搜尋引擎這篇網頁是用什麼軟體製作的。--> 
	<meta name="author" content="工研院 資訊處" /><!--告訴搜尋引擎這篇網頁是由誰製作的。-->
	<meta name="copyright" content="本網頁著作權所有" /><!--告訴搜尋引擎這篇網頁是...... --> 
	<meta name="revisit-after" content="3 days" /><!--告訴搜尋引擎3天之後再來一次這篇網頁，也許要重新登錄。-->
	<title>天然氣事業輸儲設備查核及檢測資訊系統</title>
	<!--#include file="Head_Include.html"-->
	<script type="text/javascript">
			$(document).ready(function () {
				GetList();

                $("#lbl_CompanyName").html($("#CompanyName").val());

                // disabled
				switch ($("#Competence").val()) {
				    case "01":
				    	$(".cRadio").prop("disabled", true);
				    	break;
				    case "02":
				    	RemoveQuestion(); // 業者不須自評
                        $(".mRadio").prop("disabled", true);
                        $(".mRef").prop("disabled", true);
				    	break;
                    case "03":
                        $(".cRadio").prop("disabled", true);
				        break;
				    case "04":
					    $("#subbtn").hide();
					    $("#subbtnTop").hide();
					    break;
				}

				// Get Answer
				GetAns();

				//$(".mRadio[value='01']").prop("checked", true);

				// 全部展開
				$(document).on("click", "#btnallopen", function () {
					$("#tablist").treetable('expandAll');
					return false;
				});

				// 全部收合
				$(document).on("click", "#btnallclose", function () {
					$("#tablist").treetable('collapseAll');
					return false;
				});

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
						url: "../Handler/OilSaveSelfEvaluation.aspx",
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

                $(document).on("click", "#subbtnTop", function () {
					// Get form
					var form = $('#form1')[0];

					// Create an FormData object 
					var data = new FormData(form);

					// If you want to add an extra field for the FormData
					data.append("cpid", $.getQueryString("cp"));

					$.ajax({
						type: "POST",
						async: true, //在沒有返回值之前,不會執行下一步動作
						url: "../Handler/OilSaveSelfEvaluation.aspx",
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
					if (this.value != "01") {
						$(this).closest("tr").find("span").show();
						$(this).closest("tr").find("input[name='psbtn']").show();
					}
					else {
						//$(this).closest("tr").find("td:last-child span").hide();
						//$(this).closest("tr").find("a[name='psbtn']").hide();
					}
				});

				// 編輯備註
				$(document).on("click", "input[name='psbtn']", function () {
					$("#qGuid").val($(this).attr("qid"));
                    $("#psStr").val($("#ps_" + $(this).attr("qid")).val());

                    $.ajax({
			        	type: "POST",
			        	async: false, //在沒有返回值之前,不會執行下一步動作
			        	url: "../Handler/GetOilCommitteeSuggestion.aspx",
                        data: {
			        		qid: $("#qGuid").val()
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
			        			$("#tablistOpen tbody").empty();
                                var tabstr = '';
                                var item = '';
                                var ans = '';                                
			        			if ($(data).find("data_item").length > 0) {
                                    $(data).find("data_item").each(function (i) {
                                        item = $(this).children("答案").text().trim();
                                        switch (item) {
                                            case "01":
                                                ans = "符合";
                                                break;
                                            case "02":
                                                ans = "不符合";
                                                break;
                                            case "03":
                                                ans = "不適用";
                                                break;
                                        }
			        					tabstr += '<tr>';
			        					tabstr += '<td nowrap="nowrap" style="display:none">';
			        					tabstr += '<input type="hidden" aid="' + $(this).children("委員guid").text().trim() + '" />';
			        					tabstr += '</td>';
			        					tabstr += '<td nowrap="nowrap">' + $(this).children("委員").text().trim() + '</td>';
			        					tabstr += '<td nowrap="nowrap">' + ans + '</td>';
			        					tabstr += '<td nowrap="nowrap">' + $(this).children("檢視文件").text().trim() + '</td>';
			        					tabstr += '<td nowrap="nowrap">' + $(this).children("委員意見").text().trim() + '</td>';
			        					tabstr += '<td nowrap="nowrap">' + $(this).children("修改日期").text().trim() + '</td>';
			        					tabstr += '</tr>';
			        				});
			        			}
			        			else
			        				tabstr += '<tr><td colspan="5">查詢無資料</td></tr>';
			        			$("#tablistOpen tbody").append(tabstr);
			        		}
			        	}
			        });

					doOpenDialog();
				});

				// 儲存備註
				$(document).on("click", "#ps_savebtn", function () {
					var simpleStr = $("#psStr").val();
					simpleStr = (simpleStr.length > 15) ? simpleStr.substr(0, 15) + "..." : simpleStr;
					$($("#sp_" + $("#qGuid").val())).html(simpleStr);
					$($("#sp_" + $("#qGuid").val())).data('powertip', $("#psStr").val());
					$($("#ps_" + $("#qGuid").val())).val($("#psStr").val());
					$.colorbox.close();
				});
			}); // end js

			function GetList() {
				$.ajax({
					type: "POST",
					async: false, //在沒有返回值之前,不會執行下一步動作
					url: "../Handler/GetSelfEvaluation_QuestionList.aspx",
					data: {
						category: "oil",
						year: "110"
					},
					error: function (xhr) {
						$("#errMsg").html("Error: " + xhr.status);
						console.log(xhr.responseText);
					},
					success: function (data) {
						if ($(data).find("Error").length > 0)
							$("#errMsg").html($(data).find("Error").attr("Message"));
						else {
							$("#tablist tbody").empty();
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
											dataStr = '<tr guid="' + $(this).attr("lvGuid") + '" data-tt-id="' + $(this).attr("lvGuid") + '">';
											dataStr += '<td>' + $(this).attr("lvName") + '</td>';
											dataStr += '<td></td><td></td>';
											dataStr += '<td style="text-align:center;">' + $(this).attr("ref") + '</td>';
                                            dataStr += '<td></td>';
                                            dataStr += '<td></td>';
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
									qStr += '<tr guid="' + $(this).attr("qGuid") + '"  data-tt-id="' + $(this).attr("lvGuid") + '" data-tt-parent-id="' + $(this).attr("pGuid") + '" class="son' + xLv + '">';
									qStr += '<td>' + $(this).attr("qTitle") + '</td>';
									qStr += '<td style="text-align:center;">';
									qStr += '<input type="radio" name="cg_' + $(this).attr("qGuid") + '" value="01" class="cRadio"  />符合';
									qStr += '<input type="radio" name="cg_' + $(this).attr("qGuid") + '" value="02" class="cRadio" />不符合';
									qStr += '<input type="radio" name="cg_' + $(this).attr("qGuid") + '" value="03" class="cRadio" />不適用';
									qStr += '</td>';
									qStr += '<td style="text-align:center;">';
									qStr += '<input type="radio" name="mg_' + $(this).attr("qGuid") + '" value="01" class="psCtrl mRadio" />符合';
									qStr += '<input type="radio" name="mg_' + $(this).attr("qGuid") + '" value="02" class="psCtrl mRadio" />不符合';
									qStr += '<input type="radio" name="mg_' + $(this).attr("qGuid") + '" value="03" class="psCtrl mRadio" />不適用';
									qStr += '</td>';
									qStr += '<td style="text-align:center;">';
									qStr += '<input type="text" class="inputex mRef" name="vf_' + $(this).attr("qGuid") + '" />';
									qStr += '</td>';
									qStr += '<td class="font-normal">';
									qStr += '<span id="sp_' + $(this).attr("qGuid") + '" class="itemhint" title="" style="display:none;"></span>';
									qStr += '<input type="hidden" id="ps_' + $(this).attr("qGuid") + '" name="ps_' + $(this).attr("qGuid") + '" />';
									qStr += '</td>';
									qStr += '<td>';
									qStr += '<input type="button" value="意見列表" qid="' + $(this).attr("qGuid") + '" name="psbtn" title="意見列表" style="display:none;" />';
									qStr += '</td>';
									qStr += '</tr>';

									//check change item
									if ($(this).next().attr("pGuid") == undefined) {
										$("#tablist tbody tr[guid='" + $(this).attr("pGuid") + "']").after(qStr);
										qStr = '';
									}
								});

								$("#tablist").treetable({
									expandable: true, // 展開or收合
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
				var trrCss = (lv == 2) ? "" : (lv-1);
				$(xml).find("lv" + lv).each(function (i) {
					if ($(this).attr("lvGuid") != undefined) {
						dataStr += '<tr guid="' + $(this).attr("lvGuid") + '" data-tt-id="' + $(this).attr("lvGuid") + '" data-tt-parent-id="' + $(this).attr("pGuid") + '" class="son' + trrCss + '">';
						dataStr += '<td>' + $(this).attr("lvName") + '</td>';
						dataStr += '<td></td><td></td>';
						dataStr += '<td style="text-align:center;">' + $(this).attr("ref") + '</td>';
                        dataStr += '<td></td>';
                        dataStr += '<td></td>';
						dataStr += '</tr>';

						//check change item
						if ($(this).next().attr("pGuid") == undefined) {
							$("#tablist tbody tr[guid='" + $(this).attr("pGuid") + "']").after(dataStr);
							dataStr = '';
						}
					}
				});
			}

			function RemoveQuestion() {
				$.ajax({
					type: "POST",
					async: false, //在沒有返回值之前,不會執行下一步動作
					url: "../Handler/GetOilExclude.aspx",
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
										$("#tablist tbody").find("tr[guid='" + $(this).children("排除題目guid").text().trim() + "']").remove();
									else {
										$("#tablist tbody").find("tr[guid='" + $(this).children("排除分類guid").text().trim() + "']").remove();
										$("#tablist tbody").find("tr[data-tt-parent-id='" + $(this).children("排除分類guid").text().trim() + "']").remove();
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
					url: "../Handler/GetOilAnswer.aspx",
					data: {
						cpid: $.getQueryString("cp"),
						year: "110"
					},
					error: function (xhr) {
						$("#errMsg").html("Error: " + xhr.status);
						console.log(xhr.responseText);
					},
					success: function (data) {
						if ($(data).find("Error").length > 0)
							$("#errMsg").html($(data).find("Error").attr("Message"));
						else {
							if ($(data).find("data_item").length > 0) {
								$(data).find("data_item[填寫人員類別='01']").each(function () {
									$("input[name='mg_" + $(this).attr("題目guid") + "'][value='" + $(this).attr("答案") + "']").prop("checked", true);
                                    $("input[name='ps_" + $(this).attr("題目guid") + "']").val($(this).attr("委員意見"));
                                    $("input[name='vf_" + $(this).attr("題目guid") + "']").val($(this).attr("檢視文件"));
									var simpleStr = ($(this).attr("委員意見").length > 15) ? $(this).attr("委員意見").substr(0, 15) + "..." : $(this).attr("委員意見");
									$("#sp_" + $(this).attr("題目guid")).html(simpleStr);
									$("#sp_" + $(this).attr("題目guid")).attr("title", $(this).attr("委員意見"));
                                    if ($(this).attr("答案") != "01" && $("#Competence").val() != "02" && $(this).attr("答案") != "") {
                                        $("input[name='psbtn'][qid='" + $(this).attr("題目guid") + "']").show();
                                    } 
									$("#sp_" + $(this).attr("題目guid")).show();
								});
								$(data).find("data_item[填寫人員類別='02']").each(function () {
									$("input[name='cg_" + $(this).attr("題目guid") + "'][value='" + $(this).attr("答案") + "']").prop("checked", true);
                                });                                
							}
						}
					}
				});
			}

			function doOpenDialog() {
				var WinHeight = $("html").height();
				var ColHeight = WinHeight * 0.6;
				$.colorbox({ inline: true, href: "#checklistedit", width: "100%", maxWidth: "800", maxHeight: ColHeight, opacity: 0.5 });
			}
		</script>
</head>
<body class="bgB">
	<!-- 開頭用div:修正mmenu form bug -->
	<div>
	<input type="hidden" id="Competence" value="<%= identity %>" />
	<input type="hidden" id="CompanyName" value="<%= companyName %>" />
	<input type="hidden" id="qGuid" />
	<form id="form1">
		<!-- Preloader -->
		<div id="preloader" >
			<div id="status" >
		<div id="CSS3loading">
		<!-- css3 loading -->
		<div class="sk-three-bounce">
			  <div class="sk-child sk-bounce1"></div>
			  <div class="sk-child sk-bounce2"></div>
			  <div class="sk-child sk-bounce3"></div>
		</div> 
		<!-- css3 loading -->
		<span id="loadingword">資料讀取中，請稍待...</span> 
		</div><!-- CSS3loading -->  
			</div><!-- status -->
		</div><!-- preloader -->

		<div class="container BoxBgWa BoxShadowD">
			<div class="WrapperBody" id="WrapperBody">
				<!--#include file="OilHeader.html"-->

				<div id="ContentWrapper">
					<div class="container margin15T">
						<div class="padding10ALL">
							<div class="filetitlewrapper">
								<span class="filetitle font-size7">
                                    <label id="lbl_CompanyName"></label>
								</span>
								<span class="btnright">
									<div class="font-size4 font-normal">
                                        <span style="color:red">* 請先點選儲存再離開表單</span> 
                                        <input type="button" id="subbtnTop" value="儲存" class="genbtn" />
										<i class="fa fa-file-word-o IconCc" aria-hidden="true"></i><a href="../doc/附件3、110年度石油業者石油管線及儲油設施查核.docx" target="_blank">查核填寫內容下載</a> 
										<i class="fa fa-file-powerpoint-o IconCc" aria-hidden="true"></i><a href="../doc/查核配合事項_石油.pptx" target="_blank">查核配合事項下載</a> 
										<i class="fa fa-file-powerpoint-o IconCc" aria-hidden="true"></i><a href="../doc/附件4、110年度石油業者簡報內容格式_管線及儲槽.pptx" target="_blank">簡報大綱下載</a>
									</div>
								</span>
							</div>
							<div class="twocol">
								<div class="right font-normal">
									<a href="#" id="btnallopen"><i class="fa fa-plus-square-o" aria-hidden="true"></i>&nbsp;全部展開</a>&nbsp;&nbsp;
									<a href="#" id="btnallclose"><i class="fa fa-minus-square-o" aria-hidden="true"></i>&nbsp;全部收合</a>
								</div>
							</div>
							
							<div class="stripetreeB margin10T">
								<table id="tablist" width="100%" border="0" cellspacing="0" cellpadding="0">
									<thead>
										<tr>
											<th nowrap="nowrap">110年石油管線及儲油設施查核項目</th>
											<th nowrap="nowrap" width="200">業者</th>
											<th nowrap="nowrap" width="200">委員</th>
											<th nowrap="nowrap">檢視文件</th>
											<th nowrap="nowrap" width="300">委員建議</th>
                                            <th nowrap="nowrap" width="">功能</th>
										</tr>
									</thead>
									<tbody></tbody>
								</table>
							</div><!-- stripetree -->
							<div id="errMsg" style="color:red;"></div>
							<div style="margin-top:20px;"><input type="button" id="subbtn" value="儲存" class="genbtn" /></div>
						</div>
					</div><!-- container -->
				</div><!-- ContentWrapper -->

				<div class="container-fluid">
					<div class="backTop"><a href="#" class="backTotop">TOP</a></div>
				</div>        
			</div><!-- WrapperBody -->
	
		<!--#include file="Footer.html"-->

		</div><!-- BoxBgWa -->
		<!-- 側邊選單內容:動態複製主選單內容 -->
		<div id="sidebar-wrapper"></div><!-- sidebar-wrapper -->
	</form>
	</div>
	<!-- 結尾用div:修正mmenu form bug -->

	<!-- colorbox -->
	<div style="display:none;">
		<div id="checklistedit">
			<div class="margin35T padding5RL">
				<div class="OchiTrasTable width100 TitleLength03 font-size3">
					<div class="OchiRow">
						<div class="OchiCell OchiTitle IconCe TitleSetWidth">委員意見</div>
						<div class="OchiCell width100">
							<textarea id="psStr" rows="8" cols="" class="inputex width100"></textarea>
                            <div class="stripetreeG margin10T">
								<table id="tablistOpen" width="100%" border="0" cellspacing="0" cellpadding="0">
									<thead>
										<tr>
											<th nowrap="nowrap"width="10%">委員</th>
											<th nowrap="nowrap"width="5%">答案</th>
											<th nowrap="nowrap"width="15%">檢視文件</th>
											<th nowrap="nowrap"width="50%">委員意見</th>
											<th nowrap="nowrap"width="20%">修改日期</th>
										</tr>
									</thead>
									<tbody></tbody>
								</table>
							</div><!-- stripetree -->
							<div id="errMsgOpen" style="color:red;"></div>
						</div>
					</div><!-- OchiRow -->
				</div><!-- OchiTrasTable -->
			</div>

			<div class="twocol margin10T">
				<div class="right">
					<a href="javascript:void(0);" class="genbtn closecolorbox">取消</a>
					<a href="javascript:void(0);" id="ps_savebtn" class="genbtn">確定</a>
				</div>
			</div>
			<br /><br />
		</div>
	</div>


		<!-- 本頁面使用的JS -->
		<script type="text/javascript">
			$(document).ready(function () {
				$(".container").css("max-width", "1800px");

				//編輯按鈕控制
				$(".editnotebtn,.sugnote").hide();
				$(".editnotebtnopen").on("click", function () {
					$(this).parent().next().next().children(".editnotebtn,span").fadeIn();
				});
				$(".editnotebtnclose").on("click", function () {
					$(this).parent().next().next().children(".editnotebtn,span").fadeOut();
				});
			});
		</script>
		<script type="text/javascript" src="../js/GenCommon.js"></script><!-- UIcolor JS -->
		<script type="text/javascript" src="../js/PageCommon.js"></script><!-- 系統共用 JS -->
		<script type="text/javascript" src="../js/MenuGas.js"></script><!-- 系統共用 JS -->
		<script type="text/javascript" src="../js/autoHeight.js"></script><!-- 高度不足頁面的絕對置底footer -->
	</body>
</html>
