<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*" errorPage="" %>
<jsp:useBean id="lesson" class="com.wgh.dao.TaoTiDAO" scope="page"/>
<jsp:useBean id="taoTi" class="com.wgh.dao.QuestionsDAO" scope="page"/>
<%@ taglib uri="/WEB-INF/struts-html.tld" prefix="html" %>
<html>
<head>
<title>��̨-������Ŀ����</title>
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
//�ж��û��Ƿ�ѡ����Ҫɾ���ļ�¼������ǣ�����ʾ���Ƿ�ɾ������������ʾ����ѡ��Ҫɾ���ļ�¼��
function checkdel(delid,formname){
	var flag = false;
	for(i=0;i<delid.length;i++){
		if(delid[i].checked){
			flag = true;
			break;
		}
	}
	if(!flag){
		alert("��ѡ��Ҫɾ���ļ�¼��");
		return false;
	}else{
			if(confirm("ȷ��Ҫɾ����")){
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
			    <td width="602" valign="top" bgcolor="#FFFFFF"><table width="99%" height="487"  border="0" cellpadding="0" cellspacing="0" align="right">
			      <div class="row clearfix">
						<div class="col-md-12 column">
							<ul class="breadcrumb">
								<li>
									 <html:link page="/manage/login.jsp">��̨����</html:link>
								</li>
								<li class="active">
									������Ŀ����
								</li>
								<li style="float:right;">��ǰ����Ա��<%=session.getAttribute("manager")%></li>
							</ul>						
						</div>
					</div>
					<div class="row clearfix">
						<div class="col-md-12 column">	
							<ul class="list-inline">		      							
								<li><html:link styleClass="btn btn-default" page="/manage/questions.do?action=questionsAddQuery">��ӿ�����Ŀ</html:link></li>							
							</ul>
						</div>	
					</div>
					<div class="row clearfix">
						<div class="col-md-12 column">
							<html:form action="/manage/questions.do?action=questionsDel" method="post">
							<table class="table">
								<thead>
									<tr>
										<th>�����γ�</th>
										<th>��������</th>
										<th>������Ŀ</th>
										<th>��������</th>
										<th>�޸�</th>
										<th>ѡ��</th>
									</tr>
								</thead>
								<tbody>
								<logic:iterate id="questions" name="questionsQuery" type="com.wgh.actionForm.QuestionsForm" scope="request">
								<bean:define id="lessonID" name="questions" property="lessonId" type="Integer"/>
								<bean:define id="taoTiID" name="questions" property="taoTiId" type="Integer"/>
									<tr class="success">
										<td><%=lesson.getLesson(lessonID)%></td>
										<td><%=taoTi.getTaoTi(taoTiID)%></td>
										<td><bean:write name="questions" property="subject" filter="true"/></td>
										<td><bean:write name="questions" property="type" filter="true"/></td>
										<td><html:link page="/manage/questions.do?action=questionsModifyQuery" paramId="id" paramName="questions" paramProperty="ID">�޸�</html:link></td>
										<td><html:multibox property="delIdArray" styleClass="noborder"><bean:write name="questions" property="ID"/></html:multibox></td>
									</tr>
								</logic:iterate>	
								</tbody>
							</table>
							</html:form>
						</div>
					</div>	
			    	<div class="row clearfix">
						<div class="col-md-12 column">
							<input name="checkbox" type="checkbox" class="noborder" onClick="CheckAll(questionsForm.delIdArray,questionsForm.checkbox)">
				  [ȫѡ/��ѡ] [<a style="color:red;cursor:hand;" onClick="checkdel(questionsForm.delIdArray,questionsForm)">ɾ��</a>]
						  	<div id="ch">
								<input name="delid" type="checkbox" class="noborder" value="0">
						  	</div>
							 <!--��ch���ڷ������ص�checkbox�ؼ�����Ϊ������ֻ��һ��checkbox�ؼ�ʱ��Ӧ��javascript�����length����ֵΪundefine-->
							 <script language="javascript">ch.style.display="none";</script>
						</div>
					</div>				
				</td>
			  </tr>
			</table>
		</div>	
	</div>		
	<%@ include file="copyright.jsp"%>
</div>
	<!-- jQuery (Bootstrap �� JavaScript �����Ҫ���� jQuery) -->
    <script src="https://code.jquery.com/jquery.js"></script>
    <!-- ���������ѱ���Ĳ�� -->
    <script src="../js/bootstrap.min.js"></script>

</body>
</html>
