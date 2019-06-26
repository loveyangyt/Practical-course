<%@ page contentType="text/html; charset=gb2312" language="java" errorPage="" %>
<%@ taglib uri="/WEB-INF/struts-html.tld" prefix="html" %>
<html>
<head>
<title>注册</title>
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
	if(form.name.value==""){
		alert("请输入考生姓名!");form.name.focus();return false;
	}
	if(form.password1.value==""){
		alert("请输入登录密码!");form.password1.focus();return false;
	}
	if(form.password1.value.length<6 || form.password1.value.length>20){
		alert("您输入的密码不合法，密码必须大于6位，并且小于等20位!");form.password1.focus();return false;
	}
	if(form.password2.value==""){
		alert("请确认登录密码!");form.password2.focus();return false;
	}		
	if(form.password1.value!=form.password2.value){
		alert("您两次输入的登录密码不一致，请重新输入!");form.password1.focus();return false;
	}
	if(form.question.value==""){
		alert("请输入提示问题!");form.question.focus();return false;
	}
	if(form.answer.value==""){
		alert("请输入问题答案!");form.answer.focus();return false;
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
					考生注册
				</li>
			</ul>
		</div>
	</div>	
	<div class="row clearfix">
		<div class="col-md-12 column">
		<html:form action="/manage/student.do?action=studentAdd" method="post" onsubmit="return checkForm(studentForm)">
				<div class="form-group">
					 <label for="inputEmail3" class="col-sm-2 control-label">考生姓名：</label>
					<div class="col-sm-10">
						<html:text styleClass="form-control" property="name" size="20"/> *
					</div>
				</div>
				<div class="form-group">
					 <label for="inputPassword3" class="col-sm-2 control-label">密码：</label>
					<div class="col-sm-10">
						<html:password styleClass="form-control" styleId="password1" property="pwd" size="20"/>（密码由6到20位的数字或字母组成） *
					</div>
				</div>
				<div class="form-group">
					 <label for="inputPassword3" class="col-sm-2 control-label">确认密码：</label>
					<div class="col-sm-10">
						<html:password styleClass="form-control" styleId="password2" property="pwd" size="20"/> *	
					</div>
				</div>
				<div class="form-group">
					 <label for="inputPassword3" class="col-sm-2 control-label">性别：</label>
					<div class="col-sm-10">
						<html:select styleClass="btn btn-default" property="sex">
						 	<html:option value="男">男 </html:option>
							<html:option value="女">女 </html:option>
						</html:select>     
					</div>
				</div>
				<div class="form-group">
					 <label for="inputPassword3" class="col-sm-2 control-label">提示问题：</label>
					<div class="col-sm-10">
						<html:text styleClass="form-control" property="question" size="40"/>（如我的生日） *
					</div>
				</div>
				<div class="form-group">
					 <label for="inputPassword3" class="col-sm-2 control-label">问题答案：</label>
					<div class="col-sm-10">
						<html:text styleClass="form-control" property="answer" size="40"/> （如7月17日）*
					</div>
				</div>
				<div class="form-group">
					 <label for="inputPassword3" class="col-sm-2 control-label">专业：</label>
					<div class="col-sm-10">
						<html:text styleClass="form-control" property="profession" size="40"/>
					</div>
				</div>
				<div class="form-group">
					 <label for="inputPassword3" class="col-sm-2 control-label">身份证号：</label>
					<div class="col-sm-10">
						<html:text styleClass="form-control" property="cardNo" size="40" readonly="true"/> *
					</div>
				</div>
				
				<div class="form-group">
					<div class="col-sm-offset-2 col-sm-10">
						<html:submit styleClass="btn btn-default"  property="submit" value="保存"/>
						<html:reset styleClass="btn btn-default" property="reset" value="取消"/>
						<html:button property="button" styleClass="btn btn-default" value="返回" onclick="window.location.href='index.jsp'"/>
					</div>
				</div>
				
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
