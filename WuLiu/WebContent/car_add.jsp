<%@ page contentType="text/html; charset=gb2312"%>
<%@ page import="java.sql.*"%>
<jsp:useBean id="connection" scope="page" class="com.wy.JDBConnection" />
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link rel="stylesheet" href="CSS/style.css">
<title>CarMessage_add page</title>
</head>

<Script language="javascript">
	function check() {
		if (form1.numbers.value == "") {
			alert("请填写车牌号码！！");
			form1.numbers.focus();
			return false;
		}
		if (form1.type.value == "") {
			alert("请填写车辆类型！！！");
			form1.type.focus();
			return false;
		}
		if (form1.carname.value == "") {
			alert("请填写车辆品牌！！！");
			form1.carname.focus();
			return false;
		}
		if (form1.loads.value == "") {
			alert("请填写车辆限重！！！");
			form1.loads.focus();
			return false;
		}
		if (form1.usetime.value == "") {
			alert("请填写使用年限！！！");
			form1.usetime.focus();
			return false;
		}
		if (form1.transtyle.value == "") {
			alert("请填写运输类型！！！");
			form1.transtyle.focus();
			return false;
		}
		if (form1.name.value == "") {
			alert("请填写驾驶员姓名！！！");
			form1.name.focus();
			return false;
		}
		if (form1.number.value == "") {
			alert("请填写驾驶证号码！！！");
			form1.number.focus();
			return false;
		}
		if (form1.styles.value == "") {
			alert("请填写驾驶证类型！！！");
			form1.styles.focus();
			return false;
		}
		if (form1.time.value == "") {
			alert("请填写驾驶员驾龄！！！");
			form1.time.focus();
			return false;
		}
		if (form1.linkman.value == "") {
			alert("请填写联系人！！！");
			form1.linkman.focus();
			return false;
		}
		if (form1.phone.value == "") {
			alert("请填写联系电话！！！");
			form1.phone.focus();
			return false;
		}
		if (form1.code.value == "") {
			alert("请填写发布时间！！！");
			form1.code.focus();
			return false;
		}
		if (form1.username.value == "") {
			alert("请填写发布人！！！");
			form1.username.focus();
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
		alert("您还未登录，不能发布信息，请前往登陆！！！");
		window.location.href = "login.jsp";
	</script>
	<%
		}
	%>
	<% 
ResultSet rs=null;
 String sql,username;
request.setCharacterEncoding("utf-8");
username=(String)session.getAttribute("name");
%>
	<div style="width：100%; height:70%;background-image:url('image/backa.jpg');">
	<table width="100%">
		<form action="car_addConfig.jsp" method="post" name="form1">
			<table width="100" align="center">
				<tr>
					<br>
					<td><center>
							<font size="4">车辆信息</font>
							</h2>
						</center></td>
				</tr>
				<table width="786" border="0" align="center" cellpadding="0"
					cellspacing="0">
					<tr>
						<td width="20%" height="34" align="right">车牌号码：</td>
						<td width="36%" height="34"><input type="text" name="numbers"
							size="20" style="width:150px; height:24px;border-width:1px;background:none;"></td>
						<td width="20%" height="34" align="right">车辆品名：</td>
						<td width="36%" height="34"><input type="text" name="carname"
							size="20" style="width:150px; height:24px;border-width:1px;background:none;"></td>
					</tr>
					<tr>
						<td width="20%" height="34" align="right">车辆类型：</td>
						<td width="36%" height="34"><input type="text" name="type"
							size="20" style="width:150px; height:24px;border-width:1px;background:none;"></td>
						<td width="20%" height="34" align="right">车辆限量：</td>
						<td width="36%" height="34"><input type="text" name="loads"
							size="20" style="width:130px; height:24px;border-width:1px;background:none;">&nbsp;吨</td>
					</tr>
					<tr>
						<td width="20%" height="34" align="right">已使用：</td>
						<td width="36%" height="34"><input type="text" name="usetime"
							size="20" style="width:130px; height:24px;border-width:1px;background:none;">&nbsp;年</td>
						<td width="20%" height="34" align="right">驾驶员名称：</td>
						<td width="36%" height="34"><input type="text" name="name"
							size="20" style="width:150px; height:24px;border-width:1px;background:none;"></td>
					</tr>
					<tr>
						<td width="20%" height="34" align="right">驾驶员驾龄：</td>
						<td width="36%" height="34"><input type="text" name="time"
							size="20" style="width:130px; height:24px;border-width:1px;background:none;">&nbsp;年</td>
						<td width="20%" height="34" align="right">驾驶证号码：</td>
						<td width="36%" height="34"><input type="text" name="number"
							size="20" style="width:150px; height:24px;border-width:1px;background:none;"></td>
					</tr>
					<tr>
						<td width="20%" height="34" align="right">驾驶证类型：</td>
						<td width="36%" height="34"><select size="1" name="styles" style="width:150px; height:24px;border-width:1px;background:none;">
								<option value="A类">A类</option>
								<option value="B类">B类</option>
								<option value="C类">C类</option>
						</select></td>
						<td width="20%" height="34" align="right">运输类型：</td>
						<td width="36%" height="34"><select size="1" name="transtyle" style="width:150px; height:24px;border-width:1px;background:none;">
								<option value="短途">短途</option>
								<option value="长途">长途</option>
						</select></td>
					</tr>
					<tr>
						<td width="20%" height="34" align="right">联系人：</td>
						<td width="36%" height="34"><input type="text"
							name="linkman" size="20" style="width:150px; height:24px;border-width:1px;background:none;"></td>
						<td width="20%" height="34" align="right">联系电话：</td>
						<td width="36%" height="34"><input type="text" name="phone"
							size="20" style="width:150px; height:24px;border-width:1px;background:none;"></td>
					</tr>

					<tr>
						<td width="20%" height="34" align="right">发布时间：</td>
						<td width="36%" height="34"><input type="text" name="code"
							size="20" style="width:150px; height:24px;border-width:1px;background:none;"></td>
						<td width="20%" height="34" align="right">发布人：</td>
						<td width="36%" height="34" colspan="3"><input type="hidden" value="<%=username%>"
							name="username" size="20" style="width:150px; height:24px;border-width:1px;background:none;"><%=username%></td>

					</tr>

					<tr>
						<td width="20%" height="65" align="right">备注：</td>
						<td width="82%" height="65" colspan="3"><textarea rows="3"
								name="meg" cols="76" style="border-width:1px;background:none;"></textarea></td>
					</tr>


					<tr>

						<td width="100%" height="40" colspan="4" align="center">

								<input type="submit" value="发布" name="B1"
									onClick="return check()" style="border-width:1px;background:none;"> &nbsp;&nbsp;&nbsp; 
									<input type="reset" style="border-width:1px;background:none;"
									value="重写" name="B2">&nbsp;&nbsp;&nbsp; 
									<input type="button" value="返回" style="border-width:1px;background:none;"
									onClick="location.href='car_select.jsp'">
						</td>

					</tr>
				</table>
			</table>
		</form>
		</table>
	</div>
	<jsp:include page="down.jsp" />
</body>
</html>