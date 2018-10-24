<%@ page contentType="text/html; charset=gb2312" %>
<%@ page import="java.sql.*"%>
<jsp:useBean id="connection" scope="page" class="com.wy.JDBConnection"/>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link rel="stylesheet" href="../CSS/style.css">
<title>
Goods_change page
</title>
</head>
<Script language="javascript">
function check()
{
 if(form1.gclass.value=="")
{
 alert("请填写联系人！");
form1.gclass.focus();
return false;
}
if(form1.gname.value=="")
{
alert("请填写联系电话！");
form1.gname.focus();
return false;
}
if(form1.gcount.value=="")
{
alert("请填写起始地！");
form1.gcount.focus();
return false;
}
if(form1.gunit.value=="")
{
alert("请填写目的地！");
form1.gunit.focus();
return false;
}
if(form1.startProvince.value=="")
{
alert("请填写货物重量！");
form1.startProvince.focue();
return false;
}
if(form1.endProvince.value=="")
{
alert("请填写货物类型！");
form1.endProvince.focus();
return false;
}
if(form1.gendcity.value=="")
{
alert("请填写运输时间！");
form1.gendfirm.focus();
return false;
}
}
</Script>
<%!
int code;
%>
<body bgcolor="#ffffff"><jsp:include page="mtop.jsp"/>
<p align="center"><b>订单信息修改</b></p>
<form method="POST" action="goods_changeConfig.jsp" name="form1">
<%
String sql="select * from order_message where 订单号="+request.getParameter("id");
ResultSet rs=connection.executeQuery(sql);
if(rs.next())
{
code=rs.getInt("订单号");
%>
  <table width="785" height="377" border="1" align="center" cellpadding="0"cellspacing="0"bordercolor="#FFFFFF" bordercolordark="#333333" bordercolorlight="#FFFFFF">
    <tr>
    <td width="21%" height="29" align="center">订单号：</td>
    <td width="31%" height="29" align="center"><%=code%>
    <input type="hidden" name="id" size="37" value="<%=code%>"></td>
    <td width="21%" height="29" align="center">用户：</td>
    <td width="31%" height="29" align="center"><%=rs.getString("用户")%>
    <input type="hidden" name="a" size="37" value="<%=rs.getString("用户")%>"></td>
    </tr>
    
    
    <tr>
      <td width="21%" height="29" align="center">联系人：</td>
      <td width="31%" height="29">
        <p align="center"><input type="text" name="gclass" value=" <%=rs.getString("联系人")%>" size="20"></p>
      </td>
      <td width="21%" height="29" align="center">联系电话：</td>
      <td width="31%" height="29">
        <p align="center"><input type="text" name="gname" size="20" value="<%=rs.getString("联系电话")%>"></p>
      </td>
    </tr>
    <tr>
      <td width="21%" height="29" align="center">起始地： </td>
      <td width="31%" height="29">
        <p align="center"><input type="text" name="gcount" size="20"value="<%=rs.getString("起始地")%>"></p>
      </td>
      <td width="21%" height="29" align="center">目的地：</td>
      <td width="31%" height="29">
        <p align="center"><input type="text" name="gunit" size="20" value=" <%=rs.getString("目的地")%>"></p>
      </td>
    </tr>
    <tr>
      <td width="21%" height="29" align="center">货物重量：</td>
      <td width="31%" height="29">
        <p align="center"><input type="text" name="startProvince" size="20" value="<%=rs.getString("货物重量")%>"></p>
      </td>
      <td width="21%" height="29" align="center">货物重量单位：</td>
      <td width="31%" height="29">
        <p align="center"><%=rs.getString("货物重量单位")%></p>
      </td>
    </tr>
    <tr>
      <td width="21%" height="29" align="center">货物类型：</td>
      <td width="31%" height="29">
        <p align="center"><input type="text" name="endProvince" size="20" value="<%=rs.getString("货物类型")%>"></p>
      </td>
      <td width="21%" height="29" align="center">运输时间：</td>
      <td width="31%" height="29">
        <p align="center"><input type="text" name="gendcity" size="20" value="<%=rs.getString("运输时间")%>"></p>
      </td>
    </tr>
    <tr>
      <td width="21%" height="29" align="center">运输类型：</td>
      <td width="31%" height="29">
      <p align="center">
      &nbsp; <select size="1" name="gtransstyle">
       <%
String trans=rs.getString("运输类型");
%>  


  
  
       <option value="<%=trans%>" selected><%=trans%></option>
        <option value="普通">普通</option>
        <option value="快速">快速</option>
        <option value="特快">特快</option>
        <option value="加急">加急</option>
       </select>
      </p>
      </td>
      
      
       <td width="21%" height="29" align="center">订单状态： </td>
      <td width="31%" height="29">
      <p align="center">
      &nbsp; <select size="1" name="gtransstyles">
       <%
String transp=rs.getString("订单状态");
%>  
   <option value="<%=transp%>" selected><%=transp%></option>
        <option value="未完成">未完成</option>
        <option value="派送中">派送中</option>
        <option value="已完成">已完成</option>

       </select>
      </p>
      </td>
      
      
      
    </tr>
    
    <tr>
      <td width="104%" height="40" colspan="4">
        <p align="center">
        <input type="submit" name="change" value="修改" onClick="return check()">&nbsp;&nbsp;
		<input type="button" name="back" value="返回" onClick="history.back()">
      </td>
    </tr>
  </table>
<%}%>
</form>
<jsp:include page="down.jsp"/>
</body>
</html>
