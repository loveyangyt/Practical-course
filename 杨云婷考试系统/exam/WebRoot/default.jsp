<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*" errorPage="" %>
<%@ taglib uri="/WEB-INF/struts-html.tld" prefix="html" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<html:base />
<title>���߿���ϵͳ</title>
<link href="CSS/style.css" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="CSS/component.css">

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
			<div class="grid">
				<figure class="effect-lily">
	           		<img src="Images/select1.jpg" alt="img01">
		            <figcaption>
		                <h2>Exams<span>���߿���</span></h2>
		                <p>������ӣ���ʼ���ԡ�</p>
		                <a href="examRule.jsp" target="_blank">View more</a>
		            </figcaption>			
	        	</figure>
				<figure class="effect-sadie">
		            <img src="Images/select2.jpg" alt="img02">
		            <figcaption>
		                <h2>Enquiries <span>�ɼ���ѯ</span></h2>
		                <p>���ң����гɼ���ѯ��</p>
		                <a href="manage/stuResult.do?action=stuResultQueryS&ID=${student}" target="_blank">View more</a>
		            </figcaption>			
	        	</figure>
	        	<figure style="clean:left;" class="effect-oscar">
		            <img src="Images/select3.jpg" alt="img07">
		            <figcaption>
		                <h2>Set<span>�޸ĸ�������</span></h2>
		                <a href="manage/student.do?action=modifyQuery&ID=${student}" target="_blank">View more</a>
		            </figcaption>			
		        </figure>		        
			</div>	
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

	<!-- jQuery (Bootstrap �� JavaScript �����Ҫ���� jQuery) -->
    <script src="https://code.jquery.com/jquery.js"></script>
    <!-- ���������ѱ���Ĳ�� -->
    <script src="../js/bootstrap.min.js"></script>

</body>
</html>
