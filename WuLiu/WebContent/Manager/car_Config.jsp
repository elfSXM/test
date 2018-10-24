<%@ page contentType="text/html; charset=GB2312" %>
<%@ page import="java.util.Date"%>
<jsp:useBean id="connection" scope="page" class="com.wy.JDBConnection"/>
<html>
<head>
<title>
caradd_config page
</title>
</head>
<%!
String sql;
Date date=new Date();
%>
<body bgcolor="#ffffff">
<%
request.setCharacterEncoding("gb2312");
String a=request.getParameter("numbers");
String b=request.getParameter("carname");
String c=request.getParameter("type");
String d=request.getParameter("loads");
String e=request.getParameter("usetime");
String f=request.getParameter("name");
String g=request.getParameter("time");
String h=request.getParameter("number");
String i=request.getParameter("styles");
String j=request.getParameter("transtyle");
String k=request.getParameter("linkman");
String l=request.getParameter("phone");
String m=request.getParameter("meg");
String n=request.getParameter("code");
String o=request.getParameter("username");
java.sql.Date datatime=new java.sql.Date(date.getYear(),date.getMonth(),date.getDate());
sql="insert into tb_carmessage values(null,'"+a+"','"+b+"','"+c+"','"+d+"','"+e+"','"+f+"','"+g+"','"+h+"','"+i+"','"+j+"','"+k+"','"+l+"','"+m+"','"+n+"','"+o+"')";
boolean bb=connection.executeUpdata(sql);
if(bb)
{%>
<script language="javascript">
alert("添加成功！");
window.location.href="car_select.jsp";
</script>
<%
}else
{
%>
<script language="javascript">
alert("添加失败！");
history.back();
</script>
<%
}
%>
</body>
</html>
