<%@ page contentType="text/html; charset=gb2312" language="java" errorPage="" %>
<%@ taglib uri="/WEB-INF/struts-logic.tld" prefix="logic" %>
<%@ taglib uri="/WEB-INF/struts-bean.tld" prefix="bean" %>
<%@ taglib uri="/WEB-INF/struts-html.tld" prefix="html" %>
<html>
<head>
<title>修改个人信息</title>
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

<script language="javascript" src="JS/ContentLoader.js">
</script>
</head>
<script language="javascript">
function checkForm(form){
	if(form.name.value==""){
		alert("请输入考生姓名!");form.name.focus();return false;
	}
	if(form.oldpwd1.value==""){
		alert("请输入的原密码!");form.oldpwd1.focus();return false;
	}
	if(form.oldpwd1.value!=form.holdpwd.value){
		alert("您输入的原密码不正确，请重新输入!");form.oldpwd1.value="";
		form.oldpwd1.focus();return false;
	}
	if(form.newpwd.value==""){
		alert("请输入的新密码!");form.newpwd.focus();return false;
	}	
	if(form.newpwd1.value==""){
		alert("请确认新密码!");form.newpwd1.focus();return false;
	}	
	if(form.newpwd.value!=form.newpwd1.value){
		alert("您两次输入的新密码不一致，请重新输入!");
		form.newpwd.value="";form.newpwd1.value="";
		form.newpwd.focus();return false;
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
					修改个人信息
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
					 <label for="inputEmail3" class="col-sm-2 control-label">考生姓名：</label>
					<div class="col-sm-10">
						<html:hidden property="ID" value="<%=studentID%>"/>
			 			<html:text styleClass="form-control" property="name" size="20" name="modifyQuery" readonly="true"/> *
					</div>
				</div>
				<div class="form-group">
					 <label for="inputPassword3" class="col-sm-2 control-label">原密码：</label>
					<div class="col-sm-10">
						<html:password styleClass="form-control" styleId="oldpwd1" property="oldpwd" size="30"/> *
		      			<html:hidden styleId="holdpwd" property="oldpwd" value="<%=studentPwd%>"/>
					</div>
				</div>
				<div class="form-group">
					 <label for="inputPassword3" class="col-sm-2 control-label">新密码：</label>
					<div class="col-sm-10">
						<html:password styleClass="form-control" styleId="newpwd" property="pwd" size="20"/>（密码由6到20位的数字或字母组成） 
					</div>
				</div>
				<div class="form-group">
					 <label for="inputPassword3" class="col-sm-2 control-label">确认新密码：</label>
					<div class="col-sm-10">
						<html:password styleClass="form-control" styleId="newpwd1" property="pwd" size="20"/> *
					</div>
				</div>
				<div class="form-group">
					 <label for="inputPassword3" class="col-sm-2 control-label">性别：</label>
					<div class="col-sm-10">
						<html:select styleClass="btn btn-default" property="sex" name="modifyQuery">
					 		<html:option value="男">男 </html:option>
							<html:option value="女">女 </html:option>
						</html:select>     
					</div>
				</div>
				<div class="form-group">
					 <label for="inputPassword3" class="col-sm-2 control-label">提示问题：</label>
					<div class="col-sm-10">
						<html:text styleClass="form-control" property="question" size="40" name="modifyQuery"/>（如我的生日） *
					</div>
				</div>
				<div class="form-group">
					 <label for="inputPassword3" class="col-sm-2 control-label">问题答案：</label>
					<div class="col-sm-10">
						<html:text styleClass="form-control" property="answer" size="40" name="modifyQuery"/> （如7月17日）*
					</div>
				</div>
				<div class="form-group">
					 <label for="inputPassword3" class="col-sm-2 control-label">专业：</label>
					<div class="col-sm-10">
						<html:text styleClass="form-control" property="profession" size="40" name="modifyQuery"/>
					</div>
				</div>
				<div class="form-group">
					 <label for="inputPassword3" class="col-sm-2 control-label">身份证号：</label>
					<div class="col-sm-10">
						<html:text styleClass="form-control" property="cardNo" size="40" readonly="true" name="modifyQuery"/> *
					</div>
				</div>
				
				<div class="form-group">
					<div class="col-sm-offset-2 col-sm-10">
						<html:submit styleClass="btn btn-default"  property="submit" value="保存"/>
						<html:reset styleClass="btn btn-default" property="reset" value="取消"/>
						<html:button property="button" styleClass="btn btn-default" value="返回" onclick="window.location.href='default.jsp'"/>
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
