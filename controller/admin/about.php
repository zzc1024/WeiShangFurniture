<?php 

if(A == 'index'){
	if($_POST){
			
	}
	$sql = "select * from about";
	$result = select_complex($mysqli,$sql);
}elseif(A == 'add'){
	if($_POST){
		$data = $_POST;

		$sql2 = "select about_pid from about where about_pid='{$data['about_pid']}'";
		$result2 = select($mysqli,$sql2);
		if($result2){
			$info = [
			    'code'=>2,
			    'message' => '内容已存在'
			];
			exit(json_encode($info));
		}

		if($_FILES){
			if(isset($_FILES['img']['name'])){
				$image_type = ['image/jpeg','image/png','image/gif'];
				$file_array = explode('.', $_FILES['img']['name']);
				if(!in_array($_FILES['img']['type'], $image_type)){
                    $info = [
			            'code'=>2,
			            'message' =>'请上传图片'
			            ];
			            exit(json_encode($info));
			    }elseif($_FILES['img']['size'] > (2 *1024 *1024)){
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
			    move_uploaded_file($_FILES['img']['tmp_name'], $path);
			    thumimg($path,$path,876,526);
			}
		}

		

		if(isset($data['water'])){
			$sql = "select * from watermark";
			$file = select($mysqli,$sql);
			waterimg($path,$file['watermark_src']);
			
		}
		$data['about_img'] = $path;
		unset($data['water']);
		$result = add_to($data,'about');
		if($result){
			$info = [
				'code' => 1,
				'message' => '添加成功',
				'url' => 'index.php?mot=admin&ctl=about&act=add'
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
	$sql = "select * from category where category_pid=18";
	$result = select_complex($mysqli,$sql);
}elseif(A == 'edit'){
	if($_POST){
		if($_FILES){
			if(isset($_FILES['img']['name'])){
				$image_type = ['image/jpeg','image/png','image/gif'];
				$file_array = explode('.', $_FILES['img']['name']);
				if(!in_array($_FILES['img']['type'], $image_type)){
                    $info = [
			            'code'=>2,
			            'message' =>'请上传图片'
			            ];
			            exit(json_encode($info));
			    }elseif($_FILES['img']['size'] > (2 *1024 *1024)){
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
			    move_uploaded_file($_FILES['img']['tmp_name'], $path);
			    thumimg($path,$path,876,526);
			}
		}



		$data = $_POST;

		if(isset($data['water'])){
			$sql = "select * from watermark";
			$file = select($mysqli,$sql);
			waterimg($path,$file['watermark_src']);
			
		}
		
		$data['about_img'] = $path;

		$sql1 = "select about_img from about where about_id='{$data['about_id']}'";
		$result1 = select($mysqli,$sql1);
		unset($data['water']);
		$result = modify($mysqli,$data,'about','about_id');
		if($result){
			unlink($result1['about_img']);
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
	$sql = "select * from about where about_id='{$_GET['id']}'";
	$result = select($mysqli,$sql);
	$sql1 = "select * from category where category_pid=18";
	$result1 = select_complex($mysqli,$sql1);
}elseif(A == 'dele'){
	if($_POST){
			$data = $_POST;
			$sql = "delete from about where about_id={$data['id']}";
			$result = dele($mysqli,$sql);
			if($result){
				$info = [
					'code' => 1,
					'message' => '删除成功',
					'url' => 'index.php?mot=admin&ctl=about&act=index',
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