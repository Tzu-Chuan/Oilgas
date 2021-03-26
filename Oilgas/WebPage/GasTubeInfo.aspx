<%@ Page Language="C#" AutoEventWireup="true" CodeFile="GasTubeInfo.aspx.cs" Inherits="WebPage_GasTubeInfo" %>

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
                                        <th nowrap>長途管線識別碼 </th>
                                        <th nowrap>轄區長途管線名稱 <br>(公司)</th>
                                        <th  nowrap>銜接管線識別碼 <br>(上游) </th>
                                        <th  nowrap>銜接管線識別碼 <br>(下游) </th>
                                        <th nowrap>起點 </th>
                                        <th nowrap>迄點 </th>
                                        <th nowrap>管徑 <br>吋 </th>
                                        <th nowrap>厚度 <br>(mm)</th>
                                        <th nowrap>管材 <br>(詳細規格)</th>
                                        <th nowrap>包覆材料 </th>
                                        <th nowrap>轄管長度 <br>(公尺)</th>
                                        <th nowrap>內容物 </th>
                                        <th nowrap>緊急遮斷閥 <br>(處)</th>
                                        <th nowrap>建置年 <br>(民國年月)</th>
                                        <th nowrap>設計壓力 <br>(Kg/cm<sup>2</sup>)</th>
                                        <th nowrap>使用 <br>壓力 <br>(Kg/cm<sup>2</sup>)</th>
                                        <th nowrap>使用狀態 <br>
                                          1.使用中 <br>
                                          2.停用 <br>
                                          3.備用 </th>
                                        <th nowrap>附掛 <br>
                                          橋樑 <br>
                                          數量 </th>
                                      </tr>
                                      <tr>
                                        <td >805010126001 </td>
                                        <td >永安至通霄36吋天然氣海管 </td>
                                        <td >NA</td>
                                        <td >NA</td>
                                        <td >永安廠 </td>
                                        <td >通霄轉輸中心 </td>
                                        <td >36</td>
                                        <td >14.30、15.90、17.50、19.10</td>
                                        <td >API5LX65</td>
                                        <td >5.6mm媒焦油瓷漆(CTE)</td>
                                        <td >237,592.41</td>
                                        <td >天然氣 </td>
                                        <td >0</td>
                                        <td >88.05</td>
                                        <td >78.45</td>
                                        <td >75</td>
                                        <td >1</td>
                                        <td >0</td>
                                      </tr>
                                      <tr>
                                        <td >805010125001</td>
                                        <td >台中至通霄36吋天然氣海管 </td>
                                        <td >NA</td>
                                        <td >NA</td>
                                        <td >台中廠 </td>
                                        <td >通霄轉輸中心 </td>
                                        <td >36</td>
                                        <td >14.30、15.90、  21.00</td>
                                        <td >API5LX65</td>
                                        <td >FBE/3-Layer PE</td>
                                        <td >44,701.59</td>
                                        <td >天然氣 </td>
                                        <td >0</td>
                                        <td >96.06</td>
                                        <td >88</td>
                                        <td >75</td>
                                        <td >1</td>
                                        <td >0</td>
                                      </tr>
                                      <tr>
                                        <td >805010125002</td>
                                        <td >通霄至大潭36吋天然氣海管 </td>
                                        <td >NA</td>
                                        <td >NA</td>
                                        <td >通霄轉輸中心 </td>
                                        <td >大潭配氣站 </td>
                                        <td >36</td>
                                        <td >14.30、15.90、21.00、25.40</td>
                                        <td >API5LX65</td>
                                        <td >FBE/3-Layer    PE</td>
                                        <td >85,430.01</td>
                                        <td >天然氣 </td>
                                        <td >0</td>
                                        <td >96.06</td>
                                        <td >88</td>
                                        <td >75</td>
                                        <td >1</td>
                                        <td >0</td>
                                      </tr>
                                </table>
                            </div><!-- stripeMe -->

                            <div class="margin5TB font-size2">
                                註1：厚度請填寫到小數點後兩位，請依據ASME B36.10M Welded and Seamless Wrought Steel Pipe填寫公稱厚度，例如25.40 mm。<br>
                                註2：管線長度單位公里，請填寫到小數點後三位，例如5.140公里。<br>
                                註3：停用管線之內容物，請填如(氮封)、(空管)、(水)。<br>
                                註4：緊急遮斷閥請填寫有幾處。<br>
                                註5：設計壓力與使用壓力(請填寫近年內之MOP)單位請採用kg/cm<sup>2</sup>。<br>
                                註6：請填寫同一管線附掛橋樑的數量。<br>
                                註7：廢棄管線與非中油公司資產管線，請勿列入。<br>

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
			$("#navmenuV ul li:nth-child(2) li:nth-child(1)").addClass("active");
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
