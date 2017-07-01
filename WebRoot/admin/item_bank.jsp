
<%@ page language="java" contentType="text/html; charset=utf-8"    
        pageEncoding="utf-8"%>    

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
         <meta http-equiv="Content-Type" content="text/html; charset=utf-8"> 
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
        
        <script type="text/javascript">
			function ShowElement(element){
				var oldhtml = element.innerHTML;
				var x=document.getElementById(element.id + "input");
				var newobj = document.createElement('input');
				//创建新的input元素
				newobj.type = 'text';
				//为新增元素添加类型
				newobj.onblur = function(){
					element.innerHTML = this.value ? this.value : oldhtml;
					//当触发时判断新增元素值是否为空，为空则不修改，并返回原有值 
					x.value = element.innerHTML;
					}
				element.innerHTML = '';
				element.appendChild(newobj);
				newobj.focus();
				
				
				}
		</script>
		
		<script type="text/javascript">
			function delete_item(element){
			
				if(element.value == "删除"){
					element.value = "已标记";
				}
				else if(element.value == "已标记"){
					element.value = "删除";
				}
				
				}
		</script>

	
	
	
    </head>

    <body class="tm-background">
    
 				
        <div class="tm-navbar uk-navbar uk-navbar-attached">
            <div class="uk-container uk-container-center">

                <a class="uk-navbar-brand uk-hidden-small" href="admin/firstpage.jsp" style = "font-size:30px;color:#999;">电信网络学院</a>

                <ul class="uk-navbar-nav uk-hidden-small">
                    <li ><a href="admin/admin_firstpage.jsp">首页</a></li>
                    <li ><a href="userlist.do">用户列表</a></li>
                    <li><a href="examRecord.do">考试记录</a></li>
                    <li class="uk-active"><a href="item_bank.do">题库管理</a></li>
                </ul>
                <div style = "text-align:right;line-height:40px;">
                <a class = "quit" style = "text-decoration: none;" href="user/login.jsp">退出</a>
                </div>

            </div>
            
        </div>
        <form action = "search.do" style = "height: 60px;
  width: 200px;

  margin:2px;
  position: absolute;
  top: 100px;
  right:25px;
">
					<input type = "text" name = "search" placeholder = "搜索" style = "height:32px;width:200px;">
					
					<p>${error}</p>
				
				</form>
        <div class="tm-middle">
            <div class="uk-container uk-container-center"></div>
            	
            	
            	<%List<Item> items = (List<Item>)request.getAttribute("items");
            
            	 request.setAttribute("items", items); %>
            	
				
				
            	 <form action = "item_bank_submit.do"  >
            	 
				<c:forEach items="${items}" var="Item">
				<!-- 输出题目 -->
				
				
				
				
				<table style=" padding:15px;width:540px; margin:0 auto; border:1.6px solid #b1a1a1;box-shadow: 4px 4px 2.5px #988888;">
					<tr>
						<td><input type = "hidden" name = "${Item.qid}question" id="${Item.qid}questioninput" value="#" /></td>
						
						<td > ${Item.qid}&nbsp;.</td>
						<td ondblclick="ShowElement(this);" id ="${Item.qid}question"> ${Item.question}</td>
					</tr>
					
					<br>
					
					<tr>
						<td><input type = "hidden" name="${Item.qid}answerA" id = "${Item.qid}answerAinput" value="#" /></td>
						<td > A&nbsp;.</td>
						<td ondblclick="ShowElement(this)" id = "${Item.qid}answerA">${Item.option_a}</td>
					</tr>
					
					<tr>
						<td><input type = "hidden" name="${Item.qid}answerB" id = "${Item.qid}answerBinput" value="#" /></td>
						<td > B&nbsp;.</td>
						<td ondblclick="ShowElement(this)" id = "${Item.qid}answerB"> ${Item.option_b}</td>
					</tr>
					
					<tr>
						<td><input type = "hidden" name="${Item.qid}answerC" id = "${Item.qid}answerCinput" value="#" /></td>
						<td > C&nbsp;.</td>
						<td ondblclick="ShowElement(this)" id = "${Item.qid}answerC" > ${Item.option_c}</td>
					</tr>
					
					<tr>
						<td><input type = "hidden" name="${Item.qid}answerD"  id = "${Item.qid}answerDinput" value="#" /></td>
						<td > D&nbsp;.</td>
						<td ondblclick="ShowElement(this)" id = "${Item.qid}answerD"> ${Item.option_d}</td>
					</tr>
					
					<tr>
						<td ><input type = "hidden" name="${Item.qid}answer" id = "${Item.qid}answerinput" value="#" /></td>
						<td > 答案&nbsp;:</td>
						<td ondblclick="ShowElement(this)" id = "${Item.qid}answer" style = "width:350px"> ${Item.answer}</td>
						<td> </td>
						<td> <input  name = "${Item.qid}delete" onclick = "delete_item(this)" value = "删除" class = "mui-btn mui-btn--danger" style= "width:95px" readonly="readonly"> </td>
					</tr>
				</table>
				
				
				</c:forEach>
				<br/>
				<p style=" width:90px; margin:0 auto;"><input type = "submit" value = "确认修改" class = "mui-btn mui-btn--raised mui-btn--primary"  ></p>
				
				
					
				</form>
				<p style=" width:90px; margin:0 auto;"><input type = "button" value = "新增试题" onclick = "window.location.href = 'admin/add_item.jsp'" class = "mui-btn mui-btn--raised mui-btn--primary"> </p> 
				<!-- <table>
				<tr>
 				<td>你的用户名:</td> &nbsp;&nbsp;&nbsp;&nbsp;
 				<td ondblclick="ShowElement(this)">三人行团队</td>
 				</tr>
				</table> -->
				
				
 				
				
				
            	
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