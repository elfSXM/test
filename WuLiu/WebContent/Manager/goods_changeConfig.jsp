<%@ page contentType="text/html; charset=gb2312" %>
<%@ page import="java.sql.*,java.util.Date"%>
<jsp:useBean id="connection" scope="page" class="com.wy.JDBConnection"/>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>
Goods_change_config page
</title>
</head>
<body bgcolor="#ffffff">
<%!
Date date=new Date();
String sql;
ResultSet rs;
int i;
%>
<%
request.setCharacterEncoding("gb2312");
//String gclass=request.getParameter("用户");
//String gname=request.getParameter("用户");
String gcount=request.getParameter("gclass");
String gunit=request.getParameter("gname");
String startProvince=request.getParameter("gcount");
String gstartcity=request.getParameter("gunit");
String endProvince=request.getParameter("endProvince");
String g=request.getParameter("startProvince");
//String gendcity=request.getParameter("货物重量单位");
String gtransstyle=request.getParameter("gendcity");
String gtime=request.getParameter("gtransstyles");
String glink=request.getParameter("gtransstyle");
//java.sql.Date gshowdate=new java.sql.Date(date.getYear(),date.getMonth(),date.getDate());
sql="update order_message set 联系人='"+gcount+"',联系电话='"+gunit+"',起始地='"
+startProvince+"',目的地='"+gstartcity+"',货物类型='"+
endProvince+"',货物重量='"+g+"',运输时间='"+gtransstyle+"',订单状态='"+
gtime+"',运输类型='"+glink+"' where 订单号='"+request.getParameter("id")+"'";
boolean sert=connection.executeUpdata(sql);
if(sert)
{%>
<script language="javascript">
alert("修改成功！");
window.location.href="goods_select.jsp";
</script>
<%
}else
{
%>
<script language="javascript">
alert("修改失败！");
history.back();
<%
}
%>
</script>
</body>
</html>
