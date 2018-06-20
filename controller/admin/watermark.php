<?php

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

	    $watermark = 'watermark';
	    if(!file_exists($watermark)){
	    	mkdir($watermark,0777);
	    }
	    $sql = "select * from watermark";
		$result = select($mysqli,$sql);
	    $path = $watermark.DS.date('Ymd',time()).rand(1000,9999).'.'.$file_array[1];
	    move_uploaded_file($_FILES['img']['tmp_name'], $path);
	}

	$sql="update watermark set watermark_src='{$path}' where watermark_id=1";
    $res = $mysqli -> query($sql);
    if($res){
    	unlink($result['watermark_src']);
    	$info = [
	    	'code'=>2,
	    	'message' =>'修改成功',
	    	'url' => 'index.php?mot=admin&ctl=watermark&act=index'
	    	];
	    exit(json_encode($info));
    }else{
    	$info = [
	    	'code'=>2,
	    	'message' =>'修改失败'
	    	];
	    exit(json_encode($info));
    }
}


$sql = "select * from watermark";
$result = select($mysqli,$sql);


include ST.DS.M.DS.C.DS.A.H;

?>