<?php

if($_POST){
	$data = $_POST;


	if(empty($data['contac_name'])){
		$info = [
			'code' => 3,
			'message' => '姓名不能为空',
		];
		exit(json_encode($info));
	}elseif(empty($data['contac_telephone'])){
		$info = [
			'code' => 3,
			'message' => '电话不能为空',
		];
		exit(json_encode($info));
	}elseif(empty($data['contac_message'])){
		$info = [
			'code' => 3,
			'message' => '留言不能为空',
		];
		exit(json_encode($info));
	}

	


		if(!preg_match("/[\x{4e00}-\x{9fa5}]+/u",$data['contac_name'])){
			$info = [
				'code' => 2,
				'message' => '姓名需要填写中文',
			];
			exit(json_encode($info));
		}


	//判断手机号格式是否正确
		if(!preg_match("/^((13[0-9])|(14[5|7])|(15([0-3]|[5-9]))|(18[0,5-9]))\\d{8}$/",$data['contac_telephone'])){
			$info = [
				'code' => 2,
				'message' => '手机格式不对',
			];
			// echo "手机格式不对";exit;
			exit(json_encode($info));
		}
	//判断邮箱格式是否正确
		if(!preg_match("/^[a-zA-Z0-9_.-]+@[a-zA-Z0-9-]+(\.[a-zA-Z0-9-]+)*\.[a-zA-Z0-9]{2,6}$/",$data['contac_mail'])){
			$info = [
				'code' => 2,
				'message' => '邮箱格式不对',
			];
			// echo "邮箱格式不对";exit;
			exit(json_encode($info));
		}

	if(!$data['vcode']){
		$info = [
			'code' => 3,
			'message' => '验证码不能为空',
		];
		exit(json_encode($info));
	}elseif($data['vcode'] != $_SESSION['vcode']){
		$info = [
			'code' => 3,
			'message' => '验证码错误',
		];
		exit(json_encode($info));
	}

	unset($data['vcode']);

	$data['contac_time'] = time();

	$result1 = add_to($data,'contac');

	if($result1){
		$info = [
			'code' => 1,
			'message' => '留言成功'
		];
		exit(json_encode($info));
	}else{
		$info = [
			'code' => 1,
			'message' => '出错了'
		];
		exit(json_encode($info));
	}
}



$sql = "select translate_id from translate where controller='{$C}'";
$result = select($mysqli,$sql);

$contact_sql = "select * from contact where contact_id=1";
$contact_result = select($mysqli,$contact_sql);

include ST.DS.M.DS.C.DS.A.H;

?>