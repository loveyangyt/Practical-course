<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*" errorPage="" %>
<%@ taglib uri="/WEB-INF/struts-html.tld" prefix="html" %>
<html>
<head>
<title>��̨��������Ա��Ϣ����</title>
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
			    <td width="176" align="center" bgcolor="#FFFFFF"><%@ include file="left.jsp"%></td>
			    <td width="602" align="top" valign="top" bgcolor="#FFFFFF"><table width="99%" height="487"  border="0" cellpadding="0" cellspacing="0" align="right">
			      	<div class="row clearfix">
						<div class="col-md-12 column">
							<ul class="breadcrumb">
								<li>
									 <html:link page="/manage/login.jsp">��̨����</html:link>
								</li>
								<li class="active">
									����Ա��Ϣ����
								</li>
								<li style="float:right;">��ǰ����Ա��<%=session.getAttribute("manager")%></li>
							</ul>						
						</div>
					</div>	
					<div class="row clearfix">
						<div class="col-md-12 column">	
							<ul class="list-inline">		      							
								<li><button class="btn btn-default" onClick="window.open('manager_add.jsp','','width=292,height=175')">��ӹ���Ա��Ϣ</button></li>							
							</ul>
						</div>	
					</div>
					<div class="row clearfix">
						<div class="col-md-12 column">
							<table class="table">
								<thead>
									<tr>
										<th>����Ա����</th>
										<th>ɾ��</th>
										<th>�޸�</th>
									</tr>
								</thead>
								<tbody>
								<logic:iterate id="manager" name="managerQuery" type="com.wgh.actionForm.ManagerForm" scope="request">
									<tr class="success">
										<td><bean:write name="manager" property="name" filter="true"/></td>
										<td>
											<logic:notEqual value="tsoft" name="manager" property="name">
											<html:link page="/manage/manager.do?action=queryPWD" paramId="id" paramName="manager" paramProperty="ID">�޸�</html:link>
											</logic:notEqual>
										</td>
										<td>
											<logic:notEqual value="tsoft" name="manager" property="name">
											<html:link page="/manage/manager.do?action=managerDel" paramId="id" paramName="manager" paramProperty="ID">ɾ��</html:link>
											</logic:notEqual>
										</td>
									</tr>
								</logic:iterate>	
								</tbody>
							</table>
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
