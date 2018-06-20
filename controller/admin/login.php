<?php

if($_POST){

	$data = $_POST;

	$data['admin_pass'] = MD5($data['admin_pass'].'qweASD');

	if(empty($data['admin_account'])){
		$info = [
			'code' => 3,
			'message' => '账号不能为空',
		];
		exit(json_encode($info));
	}elseif(empty($data['admin_pass'])){
		$info = [
			'code' => 3,
			'message' => '密码不能为空',
		];
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

	$sql = "select * from admin where admin_account='{$data['admin_account']}'";
	$result = select($mysqli,$sql);

	if(!$result){
		$info = [
			'code' => 2,
			'message' => '账号不存在',
		];
		exit(json_encode($info));
	}

	if($result['admin_state']==1){
		$info = [
			'code' => 2,
			'message' => '该账号已停用',
		];
		exit(json_encode($info));
	}

	if($data['admin_pass']==$result['admin_pass']){

		$_SESSION['id'] = $result['ID'];
		$_SESSION['name'] = $result['admin_name'];
		// $_SESSION['level'] = $result['admin_level'];
		$sql = "select * from level where level_id='{$result['admin_level']}'";
		// echo $sql;
		$level = select($mysqli,$sql);
		// var_dump($level);die;
		$_SESSION['level'] = json_decode($level['level_arr']);
		$_SESSION['level_name'] = $level['level_name'];
		// var_dump($_SESSION['level']);die;
		$info = [
			'code' => 1,
			'message' => '登录成功',
			'url' => 'index.php?mot=admin&ctl=index'
		];
		exit(json_encode($info));
	}else{
		$info = [
			'code' => 2,
			'message' => '密码错误',
		];
		exit(json_encode($info));
	}

}else{

	
	include ST.M.DS.C.DS.A.H;

}




?>