<%@ page contentType="text/html; charset=gb2312" language="java" errorPage="" %>
<%@ taglib uri="/WEB-INF/struts-logic.tld" prefix="logic" %>
<%@ taglib uri="/WEB-INF/struts-bean.tld" prefix="bean" %>
<%@ taglib uri="/WEB-INF/struts-html.tld" prefix="html" %>
<html>
<head>
<title>找回密码第一步</title>
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

<script language="javascript" src="JS/ContentLoader.js">
</script>
</head>
<script language="javascript">
function checkForm(form){
	if(form.ID.value==""){
		alert("请输入准考证号!");form.ID.focus();return false;
	}
}
</script>
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
					找回密码
				</li>
			</ul>
		</div>
	</div>	
	<div class="row clearfix">
		<div class="col-md-12 column">


			<table border="0" align="center" cellspacing="0" cellpadding="0">
			  <tr>
			    <td valign="top" bgcolor="#FFFFFF">
			    <table width="774" border="0" cellpadding="0" cellspacing="0" align="center"> 
			      <tr>
			        <td height="222" align="center" valign="top">
			<html:form action="/manage/student.do?action=seekPwd1" method="post" onsubmit="return checkForm(studentForm)">
			  <table width="57%" height="69" border="0" cellpadding="0" cellspacing="0">
			    <tr>
			      <td width="40%"><img src="Images/step1.gif" width="73" height="30"></td>
			      <td width="60%" class="word_orange1">输入准考证号</td>
			    </tr>
			  </table>
			  <table width="57%"  border="0" cellpadding="0" cellspacing="0" bordercolor="#FFFFFF" bordercolordark="#D2E3E6" bordercolorlight="#FFFFFF">
			    <tr align="center">
			    <td width="40%" height="30" align="left" class="col-sm-2 control-label">准考证号：</td>
			    <td width="60%" align="left">
			      <html:text styleClass="form-control" property="ID" size="40"/> <span class="word_orange1"> *</span>	  </td>
			    </tr>
			    <tr>
			      <td height="65" align="left" style="padding:5px;">&nbsp;</td>
			      <td><html:submit property="submit" styleClass="btn btn-default" value="下一步"/>
			        &nbsp;
			        <html:reset property="reset" styleClass="btn btn-default" value="取消"/>
					&nbsp;
					<html:button property="button" styleClass="btn btn-default" value="返回" onclick="window.location.href='index.jsp'"/>		</td>
			    </tr>
			</table>
			</html:form></td>
			      </tr>
			    </table>
			</td>
			  </tr>
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
