<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<title>购物商城-首页</title>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<link href="fkjava.ico" rel="shortcut icon" type="image/x-icon" />
		<!-- main.css是购物商城主样式 -->
		<link rel=stylesheet type=text/css href="${ctx}/css/main.css"/>
		<link rel=stylesheet type=text/css href="${ctx}/css/pager.css"/>
		
    	
		<link type="text/css" href="${ctx}/css/ui-lightness/jquery-ui-1.8.20.custom.css" rel="stylesheet" />	
		<script type="text/javascript" src="${ctx}/js/jquery-1.8.3.min.js"></script>
		<script type="text/javascript" src="${ctx}/js/jquery-ui.js"></script>
		<script type="text/javascript" src="${ctx}/js/pager.js"></script>
		<!-- header.js输出头部信息 -->
		<script type="text/javascript" src="${ctx}/js/header.js"></script>
		<script type="text/javascript">
			
             //下拉框中数据发生改变时触发该函数
             //表单查询触发该函数
             function reloadIndex(pageIndex){
            	 document.forms[0].pageIndex.value=pageIndex;
            	 document.forms[0].action= "${ctx}/toIndex";
            	 document.forms[0].submit();
            	//window.location = "${pageContext.request.contextPath}/index.action?typeCode="+val+"&keyword="+keyword;
             }
             
             
             //选择左则菜单触发该函数
             function reloadIndex2(pageIndex,code){
            	 //跳转到第几页
            	 document.forms[0].pageIndex.value=pageIndex;
            	 //将编号赋值到articleType.firstArticleCode属性
            	 document.getElementById('articleType.firstArticleCode').value=code;
            	 //设置表单提交到url
            	 document.forms[0].action= "${ctx}/toIndex";
            	 //表单提交
            	 document.forms[0].submit();
            	//window.location = "${pageContext.request.contextPath}/index.action?typeCode="+val+"&keyword="+keyword;
             }

		</script>
	</head>
<body>
	<!-- header部分 -->
	<div id="shortcut">
		<script type="text/javascript">
		
		header("${session_user.name}");
		
		</script>
	﻿	<div class="nav">
			<div class="w960 center">
				<ul>
					<li><a title="首页" href="${ctx}/toIndex">首页</a></li>
					<c:forEach items="${firstArticleTypes}" var="articleType">
					   <li><a title="${articleType.name}" href="${pageContext.request.contextPath}/toIndex?firstcode=${articleType.code}" onclick="reloadIndex2(1,'${articleType.code}')">${articleType.name}</a></li>
					</c:forEach>
				</ul>
			</div>
		</div>
	</div>
	<!--header end-->
	<!-- middle part -->
	<div style="positon: relative; width: 960px;margin: 0px auto;">
		<!-- 左边物品类型列表 -->
		<div  id="booksort" style="float:left;width:210px;">
			<div class="mt" style="height:25px;font-size:14px;">
				<h2><strong>物品分类</strong></h2>
			</div>
			<div class="mc">
			    <c:forEach items="${firstArticleTypes}" var="articleType">
					<div class="item"><h3><b>&gt;</b><a href="${pageContext.request.contextPath}/index.action?typeCode=${articleType.code}" onclick="reloadIndex2(1,'${articleType.code}')">${articleType.name}</a></h3></div>
				</c:forEach>
			</div>
		</div>
		<!-- 右边对应物品列表 -->
		<div style="float:left;width:750px;text-align:center;">
			<div>
				<form:form action=""  modelAttribute="searchVo" id="searchForm">
					物品类型：
					<!-- 当前页 -->
			  		<form:hidden path="pageIndex"/>
			  		<!-- 每页显示多少条记录 -->
			  		<form:hidden path="pageSize"/>
			  		<!-- 总记录条数 -->
			  		<form:hidden path="recordCount"/>
			  		<!-- 一级物品类型编号 -->
			  		<form:hidden path="firstcode"/>
			  		<!-- 二级物品类型编号 -->
					<form:select path="code" onchange="reloadIndex(1)">
            			<form:option value="" label="全部"/>
            			<form:options items="${sencondArticleTypes}" itemValue="code" itemLabel="name"/>
        			</form:select>
        			<!-- 关键字属性 -->
        			<form:input  path="keyword" size="50"/>
				    <button onclick="reloadIndex">搜索</button>
				</form:form>
			</div>
			<!-- 显示所有物品 -->
			<div id="tabs" style="Width:750px;background-color:white;">
				<%--<ul>
					<li><a href="tabs-1">${typeName}</a></li>
				</ul>--%>
				<div class="sales-queue" id="tabs-1" style="background-color:white;margin-top:-25px;">
				    <ul class="goods-queue3">
	
						<c:forEach items="${articles}" var="article">
						
						   <li id="selbgc11">
							<dl class="item-des">
							  <dt><a href="${ctx}/item.action?id=${article.id}" title="${article.title}"><img src="${ctx}/images/article/${article.image}" width="132" height="96" /></a></dt>
							  <dd><s>¥: ${article.price}</s><strong>¥: ${article.discountPrice}</strong></dd>
							  <dd><h2><a href="${ctx}/item.action?id=${article.id}" title="${article.title}">${article.title}</a></h2></dd>
							</dl>
						  </li>
						</c:forEach>
						
					</ul>
					<!-- 分页标签 -->
					<div  id="pager" style="clear:both;">
					<!-- 分页标签 
						pageIndex：当前页
						pageSize：每页显示的条数
						recordCount：总记录条数
						style:css样式
						submitUrl：触发javascript函数reloadIndex
							pageIndex：跳转页
					-->
					<fkjava:pager
			  	        pageIndex="${searchVo.pageIndex}"
			  	        pageSize="${searchVo.pageSize}"
			  	        recordCount="${searchVo.recordCount}"
			  	        style="meneame"
			  	        submitUrl="reloadIndex"
			  	        />
					</div>
				</div>
			</div>
		</div>
	</div>
	<!---- middle end----->

	<!--bottom part-->
	<div style="width: 1060px;margin: 0px auto;">
  		<img src="images/step.jpg"/>
  	</div>
</body> 
</html>