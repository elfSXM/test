<%@ page contentType="text/html; charset=gb2312" %>
<%@ page import="java.util.Date"%>
<jsp:useBean id="connection" scope="page" class="com.wy.JDBConnection"/>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>
regist_config
</title>

</head>
<%!
String sql;
Date date=new Date();
%>
<body bgcolor="#ffffff">
<%
        request.setCharacterEncoding("gb2312");

        String name=request.getParameter("name");
        String password=request.getParameter("password");
	String email=request.getParameter("email");
	String sex=request.getParameter("sex");
	String phone=request.getParameter("phone");
	String result=request.getParameter("result");
	String question=request.getParameter("question");
       java.sql.Date showdate=new java.sql.Date(date.getYear(),date.getMonth(),date.getDate());
             sql="update tb_customer set Name='"+name+"',Password='"+
             password+"',Email='"+email+"',Sex='"+sex+"',Phone='"+
              phone+"',Question='"+question+"',Result='"+
               result+"',IssueDate='"+showdate+"' where ID='"+request.getParameter("id")+"'";
		boolean sert=connection.executeUpdata(sql);
            if(sert)
{%>
<script language="javascript">
	alert("修改成功！");
	window.location.href=("member_select.jsp");
</script>
<%
}else
{
%>
<script language="javascript">
alert("修改失败！");
history.back();
</script>
<%
}
%>
</body>
</html>
