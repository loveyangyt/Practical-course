<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import ="java.sql.*" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<base href="<%=basePath%>">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>登录处理页面</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
</head>
<body>

<%		
	String loginName=request.getParameter("username");
	String psw=request.getParameter("password");
									   
	Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");     
	String connectionUrl = "jdbc:sqlserver://localhost:1433;databaseName=online_test;user=sa;password=sa;";  
	Connection conn = DriverManager.getConnection(connectionUrl);        
	Statement stmt=conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_UPDATABLE);  
	String sql = "Select * from user_info where username='"+loginName+"'";//表的名字是userinfo，第一列id，第二列username，第三列password
	ResultSet rs = stmt.executeQuery(sql);
				
	while(rs.next()){
		String temp=rs.getString(3);
					
		session.setAttribute("id",rs.getInt(1));
		session.setAttribute("username",rs.getString(2));
					
		if(psw!=null){
			if(psw.equals(temp)){
				response.sendRedirect("success.jsp");//登录成功
			}else{
				//request.setAttribute("loginError", "您还没有登录，请登录...");          // 设置错误属性
				//request.getRequestDispatcher("error.jsp").forward(request, response);//登录失败
				response.sendRedirect("error.jsp");//登录成功			
			}
		}
	}
	rs.close();         
	stmt.close();         
	conn.close();
%>

</body>
</html>