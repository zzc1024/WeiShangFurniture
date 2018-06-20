<?php

if(A == 'index'){
	if($_POST){
			$data3 = $_POST;
			if($data3['menu_sore']==1){
				$sql4 = "select * from menu where menu_pid='{$data3['menu_id']}' and menu_sore=0";
				$result4 = select($mysqli,$sql4);
				if($result4){
					$info = [
						'code' => 2
					];
					exit(json_encode($info));
				}
			}
			$sql3="update menu set menu_sore={$data3['menu_sore']} where menu_id={$data3['menu_id']}";
    		$result3 = $mysqli -> query($sql3);
			if($result3){
				$info = [
					'code' => 1
				];
				exit(json_encode($info));
			}else{
				$info = [
					'code' => 3
				];
				exit(json_encode($info));
			}
	}
	$sql = "select * from menu";
	$result = select_complex($mysqli,$sql);
}elseif(A == 'add'){
	if($_POST){
		$data = $_POST;
		// var_dump($data);die;
		$result = add_to($data,'menu');
		if($result){
			$info = [
				'code' => 1,
				'message' => '添加成功',
				'url' => 'index.php?mot=admin&ctl=menu&act=add'
			];
			exit(json_encode($info));
		}else{
			$info = [
				'code' => 2,
				'message' => '添加失败'
			];
			exit(json_encode($info));
		}
	}
	$sql = "select * from menu where menu_pid=0";
	$result = select_complex($mysqli,$sql);
}elseif(A == 'edit'){
	if($_POST){
		$data = $_POST;
		$result = modify($mysqli,$data,'menu','menu_id');
		if($result){
			$info = [
				'code' => 1,
				'message' => '修改成功'
			];
			exit(json_encode($info));
		}else{
			$info = [
				'code' => 2,
				'message' => '修改失败',
			];
			exit(json_encode($info));
		}
	}
	$sql = "select * from menu where menu_pid=0";
	$result = select_complex($mysqli,$sql);
	$sql1 = "select * from menu where menu_id='{$_GET['id']}'";
	$result1 = select($mysqli,$sql1);
}elseif(A == 'dele'){
	if($_POST){
		$data = $_POST;
		$sql1 = "select * from menu where menu_pid='{$data['id']}'";
		$result1 = select_complex($mysqli,$sql1);
		if($result1){
			$info = [
				'code' => 2,
				'message' => '有子菜单不能删除',
			];
			exit(json_encode($info));
		}else{
			$sql = "delete from menu where menu_id={$data['id']}";
			$result = dele($mysqli,$sql);
			if($result){
				$info = [
					'code' => 1,
					'message' => '删除成功',
					'url' => 'index.php?mot=admin&ctl=menu&act=index',
				];
				exit(json_encode($info));
			}else{
				$info = [
					'code' => 2,
					'message' => '删除失败',
				];
				exit(json_encode($info));
			}
		}
	}
}

	include ST.M.DS.C.DS.A.H;

?>