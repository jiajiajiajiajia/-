<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>下载历史</title>
		<link rel="stylesheet" type="text/css" href="css/ApplyRec.css"/>
		<link href="css/public.css" rel="stylesheet" type="text/css" />
		<link href="css/hs_translate.css" rel="stylesheet" type="text/css" />
		<script src="js/jquery1.8.3.min.js"></script>
		<script src="js/index.js"></script>
</head>
	<body style="background:#f0f0f0;">
		<!--
        	作者：任佳
        	时间：2017-12-11
        	描述：无
        -->
        <!--首部信息-->
<%@ include file="header.jsp"  %>
		
		<div class="bigbox"> 
			<div class="huishouye"><a href="${pageContext.request.contextPath }/findindex.do">< 返回首页</a></div>
			<div class="senbox">
			<form name="ApplyList" action="${pageContext.request.contextPath }/findMyRec.do"method="post">
				
				<br />
				
                <table border="1" class="tableis" >
					<tr class="tris">
						<td>书名</td>
						<td>作者</td>
						<td>上传日期</td>
						<td>审核状态</td>
						<td>查看更多</td>
					</tr>
					<c:forEach items="${list }" var="list">
						<tr align="center">
							<td>${ list.chiTitle}</td>
							<td>${list.author}</td>
							<td>${list.rectime}</td>
							<td class="borderRight font">
                       			<c:if test="${list.recstate==0 }">通过</c:if>
                        		<c:if test="${list.recstate==2 }">未操作</c:if>
                        		<c:if test="${list.recstate==1 }">未通过</c:if>
                        	</td>
							<td>
								<c:if test="${list.recstate==0 }"><a href="${pageContext.request.contextPath }/toApply.do?documenid=${list.documenid }">查看详情</a></c:if>
								<c:if test="${list.recstate!=0 }"></c:if>
							</td>
						</tr>
					</c:forEach>
				</table>	
				<br />
				</form>
            </div>
		
		
		</div>
		
		<div class="footer fontSize14 width1160 marginAuto">
			<br />
    		<p>感谢大家使用线上换书，希望书香溢满人间。</p>
    		<p>读书是在别人思想的帮助下，建立起自己的思想——鲁巴金</p>
		</div>
		
		
		
	</body>
</html>
