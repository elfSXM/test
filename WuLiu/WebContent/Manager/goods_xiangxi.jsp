<%@ page contentType="text/html; charset=gb2312" import="java.sql.*"%>
<jsp:useBean id="connection" scope="page" class="com.wy.JDBConnection"/>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link rel="stylesheet" href="../CSS/style.css">
<title>
Goods_xiangxi page
</title>
</head>
<%!
ResultSet rs=null;
String sql;
String userName;
int num;
%>
<%
sql="select * from order_message where 订单号="+request.getParameter("id");
%>

<body bgcolor="#ffffff">
<jsp:include page="mtop.jsp"/>
<table width="785" height="377" border="1" align="center" cellpadding="0" cellspacing="0"bordercolor="#FFFFFF" bordercolorlight="#FFFFFF" bordercolordark="#333333">
  <tr>
    <td height="52" colspan="4" align="center">
   订单详细信息</td>
  </tr>
<%try
{
rs=connection.executeQuery(sql);
if(rs.next())
{
num=rs.getInt("订单号");
%>
<tr>
    <td width="21%" height="29" align="center">订单号：</td>
    <td width="31%" height="29" align="center"><%=rs.getString("订单号")%></td>
    <td width="21%" height="29" align="center">用户：</td>
    <td width="27%" height="29" align="center"><%=rs.getString("用户")%></td>
  </tr>
  <tr>
    <td width="21%" height="29" align="center">联系人：</td>
    <td width="31%" height="29" align="center"><%=rs.getString("联系人")%> </td>
    <td width="21%" height="29" align="center">联系电话：</td>
    <td width="27%" height="29" align="center">  <%=rs.getString("联系电话")%></td>
  </tr>
  <tr>
    <td width="21%" height="29" align="center">起始地：</td>
    <td width="31%" height="29" align="center"><%=rs.getString("起始地")%></td>
    <td width="21%" height="29" align="center">目的地：</td>
    <td width="27%" height="29" align="center"><%=rs.getString("目的地")%></td>
  </tr>
  <tr>
    <td width="21%" height="29" align="center">货物重量：</td>
    <td width="31%" height="29" align="center"><%=rs.getString("货物重量")%></td>
    <td width="21%" height="29" align="center">货物重量单位：</td>
    <td width="27%" height="29" align="center"><%=rs.getString("货物重量单位")%></td>
  </tr>
  <tr>
    <td width="21%" height="30" align="center">货物类型：</td>
    <td width="31%" height="30" align="center"> <%=rs.getString("货物类型")%></td>
    <td width="21%" height="30" align="center">运输时间：</td>
    <td width="27%" height="30" align="center"> <%=rs.getString("运输时间")%></td>
  </tr>  
  <tr>
    <td width="21%" height="30" align="center">运输类型：</td>
    <td width="31%" height="30" align="center"> <%=rs.getString("运输类型")%></td>
    <td width="21%" height="30" align="center">订单状态：</td>
    <td height="31" align="center" colspan="3"><%=rs.getString("订单状态")%></td>
  </tr>
    <tr>
      <td height="33" colspan="4" align="center">
      <input type="button" value="修改" onClick="location.href='goods_change.jsp?id=<%=num%>'">
      &nbsp;&nbsp;
      <input type="button" value="删除" onClick="location.href='goods_delete.jsp?id=<%=num%>'">
    &nbsp;&nbsp;
    <input type="button" value="返回" onClick="history.back()">
      </td>
    </tr>

<%
}

}catch(SQLException e)
{
 System.out.println("查询异常！！");
}
%>
</table><jsp:include page="down.jsp"/>
</body>
</html>
