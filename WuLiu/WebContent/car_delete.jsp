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
String sql="delete  from tb_CarMessage where Code="+request.getParameter("id");
boolean bb=connection.executeUpdata(sql);
if(bb)
{
%>
<script language="javascript">
 alert("车辆信息已经删除");
 window.location.href="car_select.jsp";
</script>
<%

}else
{
%>
<script language="javascript">
 alert("车辆信息删除失败!!!");
history.back();
</script>
<%
}
%>
</body>
</html>
