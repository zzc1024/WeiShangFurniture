<?php 

function hear_translate($id,$M,$C,$A){   //前台头部封装
	global $mysqli;
	$translate_sql = "select * from translate order by translate_sort";
	$translate_result = select_complex($mysqli,$translate_sql);

	$hear = '<div class="header">
				<a href="index.php?mot=home&ctl=index&act=index"><img src="'.PN.'images/logo.png"></a>
			    <div class="nav">
			    	<ul>';
	foreach($translate_result as $k => $v){
		if($id == $v['translate_id']){
			$hear.='<li><a href="index.php?mot=home&ctl='.$v['controller'].'&act='.$v['action'].'&id='.$v['translate_id'].'" class="on">'.$v['translate_name'].'</a></li>';
		}else{
			$hear.='<li><a href="index.php?mot=home&ctl='.$v['controller'].'&act='.$v['action'].'&id='.$v['translate_id'].'">'.$v['translate_name'].'</a></li>';
		}
	}
	$hear .= '</ul>
			    </div>
			</div>';
	echo $hear;
}


function hear_banner($sort){  //前台banner封装
	global $mysqli;

	$banner_sql = "select * from banner where banner_grouping=$sort";
	$banner_result = select_complex($mysqli,$banner_sql);
	// echo "<pre>";
	// var_dump($banner_result);die;
	$banner = '<div id="banner"><ul>';
    
	foreach($banner_result as $key => $val){
		$banner .= '<li><img src="'.$val['banner_img'].'"></li>';
	}

	$banner .= '</ul>
    <div id="num">
    <a href="javascript:" class="on"></a>
    <a href="javascript:"></a>
    <a href="javascript:"></a>
    </div>
</div>';

	echo $banner;
}

function footer_translate($mysqli){   //前端尾部封装
	$sql = "select * from category where category_pid=0";
	$result = select_complex($mysqli,$sql);

	foreach ($result as $key => $value) {
		if(is_array($value)){
			$sql = "select * from category where category_pid='{$value['category_id']}'";
			$result[$key]['next'] = select_complex($mysqli,$sql);
		}
	}

	$footer = '<div class="footer">
 	<div class="warpper">
		<div class="footer-menu">';

	foreach($result as $k => $v){
		$footer.= '<dl><dt>'.$v['category_name'];
		foreach ($v['next'] as $k1 => $v1) {
			$footer.= '<dd><a>'.$v1['category_name'].'</a></dd>';
		}
		$footer.= '</dl>';
	}
	$footer .= '<dl>
             	<dt>联系我们</dt>
 			</dl>
             </div>
         <div class="code">
 			<img src="'.PN.'images/wx_03.jpg">
         	<h3>威尚家具有限公司</h3>
 		</div>
 	</div>
 		<p>COPYRIGHT©2017 威尚家具有限公司 版权所有</p>

 </div>';

 	echo $footer;
}

function body_new($num,$fnum,$p,$mysqli,$type,$url){  //新闻分页数据
	
	$page = ceil($num/$fnum);
	$p<0 ? $p=1:$p;
	$p>$page ? $p=$page:$p;
	$start = ($p-1)*$fnum;

	$new_sql = "select * from new where new_type = $type and new_state=1 order by new_id desc limit $start,$fnum";
	$new_result = select_complex($mysqli,$new_sql);
	$len = count($new_result);
	for($i=0;$i < $len;$i++){   //时间
		$new_result[$i]['entry_time'] = date('Ymd H:i:s',$new_result[$i]['entry_time']);
		$new_result[$i]['niantime'] = substr($new_result[$i]['entry_time'],0,4);
		$new_result[$i]['yuetime'] = substr($new_result[$i]['entry_time'],4,2);
		$new_result[$i]['ritime'] = substr($new_result[$i]['entry_time'],6,2);
	}

	// $translate_sql = "select * from translate";
	// $translate_result = select_complex($mysqli,$translate_sql);

	$body_new = '<ul>';

	foreach($new_result as $k => $v){
		$body_new .= '<li>
		 		<div class="date" >
		 			<h2>'.$v['niantime'].'<br><span>'.$v['yuetime'].$v['ritime'].'</span></h2>
		 		</div>
		 		<h2>
		 			<a href="'.$url.'&newid='.$v['new_id'].'&type='.$type.'" >'.$v['new_title'].'</a>
		 		</h2>
		 		<p>'.$v['new_abstract'].'</p>
		 	</li>';
	}
	$body_new .= '</ul>';

	echo $body_new;

}

function product_new($num,$fnum,$p,$mysqli,$type){  //产品分页数据
	
	$page = ceil($num/$fnum);
	$p<0 ? $p=1:$p;
	$p= $p>$page ? $page:$p;
	$start = ($p-1)*$fnum;

	$sql = "select * from product where product_type = $type and product_state=0 order by product_id desc limit $start,$fnum";
	$result = select_complex($mysqli,$sql);

	return $result;
}
       //new_page(     3,   $p,"url", 4,   9,  $mysqli, 12)
function new_page($pageshow,$p,$url,$fnum,$num,$mysqli,$type){  //分页页数显示
	$pagenum = ceil($num/$fnum);//总数除以每页显示数据，得到总页数 3

	// $startpage = ($p-1)*$fnum;      //当前页减1，乘每页显示数据，得到初始页

	$page = '';
	$orev = '';

	$prev = $p<1?1:$p-1;      //上一页，当前页大于1的话等于当前页减1
	if($p == 1){
		$page.= '<li><a class="action">首页</a></li>';
	}else{
		$page.= '<li><a href="'.$url.'&type='.$type.'&page=1">首页</a></li><li><a href="'.$url.'&type='.$type.'&page='.$prev.'">上一页</a></li>';
	}

	$offset = floor($pageshow/2);//偏移量等于显示页数除以2向下取整 1

	if($pageshow<$pagenum){ //显示页数小于总页数时 3<3
		if($p>$offset){	//当前页大于偏移量时

			if($p > $pagenum-$offset){	//当前页大于 总页数减偏移量时
				$start = $pagenum - $pageshow + 1; //初始页等于 总页数减显示页数减1
				$end_page = $pagenum; //尾页数等于总页数
			}else{                     //否则
				$start = $p - $offset; 	//初始页等于 当前页减偏移量
				$end_page = $p + $offset; //尾页数等于 当前页加偏移量
			}
		}elseif($p<=$offset){			//当前页小于或等于偏移量时		
			$start = 1;					// 初始页等于1
			$end_page = $pageshow;		//尾页数等于显示页数
		}
	}else{						//显示页数不小于总页数时
		$pageshow = $pagenum;  	//显示页数等于总页数 3
		$end_page = $pageshow;
		$start = 1;
	}
 // echo ' 总页数='.$pagenum;echo ' 当前页='.$p;echo ' 偏移量='.$offset;echo ' 显示页数='.$pageshow;
 	if($pagenum!=$pageshow){
		$page .= $p>$offset+1 ? '<li><a>...</a></li>':''; 
	}
	
	for($i = $start;$i<=$end_page;$i++){ //$i等于初始页；$i小于或等于尾页数时；$i加加
		if($i == $p){ 	//$i等于当前页时
        	$page .= '<li><a class="on">'.$i.'</a></li>';
        }else{
        	$page .= '<li><a href="'.$url.'&type='.$type.'&page='.$i.'">'.$i.'</a></li>';
        }
	}
	if($pagenum!=$pageshow){
		$page .= $p<$pagenum-$offset ? '<li><a>...</a></li>':'';
	}
	
	
	$next = $p + 1;
	$next = $next > $pagenum? $pagenum : $next;

	if($p == $pagenum){
		$page.= '<li><a>末页</a></li>';
	}else{
		$page.='<li><a href="'.$url.'&type='.$type.'&page='.$next.'">下一页</a></li><li><a href="'.$url.'&type='.$type.'&page='.$pagenum.'">末页</a></li>';
	}

	echo $page;
}


function sidebar($mysqli,$title,$title_name,$id_name,$pid_name,$type,$url,$file='*'){   //侧边栏

	$sql = "select $pid_name from $title where $id_name=$type";
	$result = select($mysqli,$sql);
	$pid = $result["$pid_name"];

	$sql1 = "select $file from $title";
	$result1 = select_complex($mysqli,$sql1);
	
	foreach ($result1 as $key => $value) {
		if(is_array($value)){
			$sql2 = "select $id_name,$title_name from $title where $pid_name={$value["$id_name"]}";
			$result1[$key]['next'] = select_complex($mysqli,$sql2);
		}
	}

	$sidebar = '';
	foreach ($result1 as $k => $v) {
		if($v["$id_name"] == $pid){
			$sidebar .= '<h2>'.$v["$title_name"].'</h2><ul>';
			foreach ($v["next"] as $k1 => $v1) {
				if($type == $v1["$id_name"]){
					$sidebar .= '<li><a href="'.$url.'&type='.$v1["$id_name"].'" class="on">'.$v1["$title_name"].'</a></li>';
				}else{
					$sidebar .= '<li><a href="'.$url.'&type='.$v1["$id_name"].'">'.$v1["$title_name"].'</a></li>';
				}	
			}
			$sidebar .= '</ul>';
		}
	}

	echo $sidebar;
}


function position($mysqli,$C,$A,$type){  //当前位置
	$sql = "select * from translate,category where category_name=translate_name";
	$result = select_complex($mysqli,$sql);

	$sql1 = "select * from category where category_id=$type";
	$result1 = select($mysqli,$sql1);

	$position = '<h2>'.$result1['category_name'].'</h2><div class="location"><span>当前位置:</span>';
	
	foreach ($result as $k => $v) {
		if($v['controller'] == $C && $v['action'] == $A){
			$position.= '<a href="index.php?mot=home&ctl=index&act=index">首页</a>&gt;<a href="index.php?mot=home&ctl='.$C.'&act='.$A.'">'.$v['category_name'].'</a>&gt;';
		}
	}
	$position.= '<a href="#" class="on">'.$result1['category_name'].'</a></div>';
	
	echo $position;
}

?>

