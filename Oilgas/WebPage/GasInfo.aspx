<%@ Page Language="C#" AutoEventWireup="true" CodeFile="GasInfo.aspx.cs" Inherits="WebPage_GasInfo" %>

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
                        <span class="btnright">
							<div class="font-size4 font-normal">
								<i class="fa fa-file-word-o IconCc" aria-hidden="true"></i><a href="../doc/附件3、110年天然氣生產進口事業查核填寫內容.docx" target="_blank">查核填寫內容下載</a> 
								<i class="fa fa-file-powerpoint-o IconCc" aria-hidden="true"></i><a href="../doc/查核配合事項(天然氣).pptx" target="_blank">查核配合事項下載</a> 
								<i class="fa fa-file-powerpoint-o IconCc" aria-hidden="true"></i><a href="../doc/附件4、110年天然氣生產、進口事業輸儲設備查核簡報大綱.pptx" target="_blank">簡報大綱下載</a>
							</div>
                        </span>
                    </div>

                    <div class="row margin20T">
                        <div class="col-lg-3 col-md-4 col-sm-5">
                            <div id="navmenuV">
                                <!--#include file="GasLeftMenu.html"-->
                            </div>
                        </div>
                        <div class="col-lg-9 col-md-8 col-sm-7">
                            <div class="twocol">
                                <div class="right font-normal font-size3">
                                    <a href="#" id="collapse1open">全部展開</a>
                                    <a href="#" id="collapse1close">全部關閉</a>
                                </div><!-- right -->
                            </div><!-- twocol -->

                            <div id="collapse1">
                                <div>
                                    <div class="collapseTitle font-blackA font-size4">A.基本資料</div>
                                    <div class="BoxBorderDa BoxRadiusB padding5ALL">
                                        <!-- 管線資料start -->
                                        <div class="OchiTrasTable width100 TitleLength08 font-size3">

                                            <div class="OchiRow">
                                                <div class="OchiHalf">
                                                    <div class="OchiCell OchiTitle IconCe TitleSetWidth">事業名稱</div>
                                                    <div class="OchiCell width100"><input type="text" class="inputex width100" value="天然氣事業部海管室" disabled></div>
                                                </div><!-- OchiHalf -->
                                                <div class="OchiHalf">
                                                    <div class="OchiCell OchiTitle IconCe TitleSetWidth">電話</div>
                                                    <div class="OchiCell width100"><input type="text" class="inputex width100" value="06-2533700" disabled></div>
                                                </div><!-- OchiHalf -->
                                            </div><!-- OchiRow -->

                                            <div class="OchiRow">
                                                <div class="OchiCell OchiTitle IconCe TitleSetWidth">地址</div>
                                                <div class="OchiCell width100"><input type="text" class="inputex width99" value="台南市永康區蔦松二街32號" disabled></div>
                                            </div><!-- OchiRow -->

                                        </div><!-- OchiTrasTable -->
                                        <!-- 管線資料end -->
                                    </div>
                                </div>

                                <div class="margin10T">
                                    <div class="collapseTitle font-blackA font-size4">B.輸儲管線概況</div>
                                    <div class="BoxBorderDa BoxRadiusB padding5ALL">
                                        <!-- 管線資料start -->
                                        <div class="OchiTrasTable width100 TitleLength08 font-size3">
                                            <div class="OchiRow">
                                                <div class="OchiHalf">
                                                    <div class="OchiCell OchiTitle IconCe TitleSetWidth">輸氣幹線</div>
                                                    <div class="OchiCell width100"><input type="text" class="inputex width80" value="無" disabled> 公尺</div>
                                                </div><!-- OchiHalf -->
                                                <div class="OchiHalf">
                                                    <div class="OchiCell OchiTitle IconCe TitleSetWidth">輸氣環線</div>
                                                    <div class="OchiCell width100"><input type="text" class="inputex width80" value="無" disabled> 公尺</div>
                                                </div><!-- OchiHalf -->
                                            </div><!-- OchiRow -->

                                            <div class="OchiRow">
                                                <div class="OchiHalf">
                                                    <div class="OchiCell OchiTitle IconCe TitleSetWidth">配氣專管</div>
                                                    <div class="OchiCell width100"><input type="text" class="inputex width80" value="無" disabled> 公尺</div>
                                                </div><!-- OchiHalf -->
                                                <div class="OchiHalf">
                                                    <div class="OchiCell OchiTitle IconCe TitleSetWidth">場內成品線</div>
                                                    <div class="OchiCell width100"><input type="text" class="inputex width80" value="無" disabled> 公尺</div>
                                                </div><!-- OchiHalf -->
                                            </div><!-- OchiRow -->

                                            <div class="OchiRow">
                                                <div class="OchiHalf">
                                                    <div class="OchiCell OchiTitle IconCe TitleSetWidth">海底管線</div>
                                                    <div class="OchiCell width100"><input type="text" class="inputex width80" value="372,700" disabled> 公尺</div>
                                                </div><!-- OchiHalf -->
                                            </div><!-- OchiRow -->

                                            <div class="OchiRow">
                                                <div class="OchiCell OchiTitle IconCe TitleSetWidth">供氣對象(縣市)</div>
                                                <div class="OchiCell width100"><input type="text" class="inputex width99" value="高雄、台中、大潭" disabled></div>
                                            </div><!-- OchiRow -->

                                            <div class="OchiRow">
                                                <div class="OchiCell OchiTitle IconCe TitleSetWidth">供應天然氣</div>
                                                <div class="OchiCell width100">
                                                    <div class="inlineitem"><input type="checkbox" disabled> NG1 進口天然氣與自產天然氣摻配</div>
                                                    <div class="inlineitem"><input type="checkbox" disabled> NG1自產天然氣</div>
                                                    <div class="inlineitem"><input type="checkbox" disabled checked> NG2進口天然氣</div>
                                                </div>
                                            </div><!-- OchiRow -->


                                        </div><!-- OchiTrasTable -->
                                        <!-- 管線資料end -->
                                    </div>
                                </div>

                                <div class="margin10T">
                                    <div class="collapseTitle font-blackA font-size4">C.場站概況</div>
                                    <div class="BoxBorderDa BoxRadiusB padding5ALL">
                                        <!-- 管線資料start -->
                                        <div class="OchiTrasTable width100 TitleLength08 font-size3">
                                            <div class="OchiRow">
                                                <div class="OchiHalf">
                                                    <div class="OchiCell OchiTitle IconCe TitleSetWidth">儲槽</div>
                                                    <div class="OchiCell width100"><input type="text" class="inputex width100" value="無" disabled></div>
                                                </div><!-- OchiHalf -->
                                                <div class="OchiHalf">
                                                    <div class="OchiCell OchiTitle IconCe TitleSetWidth">注氣站</div>
                                                    <div class="OchiCell width100"><input type="text" class="inputex width100" value="無" disabled></div>
                                                </div><!-- OchiHalf -->
                                            </div><!-- OchiRow -->

                                            <div class="OchiRow">
                                                <div class="OchiHalf">
                                                    <div class="OchiCell OchiTitle IconCe TitleSetWidth">加壓站</div>
                                                    <div class="OchiCell width100"><input type="text" class="inputex width100" value="無" disabled></div>
                                                </div><!-- OchiHalf -->
                                                <div class="OchiHalf">
                                                    <div class="OchiCell OchiTitle IconCe TitleSetWidth">配氣站</div>
                                                    <div class="OchiCell width100"><input type="text" class="inputex width100" value="無" disabled></div>
                                                </div><!-- OchiHalf -->
                                            </div><!-- OchiRow -->

                                            <div class="OchiRow">
                                                <div class="OchiHalf">
                                                    <div class="OchiCell OchiTitle IconCe TitleSetWidth">隔離站</div>
                                                    <div class="OchiCell width100"><input type="text" class="inputex width100" value="無" disabled></div>
                                                </div><!-- OchiHalf -->
                                                <div class="OchiHalf">
                                                    <div class="OchiCell OchiTitle IconCe TitleSetWidth">開關站</div>
                                                    <div class="OchiCell width100"><input type="text" class="inputex width100" value="無" disabled></div>
                                                </div><!-- OchiHalf -->
                                            </div><!-- OchiRow -->

                                            <div class="OchiRow">
                                                <div class="OchiHalf">
                                                    <div class="OchiCell OchiTitle IconCe TitleSetWidth">清管站</div>
                                                    <div class="OchiCell width100"><input type="text" class="inputex width100" value="無" disabled></div>
                                                </div><!-- OchiHalf -->
                                                <div class="OchiHalf">
                                                    <div class="OchiCell OchiTitle IconCe TitleSetWidth">整壓計量站</div>
                                                    <div class="OchiCell width100"><input type="text" class="inputex width100" value="無" disabled></div>
                                                </div><!-- OchiHalf -->
                                            </div><!-- OchiRow -->

                                            <div class="OchiRow">
                                                <div class="OchiHalf">
                                                    <div class="OchiCell OchiTitle IconCe TitleSetWidth">低壓排放塔</div>
                                                    <div class="OchiCell width100"><input type="text" class="inputex width100" value="無" disabled></div>
                                                </div><!-- OchiHalf -->
                                                <div class="OchiHalf">
                                                    <div class="OchiCell OchiTitle IconCe TitleSetWidth">高壓排放塔</div>
                                                    <div class="OchiCell width100"><input type="text" class="inputex width100" value="無" disabled></div>
                                                </div><!-- OchiHalf -->
                                            </div><!-- OchiRow -->
                                        </div><!-- OchiTrasTable -->
                                        <!-- 管線資料end -->
                                    </div>
                                </div>
                            </div><!-- collapse1 -->
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
			
			$("#navmenuV ul li:nth-child(1)").addClass("open");
			$("#navmenuV ul li:nth-child(1) li:nth-child(1)").addClass("active");
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
