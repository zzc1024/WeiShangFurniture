<?php

date_default_timezone_set('PRC'); 
//设置默认时区

if(empty($_SESSION)){
	session_start();   //开启$_SESSION全局变量
}


$M = empty($_GET['mot'])?'home':$_GET['mot'];
// 模型
$C = empty($_GET['ctl'])?'index':$_GET['ctl'];
//控制器
$A = empty($_GET['act'])?'index':$_GET['act'];
//视图

//定义常量  初始化、路径、文件夹
define('M',$M);
define('C',$C);
define('A',$A);


define('DS','/');
define('KZ','controller/');
define('AD','admin/');
define('MX','model/');
define('ST','view/');
define('P','.php');
define('H','.html');
define('PU','picture/admin/');
define('PN','picture/home/');


//连接数据库的参数
define('HOST','127.0.0.1');
define('ROOT','root');
define('PASS','2144');
define('DBNAME','ZHU');
define('CHARSET_NAME','utf8');

include('connect.php');
include('mysqli.php');
include('img.php');
include('hear.php');

connect();

if(empty($_SESSION['id']) && M == 'admin' && C != 'login' && C != 'code'){
	echo "<script>alert('请先登录');window.location.href='index.php?mot=admin&ctl=login';</script>";
	exit;
}

if(M != 'home'){
	if(C != 'index'){
		if(A != 'index'){
			$sql = "select * from menu where controller='{$C}'";
			$cate = select($mysqli,$sql);
		}else{
			$sql = "select * from menu where controller='{$C}' and menu_pid=0";
			$cate = select($mysqli,$sql);
		}
		if($cate){
			if(!in_array($cate['menu_id'],$_SESSION['level'])){ //如果当前登录用户的权限数组中不包括当前操作的id值,表示没有次权限
				echo "<script>alert('权限不足!');history.go(-1);</script>"; //报错并返回上一页
				exit;
			}
		}
	}
}
?>