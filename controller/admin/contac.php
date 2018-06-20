<?php  
	
if(A == 'index'){
	$sql = "select * from contac";
	$result = select_complex($mysqli,$sql);
	$len = count($result);
	//把时间转换格式
	for($i=0;$i < $len;$i++){
		$result[$i]['contac_time'] = date('Ymd H:i:s',$result[$i]['contac_time']);
	}
}elseif(A == 'contact'){
	if($_POST){
		$data = $_POST;
		$results = modify($mysqli,$data,'contact','contact_id');
		if($results){
			$info = [
				'code'=>1,
				'message'=>'修改成功',
				'url'=>'index.php?mot=admin&ctl=contac&act=contact'
			];
			exit(json_encode($info));
		}else{
			$info = [
				'code'=>1,
				'message'=>'修改失败',
				'url'=>'index.php?mot=admin&ctl=contac&act=contact'
			];
			exit(json_encode($info));
		}
	}
	$sql = "select * from contact where contact_id=1";
	$result = select($mysqli,$sql);
}
	

	include ST.DS.M.DS.C.DS.A.H;
	
?>