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
    </head>

    <body class="tm-background">

        <div class="tm-navbar uk-navbar uk-navbar-attached">
            <div class="uk-container uk-container-center">

                <a class="uk-navbar-brand uk-hidden-small" href="admin/admin_firstpage.jsp" style = "font-size:30px;color:#999;">电信网络学院</a>

                <ul class="uk-navbar-nav uk-hidden-small">
                    <li ><a href="admin/admin_firstpage.jsp">首页</a></li>
                    <li class="uk-active"><a href="userlist.do">用户列表</a></li>
                    <li><a href="examRecord.do">考试记录</a></li>
                    <li><a href="item_bank.do">题库管理</a></li>
                </ul>
                <div style = "text-align:right;line-height:40px;">
                <a class = "quit" style = "text-decoration: none;" href="user/login.jsp">退出</a>
                </div>

            </div>
            
        </div>
        <div style = "margin-left:180px;margin-right:180px;margin-top:150px;">
            	
            	 <table class="uk-table uk-table-striped uk-text-nowrap">
				<thead>
					<tr>
						<th>用户id</th>
						<th>用户名</th>
						<th>身份证号</th>
						<th>姓名</th>
						<th>电话号码</th>
					</tr>
				</thead>
            	 <%List<User> userlist = (List<User>)request.getAttribute("user_list");
            	 request.setAttribute("userlist", userlist); %>
				<c:forEach items="${userlist}" var="User">
						
					<tr>
						<td align="left"> ${User.uid}</td>
						<td align="left"> ${User.username}</td>
						<td align="left"> ${User.idnumber}</td>
						<td align="left"> ${User.name}</td>
						<td align="left"> ${User.telno}</td>
					</tr>
					
					
			
				</c:forEach>
				</table>
				<h4 style = "font-family:微软雅黑;margin-bottom:150px;">总计：${usercount}条记录</h4>

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