<%@ page contentType="text/html; charset=GB2312" %>
<%@ page import="java.util.Date"%>
<jsp:useBean id="connection" scope="page" class="com.wy.JDBConnection"/>
<html>
<head>
<title>
placard_show_config page
</title>
</head>
<%!
String sql;
Date date=new Date();
%>
<body bgcolor="#ffffff">
<%
request.setCharacterEncoding("gb2312");
String title=request.getParameter("title");
String content=request.getParameter("content");
String author=request.getParameter("author");
java.sql.Date datatime=new java.sql.Date(date.getYear(),date.getMonth(),date.getDate());
sql="insert tb_logistics values(null,'"+title+"','"+content+"','"+author+"','"+datatime+"')";
boolean bb=connection.executeUpdata(sql);
if(bb)
{%>
<script language="javascript">
alert("���ӳɹ���");
window.location.href="active_select.jsp";
</script>
<%
}else
{
%>
<script language="javascript">
alert("����ʧ�ܣ�");
history.back();
</script>
<%
}
%>
</body>
</html>