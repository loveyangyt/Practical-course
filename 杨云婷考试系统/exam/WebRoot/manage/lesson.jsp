<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*" errorPage="" %>
<%@ taglib uri="/WEB-INF/struts-html.tld" prefix="html" %>
<html>
<head>
<title>后台-课程信息管理</title>
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


<script language="javascript">
function CheckAll(elementsA,elementsB){
	for(i=0;i<elementsA.length;i++){
		elementsA[i].checked = true;
	}
	if(elementsB.checked ==false){
		for(j=0;j<elementsA.length;j++){
			elementsA[j].checked = false;
		}
	}
}
//判断用户是否选择了要删除的记录，如果是，则提示“是否删除”；否则提示“请选择要删除的记录”
function checkdel(delid,formname){
	var flag = false;
	for(i=0;i<delid.length;i++){
		if(delid[i].checked){
			flag = true;
			break;
		}
	}
	if(!flag){
		alert("请选择要删除的记录！");
		return false;
	}else{
			if(confirm("确定要删除吗？")){
				formname.submit();
		}
	}
}
</script>

</head>
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
			    <td width="602" valign="top" bgcolor="#FFFFFF">
			      	<div class="row clearfix">
						<div class="col-md-12 column">
							<ul class="breadcrumb">
								<li>
									 <html:link page="/manage/login.jsp">后台管理</html:link>
								</li>
								<li class="active">
									课程信息管理
								</li>
								<li style="float:right;">当前管理员：<%=session.getAttribute("manager")%></li>
							</ul>						
						</div>
					</div>	
					<div class="row clearfix">
						<div class="col-md-12 column">
			      			<ul class="list-inline">		      							
								<li><button class="btn btn-default" onClick="window.open('lesson_add.jsp','','width=292,height=175')">添加课程信息</button></li>							
							</ul>
			      		</div>
			      	</div>
			      	<div class="row clearfix">
						<div class="col-md-12 column">
							<html:form action="/manage/lesson.do?action=lessonDel" method="post">
							<table class="table">
								<thead>
									<tr>
										<th>ID</th>
										<th>课程名称</th>
										<th>加入时间</th>										
										<th>选项</th>
									</tr>
								</thead>
								<tbody>
								<logic:iterate id="lesson" name="lessonQuery" type="com.wgh.actionForm.LessonForm" scope="request">
									<tr class="success">
										<td><bean:write name="lesson" property="ID" filter="true"/></td>
										<td><bean:write name="lesson" property="name" filter="true"/></td>
										<td><bean:write name="lesson" property="joinTime" format="yyyy-MM-dd HH:mm:ss" filter="true"/></td>
										<td><html:multibox property="delIdArray" styleClass="noborder"><bean:write name="lesson" property="ID"/></html:multibox></td>
									</tr>
								</logic:iterate>	
								</tbody>
							</table>
							</html:form>
						</div>
					</div>
			      	<div class="row clearfix">
						<div class="col-md-12 column">
							<input name="checkbox" type="checkbox" class="noborder" onClick="CheckAll(studentForm.delIdArray,studentForm.checkbox)">
				  [全选/反选] [<a style="color:red;cursor:hand;" onClick="checkdel(studentForm.delIdArray,studentForm)">删除</a>]
							 <div id="ch">
								<input name="delid" type="checkbox" class="noborder" value="0">
							 </div>
							 <!--层ch用于放置隐藏的checkbox控件，因为当表单中只是一个checkbox控件时，应用javascript获得其length属性值为undefine-->
							 <script language="javascript">ch.style.display="none";</script>
						</div>
					</div>
			      	
			      
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
