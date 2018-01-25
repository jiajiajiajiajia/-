<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %> 
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"><html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>首页</title>

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
<script src="${pageContext.request.contextPath }/js/jquery1.8.3.min.js"></script>
<script src="${pageContext.request.contextPath }/js/index.js"></script>
</head>

<body style="background:#f0f0f0;">
<%@ include file="header.jsp"  %>
<div style='padding-top:50px;background:url(images/loginBg.jpg) no-repeat;' class="fix marginBot50">

<div style="display: flex;">
	<div id="xixi1" class="daohanganniu" style="margin:0px 50px 50px 200px;">☪文学漫步☪</div>
	<div id="xixi2" class="daohanganniu" style="margin:0px 50px 50px 50px;">★红袖添香★</div>
	<div id="xixi3" class="daohanganniu" style="margin:0px 50px 50px 50px;">☀自然科学☀</div>
	<div id="xixi4" class="daohanganniu" style="margin:0px 50px 50px 50px;">♥名人名作♥</div>
</div>

    <div class='indexMain width1160 marginAuto'>
        <div class='indexMaina flBox marginBot30 11111'style='background: url(images/222.jpg) no-repeat ;'>
            <div class='indexMainaa marginAuto'>
                <div class='indexMainTop marginBot10'>
                    <div class='blockLogo fontSize24 color000 flBox'>☪文学漫步☪</div><!--end of blockLogo-->
                    <div class='blockSelect frBox fix'></div><!--end of blockSelect-->
                </div><!--indexMainTop-->
                
                <form action="${pageContext.request.contextPath }/findindex.do"   method="post">
                	<input type="hidden" name="pageIndex" value="1" id="pageIndex"/>
					<input type="hidden" name="pageSize" value="6"/>
				</form>
                <div class="mainCont">
                	<c:if test="${user == null }">
                	<div class="doneCont">
                        <div class="marginBot20">
                            <c:forEach items="${pb.docList}" var="listOff4" >
                            	<div style='height: 35px'class="applayListli">
                            		<a   href="${pageContext.request.contextPath }/toLogin.do" class="applayListlia fontSize16 color000 fix">
	                            		<span class="listCont flBox">${listOff4.chiTitle }    ${listOff4.author}</span>
	                            		<span class="frBox fontSize14">${listOff4.rectime }</span>
                            		</a>
                            	</div>
                        	</c:forEach>    
                        </div>
                        <div class="turnPage">
                        	<span class="marginRight10 font">页数：${pb.pageIndex } /${pb.pageCount }</span>
            				<c:if test="${pb.pageIndex>1 }">
								<a href="#" onclick="jump(${pb.pageIndex-1})">←</a>
							</c:if>
							<c:if test="${pb.pageIndex < pb.pageCount}">
								<a href="#" onclick="jump(${pb.pageIndex+1})">→</a>
							</c:if>	
            			</div>
                     </div><!--end of doneCont-->
                     </c:if>
                     
                     <c:if test="${user != null }">
                	 <div class="doneCont">
                        <div class="marginBot20">
                            <c:forEach items="${pb.docList}" var="listOff4" >
                            	<div style='height: 35px'class="applayListli">
                            		<a   href="${pageContext.request.contextPath }/toApply.do?documenid=${listOff4.documenid }&channelid=4" class="applayListlia fontSize16 color000 fix">
	                            		<span class="listCont flBox">${listOff4.chiTitle }    ${listOff4.author}</span>
	                            		<span class="frBox fontSize14">${listOff4.rectime }</span>
                            		</a>
                            	</div>
                        	</c:forEach>    
                        </div>
                        <div class="turnPage">
                        	<span class="marginRight10 font">页数：${pb.pageIndex } /${pb.pageCount }</span>
            				<c:if test="${pb.pageIndex>1 }">
								<a href="#" onclick="jump(${pb.pageIndex-1})">←</a>
							</c:if>
							<c:if test="${pb.pageIndex < pb.pageCount}">
								<a href="#" onclick="jump(${pb.pageIndex+1})">→</a>
							</c:if>	
            			</div>
                     </div><!--end of doneCont-->
                     </c:if>
                     
                     
                </div><!--end of mainCont-->
                
                
            </div><!--end of indexMainaa-->
        </div>
        <div class='indexMaina frBox marginBot30 22222'style='display: none;background: url(images/333.jpg) no-repeat ;'>
            <div class='indexMainaa marginAuto'>
                <div class='indexMainTop marginBot10'>
                    <div class='blockLogo fontSize24 color000 flBox' style="cursor:pointer;">★红袖添香★</div><!--end of blockLogo-->
                    <div class='blockSelect frBox fix'></div><!--end of blockSelect-->
                </div><!--indexMainTop-->
                <div class="mainCont">
                	<c:if test="${user == null }">
                	<div class="doneCont">
                        <div class="marginBot20">
                            <c:forEach items="${listOff2 }" var="listOff2" begin="0" end="6">
                            	<div style='height: 35px'class="applayListli">
                            		<a   href="${pageContext.request.contextPath }/toLogin.do" class="applayListlia fontSize16 color000 fix">
	                            		<span class="listCont flBox">${listOff2.chiTitle }    ${listOff2.author}</span>
	                            		<span class="frBox fontSize14">${listOff2.rectime }</span>
                            		</a>
                            	</div>
                        	</c:forEach>    
                        </div>
                        <div class="turnPage">
            				<a href="#">←</a><a href="#">→</a>
            			</div>
                     </div><!--end of doneCont-->
                     </c:if>
                     
                     <c:if test="${user != null }">
                	 <div class="doneCont">
                        <div class="marginBot20">
                            <c:forEach items="${listOff2 }" var="listOff2" begin="0" end="6">
                            	<div style='height: 35px'class="applayListli">
                            		<a   href="${pageContext.request.contextPath }/toApply.do?documenid=${listOff2.documenid }&channelid=2" class="applayListlia fontSize16 color000 fix">
	                            		<span class="listCont flBox">${listOff2.chiTitle }    ${listOff2.author}</span>
	                            		<span class="frBox fontSize14">${listOff2.rectime }</span>
                            		</a>
                            	</div>
                        	</c:forEach>    
                        </div>
                        <div class="turnPage">
            				<a href="#">←</a><a href="#">→</a>
            			</div>
                     </div><!--end of doneCont-->
                     </c:if>
                     
                </div><!--end of mainCont-->
            </div><!--end of indexMainaa-->
        </div>
        <div class='indexMaina flBox  marginBot30 33333'style='display: none;background: url(images/111.jpg) no-repeat ;'>
            <div class='indexMainaa marginAuto'>
                <div class='indexMainTop marginBot10'>
                    <div class='blockLogo fontSize24 color000 flBox'>☀自然科学☀</div><!--end of blockLogo-->
                    <div class='blockSelect frBox fix'></div><!--end of blockSelect-->
                </div><!--indexMainTop-->
                <div class="mainCont">
                	<c:if test="${user == null }">
                	<div class="doneCont">
                        <div class="marginBot20">
                            <c:forEach items="${listOff3 }" var="listOff3" begin="0" end="6">
                            	<div style='height: 35px'class="applayListli">
                            		<a   href="${pageContext.request.contextPath }/toLogin.do" class="applayListlia fontSize16 color000 fix">
	                            		<span class="listCont flBox">${listOff3.chiTitle }    ${listOff3.author}</span>
	                            		<span class="frBox fontSize14">${listOff3.rectime }</span>
                            		</a>
                            	</div>
                        	</c:forEach>    
                        </div>
                        <div class="turnPage">
            				<a href="#">←</a><a href="#">→</a>
            				
            			</div>
                     </div><!--end of doneCont-->
                     </c:if>
                     
                     <c:if test="${user != null }">
                	 <div class="doneCont">
                        <div class="marginBot20">
                            <c:forEach items="${listOff3 }" var="listOff3" begin="0" end="6">
                            	<div style='height: 35px'class="applayListli">
                            		<a   href="${pageContext.request.contextPath }/toApply.do?documenid=${listOff3.documenid }&channelid=3" class="applayListlia fontSize16 color000 fix">
	                            		<span class="listCont flBox">${listOff3.chiTitle }    ${listOff3.author}</span>
	                            		<span class="frBox fontSize14">${listOff3.rectime }</span>
                            		</a>
                            	</div>
                        	</c:forEach>    
                        </div>
                        <div class="turnPage">
            				<a href="#">←</a><a href="#">→</a>
            			</div>
                     </div><!--end of doneCont-->
                     </c:if>
                     
                </div><!--end of mainCont-->
            </div><!--end of indexMainaa-->
        </div>
        <div class='indexMaina frBox 44444'style='background: url(images/444.jpg) no-repeat ;display: none;'>
            <div class='indexMainaa marginAuto'>
                <div class='indexMainTop marginBot10'>
                    <div class='blockLogo fontSize24 color000 flBox'>♥名人名作♥</div><!--end of blockLogo-->
                    <div class='blockSelect frBox fix'></div><!--end of blockSelect-->
                </div><!--indexMainTop-->
                <div class="mainCont">
                	<c:if test="${user == null }">
                	<div class="doneCont">
                        <div class="marginBot20">
                            <c:forEach items="${listOff4 }" var="listOff4" begin="0" end="6">
                            	<div style='height: 35px'class="applayListli">
                            		<a   href="${pageContext.request.contextPath }/toLogin.do" class="applayListlia fontSize16 color000 fix">
	                            		<span class="listCont flBox">${listOff4.chiTitle }    ${listOff4.author}</span>
	                            		<span class="frBox fontSize14">${listOff4.rectime }</span>
                            		</a>
                            	</div>
                        	</c:forEach>    
                        </div>
                        <div class="turnPage">
            				<a href="#">←</a><a href="#">→</a>
            			</div>
                     </div><!--end of doneCont-->
                     </c:if>
                     
                     <c:if test="${user != null }">
                	 <div class="doneCont">
                        <div class="marginBot20">
                            <c:forEach items="${listOff4 }" var="listOff4" begin="0" end="6">
                            	<div style='height: 35px'class="applayListli">
                            		<a   href="${pageContext.request.contextPath }/toApply.do?documenid=${listOff4.documenid }&channelid=4" class="applayListlia fontSize16 color000 fix">
	                            		<span class="listCont flBox">${listOff4.chiTitle }    ${listOff4.author}</span>
	                            		<span class="frBox fontSize14">${listOff4.rectime }</span>
                            		</a>
                            	</div>
                        	</c:forEach>    
                        </div>
                        <div class="turnPage">
            				<a href="#">←</a><a href="#">→</a>
            			</div>
                     </div><!--end of doneCont-->
                     </c:if>
                     
                </div><!--end of mainCont-->
            </div><!--end of indexMainaa-->
        </div>
    </div><!--end of indexMain-->
</div>
<div class="footer fontSize14 width1160 marginAuto">
    <p>感谢大家使用共享书籍，希望书香溢满人间。</p>
    <!--<hr width="400px"/>-->
    <p>读书是在别人思想的帮助下，建立起自己的思想——鲁巴金</p>
</div>
</body>
</html>
