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

	//联系我们-姓名
	$("#name").focus(function(){
		var searchValue=$('#name').val()
		if(searchValue=='NAME/姓名'){
			$('#name').val('')
			$('#name').css({'color':'#666666'})
		}
	})	
	$('#name').blur(function(){
		var searchValue=$('#name').val()	
		if(searchValue==''){
			$('#name').val('NAME/姓名')
			$('#name').css({'color':'#666666'})	
		}
	})
	//联系我们-微信
	$("#qq").focus(function(){
		var sear=$('#qq').val()
		if(sear=='QQ/微信'){
			$('#qq').val('')
			$('#qq').css({'color':'#666666'})
		}
	})	
	$('#qq').blur(function(){
		var sear=$('#qq').val()	
		if(sear==''){
			$('#qq').val('QQ/微信')
			$('#qq').css({'color':'#666666'})	
		}
	})
	//联系我们-电话
	$("#tele").focus(function(){
		var sechValue=$('#tele').val()
		if(sechValue=='TELEPHONE/电话'){
			$('#tele').val('')
			$('#tele').css({'color':'#666666'})
		}
	})	
	$('#tele').blur(function(){
		var sechValue=$('#tele').val()	
		if(sechValue==''){
			$('#tele').val('TELEPHONE/电话')
			$('#tele').css({'color':'#666666'})	
		}
	})
	//联系我们-地址
	$("#addr").focus(function(){
		var searchv=$('#addr').val()
		if(searchv=='ADDRESS/地址'){
			$('#addr').val('')
			$('#addr').css({'color':'#666666'})
		}
	})	
	$('#addr').blur(function(){
		var searchv=$('#addr').val()	
		if(searchv==''){
			$('#addr').val('ADDRESS/地址')
			$('#addr').css({'color':'#666666'})	
		}
	})
	//联系我们-邮箱
	$("#email").focus(function(){
		var searValue=$('#email').val()
		if(searValue=='E-MAIL/邮箱'){
			$('#email').val('')
			$('#email').css({'color':'#666666'})
		}
	})	
	$('#email').blur(function(){
		var searValue=$('#email').val()	
		if(searValue==''){
			$('#email').val('E-MAIL/邮箱')
			$('#email').css({'color':'#666666'})	
		}
	})
	//联系我们-留言
	$("#texta").focus(function(){
		var searchVal=$('#texta').val()
		if(searchVal=='MESSAGE/留言'){
			$('#texta').val('')
			$('#texta').css({'color':'#666666'})
		}
	})	
	$('#texta').blur(function(){
		var searchVal=$('#texta').val()	
		if(searchVal==''){
			$('#texta').val('MESSAGE/留言')
			$('#texta').css({'color':'#666666'})	
		}
	})
	//联系我们-验证码
	$("#code").focus(function(){
		var searchVal=$('#code').val()
		if(searchVal=='验证码'){
			$('#code').val('')
			$('#code').css({'color':'#666666'})
		}
	})	
	$('#code').blur(function(){
		var searchVal=$('#code').val()	
		if(searchVal==''){
			$('#code').val('验证码')
			$('#code').css({'color':'#666666'})	
		}
	})
	//首页新闻中心左右无缝滑动
	var tt
	var len=$('#slide>ol>li').length
	var ulW=len*450
	$('#slide>ol').css({'width':ulW+'px'})
	function bb(){
		tt=setInterval(function(){
			$('#slide>ol').animate({marginLeft:'-450px'},function(){
				$(this).css({marginLeft:'0'}).find('li:first').appendTo('#slide>ol')	
			})	
		},2000)
	}
	bb()
	
	$('#slide').hover(function(){
		clearInterval(tt)
	},function(){
		bb()
	})
	$('#next').click(function(){
		$('#slide>ol').animate({marginLeft:'-450px'},function(){
			$(this).css({marginLeft:'0'}).find('li:first').appendTo('#slide>ol')	
		})		
	})
	$('#prev').click(function(){
		$('#slide>ol').css({'margin-left':'-450px'}).find('li:last').prependTo('#slide>ol')
		$('#slide>ol').animate({marginLeft:'0'})
	})
	
})