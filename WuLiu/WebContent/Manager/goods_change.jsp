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
 alert("����д��ϵ�ˣ�");
form1.gclass.focus();
return false;
}
if(form1.gname.value=="")
{
alert("����д��ϵ�绰��");
form1.gname.focus();
return false;
}
if(form1.gcount.value=="")
{
alert("����д��ʼ�أ�");
form1.gcount.focus();
return false;
}
if(form1.gunit.value=="")
{
alert("����дĿ�ĵأ�");
form1.gunit.focus();
return false;
}
if(form1.startProvince.value=="")
{
alert("����д����������");
form1.startProvince.focue();
return false;
}
if(form1.endProvince.value=="")
{
alert("����д�������ͣ�");
form1.endProvince.focus();
return false;
}
if(form1.gendcity.value=="")
{
alert("����д����ʱ�䣡");
form1.gendfirm.focus();
return false;
}
}
</Script>
<%!
int code;
%>
<body bgcolor="#ffffff"><jsp:include page="mtop.jsp"/>
<p align="center"><b>������Ϣ�޸�</b></p>
<form method="POST" action="goods_changeConfig.jsp" name="form1">
<%
String sql="select * from order_message where ������="+request.getParameter("id");
ResultSet rs=connection.executeQuery(sql);
if(rs.next())
{
code=rs.getInt("������");
%>
  <table width="785" height="377" border="1" align="center" cellpadding="0"cellspacing="0"bordercolor="#FFFFFF" bordercolordark="#333333" bordercolorlight="#FFFFFF">
    <tr>
    <td width="21%" height="29" align="center">�����ţ�</td>
    <td width="31%" height="29" align="center"><%=code%>
    <input type="hidden" name="id" size="37" value="<%=code%>"></td>
    <td width="21%" height="29" align="center">�û���</td>
    <td width="31%" height="29" align="center"><%=rs.getString("�û�")%>
    <input type="hidden" name="a" size="37" value="<%=rs.getString("�û�")%>"></td>
    </tr>
    
    
    <tr>
      <td width="21%" height="29" align="center">��ϵ�ˣ�</td>
      <td width="31%" height="29">
        <p align="center"><input type="text" name="gclass" value=" <%=rs.getString("��ϵ��")%>" size="20"></p>
      </td>
      <td width="21%" height="29" align="center">��ϵ�绰��</td>
      <td width="31%" height="29">
        <p align="center"><input type="text" name="gname" size="20" value="<%=rs.getString("��ϵ�绰")%>"></p>
      </td>
    </tr>
    <tr>
      <td width="21%" height="29" align="center">��ʼ�أ� </td>
      <td width="31%" height="29">
        <p align="center"><input type="text" name="gcount" size="20"value="<%=rs.getString("��ʼ��")%>"></p>
      </td>
      <td width="21%" height="29" align="center">Ŀ�ĵأ�</td>
      <td width="31%" height="29">
        <p align="center"><input type="text" name="gunit" size="20" value=" <%=rs.getString("Ŀ�ĵ�")%>"></p>
      </td>
    </tr>
    <tr>
      <td width="21%" height="29" align="center">����������</td>
      <td width="31%" height="29">
        <p align="center"><input type="text" name="startProvince" size="20" value="<%=rs.getString("��������")%>"></p>
      </td>
      <td width="21%" height="29" align="center">����������λ��</td>
      <td width="31%" height="29">
        <p align="center"><%=rs.getString("����������λ")%></p>
      </td>
    </tr>
    <tr>
      <td width="21%" height="29" align="center">�������ͣ�</td>
      <td width="31%" height="29">
        <p align="center"><input type="text" name="endProvince" size="20" value="<%=rs.getString("��������")%>"></p>
      </td>
      <td width="21%" height="29" align="center">����ʱ�䣺</td>
      <td width="31%" height="29">
        <p align="center"><input type="text" name="gendcity" size="20" value="<%=rs.getString("����ʱ��")%>"></p>
      </td>
    </tr>
    <tr>
      <td width="21%" height="29" align="center">�������ͣ�</td>
      <td width="31%" height="29">
      <p align="center">
      &nbsp; <select size="1" name="gtransstyle">
       <%
String trans=rs.getString("��������");
%>  


  
  
       <option value="<%=trans%>" selected><%=trans%></option>
        <option value="��ͨ">��ͨ</option>
        <option value="����">����</option>
        <option value="�ؿ�">�ؿ�</option>
        <option value="�Ӽ�">�Ӽ�</option>
       </select>
      </p>
      </td>
      
      
       <td width="21%" height="29" align="center">����״̬�� </td>
      <td width="31%" height="29">
      <p align="center">
      &nbsp; <select size="1" name="gtransstyles">
       <%
String transp=rs.getString("����״̬");
%>  
   <option value="<%=transp%>" selected><%=transp%></option>
        <option value="δ���">δ���</option>
        <option value="������">������</option>
        <option value="�����">�����</option>

       </select>
      </p>
      </td>
      
      
      
    </tr>
    
    <tr>
      <td width="104%" height="40" colspan="4">
        <p align="center">
        <input type="submit" name="change" value="�޸�" onClick="return check()">&nbsp;&nbsp;
		<input type="button" name="back" value="����" onClick="history.back()">
      </td>
    </tr>
  </table>
<%}%>
</form>
<jsp:include page="down.jsp"/>
</body>
</html>
