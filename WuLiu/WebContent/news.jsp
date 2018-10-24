<%@ page contentType="text/html; charset=utf-8"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"> 
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>新闻中心</title>
	<link rel="stylesheet" type="text/css" href="CSS/normalize.css" />
	<link rel="stylesheet" type="text/css" href="CSS/jq22-demo.css">
	<link rel="stylesheet" href="CSS/style1.css">
	
	<link rel="stylesheet" href="CSS/style.css">
<title>登录</title>
</head>

<jsp:include page="top.jsp" />
<boby> 
	<div class="jq22-container" style="width:100%;height:70%;background-image:url('image/backa.jpg');">
<br><br><br>

		<div class="tabs" >
		  <input type="radio" id="tab1" name="tab-control" checked>
		  <input type="radio" id="tab2" name="tab-control">
		  <input type="radio" id="tab3" name="tab-control">  
		  <input type="radio" id="tab4" name="tab-control">
		  <ul>
		    <li title="Features"><label for="tab1" role="button"><svg viewBox="0 0 24 24"><path d="M14,2A8,8 0 0,0 6,10A8,8 0 0,0 14,18A8,8 0 0,0 22,10H20C20,13.32 17.32,16 14,16A6,6 0 0,1 8,10A6,6 0 0,1 14,4C14.43,4 14.86,4.05 15.27,4.14L16.88,2.54C15.96,2.18 15,2 14,2M20.59,3.58L14,10.17L11.62,7.79L10.21,9.21L14,13L22,5M4.93,5.82C3.08,7.34 2,9.61 2,12A8,8 0 0,0 10,20C10.64,20 11.27,19.92 11.88,19.77C10.12,19.38 8.5,18.5 7.17,17.29C5.22,16.25 4,14.21 4,12C4,11.7 4.03,11.41 4.07,11.11C4.03,10.74 4,10.37 4,10C4,8.56 4.32,7.13 4.93,5.82Z"/>
		</svg><br><span>物流要素</span></label></li>
		    <li title="Delivery Contents"><label for="tab2" role="button"><svg viewBox="0 0 24 24"><path d="M2,10.96C1.5,10.68 1.35,10.07 1.63,9.59L3.13,7C3.24,6.8 3.41,6.66 3.6,6.58L11.43,2.18C11.59,2.06 11.79,2 12,2C12.21,2 12.41,2.06 12.57,2.18L20.47,6.62C20.66,6.72 20.82,6.88 20.91,7.08L22.36,9.6C22.64,10.08 22.47,10.69 22,10.96L21,11.54V16.5C21,16.88 20.79,17.21 20.47,17.38L12.57,21.82C12.41,21.94 12.21,22 12,22C11.79,22 11.59,21.94 11.43,21.82L3.53,17.38C3.21,17.21 3,16.88 3,16.5V10.96C2.7,11.13 2.32,11.14 2,10.96M12,4.15V4.15L12,10.85V10.85L17.96,7.5L12,4.15M5,15.91L11,19.29V12.58L5,9.21V15.91M19,15.91V12.69L14,15.59C13.67,15.77 13.3,15.76 13,15.6V19.29L19,15.91M13.85,13.36L20.13,9.73L19.55,8.72L13.27,12.35L13.85,13.36Z" />
		</svg><br><span>豫苏最新专线</span></label></li>
		    <li title="Shipping"><label for="tab3" role="button"><svg viewBox="0 0 24 24">
		    <path d="M3,4A2,2 0 0,0 1,6V17H3A3,3 0 0,0 6,20A3,3 0 0,0 9,17H15A3,3 0 0,0 18,20A3,3 0 0,0 21,17H23V12L20,8H17V4M10,6L14,10L10,14V11H4V9H10M17,9.5H19.5L21.47,12H17M6,15.5A1.5,1.5 0 0,1 7.5,17A1.5,1.5 0 0,1 6,18.5A1.5,1.5 0 0,1 4.5,17A1.5,1.5 0 0,1 6,15.5M18,15.5A1.5,1.5 0 0,1 19.5,17A1.5,1.5 0 0,1 18,18.5A1.5,1.5 0 0,1 16.5,17A1.5,1.5 0 0,1 18,15.5Z" />
		</svg><br><span>服务简介</span></label></li>    <li title="Returns"><label for="tab4" role="button"><svg viewBox="0 0 24 24">
		    <path d="M11,9H13V7H11M12,20C7.59,20 4,16.41 4,12C4,7.59 7.59,4 12,4C16.41,4 20,7.59 20,12C20,16.41 16.41,20 12,20M12,2A10,10 0 0,0 2,12A10,10 0 0,0 12,22A10,10 0 0,0 22,12A10,10 0 0,0 12,2M11,17H13V11H11V17Z" />
		</svg><br><span>海运试营业</span></label></li>
		  </ul>
		  
		  <div class="slider"><div class="indicator"></div></div>
		  <div class="content">
		    <section>
		      <h2>Features</h2>  物流五要素 (Five Elements of Logistics)是指评价物流体系的五个主要要素，它们是：品质、数量、时间、地点和价格。品质是指物流过程中，物料的品质保持不变；数量是指符合经 济性的数量要求和运输活动中往返运输载重尽可能满载等；时间是指以合理费用及时送达为原则做到的快速；地点是指选择合理的集运地及仓库，避免两次无效运输 及多次转运；价格是指在保证质量及满足时间要求的前提下尽可能降低物流费用。
</section>
		        <section>
		          <h2>Delivery Contents</h2>
		      本公司供应郑州到南京物流/郑州到常熟物流/ 郑州到无锡物流 / 郑州到宜兴物流 /郑州到张家港物流 /郑州到辉山物流/ 郑州到常州物流  /郑州到苏州物流 /郑州到连云港物流 /郑州到盐城物流 / 郑州到镇江物流  /郑州泰州物流/郑州到宿迁物流 </section>
		        <section>
		          <h2>Shipping</h2>
		         企业宗旨：以物为根，铸物流名牌；以人为本，创行业一流。公司使命：联合全国各地的商业储运公司和其它相关企业推动中国物流业的现代化，振心物流产业。运营方式：网络运输、全方位服务、全过程跟踪。服务特点：运作方式信息网络化；反应能力快捷灵敏化。 </section>
		    <section>
		          <h2>Returns</h2>
		          公司已经和相关公司签署协议，将于2018年5月1日正式投入海上物流，届时会将展示相关海运路线，欢迎你们前来咨询。
		          </section>
		  </div>
		</div>

	</div>

<jsp:include page="down.jsp" flush="true" /> </boby>
</html>

