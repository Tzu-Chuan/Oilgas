<%@ Page Language="C#" AutoEventWireup="true" CodeFile="GasRiskAssessment.aspx.cs" Inherits="WebPage_GasRiskAssessment" %>

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
                                    <th nowrap  rowspan="2">長途管線 <br>
                                      識別碼 </th>
                                    <th nowrap rowspan="2">最近一次 <br>
                                      執行日期 <br>
                                      (年/月)</th>
                                    <th nowrap rowspan="2">再評估時機 <br>
                                      1.定期(5年)<br>
                                      2.風險因子異動 </th>
                                    <th nowrap rowspan="2">管線長度 <br>
                                      (公尺)</th>
                                    <th nowrap rowspan="2">分段數量 </th>
                                    <th nowrap rowspan="2">已納入 <br>
                                      ILI結果 <br>
                                      (4)</th>
                                    <th nowrap rowspan="2">已納入CIPS結果 <br>
                                      (5)</th>
                                    <th nowrap rowspan="2">已納入 <br>
                                      巡管結果 <br>
                                      1.是 <br>
                                      2.否 <br>
                                      (6)</th>
                                    <th nowrap colspan="3">各等級風險 <br>
                                      管段數量 </th>
                                    <th nowrap rowspan="2">降低中高風險管段之<br>相關作為文件名稱 </th>
                                    <th nowrap rowspan="2">改善後 <br>
                                      風險等級 <br>
                                      高、中、低 </th>
                                  </tr>
                                  <tr>
                                    <th >高 </th>
                                    <th >中 </th>
                                    <th >低 </th>
                                  </tr>
                                  <tr>
                                    <td >台中至通霄36吋天然氣海管 <br>
                                      (805010125001)</td>
                                    <td >110/01</td>
                                    <td >1</td>
                                    <td >44701.59</td>
                                    <td >1</td>
                                    <td  valign="top"><ul>
                                      <li>KP4.95：109年7月IP檢測台中廠過台中港航道之HDD管段局部管壁減薄最深48%(0.861)，本段屬中風險。 </li>
                                      <li>KP8.436：超過最大懸空允許值，本段屬高風險。 </li>
                                      <li>其餘管段皆屬低風險。 </li>
                                    </ul></td>
                                    <td >NA</td>
                                    <td >1</td>
                                    <td >v</td>
                                    <td >&nbsp;</td>
                                    <td >&nbsp;</td>
                                    <td ><ul>
                                      <li>0800-SW-06-01風險評估表 </li>
                                      <li>DNV協助更新海管風險評估表 </li>
                                      <li>台中通霄36吋海管IP檢測工作總結報告 </li>
                                      <li>109年度台中至通霄36吋海管IP整體內部檢測結果分析、評估報告 </li>
                                      <li>KP8.436：預計110年5月底施作ROV檢測確認KP8.436管段懸空長度，確認長度後，評估此管段因懸空而導致管線之疲勞 (Vortex Induced Vibration) 問題。 </li>
                                    </ul></td>
                                    <td >中 <br>
                                      (目前進行中)</td>
                                  </tr>
                                  <tr>
                                    <td >通霄至大潭36吋天然氣海管 <br>
                                      (805010125002)</td>
                                    <td >110/01</td>
                                    <td >1</td>
                                    <td >85430.01</td>
                                    <td >1</td>
                                    <td  valign="top"><ul>
                                      <li>保護工整體現況良好，持續發揮原設計功能，有效保護海管，每年定期檢測持續以ROV針對各保護工處進行確認，以確保管線安全。 </li>
                                      <li>本海管管段皆屬低風險。 </li>
                                    </ul></td>
                                    <td >NA</td>
                                    <td >1</td>
                                    <td >&nbsp;</td>
                                    <td >&nbsp;</td>
                                    <td >v</td>
                                    <td ><ul>
                                      <li>0800-SW-06-01風險評估表 </li>
                                      <li>2DNV協助更新海管風險評估表 </li>
                                    </ul></td>
                                    <td >低 </td>
                                  </tr>
                                  <tr>
                                    <td >永安至通霄36吋天然氣海管 <br>
                                      (805010126001)</td>
                                    <td >110/01</td>
                                    <td >1</td>
                                    <td >237592.41</td>
                                    <td >1</td>
                                    <td  valign="top"><ul>
                                      <li>KP42.472現有懸空長度為6公尺，未超過最大允許懸空長度，顯示在一般環境條件下海管仍屬安全狀態，但海底異重流推擠管線的危害風險需釐清，本段屬中風險。 </li>
                                      <li>其餘管段皆屬低風險。 </li>
                                    </ul></td>
                                    <td >NA</td>
                                    <td >1</td>
                                    <td >&nbsp;</td>
                                    <td >v</td>
                                    <td >&nbsp;</td>
                                    <td ><ul>
                                      <li>.0800-SW-06-01風險評估表 </li>
                                      <li>DNV協助更新海管風險評估表 </li>
                                      <li>DNV永安至通霄海管KP42因季節性海床地形變化比較分析評估報告 </li>
                                      <li>曾文溪口海底天然管線周邊海底地形變異分析工作(財團法人成大水利海洋研究發展文教基金會)</li>
                                    </ul></td>
                                    <td >低 <br>
                                      (目前進行中)</td>
                                  </tr>
                            </table>
                        </div><!-- stripeMe -->
                        <div class="margin5TB font-size2">
                            (1) 風險評估相關教育訓練：包含公司內部自行辦理或至其他機構辦理之風險評估教育訓練。<br>
                            (2) 訓練課程屬於內部訓練者，請填1；外部訓練者，請填2。<br>
                            (3) 再評估時機：最近一次所執行之評估是公司定期規劃(例：每5年一次)，或因風險評估之因子有所異動 (例：遷管、換管)而執行。<br>
                            (4) 執行該管線風險評估時，已將ILI檢測結果納入評估參數，請填寫檢測時間，若尚未考量ILI檢測結果，或該管線尚未執行ILI檢測者，請填NA。<br>
                            (5) 執行該管線風險評估時，已將CIPS檢測結果納入評估參數，請填檢測時間，若尚未考量CIPS檢測結果者，請填NA。<br>
                            (6) 執行該管線風險評估時，已將巡管結果(如：未會勘而開挖頻度)納入評估參數，請填「1」，若尚未考量巡管結果者，請填「2」。<br>
                            (7) 各等級風險管段數量：請分別填入高、中、低風險之管段數量。<br>
                            (8) 若評估結果有中高風險管段，應於「降低中高風險管段之作為」欄位註明相對應之作為或其作為相關文件名稱，並於「改善後風險等級」欄位中，填入改善後之風險等級(高、中、低)。

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
			$("#navmenuV ul li:nth-child(2) li:nth-child(7)").addClass("active");
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
