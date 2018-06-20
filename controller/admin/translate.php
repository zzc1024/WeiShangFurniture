<?php 

if(A == 'index'){
	$sql = "select * from translate";
	$result = select_complex($mysqli,$sql);
}elseif(A == 'edit'){
	if($_POST){
		$data = $_POST;
		$result = modify($mysqli,$data,'translate','translate_sort');
		if($result){
			$info = [
				'code'=>1,
				'message'=>'修改成功',
				'url'=>'index.php?mot=admin&ctl=translate&act=index'
			];
			exit(json_encode($info));
		}else{
			$info = [
				'code'=>2,
				'message'=>'修改失败'
			];
			exit(json_encode($info));
		}
	}
	$sql = "select * from translate where translate_sort='{$_GET['sort']}'";
	$result = select($mysqli,$sql);

}

include ST.DS.M.DS.C.DS.A.H;

?>