<%@ page contentType="text/html; charset=gb2312" import="java.sql.*"%>
<jsp:useBean id="connection" scope="page" class="com.wy.JDBConnection"/>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link rel="stylesheet" href="../CSS/style.css">
<title>
Goods_xiangxi page
</title>
</head>
<%!
ResultSet rs=null;
String sql;
String userName;
int num;
%>
<%
sql="select * from order_message where ������="+request.getParameter("id");
%>

<body bgcolor="#ffffff">
<jsp:include page="mtop.jsp"/>
<table width="785" height="377" border="1" align="center" cellpadding="0" cellspacing="0"bordercolor="#FFFFFF" bordercolorlight="#FFFFFF" bordercolordark="#333333">
  <tr>
    <td height="52" colspan="4" align="center">
   ������ϸ��Ϣ</td>
  </tr>
<%try
{
rs=connection.executeQuery(sql);
if(rs.next())
{
num=rs.getInt("������");
%>
<tr>
    <td width="21%" height="29" align="center">�����ţ�</td>
    <td width="31%" height="29" align="center"><%=rs.getString("������")%></td>
    <td width="21%" height="29" align="center">�û���</td>
    <td width="27%" height="29" align="center"><%=rs.getString("�û�")%></td>
  </tr>
  <tr>
    <td width="21%" height="29" align="center">��ϵ�ˣ�</td>
    <td width="31%" height="29" align="center"><%=rs.getString("��ϵ��")%> </td>
    <td width="21%" height="29" align="center">��ϵ�绰��</td>
    <td width="27%" height="29" align="center">  <%=rs.getString("��ϵ�绰")%></td>
  </tr>
  <tr>
    <td width="21%" height="29" align="center">��ʼ�أ�</td>
    <td width="31%" height="29" align="center"><%=rs.getString("��ʼ��")%></td>
    <td width="21%" height="29" align="center">Ŀ�ĵأ�</td>
    <td width="27%" height="29" align="center"><%=rs.getString("Ŀ�ĵ�")%></td>
  </tr>
  <tr>
    <td width="21%" height="29" align="center">����������</td>
    <td width="31%" height="29" align="center"><%=rs.getString("��������")%></td>
    <td width="21%" height="29" align="center">����������λ��</td>
    <td width="27%" height="29" align="center"><%=rs.getString("����������λ")%></td>
  </tr>
  <tr>
    <td width="21%" height="30" align="center">�������ͣ�</td>
    <td width="31%" height="30" align="center"> <%=rs.getString("��������")%></td>
    <td width="21%" height="30" align="center">����ʱ�䣺</td>
    <td width="27%" height="30" align="center"> <%=rs.getString("����ʱ��")%></td>
  </tr>  
  <tr>
    <td width="21%" height="30" align="center">�������ͣ�</td>
    <td width="31%" height="30" align="center"> <%=rs.getString("��������")%></td>
    <td width="21%" height="30" align="center">����״̬��</td>
    <td height="31" align="center" colspan="3"><%=rs.getString("����״̬")%></td>
  </tr>
    <tr>
      <td height="33" colspan="4" align="center">
      <input type="button" value="�޸�" onClick="location.href='goods_change.jsp?id=<%=num%>'">
      &nbsp;&nbsp;
      <input type="button" value="ɾ��" onClick="location.href='goods_delete.jsp?id=<%=num%>'">
    &nbsp;&nbsp;
    <input type="button" value="����" onClick="history.back()">
      </td>
    </tr>

<%
}

}catch(SQLException e)
{
 System.out.println("��ѯ�쳣����");
}
%>
</table><jsp:include page="down.jsp"/>
</body>
</html>
