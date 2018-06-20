<?php

header("content-type:text/html;charset=utf-8");

// $re = $mysqli -> query("select * from menu order by menu_id asc");
//按id排序
// var_dump($re);die;
// $result = $re -> fetch_all(MYSQLI_ASSOC);

// function recursion($result,$pid=0){
// 	static $list=array();

// 	foreach($result as $k => $v){
// 		if($v['menu_pid'] == $pid){
// 			$list[] = $v;
// 			recursion($result,$v['menu_id']);
// 		}
// 	}
// 	return $list;
// }
// $asd = recursion($result);
// echo "<pre>";
// var_dump($asd);

// function recursion($pid=0){
// 	global $mysqli;
// 	$re = $mysqli -> query("select * from menu order by menu_id asc");
// 	$result = $re -> fetch_all(MYSQLI_ASSOC);
// 	static $list=array();

// 	foreach($result as $k => $v){
// 		if($v['menu_pid'] == $pid){
// 

// 			$list[] = $v;
// 			recursion($result,$v['menu_id']);
// 		}
// 	}
// 	return $list;
// }
// $asd = recursion($result,0,'|--');
// echo "<pre>";
// print_r($asd);




?>