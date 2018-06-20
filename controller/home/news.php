<?php

$type = empty($_GET['type'])?2:$_GET['type'];

$sql = "select translate_id from translate where controller='{$C}'";
$result = select($mysqli,$sql);


// $category_sql = "select * from category,new where category_id = new_type";
// $category_result = select_complex($mysqli,$category_sql);

if(A == 'index'){
	$p = empty($_GET['page'])?1:$_GET['page'];
	$new_count = "select count(*) as count from new where new_type = $type and new_state=1";
	$new_res = select($mysqli,$new_count);
	$num = $new_res['count'];
}elseif(A == 'news-details'){
	$new_id = $_GET['newid'];

	$sql1 = "select * from new where new_type=$type and new_id=$new_id";
	$result1 = select($mysqli,$sql1);

	$result1['entry_time'] = date('Ymd H:i:s',$result1['entry_time']);
	$acc = $result1['new_acc'];
	$sql2 = "update new set new_acc=$acc+1 where new_id=$new_id";
	$mysqli -> query($sql2);
}







// echo '<pre>';
// var_dump($category_result);die;
include ST.DS.M.DS.C.DS.A.H;

?>