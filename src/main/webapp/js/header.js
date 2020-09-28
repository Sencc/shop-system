// position:absolute 不会受其他对象位置影响 relative 会受其他对象位置影响,对象不可层叠设置位置 使用
// left ， right ， top ， bottom 等属性相对于其最接近的一个最有定位设置的父对象进行绝对定位.
function header(name){
	var str = "<div class=\"w\">";
	str += "<ul class=\"fl lh\">";
	str += "	<li>";
	str += "		<span style=\"position: absolute;left: 500px;\">";
	str += "			<a title=\"www\" href=\"http://\"></a>";
	str += "		</span>";
	str += "	</li>";
	str += "</ul>";
	str += "<ul class=\"fr lh\">";
	if (name == null || name == "" || name.length == 0){
		str += "	<li>";
		str += "		<span>";
		str += "			[<a href=\"tologin.action\">登录</a>]";
		str += "			[<a href=\"toRegister\">免费注册</a>]";
		str += "		</span>";
		str += "	</li>";
	}else{
		str += "	<li>";
		str += "		<span style='color:red;'>" + name;
		str += "		</span>：您好!&nbsp;&nbsp;";
		str += "		[<a href=\"quit.action\">退出</a>]";
		str += "	</li>";
	}
	str += "    <li>&nbsp;[<a href=\"showCar.action\">我的购物车</a>]</li>";
	str += "	<li>&nbsp;[<a href=\"orderList.action\">我的订单</a>]</li>";
	str += "	<li>";
	str += "		<span>";
	str += "			&nbsp;&nbsp;&nbsp;<a href=\"javascript:void(0);\" onclick=\"this.style.behavior='url(#default#homepage)';this.setHomePage('http://www.yueqian.com.cn');\">设为首页</a> |";
	str += "			<a href=\"javascript:window.external.addFavorite('');\">加入收藏</a>";
	str += "		</span>";
	str += "	</li>";
	str += "</ul>";
	str += "</div>";
	str += "</div>";
	//header bar
	str += "<div class=\"header\">";
	str += "<div class=\"top w960 center\">";
	str += "	<div class=\"toptitle\">";
	str += "	<h1>";
	str += "		<a style=\"logo_style\" title=\"广州Java培训-购物商城\" href=\"toIndex\"></a>";
	str += "		<a href=\"toIndex\" title=\"\"><img alt=\"\" src=\"images/logo.gif\"></a>";
	str += "	</h1>";
	str += "</div>";
	str += "<div class=\"banner\">";
	str += "	<a title=\"\" href=\"javascript:void(0);\"></a>";
	str += "	<a title=\"\" href=\"toIndex\">";
	str += "	<em>";
	str += "	<img height=\"80\" width=\"552\" alt=\"\" border=\"0\" src=\"images/banner.gif\">";
	str += "	</em></a>";
	str += "</div>";
	str += "<div class=\"rlink\">";
	str += "	<ul>";
	str += "		<li class=\"r3\">";
	str += "			<a title=\"关于我们\" href=\"abort.action\">关于我们</a>";
	str += "		</li>";
	str += "		<li class=\"r4\">";
	str += "			<a title=\"联系方式\" href=\"javascript:void(0);\">联系方式</a>";
	str += "		</li>";
	str += "	</ul>";
	str += "</div>";
	str += "</div>";
	document.write(str);
};
