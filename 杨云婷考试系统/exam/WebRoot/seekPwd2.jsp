<%@ page contentType="text/html; charset=gb2312" language="java" errorPage="" %>
<%@ taglib uri="/WEB-INF/struts-html.tld" prefix="html" %>
<html>
<head>
<title>�һ����������</title>
<html:base/>
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



</head>
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
			<table width="778" border="0" align="center" cellspacing="0" cellpadding="0">
			  <tr>
			        <td height="257" align="center" valign="top">
			<table width="100%"  border="0" cellspacing="0" cellpadding="0">
			  <tr>
			    <td width="84%">&nbsp;      </td>
			</tr>
			</table> 
			 <table width="57%" height="69" border="0" cellpadding="0" cellspacing="0">
			   <tr>
			     <td width="17%"><img src="Images/step3.gif" width="73" height="30"></td>
			     <td width="83%" class="word_orange1">�ɹ��һ�����</td>
			   </tr>
			 </table>
			 <table width="57%"  border="0" cellpadding="0" cellspacing="0" bordercolor="#FFFFFF" bordercolordark="#D2E3E6" bordercolorlight="#FFFFFF">
			    <tr align="center">
			    <td width="22%" height="30" align="left" class="col-sm-2 control-label">׼��֤�ţ�</td>
			    <td width="78%" align="left">
				  <html:text styleClass="form-control" property="ID" size="40" name="seekPwd3" readonly="true"/> <span class="word_orange1"> ��ֻ����</span>	  </td>
			    </tr>
			    <tr align="center">
			    <td width="22%" height="30" align="left" class="col-sm-2 control-label">��&nbsp;&nbsp;&nbsp;&nbsp;�룺</td>
			    <td width="78%" align="left">
			      <html:text styleClass="form-control" property="pwd" size="40" name="seekPwd3" readonly="true"/> <span class="word_orange1"> ��ֻ����</span>	  </td>
			    </tr>	
			    <tr>
			      <td height="65" align="left" style="padding:5px;">&nbsp;</td>
			      <td>&nbsp;
					<input type="button" value="����" class="btn btn-default" onClick="window.location.href='<html:rewrite page="/index.jsp"/>'"/>		</td>
			    </tr>
			</table>
			</td>
			      </tr>
			
			</table>
			
		</div>
	</div>		
	<%@ include file="copyright.jsp"%>

	<!-- jQuery (Bootstrap �� JavaScript �����Ҫ���� jQuery) -->
    <script src="https://code.jquery.com/jquery.js"></script>
    <!-- ���������ѱ���Ĳ�� -->
    <script src="../js/bootstrap.min.js"></script>
</div>
</body>
</html>
