<%@ page language="java" import="java.util.*" pageEncoding="utf-8" %>
<%@ page import="java.util.Date"%>
<jsp:useBean id="connection" scope="page" class="com.wy.JDBConnection"/>

<html>
  <head> 
    <title>My JSP 'Order_sql.jsp' starting page</title>
  </head>
  <%!
String sql;
Date date=new Date();
%>
  <body>
    <%
request.setCharacterEncoding("utf-8");
 String gphone=request.getParameter("gphone");
String glink=request.getParameter("glink");
String username=(String)session.getAttribute("name");
String begin=request.getParameter("gbegincity");
String end=request.getParameter("gendcity");
String gclass=request.getParameter("gclass");
String gtransstyle=request.getParameter("gtransstyle");
String gcount=request.getParameter("gcount");
String gtime=request.getParameter("gtime");
 sql="insert into order_message(用户,联系人,联系电话,起始地,目的地,货物类型,货物重量,货物重量单位,运输时间,运输类型) values('"+username+"','"+glink+"','"+gphone+"','"+begin+"','"+end+"','"+gclass+"','"+gcount+"','kg','"+gtime+"','"+gtransstyle+"')";
 boolean bb=connection.executeUpdata(sql);
 if(bb)
{%>
<script language="javascript">
alert("您的订单已生成！");
window.location.href="Search_Order.jsp";
</script>
<%
}else
{
%>
<script language="javascript">
alert("您的订单生成失败！");
history.back();
</script>
<%
}
%>
  </body>
</html>
