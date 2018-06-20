<?php 


if(A == 'index'){
	if($_POST){
			$data3 = $_POST;
			$sql="update product set product_state={$data3['product_state']} where product_id={$data3['product_id']}";
    		$result3 = $mysqli -> query($sql);
			if($result3){
				$info = [
					'code' => 1
				];
				exit(json_encode($info));
			}else{
				$info = [
					'code' => 2
				];
				exit(json_encode($info));
			}
	}
	$sql = "select * from product";
	$result = select_complex($mysqli,$sql);
	$sql1 = "select * from category";
	$result1 = select_complex($mysqli,$sql1);
	// echo "<pre>";
	// var_dump($result);die;
}elseif(A == 'add'){
	if($_POST){

		$data = $_POST;
		if(!$data['product_name']){
			$info = [
				'code' => 2,
				'message' => '标题不能为空'
			];
			exit(json_encode($info));
		}elseif(!$data['product_number']){
			$info = [
				'code' => 2,
				'message' => '产品编号不能为空'
			];
			exit(json_encode($info));
		}elseif(!$data['product_price']){
			$info = [
				'code' => 2,
				'message' => '价格不能为空'
			];
			exit(json_encode($info));
		}


		if($_FILES){
			// echo '<pre>';
			// var_dump($_FILES);die;
			if(isset($_FILES['product_img']['name'])){
				$image_type = ['image/jpeg','image/png','image/gif'];
				$file_array = explode('.', $_FILES['product_img']['name']);
				if(!in_array($_FILES['product_img']['type'], $image_type)){
                    $info = [
			            'code'=>2,
			            'message' =>'请上传图片'
			            ];
			            exit(json_encode($info));
			    }elseif($_FILES['product_img']['size'] > (2 *1024 *1024)){
			    	$info = [
			    		'code'=>2,
			    		'message' =>'图片不能超过2M'
			    		];
			    	exit(json_encode($info));
			    }

			    $public = 'public';
			    if(!file_exists($public)){
			    	mkdir($public,0777);
			    }
			    $path = $public.DS.date('Ymd',time()).rand(1000,9999).'.'.$file_array[1];
			    move_uploaded_file($_FILES['product_img']['tmp_name'], $path);
			    thumimg($path,$path);
			}
		}

		

		if(isset($data['water'])){
			$sql = "select * from watermark";
			$file = select($mysqli,$sql);
			waterimg($path,$file['watermark_src']);
			
		}

		// echo '<pre>';
		// var_dump($_FILES);
		// var_dump($data);die;
		$data['product_img'] = $path;
		$data['product_time'] = time();
		$data['product_people'] = $_SESSION['name'];
		unset($data['water']);
		$result = add_to($data,'product');
		if($result){
			$info = [
				'code' => 1,
				'message' => '添加成功',
				'url' => 'index.php?mot=admin&ctl=product&act=add'
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

	$sql = "select * from category where category_pid=5";
	$result = select_complex($mysqli,$sql);
}elseif(A == 'edit'){
	if($_POST){

		$data = $_POST;
		if(!$data['product_name']){
			$info = [
				'code' => 2,
				'message' => '标题不能为空'
			];
			exit(json_encode($info));
		}elseif(!$data['product_number']){
			$info = [
				'code' => 2,
				'message' => '产品编号不能为空'
			];
			exit(json_encode($info));
		}elseif(!$data['product_price']){
			$info = [
				'code' => 2,
				'message' => '价格不能为空'
			];
			exit(json_encode($info));
		}

		if($_FILES){
			if(isset($_FILES['product_img']['name'])){
				$image_type = ['image/jpeg','image/png','image/gif'];
				$file_array = explode('.', $_FILES['product_img']['name']);
				if(!in_array($_FILES['product_img']['type'], $image_type)){
                    $info = [
			            'code'=>2,
			            'message' =>'请上传图片'
			            ];
			            exit(json_encode($info));
			    }elseif($_FILES['product_img']['size'] > (2 *1024 *1024)){
			    	$info = [
			    		'code'=>2,
			    		'message' =>'图片不能超过2M'
			    		];
			    	exit(json_encode($info));
			    }

			    $public = 'public';
			    if(!file_exists($public)){
			    	mkdir($public,0777);
			    }
			    $path = $public.DS.date('Ymd',time()).rand(1000,9999).'.'.$file_array[1];
			    move_uploaded_file($_FILES['product_img']['tmp_name'], $path);
			    thumimg($path,$path);
			}
		}



		if(isset($data['water'])){
			$sql = "select * from watermark";
			$file = select($mysqli,$sql);
			waterimg($path,$file['watermark_src']);
			
		}
		
		$data['product_img'] = $path;

		$sql1 = "select * from product where product_id='{$data['product_id']}'";
		$result1 = select($mysqli,$sql1);
		unset($data['water']);
		$result = modify($mysqli,$data,'product','product_id');
		if($result){
			unlink($result1['product_img']);
			$info = [
				'code' => 1,
				'message' => '修改成功',
				'url' => 'index.php?mot=admin&ctl=product&act=index'
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
	$sql = "select * from product where product_id='{$_GET['id']}'";
	$result = select($mysqli,$sql);
	$sql1 = "select * from category where category_pid=5";
	$result1 = select_complex($mysqli,$sql1);
}elseif(A == 'dele'){
	if($_POST){
		$data = $_POST;
		$sql = "delete from product where product_id={$data['product_id']}";
		$result = dele($mysqli,$sql);
		if($result){
			$info = [
				'code' => 1,
				'message' => '删除成功',
				'url' => 'index.php?mot=admin&ctl=product&act=index',
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
include ST.DS.M.DS.C.DS.A.H;

?>