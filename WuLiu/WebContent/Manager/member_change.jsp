<%@ page contentType="text/html; charset=gb2312" import="java.sql.*,java.util.*"%>
<jsp:useBean id="connection" scope="page" class="com.wy.JDBConnection"/>
<html>
<head>
<link rel="stylesheet" href="../CSS/style.css">
<title>
Member_change page
</title>
</head>
<script language="javascript">
      function check(){
		if(form1.name.value==""){
			alert("����������û���");
			form1.name.focus();
			return false;
		}

		if(form1.password.value==""){
			alert("��������ע�������");
			form1.password.focus();
			return false;
		}
		if(form1.repassword.value==""){
			alert("������ȷ������");
			form1.repassword.focus();
			return false;
		}
		if(form1.password.value!=form1.repassword.value){
			alert("��������������벻һ��");
			return false;
		}
		if(form1.email.value==""){
			alert("���������Emailַ");
			form1.email.focus();
			return false;
		}


		if(form1.phone.value==""){
			alert("�����������ϵ�绰");
			form1.phone.focus();
			return false;
		}
		if(form1.question.value==""){
			alert("����������ʾ�������ȡ������");
			form1.question.focus;
			return false;
		}
		if(form1.result.value==""){
			alert("������ش�����Ĵ�");
			form1.result.focus();
			return false;
		}
	}
</script>
<%!
ResultSet rs=null;
String sql;
int code;
%>
<body><jsp:include page="mtop.jsp"/>
<%
sql="select * from tb_Customer where ID="+request.getParameter("id");
rs=connection.executeQuery(sql);
while(rs.next())
{
code=rs.getInt("ID");
%>
<form method="POST" action="member_changeConfig.jsp" name="form1">
    <div align="center">
��Ա�޸�
   <p> *&nbsp; ע���������ݱ�����д������</p>
<table width="50%" height="380" border="1" cellpadding="0" cellspacing="0" bordercolor="#FFFFFF" bordercolordark="#333333" bordercolorlight="#FFFFFF" >
<tr>
    <td width="50%" align="right" height="16">���֣�</td>
    <td>
      <input type="text" name="name" size="20" value="<%=rs.getString("Name")%>"></td>
  </tr>
  <tr>
    <td width="50%" height="16"align="right">���룺</td>
      <td>
        <input type="password" name="password" size="20" value="<%=rs.getString("Password")%>">
    </td>
  </tr>
  <tr>
    <td width="50%" height="16"align="right">ȷ�����룺</td>
      <td>
        <input type="password" name="repassword" size="20" value="<%=rs.getString("Password")%>">
    </td>
  </tr>
  
  <tr><td width="50%" height="16"align="right">
      Email:</td>
      <td>
        <input type="text" name="email" size="20" value="<%=rs.getString("Email")%>">
    </td>
    
  </tr>
  <tr>

    <td width="50%" height="16"align="right">
      �Ա�</td>
      <td>
    <%String xb=rs.getString("Sex");
	 
	  %>  
    <select size="1" name="sex">
       <option value="<%=xb%>" selected><%=xb%></option>
        <option value="��">��</option>
        <option value="Ů">Ů</option>
       </select>	 
    </td>
  </tr>
  <tr>
    <td width="50%" height="16"align="right"> �绰��</td>
      <td>
        <input type="text" name="phone" size="20" value="<%=rs.getString("Phone")%>">
   
    </td>
  </tr>
  <tr>
    <td width="50%" height="16"align="right">�һ��������⣺</td>
      <td>
    <input type="text" name="question" size="20" value="<%=rs.getString("Question")%>">
    </td>
  </tr>
  <tr>
    <td width="50%" height="16"align="right">����𰸣�</td>
      <td>
      <input type="text" name="result" size="20" value="<%=rs.getString("Result")%>"></td>
  </tr>
<tr>
    <td width="50%" height="16"align="right">ID:</td>
      <td>
      <%=code%><input type="hidden" name="id" size="20"value="<%=code%>"></td>
  </tr>
  <tr>
    <td width="50%" height="16" align="right">
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="submit" value="�޸�" name="Submit"onClick="return check()"> 
&nbsp;&nbsp;
 <input type="button" value="����" onClick="history.back()">
    </td>
  </tr>
</table>
</div>
</form>
<%}%><jsp:include page="down.jsp"/>
</body>
</html>
