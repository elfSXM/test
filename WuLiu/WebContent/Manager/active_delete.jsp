<%@ page contentType="text/html; charset=GB2312"%>
<jsp:useBean id="connection" scope="page" class="com.wy.JDBConnection"/>
<html>
<head>
<title>
Goods_delete page
</title>
</head>
<body bgcolor="#ffffff">
<%

String sql="DELETE FROM `db_wuliu`.`tb_logistics` WHERE `ID` ="+request.getParameter("id");
boolean dele=connection.executeUpdata(sql);
if(dele)
{
%>
<script language="javascript">
alert("É¾³ý³É¹¦£¡");
window.location.href="active_select.jsp";
</script>

<%
}else
{
%>
<script language="javascript">
alert("É¾³ýÊ§°Ü£¡");
history.back();
</script>
<%
}
%>
</body>
</html>
