<%@ page contentType="text/html; charset=gb2312" language="java"%>
<%@ taglib uri="/WEB-INF/struts-html.tld" prefix="html"%>
<html>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<head>
<title>���߿���ϵͳ������̨��¼</title>
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


<script language="javascript">
function check(form){
	if (form.name.value==""){
		alert("���������Ա����!");form.name.focus();return false;
	}
	if (form.pwd.value==""){
		alert("����������!");form.pwd.focus();return false;
	}	
}
</script>
</head>
<body>

<div class="container">
	<div class="row clearfix">
		<div class="col-md-12 column">
			<div class="page-header">
				<h1>
					���߿���ϵͳ<small>��̨��¼</small>
				</h1>
			</div>
		</div>
	</div>
	<div class="row clearfix">
		<div class="col-md-12 column">
			<html:form action="manage/manager.do?action=login" method="post" focus="name" onsubmit="return check(managerForm)">
				<div class="form-group">
					 <label for="exampleInputEmail1">׼��֤��</label><html:text property="name" styleClass="form-control" />
				</div>
				<div class="form-group">
					 <label for="exampleInputPassword1">����</label><html:password property="pwd" styleClass="form-control" />
				</div>
				<html:submit styleClass="btn btn-default" value="��¼"/>
				<html:reset styleClass="btn btn-default" value="����"/>
				<html:button property="button" styleClass="btn btn-default" value="�ر�" onclick="window.close();"/>
			</html:form>			
		</div>
	</div>		
	<div class="row clearfix">
		<div class="col-md-12 column">
			<p>
				 <em></em>����ʦ����ѧ���ѧԺ&copy&nbsp;yyt
			</p>
		</div>
	</div>
</div>
    <script src="https://code.jquery.com/jquery.js"></script>
    <!-- ���������ѱ���Ĳ�� -->
    <script src="../js/bootstrap.min.js"></script>

</body>
</html>
