<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*" errorPage="" %>
<%@ taglib uri="/WEB-INF/struts-html.tld" prefix="html" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<html:base />
<title>在线考试系统</title>
<link href="CSS/style.css" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="CSS/component.css">

	<meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- 引入 Bootstrap -->
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
 
    <!-- HTML5 Shiv 和 Respond.js 用于让 IE8 支持 HTML5元素和媒体查询 -->
    <!-- 注意： 如果通过 file://  引入 Respond.js 文件，则该文件无法起效果 -->
    <!--[if lt IE 9]>
    	 <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
         <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
    <![endif]-->

	<!-- 新 Bootstrap 核心 CSS 文件 -->
	<link href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
 
	<!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
	<script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
 
	<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
	<script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>




</head>

<body>
<div class="container">
	<div class="row clearfix">
		<div class="col-md-12 column">
			<div class="page-header">
				<h1>
					在线考试系统 <small>东北师范大学</small>
				</h1>
				<html:link style="float:right;margin:-40px 0 0 0" styleClass="btn btn-default" href="logout.jsp">退出</html:link>
			</div>
		</div>
	</div>
	<div class="row clearfix">
		<div class="col-md-12 column">
			<div class="grid">
				<figure class="effect-lily">
	           		<img src="Images/select1.jpg" alt="img01">
		            <figcaption>
		                <h2>Exams<span>在线考试</span></h2>
		                <p>点击链接，开始考试。</p>
		                <a href="examRule.jsp" target="_blank">View more</a>
		            </figcaption>			
	        	</figure>
				<figure class="effect-sadie">
		            <img src="Images/select2.jpg" alt="img02">
		            <figcaption>
		                <h2>Enquiries <span>成绩查询</span></h2>
		                <p>点我，进行成绩查询。</p>
		                <a href="manage/stuResult.do?action=stuResultQueryS&ID=${student}" target="_blank">View more</a>
		            </figcaption>			
	        	</figure>
	        	<figure style="clean:left;" class="effect-oscar">
		            <img src="Images/select3.jpg" alt="img07">
		            <figcaption>
		                <h2>Set<span>修改个人资料</span></h2>
		                <a href="manage/student.do?action=modifyQuery&ID=${student}" target="_blank">View more</a>
		            </figcaption>			
		        </figure>		        
			</div>	
		</div>	
	</div>	
	<div class="row clearfix">
		<div class="col-md-12 column">
			<p>
				<em></em>东北师范大学软件学院&copy&nbsp;yyt
			</p>
		</div>
	</div>
</div>

	<!-- jQuery (Bootstrap 的 JavaScript 插件需要引入 jQuery) -->
    <script src="https://code.jquery.com/jquery.js"></script>
    <!-- 包括所有已编译的插件 -->
    <script src="../js/bootstrap.min.js"></script>

</body>
</html>
