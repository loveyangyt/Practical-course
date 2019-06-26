<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*" errorPage="" %>
<%@ taglib uri="/WEB-INF/struts-html.tld" prefix="html" %>
<html>
<head>
<title>��̨-�γ���Ϣ����</title>
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
			    <td width="602" valign="top" bgcolor="#FFFFFF">
			      	<div class="row clearfix">
						<div class="col-md-12 column">
							<ul class="breadcrumb">
								<li>
									 <html:link page="/manage/login.jsp">��̨����</html:link>
								</li>
								<li class="active">
									�γ���Ϣ����
								</li>
								<li style="float:right;">��ǰ����Ա��<%=session.getAttribute("manager")%></li>
							</ul>						
						</div>
					</div>	
					<div class="row clearfix">
						<div class="col-md-12 column">
			      			<ul class="list-inline">		      							
								<li><button class="btn btn-default" onClick="window.open('lesson_add.jsp','','width=292,height=175')">��ӿγ���Ϣ</button></li>							
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
										<th>�γ�����</th>
										<th>����ʱ��</th>										
										<th>ѡ��</th>
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
				  [ȫѡ/��ѡ] [<a style="color:red;cursor:hand;" onClick="checkdel(studentForm.delIdArray,studentForm)">ɾ��</a>]
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
</div>	
	<%@ include file="copyright.jsp"%>

	<!-- jQuery (Bootstrap �� JavaScript �����Ҫ���� jQuery) -->
    <script src="https://code.jquery.com/jquery.js"></script>
    <!-- ���������ѱ���Ĳ�� -->
    <script src="../js/bootstrap.min.js"></script>

</body>
</html>
