<?php

$type = empty($_GET['type'])?12:$_GET['type'];
$sql = "select translate_id from translate where controller='{$C}'";
$result = select($mysqli,$sql);


if(A == 'index'){
	// $product_sql = "select product_id,product_name,product_number,product_type,product_img from product where product_type=$type and product_state=0 order by product_id desc";
	// $product_result = select_complex($mysqli,$product_sql);

	$p = empty($_GET['page'])?1:$_GET['page'];
	$product_count = "select count(*) as count from product where product_type = $type and product_state=0";
	$product_res = select($mysqli,$product_count);
	$num = $product_res['count'];
// echo $num;die;
	$product_result = product_new($num,4,$p,$mysqli,$type);

}elseif(A == 'pro-details'){
	$sql1 = "select * from product where product_type=$type and product_state=0";
	$result1 = select_complex($mysqli,$sql1);
	$len =  count($result1);
	
	$product_id = $_GET['productid'];

	
}

include ST.DS.M.DS.C.DS.A.H;

?>