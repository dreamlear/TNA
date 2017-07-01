<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'log_in.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link href = "mui/css/mui.css" rel = "stylesheet" type = "text/css"/>
	<link href = "mui/css/mui.min.css" rel = "stylesheet" type = "text/css"/>
	<link href = "mui/mycss/mycss.css" rel = "stylesheet" type = "text/css"/>
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	

	

  </head>
  
  <body background="images/green_house.jpg">
  	<!--  整个页面最外层div -->
  	<div class = "outest">
  		<!--  主内容最外层的div -->
    <div class ="out-of-all-content">
    
    	<!-- 登录块最外层div -->
   		<div class = "login">
   		
   			
    
    		<!-- 第一行 用户、管理员选项 -->
    		<div class = "user-admin">
    			<div class = "user">
    			<a class = "user-admin-a" href = "user/login.jsp" title = "用户登录"> 用户 </a>
    			  </div>       
    			<div class = "admin">
    			 <a class = "user-admin-a" href = "user/login.jsp" title = "管理员登录"> 管理员 </a>
    			 </div>
    		</div>
    		
    		<!-- 提交用户名和密码的表单 -->
				<form action = "login.do" style="clear:both" method="post">
					<!-- 包含用户名和密码 -->
					<div>
						<!-- 用户名 -->
						<div>
							<!-- 用户名的input -->
							<input class = "input-account" type = "text"  name = "account"  placeholder = "用户名">
							<br><p style = "color:red;"> ${requestScope.error1}</p>
							
						</div>
						
						<!-- 密码 -->
						<div>
						<!-- 密码的input -->
							<input class = "input-account" type = "password" name = "password" placeholder = "密码">
							<br><p style = "color:red;">${requestScope.error2}</p>
						</div>
					</div>
					
					<div class = "middle-button">
						<!-- 登录按钮 -->
						<button type = "submit" class = "mui-btn mui-btn--raised mui-btn--primary"> 登录
						</button>
					</div>
					
					
				</form>

				<!-- 注册按钮的div -->
    		<div class = "middle">
    			<a class = "sign-up" href = "/TNA/user/register.jsp"> 点击注册</a>
    		</div>
    
    	</div>
    </div>
  	</div>
    
  </body>
</html>
