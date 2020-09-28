<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<title>购书商城-确定订单</title>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<link href="fkjava.ico" rel="shortcut icon" type="image/x-icon"/>
		<!-- main.css是购物商城主样式 -->
		<link rel=stylesheet type=text/css href="css/main.css"/>
		<!-- header.js输出头部信息 -->
		<script type="text/javascript" src="js/header.js"></script>
		<script type="text/javascript">
			function submitFn(){
				document.getElementById("orderform").submit();
			}
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
			<h2><strong>填写核对订单信息</strong></h2>
			<div class="cart_table">
				<!--收货人地址开始-->
				<div id="part_consignee">
					<div class="o_write">
						<h1>收货人信息&nbsp;
							<span style="display: none"><a href="javascript:void(0);" style="color: rgb(255, 102, 0);">[创建一个新地址]</a></span>
						</h1>
						<div class="middle">
							<div id="consignee_addr">
								<table border="0" cellspacing="0" width="100%">
									<tbody>
										<tr>
											<td align="right" valign="middle" width="85">
												<font color="red">*</font>收货人姓名：</td>
											<td align="left" valign="middle"><input
												id="consignee_addressName" class="txt" maxlength="20" value="${user.name}"
												type="text">&nbsp;</td>
										</tr>
										<tr>
											<td align="right" valign="middle"><font color="red">*</font>地址：</td>
											<td align="left" valign="middle"><span
												id="consigneeShow_addressName"></span> 
												<input id="consignee_address" class="txt" maxlength="50" value="${user.address}"
													type="text" 
													 style="margin-left: 2px; width: 327px;">&nbsp;
											</td>
										</tr>
										<tr>
											<td align="right" valign="middle"><font color="red">*</font>电话号码：</td>
											<td align="left" valign="middle"><input
												id="consignee_message" class="txt" type="text" value="${user.phone}">
												&nbsp; &nbsp;<font color="#000000">用于接收发货通知短信及送货前确认</font>
											</td>
										</tr>
										<tr>
											<td align="right" valign="middle">电子邮件：</td>
											<td align="left" valign="middle"><input
												id="consignee_email" class="txt" type="text" value="${user.email}"> &nbsp;
												<font color="#000000">用来接收订单提醒邮件，便于您及时了解订单状态</font></td>
										</tr>
										<tr>
											<td align="right" valign="middle">邮政编码：</td>
											<td align="left" valign="middle"><input
												id="consignee_postcode" class="txt" style="width: 77px;"
												type="text">&nbsp; <font style="margin-left: 53px"
												color="#000000">有助于快速确定送货地址</font></td>
										</tr>
									</tbody>
								</table>
							</div>
						</div>
						<div style="padding: 10px 0 20px 45px;">
							<a href="#none">[添加到常用地址]</a>
						</div>
						<div class="footer">
							<input class="btn" value="保存收货人信息" type="button">
						</div>
					</div>
				</div>
				<!--收货人地址结束,支付方式及配送方式开始-->
				<div id="part_payTypeAndShipType">
					<div class="o_show">
						<h1>支付及配送方式&nbsp;</h1>
						<div id="updateInfo_payType"></div>
						<div class="middle">
							<table style="width: 100%;">
								<tbody>
									<tr>
										<td style="text-align: right; width: 80px;">支付方式：</td>
										<td>在线支付</td>
									</tr>
									<tr style="">
										<td style="text-align: right;">配送方式：</td>
										<td>快递运输</td>
									</tr>
									<tr style="">
										<td style="text-align: right;">运 费：</td>
										<td>0.00元<span style="color: red">(免运费)</span></td>
									</tr>
								</tbody>
							</table>
						</div>
						<div class="footer"></div>
					</div>
				</div>
				<!--支付方式及配送方式结束-->
				<!--Cart信息开始-->
				<div id="part_cart">
					<div class="o_show">
						<h1>
							<span style="margin-right: 700px;">商品清单</span> 
							<a href="" style="color: rgb(0, 112, 215);">返回修改购物车</a>
						</h1>
						<div class="middle">
							<table class="Table" cellpadding="3" cellspacing="0" width="100%">
								<tbody>
									<tr class="align_Center Thead">
										<td>商品名称</td>
										<td width="10%">疯狂价</td>
										<td width="8%">返现</td>
										<td width="8%">小计(元)</td>
										<td width="9%">库存</td>
										<td width="9%">数量</td>
									</tr>
									<!-- 迭代购物车中的书 -->
									 <c:forEach items="${articleList}" var="article">
									    <tr class="align_Center">
											<td class="align_Left" width="52%">${article.title}</td>
											<td width="15%"><span class="price">${article.discountPrice}&nbsp;&nbsp;(7.6折)</span></td>
											<td width="5%">￥0.00</td>
											<td width="5%">￥${article.smallTotal}</td>
											<td width="8%">${article.storage}</td>
											<td width="10%">${article.buyNum}</td>
										</tr>
									 </c:forEach>
										
										
									
								</tbody>
							</table>
						</div>
						<div class="footer"></div>
					</div>
				</div>
				<!--Cart信息开始-->
				<!--有货先发开始-->
				<div id="part_FirstInstockShip" style="padding: 8px 0 8px 30px; color: red"></div>
				<!--有货先发结束-->
				<div id="ware_info">
					<div style="background: #fff; font-size: 14px; font-weight: bold; padding-left: 2px;">结算信息</div>
					<h1></h1>
					<div class="middle">
						<!--订单信息-->
						<ul id="part_info">
							<li class="info1" style="padding-bottom: 5px">商品金额：${totalPrice}元 +
								运费：0.00元 - 优惠券：<span id="price_coupon">0.00</span>元 - 礼品卡： <span
								id="price_coupon">0.00</span>元 - 返现：0.00元 <input
								id="txtIsUseMoney" value="0" type="hidden"> <br>
							</li>
							<li class="info2" style="width: 100%; overflow: hidden;">
								<table style="width: 100%;" cellpadding="0" cellspacing="0">
									<tbody>
										<tr>
											<td></td>
											<td style="text-align: right; font-size: 15px;"><b>应付总额：<font
													color="red">￥${totalPrice}</font> 元
											</b>
												<div id="paypassword_panel"></div></td>
										</tr>
									</tbody>
								</table>
							</li>
						</ul>
					</div>
				</div>
				<!--提交-->
				<div class="o_show submit">
					<div id="submit_btn">
						<table cellpadding="0" cellspacing="0" width="100%">
							<tbody>
								<tr>
									<td style="padding: 0pt; text-align: left; vertical-align: top;">
										<div style="width: 600px; padding-left: 10px;" id="part_remark">
											<font id="showForm_remark"> </font>
										</div>
									</td>
									<td style="width: 100px; padding: 0pt;">
										<!-- 确定订单 -->
										<form action="${pageContext.request.contextPath}/saveOrder.action" method="post" id="orderform">
											<input type="hidden" name="countMoney" value="${totalPrice}"/> 
											<input onclick="submitFn();" style="margin-top: 2px; border: medium none; cursor: pointer; width: 160px; height: 53px; background: url(images/submit.jpg) repeat scroll 0% 0% transparent;" type="button"/>
										</form>
									</td>
								</tr>
							</tbody>
						</table>
					</div>
				</div>
				<!--提交结束-->
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