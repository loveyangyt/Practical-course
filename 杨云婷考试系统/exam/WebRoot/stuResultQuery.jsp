<%@ page contentType="text/html; charset=gb2312" language="java" errorPage="" %>
<%@ taglib uri="/WEB-INF/struts-logic.tld" prefix="logic" %>
<%@ taglib uri="/WEB-INF/struts-bean.tld" prefix="bean" %>
<%@ taglib uri="/WEB-INF/struts-html.tld" prefix="html" %>

<html>
<head>
<title>成绩查询</title>
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
						成绩查询
					</li>
				</ul>
			</div>
		</div>	
		<div class="row clearfix">
			<div class="col-md-12 column">
				<table class="table">
					<thead>
						<tr>
							<th>准考证号</th>
							<th>所属课程</th>
							<th>考试时间</th>
							<th>单选题分数</th>
							<th>多选题分数</th>
							<th>合计分数</th>
						</tr>
					</thead>
					<tbody>
					<logic:iterate id="stuResult" name="stuResultQuery" type="com.wgh.actionForm.StuResultForm" scope="request">
						<tr class="success">
							<td><bean:write name="stuResult" property="stuId" filter="true"/></td>
							<td><bean:write name="stuResult" property="whichLesson" filter="true"/></td>
							<td><bean:write name="stuResult" property="joinTime" format="yyyy-MM-dd HH:mm:ss" filter="true"/></td>
							<td><bean:write name="stuResult" property="resSingle" filter="true"/></td>
							<td><bean:write name="stuResult" property="resMore" filter="true"/></td>
							<td><bean:write name="stuResult" property="resTotal" filter="true"/></td>
						</tr>
					</logic:iterate>	
					</tbody>
				</table>
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
