<%@ page contentType="text/html; charset=gb2312" language="java" errorPage="" %>
<%@ taglib uri="/WEB-INF/struts-logic.tld" prefix="logic" %>
<%@ taglib uri="/WEB-INF/struts-bean.tld" prefix="bean" %>
<%@ taglib uri="/WEB-INF/struts-html.tld" prefix="html" %>
<jsp:useBean id="lesson" class="com.wgh.dao.TaoTiDAO" scope="page"/>
<jsp:useBean id="taoTi" class="com.wgh.dao.QuestionsDAO" scope="page"/>
<html>
<head>
<title>网络在线考试——后台管理</title>
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
	if(form.name.value==""){
		alert("请输入考试题目名称!");form.name.focus();return false;
	}
}
function show(val){
		if(val=="单选题"){
		sOption.style.display="";
		mOption.style.display="none";
	}else if(val=="多选题"){
		sOption.style.display="none";
		mOption.style.display="";		
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
			    <td width="602" valign="top" bgcolor="#FFFFFF">
			      <div class="row clearfix">
						<div class="col-md-12 column">
							<ul class="breadcrumb">
								<li>
									 <html:link page="/manage/login.jsp">后台管理</html:link>
								</li>
								<li class="active">
									修改考试题目
								</li>
								<li style="float:right;">当前管理员：<%=session.getAttribute("manager")%></li>
							</ul>						
						</div>
					</div>	
					<div class="row clearfix">
						<div class="col-md-12 column">			      			 					
							<html:form action="/manage/questions.do?action=questionsModify" method="post" onsubmit="return checkForm(questionsForm)">
							<bean:define id="lessonID" name="questionsModifyQuery" property="lessonId" type="Integer"/>
							<bean:define id="taoTiID" name="questionsModifyQuery" property="taoTiId" type="Integer"/>
							<bean:define id="defaultOption" name="questionsModifyQuery" property="type" type="String"/>
								<div class="form-group" class="form-control">
									 <label for="exampleInputEmail1">所属课程：</label>
									 <%=lesson.getLesson(lessonID)%>
								</div>
								<div class="form-group">
									<label for="exampleInputEmail1" style="float:left;">所属套题：</label>
									<%=taoTi.getTaoTi(taoTiID)%>
								</div>								
								<div class="form-group" style="clear:left;">
									<label for="exampleInputEmail1">考试题目：</label>
									<html:text styleClass="form-control" property="subject" size="40" name="questionsModifyQuery"/>
								  	<html:hidden property="ID" name="questionsModifyQuery"/> *
								</div>
								<div class="form-group">
									<label for="exampleInputEmail1">试题类型：</label>
									<html:select styleClass="form-control" property="type" onchange="show(this.value)" name="questionsModifyQuery">
							          <html:option value="单选题">单选题</html:option>
							          <html:option value="多选题" >多选题</html:option>
							        </html:select>
								</div>
								<div class="form-group">
									<label for="exampleInputEmail1">选项A：</label>
									<html:text styleClass="form-control" property="optionA" size="40" name="questionsModifyQuery"/>
								</div>
								<div class="form-group">
									<label for="exampleInputEmail1">选项B：</label>
									<html:text styleClass="form-control" property="optionB" size="40" name="questionsModifyQuery"/>
								</div>
								<div class="form-group">
									<label for="exampleInputEmail1">选项C：</label>
									<html:text styleClass="form-control" property="optionC" size="40" name="questionsModifyQuery"/>
								</div>
								<div class="form-group">
									<label for="exampleInputEmail1">选项D：</label>
									<html:text styleClass="form-control" property="optionD" size="40" name="questionsModifyQuery"/>
								</div>
								<div class="form-group" id="sOption">
								<label for="exampleInputEmail1">正确答案：</label>
								<html:select styleClass="form-control" property="answer" name="questionsModifyQuery">
									<html:option value="A">A </html:option>
									<html:option value="B">B </html:option>
									<html:option value="C">C </html:option>
									<html:option value="D">D </html:option>		
								 </html:select>
							</div>
							<div class="form-group" id="mOption" style="display:none">
								<html:multibox property="answerArr" styleClass="noborder" name="questionsModifyQuery">A</html:multibox>A
								<html:multibox property="answerArr" styleClass="noborder" name="questionsModifyQuery">B</html:multibox>B
								<html:multibox property="answerArr" styleClass="noborder" name="questionsModifyQuery">C</html:multibox>C
								<html:multibox property="answerArr" styleClass="noborder" name="questionsModifyQuery">D</html:multibox>D
							</div>
							<div class="form-group">
								<label for="exampleInputEmail1">备注：</label>
								<html:text styleClass="form-control" property="note" size="40" name="questionsModifyQuery"/>
							</div>
							<html:submit property="submit" styleClass="btn btn-default" value="保存"/>
							<html:reset property="reset" styleClass="btn btn-default" value="取消"/>
							<html:button property="button" styleClass="btn btn-default" value="返回" onclick="window.location.href='questions.do?action=questionsQuery'"/>
							<script language="javascript">show("<%=defaultOption%>");</script>	
							</html:form>																					
						</div>
					</div>		
				</td>
			  </tr>
			</table>
	<%@ include file="copyright.jsp"%>


	<!-- jQuery (Bootstrap 的 JavaScript 插件需要引入 jQuery) -->
    <script src="https://code.jquery.com/jquery.js"></script>
    <!-- 包括所有已编译的插件 -->
    <script src="../js/bootstrap.min.js"></script>

</body>
</html>
