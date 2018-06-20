<?php


if(A == 'add'){
	if($_POST){
		$data = $_POST;
		edit($data);  //调用封装函数
	// 	//判断是否没有填写信息
	// 	if(empty($data['admin_name'])){
	// 		$info = [
	// 			'code' => 1,
	// 			'message' => '昵称不能为空',
	// 		];
	// 		// echo "昵称不能为空";exit;
	// 		exit(json_encode($info));
	// 	}elseif(empty($data['admin_account'])){
	// 		$info = [
	// 			'code' => 1,
	// 			'message' => '账号不能为空',
	// 		];
	// 		// echo "账号不能为空";exit;
	// 		exit(json_encode($info));
	// 	}elseif(empty($data['admin_pass'])){
	// 		$info = [
	// 			'code' => 1,
	// 			'message' => '密码不能为空',
	// 		];
	// 		// echo "密码不能为空";exit;
	// 		exit(json_encode($info));
	// 	}elseif(empty($data['phone'])){
	// 		$info = [
	// 			'code' => 1,
	// 			'message' => '手机不能为空',
	// 		];
	// 		// echo "手机不能为空";exit;
	// 		exit(json_encode($info));
	// 	}elseif(empty($data['e_mail'])){
	// 		$info = [
	// 			'code' => 1,
	// 			'message' => '邮箱不能为空',
	// 		];
	// 		// echo "邮箱不能为空";exit;
	// 		exit(json_encode($info));
	// 	}

		

		//判断昵称是否重复
		$sql = "select admin_name from admin where admin_name='{$data['admin_name']}'";
		$result = select_complex($mysqli,$sql);
		if($result){
			$info = [
				'code' => 2,
				'message' => '昵称不能重复',
			];
			// echo "昵称不能重复";exit;
			exit(json_encode($info));
		}

	// 	if(strlen($data['admin_account']) < 8){
	// 		$info = [
	// 			'code' => 1,
	// 			'message' => '账号不能小于8位数',
	// 		];
	// 		// echo "账号不能小于8位数";exit;
	// 		exit(json_encode($info));
	// 	}elseif(strlen($data['admin_account']) > 18){
	// 		$info = [
	// 			'code' => 1,
	// 			'message' => '账号不能大于18位数',
	// 		];
			
	// 		// echo "账号不能大于18位数";exit;
			
	// 	}
	// 	if(!preg_match("/^[a-zA-Z]{1}([a-zA-Z0-9]|[._]){3,17}$/",$data['admin_account'])){
	// 		$info = [
	// 			'code' => 1,
	// 			'message' => '账号格式不对',
	// 		];
	// 		// echo "账号格式不对";exit;
	// 		exit(json_encode($info));
	// 	}elseif(preg_match("/^[a-zA-Z]{1,20}$/",$data['admin_account'])){
	// 		$info = [
	// 			'code' => 1,
	// 			'message' => '账号格式不对',
	// 		];
	// 		// echo "账号格式不对";exit;
	// 		exit(json_encode($info));
	// 	}

		//判断账号是否重复
		$sql = "select admin_account from admin where admin_account='{$data['admin_account']}'";
		$result1 = select_complex($mysqli,$sql);
		if($result1){
			$info = [
				'code' => 2,
				'message' => '账号不能重复',
			];
			// echo "账号不能重复";exit;
			exit(json_encode($info));
		}
		//判断确认密码是否正确
		
	// 	//判断手机号格式是否正确
	// 	if(!preg_match("/^((13[0-9])|(14[5|7])|(15([0-3]|[5-9]))|(18[0,5-9]))\\d{8}$/",$data['phone'])){
	// 		$info = [
	// 			'code' => 1,
	// 			'message' => '手机格式不对',
	// 		];
	// 		// echo "手机格式不对";exit;
	// 		exit(json_encode($info));
	// 	}

	// 	//判断邮箱格式是否正确
	// 	if(!preg_match("/^[a-zA-Z0-9_.-]+@[a-zA-Z0-9-]+(\.[a-zA-Z0-9-]+)*\.[a-zA-Z0-9]{2,6}$/",$data['e_mail'])){
	// 		$info = [
	// 			'code' => 1,
	// 			'message' => '邮箱格式不对',
	// 		];
	// 		// echo "邮箱格式不对";exit;
	// 		exit(json_encode($info));
	// 	}
		$data['register_time'] = time();
		unset($data['admin_pass1']);
		$data['admin_pass'] = MD5($data['admin_pass'].'qweASD');
		$result = add_to($data,'admin');
		if($result){
			$info = [
				'code' => 1,
				'message' => '添加成功',
				'url' => 'index.php?mot=admin&ctl=role&act=add'
			];
			// echo "添加成功";exit;
			exit(json_encode($info));
		}else{
			$info = [
				'code' => 2,
				'message' => '错误',
			];
			exit(json_encode($info));
		}
	}

	$sql2 = "select * from level";
	$result2 = select_complex($mysqli,$sql2);

}elseif(A == 'index'){
	if($_POST){
		$data3 = $_POST;
		$sql="update admin set admin_state={$data3['admin_state']} where ID={$data3['ID']}";
    	$result3 = $mysqli -> query($sql);
		if($result3){
			$info = [
				'code' => 1,
				'url' => 'index.php?mot=admin&ctl=role&act=index'
			];
			exit(json_encode($info));
		}else{
			$info = [
				'code' => 2
			];
			exit(json_encode($info));
		}
	}
	$sql = "select * from admin";
	//sql查询语句
	$result = select_complex($mysqli,$sql);
	//调用封装好的查询函数
	$len = count($result);
	//把时间转换格式
	for($i=0;$i < $len;$i++){
		$result[$i]['register_time'] = date('Ymd H:i:s',$result[$i]['register_time']);
	}

	// $num = count($res);
	// //得到数组的总数，就是数据的总条数
	// $fnum = 10;
	// //设每页显示10条数据
	// $znum = ceil($num/$fnum);
	// //总页数=数据总数除以每页显示的条数，向上取整
	// $page = empty($_GET['page'])?1:$_GET['page'];
	// //做判断,如果没有GET到当前页数，那么当前页面等于1
	// $start = ($page-1)*$fnum;
	// //计算起始页
	// $sql1 = "select * from admin order by ID desc limit $start,$fnum";
	// //order by 排序  后面跟desc 降序 跟asc 升序  不跟默认升序
	// //limit 0,2, 从你的表中的第0个数据开始截取,截取2个
	// // while($row = select_complex($mysqli,$sql1)){
	// // 	$result[]=$row;
	// // }
	// //循环把截取出来的数据，放到数组里面
	

	// // $row = select_complex($mysqli,$sql1);
	// // $result[]=$row;
	// // echo "<pre>";
	// // var_dump($result);die;

	// // unset($sql);unset($res);unset($num);unset($znum);unset($fnum);unset($page);
	// // unset($start);unset($sql1);
	// include_once ST.DS.M.DS.C.DS.A.H;
}elseif(A == 'edit'){
	if($_POST){
		$data = $_POST;
		// var_dump($);die;
		edit($data);
		// $sql = "update admin set '{$data}' where ID={$data['ID']}";
		// echo $sql;die;
		unset($data['admin_pass1']);
		$data['admin_pass'] = MD5($data['admin_pass'].'qweASD');
		$result = modify($mysqli,$data,'admin','ID');
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
	$sql = "select * from admin where ID='{$_GET['id']}'";
	$result = select($mysqli,$sql);
	$sql2 = "select * from level";
	$result2 = select_complex($mysqli,$sql2);
}elseif(A == 'dele'){
	if($_POST){
// function sc($mysqli,$sql){
// 	$result = $mysqli -> query($sql);
// 	if ($result){
//     	return $result;
//     }else {
//         return false;
//     }
// }
// delete from 表名 where 条件
		$data = $_POST;
		$sql = "delete from admin where ID={$data['ID']}";
		$result = dele($mysqli,$sql);
		if($result){
			$info = [
				'code' => 1,
				'message' => '删除成功',
				'url' => 'index.php?mot=admin&ctl=role&act=index',
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








// insert into
// admin(admin_account,admin_pass,admin_name,admin_sex,phone,e_mail,register_time) 
// values('qwe0111235','123','朱24','1','13435123180','1095395035@qq.com','21412416
// 57'),('qwe0181aaa5','123','朱25','1','13435123180','1095395035@qq.com','21412416
// 57'),('qwe0181236','123','朱26','1','13435123180','1095395035@qq.com','21412416
// 57'),('qwe0181aaa6','123','朱27','1','13435123180','1095395035@qq.com','21412416
// 57'),('qwe09181237','123','朱28','1','13435123180','1095395035@qq.com','21412416
// 57'),('qwe01981aaa7','123','朱29','1','13435123180','1095395035@qq.com','21412416
// 57'),('qwe09181238','123','朱210','1','13435123180','1095395035@qq.com','21412416
// 57'),('qwe09181aaa8','123','朱211','1','13435123180','1095395035@qq.com','21412416
// 57'),('qwe09811239','123','朱212','1','13435123180','1095395035@qq.com','21412416
// 57'),('qwe09811aaa9','123','朱213','1','13435123180','1095395035@qq.com','21412416
// 57'),('qwe09811210','123','朱124','1','13435123180','1095395035@qq.com','21412416
// 57'),('qwe09811aa10','123','朱215','1','13435123180','1095395035@qq.com','21412416
// 57'),('qwe09181211','123','朱126','1','13435123180','1095395035@qq.com','21412416
// 57'),('qwe09181aa11','123','朱217','1','13435123180','1095395035@qq.com','21412416
// 57'),('qwe09811212','123','朱128','1','13435123180','1095395035@qq.com','21412416
// 57'),('qwe09811aa12','123','朱219','1','13435123180','1095395035@qq.com','21412416
// 57'),('qwe09811213','123','朱220','1','13435123180','1095395035@qq.com','21412416
// 57'),('qwe09811aa13','123','朱221','1','13435123180','1095395035@qq.com','21412416
// 57')

?>







