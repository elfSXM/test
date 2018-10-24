<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*" errorPage="" %>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<%
if(request.getAttribute("login")==null){
response.sendRedirect("../index.jsp");
}
%>

<table width="100%" height="140" border="0" cellpadding="0" cellspacing="0" background="../image/mtop1.jpg" >
  <tr>
    <td><table width="769" height="140" border="0" align="center" cellpadding="0" cellspacing="0" background="../image/mtop2.jpg" >
      <tr>
        <td></td>
      </tr>
    </table></td>
  </tr>
</table>

<table width="100%" height="39" border="0" cellpadding="0" cellspacing="0" background="../image/mtop1.jpg">
  <tbody><tr>
    <td valign="top"><table width="100%" height="32" border="0" align="left" cellpadding="0" cellspacing="0" background="../image/mtop1.jpg">
      <tbody><tr>
        <th><a href="index.jsp" class="a1">首页</a> &nbsp;|
         &nbsp;<a href="active_select.jsp" class="a1">物流动态管理</a>&nbsp;|
         &nbsp;<a href="car_select.jsp" class="a1">车辆管理</a>&nbsp;|
         &nbsp;<a href="goods_select.jsp" class="a1">订单管理</a>&nbsp;|
         &nbsp;<a href="member_select.jsp" class="a1">会员管理</a>&nbsp;|
         &nbsp;<a href="tool_assistant.jsp" class="a1">辅助工具</a>&nbsp;|
         &nbsp;<a href="../logout.jsp" class="a1">退出</a></th>
      </tr>
    </tbody></table></td>
  </tr>
</tbody>
</table>

