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
String sql,nsql;
String username,login;
int n,count;
int pagesize=10;
int rowcount=0;
int pagecount=1;
%>
<body bgcolor="#ffffff">
<jsp:include page="top.jsp"/>
<body>
<div style="width��100%; height:80%;background-image:url('image/backa.jpg');">
<br><br>
<table width="800" height="137" border="1" align="center" cellpadding="0" cellspacing="0"bordercolor="#FFFFFF" bordercolorlight="#FFFFFF" bordercolordark="#333333">
  <tr>
  <td width="800" colspan="9" height="60">
      <p align="center">������Ϣ
  </td>
  </tr>
  <tr>
    <td width="786" height="30" colspan="9" align="right">

   <a href="car_add.jsp"><font size="2">������Ϣ...&nbsp;&nbsp;&nbsp;&nbsp;</font></a></td>
  </tr>
  <tr>
  <td width="11%" height="29" align="center">������</td>
   <td width="11%" height="29" align="center">���ƺ���</td>
   <td width="11%" height="29" align="center">����Ʒ��</td>
   <td width="11%" height="29" align="center">����</td>
    <td width="11%" height="29" align="center">��������</td>
    <td width="11%" height="29" align="center">��ʹ��</td>
    <td width="11%" height="29" align="center">��ʻԱ����</td>
    <td width="11%" height="29" align="center">��������</td>
    <td width="12%" height="29">
   <p align="center">����</td>
</tr>
    <%
    sql="select * from tb_CarMessage order by IssueDate desc";
try
{
 rs=connection.executeQuery(sql);
if(!rs.next())
{
%>
<script language="javascript">
	alert("û�пճ���Ϣ����");
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
n=rs.getInt("Code");
%>
<tr>
<td width="11%" height="29" align="center"><%=rs.getString("UserName")%></td>
<td width="11%" height="29" align="center"><%=rs.getString("TradeMark")%></td>
<td width="11%" height="29" align="center"><%=rs.getString("Brand")%></td>
<td width="11%" height="29" align="center"><%=rs.getString("Style")%></td>
<td width="11%" height="29" align="center"><%=rs.getString("CarLoad")%>��</td>
<td width="11%" height="29" align="center"><%=rs.getString("UsedTime")%>��</td>
<td width="15%" height="29" align="center"><%=rs.getString("DriverTime")%>��</td>
<td width="11%" height="29" align="center"><%=rs.getString("TranspotStyle")%></td>
<td width="12%" height="29" align="center"><a href="car_show.jsp?id=<%=n%>"><font size="3">��ϸ</font></a></td>
</tr>
<%
if(!rs.next())
break;
}
%>
<tr>
    <td width="786" height="30" colspan="9" align="right">

<table width="786" align="center" cellpadding="0" cellspacing="0">
	<tr>
    <td width="786" height="30" colspan="9" align="right">
   <font size="2"> ��<%=pagecount%>ҳ</font>&nbsp;&nbsp;
        <a href="car_select.jsp?topage=<%=1%>"><font size="2">��ҳ</font></a>&nbsp;&nbsp;
        <a href="car_select.jsp?topage=<%=showpage-1%>"><font size="2">��һҳ</font></a>&nbsp;&nbsp;
        <a href="car_select.jsp?topage=<%=showpage+1%>"><font size="2">��һҳ</font></a>&nbsp;&nbsp;
        <a href="car_select.jsp?topage=<%=pagecount%>"><font size="2">βҳ&nbsp;&nbsp;&nbsp;&nbsp;</font></a>
  
</td>
</tr>
</table>
</td>
  </tr>
<%
}

}catch(Exception e)
{e.printStackTrace();System.out.println("carmessageage");}
%>
</table>
</div>
</body>
<jsp:include page="down.jsp"/>
</html>