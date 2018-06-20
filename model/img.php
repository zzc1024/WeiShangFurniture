<?php

//缩略图
function thumimg($file,$tfile,$width=379,$height=283){

	$img = getimagesize($file);//获取图片资源 
	$mime = explode('/',$img['mime']);//图片格式
	// var_dump($img);die;
	$name = 'imagecreatefrom'.$mime[1];
	$image = $name($file);
	//原图转换资源 imagecreatefrom+文件后缀名(文件路径)
	// echo $image;die;
	$ig = imagecreatetruecolor($width,$height);
	//创建画布
	imagecopyresized($ig,$image,0,0,0,0,$width,$height,$img[0],$img[1]);
	//把原图复制放在画布上 imagecopyresized(画布，原图路径，x轴 0，y轴 0 ，z轴0 ，角度 0，缩略图宽，高，原图宽，原图高)
	$fun2 = 'image'.$mime[1];
	$fun2($ig,$tfile);
	imagedestroy($ig);
	//图片输出 image+后缀名（jpg,png,gif） 销毁 imagedestroy(图片资源)
	return $tfile;
}

//水印
function waterimg($file,$wfile){
	// echo $file;echo $wfile;die;
	$img = getimagesize($file);
	$mime = explode('/',$img['mime']);
	$fun_name = 'imagecreatefrom'.$mime[1];
	$image = $fun_name($file);

	//水印资源
	$wimg = getimagesize($wfile);
	$wmime = explode('/',$wimg['mime']);
	$fun_name1 = 'imagecreatefrom'.$wmime[1];
	$wimage = $fun_name1($wfile);

	//imagecopy( 目标图像, 被拷贝的源图像, 目标图像开始x坐标, y坐标，x,y同为0则从左上角开始, 拷贝图像开始x坐标, y坐标,（从拷贝图像开始 x 坐标开始）拷贝的宽度, （从 src_y 开始）拷贝的高度 )
	imagecopy($image,$wimage,0,0,0,0,$wimg[0],$wimg[1]);
	$fun2 = 'image'.$mime[1];
	$fun2($image,$file);
	imagedestroy($image);
	imagedestroy($wimage);

	return $file;
}


?>