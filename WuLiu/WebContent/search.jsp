<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page import="com.mysql.jdbc.Driver" %>
<%@ page import="java.sql.*" %>
<jsp:useBean id="connection" scope="page" class="com.wy.JDBConnection"/>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>   
    <title>My JSP 'search.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
  </head>
  <Script language="javascript">
function check()
{ 
 <%int p=0;
  ResultSet rs=null;
 String sql;
 sql="select * from tb_CarMessage";
 rs=connection.executeQuery(sql);
 
 
 while(rs.next()){ 
 String Begin=rs.getString("begin");
 String End=rs.getString("end");
 %>
 if(("<%=Begin%>"==form1.gstartcity.value)&&("<%=End%>"==form1.gendcity.value)){ 
  window.location="OrderForm.jsp"
  return false;
   p=1;
  }<%}
  if(p==0)%>
   alert("无该趟车！");
 }
</Script>
<link rel="stylesheet" href="CSS/style.css">
  <body >
 <jsp:include page="top.jsp"/> 
 <form method="POST"  name="form1">
   <table width="580" border="0" align="center" cellpadding="0" cellspacing="0">
    <tr>
      <td width="20%" height="55">
      <p align="center">起始城市：</p>      </td>
      <td width="36%" height="55">
        <p align="left"><input type="text" name="gstartcity" style="width:140px; height:30px;"></p>
      </td>
      <td width="20%" height="54">
      <p align="center">抵达城市：</p>      </td>
      <td width="36%" height="54">
        <p align="left"><input type="text" name="gendcity" style="width:140px; height:30px;"></p>
      </td>
    </tr>
    <tr>
      <td width="620" height="90" colspan="4">
        <p align="center">
        <input type="button" name="search" value="在线下单"  onClick="check()"> 
        <input type="reset" name="reset" value="重置" > &nbsp;&nbsp;<a href="goods_select.jsp">返回首页</a>
      </td>
    </tr>
    </table>
    </form>
    </body>
</html>
