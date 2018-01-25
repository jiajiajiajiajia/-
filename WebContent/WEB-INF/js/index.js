// JavaScript Document
$(document).ready(function(e) {

	
$(function(){
    $('#xixi1').click(function(){
        $('.11111').stop().show();    //显示
        $('.22222').stop().hide(); 
        $('.33333').stop().hide(); 
        $('.44444').stop().hide(); 
    });
});

$(function(){
    $('#xixi2').click(function(){
        $('.22222').stop().show();    //显示
        $('.11111').stop().hide(); 
        $('.33333').stop().hide(); 
        $('.44444').stop().hide(); 
    });
});
$(function(){
    $('#xixi3').click(function(){
        $('.33333').stop().show();    //显示
        $('.11111').stop().hide(); 
        $('.22222').stop().hide(); 
        $('.44444').stop().hide(); 
    });
});
$(function(){
    $('#xixi4').click(function(){
        $('.44444').stop().show();    //显示
        $('.11111').stop().hide(); 
        $('.22222').stop().hide(); 
        $('.33333').stop().hide();
    });
});

	
    //前台首页切换效果
	(function(){
			$('.blockSelect').each(function() {
				$(this).children('div').each(function(index){
						$(this).mouseenter(function(){
							$(this).addClass('hover').siblings().removeClass('hover');
							$(this).parents('.indexMainTop').siblings('.mainCont').children().addClass('displayNone').eq(index).removeClass('displayNone');
					});
					});
            });
		})();
	//登录页注册弹窗效果
	function popup(obj,zzc,tc,pos,time1,time2){
		$(obj).click(function(){
			$(zzc).removeClass('displayNone').animate({opacity:'0.4'},time1);
			setTimeout(function(){$(tc).removeClass('displayNone').animate({top:pos},time2);},100);
		});
		}//弹窗JS
	(function (){
		popup('#registerBut','#zzcJS','.registerDiv','50%',200,300);
		$('.close').click(function(){
			$('.registerDiv').animate({top:'-50%'},300,function(){
				$('#zzcJS').animate({opacity:'0'},100,function(){$(this).addClass('displayNone');});
				$(this).addClass('displayNone');
				});
		});})();
	(function(){
			popup('#wytjButJS','#zzcJS','#wytjJS','2%',200,400);//我要推荐弹窗
	  		popup('#sqfyJS','#zzcJS','#sqfyTcJS','50%',200,400);//申请翻译弹窗
	  $('#cancel,#wytjClose').click(function(){
		  	$('.wytj').animate({top:'-100%'},300,function(){
				$('#zzcJS').animate({opacity:'0'},100,function(){$(this).addClass('displayNone');});
				$(this).addClass('displayNone');
				});
		  });//我要推荐弹窗消失
		  $('#cancel,#wytjClose').click(function(){
		  	$('#sqfyTcJS').animate({top:'-50%'},300,function(){
				$('#zzcJS').animate({opacity:'0'},100,function(){$(this).addClass('displayNone');});
				$(this).addClass('displayNone');
				});
		  });//申请翻译弹窗消失
		})();
	  
	  
});