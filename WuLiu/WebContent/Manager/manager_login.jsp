<%@ page contentType="text/html; charset=gb2312" %>
<html>
<head>
<title>
login
</title>
<link href="../CSS/style.css" type="text/css" rel="stylesheet">
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
</head>
<jsp:include page="mtop.jsp"/>
<Script language="javascript">
function check()
{
if(form1.name.value=="")
{
alert("����������");
form1.name.focus();
return false;
}
if(form1.password.value=="")
{
alert("����������");
form1.password.focus();
return false;
}
}
function goback()
{
window.location.href="../index.jsp";
}
</Script>
<body bgcolor="#ffffff">
<center>


<table width="791" border="0" cellpadding="0" cellspacing="0" background="">
  <tr>
    <td height="220">	
    <form name="form1" action="manager_config.jsp" method="post">
	<table width="272" border="0" align="center" cellpadding="0" cellspacing="0">
      
             
		  <tr><td height="50"> �û���:
          <input type="text" name="name" size="11" maxlength="20"></td>
	   </tr>
	   <tr> <td height="50">  ��&nbsp;��:
	    <input type="password" name="password" size="11" maxlength="20">  </td>
       </tr>
        <td height="50">
        <input type="submit" value="��¼" name="submit" onClick="return check()">
	  &nbsp;&nbsp;<input type="button" name="back" value="������ҳ" onClick="goback()">&nbsp;
		</td>
        
    </table></form></td>
  </tr>
</table>
 
  <jsp:include page="down.jsp"/>
</center>
</body>
</html>
