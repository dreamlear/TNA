<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import = "java.util.*" %>
<%@ page import = "com.oracle.tna.domain.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
    <head>
    	<base href="<%=basePath%>">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>exam</title>
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
        <link id="data-uikit-theme" href="mui/mycss/uikit.docs.min.css" rel="stylesheet" type = "text/css">
        <link rel="stylesheet" href="mui/mycss/docs.css" type = "text/css">
        <link rel="stylesheet" href="mui/mycss/highlight.css">
        <script src="mui/js/uikit.min.js"></script>
        <script src="mui/js/highlight.js"></script>
        <script src="mui/js/docs.js"></script>
        
         <style type="text/css">
        .fixed_div{
            position:fixed;
            right:10px;
            top:100px;
            width:200px;
        	}
        .left_fixed_div{
        	position:fixed;
        	left:10px;
        	top:150px;
        	width:270px;
      
        	
        }
    </style>
        
        <script type="text/javascript">

var h=0;
var m=0;
var s=0;
var a = 0;
var b = 0;
var c= 0;
function startTime()
{

s = s + 1;
if(s == 60){
	s = 0;
	m = m + 1;
}
if(m == 60){
	m = 0;
	h = h + 1;
}
if(h == 24){
	h = 0;
}
c = h;
b = m;
a = s;
if (a<10) 
{a="0" + a;}

if (b<10) 
{b="0" + b;}

if (c<10) 
{c="0" + c;}



document.getElementById('txt').innerHTML=c+":"+b+":"+a;
t=setTimeout('startTime()',1000);
}


</script>
    </head>

    <body class="tm-background"  onload="startTime()">

        <div class="tm-navbar uk-navbar uk-navbar-attached">
            <div class="uk-container uk-container-center">

                <a class="uk-navbar-brand uk-hidden-small" href="user/firstpage.jsp" style = "font-size:30px;color:#999;">电信网络学院</a>

                <ul class="uk-navbar-nav uk-hidden-small">
                    <li><a href="user/firstpage.jsp">首页</a></li>
                    <li><a href="user/personalInfo.jsp">个人信息</a></li>
                    <li class="uk-active"><a href="exam.do">参加考试</a></li>
                    <li><a href="exam-record.do">考试记录</a></li>
                </ul>
                <div style = "text-align:right;line-height:40px;">
                <a class = "quit" style = "text-decoration: none;" href="user/login.jsp">退出</a>
                </div>

            </div>
            
        </div>
        <div class="tm-middle">
            <div class="uk-container uk-container-center"></div>
            
            <div  class = "fixed_div">
            	<table>
            		<tr>
            			<td> 考试用时：&nbsp;</td>
            			<td  id="txt"></td>
            		</tr>
            	</table>
            	
            </div>
            
            <div class="left_fixed_div">

                        <ul class="tm-nav uk-nav" data-uk-nav="">

                            <%List<Item> items = (List<Item>)request.getAttribute("items");
            	 			request.setAttribute("items", items); %>
            	 			<c:forEach items="${items}" var="Item">
            	 				<li><a href="/TNA/exam.do#${Item.qid}">${Item.qid}.${Item.question}</a></li>
            	 			</c:forEach>
                            

                        </ul>

                    </div>
            
 
				
				
            	 <form action = "examResult.do"  method="post">
            	 
				<c:forEach items="${items}" var="Item">
				
				<c:choose>
   					<c:when test = "${Item.type > 1 }">  
   						<p id = "${Item.qid}" style = "width:540px; margin:0 auto; font-family: 微软雅黑; font-size:17px;">${Item.qid}&nbsp;. ${Item.question}(多选)</p>
				<table style=" width:540px; margin:0 auto; border:1.6px solid #b1a1a1;padding:13px 35px;box-shadow: 4px 4px 2.5px #988888;">
					<tr>
						<td width="43px"><input type = "checkbox" name="item${Item.qid}" value="A" />A</td>
						<td> ${Item.option_a}</td>
					</tr>
					
					<tr>
						<td><input type = "checkbox" name="item${Item.qid}" value="B" />B</td>
						<td> ${Item.option_b}</td>
					</tr>
					
					<tr>
						<td><input type = "checkbox" name="item${Item.qid}" value="C" />C</td>
						<td> ${Item.option_c}</td>
					</tr>
					
					<tr>
						<td><input type = "checkbox" name="item${Item.qid}" value="D" />D</td>
						<td> ${Item.option_d}</td>
					</tr>
					<%-- <tr>
						<td><input type = "hidden" name="item${Item.qid}" value="N" /></td>
						
					</tr> --%>
				   
				</table>
				<br>
               
 					</c:when>
   					<c:otherwise> 
     					<p id = "${Item.qid}" style = "width:540px; margin:0 auto; font-family: 微软雅黑; font-size:17px;">${Item.qid}&nbsp;. ${Item.question}(单选)</p>
				<table style=" width:540px; margin:0 auto; border:1.6px solid #b1a1a1;padding:13px 35px;box-shadow: 4px 4px 2.5px #988888;">
					<tr>
						<td width="43px"><input type = "checkbox" name="item${Item.qid}" value="A" />A</td>
						<td> ${Item.option_a}</td>
					</tr>
					
					<tr>
						<td><input type = "checkbox" name="item${Item.qid}" value="B" />B</td>
						<td> ${Item.option_b}</td>
					</tr>
					
					<tr>
						<td><input type = "checkbox" name="item${Item.qid}" value="C" />C</td>
						<td> ${Item.option_c}</td>
					</tr>
					
					<tr>
						<td><input type = "checkbox" name="item${Item.qid}" value="D" />D</td>
						<td> ${Item.option_d}</td>
					</tr>
					<%-- <tr>
						<td><input type = "hidden" name="item${Item.qid}" value="N" /></td>
						
					</tr> --%>
				   
				</table>
				<br>
   					</c:otherwise>
				</c:choose>
				
				
				
				
				
					
				</c:forEach>
				<br/>
				<div style = "width:200px; margin:0 auto;"><input type = "submit" value = "交卷" class = "mui-btn mui-btn--raised mui-btn--primary" >&nbsp;&nbsp;&nbsp;<input type = "reset" value = "重置" class = "mui-btn mui-btn--raised mui-btn--primary" ></div>
					<!-- <div class = "middle-button">
						<button type = "submit" class = "mui-btn mui-btn--raised mui-btn--primary"> 交卷
						</button>
					</div> -->
				</form>
            </div>
          <div class="tm-footer" style = "background:#252525">
            <div class="uk-container uk-container-center uk-text-center" style = "height:0px;">
                <ul class="uk-subnav uk-subnav-line uk-flex-center">
                    <li><a href="http://github.com/uikit/uikit">宋龙泽</a></li>
                    <li><a href="http://github.com/uikit/uikit/issues">李志远</a></li>
                    <li><a href="http://github.com/uikit/uikit/blob/master/CHANGELOG.md">魏茂胜</a></li>
                    <li><a href="https://twitter.com/getuikit">续校鸣</a></li>
                </ul>

                <div class="uk-panel" style = "height:0px;">
                    <p>Made by <a href="http://www.yootheme.com">青龙学习小组</a> with love and handsomeness.<br>Licensed under FBI license.</p>
                    
                </div>

            </div>
        </div>
        </body>
        </html>