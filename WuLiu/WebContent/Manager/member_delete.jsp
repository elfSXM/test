<%@ page contentType="text/html; charset=GBK" %>
<jsp:useBean id="connection" scope="page" class="com.wy.JDBConnection"/>
<html>
<head>
<title>
Member_delete page
</title>
</head>
<%
String code,sql;
%>
<body bgcolor="#ffffff">
<%
 sql="delete from `db_wuliu`.`tb_Customer` where `ID`="+request.getParameter("id");
boolean bb=connection.executeUpdata(sql);
if(bb)
{
%>
<script language="javascript">
alert("É¾³ý³É¹¦£¡");
window.location.href=("member_select.jsp");
</script>
<%
} else
{
%>
<script language="javascript">
alert("É¾³ýÊ§°Ü£¡");
history.back();
</script><%
}
%>
</body>
</html>
