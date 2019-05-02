<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>登录页面</title>
<link rel="stylesheet" type="text/css" href="../css/login_css.css" />
<script src="../js/jquery-1.9.1.min.js"></script>
</head>
<body>

<div class="music-lgin">

	<div class="music-lgin-all">
		<!--左手-->
		<div class="music-lgin-left ovhd">
			<div class="music-hand">
				<div class="music-lgin-hara"></div>
				<div class="music-lgin-hars"></div>
			</div>
		</div>

		<!--脑袋-->
		<div class="music-lgin-dh">
			<div class="music-lgin-alls">
				<div class="music-lgin-eyeleft">
					<div class="music-left-eyeball yeball-l"></div>
				</div>
				<div class="music-lgin-eyeright">
					<div class="music-right-eyeball yeball-r"></div>
				</div>
				<div class="music-lgin-cl"></div>
			</div>
			<!--鼻子-->
			<div class="music-nose"></div>
			<!--嘴-->
			<div class="music-mouth music-mouth-ds"></div>
			<!--肩-->
			<div class="music-shoulder-l">
				<div class="music-shoulder"></div>
			</div>
			<div class="music-shoulder-r">
				<div class="music-shoulder"></div>
			</div>
			<!--消息框-->
			<div class="music-news">来了,老弟！</div>
		</div>

		<!--右手-->
		<div class="music-lgin-right ovhd">
			<div class="music-hand">
				<div class="music-lgin-hara"></div>
				<div class="music-lgin-hars"></div>
			</div>
		</div>

	</div>

	<!--1-->
	<form action="handle_login.jsp" id="login_form" name="login_form" method="get" onsubmit="return validate_channel_info(this);">
		<div class="music-lgin-text">
			<input class="inputname inputs" type="text" name="username"  id="username" placeholder="用户名" />
		</div>
		<!--2-->
		<div class="music-lgin-text">
			<input type="password" class="mima inputs" name="password" id="password" placeholder="密码" />
		</div>
		<!--3-->
		<div class="music-lgin-text">
			<input class="music-qd inputs" type="submit" value="确定" onclick="validation()"/>
		</div>
	</form>
</div>
<script type="text/javascript">
function validate_channel_info(login_form)  
{  
    if(login_form.username.value=="")  
    {  
        alert("请输入正确的用户名");  
        return false;  
    }  
    else if(login_form.password.value=="")  
    {  
        alert("请输入正确的密码");  
        return false;  
    }  
    return true;  
}   
</script>  
<script type="text/javascript">
	//眼睛 密码部分
	$(".mima").focus(function() {
		$(".music-lgin-left").addClass("left-dh").removeClass("rmleft-dh");
		$(".music-lgin-right").addClass("right-dh").removeClass("right-rmdh");
		$(".music-hand").addClass("no");
	}).blur(function() {
		$(".music-lgin-left").removeClass("left-dh").addClass("rmleft-dh");
		$(".music-lgin-right").removeClass("right-dh").addClass("right-rmdh");
		$(".music-hand").removeClass("no");

	})
	//点击小人出来
	$(".inputname").focus(function() {
		$(".music-lgin-all").addClass("block");
		$(".music-news").addClass("no")
	})
	//点击小人消失

	//          $(".music-qd").focus(function(){
	//          	$(".music-lgin-all").removeClass("block")
	//          })


	//注册正则 简单判断
	 
	$('.music-qd').click(function(){
		if(($('.inputname').val()=='')){
			$(".music-news").html("请输入名称")      
		}else if(($('.mima').val()=='')){
			$(".music-news").html("请输入密码")
			$(".music-news").addClass("block")
		}else{
			alert('提交ajax')
		}      
	})


</script>

</body>
</html>