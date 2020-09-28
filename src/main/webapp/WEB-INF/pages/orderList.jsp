<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<title>购物商城-订单列表</title>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<link href="fkjava.ico" rel="shortcut icon" type="image/x-icon"/>
		<!-- main.css是购物商城主样式 -->
		<link rel=stylesheet type=text/css href="${ctx}/css/main.css"/>
		<!-- header.js输出头部信息 -->
		<script type="text/javascript" src="${ctx}/js/header.js"></script>
		
		<script type="text/javascript">
		
		    //obj：对应的为checkbox  ， index ：对应的是行数
			var viewitem = function(obj, index){
				var trs = document.getElementsByTagName("tr");
				for (var i = 0; i < trs.length; i++){
					//indexOf的作用判断字符串中是否包含某字符窜
					if (trs[i].id.indexOf("title_" + index) == 0 
							|| trs[i].id.indexOf("book_" + index) == 0){
						//判断obj是否选中，
						trs[i].style.display = (obj.checked) ? "" : "none";
					}
				}
			};
		</script>
	</head>
<body>
	<!-- header部分 -->
	<div id="shortcut">
		<script type="text/javascript">header("${session_user.name}");</script>
	﻿	<div class="nav">
			<div class="w960 center">
				<ul>
					<li><a title="首页" href="index.action">首页</a></li>
				</ul>
			</div>
		</div>
	</div>
	<!--header end-->
	<div class="Wrap_cart">
		<div class="List_cart marginb10">
			<h2><strong>订单信息查询</strong></h2>
			<div class="cart_table">
				<div id="part_cart">
					<div class="o_show">
						
                            <c:if test="${empty orderList}">
                                   <h1 style="font-weight:bold;font-size:12px;">&nbsp;&nbsp;<font color="red">${session_user.name}</font>：您好；您暂时没有订单！</h1>
							<div class="middle">
								<table class="Table" cellpadding="0" cellspacing="0" width="100%">
									<tr class="align_Center Thead">
										<td align="center">订单编号</td>
										<td width="26%" align="center">下单时间</td>
										<td width="20%" align="center">发货时间</td>
										<td width="16%" align="center">订单状态</td>
										<td width="20%" align="center">订单总额</td>
									</tr>
								</table>
								<br/>
									<center>暂时无信息！</center>
								<br/>
							</div>
                            </c:if>
							
						   <c:if test="${not empty  orderList}">
						         <h1 style="font-weight:bold;font-size:12px;"><font color="red">&nbsp;&nbsp;${session_user.name}</font>：您好；您当前共有[${size}]个订单：(点击订单可显示该订单下的购物明细)</h1>
							<div class="middle">
								<table class="Table" cellpadding="0" cellspacing="0" width="100%">
                                     <c:forEach items="${orderList}" var="order" varStatus="stat">
                                     
                                           <tr class="align_Center Thead">
											<td align="center">订单编号</td>
											<td width="26%" align="center">下单时间</td>
											<td width="20%" align="center">发货时间</td>
											<td width="16%" align="center">订单状态</td>
											<td width="20%" align="center">订单总额</td>
										</tr>
										
										
										<tr class="align_Center" height="25">
											<td align="center">
												<input type="checkbox" onclick="viewitem(this,${stat.index});"/>${stat.index+1}:${order.orderCode}
											</td>
											<td width="26%" align="center"> <fmt:formatDate value="${order.createDate}" pattern="yyyy-MM-dd"/> </td>
											<td width="20%" align="center"> <fmt:formatDate value="${order.sendDate}" pattern="yyyy-MM-dd"/></td>
											<td width="16%" align="center">
												<c:if test="${order.status==0}"><font color="red">未发货</font></c:if>
												<c:if test="${order.status==1}">已发货</c:if>
												<c:if test="${order.status==2}">已签收</c:if>
											</td>
											<td width="20%" align="center">${order.amount}</td>
									 	</tr>
										<tr style="display:none;background-color:#CCCCCC;border-bottom-style: solid;" id="title_${stat.index}">
											<td align="center">物品图片</td>
											<td  align="center">标题</td>
											<td align="center">供应商</td>
											<td align="center">价格</td>
											<td  align="center">购买数量</td>
										</tr>
										  
										  <c:forEach items="${order.orderItems}" var="orderItem">
										       <tr style="display:none" id="book_${stat.index}" >
												<td  align="center">
													<a href="item.action?id=">
	                  								<img width="60px" height="60px" alt="" src="${pageContext.request.contextPath}/images/article/${orderItem.article.image}" style="display: inline;"></a>
	                  							</td>
												<td  align="center">
													<a href="${pageContext.request.contextPath}/item.action?id=${orderItem.article.id}" title="${orderItem.article.title}">${orderItem.article.title}</a>
												</td>
												<td  align="center">${orderItem.article.supplier}</td>
												<td  align="center">${orderItem.article.discountPrice}</td>
												<td  align="center">${orderItem.orderNum}</td>
										 	</tr>
										  </c:forEach>

										
	                                	
	                               
                                     
                                     </c:forEach>
										

								</table>
							</div>
							<div class="footer"></div>
						   </c:if>

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