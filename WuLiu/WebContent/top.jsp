<%@ page contentType="text/html; charset=UTF-8"  language="java" %>
<%@ page import="java.util.*"%>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<jsp:useBean id="countTime" scope="page" class="com.wy.CountTime"/>
<table width="100%" border="0" align="center" cellpadding="0" cellspacing="0" >
  <tr>
    <td  height="120" align="center" background="image/top.jpg">
 	</td>
  </tr>
</table>


<table width="100%" height="32" border="0" cellpadding="0" cellspacing="0" background="image/top2.jpg">
  <tr>
    <td><table width="100%"  border="0" align="center" cellpadding="0" cellspacing="0" background="image/top2.jpg">
      <tr>
        <th width="189" height="31" align="left">
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
       
        <%=countTime.currentlyTime()%> </th>
        <th width="597" height="31" align="center">
        <a href="index.jsp" class="a1">本站首页</a>
        
        &nbsp;|&nbsp;<a href="car_select.jsp" class="a1">车辆信息</a>
        &nbsp;|&nbsp;<a href="active_select.jsp" class="a1">物流动态</a>
        &nbsp;|&nbsp;<a href="news.jsp" class="a1">新闻中心</a>
        &nbsp;|&nbsp; <a href="tool_assistant.jsp" class="a1">辅助工具</a>       
        &nbsp;|&nbsp;<a href="OrderForm.jsp" class="a1">在线下单</a>
        &nbsp;|&nbsp;<a href="Search_Order.jsp" class="a1">我的订单</a>
        
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;<a href="login.jsp" class="a1">登陆</a>
        &nbsp;|&nbsp;<a href="register.jsp" class="a1">注册</a>
        &nbsp;|&nbsp; <a href="logout.jsp" class="a1">退出</a></th>
        </tr>
    </table></td>
  </tr>
</table>

