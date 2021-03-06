<%@page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="java.util.*"%>
<%@page import="com.oracle.tna.domain.*"%>
<%@page import="com.oracle.tna.admin.controller.ScoreUser"%>
 <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

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
        <link href="mui/css/mui.css" rel="stylesheet" type="text/css">
		<link href="mui/css/mui.min.css" rel="stylesheet" type="text/css">
		<link href="mui/mycss/mycss.css" rel="stylesheet" type="text/css">
    <!--
    <link rel="stylesheet" type="text/css" href="styles.css">
    -->
        <link id="data-uikit-theme" href="mui/mycss/uikit.docs.min.css" rel="stylesheet" type="text/css">
        <link rel="stylesheet" href="mui/mycss/docs.css" type="text/css">
        <link rel="stylesheet" href="mui/mycss/highlight.css">
        <script src="mui/js/uikit.min.js"></script>
        <script src="mui/js/highlight.js"></script>
        <script src="mui/js/docs.js"></script>
    </head>

    <body class="tm-background">

        <div class="tm-navbar uk-navbar uk-navbar-attached">
            <div class="uk-container uk-container-center">

                <a class="uk-navbar-brand uk-hidden-small" href="admin/admin_firstpage.jsp" style="font-size:30px;color:#999;">电信网络学院</a>

                <ul class="uk-navbar-nav uk-hidden-small">
                     <li><a href="admin/admin_firstpage.jsp">首页</a></li>
                    <li><a href="userlist.do">用户列表</a></li>
                    <li class="uk-active"><a href="examRecord.do">考试记录</a></li>
                    <li><a href="item_bank.do">题库管理</a></li>
                </ul>
                <div style="text-align:right;line-height:40px;">
                <a class="quit" style="text-decoration: none;" href="user/login.jsp">退出</a>
                </div>

            </div>
            
        </div>
        <div style = "margin-left:180px;margin-right:180px;margin-top:150px;">
            
			<table class="uk-table uk-table-striped uk-text-nowrap">
				<thead>
					<tr>
						<th>编号</th>
						<th>用户名</th>
						<th>真实姓名</th>
						<th>考试时间</th>
						<th>分数</th>
					</tr>
				</thead>
				<tbody>
		<%
			List<ScoreUser> record = (List<ScoreUser>) request.getAttribute("scoreRecord");
			request.setAttribute("record", record);
		%>
            	 
				<c:forEach items="${record}" var="ScoreUser">
					
					
					<tr>
						<td align="left"> ${ScoreUser.sid}</td>
						<td align="left"> ${ScoreUser.username}</td>
						<td align="left"> ${ScoreUser.name}</td>
						<td align="left"> ${ScoreUser.date}</td>
						<td align="left"> ${ScoreUser.score}</td>
					</tr>
				
				</c:forEach>
				</tbody>
			</table>
			<h4 style = "font-family:微软雅黑;">总计：${recordnum}条记录</h4>
            <h4 style = "font-family:微软雅黑;margin-bottom:150px;">平均成绩：${avgscore}分</h4>
            
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