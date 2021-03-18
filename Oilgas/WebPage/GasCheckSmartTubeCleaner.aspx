<%@ Page Language="C#" AutoEventWireup="true" CodeFile="GasCheckSmartTubeCleaner.aspx.cs" Inherits="WebPage_GasCheckSmartTubeCleaner" %>

<!DOCTYPE html>

<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta http-equiv="X-UA-Compatible" content="IE=11; IE=10; IE=9; IE=8" />
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="keywords" content="關鍵字內容" />
	<meta name="description" content="描述" /><!--告訴搜尋引擎這篇網頁的內容或摘要。--> 
	<meta name="generator" content="Notepad" /><!--告訴搜尋引擎這篇網頁是用什麼軟體製作的。--> 
	<meta name="author" content="工研院 資訊處" /><!--告訴搜尋引擎這篇網頁是由誰製作的。-->
	<meta name="copyright" content="本網頁著作權所有" /><!--告訴搜尋引擎這篇網頁是...... --> 
	<meta name="revisit-after" content="3 days" /><!--告訴搜尋引擎3天之後再來一次這篇網頁，也許要重新登錄。-->
    <title>天然氣事業輸儲設備查核及檢測資訊系統</title>
	<!--#include file="Head_Include.html"-->
</head>
<body class="bgG">
<!-- 開頭用div:修正mmenu form bug -->
<div>
<form>
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
		<!--#include file="GasHeader.html"-->

        <div id="ContentWrapper">
            <div class="container margin15T">



                <div class="padding10ALL">
                    <div class="filetitlewrapper">
                        <span class="filetitle font-size7">海管室</span>
                        <span class="btnright"><div id="filedown"></div></span>
                    </div>

                    <div class="row margin20T">
                        <div class="col-lg-3 col-md-4 col-sm-5">
                            <div id="navmenuV"></div>
                        </div>
                        <div class="col-lg-9 col-md-8 col-sm-7">

                            <div class="stripeMeG tbover">
                                <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                    <tr>
                                        <th  rowspan="2">長途管線 <br>
                                          識別碼 </th>
                                        <th >檢測 <br>
                                          方法 </th>
                                        <th >最近一次執行年/月 </th>
                                        <th >報告產出 <br>
                                          年/月 </th>
                                        <th >檢測長度 <br>
                                          公尺 </th>
                                        <th  colspan="4">減薄30%-40%<br>
                                          數量 </th>
                                        <th  colspan="4">減薄40%-50%數量 </th>
                                        <th  colspan="5">減薄50%以上數量 </th>
                                        <th  colspan="2">Dent </th>
                                        <th >備註 </th>
                                      </tr>
                                      <tr>
                                        <th >&nbsp;</th>
                                        <th  valign="top">&nbsp;</th>
                                        <th  valign="top">&nbsp;</th>
                                        <th  valign="top">&nbsp;</th>
                                        <th  valign="top">內 </th>
                                        <th >開挖 <br>
                                          確認 </th>
                                        <th  valign="top">外 </th>
                                        <th >開挖 <br>
                                          確認 </th>
                                        <th  valign="top">內 </th>
                                        <th >開挖 <br>
                                          確認 </th>
                                        <th  valign="top">外 </th>
                                        <th width="36" colspan="2">開挖 <br>
                                          確認 </th>
                                        <th  valign="top">內 </th>
                                        <th >開挖 <br>
                                          確認 </th>
                                        <th  valign="top">外 </th>
                                        <th >開挖 <br>
                                          確認 </th>
                                        <th  valign="top">&gt;12%</th>
                                        <th >開挖 <br>
                                          確認 </th>
                                        <th >&nbsp;</th>
                                      </tr>
                                      <tr>
                                        <td >台中至通霄36吋天然氣海管 <br>
                                          (805010125001)</td>
                                        <td >智慧型IP檢測工作 </td>
                                        <td >109.07</td>
                                        <td >109.12</td>
                                        <td >44,701.59</td>
                                        <td >0</td>
                                        <td >NA </td>
                                        <td >2</td>
                                        <td >0</td>
                                        <td >0</td>
                                        <td >NA </td>
                                        <td >2</td>
                                        <td width="36" colspan="2">0</td>
                                        <td >0</td>
                                        <td >NA</td>
                                        <td >0</td>
                                        <td >NA </td>
                                        <td >0</td>
                                        <td >NA</td>
                                        <td ><ol>
                                          <li>短期改善措施： </li>
                                          <li>建置陰極防蝕整流站及監測井，加強海管保護電位，於108.01.30完成。 </li>
                                          <li>已於109.7.26施作台中至通霄IP檢測工作，確認該處減薄無缺陷增長，檢測報告顯示目前10年內無立即修復風險。 </li>
                                          <li>長期改善措施： </li>
                                        </ol>      鋪設新管線(HDD工法)，預計110年06月底完成，並配合台中至通霄陸管預計於111年底前完成後執行，預計於112年9月前完成新舊管線銜接工程為目標；若台中至通霄36吋陸管工程延宕，則於112年9月前施作IP檢測確認海管減薄狀況。 </td>
                                      </tr>
                                      <tr>
                                        <td >通霄至大潭36吋天然氣海管 <br>
                                          (805010125002)</td>
                                        <td >智慧型IP檢測工作 </td>
                                        <td >107.03</td>
                                        <td >107.06</td>
                                        <td >85,430.01</td>
                                        <td >0</td>
                                        <td >NA </td>
                                        <td >0</td>
                                        <td >NA </td>
                                        <td >0</td>
                                        <td >NA </td>
                                        <td >0</td>
                                        <td width="36" colspan="2">NA </td>
                                        <td >0</td>
                                        <td >NA</td>
                                        <td >0</td>
                                        <td >NA </td>
                                        <td >0</td>
                                        <td >NA</td>
                                        <td >預計112年執行 </td>
                                      </tr>
                                      <tr>
                                        <td >永安至通霄36吋天然氣海管 <br>
                                          (805010126001)</td>
                                        <td >智慧型IP檢測工作 </td>
                                        <td >99.11</td>
                                        <td >99.12</td>
                                        <td >237,592.41</td>
                                        <td >0</td>
                                        <td >NA </td>
                                        <td >3</td>
                                        <td >0</td>
                                        <td >0</td>
                                        <td >NA </td>
                                        <td >0</td>
                                        <td width="36" colspan="2">NA </td>
                                        <td >0</td>
                                        <td >NA</td>
                                        <td >0</td>
                                        <td >NA </td>
                                        <td >0</td>
                                        <td >NA</td>
                                        <td >預計於110年4月執行。 </td>
                                      </tr>
                                </table>
                            </div><!-- stripeMe -->
                            <div class="margin5TB font-size2">
                                (1) 管壁減薄請依腐蝕位置(內部、外部)、減薄量30%、40%、50%及變形量>12%分別填寫數量。<br>
                                (2) 開挖確認數量：已依檢測結果進行開挖確認的數量。<br>
                                (3) 改善完成數量：經開挖確認後，進行改善(例：銲補、換管、貼補等)。<br>
                                (4) 若ILI執行檢測之管線，有多段管線編號，若無法分段統計管壁減薄數量，則擇一段管線編號填寫全線數量，其他段之管線，則於備註欄註明同一檢測管線之編號。
                            </div>
                        </div><!-- col -->
                    </div><!-- row -->


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
    <div id="workitem">
        <div class="margin35T padding5RL">
            <div class="OchiTrasTable width100 TitleLength08 font-size3">
                <div class="OchiRow">
                    <div class="OchiCell OchiTitle IconCe TitleSetWidth">工作項次</div>
                    <div class="OchiCell width100">
                        <input type="number" class="inputex width10">﹒<input type="number" class="inputex width10">﹒<input type="number" class="inputex width10">
                    </div>
                </div><!-- OchiRow -->
                <div class="OchiRow">
                    <div class="OchiCell OchiTitle IconCe TitleSetWidth">預定日期</div>
                    <div class="OchiCell width100"><input type="text" class="inputex Jdatepicker width30"> </div>
                </div><!-- OchiRow -->
                <div class="OchiRow">
                    <div class="OchiCell OchiTitle IconCe TitleSetWidth">預定完成執行內容</div>
                    <div class="OchiCell width100"><textarea rows="5" cols="" class="inputex width100"></textarea></div>
                </div><!-- OchiRow -->
            </div><!-- OchiTrasTable -->
        </div>

        <div class="twocol margin10T">
            <div class="right">
                <a href="#" class="genbtn closecolorbox">取消</a>
                <a href="#" class="genbtn">儲存</a>
            </div>
        </div>
        <br /><br />
    </div>
</div>

<div style="display:none;">
    <div id="datesetting">
        <div class="margin35T padding5RL">
            <div class="OchiTrasTable width100 TitleLength04 font-size3">
                <div class="OchiRow">
                    <div class="OchiCell OchiTitle IconCe TitleSetWidth">開始日期</div>
                    <div class="OchiCell width100"><input type="text" class="inputex Jdatepicker width100"></div>
                </div><!-- OchiRow -->
                <div class="OchiRow">
                    <div class="OchiCell OchiTitle IconCe TitleSetWidth">結束日期</div>
                    <div class="OchiCell width100"><input type="text" class="inputex Jdatepicker width100"></div>
                </div><!-- OchiRow -->
            </div><!-- OchiTrasTable -->
        </div>

        <div class="twocol margin10T">
            <div class="right">
                <a href="#" class="genbtn closecolorbox">取消</a>
                <a href="#" class="genbtn">儲存</a>
            </div>
        </div>
        <br /><br />
    </div>
</div>
<!-- 本頁面使用的JS -->
	<script type="text/javascript">
		$(document).ready(function () {
		    $(".container").css("max-width","1800px");
			$("#collapse1").collapse({
				query: 'div.collapseTitle',//收合標題樣式名
				persist: false,//是否記憶收合,需配合jquery.collapse_storage.js
				open: function () {
					this.slideDown(100);//動畫效果
				},
				close: function () {
					this.slideUp(100);//動畫效果
				},
			});

			$("#collapse1").trigger("open") // 預設全開啟
			//$("#collapse1").trigger("close") // 預設全關閉(default)
			$("#collapse1 div:nth-child(1) div.collapseTitle a").trigger("open") // 控制第幾個開啟

			//全部收合展開按鈕動作
			$("#collapse1open").click(function () {
				$("#collapse1").trigger("open")
			});
			$("#collapse1close").click(function () {
				$("#collapse1").trigger("close")
			});

			$("#navmenuV ul li:nth-child(2)").addClass("open");
			$("#navmenuV ul li:nth-child(2) li:nth-child(3)").addClass("active");
			$('.nav').navgoco();
		});
	</script>
	<script type="text/javascript" src="../js/GenCommon.js"></script><!-- UIcolor JS -->
	<script type="text/javascript" src="../js/PageCommon.js"></script><!-- 系統共用 JS -->
	<script type="text/javascript" src="../js/MenuGas.js"></script><!-- 系統共用 JS -->
	<script type="text/javascript" src="../js/SubMenuGasA.js"></script><!-- 內頁選單 -->
	<script type="text/javascript" src="../js/autoHeight.js"></script><!-- 高度不足頁面的絕對置底footer -->
</body>
</html>