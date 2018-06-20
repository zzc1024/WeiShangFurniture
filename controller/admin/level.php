<?php 

if(A == 'index'){
	$sql = "select * from level";
	$result = select_complex($mysqli,$sql);
	$len = count($result);
	$sql1 = "select menu_id,menu_name from menu";
	$result1 = select_complex($mysqli,$sql1);

// "select menu_name
// from admin,level,menu 
// where a.no = c.no and
//  b.subid = c.subid ;"

}elseif(A == 'add'){
	if($_POST){
		$data = $_POST;
		$data['level_arr']=json_encode($data['level_arr']);
		$result = add_to($data,'level');
		if($result){
			$info = [
				'code' => 1,
				'message' => '添加成功',
				'url' => 'index.php?mot=admin&ctl=level&act=add'
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
	foreach($result as $k => $v){
		if(is_array($v)){
			$sql = "select * from menu where menu_pid={$v['menu_id']}";
			$result[$k]['next'] = select_complex($mysqli,$sql);
		}
	}

	// echo "<pre>";
	// var_dump($result);die;
}elseif(A == 'edit'){

	if($_POST){
		$data = $_POST;
		$data['level_arr']=json_encode($data['level_arr']);
		$result = modify($mysqli,$data,'level','level_id');
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
	$sql1 = "select * from level where level_id='{$_GET['id']}'";
	$result1 = select($mysqli,$sql1);
	$result2 = json_decode($result1['level_arr']);
	// $result3 = $result2[0];
	// if($result3 == 19){
	// 	echo 'zq';
	// }else{
	// 	echo 'chuowu';
	// }
	// var_dump($result2);die;
	// $s = in_array(19,$result2);
	// echo $s;die;
	$sql = "select * from menu where menu_pid=0";
	$result = select_complex($mysqli,$sql);
	foreach($result as $k => $v){
		if(is_array($v)){
			$sql = "select * from menu where menu_pid={$v['menu_id']}";
			$result[$k]['next'] = select_complex($mysqli,$sql);
		}
	}
	
}elseif(A == 'dele'){

	if($_POST){
		$data = $_POST;

		$sql1 = "select * from admin where admin_level='{$data['id']}'";
		$result1 = select($mysqli,$sql1);
		if($result1){
			$info = [
				'code' => 2,
				'message' => '请先删除对应角色的管理员'
			];
			exit(json_encode($info));
		}

		$sql = "delete from level where level_id='{$data['id']}'";
		$result = dele($mysqli,$sql);
		if($result){
			$info = [
				'code' => 1,
				'message' => '删除成功',
				'url' => 'index.php?mot=admin&ctl=level&act=index',
			];
			exit(json_encode($info));
		}else{
			$info = [
				'code' => 1,
				'message' => '删除失败',
			];
			exit(json_encode($info));
		}
	}
}

include ST.DS.M.DS.C.DS.A.H;

?>