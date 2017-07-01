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
    
    <title>My JSP 'register.jsp' user register page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link href = "mui/css/mui.css" rel = "stylesheet" type = "text/css"/>
	<link href = "mui/css/mui.min.css" rel = "stylesheet" type = "text/css"/>
	<link href = "mui/mycss/mycss.css" rel = "stylesheet" type = "text/css"/>
	<link href = "mui/css/mui.css" rel = "stylesheet" type = "text/css"/>
	<link href = "mui/css/mui.min.css" rel = "stylesheet" type = "text/css"/>
	<link href = "mui/mycss/mycss.css" rel = "stylesheet" type = "text/css"/>
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	
	<style type="text/css">
.code 
{
 background:#6B6B6B;
 font-family:Arial;
 font-style:italic;
 color:white;
 font-size:30px;
 border:0;
 padding:2px 3px;
 letter-spacing:3px;
 font-weight:bolder;
 float:left;
 cursor:pointer;
 width:150px;
 height:60px;
 line-height:60px;
 text-align:center;
 vertical-align:middle;
}

a 
{
 text-decoration:none;
 font-size:12px;
 color:#288bc4;
}
a:hover 
{
 text-decoration:underline;
}

</style>
<script type="text/javascript">
var code;
function createCode() 
{
 code = "";
 var codeLength = 6; //验证码的长度
 var checkCode = document.getElementById("checkCode");
 var codeChars = new Array(0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 
      'a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z',
      'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z'); //所有候选组成验证码的字符，当然也可以用中文的
 for(var i = 0; i < codeLength; i++) 
 {
  var charNum = Math.floor(Math.random() * 52);
  code += codeChars[charNum];
 }
 if(checkCode) 
 {
  checkCode.className = "code";
  checkCode.innerHTML = code;
 }
}
function validateCode() 
{
 var inputCode=document.getElementById("inputCode").value;
 if(inputCode.length <= 0) 
 {
  alert("请输入验证码！");
  var x = document.getElementById("inputCodevalue");
  x.value = "wrong";
 }
 else if(inputCode.toUpperCase() != code.toUpperCase()) 
 {
   alert("验证码输入有误！");
   var x = document.getElementById("inputCodevalue");
   x.value = "wrong";
   createCode();
 }
 else 
 {
  var x = document.getElementById("inputCodevalue");
   x.value = "correct";
 }    
}  
</script>

	

  </head>
  
  <body background = "images/green_house.jpg" onload="createCode()">
  	<!--  整个页面最外层div -->
  	<div>
  	
  		<!--  主内容最外层的div -->
    <div style = "background:#f0f0f0;text-align:center;margin-left:350px;margin-right:350px;margin-top:10px;margin-bottom:30px;padding:40px;">
    
    	<!-- 登录块最外层div -->
   		<div style = "margin-top:50px;">
   		
   			
    
    		<!-- 第一行 用户、管理员选项 -->
    		<div style = "text-align:center;">
    			
    			<h3 class = "uk-link-reset" style = "color:#5B5B5B;font-family:微软雅黑;">用户注册</h3>      
    			
    		</div>
    		
    		<!-- 提交用户名和密码的表单 -->
				<form action = "register.do" style="clear:both" action="post" runat="server" onsubmit="validateCode()" method = "post">
					<!-- 包含用户名和密码 -->
					<div>
						<!-- 用户名 -->
						<div>
							<!-- 用户名的input -->
							<input class = "input-account" type = "text"  name = "account" placeholder = "用户名" value = ${param.account} >
							<br>
							<p style = "color:red;">${requestScope.inerror1} ${requestScope.error1}</p>
						</div>
						
						<!-- 密码 -->
						<div>
						<!-- 密码的input -->
							<input class = "input-account" type = "password" name = "password" placeholder = "密码" value = ${param.password}>
							<br><p style = "color:red;">${requestScope.inerror2}</p>
						</div>
						
						<!-- 密码确认 -->
						<div>
							<input class = "input-account" type = "password" name = "repassword" placeholder = "确认密码" value = ${param.repassword}>
							<br>
							<p style = "color:red;">${requestScope.inerror3}</p>
						</div>
						
						<!-- 姓名 -->
						<div>
							<input class = "input-account" type = "text" name = "name" placeholder = "名字" value = ${param.name}>
							<br>
							<p style = "color:red;">${requestScope.inerror4}</p>
						</div>
						
						<!-- 身份证号 -->
						<div>
							<input class = "input-account" type = "text" name = "id_card" placeholder = "身份证号" value = ${param.id_card}>
							<br>
							<p style = "color:red;">${requestScope.inerror5}</p>
						</div>
						
						<!-- 联系方式 -->
						<div>
							<input class = "input-account" type = "text" name = "phone" placeholder = "手机号码" value = ${param.phone}>
							<br>
							<p style = "color:red;">${requestScope.inerror6}</p>
						</div>
						
					</div>
					
					
					<div>
  						<table border="0" cellspacing="5" cellpadding="5" style = "width:300px;margin:auto;">
 						  <tr>
  							  
 							   <td style = "width:150px;"><div class="code" id="checkCode" onclick="createCode()" ></div></td>
    						   <td style = "color:#5B5B5B">点击图片刷新</td>
   						  </tr>
   						  
 						 
                         </table>
                         <br>
                         <table style = "width:300px;margin:auto;">
                         	<tr>
    						<td style = "color:#5B5B5B;width:80px;">&nbsp;&nbsp;验证码：</td>
    						<td><input style="float:left;height:35px;" type="text"   id="inputCode"/></td>
    						<td><input  type="hidden"  name = "code" id="inputCodevalue" value = "correct"/></td>
   							
   						  </tr>
                         </table>
 					</div>
					<br>
					<div class = "middle-button">
						<!-- 提交按钮 -->
						<button type = "submit" class = "mui-btn mui-btn--raised mui-btn--primary"> 提交
						</button>
						<!-- 重置按钮 -->
						<button type = "reset" class = "mui-btn mui-btn--raised mui-btn--primary"> 重置
						</button>
					</div>
					
					<div style = "height:50px;"></div>
					
				</form>

    
    	</div>
    </div>
  	</div>
    
  </body>
</html>
