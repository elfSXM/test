<%@ page contentType="text/html; charset=gb2312"%>
<html>
<head>
<title>register</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link href="CSS/style.css" type="text/css" rel="stylesheet">
</head>
<script language="javascript">
	function check() {
		if (form1.name.value == "") {
			alert("请输入你的用户名");
			form1.name.focus();
			return false;
		}
		if (form1.password.value == "") {
			alert("请输入你注册的密码");
			form1.password.focus();
			return false;
		}
		if (form1.repassword.value == "") {
			alert("请输入确认密码");
			form1.repassword.focus();
			return false;
		}
		if (form1.password.value != form1.repassword.value) {
			alert("你输入的两次密码不一致");
			return false;
		}
		if (form1.email.value == "") {
			alert("请输入你的Email址");
			form1.email.focus();
			return false;
		}


		if (form1.phone.value == "") {
			alert("请输入你的联系电话");
			form1.phone.focus();
			return false;
		}
		if (form1.question.value == "") {
			alert("输入密码提示问题便于取回密码");
			form1.question.focus;
			return false;
		}
		if (form1.result.value == "") {
			alert("请输入回答问题的答案");
			form1.result.focus();
			return false;
		}
	}
</script>
<body>
<jsp:include page="top.jsp" flush="true" />
<div style="width：100%; height:70%;background-image:url('image/backa.jpg');">
<table width="100%" >

		<form method="POST" action="regist_config.jsp" name="form1" >

			
			<table width="791" border="0" cellpadding="0" cellspacing="0" align="center">
				<tr>
					<td height="63"><div align="center">
							<p>
							<br><br>
								<b>会员注册</b>
							</p>
						</div></td>
				</tr>
			</table>
<br>
			<table width="791" height="205" border="0" cellpadding="0"
				cellspacing="0" align="center">
				<tr>
					<td width="46%" align="left" height="34"><div align="right">用户名：</div></td>
					<td width="54%" align="left"><input type="text" name="name"
						size="20" style="border-width:1px;background:none;"></td>
				</tr>
				<tr>
					<td width="46%" height="34">
						<p align="right">密码：</p>
					</td>
					<td width="54%"><input type="password" name="password"
						size="20" style="border-width:1px;background:none;"></td>
				</tr>
				<tr>
					<td width="46%" height="34">
						<p align="right">确认密码：</p>
					</td>
					<td width="54%"><input name="repassword" type="password"
						size="20" maxlength="16" style="border-width:1px;background:none;"></td>
				</tr>
				<tr>
					<td width="46%" height="34">
						<div align="right">性别：</div>
					</td>
					<td width="54%">&nbsp; 男 <input type="radio" value="man"
						checked name="sex" style="border-width:1px;background:none;"> &nbsp; 女 <input type="radio"
						name="sex" value="moman" style="border-width:1px;background:none;"></td>
				</tr>
				<tr>
					<td width="46%" height="34">
						<p align="right">电话：</p>
					</td>
					<td width="54%"><input type="text" name="phone" size="20" style="border-width:1px;background:none;"></td>
				</tr>
				<tr>
					<td width="46%" height="34">
						<p align="right">Email：</p>
					</td>
					<td width="54%"><input type="text" name="email" size="20" style="border-width:1px;background:none;"></td>
				</tr>
				<tr>
					<td width="46%" height="34">
						<p align="right">找回密码问题：</p>
					</td>
					<td width="54%"><input style="border-width:1px;background:none;" type="text" name="question" size="20"></td>
				</tr>
				<tr>
					<td width="46%" height="34"><div align="right">问题答案：</div></td>
					<td width="54%"><input type="text" name="result" size="20" style="border-width:1px;background:none;"></td>
				</tr>
				<tr>				
					<td height="16" colspan="2">
						<div align="center">
						<br><br>
							<input style=" background:none;" type="submit" value="注册" name="Submit"
								onClick="return check()"> &nbsp;&nbsp;
								<input style="background:none;" type="reset" value="重置">&nbsp;&nbsp;
							<input style="background:none;" type="button" value="返回" onClick="history.back()">

						</div>
					</td>
				</tr>
			</table>


		</form>
	</table>
</div>
<jsp:include page="down.jsp" flush="true" />
</body>
</html>
