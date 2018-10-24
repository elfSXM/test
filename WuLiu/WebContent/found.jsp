<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*" %>
<% request.setCharacterEncoding("gb2312"); %>
<link href="CSS/style.css" type="text/css" rel="stylesheet">
<html>
<head>
<title>找回密码窗口</title>
</head>
<script language="javascript">

        function check(){
                if(form1.username.value==""){
                        alert("这样都能找回密码太好笑了");
                        form1.username.focus();
                        return false;

                }
                if(form1.email.value==""){
                        alert("请输入你的Email址");
                        form1.email.focus();
                        return false;
                }
                if(form1.question.value==""){
                        alert("请输入提示的问题");
                        form1.question.focus();
                        return false;
 }
                if(form1.result.value==""){
                        alert("请输入提示问题的答案");
                        form1.result.focus();
                        return false;

                }
        }
		</script>
<body>
<jsp:include page="top.jsp" />
<div style="width：100%; height:70%;background-image:url('image/backa.jpg');">
<table width="100%">
<form action="found_config.jsp" name="form1" method="post">.
<table width="502" height="213" border="0" align="center" cellpadding="0" cellspacing="0"  >


  <tr>
    <td width="40" height="55" align="right">用户名:&nbsp;&nbsp;&nbsp;</td>
    <td width="258"><input name="username" type="text" size="31"style="width:200px; height:30px; border-width:1px;background:none;"></td>
    
  </tr>
  <tr>
    <td width="40" height="55" align="right">Email:&nbsp;&nbsp;&nbsp;</td>
    <td height="23"><input name="email" type="text" size="31" style="width:200px; height:30px; border-width:1px;background:none;"></td>
    </tr>
  <tr>
    <td width="100" height="55" align="right">提示的问题:&nbsp;&nbsp;&nbsp;</td>
    <td height="23"><input name="question" type="text" size="31" style="width:200px; height:30px; border-width:1px;background:none;"></td>
    </tr>
  <tr>
    <td width="40" height="55" align="right">答案:&nbsp;&nbsp;&nbsp;</td>
    <td height="53"><input name="result" type="text" size="31" style="width:200px; height:30px; border-width:1px;background:none;"></td>
    </tr>
  <tr align="center">
    <td height="46" colspan="4" align="center">
<input style="border-width:1px;background:none;" name="Submit" type="submit" value="查找" onClick="return check()">
      &nbsp;&nbsp;
      <input style="border-width:1px;background:none;"  name="Submit2" type="reset" value="重置">
&nbsp;&nbsp;
<input style="border-width:1px;background:none;" type="button" value="返回" onClick="history.back()">

</td>
  </tr>

</table> 
 </form>
 </table>
 </div>
 
 <jsp:include page="down.jsp" />
</body>
</html>
