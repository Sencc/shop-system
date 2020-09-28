<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>购物商城-登录页面</title>
		<link href="fkjava.ico" rel="shortcut icon" type="image/x-icon"/>
		<!-- main.css是网站前台主要的CSS -->
		<link rel=stylesheet type=text/css href="${ctx}/css/main.css"/>
		<!-- login.css作用于登录的CSS -->
		<link rel="stylesheet" type="text/css" href="${ctx}/css/login.css"/>
		<!-- header部分 -->
		<script type="text/javascript" src="${ctx}/js/header.js"></script>
		<!-- JQuery文件 -->
		<script type="text/javascript" src="${ctx}/js/jquery-1.7.2.js"></script>

	</head>

<body>
	<!--header begin-->
	<div id="shortcut">
		<script type="text/javascript">header("${session_user.name}");</script>
	﻿	<div class="nav">
			<div class="w960 center">
				<ul>
					<li><a title="首页" href="${ctx}/toIndex">首页</a></li>
					<%--<c:forEach items="${firstArticleTypes}" var="articleType">
					   <li><a title="${articleType.name}" href="#" onclick="reloadIndex2(1,'${articleType.code}')">${articleType.name}</a></li>
					</c:forEach>--%>
				</ul>
			</div>
		</div>
	</div>
	<!--header end-->
	
	<form name="loginform" method="post" action="login.action" id="loginform">
		<br />
		<input type="hidden" name="method" value="login"/>
		<div class="login_main" style="background: url(images/login_bg.jpg) no-repeat center 0;">
			<div class="login_panel">
				<!--登录框开始-->
				<div class="right_panel">
					<div class="login_frame_border">
						<div class="login_frame">
							<div class="login_title">
								<font color="red">${message}</font>还不是商城用户？&nbsp;&nbsp;<a href="register.action">立即注册</a>
							</div>
							<div class="login_frist clearfix" id="user_div_name">
								<label>登录名</label> 
								<span class="login_input"> 
									<input name="loginName" type="text" maxlength="40" id="loginName" class="tip" required/>
								</span> 
								<span class="hint" id="login_loginname_error" style="display: none"></span> 
								<span class="hint" id="usernameMessage" style="display: black">请输入用户名</span>
							</div>
							<p class="clearfix" id="password_div">
								<label>密&nbsp;&nbsp;码</label> 
								<span class="login_input">
									<input name="passWord" type="passWord" maxlength="20" id="passWord" required/>
								</span> 
								<span class="hint" id="login_password_error" style="display: none"></span> 
								<span class="hint" id="passwordMessage" style="display: black">请输入6-16位密码</span>
							</p>

							<div class="login_btn" id="submit_signin_div">
								<input id="btnSignCheck" type="submit" value="登 录"
									 style="width: 94px; height: 27px; float: left; 
									background: url(images/login_btn.png) no-repeat -237px -46px;"/>
									&nbsp;&nbsp;
							</div>

							<div class="co_login">
								<span>明天的你一定会感谢今天努力奋斗的自己！-加油！</span><a class="icon_sina"
									id="open_sina_sign" href="http://www.yueqian.com.cn/" title="新浪微博">粤嵌软件</a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</form>
	<!--登录框结束-->
</body>
</html>