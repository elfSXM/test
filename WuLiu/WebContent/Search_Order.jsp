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
alert("您还未登录，不能查看订单信息，请前往登陆！！！");
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
<div style="width：100%; height:70%;background-image:url('image/backa.jpg');">
<br><br>
<table width="1150" height="50" border="1" align="center" cellpadding="0" cellspacing="0" >
  <tr>
      <center><font size="4">我的订单</font></h2></center>
<br>
  <tr>
    <td width="10%" height="29" align="center">订单号</td>
   <td width="10%" height="29" align="center">联系人</td>
   <td width="10%" height="29" align="center">联系电话</td>
    <td width="10%" height="29" align="center">起始地</td>
    <td width="10%" height="29" align="center">目的地</td>
    <td width="10%" height="29" align="center">货物类型</td>
    <td width="10%" height="29" align="center">货物重量</td>
    <td width="10%" height="29" align="center">运输时间</td>
    <td width="10%" height="29" align="center">订单状态</td>
    <td width="10%" height="29" align="center">运输类型</td>
</tr>
    <%
    sql="select * from order_message where 用户='"+username+"'   order by 订单状态  DESC";
    rs=connection.executeQuery(sql);
    while(rs.next())
	{%>
	<tr>
	<td width="10%" height="29" align="center"><%=rs.getInt("订单号")%></td>
	<td width="10%" height="29" align="center"><%=rs.getString("联系人")%></td>
	<td width="10%" height="29" align="center"><%=rs.getString("联系电话")%></td>
	<td width="10%" height="29" align="center"><%=rs.getString("起始地")%></td>
	<td width="10%" height="29" align="center"><%=rs.getString("目的地")%></td>
	<td width="10%" height="29" align="center"><%=rs.getString("货物类型")%></td>
	<td width="10%" height="29" align="center"><%=rs.getString("货物重量")%>千克</td>
	<td width="10%" height="29" align="center"><%=rs.getString("运输时间")%></td>
	<td width="10%" height="29" align="center"><%=rs.getString("订单状态")%></td>
	<td width="10%" height="29" align="center"><%=rs.getString("运输类型")%></td>
	<%}%>
	</table>
	</div>
	<jsp:include page="down.jsp"/>
</body>
</html>