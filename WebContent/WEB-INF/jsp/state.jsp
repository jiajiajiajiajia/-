<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>后台管理页面</title>
<script type="text/javascript">

function addStuPage(){
	location.href="${pageContext.request.contextPath}/addStuPage.do";
}
//点击上一页下一页时直接提交表单，这样不仅可以将pageIndex pageSize 传递到后台 还可以将查询条件传递到后台
function jump(pageIndex){
	document.getElementById("pageIndex").value=pageIndex;
	document.forms[0].submit();
}
		
function jump2(){
	document.getElementById("pageIndex").value=document.getElementById("txt").value;
	document.forms[0].submit();
}
		
</script>
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
    		<div class="daohanglan " ><a href="${pageContext.request.contextPath }/findywc.do?userid=${user.userid}">☪已审核</a></div>
    		<div class="daohanglan " ><a href="${pageContext.request.contextPath }/findyh.do?userid=${user.userid}">☪用户管理</a></div>
    	</div>
    	
    	<div class="myAppMain marginAuto fix  font">
        	<div class="div_search posRelative marginBot20">
        	
        	<div style="color:#777707; padding-top: 20px; font-size: 20px">待审核：</div>
            	<!--<div class="searchMain posAbsolute fix">
            	
            	 <form action="${pageContext.request.contextPath }/findsss.do" method="post">
                	<div class="searchMainL flBox fix">
                    	<div class="searchMainLl flBox fix">
                        	<select class="flBox">
                            	<option>书名</option>
                            </select>
                            		<input type="hidden" name="pageIndex" value="1" id="pageIndex "/>
									<input type="hidden" name="pageSize" value="8"/>
                            <input type="text" class="flBox" name="chiTitle" value="${documen.chiTitle }"/>
                        </div>
                        <div class="searchMainLr flBox colorfff  font"><button class="font" type="submit">搜索</button></div>
                    </div>
                    </form> 
                </div>-->
            </div>
            
          
            
            <table cellpadding="0" cellspacing="0" class="fileTable marginAuto marginBot30" width="100%">
            	<thead>
                	<tr>
                    	<td style='width:26%;' class="borderRight font">中文标题</td>
                        <td  class="borderRight  font">推荐人姓名</td>
                        <td class="borderRight font">推荐时间</td>
                        <td class="borderRight font">原文附件</td>
                        <td style='width:10%;' class="borderRight font">操作</td>
                    </tr>
                    <c:forEach items="${list }" var="list">
                    <tr class="backWhite">
                    	<td style='width:26%;' class="borderRight font">${list.chiTitle }</td>
                        <td  class="borderRight font">${list.recname }</td>
                        <td class="borderRight font">${list.rectime }</td>
                        <td class="borderRight font">${list.enclosure }</td>
                        <td style='width:16%;' class="borderRight font">
                        	<a href="${pageContext.request.contextPath }/updatesss.do?documenid=${list.documenid}" class="modify"> 通过 </a>
                        	<a href="${pageContext.request.contextPath }/updatesss2.do?documenid=${list.documenid}" class="modify"> 否决 </a>
                        </td>
                    </tr>
                    </c:forEach>
                </thead>
               
            </table>
            <div class="turnPage1 marginBot50  font">
            	<div class="turnPage1 marginBot50  font"><span class="marginRight10 font">页数：1/1</span><a href="#"class=" font">首页</a><a href="#"class=" font">上一页</a><a href="#"class=" font">下一页</a><a href="#"class=" font">末页</a></div>
            <!--  
                第${pb.pageIndex }页/共${pb.pageCount }页 
				<!--  如果是第一页的话就不需要显示上一页了，如果当前页是最后一页就不需要显示下一页
				<c:if test="${pb.pageIndex>1 }">
					<input type="button" value="上一页" onclick="jump(${pb.pageIndex-1})"/>	
				</c:if>
				<c:if test="${pb.pageIndex < pb.pageCount}">
					<input type="button" value="下一页" onclick="jump(${pb.pageIndex+1})"/>	
				</c:if>	
				 <input type="text" id="txt" size="3"/><input type="button" value="GO" onclick="jump2()" />
			</div>-->
       </div><!--end of myAppMain-->
        
    </div><!--end of myApplication-->
</div>
<div class="footer fontSize14 width1160 marginAuto">
    <p>感谢大家使用线上换书，希望书香溢满人间。</p>
    <!--<hr width="400px"/>-->
    <p>读书是在别人思想的帮助下，建立起自己的思想——鲁巴金</p>
</div>
</div>
</body>
</html>

