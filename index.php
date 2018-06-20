<?php



header("content-type:text/html;charset=utf-8");

include "model/init.php";

$path = KZ.M.DS.C.P;

if(file_exists($path)){
	require_once($path);
}else{
	echo "警告：路径不存在！";
}

?>