<?php



//查询一条数据  $sql mysql语句
function select($mysqli,$sql){
	$result = $mysqli -> query($sql);
	$row = $result -> fetch_array(MYSQLI_ASSOC);
	return $row;
}

//查询多条
function select_complex($mysqli,$sql){
	// echo $sql;die;
	$result = $mysqli -> query($sql);
	$data = [];
	while($row = $result -> fetch_array(MYSQLI_ASSOC)){
		$data[] = $row;
	}
	return $data;
}

//添加数据
function add($mysqli,$sql){
	$mysqli->query($sql);
	$result = $mysqli->insert_id;
	if(!$result){
		return false;
	}
	return $result;
}

//添加多条数据  $data 需要添加的数据  $table 数据库表名
function add_to($data,$table){
	global $mysqli;
	if(!is_array($data)){
		return false;
	}
	$keys = '';
	$values = '';
	foreach ($data as $key => $value){
		$keys .= $key.",";         //表键末尾添加, name,
		$values .= "'".$value."',";//值添加'', 'value',
	}
	$k = rtrim($keys,',');
	$v = rtrim($values,',');

	$sql = "insert into $table($k) values($v)";
	// echo $sql;die;
	$result = add($mysqli,$sql);

	if(!$result){
		return false;
	}else{
		return $result;
	}
}

//修改数据 $data需要修改的数据
function modify($mysqli,$data,$admin,$da){
	$sets = '';
    foreach ($data as $key=>$val){
        $sets.=$key."='".$val."',";   //这句会报错，但能正常运行代码
    }
    //遍历，把数组拼接成字符串
    $sets=rtrim($sets,','); //去掉SQL里的最后一个逗号
    // $where=$where==null?'':$where;
    //判断条件是否等于null，不是返回 where 条件
    $sql="update $admin set {$sets} where {$da}={$data[$da]}";
    // echo $sql;die;
    //修改语句
    $res = $mysqli -> query($sql);
    //相当于$result = $mysqli -> query($sql); 运行语句
    if ($res){
    	return $res;
        // return mysql_affected_rows();
        //mysql_affected_rows() 函数返回前一次 MySQL 操作所影响的记录行数
    }else {
        return false;
    }
}


//删除数据      delete from 表名 where 条件  删除语句
function dele($mysqli,$sql){
	$result = $mysqli -> query($sql);
	if ($result){
    	return $result;
    }else {
        return false;
    }
}

//无限递归下拉列表
function recursion($menu,$id,$qid,$pid=0){
	global $mysqli;
	// echo "select * from $menu order by $id asc";
	$re = $mysqli -> query("select * from $menu order by $id asc");
	$result = $re -> fetch_all(MYSQLI_ASSOC);
	static $list=array();

	foreach($result as $k => $v){
		if($v[$qid] == $pid){
			$list[] = $v;
			recursion($menu,$id,$qid,$v[$id]);
		}
	}
	return $list;
}


//判断账号格式
function edit($data){
		global $mysqli;
		//判断是否没有填写信息
		if(empty($data['admin_name'])){
			$info = [
				'code' => 2,
				'message' => '昵称不能为空',
			];
			// echo "昵称不能为空";exit;
			exit(json_encode($info));
		}elseif(empty($data['admin_account'])){
			$info = [
				'code' => 2,
				'message' => '账号不能为空',
			];
			// echo "账号不能为空";exit;
			exit(json_encode($info));
		}elseif(empty($data['admin_pass'])){
			$info = [
				'code' => 2,
				'message' => '密码不能为空',
			];
			// echo "密码不能为空";exit;
			exit(json_encode($info));
		}elseif(empty($data['phone'])){
			$info = [
				'code' => 2,
				'message' => '手机不能为空',
			];
			// echo "手机不能为空";exit;
			exit(json_encode($info));
		}elseif(empty($data['e_mail'])){
			$info = [
				'code' => 2,
				'message' => '邮箱不能为空',
			];
			// echo "邮箱不能为空";exit;
			exit(json_encode($info));
		}

		// //判断昵称是否重复
		// $sql = "select admin_name from admin where admin_name='{$data['admin_name']}'";
		// $result = select_complex($mysqli,$sql);
		// if($result){
		// 	$info = [
		// 		'code' => 1,
		// 		'message' => '昵称不能重复',
		// 	];
		// 	// echo "昵称不能重复";exit;
		// 	exit(json_encode($info));
		// }

		if(!preg_match("/[\x{4e00}-\x{9fa5}]+/u",$data['admin_name'])){
			$info = [
				'code' => 2,
				'message' => '昵称需要填写中文',
			];
			exit(json_encode($info));
		}

		if(strlen($data['admin_account']) < 8){
			$info = [
				'code' => 2,
				'message' => '账号不能小于8位数',
			];
			// echo "账号不能小于8位数";exit;
			exit(json_encode($info));
		}elseif(strlen($data['admin_account']) > 18){
			$info = [
				'code' => 2,
				'message' => '账号不能大于18位数',
			];
			
			// echo "账号不能大于18位数";exit;
			exit(json_encode($info));
		}
		if(!preg_match("/^[a-zA-Z]{1}([a-zA-Z0-9]|[._]){3,17}$/",$data['admin_account'])){
			$info = [
				'code' => 2,
				'message' => '账号格式不对',
			];
			// echo "账号格式不对";exit;
			exit(json_encode($info));
		}elseif(preg_match("/^[a-zA-Z]{1,20}$/",$data['admin_account'])){
			$info = [
				'code' => 2,
				'message' => '账号格式不对',
			];
			// echo "账号格式不对";exit;
			exit(json_encode($info));
		}


		//验证密码
		if(strlen($data['admin_pass']) < 6){
			$info = [
				'code' => 2,
				'message' => '密码不能小于8位数',
			];			exit(json_encode($info));
		}elseif(strlen($data['admin_pass']) > 18){
			$info = [
				'code' => 2,
				'message' => '密码不能大于18位数',
			];
			exit(json_encode($info));
		}

		if($data['admin_pass'] != $data['admin_pass1']){
			$info = [
				'code' => 2,
				'message' => '确认密码不一致',
			];
			exit(json_encode($info));
		}
		

		// //判断账号是否重复
		// $sql = "select admin_account from admin where admin_account='{$data['admin_account']}'";
		// $result1 = select_complex($mysqli,$sql);
		// if($result1){
		// 	$info = [
		// 		'code' => 1,
		// 		'message' => '账号不能重复',
		// 	];
		// 	// echo "账号不能重复";exit;
		// 	exit(json_encode($info));
		// }

		//判断手机号格式是否正确
		if(!preg_match("/^((13[0-9])|(14[5|7])|(15([0-3]|[5-9]))|(18[0,5-9]))\\d{8}$/",$data['phone'])){
			$info = [
				'code' => 2,
				'message' => '手机格式不对',
			];
			// echo "手机格式不对";exit;
			exit(json_encode($info));
		}

		//判断邮箱格式是否正确
		if(!preg_match("/^[a-zA-Z0-9_.-]+@[a-zA-Z0-9-]+(\.[a-zA-Z0-9-]+)*\.[a-zA-Z0-9]{2,6}$/",$data['e_mail'])){
			$info = [
				'code' => 2,
				'message' => '邮箱格式不对',
			];
			// echo "邮箱格式不对";exit;
			exit(json_encode($info));
		}
		// $data['register_time'] = date('Ymd H:i:s',$data['register_time']);
		// $result = add_to($data,'admin');
		// if($result){
		// 	$info = [
		// 		'code' => 1,
		// 		'message' => '添加成功',
		// 	];
		// 	// echo "添加成功";exit;
		// 	exit(json_encode($info));
		// }else{
		// 	$info = [
		// 		'code' => 2,
		// 		'message' => '错误',
		// 	];
		// 	exit(json_encode($info));
		// }
	
}

?>