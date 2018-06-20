<?php

function connect(){
	global $mysqli; 
	//全局变量
	$mysqli = new mysqli(HOST,ROOT,PASS,DBNAME) or die('数据库连接失败');
	//连接数据库
	$mysqli->set_charset(CHARSET_NAME);
	//设置字符编码
}

?>