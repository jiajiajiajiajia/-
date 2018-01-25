<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<div class='indexHeader'>
	<div class='indexHead width1160 marginAuto posRelative'>
    	<div class='indexLogo posAbsolute'>
        	<!--<img src='' width="100px;" height="70px;" class='marginRight10' style="vertical-align:middle;" />-->
            <span class="fontSize30 colorfff">☪&ensp;让书籍&ensp;&ensp;造就你的灵魂</span>
        </div><!--end of indexLogo-->
        <div class='nav posAbsolute fontSize16'>
        		<c:if test="${user == null }">
					<div  style="bottom:43px;right:40px;text-align:right;"><a href="${pageContext.request.contextPath }/toLogin.do">登录</a></div>
				</c:if>
				<c:if test="${user != null }">
					<span class="colorfff marginRight20">欢迎${user.username }</span>
					<a href="${pageContext.request.contextPath }/outLogin.do">[退出]</a>
					<div class='borderRight1'></div>
					<a href="${pageContext.request.contextPath }/findMyApply.do?userid=${user.userid}">历史下载</a>
					<div  class='borderRight1'></div>
					<a href="${pageContext.request.contextPath }/findMyRec.do?userid=${user.userid}">历史推荐</a>
					<c:if test="${user.isadmin != 0 }">
						<div class='borderRight1'></div>
           				<a href="${pageContext.request.contextPath }/findsss.do?userid=${user.userid}">后台管理</a>
					</c:if>
				</c:if>
        </div><!--end of nav-->
    </div><!--end of indexHead-->
</div><!--end of indexHeader-->

</body>
</html>