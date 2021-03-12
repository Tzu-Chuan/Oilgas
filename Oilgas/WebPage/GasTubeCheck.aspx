<%@ Page Language="C#" AutoEventWireup="true" CodeFile="GasTubeCheck.aspx.cs" Inherits="WebPage_GasTubeCheck" %>

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

                            <div class="OchiTrasTable width100 TitleLength08 font-size3">
                                <div class="OchiRow">
                                    <div class="OchiCell OchiTitle IconCe TitleSetWidth">依據文件名稱</div>
                                    <div class="OchiCell width100">
                                        <input type="text" class="inputex width99" value="海管管理維護作業工作指導書" disabled>
                                    </div>
                                </div><!-- OchiRow -->
                                <div class="OchiRow">
                                    <div class="OchiHalf">
                                        <div class="OchiCell OchiTitle IconCe TitleSetWidth">文件編號</div>
                                        <div class="OchiCell width100"><input type="text" class="inputex width100" value="0800-SW-04" disabled></div>
                                    </div><!-- OchiHalf -->
                                    <div class="OchiHalf">
                                        <div class="OchiCell OchiTitle IconCe TitleSetWidth">文件日期</div>
                                        <div class="OchiCell width100"><input type="text" class="inputex width100" value="108.11.28" disabled></div>
                                    </div><!-- OchiHalf -->
                                </div><!-- OchiRow -->
                                <div class="OchiRow">
                                    <div class="OchiCell OchiTitle IconCe TitleSetWidth">每年巡檢次數</div>
                                    <div class="OchiCell width100">
                                        <input type="text" class="inputex width99" value="巡查6次（每2月乙次）、保護工4次（每季乙次）、全線檢測乙次" disabled>
                                    </div>
                                </div><!-- OchiRow -->
                            </div><!-- OchiTrasTable -->

                            <div class="font-size3 margin10T">海底管線外部檢測異常處理情形</div>
                            <div class="stripeMeG tbover margin5T">
                                <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                    <tr>
                                        <th nowrap >追蹤 <br>
                                            序號 </th>
                                        <th nowrap>KP(編號)</th>
                                        <th nowrap>隸屬管線名稱 <br>
                                            (及管線編號)</th>
                                        <th nowrap>異常起始日期 <br>
                                            (年/月)</th>
                                        <th nowrap>異常狀況 </th>
                                        <th nowrap>處理情形 </th>
                                    </tr>
                                    <tr>
                                        <td >1</td>
                                        <td >KP32</td>
                                        <td >永安至通霄 </td>
                                        <td >107.03</td>
                                        <td  valign="top">永安至通霄海管KP32公里處經外部檢測發現該處海床有逐漸被侵蝕的現象，其109.01檢測報告離最近管線距離約為30.5公尺，避免海床繼續沖涮，進行海床拋石保護作業。 </td>
                                        <td  valign="top">本案工程設計及監造工作於107.09.27辦理開工，工程案於108.11.15開工，於109.02.10開始施作並於109.03.15完成拋石作業，目前狀況良好。 </td>
                                    </tr>
                                    <tr>
                                        <td >2</td>
                                        <td >KP59</td>
                                        <td >永安至通霄 </td>
                                        <td >107.09</td>
                                        <td  valign="top">發現KP59管段懸空長度104公尺(懸空高度0.4~0.6公尺及水深80公尺) ，為確保海管安全進行拋石保護工作。 </td>
                                        <td  valign="top">本案於108.11.15開工，於109.02.10開始施作並於109.03.15完成拋石作業，目前狀況良好。 </td>
                                    </tr>
                                </table>
                            </div><!-- stripeMe -->
                            
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
