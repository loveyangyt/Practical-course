<%@ page contentType="text/html; charset=gb2312" language="java" errorPage="" %>
<%@ taglib uri="/WEB-INF/struts-logic.tld" prefix="logic" %>
<%@ taglib uri="/WEB-INF/struts-bean.tld" prefix="bean" %>
<%@ taglib uri="/WEB-INF/struts-html.tld" prefix="html" %>
<html>
<head>
<title>�һ������һ��</title>
<link href="CSS/style.css" rel="stylesheet">

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

<script language="javascript" src="JS/ContentLoader.js">
</script>
</head>
<script language="javascript">
function checkForm(form){
	if(form.ID.value==""){
		alert("������׼��֤��!");form.ID.focus();return false;
	}
}
</script>
<body>
<div class="container">
	<div class="row clearfix">
		<div class="col-md-12 column">
			<div class="page-header">
				<h1>
					���߿���ϵͳ <small>����ʦ����ѧ</small>
				</h1>
				<html:link style="float:right;margin:-40px 0 0 0" styleClass="btn btn-default" href="logout.jsp">�˳�</html:link>
			</div>
		</div>
	</div>
	<div class="row clearfix">
		<div class="col-md-12 column">
			<ul class="breadcrumb">
				<li>
					 <html:link page="/default.jsp">���߿���ϵͳ</html:link>
				</li>
				<li class="active">
					�һ�����
				</li>
			</ul>
		</div>
	</div>	
	<div class="row clearfix">
		<div class="col-md-12 column">


			<table border="0" align="center" cellspacing="0" cellpadding="0">
			  <tr>
			    <td valign="top" bgcolor="#FFFFFF">
			    <table width="774" border="0" cellpadding="0" cellspacing="0" align="center"> 
			      <tr>
			        <td height="222" align="center" valign="top">
			<html:form action="/manage/student.do?action=seekPwd1" method="post" onsubmit="return checkForm(studentForm)">
			  <table width="57%" height="69" border="0" cellpadding="0" cellspacing="0">
			    <tr>
			      <td width="40%"><img src="Images/step1.gif" width="73" height="30"></td>
			      <td width="60%" class="word_orange1">����׼��֤��</td>
			    </tr>
			  </table>
			  <table width="57%"  border="0" cellpadding="0" cellspacing="0" bordercolor="#FFFFFF" bordercolordark="#D2E3E6" bordercolorlight="#FFFFFF">
			    <tr align="center">
			    <td width="40%" height="30" align="left" class="col-sm-2 control-label">׼��֤�ţ�</td>
			    <td width="60%" align="left">
			      <html:text styleClass="form-control" property="ID" size="40"/> <span class="word_orange1"> *</span>	  </td>
			    </tr>
			    <tr>
			      <td height="65" align="left" style="padding:5px;">&nbsp;</td>
			      <td><html:submit property="submit" styleClass="btn btn-default" value="��һ��"/>
			        &nbsp;
			        <html:reset property="reset" styleClass="btn btn-default" value="ȡ��"/>
					&nbsp;
					<html:button property="button" styleClass="btn btn-default" value="����" onclick="window.location.href='index.jsp'"/>		</td>
			    </tr>
			</table>
			</html:form></td>
			      </tr>
			    </table>
			</td>
			  </tr>
			</table>
		</div>
	</div>	
	<%@ include file="copyright.jsp"%>
</div>

	<!-- jQuery (Bootstrap �� JavaScript �����Ҫ���� jQuery) -->
    <script src="https://code.jquery.com/jquery.js"></script>
    <!-- ���������ѱ���Ĳ�� -->
    <script src="../js/bootstrap.min.js"></script>
		
</body>
</html>
