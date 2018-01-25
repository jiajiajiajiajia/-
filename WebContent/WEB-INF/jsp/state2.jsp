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
<div style='background:url(images/loginBg.jpg)  left;' class="marginBot50">
<br>
	<div class="huishouye"style="margin-left: 150px;"><a href="${pageContext.request.contextPath }/findindex.do">< 返回首页</a></div>
	<br>
    <div class="myApplication marginAuto hengpai huibeijing">
    	<div class="boxleft">
    		<div class="daohanglan shangbianju"><a href="${pageContext.request.contextPath }/findsss.do?userid=${user.userid}">☪待审核</a></div>
    		<div class="daohanglan " ><a href="${pageContext.request.contextPath }/findywc.do">☪已审核</a></div>
    		<div class="daohanglan " ><a href="${pageContext.request.contextPath }/findyh.do?userid=${user.userid}">☪用户管理</a></div>
    	</div>
    	
<!--通过审核-->
    	<div class="myAppMain marginAuto fix font">
    		<div class="div_search posRelative marginBot20">
            	<div class="searchMain posAbsolute fix">
                	<div class="searchMainL flBox fix">
                    	<div class="searchMainLl flBox fix">
                        	<select class="flBox">
                            	<option>书名</option>
                            </select>
                            <input type="text" class="flBox" />
                        </div><!--end of searchMainLl-->
                        <div class="searchMainLr flBox colorfff  font"><a class="font">搜索</a></div><!--end of searchMainLr-->
                    </div><!--end of searchMainL-->
                    
                </div><!--end of searchMain-->
            </div><!--end of div_search-->
            
            
            
            <table cellpadding="0" cellspacing="0" class="fileTable marginAuto marginBot30" width="100%"  >
            	<thead >
                	<tr><td style='width:26%;' class='borderRight font'>标题</td>
                			<td  class='borderRight font'>创建时间</td>
                			<td class='borderRight font'>推荐人</td>
                			<td class='borderRight font'>原文附件</td>
                			<td style='width:10%;' class='borderRight font'>操作</td>
                	</tr>
                	<c:forEach items="${list }" var="list">
                	<tr class='backWhite'>
                			<td style='width:26%;' class='borderRight font'>${list.chiTitle }</td>
                			<td  class='borderRight font'>${list.rectime }</td>
                			<td  class='borderRight font'>${list.recname }</td>
                			<td  class='borderRight font'>${list.enclosure }</td>
                			<td style='width:10%;' class='borderRight font'><a href=" ${pageContext.request.contextPath }/deleteywc.do?documenid=${list.documenid}" class=' modify' >删除</a></td>
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

</body>
</html>

