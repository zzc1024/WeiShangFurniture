// JavaScript Document
$(function(){
	$('#banner>ul>li:gt(0)').fadeOut()
	var n=0
	var len=$('#banner>ul>li').length
	
	function ppt(){
		t=setInterval(function(){
			n++
			//alert(1)
			if(n>=len){
				n=0
			}
			$('#banner>ul>li').eq(n).fadeIn().siblings().fadeOut()
			$('#num>a').eq(n).addClass('on').siblings().removeClass('on')
		},1500)
	}
		
		ppt()
		$('#banner').hover(function(){
		clearInterval(t)
	},function(){
			ppt()
	})
	
	$('#num>a').each(function(index){
			$(this).click(function(){
				$('#banner>ul>li').eq(index).fadeIn().siblings().fadeOut()
			$('#num>a').eq(index).addClass('on').siblings().removeClass('on')
				})
		})
	
})