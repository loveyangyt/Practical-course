<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*" errorPage="" %>
<%@ taglib uri="/WEB-INF/struts-logic.tld" prefix="logic" %>
<%@ taglib uri="/WEB-INF/struts-bean.tld" prefix="bean" %>
<%@ taglib uri="/WEB-INF/struts-html.tld" prefix="html" %>
<html>
<head>
<title>添加管理员信息</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
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
function check(form){
	if(form.name.value==""){
		alert("请输入管理员名称!");form.name.focus();return;
	}
	if(form.password1.value==""){
		alert("请输入管理员密码!");form.password1.focus();return;
	}
	if(form.password2.value==""){
		alert("请确认管理员密码!");form.password2.focus();return;
	}		
	if(form.password1.value!=form.password2.value){
		alert("您两次输入的管理员密码不一致，请重新输入!");form.password1.focus();return;
	}
	form.submit();
}
</script>
<body>
<div class="container">
	<div class="row clearfix">
		<table width="280" height="170" border="0" cellpadding="0" cellspacing="0">
		  <tr>
		    <td valign="top"><table width="100%" border="0" cellpadding="0" cellspacing="0">
		      <tr>
		        <td width="12%" height="47">&nbsp;</td>
		        <td width="85%" valign="bottom"><table width="86%" height="31" border="0" align="center" cellpadding="0" cellspacing="0">
		          <tr>
		            <td class="word_white">添加管理员</td>
		          </tr>
		        </table></td>
		        <td width="3%">&nbsp;</td>
		      </tr>
		      <tr>
		        <td>&nbsp;</td>
		        <td><table width="100%" height="116"  border="0" cellpadding="0" cellspacing="0">
		          <tr>
		            <td height="116" align="center" valign="top">
			<html:form action="/manage/manager.do?action=managerAdd" method="post" focus="name">
			<table height="110"  border="0" cellpadding="0" cellspacing="0">
		      <tr>
		        <td width="80" height="30" align="center">管理员名称：</td>
		        <td width="160">
		          <html:text property="name"/></td>
		      </tr>
		      <tr>
		        <td height="25" align="center">管理员密码：</td>
		        <td><html:password styleId="password1" property="pwd"/></td>
		      </tr>
		      <tr>
		        <td height="25" align="center">确认 &nbsp;密码：</td>
		        <td><html:password styleId="password2" property="pwd"/></td>
		      </tr>
		      <tr>
		        <td height="25" align="center">&nbsp;</td>
		        <td><html:button property="button" styleClass="btn btn-default" value="保存" onclick="check(managerForm)"/>
		&nbsp;
		<html:button property="button" styleClass="btn btn-default" value="关闭" onclick="window.close();"/></td>
		      </tr>
		    </table>
			</html:form></td>
		          </tr>
		        </table></td>
		        <td>&nbsp;</td>
		      </tr>
		      <tr>
		        <td>&nbsp;</td>
		        <td>&nbsp;</td>
		        <td>&nbsp;</td>
		      </tr>
		    </table></td>
		  </tr>
		</table>
	</div>
</div>	
	<!-- jQuery (Bootstrap 的 JavaScript 插件需要引入 jQuery) -->
    <script src="https://code.jquery.com/jquery.js"></script>
    <!-- 包括所有已编译的插件 -->
    <script src="../js/bootstrap.min.js"></script>

</body>
</html>
