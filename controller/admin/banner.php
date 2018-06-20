<?php 

if(A == 'index'){
	// $sql = "select * from banner";
	// $result = select_complex($mysqli,$sql);
	$sql = "select * from translate,banner where translate_sort=banner_grouping";
	$result = select_complex($mysqli,$sql);
	// var_dump($result);
	// echo '<pre>';var_dump($result1);die;
}elseif(A == 'add'){
	if($_POST){
		if($_FILES){
			if(isset($_FILES['banner_img']['name'])){
				$image_type = ['image/jpeg','image/png','image/gif'];
				$file_array = explode('.', $_FILES['banner_img']['name']);
				if(!in_array($_FILES['banner_img']['type'], $image_type)){
                    $info = [
			            'code'=>2,
			            'message' =>'请上传图片'
			            ];
			            exit(json_encode($info));
				}elseif($_FILES['banner_img']['size'] > (2 *1024 *1024)){
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
				move_uploaded_file($_FILES['banner_img']['tmp_name'], $path);
				thumimg($path,$path,'1920','600');
			}
		}

		$data = $_POST;
		$data['banner_img'] = $path;
		$result = add_to($data,'banner');
		if($result){
			$info = [
			    'code'=>1,
			    'message' =>'添加成功',
			    'url'=>'index.php?mot=admin&ctl=banner&act=add'
			];
			exit(json_encode($info));
		}else{
			$info = [
			    'code'=>1,
			    'message' =>'添加失败',
			    'url'=>'index.php?mot=admin&ctl=banner&act=add'
			];
			exit(json_encode($info));
		}
	}	
	$sql = "select * from translate";
	$result = select_complex($mysqli,$sql);

}elseif(A == 'dele'){
	if($_POST){
		$data = $_POST;
		$sql = "delete from banner where banner_id='{$data['id']}'";
		//delete from 表名 where 条件  删除语句
		$result = dele($mysqli,$sql);
		if($result){
			$info = [
				'code' => 1,
				'message' => '删除成功',
				'url' => 'index.php?mot=admin&ctl=banner&act=index'
			];
			exit(json_encode($info));
		}else{
			$info = [
				'code' => 1,
				'message' => '删除失败',
				'url' => 'index.php?mot=admin&ctl=banner&act=index'
			];
			exit(json_encode($info));
		}
	}
}elseif(A == 'edit'){
	if($_POST){
		if($_FILES){
			if(isset($_FILES['banner_img']['name'])){
				$image_type = ['image/jpeg','image/png','image/gif'];
				$file_array = explode('.', $_FILES['banner_img']['name']);
				if(!in_array($_FILES['banner_img']['type'], $image_type)){
                    $info = [
			            'code'=>2,
			            'message' =>'请上传图片'
			            ];
			            exit(json_encode($info));
				}elseif($_FILES['banner_img']['size'] > (2 *1024 *1024)){
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
				move_uploaded_file($_FILES['banner_img']['tmp_name'], $path);
				thumimg($path,$path,'1920','600');
			}
		}
		$data = $_POST;
		$data['banner_img'] = $path;
		$result = modify($mysqli,$data,'banner','banner_id');
		if($result){
			$info = [
			    'code'=>1,
			    'message' =>'修改成功',
			    'url'=>'index.php?mot=admin&ctl=banner&act=add'
			];
			exit(json_encode($info));
		}else{
			$info = [
			    'code'=>1,
			    'message' =>'修改失败',
			    'url'=>'index.php?mot=admin&ctl=banner&act=add'
			];
			exit(json_encode($info));
		}
	}
	$sql = "select * from translate";
	$result = select_complex($mysqli,$sql);
	$id = $_GET['id'];
	$sql1 = "select * from banner where banner_id=$id";
	$result1 = select($mysqli,$sql1);
}

include ST.DS.M.DS.C.DS.A.H;

?>