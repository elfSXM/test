<%@ page contentType="text/html; charset=gb2312" %>
<%@ page import="java.sql.*"%>
<jsp:useBean id="connection" scope="page" class="com.wy.JDBConnection"/>
<html>
<head>
<title>
login_config
</title>
</head>
<%
ResultSet rs=null;
request.setCharacterEncoding("gb2312");
String name=request.getParameter("name");
String password=request.getParameter("password");





try

{

String sql="select * from tb_Manager where Name='"+name+"' and Password='"+password+"'";

rs=connection.executeQuery(sql);
if(rs.next()){
session.setAttribute("username",name);
session.setAttribute("login","success");
%>
<script language="javascript">
alert("µÇÂ¼³É¹¦£¡");
window.location.href="index.jsp";
</script>
<%
}else{%>
<script language="javascript">
alert("µÇÂ¼Ê§°Ü£¡");
history.back();
</script>
<%
}
}
catch(Exception e){}
%>
<body bgcolor="#ffffff">

</body>
</html>
