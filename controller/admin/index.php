<?php

if(empty($_SESSION)){
	session_start();   //开启$_SESSION全局变量
}

if(A == 'index'){
	$sql = "select menu_id,menu_name,controller,action from menu where menu_pid=0 and menu_sore=0";

	$result = select_complex($mysqli,$sql);
	// echo "<pre>";
	// var_dump($result);die;

	foreach($result as $k => $v){

		if(is_array($v)){
			$sql= "select menu_id,menu_name,controller,action from menu where menu_pid={$v['menu_id']} and menu_sore=0";
			$result[$k]['next'] = select_complex($mysqli,$sql);
		}

	}
	// echo "<pre>";
	// var_dump($result);die;

	// $result = recursion();

}


include ST.DS.M.DS.C.DS.A.H;


	// $data = $_GET;
	// if($data['ty'] == 'logout'){
	// 	unset($_SESSION['id']);
	//     unset($_SESSION['name']);
	// 	if(!$_SESSION){
	// 		$info = [
	// 			'code' => 1,
	// 			'message' => '退出成功',
	// 			'url' => 'index.php?mot=admin&ctl=login'
	// 		];
	// 		exit(json_encode($info));
	// 	}else{
	// 		$info = [
	// 			'code' => 2,
	// 			'message' => '退出失败'
	// 		];
	// 		exit(json_encode($info));
	// 	}

	// }else{
	// 	include ST.DS.M.DS.C.DS.A.H;
	// }

?>