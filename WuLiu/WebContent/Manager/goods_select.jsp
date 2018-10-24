<%@ page contentType="text/html; charset=gb2312" import="java.sql.*"%>
<jsp:useBean id="connection" scope="page" class="com.wy.JDBConnection"/>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link rel="stylesheet" href="../CSS/style.css">
<title>
Goods_show page
</title>
</head>
<%!
ResultSet rs=null;
String sql,sqlshow,login;
int n;
int pagesize=10;
int rowcount=0;
int pagecount=1;
%>

<body bgcolor="#ffffff"><jsp:include page="mtop.jsp"/>

<%
login=(String)session.getAttribute("login");
if(login==null)
{
%>
<script language="javascript">
alert("您还未登录，不能浏览详细信息！");
window.location.href="manager_login.jsp";
</script>
<%
}
%>
<div style="height:85%">
<table width="783" height="137" border="1" align="center" cellpadding="0" cellspacing="0" bordercolor="#E0E0E0">
  <tr>
  <td width="100%" colspan="9" height="60" align="center">
   订单信息
  </td>
  </tr>
  <tr align="center">
    <td width="11%" height="29">订单号</td>
    <td width="11%" height="29">起始地</td>
    <td width="11%" height="29">目的地</td>
    <td width="11%" height="29">运输时间</td>
    <td width="11%" height="29">运输类型</td>
    <td width="11%" height="29">订单状态</td>
    
    <td width="12%" height="29">操作</td>
  </tr>  <%
    sql="select * from order_message order by 订单状态  desc";
try
{
 rs=connection.executeQuery(sql);
if(!rs.next())
{
%>
<script language="javascript">
	alert("无信息记录！");
</script>
<%
}else
{
rs.last();
rowcount=rs.getRow();
int showpage=1;
pagecount=((rowcount%pagesize)==0?(rowcount/pagesize):(rowcount/pagesize)+1);
 String topage=request.getParameter("topage");
if(topage!=null)
{
showpage=Integer.parseInt(topage);
if(showpage>pagecount){
  showpage=pagecount;
  }else if(showpage<=0){
  showpage=1;
  }
}
rs.absolute((showpage-1)*pagesize+1);
for(int i=1;i<=pagesize;i++)
{
n=rs.getInt("订单号");
%>
<tr align="center">
<td width="11%" height="29"><%=rs.getInt("订单号")%></td>
<td width="11%" height="29"><%=rs.getString("起始地")%></td>
<td width="11%" height="29"><%=rs.getString("目的地")%></td>
<td width="11%" height="29"><%=rs.getString("运输时间")%></td>
<td width="11%" height="29"><%=rs.getString("运输类型")%></td>
<td width="11%" height="29"><%=rs.getString("订单状态")%></td>
<td width="12%" height="29">
    <p align="center"><a href="goods_xiangxi.jsp?id=<%=n%>">详细</a></td>
</tr>
<%
if(!rs.next())
break;
}
%>
<tr>
    <td width="786" height="30" colspan="9" align="right">
<table width="786" align="center">
	<tr>
    <td width="786" height="30" colspan="9" align="right">
        共<%=pagecount%>页&nbsp;&nbsp;
        <a href="goods_select.jsp?topage=<%=1%>">第一页</a>&nbsp;&nbsp;
        <a href="goods_select.jsp?topage=<%=showpage-1%>">上一页</a>&nbsp;&nbsp;
        <a href="goods_select.jsp?topage=<%=showpage+1%>">下一页</a>&nbsp;&nbsp;
        <a href="goods_select.jsp?topage=<%=pagecount%>">最后一页</a>       
</td>
</tr>
</table>
</td>
  </tr>
<%
}
}catch(Exception e)
{e.printStackTrace();}
%>
</table>
</div>
</body><jsp:include page="down.jsp"/>
</html>
