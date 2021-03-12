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

                    <div class="stripeMeG tbover">
                        <table width="100%" border="0" cellspacing="0" cellpadding="0">
                            <tr>
                                <th nowrap width="200" rowspan="2">風險評估管線名稱 <br>
                                    (及管線編號)</th>
                                <th nowrap rowspan="2">最近一次 <br>
                                    執行日期 <br>
                                    (年/月)</th>
                                <th nowrap rowspan="2">再評估時機： <br>
                                    1.定期(5年)<br>
                                    2.風險因子異動 </th>
                                <th nowrap rowspan="2">管線長度 <br>(公里)</th>
                                <th nowrap rowspan="2">分段數量 </th>
                                <th nowrap width="180" rowspan="2">已納入 <br>ILI結果 <br>(4)</th>
                                <th nowrap rowspan="2">已納入CIPS結果 <br>(5)</th>
                                <th nowrap rowspan="2">已納入 <br>巡管結果 <br>
                                    1.是 <br>
                                    2.否 <br>
                                    (6)</th>
                                <th nowrap colspan="3">各等級風險 <br>
                                    管段數量 </th>
                                <th nowrap width="200" rowspan="2">降低高風險<br>管段之相關作為 </th>
                                <th nowrap rowspan="2">改善後風險<br>等級 高、中、低</th>
                            </tr>
                            <tr>
                                <th >高 </th>
                                <th >中 </th>
                                <th >低 </th>
                            </tr>
                            <tr>
                                <td >台中至通霄36吋天然氣海管 <br>
                                    (805010125001)</td>
                                <td >108.12</td>
                                <td >1</td>
                                <td >46.8km</td>
                                <td >1</td>
                                <td ><ul>
                                    <li>台中廠過台中港航道之HDD管段局部管壁減薄最深59%。 </li>
                                    <li>KP25.780處外部缺陷深度自33% （101年）成長為42% （107年)，此缺陷為小凹陷。 </li>
                                </ul></td>
                                <td >NA</td>
                                <td >1</td>
                                <td >v</td>
                                <td >&nbsp;</td>
                                <td >&nbsp;</td>
                                <td ><ul>
                                    <li>KP7~KP8.5拋石保護工程發包程序規劃中。目前可列入重點檢測區域，觀察其是否有自然回填之現象或持續擴大懸空規模再作維護策略制定。 </li>
                                    <li>綜上，本公司擬定期及不定期執行風險評估，如有風險之虞則儘速進行妥適保護工法，以降低風險，確保輸氣操作安全。 </li>
                                </ul></td>
                                <td >&nbsp;</td>
                            </tr>
                            <tr>
                                <td >通霄至大潭36吋天然氣海管 <br>
                                    (805010125002)</td>
                                <td >108.12</td>
                                <td >1</td>
                                <td >88.8km</td>
                                <td >1</td>
                                <td ><ul>
                                    <li>通霄至大潭KP81.008檢測結果發現2.9% 凹陷。 </li>
                                </ul></td>
                                <td >NA</td>
                                <td >1</td>
                                <td >&nbsp;</td>
                                <td >&nbsp;</td>
                                <td >v</td>
                                <td ><ul>
                                    <li>本公司擬定期及不定期執行風險評估，如有風險之虞則儘速進行妥適保護工法，以降低風險，確保輸氣操作安全。 </li>
                                </ul></td>
                                <td >&nbsp;</td>
                            </tr>
                            <tr>
                                <td >永安至通霄36吋天然氣海管 <br>
                                    (805010126001)</td>
                                <td >108.12</td>
                                <td >1</td>
                                <td >237,7km</td>
                                <td >1</td>
                                <td ><ul>
                                    <li>KP34處外部管壁減薄最深37%，ERF為0.80。 </li>
                                </ul></td>
                                <td >NA</td>
                                <td >1</td>
                                <td >v</td>
                                <td >&nbsp;</td>
                                <td >&nbsp;</td>
                                <td ><ul>
                                    <li>KP32、KP59本公司針對此區域的海床保護工程目前已發包且執行中，待保護工程於109.06完成後，海床沖刷危害風險將已被有效管控掌握，預估風險將可調至低度風險，在竣工後定期追蹤檢查此區域的保護工狀態及地貌變化。 </li>
                                    <li>綜上，本公司擬定期及不定期執行風險評估，如有風險之虞則儘速進行妥適保護工法，以降低風險，確保輸氣操作安全。 </li>
                                </ul></td>
                                <td >&nbsp;</td>
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
