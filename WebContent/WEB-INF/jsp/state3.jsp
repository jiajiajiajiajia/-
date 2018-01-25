<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>后台管理页面</title>
<link href="${pageContext.request.contextPath }/css/public.css" rel="stylesheet" type="text/css" />
<link href="${pageContext.request.contextPath }/css/hs_translate.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/css/state.css"/>
<script src="js/jquery1.8.3.min.js"></script>
<script src="js/index.js"></script>
</head>
<body>

<%@ include file="header.jsp"  %>
<div style='background:url(images/loginBg.jpg) no-repeat left;' class="marginBot50">
<br>
	<div class="huishouye"style="margin-left: 150px;"><a href="${pageContext.request.contextPath }/findindex.do">< 返回首页</a></div>
	<br>
    <div class="myApplication marginAuto hengpai huibeijing">
    	<div class="boxleft">
    		<div class="daohanglan shangbianju"><a href="${pageContext.request.contextPath }/findsss.do?userid=${user.userid}">☪待审核</a></div>
    		<div class="daohanglan " ><a href="${pageContext.request.contextPath }/findywc.do">☪已审核</a></div>
    		<div class="daohanglan " ><a href="${pageContext.request.contextPath }/findyh.do?userid=${user.userid}">☪用户管理</a></div>
    	</div>
    	
    	
        <!--用户管理-->
        <div class="myAppMain marginAuto fix ">
        	<div class="div_search posRelative marginBot20">
        	<button type="button"  id="registerBut" style="text-align: center;line-height: 36px;background-color: #0288D1;width:400px;height: 36px;margin-left: 120px;margin-top:10px;margin-bottom:-10px;color:#EEEEEE;border-radius:5px;">添加</button>
                
            	<div class="searchMain posAbsolute fix"style="display: flex;">
            	
                    </div><!--end of searchMain-->
            </div><!--end of div_search-->
            
            
            
            <table cellpadding="0" cellspacing="0" class="fileTable marginAuto marginBot30" width="100%">
            	<thead >
             			<tr><td style='width:22%;' class='borderRight font'>用户姓名</td>
             					<td class='borderRight font'>用户学号</td>
             					<td class='borderRight font'>用户ip</td>
             					<td class='borderRight font'>最后一次登录时间</td>
             					<td class='borderRight font'>状态</td>
             					<td style='width:10%;' class='borderRight font'>操作</td>
             			</tr>
             			<c:forEach items="${list }" var="list">
		                    <tr class='backWhite'>
		                        <td style='width:22%;' class='borderRight font'>${list.username }</td>
		                        <td  class="borderRight font">${list.userunit }</td>
		                        <td class="borderRight font">${list.userip }</td>
		                        <td class="borderRight font">${list.usertime }</td>
		                        <td class="borderRight font">
		                        	<c:if test="${list.userstate!=1 }"><a href="${pageContext.request.contextPath }/updateyhty.do?userid=${list.userid}">点击停用</a></c:if>
                        			<c:if test="${list.userstate==1 }"><a href="${pageContext.request.contextPath }/updateyhqy.do?userid=${list.userid}">恢复使用</a></c:if>
		                        </td>
		                        <td style='width:10%;' class="borderRight font">
		                        	<a href=" ${pageContext.request.contextPath }/deleteyh.do?userid=${list.userid}" class='modify'>删除</a>
		                        	
		                        </td>
		                    </tr>
		                  </c:forEach>
             			
             			
                </thead>
               
            </table>
            <div class="turnPage1 marginBot50  font"><span class="marginRight10 font">页数：1/1</span><a href="#"class=" font">首页</a><a href="#"class=" font">上一页</a><a href="#"class=" font">下一页</a><a href="#"class=" font">末页</a></div>
        </div><!--end of myAppMain-->
        
    </div><!--end of myApplication-->
</div>
<div class="footer fontSize14 width1160 marginAuto">
    <p>感谢大家使用线上换书，希望书香溢满人间。</p>
    <!--<hr width="400px"/>-->
    <p>读书是在别人思想的帮助下，建立起自己的思想——鲁巴金</p>
</div>

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
    <button value="添加" class="marginRight10 regist" type="submit">添加</button>
    <button value="关闭" class="close" type="button">关闭</button></div>
</div><!--end of registerDiv-->
</form>


</body>
</html>

