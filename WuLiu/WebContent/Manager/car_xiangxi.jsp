<%@ page contentType="text/html; charset=gb2312" %>
<%@ page import="java.sql.*"%>
<jsp:useBean id="connection" scope="page" class="com.wy.JDBConnection"/>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link rel="stylesheet" href="../CSS/style.css">
<title>
Manager CarMessageshow page
</title>
</head>
<%!
ResultSet rs=null;
String sql;
String userName;
int num,code;
%>

<body bgcolor="#ffffff"><jsp:include page="mtop.jsp"/>
<table width="785" border="1"  align="center" cellpadding="0" cellspacing="0"bordercolor="#FFFFFF" bordercolordark="#333333" bordercolorlight="#FFFFFF">
  <tr>
    <td width="786" height="62" colspan="4">
      <p align="center">������Ϣչʾ</td>
  </tr>
<%
sql="select * from tb_CarMessage where Code="+request.getParameter("id");
try
{
rs=connection.executeQuery(sql);
if(rs.next())
{
code=rs.getInt("Code");
%>
  <tr>
    <td width="18%" height="34" align="center">���ƺ��룺</td>
    <td width="32%" height="34"><%=rs.getString("TradeMark")%></td>
    <td width="19%" height="34" align="center">����Ʒ����</td>
    <td width="31%" height="34" ><%=rs.getString("Brand")%></td>
  </tr>
  <tr>
    <td width="18%" height="36" align="center">�������ͣ�</td>
    <td width="32%" height="36"><%=rs.getString("Style")%></td>
    <td width="19%" height="36" align="center">����������</td>
    <td width="31%" height="36"><%=rs.getString("CarLoad")%>��</td>
  </tr>
  <tr>
    <td width="18%" height="37" align="center">��ʹ�ã�</td>
    <td width="32%" height="37" ><%=rs.getString("UsedTime")%>��</td>
       <td width="18%" height="37" align="center">��ʻԱ���ƣ�</td>
    <td width="32%" height="37" ><%=rs.getString("DriverName")%></td>
  </tr>
  <tr>
    <td width="19%" height="37" align="center">��ʻ֤���䣺</td>
    <td width="31%" height="37" ><%=rs.getString("DriverTime")%></td>
    <td width="18%" height="36" align="center">��ʻ֤���룺</td>
    <td width="32%" height="36" ><%=rs.getString("LicenceNumber")%></td>
  </tr>
  <tr>
    <td width="19%" height="36" align="center">��ʻԱ���ͣ�</td>
    <td width="31%" height="36" ><%=rs.getString("LicenceStyle")%></td>
   <td width="19%" height="37" align="center">�������ͣ�</td>
     <td width="31%" height="37" ><%=rs.getString("TranspotStyle")%></td>
</tr>
  <tr>
    <td width="18%" height="42" align="center">��ϵ�ˣ�</td>
    <td width="32%" height="42" ><%=rs.getString("LinkMan")%></td>
    <td width="19%" height="42" align="center">��ϵ�绰��</td>
    <td width="31%" height="42" ><%=rs.getString("LinkPhone")%></td>
  </tr>
  <tr>
    <td width="18%" height="65" align="center">��ע��</td>
    <td width="82%" height="65" colspan="3">
  <%=rs.getString("Remark")%></td>
  </tr>
  <tr>
    <td width="18%" height="42" align="center">����ʱ�䣺</td>
    <td width="32%" height="42"><%=rs.getString("IssueDate")%></td>
    <td width="19%" height="42" align="center">ID:</td>
    <td width="31%" height="42"><%=code%><input type="hidden" name="code" value="<%=code%>">  </td>
</tr>
<tr>
    <td width="19%" height="42" align="center">�����ˣ�</td>
    <td width="31%" height="42"><%=rs.getString("UserName")%></td>
  </tr>
 <tr>
      <td width="100%" height="33" colspan="4" align="center">
      <input type="button" value="�޸�" onClick="location.href='car_change.jsp?id=<%=code%>'">
       &nbsp;&nbsp;
       <input type="button" value="ɾ��" onClick="location.href='car_delete.jsp?id=<%=code%>'">
        &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
        <input type="button" value="����" onClick="location.href='car_select.jsp'">
        
        
        </td>
  </tr>
<%
}

}catch(SQLException e)
{
 System.out.print("��ѯ�쳣����");
}
%>
</table><jsp:include page="down.jsp"/>
</body>
</html>