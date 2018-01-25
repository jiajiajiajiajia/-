<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>无标题文档</title>
<link href="${pageContext.request.contextPath }/css/public.css" rel="stylesheet" type="text/css" />
<link href="${pageContext.request.contextPath }/css/hs_translate.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery1.8.3.min.js"></script>
<script src="${pageContext.request.contextPath }/js/index.js"></script>
<script type="text/javascript">
	function chkUserName(username){
		//去除所有空格含姓名中间空格
		var usernames = username.replace(/\s/g,'');
		url="${pageContext.request.contextPath}/chkUserName.do";
		data="username="+usernames;
		$.post(url,data,function success(msg){
			if(msg == 0){
				$("#spn").html("√用户名验证通过").css("color","green").show();
				$(".regist").removeAttr("disabled","disabled").css("background","#375090");
			}else{
				$("#spn").html("×用户名已存在，请重新输入").css("color","red").show();
				$(".regist").attr("disabled","disabled").css("background","#ccc");
			}
		})
	}
	function chkForm(){
		//用户名判断不能为空且长度大于1
		var username = $("#username").val();
		if(username == "" || username.length<2 || username == null){
			alert("用户名不能为空且长度大于1");
			$("#spn").hide();
			return false;
		}
		//学号不能为空
		var userunit = $("#userunit").val();
		if(userunit == ""){
			alert("单位不能为空");
			return false;
		}
		//密码不能为空
		var password = $("#password").val();
		if(password == ""|| password.length<6){
			alert("密码不能为空且长度不小于6");
			return false;
		}
		//两次密码是否一致
		var repassword = $("#repassword").val();
		if(password != repassword){
			alert("两次密码不一致");
			return false;
		}	
		alert("注册成功")
		return true;
	}
	$(function(){
		//输入框密码去除空格
		$(".qukg").blur(function(){
			var Val=$(this).val().replace(/\s/g,'');
			$(this).val(Val);
		})
	})
	function toLogin(){
		document.forms[1].submit();
	}
</script>
</head>

<!--登录模块  -->
<body style='width:1200px;height:618px;background:#f0f0f0 url(images/login2.jpg) no-repeat ;background-size: cover;' class='posRelative'>
<form action="${pageContext.request.contextPath }/userLogin.do" method="post">
	<div class='loginTit width1200 marginAuto fontSize30' style='padding-left:200px;padding-top:100px;'>线上共享书籍系统</div>
	<div class='loginCenter2'>
    	<div class='loginMain width1200 marginAuto posRelative'>
        	<div class='userLoginDiv posAbsolute'>
            	<h1 class='userLoginTit marginBot20 fontSize24 colorfff'>用户登录</h1>
                <div style='border-bottom:1px solid #adcfe1;height:1px;' class='marginBot30'></div>
                ${logTip }
                <input type="text" id="loginusername" name="username" class='name marginBot30 fontSize14' onfocus="if(this.value=='请输入姓名'){this.value=''}" onblur="if(this.value==''){this.value='请输入姓名'}" value='请输入姓名' />
                <input type="password" id="loginpassword" name="password" class='password marginBot30 fontSize14' onfocus="if(this.value='请输入密码'){this.value=''}" onblur="if(this.value==''){this.value='请输入密码'}" value='请输入密码'/>
                <div class="butArr butArr1 fontSize14 marginBot20">
                <!-- <input value="登录" class="marginRight10" id="registerBut" type="submit" /> -->
                <button value="登录" class="marginRight10" onclick="toLogin()">登录</button>
                <!-- <button value="登陆" id="registerBut" type="button">登陆2</button> -->
                <button value="注册" id="registerBut" type="button">注册</button></div>
                <a href="${pageContext.request.contextPath }/findindex.do" class="fontSize14" style="color:#535353;">&nbsp;返回首页</a>
            </div><!--end of userLoginDiv-->
        </div><!--end of loginMain-->
    </div><!--end of loginCenter-->
</form>









<!-- 注册模块 -->
<form id="registUser" action="${pageContext.request.contextPath }/registUser.do" method="post" novalidate="novalidate" onsubmit="return chkForm()">
<div class="zzc displayNone" id="zzcJS"></div><!--end of zzc-->
<div class="registerDiv posAbsolute displayNone">
	<div class="registerTit posRelative marginBot50"><h1 class="fontSize24 colorfff">图书共享系统</h1><img src="${pageContext.request.contextPath }/images/register_03.png" class='posAbsolute close'/></div>
    <table class="marginAuto fontSize18 marginBot30">
    	<tr>
    		<td class="tdName">姓名
    		</td>
    		<td class="tdCont">
    			<input type="text" id="username" name="username" onblur="chkUserName(this.value)" class='marginLeft20 qukg' onkeyup="value=value.replace(/\s/g,'')" maxlength="10"/>
    			&nbsp;&nbsp;<span id="spn"></span>
    		</td>
    	</tr>
        <tr>
	        <td class="tdName">学号
	        </td>
		    <td class="tdCont">
		        <input type="text" id="userunit" name="userunit" class='marginLeft20 qukg'/>
		    </td>
        </tr>
        <tr>
	        <td class="tdName">密码
		    </td>
		    <td class="tdCont">
		    	<input type="password" id="password" name="password"  class='marginLeft20 qukg' autocomplete="off"  onkeyup="value=value.replace(/\s/g,'')" maxlength="16"/>
	        </td>
        </tr>
        <tr>
        	<td class="tdName">确认密码
        	</td>
        	<td class="tdCont">
        		<input type="password" id="repassword" name="rePassword"  class='marginLeft20 qukg' autocomplete="off"  onkeyup="value=value.replace(/\s/g,'')" maxlength="16"/>
        	</td>
        </tr>
    </table>
    <div class="butArr butArr2">
    <button value="注册" class="marginRight10 regist" type="submit">注册</button>
    <button value="关闭" class="close" type="button">关闭</button></div>
</div><!--end of registerDiv-->
</form>
</body>
</html>
