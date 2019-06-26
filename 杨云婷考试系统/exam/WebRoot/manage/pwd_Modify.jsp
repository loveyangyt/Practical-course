<%@ page contentType="text/html; charset=gb2312" language="java" errorPage="" %>
<%@ taglib uri="/WEB-INF/struts-logic.tld" prefix="logic" %>
<%@ taglib uri="/WEB-INF/struts-bean.tld" prefix="bean" %>
<%@ taglib uri="/WEB-INF/struts-html.tld" prefix="html" %>
<html>
<head>
<title>��̨��������Ա��Ϣ�޸�</title>
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
function checkForm(form){
	if(form.oldpwd1.value==""){
		alert("�������ԭ����!");form.oldpwd1.focus();return false;
	}
	if(form.oldpwd1.value!=form.holdpwd.value){
		alert("�������ԭ���벻��ȷ������������!");form.oldpwd1.value="";
		form.oldpwd1.focus();return false;
	}
	if(form.newpwd.value==""){
		alert("�������������!");form.newpwd.focus();return false;
	}	
	if(form.newpwd1.value==""){
		alert("��ȷ��������!");form.newpwd1.focus();return false;
	}	
	if(form.newpwd.value!=form.newpwd1.value){
		alert("����������������벻һ�£�����������!");
		form.newpwd.value="";form.newpwd1.value="";
		form.newpwd.focus();return false;
	}
}
</script>
<body>
<div class="container">
	<div class="row clearfix">
		<div class="col-md-12 column">
			<div class="page-header">
				<h1>
					���߿���ϵͳ <small>��̨����</small>
				</h1>
				<html:link style="float:right;margin:-40px 0 0 0" styleClass="btn btn-default" href="logout.jsp">�˳�</html:link>
			</div>
		</div>
	</div>
	<div class="row clearfix">
		<div class="col-md-12 column">	
			<table width="900" border="0" align="center" cellspacing="0" cellpadding="0">
			  <tr>
			    <td width="176" align="center" valign="top" bgcolor="#FFFFFF"><%@ include file="left.jsp"%></td>
			    <td width="602" valign="top" bgcolor="#FFFFFF"><table width="99%" height="487"  border="0" cellpadding="0" cellspacing="0" align="right">
			      	<div class="row clearfix">
						<div class="col-md-12 column">
							<ul class="breadcrumb">
								<li>
									 <html:link page="/manage/login.jsp">��̨����</html:link>
								</li>
								<li class="active">
									����Ա��Ϣ�޸�
								</li>
								<li style="float:right;">��ǰ����Ա��<%=session.getAttribute("manager")%></li>
							</ul>						
						</div>
					</div>	
			      	<div class="row clearfix">
						<div class="col-md-12 column">	
							<logic:iterate id="manager" name="pwdQueryif" type="com.wgh.actionForm.ManagerForm" scope="request">
							<bean:define id="managerName" name="manager" property="name" type="String"/>
							<bean:define id="managerPwd" name="manager" property="pwd" type="String"/>
							<html:form action="/manage/manager.do?action=modifypwd" method="post" focus="oldpwd1" onsubmit="return checkForm(managerForm)">
								<div class="form-group">
									 <label for="exampleInputEmail1">����Ա���ƣ�</label><html:text styleClass="form-control" property="name" value="<%=managerName%>" readonly="true" size="30"/>
								</div>
								<div class="form-group">
									 <label for="exampleInputPassword1">ԭ���룺</label>
									 <html:password styleClass="form-control" styleId="oldpwd1" property="oldpwd" size="30"/>
			      					 <html:hidden styleId="holdpwd" property="oldpwd" value="<%=managerPwd%>"/>
								</div>
								<div class="form-group">
									 <label for="exampleInputEmail1">�����룺</label>
									 <html:password styleClass="form-control" styleId="newpwd"  property="pwd"/>
								</div>
								<div class="form-group">
									 <label for="exampleInputEmail1">ȷ�������룺</label>
									 <html:password styleClass="form-control" styleId="newpwd1" property="pwd"/>
								</div>
								<html:submit property="submit" styleClass="btn btn-default" value="����"/>
								<html:reset property="reset" styleClass="btn btn-default" value="ȡ��"/>
								<html:button property="button" styleClass="btn btn-default" value="����" onclick="window.location.href='manager.do?action=managerQuery'"/>
							</html:form>
							</logic:iterate>
						</div>
					</div>				      
			    </table>
			</td>
			  </tr>
			</table>
		</div>
	</div>	
</div>
			
	<%@ include file="copyright.jsp"%>

	<!-- jQuery (Bootstrap �� JavaScript �����Ҫ���� jQuery) -->
    <script src="https://code.jquery.com/jquery.js"></script>
    <!-- ���������ѱ���Ĳ�� -->
    <script src="../js/bootstrap.min.js"></script>

</body>
</html>
