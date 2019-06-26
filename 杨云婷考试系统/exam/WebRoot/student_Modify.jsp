<%@ page contentType="text/html; charset=gb2312" language="java" errorPage="" %>
<%@ taglib uri="/WEB-INF/struts-logic.tld" prefix="logic" %>
<%@ taglib uri="/WEB-INF/struts-bean.tld" prefix="bean" %>
<%@ taglib uri="/WEB-INF/struts-html.tld" prefix="html" %>
<html>
<head>
<title>�޸ĸ�����Ϣ</title>
<html:base />
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
	if(form.name.value==""){
		alert("�����뿼������!");form.name.focus();return false;
	}
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
	if(form.question.value==""){
		alert("��������ʾ����!");form.question.focus();return false;
	}
	if(form.answer.value==""){
		alert("�����������!");form.answer.focus();return false;
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
					�޸ĸ�����Ϣ
				</li>
			</ul>
		</div>
	</div>	
	<div class="row clearfix">
		<div class="col-md-12 column">
		<html:form styleClass="form-horizontal" action="/manage/student.do?action=studentModify" method="post" onsubmit="return checkForm(studentForm)">
			<bean:define id="studentID" name="modifyQuery" property="ID" type="String"/>
			<bean:define id="studentPwd" name="modifyQuery" property="pwd" type="String"/>
				<div class="form-group">
					 <label for="inputEmail3" class="col-sm-2 control-label">����������</label>
					<div class="col-sm-10">
						<html:hidden property="ID" value="<%=studentID%>"/>
			 			<html:text styleClass="form-control" property="name" size="20" name="modifyQuery" readonly="true"/> *
					</div>
				</div>
				<div class="form-group">
					 <label for="inputPassword3" class="col-sm-2 control-label">ԭ���룺</label>
					<div class="col-sm-10">
						<html:password styleClass="form-control" styleId="oldpwd1" property="oldpwd" size="30"/> *
		      			<html:hidden styleId="holdpwd" property="oldpwd" value="<%=studentPwd%>"/>
					</div>
				</div>
				<div class="form-group">
					 <label for="inputPassword3" class="col-sm-2 control-label">�����룺</label>
					<div class="col-sm-10">
						<html:password styleClass="form-control" styleId="newpwd" property="pwd" size="20"/>��������6��20λ�����ֻ���ĸ��ɣ� 
					</div>
				</div>
				<div class="form-group">
					 <label for="inputPassword3" class="col-sm-2 control-label">ȷ�������룺</label>
					<div class="col-sm-10">
						<html:password styleClass="form-control" styleId="newpwd1" property="pwd" size="20"/> *
					</div>
				</div>
				<div class="form-group">
					 <label for="inputPassword3" class="col-sm-2 control-label">�Ա�</label>
					<div class="col-sm-10">
						<html:select styleClass="btn btn-default" property="sex" name="modifyQuery">
					 		<html:option value="��">�� </html:option>
							<html:option value="Ů">Ů </html:option>
						</html:select>     
					</div>
				</div>
				<div class="form-group">
					 <label for="inputPassword3" class="col-sm-2 control-label">��ʾ���⣺</label>
					<div class="col-sm-10">
						<html:text styleClass="form-control" property="question" size="40" name="modifyQuery"/>�����ҵ����գ� *
					</div>
				</div>
				<div class="form-group">
					 <label for="inputPassword3" class="col-sm-2 control-label">����𰸣�</label>
					<div class="col-sm-10">
						<html:text styleClass="form-control" property="answer" size="40" name="modifyQuery"/> ����7��17�գ�*
					</div>
				</div>
				<div class="form-group">
					 <label for="inputPassword3" class="col-sm-2 control-label">רҵ��</label>
					<div class="col-sm-10">
						<html:text styleClass="form-control" property="profession" size="40" name="modifyQuery"/>
					</div>
				</div>
				<div class="form-group">
					 <label for="inputPassword3" class="col-sm-2 control-label">���֤�ţ�</label>
					<div class="col-sm-10">
						<html:text styleClass="form-control" property="cardNo" size="40" readonly="true" name="modifyQuery"/> *
					</div>
				</div>
				
				<div class="form-group">
					<div class="col-sm-offset-2 col-sm-10">
						<html:submit styleClass="btn btn-default"  property="submit" value="����"/>
						<html:reset styleClass="btn btn-default" property="reset" value="ȡ��"/>
						<html:button property="button" styleClass="btn btn-default" value="����" onclick="window.location.href='default.jsp'"/>
					</div>
				</div>
				
			</html:form>
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
