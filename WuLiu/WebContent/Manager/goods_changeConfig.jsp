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
//String gclass=request.getParameter("�û�");
//String gname=request.getParameter("�û�");
String gcount=request.getParameter("gclass");
String gunit=request.getParameter("gname");
String startProvince=request.getParameter("gcount");
String gstartcity=request.getParameter("gunit");
String endProvince=request.getParameter("endProvince");
String g=request.getParameter("startProvince");
//String gendcity=request.getParameter("����������λ");
String gtransstyle=request.getParameter("gendcity");
String gtime=request.getParameter("gtransstyles");
String glink=request.getParameter("gtransstyle");
//java.sql.Date gshowdate=new java.sql.Date(date.getYear(),date.getMonth(),date.getDate());
sql="update order_message set ��ϵ��='"+gcount+"',��ϵ�绰='"+gunit+"',��ʼ��='"
+startProvince+"',Ŀ�ĵ�='"+gstartcity+"',��������='"+
endProvince+"',��������='"+g+"',����ʱ��='"+gtransstyle+"',����״̬='"+
gtime+"',��������='"+glink+"' where ������='"+request.getParameter("id")+"'";
boolean sert=connection.executeUpdata(sql);
if(sert)
{%>
<script language="javascript">
alert("�޸ĳɹ���");
window.location.href="goods_select.jsp";
</script>
<%
}else
{
%>
<script language="javascript">
alert("�޸�ʧ�ܣ�");
history.back();
<%
}
%>
</script>
</body>
</html>
