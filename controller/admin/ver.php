<?php

	$data = $_GET;
	if($data['ty'] == 'logout'){
		unset($_SESSION['id']);
	    unset($_SESSION['name']);
		if(empty($_SESSION['id'])){
			$info = [
				'code' => 1,
				'message' => '退出成功',
				'url' => 'index.php?mot=admin&ctl=login'
			];
			exit(json_encode($info));
		}else{
			$info = [
				'code' => 2,
				'message' => '退出失败'
			];
			exit(json_encode($info));
		}

	}else{
		include ST.DS.M.DS.C.DS.A.H;
	}

?>