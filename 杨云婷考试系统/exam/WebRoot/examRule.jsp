<%@ page contentType="text/html; charset=gb2312" language="java" errorPage="" %>
<%@ taglib uri="/WEB-INF/struts-logic.tld" prefix="logic" %>
<%@ taglib uri="/WEB-INF/struts-bean.tld" prefix="bean" %>
<%@ taglib uri="/WEB-INF/struts-html.tld" prefix="html" %>
<%if(session.getAttribute("student")==null){
	response.sendRedirect("../index.jsp");
}%>
<html>
<head>
<title>���Թ���</title>
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
					���Թ���
				</li>
			</ul>
		</div>
	</div>	
	<div class="row clearfix">
		<div class="col-md-12 column">
		<html:form action="/manage/lesson.do?action=selectLesson" method="post">
			<h3>
				���Թ���
			</h3>
			<p>
			&nbsp;&nbsp;&nbsp;&nbsp;�������߿���ϵͳ���������ҳ����ˢ�¡����˵Ȳ������������Ը�������ڹ涨�Ŀ���ʱ����û�н���ϵͳ���Զ��ύ�Ծ�ÿλ����ͬһ���γ�ֻ�ܿ�һ�Σ�ϵͳ�ἰʱ֪ͨ���Եľ���ʱ�䣻�뿼����ע���Կγ��Լ�����ʱ�䣡<br>
		&nbsp;&nbsp;&nbsp;&nbsp;ֻ��ͬ�����Ϲ���ſ��Խ��п��ԡ���������������δ�ҵ���صĿ��Կγ̣��������Ա��ϵ��
			</p>
			<p>
			<html:submit property="submit" styleClass="btn btn-default" value="ͬ��"/>	
			</p>
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
