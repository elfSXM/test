<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="com.mysql.jdbc.Driver"%>
<%@ page import="java.sql.*"%>
<jsp:useBean id="connection" scope="page" class="com.wy.JDBConnection" />
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link rel="stylesheet" href="CSS/style.css">
<title>Goods page</title>
</head>
<Script language="javascript">
	function check() {
		if (form1.gclass.value == "") {
			alert("请填写货物类型！");
			form1.gclass.focus();
			return false;
		}
		if (form1.gcount.value == "") {
			alert("请填写货物重量！");
			form1.gcount.focus();
			return false;
		}
		if (form1.gtransstyle.value == "") {
			alert("请填写运输类型！");
			form1.gtransstyle.focus();
			return false;
		}
		if (form1.gtime.value == "") {
			alert("请填写运输时间！");
			form1.gtime.focus();
			return false;
		}
		if (form1.gphone.value == "") {
			alert("请填写联系电话！");
			form1.gphone.focus();
			return false;
		}
		if (form1.glink.value == "") {
			alert("请填写联系人！");
			form1.glink.focus();
			return false;
		} else {
			return false;
		}
	}
</Script>
<%!ResultSet rs = null;
	String sql;
	String code, userName;
	String username, login;
	int num;%>
<jsp:include page="top.jsp" />
<body>
	<%
		login = (String) session.getAttribute("login");
		username = (String) session.getAttribute("name");
		if (login == null) {
	%>
	<script language="javascript">
		alert("您还未登录，不能在线下单，请前往登陆！！！");
		window.location.href = "login.jsp";
	</script>
	<%
		}
	%>
	<div
		style="width：100%; height:70%;background-image:url('image/backa.jpg');">
		<table width="100%">
			<tr>
				<br>
				<br>
				<br>
				<td><center>
						<font size="5">订单</font>
						</h2>
					</center></td>
			</tr>

			<form method="POST" action="Order_sql.jsp" name="form1">
				<table width="580" border="0" align="center" cellpadding="0"
					cellspacing="0">
					<tr>
						<td width="20%" height="55">
							<p align="center">起始城市：</p>
						</td>
						<td width="36%" height="55">

							<p align="left">

								&nbsp;&nbsp; <select size="1" name="gbegincity"
									style="zoom:125%;border-width:1px;background:none;">
									<option value="北京" selected>北京</option>
									<option value="郑州">郑州</option>
									<option value="上海">上海</option>
								</select>
							</p>
						</td>
						<td width="20%" height="54">
							<p align="center">抵达城市：</p>
						</td>
						<td width="36%" height="55">

							<p align="left">

								&nbsp;&nbsp; <select size="1" name="gendcity"
									style="zoom:125%;border-width:1px;background:none;">
									<option value="杭州" selected>杭州</option>
									<option value="郑州">郑州</option>
									<option value="苏州">苏州</option>
								</select>
							</p>
						</td>
					</tr>
					<tr>
						<td width="20%" height="55">
							<p align="center">货物类型：</p>
						</td>
						<td width="36%" height="55">
							<p align="left">
								<input type="text" name="gclass"
									style="width:140px; height:30px; border-width:1px;background:none;">
							</p>
						</td>
						<td width="20%" height="54">
							<p align="center">货物重量：</p>
						</td>
						<td width="36%" height="54">
							<p align="left">
								<input type="text" name="gcount"
									style="width:100px; height:30px; border-width:1px;background:none;">&nbsp;kg
							</p>
						</td>
					</tr>
					<tr>
						<td width="20%" height="55">
							<p align="center">运输类型：</p>
						</td>
						<td width="36%" height="55">

							<p align="left">

								&nbsp;&nbsp; <select size="1" name="gtransstyle"
									style="zoom:125%;border-width:1px;background:none;">
									<option value="普通" selected>普通</option>
									<option value="快速">快速</option>
									<option value="特快">特快</option>
									<option value="加急">加急</option>
								</select>
							</p>
						</td>
						<td width="18%" height="45">
							<p align="center">运输时间：</p>
						</td>
						<td width="30%" height="45">
							<p align="left">
								<input type="text" name="gtime"
									style="width:140px; height:30px; border-width:1px;background:none;">
							</p>
						</td>
					</tr>
					<tr>
						<td width="20%" height="45">
							<p align="center">联系电话：</p>
						</td>
						<td width="36%" height="45">
							<p align="left">
								<input type="text" name="gphone"
									style="width:140px; height:30px; border-width:1px;background:none;">
							</p>
						</td>
						<td width="18%" height="45">
							<p align="center">联系人：</p>
						</td>
						<td width="30%" height="45">
							<p align="left">
								<input type="text" name="glink"
									style="width:140px; height:30px; border-width:1px;background:none;">
							</p>
						</td>
					</tr>
					<tr>
						<td width="620" height="90" colspan="4" align="center">
								<input type="submit" name="on" value="提交订单"
									style="background:none;"
									onClick="check()">&nbsp;&nbsp;&nbsp;&nbsp; <input type="reset" name="reset"
									value="重置"
									style="background:none;">&nbsp;&nbsp;&nbsp;&nbsp;
								<input style="background:none;" type="button" value="返回" onClick="history.back()">
						</td>
					</tr>
				</table>
			</form>
		</table>

	</div>
</body>
<jsp:include page="down.jsp" />
</html>