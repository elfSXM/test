<%@ page contentType="text/html; charset=gb2312" import="java.sql.*, java.io.*"%>
<jsp:useBean id="connection" scope="page" class="com.wy.JDBConnection"/>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link rel="stylesheet" href="CSS/style.css">
<title>
Enterprise page
</title>
</head>
<%!
ResultSet rs=null;
String sql;
String code,userName;
String username,login;
int num;
%>

<body bgcolor="#ffffff">
<%
login=(String)session.getAttribute("login");
username=(String)session.getAttribute("name");
if(login==null)
{
%>
<script language="javascript">
alert("����δ��¼�����ܲ鿴������Ϣ����ǰ����½������");
window.location.href="login.jsp";
</script>
<%}
%>

<% 
ResultSet rs=null;
 String sql,username;
request.setCharacterEncoding("utf-8");
username=(String)session.getAttribute("name");
%>

<jsp:include page="top.jsp"/>
<div style="width��100%; height:70%;background-image:url('image/backa.jpg');">
<br><br>
<table width="1150" height="50" border="1" align="center" cellpadding="0" cellspacing="0" >
  <tr>
      <center><font size="4">�ҵĶ���</font></h2></center>
<br>
  <tr>
    <td width="10%" height="29" align="center">������</td>
   <td width="10%" height="29" align="center">��ϵ��</td>
   <td width="10%" height="29" align="center">��ϵ�绰</td>
    <td width="10%" height="29" align="center">��ʼ��</td>
    <td width="10%" height="29" align="center">Ŀ�ĵ�</td>
    <td width="10%" height="29" align="center">��������</td>
    <td width="10%" height="29" align="center">��������</td>
    <td width="10%" height="29" align="center">����ʱ��</td>
    <td width="10%" height="29" align="center">����״̬</td>
    <td width="10%" height="29" align="center">��������</td>
</tr>
    <%
    sql="select * from order_message where �û�='"+username+"'   order by ����״̬  DESC";
    rs=connection.executeQuery(sql);
    while(rs.next())
	{%>
	<tr>
	<td width="10%" height="29" align="center"><%=rs.getInt("������")%></td>
	<td width="10%" height="29" align="center"><%=rs.getString("��ϵ��")%></td>
	<td width="10%" height="29" align="center"><%=rs.getString("��ϵ�绰")%></td>
	<td width="10%" height="29" align="center"><%=rs.getString("��ʼ��")%></td>
	<td width="10%" height="29" align="center"><%=rs.getString("Ŀ�ĵ�")%></td>
	<td width="10%" height="29" align="center"><%=rs.getString("��������")%></td>
	<td width="10%" height="29" align="center"><%=rs.getString("��������")%>ǧ��</td>
	<td width="10%" height="29" align="center"><%=rs.getString("����ʱ��")%></td>
	<td width="10%" height="29" align="center"><%=rs.getString("����״̬")%></td>
	<td width="10%" height="29" align="center"><%=rs.getString("��������")%></td>
	<%}%>
	</table>
	</div>
	<jsp:include page="down.jsp"/>
</body>
</html>