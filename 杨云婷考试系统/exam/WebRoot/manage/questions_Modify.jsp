<%@ page contentType="text/html; charset=gb2312" language="java" errorPage="" %>
<%@ taglib uri="/WEB-INF/struts-logic.tld" prefix="logic" %>
<%@ taglib uri="/WEB-INF/struts-bean.tld" prefix="bean" %>
<%@ taglib uri="/WEB-INF/struts-html.tld" prefix="html" %>
<jsp:useBean id="lesson" class="com.wgh.dao.TaoTiDAO" scope="page"/>
<jsp:useBean id="taoTi" class="com.wgh.dao.QuestionsDAO" scope="page"/>
<html>
<head>
<title>�������߿��ԡ�����̨����</title>
<link href="../CSS/style.css" rel="stylesheet">

	<meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- ���� Bootstrap -->
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
 
    <!-- HTML5 Shiv �� Respond.js ������ IE8 ֧�� HTML5Ԫ�غ�ý���ѯ -->
    <!-- ע�⣺ ���ͨ�� file://  ���� Respond.js �ļ�������ļ��޷���Ч�� -->
    <!--[if lt IE 9]>
    	 <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
         <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
    <![endif]-->

	<!-- �� Bootstrap ���� CSS �ļ� -->
	<link href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
 
	<!-- jQuery�ļ��������bootstrap.min.js ֮ǰ���� -->
	<script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
 
	<!-- ���µ� Bootstrap ���� JavaScript �ļ� -->
	<script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
	

</head>
<script language="javascript">
function checkForm(form){
	if(form.name.value==""){
		alert("�����뿼����Ŀ����!");form.name.focus();return false;
	}
}
function show(val){
		if(val=="��ѡ��"){
		sOption.style.display="";
		mOption.style.display="none";
	}else if(val=="��ѡ��"){
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
					���߿���ϵͳ <small>��̨����</small>
				</h1>
				<html:link style="float:right;margin:-40px 0 0 0" styleClass="btn btn-default" href="logout.jsp">�˳�</html:link>
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
									 <html:link page="/manage/login.jsp">��̨����</html:link>
								</li>
								<li class="active">
									�޸Ŀ�����Ŀ
								</li>
								<li style="float:right;">��ǰ����Ա��<%=session.getAttribute("manager")%></li>
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
									 <label for="exampleInputEmail1">�����γ̣�</label>
									 <%=lesson.getLesson(lessonID)%>
								</div>
								<div class="form-group">
									<label for="exampleInputEmail1" style="float:left;">�������⣺</label>
									<%=taoTi.getTaoTi(taoTiID)%>
								</div>								
								<div class="form-group" style="clear:left;">
									<label for="exampleInputEmail1">������Ŀ��</label>
									<html:text styleClass="form-control" property="subject" size="40" name="questionsModifyQuery"/>
								  	<html:hidden property="ID" name="questionsModifyQuery"/> *
								</div>
								<div class="form-group">
									<label for="exampleInputEmail1">�������ͣ�</label>
									<html:select styleClass="form-control" property="type" onchange="show(this.value)" name="questionsModifyQuery">
							          <html:option value="��ѡ��">��ѡ��</html:option>
							          <html:option value="��ѡ��" >��ѡ��</html:option>
							        </html:select>
								</div>
								<div class="form-group">
									<label for="exampleInputEmail1">ѡ��A��</label>
									<html:text styleClass="form-control" property="optionA" size="40" name="questionsModifyQuery"/>
								</div>
								<div class="form-group">
									<label for="exampleInputEmail1">ѡ��B��</label>
									<html:text styleClass="form-control" property="optionB" size="40" name="questionsModifyQuery"/>
								</div>
								<div class="form-group">
									<label for="exampleInputEmail1">ѡ��C��</label>
									<html:text styleClass="form-control" property="optionC" size="40" name="questionsModifyQuery"/>
								</div>
								<div class="form-group">
									<label for="exampleInputEmail1">ѡ��D��</label>
									<html:text styleClass="form-control" property="optionD" size="40" name="questionsModifyQuery"/>
								</div>
								<div class="form-group" id="sOption">
								<label for="exampleInputEmail1">��ȷ�𰸣�</label>
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
								<label for="exampleInputEmail1">��ע��</label>
								<html:text styleClass="form-control" property="note" size="40" name="questionsModifyQuery"/>
							</div>
							<html:submit property="submit" styleClass="btn btn-default" value="����"/>
							<html:reset property="reset" styleClass="btn btn-default" value="ȡ��"/>
							<html:button property="button" styleClass="btn btn-default" value="����" onclick="window.location.href='questions.do?action=questionsQuery'"/>
							<script language="javascript">show("<%=defaultOption%>");</script>	
							</html:form>																					
						</div>
					</div>		
				</td>
			  </tr>
			</table>
	<%@ include file="copyright.jsp"%>


	<!-- jQuery (Bootstrap �� JavaScript �����Ҫ���� jQuery) -->
    <script src="https://code.jquery.com/jquery.js"></script>
    <!-- ���������ѱ���Ĳ�� -->
    <script src="../js/bootstrap.min.js"></script>

</body>
</html>
