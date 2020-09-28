/* 
用途：检查输入的Email信箱格式是否正确 
输入：strEmail：字符串 
返回：如果通过验证返回true,否则返回false 
 */
function checkEmail(strEmail) {
	//var emailReg = /^[_a-z0-9]+@([_a-z0-9]+\.)+[a-z0-9]{2,3}$/; 
	var emailReg = /^[\w-]+(\.[\w-]+)*@[\w-]+(\.[\w-]+)+$/;
	if (emailReg.test(strEmail)) {
		return true;
	} else {
		return false;
	}
}

function checkPassword(str){
	var passwordReg=/^[0-9a-zA-Z]{6,16}$/;
	if(passwordReg.test(str)){
		return true;
	}else{
		return false;
	}
}

// 判断输入是否是一个由 0-9 / A-Z / a-z 组成的字符串 
function isalphanumber(str) {
	var result = str.match(/^[a-zA-Z0-9]+$/);
	if (result == null)
		return false;
	return true;
}

// 判断输入是否是一个数字--(数字包含小数)-- 
function isnumber(str) {
	return !isNaN(str);
}

// 判断输入是否是一个整数 
function isint(str) {
	var result = str.match(/^(-|\+)?\d+$/);
	if (result == null)
		return false;
	return true;
}

// 判断输入是否是有效的长日期格式 - "YYYY-MM-DD HH:MM:SS" || "YYYY/MM/DD HH:MM:SS" 
function isdatetime(str) {
	var result = str
			.match(/^(\d{4})(-|\/)(\d{1,2})\2(\d{1,2}) (\d{1,2}):(\d{1,2}):(\d{1,2})$/);
	if (result == null)
		return false;
	var d = new Date(result[1], result[3] - 1, result[4], result[5], result[6],
			result[7]);
	return (d.getFullYear() == result[1] && (d.getMonth() + 1) == result[3]
			&& d.getDate() == result[4] && d.getHours() == result[5]
			&& d.getMinutes() == result[6] && d.getSeconds() == result[7]);
}

// 检查是否为 YYYY-MM-DD || YYYY/MM/DD 的日期格式 
function isdate(str) {
	var result = str.match(/^(\d{4})(-|\/)(\d{1,2})\2(\d{1,2})$/);
	if (result == null)
		return false;
	var d = new Date(result[1], result[3] - 1, result[4]);
	return (d.getFullYear() == result[1] && d.getMonth() + 1 == result[3] && d
			.getDate() == result[4]);
}


// 去除字符串的首尾的空格 
function trim(str) {
	return str.replace(/(^\s*)|(\s*$)/g, "");
}

// 返回字符串的实际长度, 一个汉字算2个长度 
function strlen(str) {
	return str.replace(/[^\x00-\xff]/g, "**").length;
}

//匹配中国邮政编码(6位) 
function ispostcode(str) {
	var result = str.match(/[1-9]\d{5}(?!\d)/);
	if (result == null)
		return false;
	return true;
}
//匹配国内电话号码(0511-4405222 或 021-87888822) 
function istell(str) {
	var result = str.match(/\d{3}-\d{8}|\d{4}-\d{7}/);
	if (result == null)
		return false;
	return true;
}

//校验是否为(0-10000)的整数 
function isint1(str) {
	var result = str.match(/^[0-9]$|^([1-9])([0-9]){0,3}$|^10000$/);
	if (result == null)
		return false;
	return true;
}

//匹配腾讯QQ号 
function isqq(str) {
	var result = str.match(/[1-9][0-9]{4,}/);
	if (result == null)
		return false;
	return true;
}

//匹配身份证(15位或18位) 
function isidcard(str) {
	var result = str.match(/\d{15}|\d{18}/);
	if (result == null)
		return false;
	return true;
}
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////// 

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////// 

//校验文本是否为空 
function checknull(field, sval) {
	if (field.value == "") {
		alert("请填写" + sval + "！");
		field.focus();
		return false;
	}
	return true;
}

//屏蔽输入字符 
/*********************** 
 调用方法： 
 在文本框中加上 onkeypress="return checkChar()" 
 *************************/
function checkChar() {
	var keycode = event.keyCode;
	if (!(keycode >= 48 && keycode <= 57)) {
		return false;
	}
}