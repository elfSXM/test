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
			alert("����������û���");
			form1.name.focus();
			return false;
		}
		if (form1.password.value == "") {
			alert("��������ע�������");
			form1.password.focus();
			return false;
		}
		if (form1.repassword.value == "") {
			alert("������ȷ������");
			form1.repassword.focus();
			return false;
		}
		if (form1.password.value != form1.repassword.value) {
			alert("��������������벻һ��");
			return false;
		}
		if (form1.email.value == "") {
			alert("���������Emailַ");
			form1.email.focus();
			return false;
		}


		if (form1.phone.value == "") {
			alert("�����������ϵ�绰");
			form1.phone.focus();
			return false;
		}
		if (form1.question.value == "") {
			alert("����������ʾ�������ȡ������");
			form1.question.focus;
			return false;
		}
		if (form1.result.value == "") {
			alert("������ش�����Ĵ�");
			form1.result.focus();
			return false;
		}
	}
</script>
<body>
<jsp:include page="top.jsp" flush="true" />
<div style="width��100%; height:70%;background-image:url('image/backa.jpg');">
<table width="100%" >

		<form method="POST" action="regist_config.jsp" name="form1" >

			
			<table width="791" border="0" cellpadding="0" cellspacing="0" align="center">
				<tr>
					<td height="63"><div align="center">
							<p>
							<br><br>
								<b>��Աע��</b>
							</p>
						</div></td>
				</tr>
			</table>
<br>
			<table width="791" height="205" border="0" cellpadding="0"
				cellspacing="0" align="center">
				<tr>
					<td width="46%" align="left" height="34"><div align="right">�û�����</div></td>
					<td width="54%" align="left"><input type="text" name="name"
						size="20" style="border-width:1px;background:none;"></td>
				</tr>
				<tr>
					<td width="46%" height="34">
						<p align="right">���룺</p>
					</td>
					<td width="54%"><input type="password" name="password"
						size="20" style="border-width:1px;background:none;"></td>
				</tr>
				<tr>
					<td width="46%" height="34">
						<p align="right">ȷ�����룺</p>
					</td>
					<td width="54%"><input name="repassword" type="password"
						size="20" maxlength="16" style="border-width:1px;background:none;"></td>
				</tr>
				<tr>
					<td width="46%" height="34">
						<div align="right">�Ա�</div>
					</td>
					<td width="54%">&nbsp; �� <input type="radio" value="man"
						checked name="sex" style="border-width:1px;background:none;"> &nbsp; Ů <input type="radio"
						name="sex" value="moman" style="border-width:1px;background:none;"></td>
				</tr>
				<tr>
					<td width="46%" height="34">
						<p align="right">�绰��</p>
					</td>
					<td width="54%"><input type="text" name="phone" size="20" style="border-width:1px;background:none;"></td>
				</tr>
				<tr>
					<td width="46%" height="34">
						<p align="right">Email��</p>
					</td>
					<td width="54%"><input type="text" name="email" size="20" style="border-width:1px;background:none;"></td>
				</tr>
				<tr>
					<td width="46%" height="34">
						<p align="right">�һ��������⣺</p>
					</td>
					<td width="54%"><input style="border-width:1px;background:none;" type="text" name="question" size="20"></td>
				</tr>
				<tr>
					<td width="46%" height="34"><div align="right">����𰸣�</div></td>
					<td width="54%"><input type="text" name="result" size="20" style="border-width:1px;background:none;"></td>
				</tr>
				<tr>				
					<td height="16" colspan="2">
						<div align="center">
						<br><br>
							<input style=" background:none;" type="submit" value="ע��" name="Submit"
								onClick="return check()"> &nbsp;&nbsp;
								<input style="background:none;" type="reset" value="����">&nbsp;&nbsp;
							<input style="background:none;" type="button" value="����" onClick="history.back()">

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
