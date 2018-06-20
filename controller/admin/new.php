<?php 


if(A == 'index'){
	if($_POST){
			$data3 = $_POST;
			$sql="update new set new_state={$data3['new_state']} where new_id={$data3['new_id']}";
    		$result3 = $mysqli -> query($sql);
			if($result3){
				$info = [
					'code' => 1,
					'url' => 'index.php?mot=admin&ctl=new&act=index'
				];
				exit(json_encode($info));
			}else{
				$info = [
					'code' => 2,
					'url' => 'index.php?mot=admin&ctl=new&act=index'
				];
				exit(json_encode($info));
			}
	}
	$sql = "select * from new";
	$result = select_complex($mysqli,$sql);
	$sql1 = "select * from category";
	$result1 = select_complex($mysqli,$sql1);
	$len = count($result);
	//把时间转换格式
	for($i=0;$i < $len;$i++){
		$result[$i]['entry_time'] = date('Ymd H:i:s',$result[$i]['entry_time']);
	}
	// echo "<pre>";
	// var_dump($result);die;
}elseif(A == 'add'){
	if($_POST){

		$data = $_POST;

		if(!$data['new_title']){
			$info = [
			    'code'=>2,
			    'message' =>'文章标题不能为空'
			];
			exit(json_encode($info));
		}elseif(!$data['new_abstract']){
			$info = [
			    'code'=>2,
			    'message' =>'文章摘要不能为空'
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
			    thumimg($path,$path,450,355);
			}
		}

		// var_dump($data['new_textarea']);die;

		if(!isset($data['new_textarea'])){
			$info = [
			    'code'=>2,
			    'message' =>'文章内容不能为空'
			];
			exit(json_encode($info));
		}


		


		if(isset($data['water'])){
			$sql = "select * from watermark";
			$file = select($mysqli,$sql);
			waterimg($path,$file['watermark_src']);
			
		}

		// echo '<pre>';
		// var_dump($_FILES);
		// var_dump($data);die;
		$data['new_thu'] = $path;
		$data['entry_time'] = time();
		$data['new_author'] = $_SESSION['name'];
		unset($data['water']);
		$result = add_to($data,'new');
		if($result){
			$info = [
				'code' => 1,
				'message' => '添加成功',
				'url' => 'index.php?mot=admin&ctl=new&act=add'
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

	$sql = "select * from category where category_pid=1";
	$result = select_complex($mysqli,$sql);
}elseif(A == 'edit'){

	if($_POST){

		$data = $_POST;

		if(!$data['new_title']){
			$info = [
			    'code'=>2,
			    'message' =>'文章标题不能为空'
			];
			exit(json_encode($info));
		}elseif(!$data['new_abstract']){
			$info = [
			    'code'=>2,
			    'message' =>'文章摘要不能为空'
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
			    thumimg($path,$path,450,355);
			}
		}

		if(!isset($data['new_textarea'])){
			$info = [
			    'code'=>2,
			    'message' =>'文章内容不能为空'
			];
			exit(json_encode($info));
		}

		if(isset($data['water'])){
			$sql = "select * from watermark";
			$file = select($mysqli,$sql);
			waterimg($path,$file['watermark_src']);
			
		}
		
		$data['new_thu'] = $path;

		$sql1 = "select * from new where new_id='{$data['new_id']}'";
		$result1 = select($mysqli,$sql1);
		unset($data['water']);
		$result = modify($mysqli,$data,'new','new_id');
		if($result){
			unlink($result1['new_thu']);
			$info = [
				'code' => 1,
				'message' => '修改成功',
				'url' => 'index.php?mot=admin&ctl=new&act=index'
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
	$sql = "select * from new where new_id='{$_GET['id']}'";
	$result = select($mysqli,$sql);
	$sql1 = "select * from category where category_pid=1";
	$result1 = select_complex($mysqli,$sql1);
}elseif(A == 'dele'){
	if($_POST){
		$data = $_POST;
		$sql = "delete from new where new_id={$data['new_id']}";
		$result = dele($mysqli,$sql);
		if($result){
			$info = [
				'code' => 1,
				'message' => '删除成功',
				'url' => 'index.php?mot=admin&ctl=new&act=index',
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