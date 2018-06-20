-- phpMyAdmin SQL Dump
-- version phpStudy 2014
-- http://www.phpmyadmin.net
--
-- 主机: localhost
-- 生成日期: 2018 年 05 月 05 日 07:56
-- 服务器版本: 5.5.53
-- PHP 版本: 5.4.45

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- 数据库: `zhu`
--

-- --------------------------------------------------------

--
-- 表的结构 `about`
--

CREATE TABLE IF NOT EXISTS `about` (
  `about_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `about_img` char(50) NOT NULL COMMENT '图片地址',
  `about_text` text NOT NULL COMMENT '内容',
  `about_pid` tinyint(3) NOT NULL,
  PRIMARY KEY (`about_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=26 ;

--
-- 转存表中的数据 `about`
--

INSERT INTO `about` (`about_id`, `about_img`, `about_text`, `about_pid`) VALUES
(19, 'public/201805059758.jpg', '<p style="margin-top: 45px; margin-right: 10px; margin-bottom: 15px; padding: 0px; width: 870px; float: right; text-indent: 2em; font-family: 微软雅黑; font-size: 14px; line-height: 24px; white-space: normal;">威尚家具有限责任公司始创于1994年，是集家具研发、生产、营销、服务为一体的大型综合性企业。拥有北京、河北两大生产基地， 占地面积48万平方米，员工1500余人，全国加盟店400余家，销售网络遍布全国。德国品质，是百强家具三代人的传承。从原材料把关开 始，参考德国百年家具企业现行标准，对生产流程、售后服务等环节逐一制订严谨的质量把控体系。并斥资在国内率先引进德国豪迈家具生产 流水线，形成完整生产链。也因此顺利通过ISO9001质量管理体系认证及ISO14001环境管理体系认证。23年的大跨越发展，百强家具始终 坚守原创设计，以强大的设计研发团队为后盾，以国际著名家具设计大师为助力，以“视设计为灵魂，视质量为生命” 为企业精神，拓展研发 出黑森林、新德堡、马丁、美仑•漫步、哈利木屋、欧福莱、全屋定制等七大系列畅销家具。</p><p style="margin-top: 45px; margin-right: 10px; margin-bottom: 15px; padding: 0px; width: 870px; float: right; text-indent: 2em; font-family: 微软雅黑; font-size: 14px; line-height: 24px; white-space: normal;">威尚家具有限公司主要针对酒店、宾馆、会议、会所、别墅、企业单位量身定制各类：高档电动桌，宴会桌，宴会椅，会议桌，会议椅， 餐厅布草，台布椅套，客房家具，各类影院椅，娱乐家具，卡座沙发，ktv卡座沙发，各类肯德基快餐桌椅，咖啡厅，酒吧桌椅等各类桌椅家 具。“客户第一、信誉至上、质量为先”是威尚家具对客户的承诺，也是威尚家具的精神，为客户提供从设计、生产到安装配套一条龙服务， 并对产品保修保用，质量追踪。以优质的专业品质为客户创造舒适化、现代化、极富价值的休闲环境。</p><p style="margin-top: 45px; margin-right: 10px; margin-bottom: 15px; padding: 0px; width: 870px; float: right; text-indent: 2em; font-family: 微软雅黑; font-size: 14px; line-height: 24px; white-space: normal;">威尚家具凭借强大的品牌优势及良好的质量口碑，被任命为中国家具协会常任理事单位、中国家具协会实木家具专业委员会副主任单位、 北京家具行业协会执行会长单位。秉承“追逐梦想，对话世界”的企业愿景，致力于将企业打造为中国家具行业百年荣誉品牌。百强家具， 就是要让每一位中国人都能用上德国品质中国造的家具。</p><p><br/></p>', 19),
(20, 'public/201805054824.jpg', '<p style="margin-top: 45px; margin-right: 10px; margin-bottom: 15px; padding: 0px; width: 870px; float: right; text-indent: 2em; font-family: 微软雅黑; font-size: 14px; line-height: 24px; white-space: normal;">威尚家具有限责任公司始创于1994年，是集家具研发、生产、营销、服务为一体的大型综合性企业。拥有北京、河北两大生产基地， 占地面积48万平方米，员工1500余人，全国加盟店400余家，销售网络遍布全国。德国品质，是百强家具三代人的传承。从原材料把关开 始，参考德国百年家具企业现行标准，对生产流程、售后服务等环节逐一制订严谨的质量把控体系。并斥资在国内率先引进德国豪迈家具生产 流水线，形成完整生产链。也因此顺利通过ISO9001质量管理体系认证及ISO14001环境管理体系认证。23年的大跨越发展，百强家具始终 坚守原创设计，以强大的设计研发团队为后盾，以国际著名家具设计大师为助力，以“视设计为灵魂，视质量为生命” 为企业精神，拓展研发 出黑森林、新德堡、马丁、美仑•漫步、哈利木屋、欧福莱、全屋定制等七大系列畅销家具。</p><p style="margin-top: 45px; margin-right: 10px; margin-bottom: 15px; padding: 0px; width: 870px; float: right; text-indent: 2em; font-family: 微软雅黑; font-size: 14px; line-height: 24px; white-space: normal;">威尚家具有限公司主要针对酒店、宾馆、会议、会所、别墅、企业单位量身定制各类：高档电动桌，宴会桌，宴会椅，会议桌，会议椅， 餐厅布草，台布椅套，客房家具，各类影院椅，娱乐家具，卡座沙发，ktv卡座沙发，各类肯德基快餐桌椅，咖啡厅，酒吧桌椅等各类桌椅家 具。“客户第一、信誉至上、质量为先”是威尚家具对客户的承诺，也是威尚家具的精神，为客户提供从设计、生产到安装配套一条龙服务， 并对产品保修保用，质量追踪。以优质的专业品质为客户创造舒适化、现代化、极富价值的休闲环境。</p><p style="margin-top: 45px; margin-right: 10px; margin-bottom: 15px; padding: 0px; width: 870px; float: right; text-indent: 2em; font-family: 微软雅黑; font-size: 14px; line-height: 24px; white-space: normal;">威尚家具凭借强大的品牌优势及良好的质量口碑，被任命为中国家具协会常任理事单位、中国家具协会实木家具专业委员会副主任单位、 北京家具行业协会执行会长单位。秉承“追逐梦想，对话世界”的企业愿景，致力于将企业打造为中国家具行业百年荣誉品牌。百强家具， 就是要让每一位中国人都能用上德国品质中国造的家具。</p><p><br/></p>', 20),
(21, 'public/201805051166.jpg', '<p style="margin-top: 45px; margin-right: 10px; margin-bottom: 15px; padding: 0px; width: 870px; float: right; text-indent: 2em; font-family: 微软雅黑; font-size: 14px; line-height: 24px; white-space: normal;">威尚家具有限责任公司始创于1994年，是集家具研发、生产、营销、服务为一体的大型综合性企业。拥有北京、河北两大生产基地， 占地面积48万平方米，员工1500余人，全国加盟店400余家，销售网络遍布全国。德国品质，是百强家具三代人的传承。从原材料把关开 始，参考德国百年家具企业现行标准，对生产流程、售后服务等环节逐一制订严谨的质量把控体系。并斥资在国内率先引进德国豪迈家具生产 流水线，形成完整生产链。也因此顺利通过ISO9001质量管理体系认证及ISO14001环境管理体系认证。23年的大跨越发展，百强家具始终 坚守原创设计，以强大的设计研发团队为后盾，以国际著名家具设计大师为助力，以“视设计为灵魂，视质量为生命” 为企业精神，拓展研发 出黑森林、新德堡、马丁、美仑•漫步、哈利木屋、欧福莱、全屋定制等七大系列畅销家具。</p><p style="margin-top: 45px; margin-right: 10px; margin-bottom: 15px; padding: 0px; width: 870px; float: right; text-indent: 2em; font-family: 微软雅黑; font-size: 14px; line-height: 24px; white-space: normal;">威尚家具有限公司主要针对酒店、宾馆、会议、会所、别墅、企业单位量身定制各类：高档电动桌，宴会桌，宴会椅，会议桌，会议椅， 餐厅布草，台布椅套，客房家具，各类影院椅，娱乐家具，卡座沙发，ktv卡座沙发，各类肯德基快餐桌椅，咖啡厅，酒吧桌椅等各类桌椅家 具。“客户第一、信誉至上、质量为先”是威尚家具对客户的承诺，也是威尚家具的精神，为客户提供从设计、生产到安装配套一条龙服务， 并对产品保修保用，质量追踪。以优质的专业品质为客户创造舒适化、现代化、极富价值的休闲环境。</p><p style="margin-top: 45px; margin-right: 10px; margin-bottom: 15px; padding: 0px; width: 870px; float: right; text-indent: 2em; font-family: 微软雅黑; font-size: 14px; line-height: 24px; white-space: normal;">威尚家具凭借强大的品牌优势及良好的质量口碑，被任命为中国家具协会常任理事单位、中国家具协会实木家具专业委员会副主任单位、 北京家具行业协会执行会长单位。秉承“追逐梦想，对话世界”的企业愿景，致力于将企业打造为中国家具行业百年荣誉品牌。百强家具， 就是要让每一位中国人都能用上德国品质中国造的家具。</p><p><br/></p>', 21),
(22, 'public/201805027090.jpg', '<p style="margin-top: 45px; margin-right: 10px; margin-bottom: 15px; padding: 0px; width: 870px; float: right; text-indent: 2em; font-family: 微软雅黑; font-size: 14px; line-height: 24px; white-space: normal;">威尚家具有限责任公司始创于1994年，是集家具研发、生产、营销、服务为一体的大型综合性企业。拥有北京、河北两大生产基地， 占地面积48万平方米，员工1500余人，全国加盟店400余家，销售网络遍布全国。德国品质，是百强家具三代人的传承。从原材料把关开 始，参考德国百年家具企业现行标准，对生产流程、售后服务等环节逐一制订严谨的质量把控体系。并斥资在国内率先引进德国豪迈家具生产 流水线，形成完整生产链。也因此顺利通过ISO9001质量管理体系认证及ISO14001环境管理体系认证。23年的大跨越发展，百强家具始终 坚守原创设计，以强大的设计研发团队为后盾，以国际著名家具设计大师为助力，以“视设计为灵魂，视质量为生命” 为企业精神，拓展研发 出黑森林、新德堡、马丁、美仑•漫步、哈利木屋、欧福莱、全屋定制等七大系列畅销家具。</p><p style="margin-top: 45px; margin-right: 10px; margin-bottom: 15px; padding: 0px; width: 870px; float: right; text-indent: 2em; font-family: 微软雅黑; font-size: 14px; line-height: 24px; white-space: normal;">威尚家具有限公司主要针对酒店、宾馆、会议、会所、别墅、企业单位量身定制各类：高档电动桌，宴会桌，宴会椅，会议桌，会议椅， 餐厅布草，台布椅套，客房家具，各类影院椅，娱乐家具，卡座沙发，ktv卡座沙发，各类肯德基快餐桌椅，咖啡厅，酒吧桌椅等各类桌椅家 具。“客户第一、信誉至上、质量为先”是威尚家具对客户的承诺，也是威尚家具的精神，为客户提供从设计、生产到安装配套一条龙服务， 并对产品保修保用，质量追踪。以优质的专业品质为客户创造舒适化、现代化、极富价值的休闲环境。</p><p style="margin-top: 45px; margin-right: 10px; margin-bottom: 15px; padding: 0px; width: 870px; float: right; text-indent: 2em; font-family: 微软雅黑; font-size: 14px; line-height: 24px; white-space: normal;">威尚家具凭借强大的品牌优势及良好的质量口碑，被任命为中国家具协会常任理事单位、中国家具协会实木家具专业委员会副主任单位、 北京家具行业协会执行会长单位。秉承“追逐梦想，对话世界”的企业愿景，致力于将企业打造为中国家具行业百年荣誉品牌。百强家具， 就是要让每一位中国人都能用上德国品质中国造的家具。</p><p><br/></p>', 22),
(25, 'public/201805052832.jpg', '<p>12321312</p>', 23);

-- --------------------------------------------------------

--
-- 表的结构 `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `ID` int(10) NOT NULL AUTO_INCREMENT COMMENT '管理员ID',
  `admin_account` varchar(20) NOT NULL COMMENT '管理员账号',
  `admin_pass` varchar(40) NOT NULL COMMENT '管理员密码',
  `admin_name` varchar(20) NOT NULL COMMENT '昵称',
  `admin_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '管理员状态',
  `admin_sex` tinyint(3) NOT NULL COMMENT '性别',
  `phone` char(11) NOT NULL COMMENT '手机号',
  `e_mail` varchar(40) NOT NULL COMMENT '邮箱',
  `register_time` int(10) NOT NULL COMMENT '注册时间',
  `admin_level` tinyint(3) NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ID` (`ID`),
  UNIQUE KEY `admin_account` (`admin_account`),
  UNIQUE KEY `admin_name` (`admin_name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=98 ;

--
-- 转存表中的数据 `admin`
--

INSERT INTO `admin` (`ID`, `admin_account`, `admin_pass`, `admin_name`, `admin_state`, `admin_sex`, `phone`, `e_mail`, `register_time`, `admin_level`) VALUES
(92, 'zhuzhicheng1', 'd8dc540bbb072fc7e359cc6727575e2f', '超管', 0, 1, '13435123180', '1095395035@qq.com', 1524206189, 21),
(93, 'laohua123', 'd8dc540bbb072fc7e359cc6727575e2f', '老化', 0, 0, '13435123180', '1095395035@qq.com', 1524206392, 22),
(94, 'xiaoming123', 'd8dc540bbb072fc7e359cc6727575e2f', '小明', 0, 0, '13435123180', '1095395035@qq.com', 1524206531, 24);

-- --------------------------------------------------------

--
-- 表的结构 `banner`
--

CREATE TABLE IF NOT EXISTS `banner` (
  `banner_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '横幅id',
  `banner_grouping` varchar(20) NOT NULL COMMENT '分组',
  `banner_img` char(50) NOT NULL COMMENT '图片链接',
  PRIMARY KEY (`banner_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=32 ;

--
-- 转存表中的数据 `banner`
--

INSERT INTO `banner` (`banner_id`, `banner_grouping`, `banner_img`) VALUES
(12, '1', 'public/201804282651.jpg'),
(14, '1', 'public/201804286649.jpg'),
(15, '1', 'public/201804306280.jpg'),
(18, '2', 'public/201804308957.jpg'),
(19, '2', 'public/201804308088.jpg'),
(20, '2', 'public/201804304259.jpg'),
(21, '3', 'public/201804309254.jpg'),
(22, '3', 'public/201804309031.jpg'),
(23, '3', 'public/201804309923.jpg'),
(24, '4', 'public/201804306926.jpg'),
(25, '4', 'public/201804301202.jpg'),
(26, '4', 'public/201804309439.png'),
(29, '5', 'public/201804308601.jpg'),
(30, '5', 'public/201805047692.jpg'),
(31, '5', 'public/201805044279.jpg');

-- --------------------------------------------------------

--
-- 表的结构 `category`
--

CREATE TABLE IF NOT EXISTS `category` (
  `category_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '分类ID',
  `category_pid` int(11) NOT NULL COMMENT '分类父ID',
  `category_name` varchar(20) NOT NULL COMMENT '分类名称',
  PRIMARY KEY (`category_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=24 ;

--
-- 转存表中的数据 `category`
--

INSERT INTO `category` (`category_id`, `category_pid`, `category_name`) VALUES
(1, 0, '新闻中心'),
(2, 1, '行业资讯'),
(3, 1, '公司动态'),
(4, 1, '公益活动'),
(5, 0, '产品中心'),
(12, 5, '客房家居'),
(13, 5, '娱乐家具'),
(14, 5, '卡座沙发'),
(15, 5, '快餐桌椅'),
(16, 5, '桌椅家具'),
(17, 5, '办公桌椅'),
(18, 0, '关于我们'),
(19, 18, '公司简介'),
(20, 18, '企业文化'),
(21, 18, '老板致辞'),
(22, 18, '公司架构'),
(23, 18, '公司荣誉');

-- --------------------------------------------------------

--
-- 表的结构 `contac`
--

CREATE TABLE IF NOT EXISTS `contac` (
  `contac_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '留言ID',
  `contac_name` varchar(20) NOT NULL COMMENT '姓名',
  `contac_qq` varchar(20) NOT NULL COMMENT 'qq/微信',
  `contac_telephone` char(11) NOT NULL COMMENT '电话',
  `contac_address` char(50) NOT NULL COMMENT '地址',
  `contac_mail` varchar(40) NOT NULL COMMENT '邮箱',
  `contac_message` text NOT NULL COMMENT '留言',
  `contac_time` char(10) NOT NULL,
  PRIMARY KEY (`contac_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- 转存表中的数据 `contac`
--

INSERT INTO `contac` (`contac_id`, `contac_name`, `contac_qq`, `contac_telephone`, `contac_address`, `contac_mail`, `contac_message`, `contac_time`) VALUES
(5, '猪', '1095395035', '13435123180', '广东省韶关市曲江区马坝中学', '1095395035@qq.com', '按时千万人群无广发核心。然后是还有多少抬头发我。天无二日全文阿萨德刚玩阿斯顿发送到。啊啊搜嘎安全软件如图', '1525345991'),
(6, '猪', '1095395035', '13435123180', '广东省韶关市曲江区马坝中学', '1095395035@qq.com', '按时千万人群无广发核心。然后是还有多少抬头发我。天无二日全文阿萨德刚玩阿斯顿发送到。啊啊搜嘎安全软件如图', '1525346064'),
(7, '猪', '1095395035', '13435123180', '广东省韶关市曲江区马坝中学', '1095395035@qq.com', '按时千万人群无广发核心。然后是还有多少抬头发我。天无二日全文阿萨德刚玩阿斯顿发送到。啊啊搜嘎安全软件如图', '1525346291'),
(8, '朱志城', '10953965030219', '13435123180', '韶关市曲江区', '1095395035@qq.com', '刘安顺家阿合格尽量少带孩子安徽天空蓝，柜台汇款吧阿萨斯。埃尔文群发多少付撒多付付付付付付付付付付付付付付付付感受得到多多多多多多多多多多多多多多付。阿斯顿发多多多多多多多哦囖囖囖囖囖囖咯啦·1', '1525346688'),
(9, '朱志城', '10953959035', '13435123180', '地址请问千万人', '1095395@qq.com', 'qasjgojass简单干净奥斯去年啊啊啦联发科，砂砾石地采暖，的萨拉国家', '1525347055');

-- --------------------------------------------------------

--
-- 表的结构 `contact`
--

CREATE TABLE IF NOT EXISTS `contact` (
  `contact_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `contact_code` char(5) NOT NULL COMMENT '邮编',
  `contact_fax` char(11) NOT NULL COMMENT '传真',
  `contact_hotline` char(11) NOT NULL COMMENT '服务热线',
  `contact_mail` varchar(40) NOT NULL COMMENT '电子邮箱',
  `contact_address` char(50) NOT NULL COMMENT '地址',
  PRIMARY KEY (`contact_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `contact`
--

INSERT INTO `contact` (`contact_id`, `contact_code`, `contact_fax`, `contact_hotline`, `contact_mail`, `contact_address`) VALUES
(1, '36102', '1592 361000', '0592 364218', 'www.weishang.com', '福建省厦门市集美区集美大道1300号');

-- --------------------------------------------------------

--
-- 表的结构 `level`
--

CREATE TABLE IF NOT EXISTS `level` (
  `level_id` int(11) NOT NULL AUTO_INCREMENT,
  `level_name` varchar(20) NOT NULL,
  `level_arr` text NOT NULL,
  PRIMARY KEY (`level_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=27 ;

--
-- 转存表中的数据 `level`
--

INSERT INTO `level` (`level_id`, `level_name`, `level_arr`) VALUES
(21, '超管', '["1","19","2","22","3","23","4","24","5","21","6","20","7","26","8","25","27","28","29","30","31","32"]'),
(22, '主编', '["2","22","3","23","4","24","8"]'),
(23, '人事', '["1","19","3","23"]'),
(25, '产品经理', '["3","23","4","24"]'),
(26, '普通管理员', '["1","19"]');

-- --------------------------------------------------------

--
-- 表的结构 `menu`
--

CREATE TABLE IF NOT EXISTS `menu` (
  `menu_id` int(4) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `menu_name` varchar(20) CHARACTER SET utf32 NOT NULL COMMENT '标题名字',
  `menu_pid` int(4) NOT NULL COMMENT '层次',
  `create_time` int(10) NOT NULL COMMENT '创建时间',
  `menu_sore` tinyint(5) NOT NULL,
  `controller` varchar(10) CHARACTER SET utf32 NOT NULL COMMENT '控制器文件',
  `action` varchar(10) CHARACTER SET utf32 NOT NULL COMMENT '视图文件',
  PRIMARY KEY (`menu_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=34 ;

--
-- 转存表中的数据 `menu`
--

INSERT INTO `menu` (`menu_id`, `menu_name`, `menu_pid`, `create_time`, `menu_sore`, `controller`, `action`) VALUES
(1, '管理员管理', 0, 0, 0, 'role', ''),
(2, '新闻管理', 0, 0, 0, 'new', ''),
(3, '分类管理', 0, 0, 0, 'category', ''),
(4, '产品管理', 0, 0, 0, 'product', ''),
(5, '菜单管理', 0, 0, 0, 'menu', ''),
(6, '权限管理', 0, 0, 0, 'level', ''),
(7, 'banner管理', 0, 0, 0, '', ''),
(8, '水印管理', 0, 0, 0, '', ''),
(19, '管理员列表', 1, 0, 0, 'role', 'index'),
(20, '角色列表', 6, 0, 0, 'level', 'index'),
(21, '菜单列表', 5, 0, 0, 'menu', 'index'),
(22, '新闻列表', 2, 0, 0, 'new', 'index'),
(23, '分类列表', 3, 0, 0, 'category', 'index'),
(24, '产品列表', 4, 0, 0, 'product', 'index'),
(25, '修改水印', 8, 0, 0, 'watermark', 'index'),
(26, 'banner列表', 7, 0, 0, 'banner', 'index'),
(27, '导航栏管理', 0, 0, 0, '', ''),
(28, '导航列表', 27, 0, 0, 'translate', 'index'),
(29, '关于我们', 0, 0, 0, '', ''),
(30, '内容管理', 29, 0, 0, 'about', 'index'),
(31, '联系我们', 0, 0, 0, '', ''),
(32, '用户留言', 31, 0, 0, 'contac', 'index'),
(33, '内容修改', 31, 0, 0, 'contac', 'contact');

-- --------------------------------------------------------

--
-- 表的结构 `new`
--

CREATE TABLE IF NOT EXISTS `new` (
  `new_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '新闻ID',
  `new_title` varchar(30) NOT NULL DEFAULT '' COMMENT '新闻标题',
  `new_type` int(11) NOT NULL DEFAULT '1',
  `new_author` varchar(20) NOT NULL COMMENT '新闻作者',
  `new_state` tinyint(3) NOT NULL DEFAULT '1' COMMENT '状态',
  `new_abstract` text NOT NULL COMMENT '新闻摘要',
  `new_textarea` text NOT NULL COMMENT '新闻内容',
  `new_thu` char(50) NOT NULL DEFAULT '' COMMENT '缩略图',
  `new_people` varchar(20) NOT NULL DEFAULT '' COMMENT '添加人员',
  `release_time` int(10) NOT NULL DEFAULT '1234567890' COMMENT '发布时间',
  `entry_time` int(10) NOT NULL DEFAULT '1234567890' COMMENT '创建时间',
  `new_acc` int(10) NOT NULL DEFAULT '0' COMMENT '访问量',
  PRIMARY KEY (`new_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=112 ;

--
-- 转存表中的数据 `new`
--

INSERT INTO `new` (`new_id`, `new_title`, `new_type`, `new_author`, `new_state`, `new_abstract`, `new_textarea`, `new_thu`, `new_people`, `release_time`, `entry_time`, `new_acc`) VALUES
(77, '“双十一”成转型关键节点 家居企业战备升级', 2, '超管', 1, '据了解，在电商平台多次创下销售纪录的“淘品牌”林氏木业，正在将产业链向线下延伸，欲借“双十一”加\r\n速新零售布局;而罗莱家纺、美克家居等传统家居企业则在紧锣密鼓地触网，推出更多适应电商发展的互联网品牌。', '<p style="margin-top: 35px; margin-right: 35px; margin-bottom: 0px; padding: 0px; line-height: 25px; clear: both; font-size: medium; font-family: 微软雅黑; color: rgb(51, 51, 51); letter-spacing: -1px; white-space: normal;">据了解，在电商平台多次创下销售纪录的“淘品牌”林氏木业，正在将产业链向线下延伸，欲借“双十一”加速新零售布局;而 罗莱家纺、美克家居等传统家居企业则在紧锣密鼓地触网，推出更多适应电商发展的互联网品牌。事实上，在这场企业与消费 者的狂欢中，也隐藏了诸多企业的营销逻辑与发展战略。尤其是在2017年前三季度表现欠佳的企业，似乎将“双十一”当作完 成该年销售目标的重要筹码。为巩固在“双十一”中的声势与地位，企业拿销量换市场的做法也屡见不鲜.</p><p style="margin-top: 35px; margin-right: 35px; margin-bottom: 0px; padding: 0px; line-height: 25px; clear: both; font-size: medium; font-family: 微软雅黑; color: rgb(51, 51, 51); letter-spacing: -1px; white-space: normal;">对此，多位业内专家向《中国经营报》记者分析，由于“双十一”价格战激烈，且企业为了扩大销售额而加大促销力度，很可 能出现增收不增利的现象。</p><p style="margin-top: 35px; margin-right: 35px; margin-bottom: 0px; padding: 0px; line-height: 25px; clear: both; font-size: medium; font-family: 微软雅黑; color: rgb(51, 51, 51); letter-spacing: -1px; white-space: normal;">记者分别就此采访了林氏木业、罗莱生活、美克美家等相关企业，试图进一步了解它们的“双十一”应对计划，以及低价扩大 销量的同时，如何保证利润等相关问题，截至记者发稿，暂未获得对方回复。</p><p style="margin-top: 35px; margin-right: 35px; margin-bottom: 0px; padding: 0px; line-height: 25px; clear: both; font-size: medium; font-family: 微软雅黑; color: rgb(51, 51, 51); letter-spacing: -1px; white-space: normal;">欲借“双十一”加速转型</p><p style="margin-top: 35px; margin-right: 35px; margin-bottom: 0px; padding: 0px; line-height: 25px; clear: both; font-size: medium; font-family: 微软雅黑; color: rgb(51, 51, 51); letter-spacing: -1px; white-space: normal;">在今年的“双十一”前夕，“淘品牌”林氏木业与天猫开启了在全域营销、大数据用户画像、全渠道营销等业务的深度合作， 试图更精准地获取消费者需求痛点。</p><p style="margin-top: 35px; margin-right: 35px; margin-bottom: 0px; padding: 0px; line-height: 25px; clear: both; font-size: medium; font-family: 微软雅黑; color: rgb(51, 51, 51); letter-spacing: -1px; white-space: normal;">据了解，2007年5月，林氏木业正式在淘宝开张。彼时林氏木业做的是“倒手炒货”生意，即在厂家选款拍照上传网店，待消 费者下单，由厂家直接发货，从而稳赚中间的经销差价，销量也连续多年领先行业。</p><p style="margin-top: 35px; margin-right: 35px; margin-bottom: 0px; padding: 0px; line-height: 25px; clear: both; font-size: medium; font-family: 微软雅黑; color: rgb(51, 51, 51); letter-spacing: -1px; white-space: normal;">然而，十年之后的今天，林氏木业已经不满足“流量大户”的身份。自去年“新零售”概念被提出后，2017年便成为“新零售 元年”，今年“双十一”自然也成为新零售最重要的检验场，多个线下体验店迅速在城市之间开设。从其创立十周年之际，提 出的“家居空间解决方案智造者”的崭新定位，也可窥得十年后林氏木业的转型诉求。</p><p style="margin-top: 35px; margin-right: 35px; margin-bottom: 0px; padding: 0px; line-height: 25px; clear: both; font-size: medium; font-family: 微软雅黑; color: rgb(51, 51, 51); letter-spacing: -1px; white-space: normal;">中国家具协会理事长、亚洲家具联合会会长朱长岭此前接受记者采访时指出，现在的林氏木业发生了巨大的变化，已经不是单 纯的电商企业，而是变成了家具产品的营销商，很多品牌企业向其供应产品，“林氏木业在顺德建立了大型的立体仓库，充分 利用互联网优势，转变成了一个大型的网络经销商。另外，它通过大数据进行的结算、货物管理在家具行业中都是先进的，周 转速度也很快。”</p><p style="margin-top: 35px; margin-right: 35px; margin-bottom: 0px; padding: 0px; line-height: 25px; clear: both; font-size: medium; font-family: 微软雅黑; color: rgb(51, 51, 51); letter-spacing: -1px; white-space: normal;">事实上，电商企业不满足网上销售的同时，传统家居企业也不满足仅仅掌握线下交易渠道。朱长岭表示，电商是家具销售的新 方式，也已经成为现在80后、90后热衷的购物方式，因此很多大型家具企业相继进入电子商务市场，如华日、光明、顾家家居、 尚品宅配、索菲亚、欧派等等，这些传统家具企业都在借助电商进行产品销售。</p><p style="margin-top: 35px; margin-right: 35px; margin-bottom: 0px; padding: 0px; line-height: 25px; clear: both; font-size: medium; font-family: 微软雅黑; color: rgb(51, 51, 51); letter-spacing: -1px; white-space: normal;">据悉，本年度“双十一”，罗莱生活线上品牌LOVO家纺产品除了普通降价销售外，还有秒杀及预售产品。其中，按照天猫官网 介绍，预售产品采取预付定金，“双十一”当天付尾款，随后组织生产，于11月30日前发货的机制。不过，罗莱生活客服表示， 为了不耽误发货，产品实际上是已经生产好的，并非客户下单后按需生产。</p><p style="margin-top: 35px; margin-right: 35px; margin-bottom: 0px; padding: 0px; line-height: 25px; clear: both; font-size: medium; font-family: 微软雅黑; color: rgb(51, 51, 51); letter-spacing: -1px; white-space: normal;">美克家居也在11月初推出了互联网定制品牌恣在家Zest Home。据美克国际家居用品股份有限公司副总经理赵晶介绍，“恣在 家Zest Home”是基于模块化自定制设计的互联网线上品牌，重新定义了定制家居、定制风格及定制时尚的概念，致力于“为 你定制梦想”，既秉承了美克家居一贯的高端品质，又融合了年轻个性的设计理念。</p><p style="margin-top: 35px; margin-right: 35px; margin-bottom: 0px; padding: 0px; line-height: 25px; clear: both; font-size: medium; font-family: 微软雅黑; color: rgb(51, 51, 51); letter-spacing: -1px; white-space: normal;">抓住财年尾巴拿销量换市场</p><p style="margin-top: 35px; margin-right: 35px; margin-bottom: 0px; padding: 0px; line-height: 25px; clear: both; font-size: medium; font-family: 微软雅黑; color: rgb(51, 51, 51); letter-spacing: -1px; white-space: normal;">不过，在商家卖货出货忙的同时，创下的市场有多大、利润有多高仍然是企业经营需要考虑的问题。</p><p style="margin-top: 35px; margin-right: 35px; margin-bottom: 0px; padding: 0px; line-height: 25px; clear: both; font-size: medium; font-family: 微软雅黑; color: rgb(51, 51, 51); letter-spacing: -1px; white-space: normal;">2013年“双十一”时，林氏木业以1.6亿元的销售额创造家具类目单天销量过亿纪录;2016年“双十一”，这一销售额已经增长 到6.1亿元，连续四年稳居天猫家具类目的第一名。来自中国电子商务研究中心发布的《2016年度中国网络零售市场数据监测报 告》显示，预估2016年全网数百家淘品牌整体市场交易规模达千亿元级别，而林氏木业2016年的营收已超百亿元。也就是说， “双十一”当天的销售额，几乎能够占到林氏木业全年营收的五六个百分点。</p><p style="margin-top: 35px; margin-right: 35px; margin-bottom: 0px; padding: 0px; line-height: 25px; clear: both; font-size: medium; font-family: 微软雅黑; color: rgb(51, 51, 51); letter-spacing: -1px; white-space: normal;">2016年天猫“双十一”大战中，罗莱生活旗下的罗莱电商全网总销量2.088亿元，问鼎家纺类目冠军，天猫罗莱家纺官方旗舰 店蝉联“双十一”家纺类目销售五连冠。至此，LOVO终于成功挑战自己定下的两个亿“小目标”，也是家纺行业首家成功挤进 “双十一”单天销量超两亿元的企业。</p><p style="margin-top: 35px; margin-right: 35px; margin-bottom: 0px; padding: 0px; line-height: 25px; clear: both; font-size: medium; font-family: 微软雅黑; color: rgb(51, 51, 51); letter-spacing: -1px; white-space: normal;">另据2016年罗莱生活年报数据显示，当年总营收为31.52亿元，分季度来看，四个季度营业额分别为7.63亿元、5.80亿元、8.12 亿元、9.97亿元。也就是说，包含“双十一”购物节在内的第四季度营收最高，占总营收比例达到31.63%。不过，尽管第四季 度营收较高，但其归属于上市公司股东的净利润仅有第一、第三季度的五成，为5784万元，占总净利润的18.23%。</p><p style="margin-top: 35px; margin-right: 35px; margin-bottom: 0px; padding: 0px; line-height: 25px; clear: both; font-size: medium; font-family: 微软雅黑; color: rgb(51, 51, 51); letter-spacing: -1px; white-space: normal;">对此情况，中国电子商务研究中心主任曹磊表示，天猫发起的这个“双十一”购物节，对商家来讲，理论上是要求半价的。但 是按照实际的经验来看不可能有这么高的利润空间，所以很多产品价格前期都有调整。对于家居建材行业，倒是省去了仓储、运 输、线下场地装修等环节。</p><p style="margin-top: 35px; margin-right: 35px; margin-bottom: 0px; padding: 0px; line-height: 25px; clear: both; font-size: medium; font-family: 微软雅黑; color: rgb(51, 51, 51); letter-spacing: -1px; white-space: normal;">不过，由于“双十一”的电商平台，竞争对手来自全国各地，价格战也就在所难免。“双十一”正值年底，各个企业都希望在 这期间清理库存，回笼资金以便第二年投入生产，“对家居企业来讲，冲销量换市场有时候是为了维持在行业里面的领先地位。 因为你不卖掉别人也会卖掉，那么你的库存就变大了，资金压力也变大了，而且还会加速竞争对手的份额扩张”，曹磊向《中国 经营报》记者指出，对于一些上市公司或者拟上市公司，尽量把财报中的销售额做大也是企业非常看重的问题，这也是企业愿意 拿销量换市场的原因。</p><p><br/></p>', 'public/201805054147.jpg', '', 1234567890, 1524897899, 125),
(78, '家居双十一 别踩了那些貌似优惠的雷', 2, '超管', 1, '不只是日用消耗品，家具、建材、家纺、小家\r\n电等产品，这两年也频频登上双十一的销量榜。', '<p style="margin-top: 35px; margin-right: 35px; margin-bottom: 0px; padding: 0px; line-height: 25px; clear: both; font-size: medium; font-family: 微软雅黑; color: rgb(51, 51, 51); letter-spacing: -1px; white-space: normal;">据了解，在电商平台多次创下销售纪录的“淘品牌”林氏木业，正在将产业链向线下延伸，欲借“双十一”加速新零售布局;而 罗莱家纺、美克家居等传统家居企业则在紧锣密鼓地触网，推出更多适应电商发展的互联网品牌。事实上，在这场企业与消费 者的狂欢中，也隐藏了诸多企业的营销逻辑与发展战略。尤其是在2017年前三季度表现欠佳的企业，似乎将“双十一”当作完 成该年销售目标的重要筹码。为巩固在“双十一”中的声势与地位，企业拿销量换市场的做法也屡见不鲜.</p><p style="margin-top: 35px; margin-right: 35px; margin-bottom: 0px; padding: 0px; line-height: 25px; clear: both; font-size: medium; font-family: 微软雅黑; color: rgb(51, 51, 51); letter-spacing: -1px; white-space: normal;">对此，多位业内专家向《中国经营报》记者分析，由于“双十一”价格战激烈，且企业为了扩大销售额而加大促销力度，很可 能出现增收不增利的现象。</p><p style="margin-top: 35px; margin-right: 35px; margin-bottom: 0px; padding: 0px; line-height: 25px; clear: both; font-size: medium; font-family: 微软雅黑; color: rgb(51, 51, 51); letter-spacing: -1px; white-space: normal;">记者分别就此采访了林氏木业、罗莱生活、美克美家等相关企业，试图进一步了解它们的“双十一”应对计划，以及低价扩大 销量的同时，如何保证利润等相关问题，截至记者发稿，暂未获得对方回复。</p><p style="margin-top: 35px; margin-right: 35px; margin-bottom: 0px; padding: 0px; line-height: 25px; clear: both; font-size: medium; font-family: 微软雅黑; color: rgb(51, 51, 51); letter-spacing: -1px; white-space: normal;">欲借“双十一”加速转型</p><p style="margin-top: 35px; margin-right: 35px; margin-bottom: 0px; padding: 0px; line-height: 25px; clear: both; font-size: medium; font-family: 微软雅黑; color: rgb(51, 51, 51); letter-spacing: -1px; white-space: normal;">在今年的“双十一”前夕，“淘品牌”林氏木业与天猫开启了在全域营销、大数据用户画像、全渠道营销等业务的深度合作， 试图更精准地获取消费者需求痛点。</p><p style="margin-top: 35px; margin-right: 35px; margin-bottom: 0px; padding: 0px; line-height: 25px; clear: both; font-size: medium; font-family: 微软雅黑; color: rgb(51, 51, 51); letter-spacing: -1px; white-space: normal;">据了解，2007年5月，林氏木业正式在淘宝开张。彼时林氏木业做的是“倒手炒货”生意，即在厂家选款拍照上传网店，待消 费者下单，由厂家直接发货，从而稳赚中间的经销差价，销量也连续多年领先行业。</p><p style="margin-top: 35px; margin-right: 35px; margin-bottom: 0px; padding: 0px; line-height: 25px; clear: both; font-size: medium; font-family: 微软雅黑; color: rgb(51, 51, 51); letter-spacing: -1px; white-space: normal;">然而，十年之后的今天，林氏木业已经不满足“流量大户”的身份。自去年“新零售”概念被提出后，2017年便成为“新零售 元年”，今年“双十一”自然也成为新零售最重要的检验场，多个线下体验店迅速在城市之间开设。从其创立十周年之际，提 出的“家居空间解决方案智造者”的崭新定位，也可窥得十年后林氏木业的转型诉求。</p><p style="margin-top: 35px; margin-right: 35px; margin-bottom: 0px; padding: 0px; line-height: 25px; clear: both; font-size: medium; font-family: 微软雅黑; color: rgb(51, 51, 51); letter-spacing: -1px; white-space: normal;">中国家具协会理事长、亚洲家具联合会会长朱长岭此前接受记者采访时指出，现在的林氏木业发生了巨大的变化，已经不是单 纯的电商企业，而是变成了家具产品的营销商，很多品牌企业向其供应产品，“林氏木业在顺德建立了大型的立体仓库，充分 利用互联网优势，转变成了一个大型的网络经销商。另外，它通过大数据进行的结算、货物管理在家具行业中都是先进的，周 转速度也很快。”</p><p style="margin-top: 35px; margin-right: 35px; margin-bottom: 0px; padding: 0px; line-height: 25px; clear: both; font-size: medium; font-family: 微软雅黑; color: rgb(51, 51, 51); letter-spacing: -1px; white-space: normal;">事实上，电商企业不满足网上销售的同时，传统家居企业也不满足仅仅掌握线下交易渠道。朱长岭表示，电商是家具销售的新 方式，也已经成为现在80后、90后热衷的购物方式，因此很多大型家具企业相继进入电子商务市场，如华日、光明、顾家家居、 尚品宅配、索菲亚、欧派等等，这些传统家具企业都在借助电商进行产品销售。</p><p style="margin-top: 35px; margin-right: 35px; margin-bottom: 0px; padding: 0px; line-height: 25px; clear: both; font-size: medium; font-family: 微软雅黑; color: rgb(51, 51, 51); letter-spacing: -1px; white-space: normal;">据悉，本年度“双十一”，罗莱生活线上品牌LOVO家纺产品除了普通降价销售外，还有秒杀及预售产品。其中，按照天猫官网 介绍，预售产品采取预付定金，“双十一”当天付尾款，随后组织生产，于11月30日前发货的机制。不过，罗莱生活客服表示， 为了不耽误发货，产品实际上是已经生产好的，并非客户下单后按需生产。</p><p style="margin-top: 35px; margin-right: 35px; margin-bottom: 0px; padding: 0px; line-height: 25px; clear: both; font-size: medium; font-family: 微软雅黑; color: rgb(51, 51, 51); letter-spacing: -1px; white-space: normal;">美克家居也在11月初推出了互联网定制品牌恣在家Zest Home。据美克国际家居用品股份有限公司副总经理赵晶介绍，“恣在 家Zest Home”是基于模块化自定制设计的互联网线上品牌，重新定义了定制家居、定制风格及定制时尚的概念，致力于“为 你定制梦想”，既秉承了美克家居一贯的高端品质，又融合了年轻个性的设计理念。</p><p style="margin-top: 35px; margin-right: 35px; margin-bottom: 0px; padding: 0px; line-height: 25px; clear: both; font-size: medium; font-family: 微软雅黑; color: rgb(51, 51, 51); letter-spacing: -1px; white-space: normal;">抓住财年尾巴拿销量换市场</p><p style="margin-top: 35px; margin-right: 35px; margin-bottom: 0px; padding: 0px; line-height: 25px; clear: both; font-size: medium; font-family: 微软雅黑; color: rgb(51, 51, 51); letter-spacing: -1px; white-space: normal;">不过，在商家卖货出货忙的同时，创下的市场有多大、利润有多高仍然是企业经营需要考虑的问题。</p><p style="margin-top: 35px; margin-right: 35px; margin-bottom: 0px; padding: 0px; line-height: 25px; clear: both; font-size: medium; font-family: 微软雅黑; color: rgb(51, 51, 51); letter-spacing: -1px; white-space: normal;">2013年“双十一”时，林氏木业以1.6亿元的销售额创造家具类目单天销量过亿纪录;2016年“双十一”，这一销售额已经增长 到6.1亿元，连续四年稳居天猫家具类目的第一名。来自中国电子商务研究中心发布的《2016年度中国网络零售市场数据监测报 告》显示，预估2016年全网数百家淘品牌整体市场交易规模达千亿元级别，而林氏木业2016年的营收已超百亿元。也就是说， “双十一”当天的销售额，几乎能够占到林氏木业全年营收的五六个百分点。</p><p style="margin-top: 35px; margin-right: 35px; margin-bottom: 0px; padding: 0px; line-height: 25px; clear: both; font-size: medium; font-family: 微软雅黑; color: rgb(51, 51, 51); letter-spacing: -1px; white-space: normal;">2016年天猫“双十一”大战中，罗莱生活旗下的罗莱电商全网总销量2.088亿元，问鼎家纺类目冠军，天猫罗莱家纺官方旗舰 店蝉联“双十一”家纺类目销售五连冠。至此，LOVO终于成功挑战自己定下的两个亿“小目标”，也是家纺行业首家成功挤进 “双十一”单天销量超两亿元的企业。</p><p style="margin-top: 35px; margin-right: 35px; margin-bottom: 0px; padding: 0px; line-height: 25px; clear: both; font-size: medium; font-family: 微软雅黑; color: rgb(51, 51, 51); letter-spacing: -1px; white-space: normal;">另据2016年罗莱生活年报数据显示，当年总营收为31.52亿元，分季度来看，四个季度营业额分别为7.63亿元、5.80亿元、8.12 亿元、9.97亿元。也就是说，包含“双十一”购物节在内的第四季度营收最高，占总营收比例达到31.63%。不过，尽管第四季 度营收较高，但其归属于上市公司股东的净利润仅有第一、第三季度的五成，为5784万元，占总净利润的18.23%。</p><p style="margin-top: 35px; margin-right: 35px; margin-bottom: 0px; padding: 0px; line-height: 25px; clear: both; font-size: medium; font-family: 微软雅黑; color: rgb(51, 51, 51); letter-spacing: -1px; white-space: normal;">对此情况，中国电子商务研究中心主任曹磊表示，天猫发起的这个“双十一”购物节，对商家来讲，理论上是要求半价的。但 是按照实际的经验来看不可能有这么高的利润空间，所以很多产品价格前期都有调整。对于家居建材行业，倒是省去了仓储、运 输、线下场地装修等环节。</p><p style="margin-top: 35px; margin-right: 35px; margin-bottom: 0px; padding: 0px; line-height: 25px; clear: both; font-size: medium; font-family: 微软雅黑; color: rgb(51, 51, 51); letter-spacing: -1px; white-space: normal;">不过，由于“双十一”的电商平台，竞争对手来自全国各地，价格战也就在所难免。“双十一”正值年底，各个企业都希望在 这期间清理库存，回笼资金以便第二年投入生产，“对家居企业来讲，冲销量换市场有时候是为了维持在行业里面的领先地位。 因为你不卖掉别人也会卖掉，那么你的库存就变大了，资金压力也变大了，而且还会加速竞争对手的份额扩张”，曹磊向《中国 经营报》记者指出，对于一些上市公司或者拟上市公司，尽量把财报中的销售额做大也是企业非常看重的问题，这也是企业愿意 拿销量换市场的原因。</p><p><br/></p>', 'public/201804285741.jpg', '', 1234567890, 1524897956, 125),
(79, '【新浪家居取经双十一】顾家家居“玩出品质、玩出格调”', 2, '超管', 1, '一年一度的双十一狂欢即将如期而至，在这场与消费者的互动狂欢\r\n中，家居品牌如何能突破单一、疲软的卖卖卖模式，做出自己的特色呢？', '<p style="margin-top: 35px; margin-right: 35px; margin-bottom: 0px; padding: 0px; line-height: 25px; clear: both; font-size: medium; font-family: 微软雅黑; color: rgb(51, 51, 51); letter-spacing: -1px; white-space: normal;">据了解，在电商平台多次创下销售纪录的“淘品牌”林氏木业，正在将产业链向线下延伸，欲借“双十一”加速新零售布局;而 罗莱家纺、美克家居等传统家居企业则在紧锣密鼓地触网，推出更多适应电商发展的互联网品牌。事实上，在这场企业与消费 者的狂欢中，也隐藏了诸多企业的营销逻辑与发展战略。尤其是在2017年前三季度表现欠佳的企业，似乎将“双十一”当作完 成该年销售目标的重要筹码。为巩固在“双十一”中的声势与地位，企业拿销量换市场的做法也屡见不鲜.</p><p style="margin-top: 35px; margin-right: 35px; margin-bottom: 0px; padding: 0px; line-height: 25px; clear: both; font-size: medium; font-family: 微软雅黑; color: rgb(51, 51, 51); letter-spacing: -1px; white-space: normal;">对此，多位业内专家向《中国经营报》记者分析，由于“双十一”价格战激烈，且企业为了扩大销售额而加大促销力度，很可 能出现增收不增利的现象。</p><p style="margin-top: 35px; margin-right: 35px; margin-bottom: 0px; padding: 0px; line-height: 25px; clear: both; font-size: medium; font-family: 微软雅黑; color: rgb(51, 51, 51); letter-spacing: -1px; white-space: normal;">记者分别就此采访了林氏木业、罗莱生活、美克美家等相关企业，试图进一步了解它们的“双十一”应对计划，以及低价扩大 销量的同时，如何保证利润等相关问题，截至记者发稿，暂未获得对方回复。</p><p style="margin-top: 35px; margin-right: 35px; margin-bottom: 0px; padding: 0px; line-height: 25px; clear: both; font-size: medium; font-family: 微软雅黑; color: rgb(51, 51, 51); letter-spacing: -1px; white-space: normal;">欲借“双十一”加速转型</p><p style="margin-top: 35px; margin-right: 35px; margin-bottom: 0px; padding: 0px; line-height: 25px; clear: both; font-size: medium; font-family: 微软雅黑; color: rgb(51, 51, 51); letter-spacing: -1px; white-space: normal;">在今年的“双十一”前夕，“淘品牌”林氏木业与天猫开启了在全域营销、大数据用户画像、全渠道营销等业务的深度合作， 试图更精准地获取消费者需求痛点。</p><p style="margin-top: 35px; margin-right: 35px; margin-bottom: 0px; padding: 0px; line-height: 25px; clear: both; font-size: medium; font-family: 微软雅黑; color: rgb(51, 51, 51); letter-spacing: -1px; white-space: normal;">据了解，2007年5月，林氏木业正式在淘宝开张。彼时林氏木业做的是“倒手炒货”生意，即在厂家选款拍照上传网店，待消 费者下单，由厂家直接发货，从而稳赚中间的经销差价，销量也连续多年领先行业。</p><p style="margin-top: 35px; margin-right: 35px; margin-bottom: 0px; padding: 0px; line-height: 25px; clear: both; font-size: medium; font-family: 微软雅黑; color: rgb(51, 51, 51); letter-spacing: -1px; white-space: normal;">然而，十年之后的今天，林氏木业已经不满足“流量大户”的身份。自去年“新零售”概念被提出后，2017年便成为“新零售 元年”，今年“双十一”自然也成为新零售最重要的检验场，多个线下体验店迅速在城市之间开设。从其创立十周年之际，提 出的“家居空间解决方案智造者”的崭新定位，也可窥得十年后林氏木业的转型诉求。</p><p style="margin-top: 35px; margin-right: 35px; margin-bottom: 0px; padding: 0px; line-height: 25px; clear: both; font-size: medium; font-family: 微软雅黑; color: rgb(51, 51, 51); letter-spacing: -1px; white-space: normal;">中国家具协会理事长、亚洲家具联合会会长朱长岭此前接受记者采访时指出，现在的林氏木业发生了巨大的变化，已经不是单 纯的电商企业，而是变成了家具产品的营销商，很多品牌企业向其供应产品，“林氏木业在顺德建立了大型的立体仓库，充分 利用互联网优势，转变成了一个大型的网络经销商。另外，它通过大数据进行的结算、货物管理在家具行业中都是先进的，周 转速度也很快。”</p><p style="margin-top: 35px; margin-right: 35px; margin-bottom: 0px; padding: 0px; line-height: 25px; clear: both; font-size: medium; font-family: 微软雅黑; color: rgb(51, 51, 51); letter-spacing: -1px; white-space: normal;">事实上，电商企业不满足网上销售的同时，传统家居企业也不满足仅仅掌握线下交易渠道。朱长岭表示，电商是家具销售的新 方式，也已经成为现在80后、90后热衷的购物方式，因此很多大型家具企业相继进入电子商务市场，如华日、光明、顾家家居、 尚品宅配、索菲亚、欧派等等，这些传统家具企业都在借助电商进行产品销售。</p><p style="margin-top: 35px; margin-right: 35px; margin-bottom: 0px; padding: 0px; line-height: 25px; clear: both; font-size: medium; font-family: 微软雅黑; color: rgb(51, 51, 51); letter-spacing: -1px; white-space: normal;">据悉，本年度“双十一”，罗莱生活线上品牌LOVO家纺产品除了普通降价销售外，还有秒杀及预售产品。其中，按照天猫官网 介绍，预售产品采取预付定金，“双十一”当天付尾款，随后组织生产，于11月30日前发货的机制。不过，罗莱生活客服表示， 为了不耽误发货，产品实际上是已经生产好的，并非客户下单后按需生产。</p><p style="margin-top: 35px; margin-right: 35px; margin-bottom: 0px; padding: 0px; line-height: 25px; clear: both; font-size: medium; font-family: 微软雅黑; color: rgb(51, 51, 51); letter-spacing: -1px; white-space: normal;">美克家居也在11月初推出了互联网定制品牌恣在家Zest Home。据美克国际家居用品股份有限公司副总经理赵晶介绍，“恣在 家Zest Home”是基于模块化自定制设计的互联网线上品牌，重新定义了定制家居、定制风格及定制时尚的概念，致力于“为 你定制梦想”，既秉承了美克家居一贯的高端品质，又融合了年轻个性的设计理念。</p><p style="margin-top: 35px; margin-right: 35px; margin-bottom: 0px; padding: 0px; line-height: 25px; clear: both; font-size: medium; font-family: 微软雅黑; color: rgb(51, 51, 51); letter-spacing: -1px; white-space: normal;">抓住财年尾巴拿销量换市场</p><p style="margin-top: 35px; margin-right: 35px; margin-bottom: 0px; padding: 0px; line-height: 25px; clear: both; font-size: medium; font-family: 微软雅黑; color: rgb(51, 51, 51); letter-spacing: -1px; white-space: normal;">不过，在商家卖货出货忙的同时，创下的市场有多大、利润有多高仍然是企业经营需要考虑的问题。</p><p style="margin-top: 35px; margin-right: 35px; margin-bottom: 0px; padding: 0px; line-height: 25px; clear: both; font-size: medium; font-family: 微软雅黑; color: rgb(51, 51, 51); letter-spacing: -1px; white-space: normal;">2013年“双十一”时，林氏木业以1.6亿元的销售额创造家具类目单天销量过亿纪录;2016年“双十一”，这一销售额已经增长 到6.1亿元，连续四年稳居天猫家具类目的第一名。来自中国电子商务研究中心发布的《2016年度中国网络零售市场数据监测报 告》显示，预估2016年全网数百家淘品牌整体市场交易规模达千亿元级别，而林氏木业2016年的营收已超百亿元。也就是说， “双十一”当天的销售额，几乎能够占到林氏木业全年营收的五六个百分点。</p><p style="margin-top: 35px; margin-right: 35px; margin-bottom: 0px; padding: 0px; line-height: 25px; clear: both; font-size: medium; font-family: 微软雅黑; color: rgb(51, 51, 51); letter-spacing: -1px; white-space: normal;">2016年天猫“双十一”大战中，罗莱生活旗下的罗莱电商全网总销量2.088亿元，问鼎家纺类目冠军，天猫罗莱家纺官方旗舰 店蝉联“双十一”家纺类目销售五连冠。至此，LOVO终于成功挑战自己定下的两个亿“小目标”，也是家纺行业首家成功挤进 “双十一”单天销量超两亿元的企业。</p><p style="margin-top: 35px; margin-right: 35px; margin-bottom: 0px; padding: 0px; line-height: 25px; clear: both; font-size: medium; font-family: 微软雅黑; color: rgb(51, 51, 51); letter-spacing: -1px; white-space: normal;">另据2016年罗莱生活年报数据显示，当年总营收为31.52亿元，分季度来看，四个季度营业额分别为7.63亿元、5.80亿元、8.12 亿元、9.97亿元。也就是说，包含“双十一”购物节在内的第四季度营收最高，占总营收比例达到31.63%。不过，尽管第四季 度营收较高，但其归属于上市公司股东的净利润仅有第一、第三季度的五成，为5784万元，占总净利润的18.23%。</p><p style="margin-top: 35px; margin-right: 35px; margin-bottom: 0px; padding: 0px; line-height: 25px; clear: both; font-size: medium; font-family: 微软雅黑; color: rgb(51, 51, 51); letter-spacing: -1px; white-space: normal;">对此情况，中国电子商务研究中心主任曹磊表示，天猫发起的这个“双十一”购物节，对商家来讲，理论上是要求半价的。但 是按照实际的经验来看不可能有这么高的利润空间，所以很多产品价格前期都有调整。对于家居建材行业，倒是省去了仓储、运 输、线下场地装修等环节。</p><p style="margin-top: 35px; margin-right: 35px; margin-bottom: 0px; padding: 0px; line-height: 25px; clear: both; font-size: medium; font-family: 微软雅黑; color: rgb(51, 51, 51); letter-spacing: -1px; white-space: normal;">不过，由于“双十一”的电商平台，竞争对手来自全国各地，价格战也就在所难免。“双十一”正值年底，各个企业都希望在 这期间清理库存，回笼资金以便第二年投入生产，“对家居企业来讲，冲销量换市场有时候是为了维持在行业里面的领先地位。 因为你不卖掉别人也会卖掉，那么你的库存就变大了，资金压力也变大了，而且还会加速竞争对手的份额扩张”，曹磊向《中国 经营报》记者指出，对于一些上市公司或者拟上市公司，尽量把财报中的销售额做大也是企业非常看重的问题，这也是企业愿意 拿销量换市场的原因。</p><p><br/></p>', 'public/201804288457.jpg', '', 1234567890, 1524897992, 125),
(80, '没有一件奢华家具，但却能如此惊艳', 2, '超管', 1, 'White Bricks – Blue Wall Apartment 是位于以色列 Rosh HaAyin 的一座私人公寓，面积约为\r\n130平米，年轻的屋主夫妻追求简单、利落的快节奏生活，在聘请 EN Studio 为其改造时，便提出要..', '<p style="margin-top: 35px; margin-right: 35px; margin-bottom: 0px; padding: 0px; line-height: 25px; clear: both; font-size: medium; font-family: 微软雅黑; color: rgb(51, 51, 51); letter-spacing: -1px; white-space: normal;">据了解，在电商平台多次创下销售纪录的“淘品牌”林氏木业，正在将产业链向线下延伸，欲借“双十一”加速新零售布局;而 罗莱家纺、美克家居等传统家居企业则在紧锣密鼓地触网，推出更多适应电商发展的互联网品牌。事实上，在这场企业与消费 者的狂欢中，也隐藏了诸多企业的营销逻辑与发展战略。尤其是在2017年前三季度表现欠佳的企业，似乎将“双十一”当作完 成该年销售目标的重要筹码。为巩固在“双十一”中的声势与地位，企业拿销量换市场的做法也屡见不鲜.</p><p style="margin-top: 35px; margin-right: 35px; margin-bottom: 0px; padding: 0px; line-height: 25px; clear: both; font-size: medium; font-family: 微软雅黑; color: rgb(51, 51, 51); letter-spacing: -1px; white-space: normal;">对此，多位业内专家向《中国经营报》记者分析，由于“双十一”价格战激烈，且企业为了扩大销售额而加大促销力度，很可 能出现增收不增利的现象。</p><p style="margin-top: 35px; margin-right: 35px; margin-bottom: 0px; padding: 0px; line-height: 25px; clear: both; font-size: medium; font-family: 微软雅黑; color: rgb(51, 51, 51); letter-spacing: -1px; white-space: normal;">记者分别就此采访了林氏木业、罗莱生活、美克美家等相关企业，试图进一步了解它们的“双十一”应对计划，以及低价扩大 销量的同时，如何保证利润等相关问题，截至记者发稿，暂未获得对方回复。</p><p style="margin-top: 35px; margin-right: 35px; margin-bottom: 0px; padding: 0px; line-height: 25px; clear: both; font-size: medium; font-family: 微软雅黑; color: rgb(51, 51, 51); letter-spacing: -1px; white-space: normal;">欲借“双十一”加速转型</p><p style="margin-top: 35px; margin-right: 35px; margin-bottom: 0px; padding: 0px; line-height: 25px; clear: both; font-size: medium; font-family: 微软雅黑; color: rgb(51, 51, 51); letter-spacing: -1px; white-space: normal;">在今年的“双十一”前夕，“淘品牌”林氏木业与天猫开启了在全域营销、大数据用户画像、全渠道营销等业务的深度合作， 试图更精准地获取消费者需求痛点。</p><p style="margin-top: 35px; margin-right: 35px; margin-bottom: 0px; padding: 0px; line-height: 25px; clear: both; font-size: medium; font-family: 微软雅黑; color: rgb(51, 51, 51); letter-spacing: -1px; white-space: normal;">据了解，2007年5月，林氏木业正式在淘宝开张。彼时林氏木业做的是“倒手炒货”生意，即在厂家选款拍照上传网店，待消 费者下单，由厂家直接发货，从而稳赚中间的经销差价，销量也连续多年领先行业。</p><p style="margin-top: 35px; margin-right: 35px; margin-bottom: 0px; padding: 0px; line-height: 25px; clear: both; font-size: medium; font-family: 微软雅黑; color: rgb(51, 51, 51); letter-spacing: -1px; white-space: normal;">然而，十年之后的今天，林氏木业已经不满足“流量大户”的身份。自去年“新零售”概念被提出后，2017年便成为“新零售 元年”，今年“双十一”自然也成为新零售最重要的检验场，多个线下体验店迅速在城市之间开设。从其创立十周年之际，提 出的“家居空间解决方案智造者”的崭新定位，也可窥得十年后林氏木业的转型诉求。</p><p style="margin-top: 35px; margin-right: 35px; margin-bottom: 0px; padding: 0px; line-height: 25px; clear: both; font-size: medium; font-family: 微软雅黑; color: rgb(51, 51, 51); letter-spacing: -1px; white-space: normal;">中国家具协会理事长、亚洲家具联合会会长朱长岭此前接受记者采访时指出，现在的林氏木业发生了巨大的变化，已经不是单 纯的电商企业，而是变成了家具产品的营销商，很多品牌企业向其供应产品，“林氏木业在顺德建立了大型的立体仓库，充分 利用互联网优势，转变成了一个大型的网络经销商。另外，它通过大数据进行的结算、货物管理在家具行业中都是先进的，周 转速度也很快。”</p><p style="margin-top: 35px; margin-right: 35px; margin-bottom: 0px; padding: 0px; line-height: 25px; clear: both; font-size: medium; font-family: 微软雅黑; color: rgb(51, 51, 51); letter-spacing: -1px; white-space: normal;">事实上，电商企业不满足网上销售的同时，传统家居企业也不满足仅仅掌握线下交易渠道。朱长岭表示，电商是家具销售的新 方式，也已经成为现在80后、90后热衷的购物方式，因此很多大型家具企业相继进入电子商务市场，如华日、光明、顾家家居、 尚品宅配、索菲亚、欧派等等，这些传统家具企业都在借助电商进行产品销售。</p><p style="margin-top: 35px; margin-right: 35px; margin-bottom: 0px; padding: 0px; line-height: 25px; clear: both; font-size: medium; font-family: 微软雅黑; color: rgb(51, 51, 51); letter-spacing: -1px; white-space: normal;">据悉，本年度“双十一”，罗莱生活线上品牌LOVO家纺产品除了普通降价销售外，还有秒杀及预售产品。其中，按照天猫官网 介绍，预售产品采取预付定金，“双十一”当天付尾款，随后组织生产，于11月30日前发货的机制。不过，罗莱生活客服表示， 为了不耽误发货，产品实际上是已经生产好的，并非客户下单后按需生产。</p><p style="margin-top: 35px; margin-right: 35px; margin-bottom: 0px; padding: 0px; line-height: 25px; clear: both; font-size: medium; font-family: 微软雅黑; color: rgb(51, 51, 51); letter-spacing: -1px; white-space: normal;">美克家居也在11月初推出了互联网定制品牌恣在家Zest Home。据美克国际家居用品股份有限公司副总经理赵晶介绍，“恣在 家Zest Home”是基于模块化自定制设计的互联网线上品牌，重新定义了定制家居、定制风格及定制时尚的概念，致力于“为 你定制梦想”，既秉承了美克家居一贯的高端品质，又融合了年轻个性的设计理念。</p><p style="margin-top: 35px; margin-right: 35px; margin-bottom: 0px; padding: 0px; line-height: 25px; clear: both; font-size: medium; font-family: 微软雅黑; color: rgb(51, 51, 51); letter-spacing: -1px; white-space: normal;">抓住财年尾巴拿销量换市场</p><p style="margin-top: 35px; margin-right: 35px; margin-bottom: 0px; padding: 0px; line-height: 25px; clear: both; font-size: medium; font-family: 微软雅黑; color: rgb(51, 51, 51); letter-spacing: -1px; white-space: normal;">不过，在商家卖货出货忙的同时，创下的市场有多大、利润有多高仍然是企业经营需要考虑的问题。</p><p style="margin-top: 35px; margin-right: 35px; margin-bottom: 0px; padding: 0px; line-height: 25px; clear: both; font-size: medium; font-family: 微软雅黑; color: rgb(51, 51, 51); letter-spacing: -1px; white-space: normal;">2013年“双十一”时，林氏木业以1.6亿元的销售额创造家具类目单天销量过亿纪录;2016年“双十一”，这一销售额已经增长 到6.1亿元，连续四年稳居天猫家具类目的第一名。来自中国电子商务研究中心发布的《2016年度中国网络零售市场数据监测报 告》显示，预估2016年全网数百家淘品牌整体市场交易规模达千亿元级别，而林氏木业2016年的营收已超百亿元。也就是说， “双十一”当天的销售额，几乎能够占到林氏木业全年营收的五六个百分点。</p><p style="margin-top: 35px; margin-right: 35px; margin-bottom: 0px; padding: 0px; line-height: 25px; clear: both; font-size: medium; font-family: 微软雅黑; color: rgb(51, 51, 51); letter-spacing: -1px; white-space: normal;">2016年天猫“双十一”大战中，罗莱生活旗下的罗莱电商全网总销量2.088亿元，问鼎家纺类目冠军，天猫罗莱家纺官方旗舰 店蝉联“双十一”家纺类目销售五连冠。至此，LOVO终于成功挑战自己定下的两个亿“小目标”，也是家纺行业首家成功挤进 “双十一”单天销量超两亿元的企业。</p><p style="margin-top: 35px; margin-right: 35px; margin-bottom: 0px; padding: 0px; line-height: 25px; clear: both; font-size: medium; font-family: 微软雅黑; color: rgb(51, 51, 51); letter-spacing: -1px; white-space: normal;">另据2016年罗莱生活年报数据显示，当年总营收为31.52亿元，分季度来看，四个季度营业额分别为7.63亿元、5.80亿元、8.12 亿元、9.97亿元。也就是说，包含“双十一”购物节在内的第四季度营收最高，占总营收比例达到31.63%。不过，尽管第四季 度营收较高，但其归属于上市公司股东的净利润仅有第一、第三季度的五成，为5784万元，占总净利润的18.23%。</p><p style="margin-top: 35px; margin-right: 35px; margin-bottom: 0px; padding: 0px; line-height: 25px; clear: both; font-size: medium; font-family: 微软雅黑; color: rgb(51, 51, 51); letter-spacing: -1px; white-space: normal;">对此情况，中国电子商务研究中心主任曹磊表示，天猫发起的这个“双十一”购物节，对商家来讲，理论上是要求半价的。但 是按照实际的经验来看不可能有这么高的利润空间，所以很多产品价格前期都有调整。对于家居建材行业，倒是省去了仓储、运 输、线下场地装修等环节。</p><p style="margin-top: 35px; margin-right: 35px; margin-bottom: 0px; padding: 0px; line-height: 25px; clear: both; font-size: medium; font-family: 微软雅黑; color: rgb(51, 51, 51); letter-spacing: -1px; white-space: normal;">不过，由于“双十一”的电商平台，竞争对手来自全国各地，价格战也就在所难免。“双十一”正值年底，各个企业都希望在 这期间清理库存，回笼资金以便第二年投入生产，“对家居企业来讲，冲销量换市场有时候是为了维持在行业里面的领先地位。 因为你不卖掉别人也会卖掉，那么你的库存就变大了，资金压力也变大了，而且还会加速竞争对手的份额扩张”，曹磊向《中国 经营报》记者指出，对于一些上市公司或者拟上市公司，尽量把财报中的销售额做大也是企业非常看重的问题，这也是企业愿意 拿销量换市场的原因。</p><p><br/></p>', 'public/201804281210.jpg', '', 1234567890, 1524898056, 126);
INSERT INTO `new` (`new_id`, `new_title`, `new_type`, `new_author`, `new_state`, `new_abstract`, `new_textarea`, `new_thu`, `new_people`, `release_time`, `entry_time`, `new_acc`) VALUES
(81, '【风水】客厅风水轮的摆放位置 生财镇宅之宝', 2, '超管', 1, '风水轮是现在比较流行的催财摆件，将其放在客厅内，可以生财镇宅。但是如果摆放不当，那就会给整个住宅带来不吉。如果\r\n你也想在客厅内摆放风水轮，却又担心摆放不当，不如看一下下面的内容。今天，小编就为大家介绍一下客厅风水轮的摆放位置。', '<p style="margin-top: 35px; margin-right: 35px; margin-bottom: 0px; padding: 0px; line-height: 25px; clear: both; font-size: medium; font-family: 微软雅黑; color: rgb(51, 51, 51); letter-spacing: -1px; white-space: normal;">据了解，在电商平台多次创下销售纪录的“淘品牌”林氏木业，正在将产业链向线下延伸，欲借“双十一”加速新零售布局;而 罗莱家纺、美克家居等传统家居企业则在紧锣密鼓地触网，推出更多适应电商发展的互联网品牌。事实上，在这场企业与消费 者的狂欢中，也隐藏了诸多企业的营销逻辑与发展战略。尤其是在2017年前三季度表现欠佳的企业，似乎将“双十一”当作完 成该年销售目标的重要筹码。为巩固在“双十一”中的声势与地位，企业拿销量换市场的做法也屡见不鲜.</p><p style="margin-top: 35px; margin-right: 35px; margin-bottom: 0px; padding: 0px; line-height: 25px; clear: both; font-size: medium; font-family: 微软雅黑; color: rgb(51, 51, 51); letter-spacing: -1px; white-space: normal;">对此，多位业内专家向《中国经营报》记者分析，由于“双十一”价格战激烈，且企业为了扩大销售额而加大促销力度，很可 能出现增收不增利的现象。</p><p style="margin-top: 35px; margin-right: 35px; margin-bottom: 0px; padding: 0px; line-height: 25px; clear: both; font-size: medium; font-family: 微软雅黑; color: rgb(51, 51, 51); letter-spacing: -1px; white-space: normal;">记者分别就此采访了林氏木业、罗莱生活、美克美家等相关企业，试图进一步了解它们的“双十一”应对计划，以及低价扩大 销量的同时，如何保证利润等相关问题，截至记者发稿，暂未获得对方回复。</p><p style="margin-top: 35px; margin-right: 35px; margin-bottom: 0px; padding: 0px; line-height: 25px; clear: both; font-size: medium; font-family: 微软雅黑; color: rgb(51, 51, 51); letter-spacing: -1px; white-space: normal;">欲借“双十一”加速转型</p><p style="margin-top: 35px; margin-right: 35px; margin-bottom: 0px; padding: 0px; line-height: 25px; clear: both; font-size: medium; font-family: 微软雅黑; color: rgb(51, 51, 51); letter-spacing: -1px; white-space: normal;">在今年的“双十一”前夕，“淘品牌”林氏木业与天猫开启了在全域营销、大数据用户画像、全渠道营销等业务的深度合作， 试图更精准地获取消费者需求痛点。</p><p style="margin-top: 35px; margin-right: 35px; margin-bottom: 0px; padding: 0px; line-height: 25px; clear: both; font-size: medium; font-family: 微软雅黑; color: rgb(51, 51, 51); letter-spacing: -1px; white-space: normal;">据了解，2007年5月，林氏木业正式在淘宝开张。彼时林氏木业做的是“倒手炒货”生意，即在厂家选款拍照上传网店，待消 费者下单，由厂家直接发货，从而稳赚中间的经销差价，销量也连续多年领先行业。</p><p style="margin-top: 35px; margin-right: 35px; margin-bottom: 0px; padding: 0px; line-height: 25px; clear: both; font-size: medium; font-family: 微软雅黑; color: rgb(51, 51, 51); letter-spacing: -1px; white-space: normal;">然而，十年之后的今天，林氏木业已经不满足“流量大户”的身份。自去年“新零售”概念被提出后，2017年便成为“新零售 元年”，今年“双十一”自然也成为新零售最重要的检验场，多个线下体验店迅速在城市之间开设。从其创立十周年之际，提 出的“家居空间解决方案智造者”的崭新定位，也可窥得十年后林氏木业的转型诉求。</p><p style="margin-top: 35px; margin-right: 35px; margin-bottom: 0px; padding: 0px; line-height: 25px; clear: both; font-size: medium; font-family: 微软雅黑; color: rgb(51, 51, 51); letter-spacing: -1px; white-space: normal;">中国家具协会理事长、亚洲家具联合会会长朱长岭此前接受记者采访时指出，现在的林氏木业发生了巨大的变化，已经不是单 纯的电商企业，而是变成了家具产品的营销商，很多品牌企业向其供应产品，“林氏木业在顺德建立了大型的立体仓库，充分 利用互联网优势，转变成了一个大型的网络经销商。另外，它通过大数据进行的结算、货物管理在家具行业中都是先进的，周 转速度也很快。”</p><p style="margin-top: 35px; margin-right: 35px; margin-bottom: 0px; padding: 0px; line-height: 25px; clear: both; font-size: medium; font-family: 微软雅黑; color: rgb(51, 51, 51); letter-spacing: -1px; white-space: normal;">事实上，电商企业不满足网上销售的同时，传统家居企业也不满足仅仅掌握线下交易渠道。朱长岭表示，电商是家具销售的新 方式，也已经成为现在80后、90后热衷的购物方式，因此很多大型家具企业相继进入电子商务市场，如华日、光明、顾家家居、 尚品宅配、索菲亚、欧派等等，这些传统家具企业都在借助电商进行产品销售。</p><p style="margin-top: 35px; margin-right: 35px; margin-bottom: 0px; padding: 0px; line-height: 25px; clear: both; font-size: medium; font-family: 微软雅黑; color: rgb(51, 51, 51); letter-spacing: -1px; white-space: normal;">据悉，本年度“双十一”，罗莱生活线上品牌LOVO家纺产品除了普通降价销售外，还有秒杀及预售产品。其中，按照天猫官网 介绍，预售产品采取预付定金，“双十一”当天付尾款，随后组织生产，于11月30日前发货的机制。不过，罗莱生活客服表示， 为了不耽误发货，产品实际上是已经生产好的，并非客户下单后按需生产。</p><p style="margin-top: 35px; margin-right: 35px; margin-bottom: 0px; padding: 0px; line-height: 25px; clear: both; font-size: medium; font-family: 微软雅黑; color: rgb(51, 51, 51); letter-spacing: -1px; white-space: normal;">美克家居也在11月初推出了互联网定制品牌恣在家Zest Home。据美克国际家居用品股份有限公司副总经理赵晶介绍，“恣在 家Zest Home”是基于模块化自定制设计的互联网线上品牌，重新定义了定制家居、定制风格及定制时尚的概念，致力于“为 你定制梦想”，既秉承了美克家居一贯的高端品质，又融合了年轻个性的设计理念。</p><p style="margin-top: 35px; margin-right: 35px; margin-bottom: 0px; padding: 0px; line-height: 25px; clear: both; font-size: medium; font-family: 微软雅黑; color: rgb(51, 51, 51); letter-spacing: -1px; white-space: normal;">抓住财年尾巴拿销量换市场</p><p style="margin-top: 35px; margin-right: 35px; margin-bottom: 0px; padding: 0px; line-height: 25px; clear: both; font-size: medium; font-family: 微软雅黑; color: rgb(51, 51, 51); letter-spacing: -1px; white-space: normal;">不过，在商家卖货出货忙的同时，创下的市场有多大、利润有多高仍然是企业经营需要考虑的问题。</p><p style="margin-top: 35px; margin-right: 35px; margin-bottom: 0px; padding: 0px; line-height: 25px; clear: both; font-size: medium; font-family: 微软雅黑; color: rgb(51, 51, 51); letter-spacing: -1px; white-space: normal;">2013年“双十一”时，林氏木业以1.6亿元的销售额创造家具类目单天销量过亿纪录;2016年“双十一”，这一销售额已经增长 到6.1亿元，连续四年稳居天猫家具类目的第一名。来自中国电子商务研究中心发布的《2016年度中国网络零售市场数据监测报 告》显示，预估2016年全网数百家淘品牌整体市场交易规模达千亿元级别，而林氏木业2016年的营收已超百亿元。也就是说， “双十一”当天的销售额，几乎能够占到林氏木业全年营收的五六个百分点。</p><p style="margin-top: 35px; margin-right: 35px; margin-bottom: 0px; padding: 0px; line-height: 25px; clear: both; font-size: medium; font-family: 微软雅黑; color: rgb(51, 51, 51); letter-spacing: -1px; white-space: normal;">2016年天猫“双十一”大战中，罗莱生活旗下的罗莱电商全网总销量2.088亿元，问鼎家纺类目冠军，天猫罗莱家纺官方旗舰 店蝉联“双十一”家纺类目销售五连冠。至此，LOVO终于成功挑战自己定下的两个亿“小目标”，也是家纺行业首家成功挤进 “双十一”单天销量超两亿元的企业。</p><p style="margin-top: 35px; margin-right: 35px; margin-bottom: 0px; padding: 0px; line-height: 25px; clear: both; font-size: medium; font-family: 微软雅黑; color: rgb(51, 51, 51); letter-spacing: -1px; white-space: normal;">另据2016年罗莱生活年报数据显示，当年总营收为31.52亿元，分季度来看，四个季度营业额分别为7.63亿元、5.80亿元、8.12 亿元、9.97亿元。也就是说，包含“双十一”购物节在内的第四季度营收最高，占总营收比例达到31.63%。不过，尽管第四季 度营收较高，但其归属于上市公司股东的净利润仅有第一、第三季度的五成，为5784万元，占总净利润的18.23%。</p><p style="margin-top: 35px; margin-right: 35px; margin-bottom: 0px; padding: 0px; line-height: 25px; clear: both; font-size: medium; font-family: 微软雅黑; color: rgb(51, 51, 51); letter-spacing: -1px; white-space: normal;">对此情况，中国电子商务研究中心主任曹磊表示，天猫发起的这个“双十一”购物节，对商家来讲，理论上是要求半价的。但 是按照实际的经验来看不可能有这么高的利润空间，所以很多产品价格前期都有调整。对于家居建材行业，倒是省去了仓储、运 输、线下场地装修等环节。</p><p style="margin-top: 35px; margin-right: 35px; margin-bottom: 0px; padding: 0px; line-height: 25px; clear: both; font-size: medium; font-family: 微软雅黑; color: rgb(51, 51, 51); letter-spacing: -1px; white-space: normal;">不过，由于“双十一”的电商平台，竞争对手来自全国各地，价格战也就在所难免。“双十一”正值年底，各个企业都希望在 这期间清理库存，回笼资金以便第二年投入生产，“对家居企业来讲，冲销量换市场有时候是为了维持在行业里面的领先地位。 因为你不卖掉别人也会卖掉，那么你的库存就变大了，资金压力也变大了，而且还会加速竞争对手的份额扩张”，曹磊向《中国 经营报》记者指出，对于一些上市公司或者拟上市公司，尽量把财报中的销售额做大也是企业非常看重的问题，这也是企业愿意 拿销量换市场的原因。</p><p><br/></p>', 'public/201804289382.jpg', '', 1234567890, 1524898087, 127),
(82, '会“隐形”的床——小户型必备', 2, '超管', 1, '户型最大的烦恼是什么？就是空间不够用。有时候十来平的小房间，放下一张床、一个衣柜之后你\r\n就明显感到好像都不好走路了。为了不出现以上尴尬状况，不如试试将你的床穿上一件“隐形斗篷”吧。', '<p style="margin-top: 35px; margin-right: 35px; margin-bottom: 0px; padding: 0px; line-height: 25px; clear: both; font-size: medium; font-family: 微软雅黑; color: rgb(51, 51, 51); letter-spacing: -1px; white-space: normal;">据了解，在电商平台多次创下销售纪录的“淘品牌”林氏木业，正在将产业链向线下延伸，欲借“双十一”加速新零售布局;而 罗莱家纺、美克家居等传统家居企业则在紧锣密鼓地触网，推出更多适应电商发展的互联网品牌。事实上，在这场企业与消费 者的狂欢中，也隐藏了诸多企业的营销逻辑与发展战略。尤其是在2017年前三季度表现欠佳的企业，似乎将“双十一”当作完 成该年销售目标的重要筹码。为巩固在“双十一”中的声势与地位，企业拿销量换市场的做法也屡见不鲜.</p><p style="margin-top: 35px; margin-right: 35px; margin-bottom: 0px; padding: 0px; line-height: 25px; clear: both; font-size: medium; font-family: 微软雅黑; color: rgb(51, 51, 51); letter-spacing: -1px; white-space: normal;">对此，多位业内专家向《中国经营报》记者分析，由于“双十一”价格战激烈，且企业为了扩大销售额而加大促销力度，很可 能出现增收不增利的现象。</p><p style="margin-top: 35px; margin-right: 35px; margin-bottom: 0px; padding: 0px; line-height: 25px; clear: both; font-size: medium; font-family: 微软雅黑; color: rgb(51, 51, 51); letter-spacing: -1px; white-space: normal;">记者分别就此采访了林氏木业、罗莱生活、美克美家等相关企业，试图进一步了解它们的“双十一”应对计划，以及低价扩大 销量的同时，如何保证利润等相关问题，截至记者发稿，暂未获得对方回复。</p><p style="margin-top: 35px; margin-right: 35px; margin-bottom: 0px; padding: 0px; line-height: 25px; clear: both; font-size: medium; font-family: 微软雅黑; color: rgb(51, 51, 51); letter-spacing: -1px; white-space: normal;">欲借“双十一”加速转型</p><p style="margin-top: 35px; margin-right: 35px; margin-bottom: 0px; padding: 0px; line-height: 25px; clear: both; font-size: medium; font-family: 微软雅黑; color: rgb(51, 51, 51); letter-spacing: -1px; white-space: normal;">在今年的“双十一”前夕，“淘品牌”林氏木业与天猫开启了在全域营销、大数据用户画像、全渠道营销等业务的深度合作， 试图更精准地获取消费者需求痛点。</p><p style="margin-top: 35px; margin-right: 35px; margin-bottom: 0px; padding: 0px; line-height: 25px; clear: both; font-size: medium; font-family: 微软雅黑; color: rgb(51, 51, 51); letter-spacing: -1px; white-space: normal;">据了解，2007年5月，林氏木业正式在淘宝开张。彼时林氏木业做的是“倒手炒货”生意，即在厂家选款拍照上传网店，待消 费者下单，由厂家直接发货，从而稳赚中间的经销差价，销量也连续多年领先行业。</p><p style="margin-top: 35px; margin-right: 35px; margin-bottom: 0px; padding: 0px; line-height: 25px; clear: both; font-size: medium; font-family: 微软雅黑; color: rgb(51, 51, 51); letter-spacing: -1px; white-space: normal;">然而，十年之后的今天，林氏木业已经不满足“流量大户”的身份。自去年“新零售”概念被提出后，2017年便成为“新零售 元年”，今年“双十一”自然也成为新零售最重要的检验场，多个线下体验店迅速在城市之间开设。从其创立十周年之际，提 出的“家居空间解决方案智造者”的崭新定位，也可窥得十年后林氏木业的转型诉求。</p><p style="margin-top: 35px; margin-right: 35px; margin-bottom: 0px; padding: 0px; line-height: 25px; clear: both; font-size: medium; font-family: 微软雅黑; color: rgb(51, 51, 51); letter-spacing: -1px; white-space: normal;">中国家具协会理事长、亚洲家具联合会会长朱长岭此前接受记者采访时指出，现在的林氏木业发生了巨大的变化，已经不是单 纯的电商企业，而是变成了家具产品的营销商，很多品牌企业向其供应产品，“林氏木业在顺德建立了大型的立体仓库，充分 利用互联网优势，转变成了一个大型的网络经销商。另外，它通过大数据进行的结算、货物管理在家具行业中都是先进的，周 转速度也很快。”</p><p style="margin-top: 35px; margin-right: 35px; margin-bottom: 0px; padding: 0px; line-height: 25px; clear: both; font-size: medium; font-family: 微软雅黑; color: rgb(51, 51, 51); letter-spacing: -1px; white-space: normal;">事实上，电商企业不满足网上销售的同时，传统家居企业也不满足仅仅掌握线下交易渠道。朱长岭表示，电商是家具销售的新 方式，也已经成为现在80后、90后热衷的购物方式，因此很多大型家具企业相继进入电子商务市场，如华日、光明、顾家家居、 尚品宅配、索菲亚、欧派等等，这些传统家具企业都在借助电商进行产品销售。</p><p style="margin-top: 35px; margin-right: 35px; margin-bottom: 0px; padding: 0px; line-height: 25px; clear: both; font-size: medium; font-family: 微软雅黑; color: rgb(51, 51, 51); letter-spacing: -1px; white-space: normal;">据悉，本年度“双十一”，罗莱生活线上品牌LOVO家纺产品除了普通降价销售外，还有秒杀及预售产品。其中，按照天猫官网 介绍，预售产品采取预付定金，“双十一”当天付尾款，随后组织生产，于11月30日前发货的机制。不过，罗莱生活客服表示， 为了不耽误发货，产品实际上是已经生产好的，并非客户下单后按需生产。</p><p style="margin-top: 35px; margin-right: 35px; margin-bottom: 0px; padding: 0px; line-height: 25px; clear: both; font-size: medium; font-family: 微软雅黑; color: rgb(51, 51, 51); letter-spacing: -1px; white-space: normal;">美克家居也在11月初推出了互联网定制品牌恣在家Zest Home。据美克国际家居用品股份有限公司副总经理赵晶介绍，“恣在 家Zest Home”是基于模块化自定制设计的互联网线上品牌，重新定义了定制家居、定制风格及定制时尚的概念，致力于“为 你定制梦想”，既秉承了美克家居一贯的高端品质，又融合了年轻个性的设计理念。</p><p style="margin-top: 35px; margin-right: 35px; margin-bottom: 0px; padding: 0px; line-height: 25px; clear: both; font-size: medium; font-family: 微软雅黑; color: rgb(51, 51, 51); letter-spacing: -1px; white-space: normal;">抓住财年尾巴拿销量换市场</p><p style="margin-top: 35px; margin-right: 35px; margin-bottom: 0px; padding: 0px; line-height: 25px; clear: both; font-size: medium; font-family: 微软雅黑; color: rgb(51, 51, 51); letter-spacing: -1px; white-space: normal;">不过，在商家卖货出货忙的同时，创下的市场有多大、利润有多高仍然是企业经营需要考虑的问题。</p><p style="margin-top: 35px; margin-right: 35px; margin-bottom: 0px; padding: 0px; line-height: 25px; clear: both; font-size: medium; font-family: 微软雅黑; color: rgb(51, 51, 51); letter-spacing: -1px; white-space: normal;">2013年“双十一”时，林氏木业以1.6亿元的销售额创造家具类目单天销量过亿纪录;2016年“双十一”，这一销售额已经增长 到6.1亿元，连续四年稳居天猫家具类目的第一名。来自中国电子商务研究中心发布的《2016年度中国网络零售市场数据监测报 告》显示，预估2016年全网数百家淘品牌整体市场交易规模达千亿元级别，而林氏木业2016年的营收已超百亿元。也就是说， “双十一”当天的销售额，几乎能够占到林氏木业全年营收的五六个百分点。</p><p style="margin-top: 35px; margin-right: 35px; margin-bottom: 0px; padding: 0px; line-height: 25px; clear: both; font-size: medium; font-family: 微软雅黑; color: rgb(51, 51, 51); letter-spacing: -1px; white-space: normal;">2016年天猫“双十一”大战中，罗莱生活旗下的罗莱电商全网总销量2.088亿元，问鼎家纺类目冠军，天猫罗莱家纺官方旗舰 店蝉联“双十一”家纺类目销售五连冠。至此，LOVO终于成功挑战自己定下的两个亿“小目标”，也是家纺行业首家成功挤进 “双十一”单天销量超两亿元的企业。</p><p style="margin-top: 35px; margin-right: 35px; margin-bottom: 0px; padding: 0px; line-height: 25px; clear: both; font-size: medium; font-family: 微软雅黑; color: rgb(51, 51, 51); letter-spacing: -1px; white-space: normal;">另据2016年罗莱生活年报数据显示，当年总营收为31.52亿元，分季度来看，四个季度营业额分别为7.63亿元、5.80亿元、8.12 亿元、9.97亿元。也就是说，包含“双十一”购物节在内的第四季度营收最高，占总营收比例达到31.63%。不过，尽管第四季 度营收较高，但其归属于上市公司股东的净利润仅有第一、第三季度的五成，为5784万元，占总净利润的18.23%。</p><p style="margin-top: 35px; margin-right: 35px; margin-bottom: 0px; padding: 0px; line-height: 25px; clear: both; font-size: medium; font-family: 微软雅黑; color: rgb(51, 51, 51); letter-spacing: -1px; white-space: normal;">对此情况，中国电子商务研究中心主任曹磊表示，天猫发起的这个“双十一”购物节，对商家来讲，理论上是要求半价的。但 是按照实际的经验来看不可能有这么高的利润空间，所以很多产品价格前期都有调整。对于家居建材行业，倒是省去了仓储、运 输、线下场地装修等环节。</p><p style="margin-top: 35px; margin-right: 35px; margin-bottom: 0px; padding: 0px; line-height: 25px; clear: both; font-size: medium; font-family: 微软雅黑; color: rgb(51, 51, 51); letter-spacing: -1px; white-space: normal;">不过，由于“双十一”的电商平台，竞争对手来自全国各地，价格战也就在所难免。“双十一”正值年底，各个企业都希望在 这期间清理库存，回笼资金以便第二年投入生产，“对家居企业来讲，冲销量换市场有时候是为了维持在行业里面的领先地位。 因为你不卖掉别人也会卖掉，那么你的库存就变大了，资金压力也变大了，而且还会加速竞争对手的份额扩张”，曹磊向《中国 经营报》记者指出，对于一些上市公司或者拟上市公司，尽量把财报中的销售额做大也是企业非常看重的问题，这也是企业愿意 拿销量换市场的原因。</p><p><br/></p>', 'public/201804286729.jpg', '', 1234567890, 1524898113, 127),
(83, '“双十一”成转型关键节点 家居企业战备升级', 3, '超管', 1, '据了解，在电商平台多次创下销售纪录的“淘品牌”林氏木业，正在将产业链向线下延伸，欲借“双十一\r\n\r\n”加\r\n速新零售布局;而罗莱家纺、美克家居等传统家居企业则在紧锣密鼓地触网，推出更多适应电商发展的互联\r\n\r\n网品牌。', '', 'public/201804303007.jpg', '', 1234567890, 1525089117, 130),
(84, '“双十一”成转型关键节点 家居企业战备升级', 3, '超管', 1, '据了解，在电商平台多次创下销售纪录的“淘品牌”林氏木业，正在将产业链向线下延伸，欲借“双十一\r\n\r\n”加\r\n速新零售布局;而罗莱家纺、美克家居等传统家居企业则在紧锣密鼓地触网，推出更多适应电商发展的互联\r\n\r\n网品牌。', '', 'public/201804309988.jpg', '', 1234567890, 1525089142, 132),
(85, '“双十一”成转型关键节点 家居企业战备升级', 4, '超管', 1, '据了解，在电商平台多次创下销售纪录的“淘品牌”林氏木业，正在将产业链向线下延伸，欲借“双十一\r\n\r\n”加\r\n速新零售布局;而罗莱家纺、美克家居等传统家居企业则在紧锣密鼓地触网，推出更多适应电商发展的互联\r\n\r\n网品牌。', '', 'public/201804301275.jpg', '', 1234567890, 1525089172, 129),
(86, '“双十一”成转型关键节点 家居企业战备升级', 4, '超管', 1, '据了解，在电商平台多次创下销售纪录的“淘品牌”林氏木业，正在将产业链向线下延伸，欲借“双十一\r\n\r\n”加\r\n速新零售布局;而罗莱家纺、美克家居等传统家居企业则在紧锣密鼓地触网，推出更多适应电商发展的互联\r\n\r\n网品牌。', '', 'public/201804303732.jpg', '', 1234567890, 1525089186, 130),
(87, '“双十一”成转型关键节点 家居企业战备升级', 2, '超管', 1, '据了解，在电商平台多次创下销售纪录的“淘品牌”林氏木业，正在将产业链向线下延伸，欲借“双十一\r\n\r\n”加\r\n速新零售布局;而罗莱家纺、美克家居等传统家居企业则在紧锣密鼓地触网，推出更多适应电商发展的互联\r\n\r\n网品牌。', '', 'public/201804309259.jpg', '', 1234567890, 1525089202, 126),
(88, '123', 2, '超管', 1, '123', '', 'public/201805013528.png', '', 1234567890, 1525154801, 126),
(89, '123', 2, '超管', 1, '123', '', 'public/201805015668.png', '', 1234567890, 1525154808, 127),
(90, '123123', 2, '超管', 1, '123123', '', 'public/201805018650.jpg', '', 1234567890, 1525154817, 127),
(91, '123123', 2, '超管', 1, '123123', '', 'public/201805019543.jpg', '', 1234567890, 1525154826, 127),
(92, '123', 2, '超管', 1, '123', '', 'public/201805015154.jpg', '', 1234567890, 1525155171, 127),
(93, '123123', 2, '超管', 1, '123123', '', 'public/201805011885.jpg', '', 1234567890, 1525155181, 128),
(94, '123123', 2, '超管', 1, '123123', '', 'public/201805012020.jpg', '', 1234567890, 1525155190, 128),
(95, '123123', 2, '超管', 1, '123123', '', 'public/201805012576.jpg', '', 1234567890, 1525155199, 129),
(96, '12312312312312', 2, '超管', 1, '123123123123', '', 'public/201805019060.jpg', '', 1234567890, 1525155207, 148),
(97, '天大地大', 4, '超管', 1, '天地大同', '<p>天地大同</p>', 'public/201805032863.png', '', 1234567890, 1525349634, 129),
(98, '12312312', 3, '超管', 0, '2131231231231', '<p>12312312312312</p>', 'public/201805032093.jpg', '', 1234567890, 1525350112, 125),
(99, '“双十一”成转型关键节点 家居企业战备升级', 2, '超管', 1, '据了解，在电商平台多次创下销售纪录的“淘品牌”林氏木业，正在将产业链向线下延伸，欲借“双十一”加\r\n速新零售布局;而罗莱家纺、美克家居等传统家居企业则在紧锣密鼓地触网，推出更多适应电商发展的互联网品牌', '<p style="margin-top: 35px; margin-right: 35px; margin-bottom: 0px; padding: 0px; line-height: 25px; clear: both; font-size: medium; font-family: 微软雅黑; color: rgb(51, 51, 51); letter-spacing: -1px; white-space: normal;">摘要：曾经只为降价促销的的“双十一”购物节，如今已经演变成了各个家居企业借势转型的战场。</p><p style="margin-top: 35px; margin-right: 35px; margin-bottom: 0px; padding: 0px; line-height: 25px; clear: both; font-size: medium; font-family: 微软雅黑; color: rgb(51, 51, 51); letter-spacing: -1px; white-space: normal;">据了解，在电商平台多次创下销售纪录的“淘品牌”林氏木业，正在将产业链向线下延伸，欲借“双十一”加速新零售布局;而 罗莱家纺、美克家居等传统家居企业则在紧锣密鼓地触网，推出更多适应电商发展的互联网品牌。事实上，在这场企业与消费 者的狂欢中，也隐藏了诸多企业的营销逻辑与发展战略。尤其是在2017年前三季度表现欠佳的企业，似乎将“双十一”当作完 成该年销售目标的重要筹码。为巩固在“双十一”中的声势与地位，企业拿销量换市场的做法也屡见不鲜.</p><p style="margin-top: 35px; margin-right: 35px; margin-bottom: 0px; padding: 0px; line-height: 25px; clear: both; font-size: medium; font-family: 微软雅黑; color: rgb(51, 51, 51); letter-spacing: -1px; white-space: normal;">对此，多位业内专家向《中国经营报》记者分析，由于“双十一”价格战激烈，且企业为了扩大销售额而加大促销力度，很可 能出现增收不增利的现象。</p><p style="margin-top: 35px; margin-right: 35px; margin-bottom: 0px; padding: 0px; line-height: 25px; clear: both; font-size: medium; font-family: 微软雅黑; color: rgb(51, 51, 51); letter-spacing: -1px; white-space: normal;">记者分别就此采访了林氏木业、罗莱生活、美克美家等相关企业，试图进一步了解它们的“双十一”应对计划，以及低价扩大 销量的同时，如何保证利润等相关问题，截至记者发稿，暂未获得对方回复。</p><p style="margin-top: 35px; margin-right: 35px; margin-bottom: 0px; padding: 0px; line-height: 25px; clear: both; font-size: medium; font-family: 微软雅黑; color: rgb(51, 51, 51); letter-spacing: -1px; white-space: normal;">欲借“双十一”加速转型</p><p style="margin-top: 35px; margin-right: 35px; margin-bottom: 0px; padding: 0px; line-height: 25px; clear: both; font-size: medium; font-family: 微软雅黑; color: rgb(51, 51, 51); letter-spacing: -1px; white-space: normal;">在今年的“双十一”前夕，“淘品牌”林氏木业与天猫开启了在全域营销、大数据用户画像、全渠道营销等业务的深度合作， 试图更精准地获取消费者需求痛点。</p><p style="margin-top: 35px; margin-right: 35px; margin-bottom: 0px; padding: 0px; line-height: 25px; clear: both; font-size: medium; font-family: 微软雅黑; color: rgb(51, 51, 51); letter-spacing: -1px; white-space: normal;">据了解，2007年5月，林氏木业正式在淘宝开张。彼时林氏木业做的是“倒手炒货”生意，即在厂家选款拍照上传网店，待消 费者下单，由厂家直接发货，从而稳赚中间的经销差价，销量也连续多年领先行业。</p><p style="margin-top: 35px; margin-right: 35px; margin-bottom: 0px; padding: 0px; line-height: 25px; clear: both; font-size: medium; font-family: 微软雅黑; color: rgb(51, 51, 51); letter-spacing: -1px; white-space: normal;">然而，十年之后的今天，林氏木业已经不满足“流量大户”的身份。自去年“新零售”概念被提出后，2017年便成为“新零售 元年”，今年“双十一”自然也成为新零售最重要的检验场，多个线下体验店迅速在城市之间开设。从其创立十周年之际，提 出的“家居空间解决方案智造者”的崭新定位，也可窥得十年后林氏木业的转型诉求。</p><p style="margin-top: 35px; margin-right: 35px; margin-bottom: 0px; padding: 0px; line-height: 25px; clear: both; font-size: medium; font-family: 微软雅黑; color: rgb(51, 51, 51); letter-spacing: -1px; white-space: normal;">中国家具协会理事长、亚洲家具联合会会长朱长岭此前接受记者采访时指出，现在的林氏木业发生了巨大的变化，已经不是单 纯的电商企业，而是变成了家具产品的营销商，很多品牌企业向其供应产品，“林氏木业在顺德建立了大型的立体仓库，充分 利用互联网优势，转变成了一个大型的网络经销商。另外，它通过大数据进行的结算、货物管理在家具行业中都是先进的，周 转速度也很快。”</p><p style="margin-top: 35px; margin-right: 35px; margin-bottom: 0px; padding: 0px; line-height: 25px; clear: both; font-size: medium; font-family: 微软雅黑; color: rgb(51, 51, 51); letter-spacing: -1px; white-space: normal;">事实上，电商企业不满足网上销售的同时，传统家居企业也不满足仅仅掌握线下交易渠道。朱长岭表示，电商是家具销售的新 方式，也已经成为现在80后、90后热衷的购物方式，因此很多大型家具企业相继进入电子商务市场，如华日、光明、顾家家居、 尚品宅配、索菲亚、欧派等等，这些传统家具企业都在借助电商进行产品销售。</p><p style="margin-top: 35px; margin-right: 35px; margin-bottom: 0px; padding: 0px; line-height: 25px; clear: both; font-size: medium; font-family: 微软雅黑; color: rgb(51, 51, 51); letter-spacing: -1px; white-space: normal;">据悉，本年度“双十一”，罗莱生活线上品牌LOVO家纺产品除了普通降价销售外，还有秒杀及预售产品。其中，按照天猫官网 介绍，预售产品采取预付定金，“双十一”当天付尾款，随后组织生产，于11月30日前发货的机制。不过，罗莱生活客服表示， 为了不耽误发货，产品实际上是已经生产好的，并非客户下单后按需生产。</p><p style="margin-top: 35px; margin-right: 35px; margin-bottom: 0px; padding: 0px; line-height: 25px; clear: both; font-size: medium; font-family: 微软雅黑; color: rgb(51, 51, 51); letter-spacing: -1px; white-space: normal;">美克家居也在11月初推出了互联网定制品牌恣在家Zest Home。据美克国际家居用品股份有限公司副总经理赵晶介绍，“恣在 家Zest Home”是基于模块化自定制设计的互联网线上品牌，重新定义了定制家居、定制风格及定制时尚的概念，致力于“为 你定制梦想”，既秉承了美克家居一贯的高端品质，又融合了年轻个性的设计理念。</p><p style="margin-top: 35px; margin-right: 35px; margin-bottom: 0px; padding: 0px; line-height: 25px; clear: both; font-size: medium; font-family: 微软雅黑; color: rgb(51, 51, 51); letter-spacing: -1px; white-space: normal;">抓住财年尾巴拿销量换市场</p><p style="margin-top: 35px; margin-right: 35px; margin-bottom: 0px; padding: 0px; line-height: 25px; clear: both; font-size: medium; font-family: 微软雅黑; color: rgb(51, 51, 51); letter-spacing: -1px; white-space: normal;">不过，在商家卖货出货忙的同时，创下的市场有多大、利润有多高仍然是企业经营需要考虑的问题。</p><p style="margin-top: 35px; margin-right: 35px; margin-bottom: 0px; padding: 0px; line-height: 25px; clear: both; font-size: medium; font-family: 微软雅黑; color: rgb(51, 51, 51); letter-spacing: -1px; white-space: normal;">2013年“双十一”时，林氏木业以1.6亿元的销售额创造家具类目单天销量过亿纪录;2016年“双十一”，这一销售额已经增长 到6.1亿元，连续四年稳居天猫家具类目的第一名。来自中国电子商务研究中心发布的《2016年度中国网络零售市场数据监测报 告》显示，预估2016年全网数百家淘品牌整体市场交易规模达千亿元级别，而林氏木业2016年的营收已超百亿元。也就是说， “双十一”当天的销售额，几乎能够占到林氏木业全年营收的五六个百分点。</p><p style="margin-top: 35px; margin-right: 35px; margin-bottom: 0px; padding: 0px; line-height: 25px; clear: both; font-size: medium; font-family: 微软雅黑; color: rgb(51, 51, 51); letter-spacing: -1px; white-space: normal;">2016年天猫“双十一”大战中，罗莱生活旗下的罗莱电商全网总销量2.088亿元，问鼎家纺类目冠军，天猫罗莱家纺官方旗舰 店蝉联“双十一”家纺类目销售五连冠。至此，LOVO终于成功挑战自己定下的两个亿“小目标”，也是家纺行业首家成功挤进 “双十一”单天销量超两亿元的企业。</p><p style="margin-top: 35px; margin-right: 35px; margin-bottom: 0px; padding: 0px; line-height: 25px; clear: both; font-size: medium; font-family: 微软雅黑; color: rgb(51, 51, 51); letter-spacing: -1px; white-space: normal;">另据2016年罗莱生活年报数据显示，当年总营收为31.52亿元，分季度来看，四个季度营业额分别为7.63亿元、5.80亿元、8.12 亿元、9.97亿元。也就是说，包含“双十一”购物节在内的第四季度营收最高，占总营收比例达到31.63%。不过，尽管第四季 度营收较高，但其归属于上市公司股东的净利润仅有第一、第三季度的五成，为5784万元，占总净利润的18.23%。</p><p style="margin-top: 35px; margin-right: 35px; margin-bottom: 0px; padding: 0px; line-height: 25px; clear: both; font-size: medium; font-family: 微软雅黑; color: rgb(51, 51, 51); letter-spacing: -1px; white-space: normal;">对此情况，中国电子商务研究中心主任曹磊表示，天猫发起的这个“双十一”购物节，对商家来讲，理论上是要求半价的。但 是按照实际的经验来看不可能有这么高的利润空间，所以很多产品价格前期都有调整。对于家居建材行业，倒是省去了仓储、运 输、线下场地装修等环节。</p><p style="margin-top: 35px; margin-right: 35px; margin-bottom: 0px; padding: 0px; line-height: 25px; clear: both; font-size: medium; font-family: 微软雅黑; color: rgb(51, 51, 51); letter-spacing: -1px; white-space: normal;">不过，由于“双十一”的电商平台，竞争对手来自全国各地，价格战也就在所难免。“双十一”正值年底，各个企业都希望在 这期间清理库存，回笼资金以便第二年投入生产，“对家居企业来讲，冲销量换市场有时候是为了维持在行业里面的领先地位。 因为你不卖掉别人也会卖掉，那么你的库存就变大了，资金压力也变大了，而且还会加速竞争对手的份额扩张”，曹磊向《中国 经营报》记者指出，对于一些上市公司或者拟上市公司，尽量把财报中的销售额做大也是企业非常看重的问题，这也是企业愿意 拿销量换市场的原因。</p><p><br/></p>', 'public/201805045093.jpg', '', 1234567890, 1525422379, 6),
(100, '“双十一”成转型关键节点 家居企业战备升级1', 2, '超管', 1, '“双十一”成转型关键节点 家居企业战备升级“双十一”成转型关键节点 家居企业战备升级“双十一”成转型关键节点 家居企业战备升级“双十一”成转型关键节点 家居企业战备升级', '<p><span style="color: rgb(51, 51, 51); font-family: &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, &quot;Helvetica Neue&quot;, Helvetica, tahoma, arial, &quot;WenQuanYi Micro Hei&quot;, Verdana, sans-serif, 宋体; font-size: 12px; text-align: center; background-color: rgb(245, 245, 245);">“双十一”成转型关键节点 家居企业战备升级</span><span style="color: rgb(51, 51, 51); font-family: &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, &quot;Helvetica Neue&quot;, Helvetica, tahoma, arial, &quot;WenQuanYi Micro Hei&quot;, Verdana, sans-serif, 宋体; font-size: 12px; text-align: center; background-color: rgb(245, 245, 245);">“双十一”成转型关键节点 家居企业战备升级</span><span style="color: rgb(51, 51, 51); font-family: &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, &quot;Helvetica Neue&quot;, Helvetica, tahoma, arial, &quot;WenQuanYi Micro Hei&quot;, Verdana, sans-serif, 宋体; font-size: 12px; text-align: center; background-color: rgb(245, 245, 245);">“双十一”成转型关键节点 家居企业战备升级</span><span style="color: rgb(51, 51, 51); font-family: &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, &quot;Helvetica Neue&quot;, Helvetica, tahoma, arial, &quot;WenQuanYi Micro Hei&quot;, Verdana, sans-serif, 宋体; font-size: 12px; text-align: center; background-color: rgb(245, 245, 245);">“双十一”成转型关键节点 家居企业战备升级</span><span style="color: rgb(51, 51, 51); font-family: &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, &quot;Helvetica Neue&quot;, Helvetica, tahoma, arial, &quot;WenQuanYi Micro Hei&quot;, Verdana, sans-serif, 宋体; font-size: 12px; text-align: center; background-color: rgb(245, 245, 245);">“双十一”成转型关键节点 家居企业战备升级</span><span style="color: rgb(51, 51, 51); font-family: &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, &quot;Helvetica Neue&quot;, Helvetica, tahoma, arial, &quot;WenQuanYi Micro Hei&quot;, Verdana, sans-serif, 宋体; font-size: 12px; text-align: center; background-color: rgb(245, 245, 245);">“双十一”成转型关键节点 家居企业战备升级</span><span style="color: rgb(51, 51, 51); font-family: &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, &quot;Helvetica Neue&quot;, Helvetica, tahoma, arial, &quot;WenQuanYi Micro Hei&quot;, Verdana, sans-serif, 宋体; font-size: 12px; text-align: center; background-color: rgb(245, 245, 245);">“双十一”成转型关键节点 家居企业战备升级</span><span style="color: rgb(51, 51, 51); font-family: &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, &quot;Helvetica Neue&quot;, Helvetica, tahoma, arial, &quot;WenQuanYi Micro Hei&quot;, Verdana, sans-serif, 宋体; font-size: 12px; text-align: center; background-color: rgb(245, 245, 245);">“双十一”成转型关键节点 家居企业战备升级</span><span style="background-color: rgb(245, 245, 245); color: rgb(51, 51, 51); font-family: &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, &quot;Helvetica Neue&quot;, Helvetica, tahoma, arial, &quot;WenQuanYi Micro Hei&quot;, Verdana, sans-serif, 宋体; font-size: 12px; text-align: center;">“双十一”成转型关键节点 家居企业战备升级</span><span style="color: rgb(51, 51, 51); font-family: &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, &quot;Helvetica Neue&quot;, Helvetica, tahoma, arial, &quot;WenQuanYi Micro Hei&quot;, Verdana, sans-serif, 宋体; font-size: 12px; text-align: center; background-color: rgb(245, 245, 245);">“双十一”成转型关键节点 家居企业战备升级</span></p>', 'public/201805054270.jpg', '', 1234567890, 1525488619, 4),
(101, '“双十一”成转型关键节点 家居企业战备升级2', 2, '超管', 1, '“双十一”成转型关键节点 家居企业战备升级“双十一”成转型关键节点 家居企业战备升级“双十一”成转型关键节点 家居企业战备升级', '<p><span style="color: rgb(51, 51, 51); font-family: &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, &quot;Helvetica Neue&quot;, Helvetica, tahoma, arial, &quot;WenQuanYi Micro Hei&quot;, Verdana, sans-serif, 宋体; font-size: 12px; text-align: center; background-color: rgb(245, 245, 245);">“双十一”成转型关键节点 家居企业战备升级</span><span style="color: rgb(51, 51, 51); font-family: &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, &quot;Helvetica Neue&quot;, Helvetica, tahoma, arial, &quot;WenQuanYi Micro Hei&quot;, Verdana, sans-serif, 宋体; font-size: 12px; text-align: center; background-color: rgb(245, 245, 245);">“双十一”成转型关键节点 家居企业战备升级</span><span style="color: rgb(51, 51, 51); font-family: &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, &quot;Helvetica Neue&quot;, Helvetica, tahoma, arial, &quot;WenQuanYi Micro Hei&quot;, Verdana, sans-serif, 宋体; font-size: 12px; text-align: center; background-color: rgb(245, 245, 245);">“双十一”成转型关键节点 家居企业战备升级</span><span style="color: rgb(51, 51, 51); font-family: &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, &quot;Helvetica Neue&quot;, Helvetica, tahoma, arial, &quot;WenQuanYi Micro Hei&quot;, Verdana, sans-serif, 宋体; font-size: 12px; text-align: center; background-color: rgb(245, 245, 245);">“双十一”成转型关键节点 家居企业战备升级</span></p>', 'public/201805058312.jpg', '', 1234567890, 1525488629, 5),
(102, '“双十一”成转型关键节点 家居企业战备升级3', 2, '超管', 1, '“双十一”成转型关键节点 家居企业战备升级“双十一”成转型关键节点 家居企业战备升级“双十一”成转型关键节点 家居企业战备升级“双十一”成转型关键节点 家居企业战备升级“双十一”成转型关键节点 家居企业战备升级', '<p><span style="color: rgb(51, 51, 51); font-family: &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, &quot;Helvetica Neue&quot;, Helvetica, tahoma, arial, &quot;WenQuanYi Micro Hei&quot;, Verdana, sans-serif, 宋体; font-size: 12px; text-align: center; background-color: rgb(245, 245, 245);">“双十一”成转型关键节点 家居企业战备升级</span><span style="color: rgb(51, 51, 51); font-family: &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, &quot;Helvetica Neue&quot;, Helvetica, tahoma, arial, &quot;WenQuanYi Micro Hei&quot;, Verdana, sans-serif, 宋体; font-size: 12px; text-align: center; background-color: rgb(245, 245, 245);">“双十一”成转型关键节点 家居企业战备升级</span><span style="color: rgb(51, 51, 51); font-family: &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, &quot;Helvetica Neue&quot;, Helvetica, tahoma, arial, &quot;WenQuanYi Micro Hei&quot;, Verdana, sans-serif, 宋体; font-size: 12px; text-align: center; background-color: rgb(245, 245, 245);">“双十一”成转型关键节点 家居企业战备升级</span><span style="color: rgb(51, 51, 51); font-family: &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, &quot;Helvetica Neue&quot;, Helvetica, tahoma, arial, &quot;WenQuanYi Micro Hei&quot;, Verdana, sans-serif, 宋体; font-size: 12px; text-align: center; background-color: rgb(245, 245, 245);">“双十一”成转型关键节点 家居企业战备升级</span><span style="color: rgb(51, 51, 51); font-family: &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, &quot;Helvetica Neue&quot;, Helvetica, tahoma, arial, &quot;WenQuanYi Micro Hei&quot;, Verdana, sans-serif, 宋体; font-size: 12px; text-align: center; background-color: rgb(245, 245, 245);">“双十一”成转型关键节点 家居企业战备升级</span></p>', 'public/201805059453.jpg', '', 1234567890, 1525488639, 7),
(103, '“双十一”成转型关键节点 家居企业战备升级3', 2, '超管', 1, '“双十一”成转型关键节点 家居企业战备升级“双十一”成转型关键节点 家居企业战备升级“双十一”成转型关键节点 家居企业战备升级“双十一”成转型关键节点 家居企业战备升级', '', 'public/201805055393.jpg', '', 1234567890, 1525488652, 10),
(104, '“双十一”成转型关键节点 家居企业战备升级4', 2, '超管', 1, '“双十一”成转型关键节点 家居企业战备升级“双十一”成转型关键节点 家居企业战备升级', '<p><span style="color: rgb(51, 51, 51); font-family: &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, &quot;Helvetica Neue&quot;, Helvetica, tahoma, arial, &quot;WenQuanYi Micro Hei&quot;, Verdana, sans-serif, 宋体; font-size: 12px; text-align: center; background-color: rgb(245, 245, 245);">“双十一”成转型关键节点 家居企业战备升级</span><span style="color: rgb(51, 51, 51); font-family: &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, &quot;Helvetica Neue&quot;, Helvetica, tahoma, arial, &quot;WenQuanYi Micro Hei&quot;, Verdana, sans-serif, 宋体; font-size: 12px; text-align: center; background-color: rgb(245, 245, 245);">“双十一”成转型关键节点 家居企业战备升级</span></p>', 'public/201805054365.jpg', '', 1234567890, 1525488663, 10),
(106, '123123', 2, '超管', 1, '123123', '<p>123213</p>', 'public/201805054873.jpg', '', 1234567890, 1525489341, 4),
(107, '“双十一”成转型关键节点 家居企业战备升级“双十一”成转型关', 2, '超管', 1, '“双十一”成转型关键节点 家居企业战备升级“双十一”成转型关键节点 家居企业战备升级', '<p>12321312<br/></p>', 'public/201805055207.jpg', '', 1234567890, 1525489537, 11),
(108, '123213', 2, '超管', 1, '3123123', '', 'public/201805056679.jpg', '', 1234567890, 1525505755, 1),
(109, '12312312', 2, '超管', 1, '3123123', '', 'public/201805054863.jpg', '', 1234567890, 1525505786, 1),
(110, '12312312', 2, '超管', 1, '21312312', '', 'public/201805056084.jpg', '', 1234567890, 1525506559, 1),
(111, '312312', 3, '超管', 1, '312312', '', 'public/201805059558.jpg', '', 1234567890, 1525506607, 2);

-- --------------------------------------------------------

--
-- 表的结构 `product`
--

CREATE TABLE IF NOT EXISTS `product` (
  `product_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '产品ID',
  `product_name` varchar(20) NOT NULL COMMENT '产品名称',
  `product_state` int(3) NOT NULL DEFAULT '0' COMMENT '状态',
  `product_type` int(3) NOT NULL COMMENT '产品类型',
  `product_local` char(50) NOT NULL COMMENT '产品产地',
  `product_fabric` varchar(20) NOT NULL COMMENT '产品面料',
  `product_number` varchar(20) NOT NULL COMMENT '产品编号',
  `product_materia` char(50) NOT NULL COMMENT '产品材质',
  `product_color` varchar(20) NOT NULL COMMENT '产品颜色',
  `product_price` int(10) NOT NULL COMMENT '产品价格',
  `product_img` char(50) NOT NULL COMMENT '产品图片',
  `product_structure` varchar(20) NOT NULL COMMENT '产品结构',
  `product_people` varchar(20) NOT NULL COMMENT '添加人员',
  `product_time` int(10) NOT NULL,
  PRIMARY KEY (`product_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=18 ;

--
-- 转存表中的数据 `product`
--

INSERT INTO `product` (`product_id`, `product_name`, `product_state`, `product_type`, `product_local`, `product_fabric`, `product_number`, `product_materia`, `product_color`, `product_price`, `product_img`, `product_structure`, `product_people`, `product_time`) VALUES
(3, '123', 0, 15, '广东韶关', '123', '123', '123', '123', 0, 'public/201804273257.jpg', '123', '超管', 1524809168),
(5, '123', 0, 12, '213123', '312', '12312', '12312', '123213', 0, 'public/201805023468.jpg', '312', '超管', 1525253819),
(6, '15日1634634312', 0, 16, '6342', '45643', '234234', '12312', '3123', 0, 'public/201805037009.jpg', '5435634', '超管', 1525351655),
(7, '去玩儿群·', 0, 17, '123123', '12312', '12312', '4124213', '3124124', 0, 'public/201805037039.jpg', '123', '超管', 1525351670),
(8, '63547231钱·1', 0, 13, '123514327242', '623523', '3125', '12312', '131212', 0, 'public/201805035099.gif', '5435856', '超管', 1525351688),
(9, '80电风扇', 0, 14, '321412', '151242141', '4123', '4124214', '312412421', 0, 'public/201805039508.gif', '4123123', '超管', 1525351703),
(10, '沙发组合', 0, 12, '广东佛山', '3597.00', 'SB-002', '木', '咖啡色 米白色 酒红色 橘红', 567, 'public/201805052721.jpg', '木质工艺', '超管', 1525424014),
(11, '123', 0, 12, '', '', '', '', '', 123, 'public/201805057370.jpg', '', '超管', 1525490900),
(12, '123', 1, 12, '', '', '123', '', '', 12312, 'public/201805054916.jpg', '', '超管', 1525490973),
(13, '12323', 0, 12, '3123', '12312', '12312', '3', '3123', 312, 'public/201805058976.jpg', '131', '超管', 1525491499),
(14, '产品1', 0, 12, '产品1', '产品1', '产品1', '产品1', '产品1', 0, 'public/201805056074.jpg', '产品1', '超管', 1525491552),
(15, '产品2', 0, 12, '产品2', '产品2', '产品2', '产品2', '产品2', 0, 'public/201805051318.jpg', '产品2', '超管', 1525491567),
(16, '产品3', 0, 12, '产品3', '产品3', '产品3', '产品3', '产品3', 0, 'public/201805051993.jpg', '产品3', '超管', 1525491582),
(17, '产品4', 0, 12, '产品4', '产品4', '产品4', '产品4', '产品4', 0, 'public/201805055659.jpg', '产品4', '超管', 1525491644);

-- --------------------------------------------------------

--
-- 表的结构 `translate`
--

CREATE TABLE IF NOT EXISTS `translate` (
  `translate_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '导航ID',
  `translate_name` varchar(20) NOT NULL COMMENT '导航名称',
  `translate_sort` int(11) NOT NULL COMMENT '排序',
  `controller` varchar(20) NOT NULL COMMENT '控制器',
  `action` varchar(20) NOT NULL COMMENT '视图文件',
  PRIMARY KEY (`translate_id`),
  UNIQUE KEY `translate_sort` (`translate_sort`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=12 ;

--
-- 转存表中的数据 `translate`
--

INSERT INTO `translate` (`translate_id`, `translate_name`, `translate_sort`, `controller`, `action`) VALUES
(7, '企业首页', 1, 'index', 'index'),
(8, '关于我们', 2, 'about', 'index'),
(9, '新闻中心', 3, 'news', 'index'),
(10, '产品中心', 4, 'product', 'index'),
(11, '联系我们', 5, 'contact', 'index');

-- --------------------------------------------------------

--
-- 表的结构 `watermark`
--

CREATE TABLE IF NOT EXISTS `watermark` (
  `watermark_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '水印ID',
  `watermark_src` char(50) CHARACTER SET utf32 NOT NULL,
  PRIMARY KEY (`watermark_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `watermark`
--

INSERT INTO `watermark` (`watermark_id`, `watermark_src`) VALUES
(1, 'watermark/201804254882.png');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
