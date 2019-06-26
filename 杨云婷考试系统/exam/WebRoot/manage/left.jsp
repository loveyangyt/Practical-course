<%@ page contentType="text/html; charset=gb2312" language="java"%>
<%@ taglib uri="/WEB-INF/struts-logic.tld" prefix="logic" %>
<%@ taglib uri="/WEB-INF/struts-bean.tld" prefix="bean" %>
<%@ taglib uri="/WEB-INF/struts-html.tld" prefix="html" %>
<head>

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

<div>

<ul class="nav nav-pills nav-stacked">
  <li class="active"><a href="#">���߿���ϵͳ��̨</a></li>
  <li><a href="manager.do?action=managerQuery">����Ա��Ϣ����</a></li>
  <li><a href="student.do?action=studentQuery">������Ϣ����</a></li>
  <li><a href="stuResult.do?action=stuResultQuery">�����ɼ���ѯ</a></li>
  <li><a href="lesson.do?action=lessonQuery">�γ���Ϣ����</a></li>
  <li><a href="taoTi.do?action=taoTiQuery">������Ϣ����</a></li>
  <li><a href="questions.do?action=questionsQuery">������Ŀ�������</a></li>
  
</ul>

</div>

	<!-- jQuery (Bootstrap �� JavaScript �����Ҫ���� jQuery) -->
    <script src="https://code.jquery.com/jquery.js"></script>
    <!-- ���������ѱ���Ĳ�� -->
    <script src="../js/bootstrap.min.js"></script>
    
    
</body>		
		