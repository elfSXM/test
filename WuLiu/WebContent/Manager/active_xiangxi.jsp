<%@ page contentType="text/html; charset=gb2312" %>
<%@ page import="java.util.Date,java.sql.*"%>
<jsp:useBean id="connection" scope="page" class="com.wy.JDBConnection"/>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link rel="stylesheet" href="../CSS/style.css">
<title>
placard_show page
</title>
</head>

<%!
ResultSet rs=null;
String sql;
String userName;
int num;
%>

<body bgcolor="#ffffff"><jsp:include page="mtop.jsp"/>
<form method="POST" action="active_changeConfig.jsp"name="form1">
<table width="785" height="238" border="1" align="center" cellpadding="0" cellspacing="0"bordercolor="#FFFFFF" bordercolordark="#333333" bordercolorlight="#FFFFFF">
  <tr>
    <td width="100%" height="39">
      <p align="center">动态信息显示</td>
  </tr>
<%
sql="select * from tb_logistics where ID="+request.getParameter("id");
try
{
rs=connection.executeQuery(sql);
if(rs.next())
{
num=rs.getInt("ID");
%>
  <tr>
    <td width="100%" height="37"> 标题：<%=rs.getString("Title")%></td>
  </tr>
  <tr>
    <td width="100%" height="37">内容：</td>
  </tr>
  <tr>
    <td width="100%" height="37">    <%=rs.getString("Content")%></td>
  </tr>
<tr>
<td width="100%" height="37">  发布人:<%=rs.getString("Author")%> 
</td>
</tr>
<tr>
<td width="100%" height="37"> 发布时间:<%=rs.getDate("IssueDate")%></td>
</tr>
<tr>
<td width="100%" height="37"> 文章号:<%=num%>
</td>
</tr>
<%
}
}catch(Exception e)
{
e.printStackTrace();
}
%>
<tr>
<td width="100%" height="37">
 <input type="button" value="修改" onClick="location.href='active_show.jsp?id=<%=num%>'">
  &nbsp;&nbsp;
 <input type="button" value="删除" onClick="location.href='active_delete.jsp?id=<%=num%>'">
  &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
    <input type="button" value="返回" onClick="location.href='active_select.jsp'">
  
</td>






   </tr>
</table>
</form>
<jsp:include page="down.jsp"/>
</body>
</html>