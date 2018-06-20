<?php 

if(A == 'index'){
	$sql = "select * from category";
	$result = select_complex($mysqli,$sql);
	$sql1 = "select * from category where category_pid=0";
	$result1 = select_complex($mysqli,$sql1);
}elseif(A == 'add'){

	if($_POST){
		$data = $_POST;
		$result1 = add_to($data,'category');
		if($result1){
			$into = [
				'code'=>1,
				'message'=>'添加成功',
				'url'=>'index.php?mot=admin&ctl=category&act=add'
			];
			exit(json_encode($into));
		}else{
			$into = [
				'code'=>2,
				'message'=>'添加失败'
			];
		}
	}

	$sql = "select * from category where category_pid=0";
	$result = select_complex($mysqli,$sql);
}elseif(A == 'edit'){

	if($_POST){
		$data = $_POST;
		$result = modify($mysqli,$data,'category','category_id');
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


	$sql = "select * from category where category_pid=0";
	$result = select_complex($mysqli,$sql);
	$sql1 = "select * from category where category_id='{$_GET['id']}'";
	$result1 = select($mysqli,$sql1);
}elseif(A == 'dele'){
	if($_POST){
		$data = $_POST;
		$sql1 = "select * from category where category_pid='{$data['id']}'";
		$result1 = select($mysqli,$sql1);
		if($result1){
			$into = [
				'code'=>2,
				'message'=>'有子分类不能删除'
			];
			exit(json_encode($into));
		}else{
			$sql = "delete from category where category_id='{$data['id']}'";
			$result = dele($mysqli,$sql);
			if($result){
				$into = [
					'code'=>1,
					'message'=>'删除成功',
					'url'=>'index.php?mot=admin&ctl=category&act=index'
				];
				exit(json_encode($into));
			}else{
				$into = [
					'code'=>2,
					'message'=>'删除失败'
				];
				exit(json_encode($into));
			}
		}
	}
}




include ST.DS.M.DS.C.DS.A.H;

?>