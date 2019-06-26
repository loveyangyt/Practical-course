<%@ page contentType="text/html; charset=gb2312" language="java" errorPage="" %>
<%@ taglib uri="/WEB-INF/struts-logic.tld" prefix="logic" %>
<%@ taglib uri="/WEB-INF/struts-bean.tld" prefix="bean" %>
<%@ taglib uri="/WEB-INF/struts-html.tld" prefix="html" %>
<html>
<head>
<title>后台——管理员信息修改</title>
<link href="../CSS/style.css" rel="stylesheet">

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
<script language="javascript">
function checkForm(form){
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
}
</script>
<body>
<div class="container">
	<div class="row clearfix">
		<div class="col-md-12 column">
			<div class="page-header">
				<h1>
					在线考试系统 <small>后台管理</small>
				</h1>
				<html:link style="float:right;margin:-40px 0 0 0" styleClass="btn btn-default" href="logout.jsp">退出</html:link>
			</div>
		</div>
	</div>
	<div class="row clearfix">
		<div class="col-md-12 column">	
			<table width="900" border="0" align="center" cellspacing="0" cellpadding="0">
			  <tr>
			    <td width="176" align="center" valign="top" bgcolor="#FFFFFF"><%@ include file="left.jsp"%></td>
			    <td width="602" valign="top" bgcolor="#FFFFFF"><table width="99%" height="487"  border="0" cellpadding="0" cellspacing="0" align="right">
			      	<div class="row clearfix">
						<div class="col-md-12 column">
							<ul class="breadcrumb">
								<li>
									 <html:link page="/manage/login.jsp">后台管理</html:link>
								</li>
								<li class="active">
									管理员信息修改
								</li>
								<li style="float:right;">当前管理员：<%=session.getAttribute("manager")%></li>
							</ul>						
						</div>
					</div>	
			      	<div class="row clearfix">
						<div class="col-md-12 column">	
							<logic:iterate id="manager" name="pwdQueryif" type="com.wgh.actionForm.ManagerForm" scope="request">
							<bean:define id="managerName" name="manager" property="name" type="String"/>
							<bean:define id="managerPwd" name="manager" property="pwd" type="String"/>
							<html:form action="/manage/manager.do?action=modifypwd" method="post" focus="oldpwd1" onsubmit="return checkForm(managerForm)">
								<div class="form-group">
									 <label for="exampleInputEmail1">管理员名称：</label><html:text styleClass="form-control" property="name" value="<%=managerName%>" readonly="true" size="30"/>
								</div>
								<div class="form-group">
									 <label for="exampleInputPassword1">原密码：</label>
									 <html:password styleClass="form-control" styleId="oldpwd1" property="oldpwd" size="30"/>
			      					 <html:hidden styleId="holdpwd" property="oldpwd" value="<%=managerPwd%>"/>
								</div>
								<div class="form-group">
									 <label for="exampleInputEmail1">新密码：</label>
									 <html:password styleClass="form-control" styleId="newpwd"  property="pwd"/>
								</div>
								<div class="form-group">
									 <label for="exampleInputEmail1">确认新密码：</label>
									 <html:password styleClass="form-control" styleId="newpwd1" property="pwd"/>
								</div>
								<html:submit property="submit" styleClass="btn btn-default" value="保存"/>
								<html:reset property="reset" styleClass="btn btn-default" value="取消"/>
								<html:button property="button" styleClass="btn btn-default" value="返回" onclick="window.location.href='manager.do?action=managerQuery'"/>
							</html:form>
							</logic:iterate>
						</div>
					</div>				      
			    </table>
			</td>
			  </tr>
			</table>
		</div>
	</div>	
</div>
			
	<%@ include file="copyright.jsp"%>

	<!-- jQuery (Bootstrap 的 JavaScript 插件需要引入 jQuery) -->
    <script src="https://code.jquery.com/jquery.js"></script>
    <!-- 包括所有已编译的插件 -->
    <script src="../js/bootstrap.min.js"></script>

</body>
</html>
