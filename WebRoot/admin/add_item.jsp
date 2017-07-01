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
        <link href = "mui/css/mui.css" rel = "stylesheet" type = "text/css"/>
		<link href = "mui/css/mui.min.css" rel = "stylesheet" type = "text/css"/>
		<link href = "mui/mycss/mycss.css" rel = "stylesheet" type = "text/css"/>
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
                     <li ><a href="admin/firstpage.jsp">首页</a></li>
                    <li ><a href="userlist.do">用户列表</a></li>
                    <li><a href="examRecord.do">考试记录</a></li>
                    <li class="uk-active"><a href="item_bank.do">题库管理</a></li>
                </ul>
                <div style="text-align:right;line-height:40px;">
                <a class="quit" style="text-decoration: none;" href="user/login.jsp">退出</a>
                </div>

            </div>
            
        </div>
        <div class="tm-middle">
            <div class="uk-container uk-container-center">
            <form action = "add_item.do">
            	<table>
            	<tr>
            	<td>题干：</td>
            	<td> <input name = "question"  type = "text" value = ${param.question} > </td>
            	<td> ${requestScope.error1}</td>
            	</tr>
            	<tr>
            	<td>选项A：</td>
            	<td> <input name = "optionA"  type = "text" value = ${param.optionA}> </td>
            	<td> ${requestScope.error2}</td>
            	</tr>
            	<tr>
            	<td>选项B：</td>
            	<td> <input name = "optionB"  type = "text" value = ${param.optionB}> </td>
            	<td> ${requestScope.error3}</td>
            	</tr>
            	<tr>
            	<td>选项C：</td>
            	<td> <input name = "optionC"  type = "text" value = ${param.optionC}> </td>
            	<td> ${requestScope.error4}</td>
            	</tr>
            	<tr>
            	<td>选项D：</td>
            	<td> <input name = "optionD"  type = "text" value = ${param.optionD}> </td>
            	<td> ${requestScope.error5}</td>
            	</tr>
            	<tr>
            	<td>答案：</td>
            	<td> <input name = "answer"  type = "text" value = ${param.answer}> </td>
            	<td> ${requestScope.error6}</td>
            	</tr>
            </table>
            <input type = "submit" value = "提交" class = "mui-btn mui-btn--raised mui-btn--primary">
            </form>
            
            
            </div>
		</div>

				</div>
        <div class="tm-footer">
            <div class="uk-container uk-container-center uk-text-center">

                <ul class="uk-subnav uk-subnav-line uk-flex-center">
                    <li><a href="http://github.com/uikit/uikit">GitHub</a></li>
                    <li><a href="http://github.com/uikit/uikit/issues">Issues</a></li>
                    <li><a href="http://github.com/uikit/uikit/blob/master/CHANGELOG.md">Changelog</a></li>
                    <li><a href="https://twitter.com/getuikit">Twitter</a></li>
                </ul>

                <div class="uk-panel">
                    <p>Made by <a href="http://www.yootheme.com">YOOtheme</a> with love and caffeine.<br>Licensed under <a href="http://opensource.org/licenses/MIT">MIT license</a>.</p>
                    <a href=" index.html"><img src="images/logo_uikit.svg" width="90" height="30" title="UIkit" alt="UIkit"></a>
                </div>

            </div>
        </div>
        </body>
        </html></i>