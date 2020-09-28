/**
 * js分页标签
 * @author LEE SIU WAH
 * fkjava.pager("pager", {pageIndex: 10, pageSize : 15, pageCount : 1500, 
 *									submitUrl : "http://www.fkjava.org/video.do?pageIndex={0}"});
 * pageIndex:当前页数
 * pageSize:一页显示的数量
 * pageCount:总记录条数
 * submitUrl:提交的Url
 * 注意: pageIndex={0}是固定格式后面可以带查询参数
 */
(function(window){
	var StringBuffer = function(){
		this.array = new Array();
	};
	StringBuffer.prototype.append = function(str){
		this.array.push(str);
		return this;
	};
	StringBuffer.prototype.toString = function(){
		return this.array.join("");
	};
	var init = function(id, page){
		this.id = id;
		this.pageIndex = parseInt(page.pageIndex);
		this.pageSize = parseInt(page.pageSize);
		this.pageCount = parseInt(page.pageCount);
		this.submitUrl = page.submitUrl;
		this.pageNum = 0;
		this.str = new StringBuffer();
	};
	var _fkjava = {
		pager : function(id, page){
			init.call(this, id, page);
			// 判断
			if (this.pageSize >= this.pageCount){
				this.pageSize = this.pageCount;
			}
			// 如果总记录条数为0则没有记录条数 或者 只有一页
			if (this.pageCount === 0 || this.pageCount === this.pageSize){
				return this.toString();
			}else{
				this.pageNum = this.page_num();
				// 拼接结果字符串
				var res = new StringBuffer();
				// 首页
				if (this.pageIndex === 1) 
				{
					this.str.append("<h3>首&nbsp;&nbsp;页</h3>").append("<h3>上一页</h3>");
					// 计算出提交的URL
					var tempUrl = this.submitUrl.replace("{0}", this.pageIndex + 1);
					this.str.append("<h3><a href='"+ tempUrl +"'>下一页</a></h3>");
					tempUrl = this.submitUrl.replace("{0}", this.pageNum);
					this.str.append("<h3><a href='"+ tempUrl +"'>尾&nbsp;&nbsp;页</a></h3>");
					res.append(this.str.toString());
				
				}
				// 尾页
				else if(this.pageIndex == this.pageNum){
					// 计算出提交的URL
					var tempUrl = this.submitUrl.replace("{0}", 1);
					this.str.append("<h3><a href='" + tempUrl + "'>首&nbsp;&nbsp;页</a></h3>");
					tempUrl = this.submitUrl.replace("{0}", this.pageIndex - 1);
					this.str.append("<h3><a href='"+ tempUrl +"'>上一页</a></h3>");
					
					this.str.append("<h3>下一页</h3>").append("<h3>尾&nbsp;&nbsp;页</h3>");
					res.append(this.str.toString());
				}
				// 中间
				else{
					// 计算出提交的URL
					var tempUrl = this.submitUrl.replace("{0}", 1);
					this.str.append("<h3><a href='" + tempUrl + "'>首&nbsp;&nbsp;页</a></h3>");
					tempUrl = this.submitUrl.replace("{0}", this.pageIndex - 1);
					this.str.append("<h3><a href='"+ tempUrl +"'>上一页</a></h3>");
					
					// 后部分
					tempUrl = this.submitUrl.replace("{0}", this.pageIndex + 1);
					this.str.append("<h3><a href='"+ tempUrl +"'>下一页</a></h3>");
					tempUrl = this.submitUrl.replace("{0}", this.pageNum);
					this.str.append("<h3><a href='"+ tempUrl +"'>尾&nbsp;&nbsp;页</a></h3>");
					res.append(this.str.toString());
				}
				res.append("<h6>当前显示第&nbsp;<font style='color:red;'>" + this.pageIndex +"</font>");
				res.append("/"+ this.pageNum + "&nbsp;页&nbsp;转到</h6>");
				res.append("<h4><input type='text' id='fkjava_page_num' size='2'/></h4><h6>页&nbsp;</h6>");
				res.append("<h2><a href='javascript:void(0);' id='fkjava_page_go'>go</a></h2>");
				this.html(res.toString());
				// 绑定事件
				this.page_go();
			}
			
		},
		page_num : function(){ // 计算总页数
			return (this.pageCount % this.pageSize == 0) 
				? Math.floor((this.pageCount / this.pageSize))
				: Math.floor((this.pageCount / this.pageSize)) + 1;
		},
		trim : function(str){ // 去掉空格
			return str.replace(/^\s+/, "").replace(/\s+$/, "");
		},
		html : function(str){
			document.getElementById(this.id).innerHTML = str;
		},
		page_go : function(){
			var _num = this.pageNum;
			var tempUrl = this.submitUrl;
			document.getElementById("fkjava_page_go").onclick = function(){
				var num = document.getElementById("fkjava_page_num").value;
				if (fkjava.trim(num) == "" || isNaN(num)){
					alert("请输入页码!");
				}
				else if (parseInt(num) > _num || parseInt(num) < 1)
				{
					alert("请输入[1-"+ _num + "]范围内的页码!");
				}else{
					tempUrl = tempUrl.replace("{0}", num);
					document.location.href = tempUrl;
				}
			};
		}
	};
	window.fkjava = _fkjava;
})(window);