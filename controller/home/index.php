<?php

$sql = "select translate_id from translate where controller='{$C}'";
$result = select($mysqli,$sql);


$new_sql = "select * from new where new_state=1 order by new_id desc limit 0,3";
$new_result = select_complex($mysqli,$new_sql);
$len = count($new_result);
	for($i=0;$i < $len;$i++){   //时间
		$new_result[$i]['entry_time'] = date('Ymd H:i:s',$new_result[$i]['entry_time']);
		$new_result[$i]['niantime'] = substr($new_result[$i]['entry_time'],0,4);
		$new_result[$i]['yuetime'] = substr($new_result[$i]['entry_time'],4,2);
		$new_result[$i]['ritime'] = substr($new_result[$i]['entry_time'],6,2);
	}

$product_sql = "select * from product order by product_id desc limit 0,6";
$product_result = select_complex($mysqli,$product_sql);

$contact_sql = "select * from contact where contact_id=1";
$contact_result = select($mysqli,$contact_sql);
// echo "<pre>";
// var_dump($contact_result);die;

include ST.DS.M.DS.C.DS.A.H;

?>