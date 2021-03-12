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
                            <div id="navmenuV"><!--#include file="GasLeftMenu.html"--></div>
                        </div>
                        <div class="col-lg-9 col-md-8 col-sm-7">

                            <div class="stripeMeG tbover">
                                <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                    <tr>
                                        <th nowrap rowspan="2">管線名稱(及管線編號) </th>
                                        <th nowrap rowspan="2">報告名稱 </th>
                                        <th nowrap rowspan="2">報告 <br>
                                            日期<br>
                                            (年/月)</th>
                                        <th nowrap rowspan="2" valign="top">檢測方法:<br>
                                            1.UT<br>
                                            2.磁漏 </th>
                                        <th nowrap rowspan="2">檢測 <br>
                                            日期<br>
                                            (年/月)</th>
                                        <th nowrap rowspan="2">檢測長度<br>
                                            (公里)</th>
                                        <th nowrap colspan="2">異常點數量 </th>
                                        <th nowrap rowspan="2">改善完成數量 </th>
                                        <th nowrap rowspan="2">列為監控點數量 </th>
                                        <th nowrap rowspan="2">改善未完成之數量 </th>
                                    </tr>
                                    <tr>
                                        <th nowrap>內部 </th>
                                        <th nowrap>外部 </th>
                                    </tr>
                                    <tr>
                                        <td  valign="top">台中至通霄36吋天然氣海管 <br>
                                            (805010125001)</td>
                                        <td >智慧型IP檢測工作總結報告書(台中至通霄)羅森 </td>
                                        <td >107.06</td>
                                        <td >2</td>
                                        <td >107.02.17</td>
                                        <td >46.8km</td>
                                        <td >0</td>
                                        <td >6</td>
                                        <td >0</td>
                                        <td >1</td>
                                        <td >5</td>
                                    </tr>
                                    <tr>
                                        <td  valign="top">通霄至大潭36吋天然氣海管 <br>
                                            (805010125002)</td>
                                        <td >智慧型IP檢測工作總結報告書(通霄至大潭)羅森 </td>
                                        <td >107.06</td>
                                        <td >2</td>
                                        <td >107.03.04</td>
                                        <td >88.8km</td>
                                        <td >0</td>
                                        <td >dent</td>
                                        <td >0</td>
                                        <td >1</td>
                                        <td >0</td>
                                    </tr>
                                    <tr>
                                        <td  valign="top">永安至通霄36吋天然氣海管 <br>
                                            (805010126001)</td>
                                        <td >智慧型IP檢測工作總結報告書(永安至通霄)羅森 </td>
                                        <td >99.12</td>
                                        <td >2</td>
                                        <td >99.11.06</td>
                                        <td >237.7km</td>
                                        <td >0</td>
                                        <td >0</td>
                                        <td >0</td>
                                        <td >0</td>
                                        <td >0</td>
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