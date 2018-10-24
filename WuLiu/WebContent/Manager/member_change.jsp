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
			alert("请输入你的用户名");
			form1.name.focus();
			return false;
		}

		if(form1.password.value==""){
			alert("请输入你注册的密码");
			form1.password.focus();
			return false;
		}
		if(form1.repassword.value==""){
			alert("请输入确认密码");
			form1.repassword.focus();
			return false;
		}
		if(form1.password.value!=form1.repassword.value){
			alert("你输入的两次密码不一致");
			return false;
		}
		if(form1.email.value==""){
			alert("请输入你的Email址");
			form1.email.focus();
			return false;
		}


		if(form1.phone.value==""){
			alert("请输入你的联系电话");
			form1.phone.focus();
			return false;
		}
		if(form1.question.value==""){
			alert("输入密码提示问题便于取回密码");
			form1.question.focus;
			return false;
		}
		if(form1.result.value==""){
			alert("请输入回答问题的答案");
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
会员修改
   <p> *&nbsp; 注意以下内容必须填写完整。</p>
<table width="50%" height="380" border="1" cellpadding="0" cellspacing="0" bordercolor="#FFFFFF" bordercolordark="#333333" bordercolorlight="#FFFFFF" >
<tr>
    <td width="50%" align="right" height="16">名字：</td>
    <td>
      <input type="text" name="name" size="20" value="<%=rs.getString("Name")%>"></td>
  </tr>
  <tr>
    <td width="50%" height="16"align="right">密码：</td>
      <td>
        <input type="password" name="password" size="20" value="<%=rs.getString("Password")%>">
    </td>
  </tr>
  <tr>
    <td width="50%" height="16"align="right">确认密码：</td>
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
      性别：</td>
      <td>
    <%String xb=rs.getString("Sex");
	 
	  %>  
    <select size="1" name="sex">
       <option value="<%=xb%>" selected><%=xb%></option>
        <option value="男">男</option>
        <option value="女">女</option>
       </select>	 
    </td>
  </tr>
  <tr>
    <td width="50%" height="16"align="right"> 电话：</td>
      <td>
        <input type="text" name="phone" size="20" value="<%=rs.getString("Phone")%>">
   
    </td>
  </tr>
  <tr>
    <td width="50%" height="16"align="right">找回密码问题：</td>
      <td>
    <input type="text" name="question" size="20" value="<%=rs.getString("Question")%>">
    </td>
  </tr>
  <tr>
    <td width="50%" height="16"align="right">问题答案：</td>
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
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="submit" value="修改" name="Submit"onClick="return check()"> 
&nbsp;&nbsp;
 <input type="button" value="返回" onClick="history.back()">
    </td>
  </tr>
</table>
</div>
</form>
<%}%><jsp:include page="down.jsp"/>
</body>
</html>
