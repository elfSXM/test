<%@ page contentType="text/html; charset=gb2312"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">

<title>登录</title>
</head>
<Script language="javascript">
	function check() {
		if (form1.name.value == "") {
			alert("请输入用户名！！");
			form1.name.focus();
			form1.password.value = "";
			return false;
		}
		if (form1.password.value == "") {
			alert("请输入密码！！！");
			form1.password.focus();
			return false;
		}
	}
	function goback() {
		window.location.href = "index.jsp";
	}
</Script>
<link rel="stylesheet" href="CSS/style.css">

<boby>
<jsp:include page="top.jsp"/>
<div style="width：100%; height:70%;background-image:url('image/backa.jpg');">
<table width="500" height="250" border="0" align="center" cellpadding="0" cellspacing="0" >
	<tr>
		<td height="149">
			<form name="form1" action="login_config.jsp" method="post">
				<table width="272" border="0" align="center" cellpadding="0"
					cellspacing="0">
					<tr>
						<td height="50"><font size="5" face="宋体"> 用户名: </font>
						<input type="text" name="name" style="width:140px;height:30px;border-width:1px;background:none;">
						
					</tr>
					<tr>	
					<td height="50"><font size="5" face="宋体"> 密&nbsp;&nbsp;码: </font>
					<input name="password" type="password" style="width:140px;height:30px;border-width:1px;background:none;"></td>
					</tr>
					
					<tr>
					<br><br>
						<td height="50" align="center">
						<br><br>
						<input style=" background:none;" type="submit" value="登录" name="login"onClick="return check()"> &nbsp;&nbsp;&nbsp;
						
						 <input style=" background:none;" type="button" value="找回密码" onClick="location.href='found.jsp'">&nbsp;&nbsp;&nbsp;
						<input style="background:none;" type="button" value="返回" name="back" onClick="goback()"> 
						</td>
						
						
					</tr>
				</table>
			</form>
		</td>
	</tr>
</table>
</div>

<jsp:include page="down.jsp" flush="true" />
</boby>

</html>

