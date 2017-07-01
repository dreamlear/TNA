<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
    <head>
    <base href="<%=basePath%>">	
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>开始使用 - UIkit 中文文档</title>
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
                    <li class="uk-active"><a href="admin/admin_firstpage.jsp">首页</a></li>
                    <li><a href="userlist.do">用户列表</a></li>
                    <li><a href="examRecord.do">考试记录</a></li>
                    <li><a href="item_bank.do">题库管理</a></li>
                </ul>
                <div style = "text-align:right;line-height:40px;">
                <a class = "quit" style = "text-decoration: none;" href="user/login.jsp">退出</a>
                </div>

            </div>
        </div>

        <div style = "margin-left:180px;margin-right:180px;"><br><br><br><br><br><br>
            <div class = "tm-main uk-width-medium-3-4">
            	<h2 class = "file-structure">管理员首页</h2>
            	<p>实现一个真实的、基于SSH架构的电信网络学院（TNA）系统增量式开发，循序渐进完成项目</p>
            	<p>掌握基于SSH架构的Web应用程序的编程和调试技巧</p>
            	<p>主要涉及以下主要知识点：</p>
            	<ul>
            		<li>基于SSH框架的Model 2架构的实现</li>
            		<li>使用Struts2框架OGNL、验证与资源 、拦截器等</li>
            		<li>HttpSession会话管理</li>
            		<li>可复用表示组件的实际运用</li>
            		<li>Spring框架的Ioc与AOP特征</li>
            		<li>使用Hibernate框架访问MySQL数据库</li>
            		<li>三大框架的有机整合</li>
            	</ul>
            </div>
            <div style = "margin-bottom:150px;"></div>
        </div>
        

        <div class="tm-footer" style = "background:#252525;">
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

        
        

    

</body></html>
