<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">


<html >
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>apply</title>
<link href="${pageContext.request.contextPath }/css/public.css" rel="stylesheet" type="text/css" />
<link href="${pageContext.request.contextPath }/css/hs_translate.css" rel="stylesheet" type="text/css" />
<script src="${pageContext.request.contextPath }/js/jquery1.8.3.min.js"></script>
<script src="${pageContext.request.contextPath }/laydate/laydate.js"></script>
<script src="${pageContext.request.contextPath }/js/index.js"></script>
</head>

<body >
<%@ include file="header.jsp"  %>
<div class="applayMain fix">
	<div class="applayPosDiv">
        <div class="applayPos marginAuto fontSize18"><a  href="${pageContext.request.contextPath }/findindex.do"  style="color:#5574c2;">首页</a>&nbsp;>&nbsp;<a href="#">${Documen.chiTitle}</a></div>
    </div><!--end of applayPosDiv-->
    <div class=" flBox">
    	
    
    	
        <div style="background:url(images/1.jpg);padding-top:30px;height:550px;">
            <div class="applayCont posRelative marginAuto">
                <ul class="fontSize18">
                    <li><span class="span1 flBox">标&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;题 : </span><span class="flBox span2">${Documen.chiTitle}</span></li>
                    <li><span class="span1 flBox">上线时间：</span><span class="flBox marginRight25">${Documen.rectime}</span>
                    <li><span class="span1 flBox">作&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;者：</span><span class="flBox span2">${Documen.author}</span></li>
                    <li><span class="span1 flBox">作者简介：</span><span class="flBox span2">${Documen.authors}</span></li>
                    <li><span class="span1 flBox">内容介绍：</span><span class="flBox span2">${Documen.content}</span></ul>
                <div class="applayBut posAbsolute">
                	<a ><button value="我想看" class="sqfy" id="sqfyJS">下载</button></a>
                	<button class="sqfy" id="wytjButJS">上传</button>
                </div><!--end of applayBut-->
            </div><!--end of appalyCont-->
    	</div>
        
    </div><!--end of applayMainR-->
    
    
    
    <div class="applayFooter fontSize14 color69">
    	<br />
		<p>感谢大家使用线上换书，希望书香溢满人间。</p>
		
		<p>读书是在别人思想的帮助下，建立起自己的思想——鲁巴金</p>
    </div>
    
    
</div><!--end of applayMain-->

	
<form action="${pageContext.request.contextPath }/addDocumen.do" method="post">
<div class="zzc displayNone" id="zzcJS" style="opacity: 0;"></div>
<div  class="wytj posAbsolute displayNone posRelative" id="wytjJS">
	<div class="wytjCont marginAuto">
    	<div class="wytjTit marginBot10">上传</div><!--end of wytjTit-->
        <div class="wytjConta marginAuto">
        	<p style='color:#a40000;' class="fontSize14 marginBot10">请详细填写资料信息</p>
            <table class="marginBot20">
            	<tr><td class="td1">标&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;题：</td><td colspan="3"><input type="text" name="chiTitle" /></td></tr>
                <tr><td class="td1">栏&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;目：</td><td colspan="3"><select name="channelid"><option>1</option><option>2</option><option>3</option><option>4</option></select>1.文学类   2.小说类   3.百科类   4.名人名作</td></tr>
                <tr><td class="td1">作&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;者：</td><td colspan="3"><input type="text" name="author"/></td></tr>
                <tr><td class="td1">原文附件：</td><td colspan="3"><input type="file" name="enclosure"/></td></tr>
                <tr><td class="td1">作者简介：</td><td colspan="3"><input type="text"  name="authors"/></td></tr>
                <tr><td class="td1">内容简介：</td><td colspan="3"><textarea  name="content"></textarea></td></tr>
                <tr style="display: none;"><td><input name="recid" value="${user.userid}"><input name="recname" value="${user.username}"></td></tr>
            </table>
            
            <div class="butArr3 colorfff"><button value="提交" style="background:#FF8A65;" class="marginRight10 fontSize20">提交</button><button value="取消" style='background:#bfbfbf;' class="fontSize20" id="cancel">取消</button></div><!--end of butArr3-->
        </div>
    </div><!--end of wytjCont-->
    <span class="fontSize24 posAbsolute close" id="wytjClose"><img src="images/close_03.png" /></span>
</div><!--end of wytj-->
</form>

<form action="${pageContext.request.contextPath }/addApply.do" method="post">
<div class='sqfyTc posAbsolute displayNone' id='sqfyTcJS'>
	<div style='width:92%;' class="marginAuto">
    	<div class="wytjTit sqfyTit marginBot20">I want</div>
        <table class="marginBot20">
        		<tr><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td><td class="td1">书&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;号：</td><td><input  width="100px" type="text"  readonly="readonly" name="documenid" value="${Documen.documenid}" /></td><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td></tr>
            	<tr><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td><td class="td1">书&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;名：</td><td ><input width="100px" type="text"  readonly="readonly" value="${Documen.chiTitle}" /></td></tr>
                <tr><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td><td class="td1">姓&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;名：</td><td><input width="100px" type="text"  readonly="readonly" name="applyname" value="${user.username}" />
            	<input width="100px" class="displayNone"     readonly="readonly" value="${user.userid}" name="userid"/></td></tr>
               
            </table>
             <div class="butArr3 colorfff"><button type="submit" style="background:#FF8A65;" class="marginRight10 fontSize20">确定下载</button><button value="取消" style='background:#bfbfbf;' class="fontSize20" id="cancel">取消</button></div><!--end of butArr3-->
    </div>
     <span class="fontSize24 posAbsolute close" id="wytjClose"><img src="images/close_03.png" /></span>
</div><!--end of sqfyTc-->
</form>
</body>
</html>
