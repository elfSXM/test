<%@ page contentType="text/html; charset=GBK" %>
<jsp:useBean id="connection" scope="page" class="com.wy.JDBConnection"/>
<html>
<head>
<title>
CarMessage_delete page
</title>
</head>
<body bgcolor="#ffffff">
<%
String sql="DELETE FROM `db_wuliu`.`tb_CarMessage` WHERE `Code` ="+request.getParameter("id");
boolean bb=connection.executeUpdata(sql);
if(bb)
{
%>
<script language="javascript">
 alert("ɾ���ɹ�!");
 window.location.href="car_select.jsp";
</script>
<%
}else
{
%>
<script language="javascript">
 alert("ɾ��ʧ��!");
 history.back();
</script>
<%
}
%>
</body>
</html>
