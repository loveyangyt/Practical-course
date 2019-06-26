<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*" errorPage="" %>
<%@ taglib uri="/WEB-INF/struts-html.tld" prefix="html" %>
<html>
<head>
<title>��̨���������ɼ�����</title>
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
			    <td width="176" align="center" valign="top" bgcolor="#FFFFFF"><%@ include file="left.jsp"%></td>
			    <td width="602" valign="top" bgcolor="#FFFFFF">
			    	<div class="row clearfix">
						<div class="col-md-12 column">
							<ul class="breadcrumb">
								<li>
									 <html:link page="/manage/login.jsp">��̨����</html:link>
								</li>
								<li class="active">
									�����ɼ���ѯ
								</li>
								<li style="float:right;">��ǰ����Ա��<%=session.getAttribute("manager")%></li>
							</ul>						
						</div>
					</div>	
			      	<div class="row clearfix">
						<div class="col-md-12 column">
			     
							<html:form action="/manage/queryResultIf.do?action=stuResultQuery" method="post">	
								<ul class="list-inline">		        
									<li>��ѯ������</li>
									<li>
										<html:select property="queryIf">
										<html:option value="stuId">׼��֤��</html:option>
										<html:option value="whichLesson">���Կγ�</html:option>
										<html:option value="convert(varchar(30), joinTime,21)">����ʱ��</html:option>
										</html:select>
									</li>	
									<li>�ؼ��֣�</li>
									<li><html:text property="key"/></li>
									<li><html:submit property="submit" styleClass="btn btn-default" value="��ѯ"/></li>	
								</ul>					 	     
							</html:form>
					  
			        	</div>
					</div>	
					
					<div class="row clearfix">
						<div class="col-md-12 column">
							<table class="table">
								<thead>
									<tr>
										<th>׼��֤��</th>
										<th>�����γ�</th>
										<th>����ʱ��</th>
										<th>��ѡ�����</th>
										<th>��ѡ�����</th>
										<th>�ϼƷ���</th>
									</tr>
								</thead>
								<tbody>
								<logic:iterate id="stuResult" name="stuResultQuery" type="com.wgh.actionForm.StuResultForm" scope="request">
									<tr class="success">
										<td><bean:write name="stuResult" property="stuId" filter="true"/></td>
										<td><bean:write name="stuResult" property="whichLesson" filter="true"/></td>
										<td><bean:write name="stuResult" property="joinTime" format="yyyy-MM-dd HH:mm:ss" filter="true"/></td>
										<td><bean:write name="stuResult" property="resSingle" filter="true"/></td>
										<td><bean:write name="stuResult" property="resMore" filter="true"/></td>
										<td><bean:write name="stuResult" property="resTotal" filter="true"/></td>
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
