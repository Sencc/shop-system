<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<title>购物商城-购物车</title>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<link href="fkjava.ico" rel="shortcut icon" type="image/x-icon" />
		<!-- main.css是购物商城主样式 -->
		<link rel=stylesheet type=text/css href="${ctx}/css/main.css"/>
		<!-- header.js输出头部信息 -->
		<script type="text/javascript" src="${ctx}/js/header.js"></script>
		<script type="text/javascript">
			// 从购物车中删除物品
			var deleteFn = function(id){
				//id为需要删除的物品的id
				window.location = "${ctx}/deleteCar.action?id=" + id;//重定向至一个URL地址
			};
			
			/** id: 物品的ID, num: 购买的数量 , type : 是加一还是减一*/
			var addFun = function(id, num, type){
				// 购买的数量
				var buyNum = parseInt(num);
				if (buyNum == 1 && type == 2){
					return;
				}
				switch (type){
					case 1: // 增加一个
						window.location = "${ctx}/updateCar.action?id=" + id + "&buyNum=" + (buyNum+1);
						break;
					case 2: // 减少一个
						window.location = "${ctx}/updateCar.action?id=" + id + "&buyNum=" + (buyNum-1);
						break;
				}
			};
			var blurFn = function(obj, id, num){
				if (isNaN(obj.value)){
					obj.value = num;
				}else if (obj.value < 1){
					obj.value = num;
				}else if (obj.value != num){
					window.location.href = "updateCar.action?id=" + id + "&buyNum=" + obj.value;
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
					<li><a title="首页" href="${ctx}/toIndex">首页</a></li>
					<c:forEach items="${firstArticleTypes}" var="map">
						<li><a title="${map.name}" href="${pageContext.request.contextPath}/toIndex?firstcode=${map.code}">${map.name}</a></li>
					</c:forEach>
				</ul>
			</div>
		</div>
	</div>
	<!--header end-->
	
	<!-- middle part -->
	<div style="positon: relative; width: 960px;margin: 0px auto;">
		<div class="shoppingcart_wrapper" id="shoppingcart">
	        <p style="text-align:left;"><span id="shoppingcart_dd" style="font-size:13px;line-height:28px;">当前位置&nbsp;&gt;&gt;&nbsp;我的购物车 </span></p>
	        <ul class="shoppingcart_subject" id="ui_shoppingcart_title">
	            <li class="row1">商品名称</li>
	            <li class="row2">积分</li>
	            <li class="row3">疯狂价</li>
	            <li class="row4"><span title="在疯狂价基础上再优惠">&nbsp;&nbsp;&nbsp;小计&nbsp;&nbsp;&nbsp;</span></li>
	            <li class="row5">数量</li>
	            <li class="row6">操作</li>
	        </ul>
	        
	        <!-- 购物车不为空 -->
	        <c:if test="${totalNum >0 }">
	            <c:forEach items="${articleList}" var="article">
	                  <div class="shoppingcart_promotions_01">
						<ul class="shoppingcart_list">
							<li class="row00">
								<a name="productpic" href="javascript:void(0)" title="${article.title}">
									<img src="${pageContext.request.contextPath}/images/article/${article.image}" width="60xp" height="60xp">
								</a>
							</li>
							<li class="row11">
								<p>
									<span class="name">
										<a name="product"  href="javascript:void(0)" title="${article.title}">${article.title }</a>
									</span>
								</p>
							</li>
							<li class="row22">0</li>
							<li class="row33"><span>￥${article.discountPrice}</span>&nbsp;&nbsp;(7.6折)</li>
							<li class="row44"><span>￥${article.smallTotal}</span></li>
							<li class="row55">
								<input type="text" name="number" value="${article.buyNum}" onblur="blurFn(this, ${article.id}, ${article.buyNum});">
								<a href="javascript:void(0);" onclick="addFun(${article.id},${article.buyNum},1);" title="数量加一" class="add">+</a>
								<a href="javascript:void(0);" onclick="addFun(${article.id},${article.buyNum},2);" title="数量减一" class="cut">-</a>
							</li>
							<li class="row66">
								<a name="movetofavorite" href="javascript:void(0);" 
								title="此商品将移至“我的收藏”并从购物车中删除" id="move_20376113">移入收藏</a>
								<a name="delete" href="javascript:void(0);" onclick="deleteFn(${article.id});">删除</a>
							</li>
						</ul>
					</div>
	            
	            </c:forEach>
	            
				

		        <div align="right" id="div_total" style="display: block;clear:both;">
		        	<p style="font-size:14px;font-weight:bold;line-height:31px;">
		        		数量总计：
		            	<span style="color:red;font-size:16px;font-weight:bold;">${totalNum}</span>&nbsp;&nbsp;(件)
		        	</p>
		            <p style="font-size:14px;font-weight:bold;line-height:31px;">
		            	金额总计：
		                <span>￥</span>
		                <span style="color:red;font-size:16px;font-weight:bold;">${totalPrice}</span>&nbsp;&nbsp;(折后价)
		            </p>
		            <p>
		            	<a href="${ctx}/toIndex" name="goon" class="goon"><img alt="" src="images/shop.jpg"/></a>
		                <a href="${ctx}/order.action" class="clearing" title="结算"><img alt="" src="images/balance.jpg"></a>
		            </p>
		        </div>
	        
	        </c:if>
					
	        
	        <!-- 购物车为空的话 -->
	         <c:if test="${totalNum ==0}">

		        	<table align="center">
		        		<tr>
		        			<td><img alt="" src="images/cart_icon.gif"/></td>
		        			<td>
		        				<span style="font-size:14px;font-weight:bold;">
		        					购物车为空，<a href="${ctx}/toIndex">我要去看看&gt;&gt;</a>
		        				</span>
		        			</td>
		        		</tr>
		        	</table>
	      </c:if> 
      	</div>
	</div>
	<!---- middle end----->
	
	<!--bottom part-->
	<div style="width: 1060px;margin: 0px auto;">
  		<img src="images/step.jpg"/>
  	</div>
</body> 
</html>