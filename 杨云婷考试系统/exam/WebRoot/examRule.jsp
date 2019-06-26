<%@ page contentType="text/html; charset=gb2312" language="java" errorPage="" %>
<%@ taglib uri="/WEB-INF/struts-logic.tld" prefix="logic" %>
<%@ taglib uri="/WEB-INF/struts-bean.tld" prefix="bean" %>
<%@ taglib uri="/WEB-INF/struts-html.tld" prefix="html" %>
<%if(session.getAttribute("student")==null){
	response.sendRedirect("../index.jsp");
}%>
<html>
<head>
<title>考试规则</title>
<html:base />
<link href="CSS/style.css" rel="stylesheet">


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
			<ul class="breadcrumb">
				<li>
					 <html:link page="/default.jsp">在线考试系统</html:link>
				</li>
				<li class="active">
					考试规则
				</li>
			</ul>
		</div>
	</div>	
	<div class="row clearfix">
		<div class="col-md-12 column">
		<html:form action="/manage/lesson.do?action=selectLesson" method="post">
			<h3>
				考试规则
			</h3>
			<p>
			&nbsp;&nbsp;&nbsp;&nbsp;网络在线考试系统不允许对网页进行刷新、后退等操作，否则后果自负。如果在规定的考试时间内没有交卷，系统将自动提交试卷。每位考生同一个课程只能考一次；系统会及时通知考试的具体时间；请考生关注考试课程以及考试时间！<br>
		&nbsp;&nbsp;&nbsp;&nbsp;只有同意以上规则才可以进行考试。如果出现问题或者未找到相关的考试课程，请与管理员联系。
			</p>
			<p>
			<html:submit property="submit" styleClass="btn btn-default" value="同意"/>	
			</p>
		</html:form>	
		</div>
	</div>
	<%@ include file="copyright.jsp"%>
</div>		

	<!-- jQuery (Bootstrap 的 JavaScript 插件需要引入 jQuery) -->
    <script src="https://code.jquery.com/jquery.js"></script>
    <!-- 包括所有已编译的插件 -->
    <script src="../js/bootstrap.min.js"></script>

</body>
</html>
