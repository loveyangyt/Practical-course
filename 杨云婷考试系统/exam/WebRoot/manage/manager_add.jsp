<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*" errorPage="" %>
<%@ taglib uri="/WEB-INF/struts-logic.tld" prefix="logic" %>
<%@ taglib uri="/WEB-INF/struts-bean.tld" prefix="bean" %>
<%@ taglib uri="/WEB-INF/struts-html.tld" prefix="html" %>
<html>
<head>
<title>��ӹ���Ա��Ϣ</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link href="../CSS/style.css" rel="stylesheet">

	<meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- ���� Bootstrap -->
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
 
    <!-- HTML5 Shiv �� Respond.js ������ IE8 ֧�� HTML5Ԫ�غ�ý���ѯ -->
    <!-- ע�⣺ ���ͨ�� file://  ���� Respond.js �ļ�������ļ��޷���Ч�� -->
    <!--[if lt IE 9]>
    	 <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
         <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
    <![endif]-->

	<!-- �� Bootstrap ���� CSS �ļ� -->
	<link href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
 
	<!-- jQuery�ļ��������bootstrap.min.js ֮ǰ���� -->
	<script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
 
	<!-- ���µ� Bootstrap ���� JavaScript �ļ� -->
	<script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>


</head>
<script language="javascript">
function check(form){
	if(form.name.value==""){
		alert("���������Ա����!");form.name.focus();return;
	}
	if(form.password1.value==""){
		alert("���������Ա����!");form.password1.focus();return;
	}
	if(form.password2.value==""){
		alert("��ȷ�Ϲ���Ա����!");form.password2.focus();return;
	}		
	if(form.password1.value!=form.password2.value){
		alert("����������Ĺ���Ա���벻һ�£�����������!");form.password1.focus();return;
	}
	form.submit();
}
</script>
<body>
<div class="container">
	<div class="row clearfix">
		<table width="280" height="170" border="0" cellpadding="0" cellspacing="0">
		  <tr>
		    <td valign="top"><table width="100%" border="0" cellpadding="0" cellspacing="0">
		      <tr>
		        <td width="12%" height="47">&nbsp;</td>
		        <td width="85%" valign="bottom"><table width="86%" height="31" border="0" align="center" cellpadding="0" cellspacing="0">
		          <tr>
		            <td class="word_white">��ӹ���Ա</td>
		          </tr>
		        </table></td>
		        <td width="3%">&nbsp;</td>
		      </tr>
		      <tr>
		        <td>&nbsp;</td>
		        <td><table width="100%" height="116"  border="0" cellpadding="0" cellspacing="0">
		          <tr>
		            <td height="116" align="center" valign="top">
			<html:form action="/manage/manager.do?action=managerAdd" method="post" focus="name">
			<table height="110"  border="0" cellpadding="0" cellspacing="0">
		      <tr>
		        <td width="80" height="30" align="center">����Ա���ƣ�</td>
		        <td width="160">
		          <html:text property="name"/></td>
		      </tr>
		      <tr>
		        <td height="25" align="center">����Ա���룺</td>
		        <td><html:password styleId="password1" property="pwd"/></td>
		      </tr>
		      <tr>
		        <td height="25" align="center">ȷ�� &nbsp;���룺</td>
		        <td><html:password styleId="password2" property="pwd"/></td>
		      </tr>
		      <tr>
		        <td height="25" align="center">&nbsp;</td>
		        <td><html:button property="button" styleClass="btn btn-default" value="����" onclick="check(managerForm)"/>
		&nbsp;
		<html:button property="button" styleClass="btn btn-default" value="�ر�" onclick="window.close();"/></td>
		      </tr>
		    </table>
			</html:form></td>
		          </tr>
		        </table></td>
		        <td>&nbsp;</td>
		      </tr>
		      <tr>
		        <td>&nbsp;</td>
		        <td>&nbsp;</td>
		        <td>&nbsp;</td>
		      </tr>
		    </table></td>
		  </tr>
		</table>
	</div>
</div>	
	<!-- jQuery (Bootstrap �� JavaScript �����Ҫ���� jQuery) -->
    <script src="https://code.jquery.com/jquery.js"></script>
    <!-- ���������ѱ���Ĳ�� -->
    <script src="../js/bootstrap.min.js"></script>

</body>
</html>
