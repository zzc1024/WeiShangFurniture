<?php

$sql = "select translate_id from translate where controller='{$C}'";
$result = select($mysqli,$sql);

$p = empty($_GET['page'])?1:$_GET['page'];
$type = empty($_GET['type'])?19:$_GET['type'];

$about_sql = "select * from about";
$about_result = select_complex($mysqli,$about_sql);

include ST.DS.M.DS.C.DS.A.H;

?>