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
      <p align="center">��̬��Ϣ��ʾ</td>
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
    <td width="100%" height="37"> ���⣺<%=rs.getString("Title")%></td>
  </tr>
  <tr>
    <td width="100%" height="37">���ݣ�</td>
  </tr>
  <tr>
    <td width="100%" height="37">    <%=rs.getString("Content")%></td>
  </tr>
<tr>
<td width="100%" height="37">  ������:<%=rs.getString("Author")%> 
</td>
</tr>
<tr>
<td width="100%" height="37"> ����ʱ��:<%=rs.getDate("IssueDate")%></td>
</tr>
<tr>
<td width="100%" height="37"> ���º�:<%=num%>
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
 <input type="button" value="�޸�" onClick="location.href='active_show.jsp?id=<%=num%>'">
  &nbsp;&nbsp;
 <input type="button" value="ɾ��" onClick="location.href='active_delete.jsp?id=<%=num%>'">
  &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
    <input type="button" value="����" onClick="location.href='active_select.jsp'">
  
</td>






   </tr>
</table>
</form>
<jsp:include page="down.jsp"/>
</body>
</html>