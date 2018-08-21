-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- 主机: localhost
-- 生成日期: 2016-06-13 21:10:17
-- 服务器版本: 5.5.47-0ubuntu0.14.04.1
-- PHP 版本: 5.5.9-1ubuntu4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- 数据库: `smartlife_data`
--

-- --------------------------------------------------------

--
-- 表的结构 `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `aName` varchar(32) NOT NULL,
  `aPass` varchar(32) NOT NULL,
  `userflag` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `admin`
--

INSERT INTO `admin` (`id`, `aName`, `aPass`, `userflag`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', 0);

-- --------------------------------------------------------

--
-- 表的结构 `api`
--

CREATE TABLE IF NOT EXISTS `api` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `file` varchar(32) CHARACTER SET utf8 NOT NULL,
  `url` varchar(100) CHARACTER SET utf8 NOT NULL,
  `status` varchar(100) CHARACTER SET utf8 NOT NULL,
  `etc` varchar(100) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=19 ;

--
-- 转存表中的数据 `api`
--

INSERT INTO `api` (`id`, `file`, `url`, `status`, `etc`) VALUES
(3, 'login.php', 'login.php?name=昵称或ID&pass=密码', '001 数据库链接失败 101 传入空值 102 未查询到结果/账号或密码错误 103 校对成功', '登陆功能 成功则返回用户的昵称和id'),
(4, 'reg.php', 'reg.php?name=要注册的昵称&pass=密码', '201 传入空值 202 注册失败/账号冲突 203 注册成功', '注册账号'),
(5, 'DeleteUser.php', 'DeleteUser.php?name=昵称&pass=密码', '201 传入空值 202 删除失败 203 删除成功', '删除账号'),
(6, 'modpass.php', 'modpass.php?name=昵称&pass=新密码', '301 传入空值 302 修改出错 303 修改成功', '修改密码 未传入原密码，存在安全问题'),
(7, 'modnic.php', 'modnic.php?name=新昵称&oldname=原昵称', '301 传入空值 302 修改出错 303 修改成功', '修改昵称'),
(8, 'receive_file.php', 'receive_file.php', '302 上传失败 303 上传成功', '上传头像 POST方式 '),
(9, '天气接口', 'http://wiki.swarma.net/index.php/%E5%BD%A9%E4%BA%91%E5%A4%A9%E6%B0%94API/v2', '', '实时天气查询 天气预报查询（小时级别） '),
(10, 'CGetData.php', 'CGetData.php?uid=用户ID&getType=设备类型', '401 传入空值 402 获取数据失败 403 获取数据成功', '手机APP获取设备的数据 设备类型为空则获取全部数据 '),
(11, 'CSetData.php', 'CSetData.php?uid=用户ID&getType=传感器类型&getId=传感器ID&newData=新数据&flag=状态改变标志位', '401 传入空值 402 数据未更改/更改失败 403 更新成功', '手机APP更新指定设备数据'),
(12, 'TSetData.php', 'TSetData.php?Tid=终端标识ID&getType=传感器类型&getId=传感器ID&newData=新数据&flag=状态改变标志位', '401 传入空值 402 数据未更改/更改失败 403 更新成功', '室内终端更新指定设备数据'),
(13, 'TGetData.php', 'TGetData.php?tid=终端ID&getType=设备类型', '401 传入空值 402 获取数据失败 403 获取数据成功', '室内终端获取设备的数据 设备类型为空则获取全部数据 '),
(14, 'BakcMsg.php', 'BackMsg.php', '401 传入空值 402 反馈失败 403 反馈成功', '反馈建议消息 POST方式 '),
(15, 'DeleteDevice.php', 'DeleteDevice.php?uidORtid=用户ID或终端设备ID&getId=设备ID&getType=设备类型', '401 传入空值 402 删除失败 403 删除成功', '家庭创建者或者室内终端删除设备'),
(16, 'AddDevice.php', 'AddDevice.php?uidORtid=用户ID或终端设备ID&getId=设备ID&getType=设备类型&getName=要显示的名称', '400 未加入家庭 401 传入空值 402 添加失败 403 添加成功', '添加新设备'),
(17, 'SetInfo.php', 'SetInfo.php?tidORuid=用户ID或终端设备ID&setLong=经度&setLat=纬度', '401 传入空值 402 设置失败 403 设置成功', '设置一些配置信息'),
(18, 'GetInfo.php', 'GetInfo.php?tidORuid=用户ID或终端设备ID', '401 传入空值 402 获取失败 403 获取成功', '获取一些配置信息');

-- --------------------------------------------------------

--
-- 表的结构 `api_data`
--

CREATE TABLE IF NOT EXISTS `api_data` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `num_data` int(11) NOT NULL,
  `date_data` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=73 ;

--
-- 转存表中的数据 `api_data`
--

INSERT INTO `api_data` (`id`, `num_data`, `date_data`) VALUES
(28, 55, '2016-05-01'),
(29, 102, '2016-05-02'),
(30, 455, '2016-05-03'),
(31, 44, '2016-05-04'),
(32, 89, '2016-05-05'),
(33, 99, '2016-05-06'),
(34, 114, '2016-05-07'),
(35, 585, '2016-05-08'),
(36, 2199, '2016-05-09'),
(37, 5982, '2016-05-10'),
(38, 11100, '2016-05-11'),
(39, 43068, '2016-05-12'),
(40, 49, '2016-05-13'),
(41, 3804, '2016-05-14'),
(42, 3804, '2016-05-14'),
(43, 369, '2016-05-15'),
(44, 2378, '2016-05-16'),
(45, 106, '2016-05-17'),
(46, 1527, '2016-05-18'),
(58, 31, '2016-05-30'),
(59, 31, '2016-05-31'),
(60, 8558, '2016-06-01'),
(61, 399, '2016-06-02'),
(62, 1281, '2016-06-03'),
(63, 203, '2016-06-04'),
(64, 22, '2016-06-05'),
(65, 2077, '2016-06-06'),
(66, 8171, '2016-06-07'),
(67, 1628, '2016-06-08'),
(68, 15011, '2016-06-09'),
(69, 15011, '2016-06-09'),
(70, 138, '2016-06-11'),
(71, 23860, '2016-06-12'),
(72, 52710, '2016-06-13');

-- --------------------------------------------------------

--
-- 表的结构 `backmsg`
--

CREATE TABLE IF NOT EXISTS `backmsg` (
  `Bid` int(11) NOT NULL AUTO_INCREMENT,
  `B_uid` int(11) NOT NULL,
  `msg` text CHARACTER SET utf8 NOT NULL,
  `contact` varchar(32) CHARACTER SET utf8 NOT NULL,
  `flag` int(11) NOT NULL DEFAULT '0',
  `date` date NOT NULL DEFAULT '2015-04-01',
  PRIMARY KEY (`Bid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=22 ;

--
-- 转存表中的数据 `backmsg`
--

INSERT INTO `backmsg` (`Bid`, `B_uid`, `msg`, `contact`, `flag`, `date`) VALUES
(1, 11, '11', '11', 1, '2016-05-04'),
(2, 29, '111', '111', 1, '2016-05-03'),
(3, 29, '111', '111', 1, '2016-05-02'),
(4, 29, '111', '111', 1, '2016-05-01'),
(5, 29, '测试消息', '13656426618', 1, '2016-05-04'),
(6, 29, '111111', '11111', 1, '2016-05-07'),
(7, 29, '19856885', '', 1, '2016-05-03'),
(8, 29, '"111,lmlm"', '111', 1, '2016-05-04'),
(9, 29, '央视网消息（新闻联播）：在4月15日首个全民国家安全教育日到来之际，中共中央总书记、国家主席、中央军委主席、中央国安委主席习近平作出重要指示。他强调，国泰民安是人民群众最基本、最普遍的愿望。实现中华民族伟大复兴的中国梦，保证人民安居乐业，国家安全是头等大事。要以设立全民国家安全教育日为契机，以总体国家安全观为指导，全面实施国家安全法，深入开展国家安全宣传教育，切实增强全民国家安全意识。要坚持国家安全一切为了人民、一切依靠人民，动员全党全社会共同努力，汇聚起维护国家安全的强大力量，夯实国家安全的社会基础，防范化解各类安全风险，不断提高人民群众的安全感、幸福感。\n\n2014年4月15日，中央国家安全委员会第一次全体会议召开，在这次会议上，习近平提出了总体国家安全观重大战略思想，为新形势下维护国家安全工作确立了重要遵循。2015年7月1日，第十二届全国人大常委会第十五次会议通过《中华人民共和国国家安全法》，将每年4月15日确定为全民国家安全教育日。\n\n', '', 0, '2016-05-01'),
(10, 29, '央视网消息（新闻联播）：在4月15日首个全民国家安全教育日到来之际，中共中央总书记、国家主席、中央军委主席、中央国安委主席习近平作出重要指示。他强调，国泰民安是人民群众最基本、最普遍的愿望。实现中华民族伟大复兴的中国梦，保证人民安居乐业，国家安全是头等大事。要以设立全民国家安全教育日为契机，以总体国家安全观为指导，全面实施国家安全法，深入开展国家安全宣传教育，切实增强全民国家安全意识。要坚持国家安全一切为了人民、一切依靠人民，动员全党全社会共同努力，汇聚起维护国家安全的强大力量，夯实国家安全的社会基础，防范化解各类安全风险，不断提高人民群众的安全感、幸福感。\n\n2014年4月15日，中央国家安全委员会第一次全体会议召开，在这次会议上，习近平提出了总体国家安全观重大战略思想，为新形势下维护国家安全工作确立了重要遵循。2015年7月1日，第十二届全国人大常委会第十五次会议通过《中华人民共和国国家安全法》，将每年4月15日确定为全民国家安全教育日。\n\n', '', 0, '2016-05-04'),
(11, 29, '央视网消息（新闻联播）：在4月15日首个全民国家安全教育日到来之际，中共中央总书记、国家主席、中央军委主席、中央国安委主席习近平作出重要指示。他强调，国泰民安是人民群众最基本、最普遍的愿望。实现中华民族伟大复兴的中国梦，保证人民安居乐业，国家安全是头等大事。要以设立全民国家安全教育日为契机，以总体国家安全观为指导，全面实施国家安全法，深入开展国家安全宣传教育，切实增强全民国家安全意识。要坚持国家安全一切为了人民、一切依靠人民，动员全党全社会共同努力，汇聚起维护国家安全的强大力量，夯实国家安全的社会基础，防范化解各类安全风险，不断提高人民群众的安全感、幸福感。\n\n2014年4月15日，中央国家安全委员会第一次全体会议召开，在这次会议上，习近平提出了总体国家安全观重大战略思想，为新形势下维护国家安全工作确立了重要遵循。2015年7月1日，第十二届全国人大常委会第十五次会议通过《中华人民共和国国家安全法》，将每年4月15日确定为全民国家安全教育日。\n\n', '13656426618', 1, '2016-05-03'),
(12, 30, '哦URL咯哦路兔兔，，，。？？？！！.     2旅途老K', '', 0, '2016-05-03'),
(13, 29, '测试。。！！   \n\n\n\n\n哦哦哦！', '', 0, '2016-05-07'),
(14, 29, '测试。。！！   \n\n\n\n\n哦哦哦！', '', 1, '2016-05-06'),
(15, 29, '7777', '888', 0, '2016-05-05'),
(16, 29, '兔兔噢耶', '', 0, '2016-05-03'),
(17, 29, 'www默默默默XXOO某URL了了了我我我我我我我我兔兔下午天气来咯呢分OK啦了了了考虑我我我兔兔咯哦哦图兔兔图兔兔', '666666', 1, '2016-05-02'),
(18, 29, '我我我我我我我我我', '11111', 0, '2016-05-01'),
(19, 29, '912692510', '', 0, '2016-05-03'),
(20, 51, 'nbznnznnznzbjb', 'n.xndjjdjxj', 1, '2016-05-04'),
(21, 60, '她说，第十七次化疗，疼得受不了。想死。\n\n两年前，她和男友一起去日本读博士。她常觉得肚子疼，有垂坠感，伴随不规律出血。去医院一检查，卵巢癌。\n\n爸妈是小城镇的普通工人，医疗费对他们来说是一笔巨大的负担。所以她选择留在日本接受治疗，日本政府对留学生有医疗补助，算是不幸中的万幸。\n\n代价是孤独。日本签证办起来很麻烦，母亲只能几个月来一次，照顾她十几天，抹着眼泪离开。\n\n爱情是这黑暗中唯一的光。男朋友一边读博一边照顾她，两人像一对苦命的鸳鸯。\n\n', '110119120', 0, '2016-05-09');

-- --------------------------------------------------------

--
-- 表的结构 `device`
--

CREATE TABLE IF NOT EXISTS `device` (
  `Dname` varchar(32) CHARACTER SET utf8 NOT NULL,
  `D_fid` varchar(32) NOT NULL,
  `getType` varchar(32) NOT NULL,
  `getId` varchar(32) NOT NULL,
  `Ddata` varchar(32) CHARACTER SET utf8 NOT NULL DEFAULT '0',
  `flag` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`D_fid`,`getType`,`getId`),
  KEY `D_fid` (`D_fid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- 转存表中的数据 `device`
--

INSERT INTO `device` (`Dname`, `D_fid`, `getType`, `getId`, `Ddata`, `flag`) VALUES
('温湿度光照传感器', '1', '2', '1', '24_49_154', 0),
('书房', '1', '5', '3', '0', 0),
('窗帘-电机1', '1', '6', '1', '1', 0),
('窗帘-电机2', '1', '6', '2', '0', 0),
('第一个灯', '1', '9', '1', '1', 0),
('第二个灯', '1', '9', '2', '1', 0),
('继电器', '1', 'a', '1', '0', 1),
('模拟插座2', '1', 'a1', '2', '1_12', 1),
('模拟空调1', '1', 'a2', '1', '0_43_制热', 1),
('模拟空调2', '1', 'a2', '2', '0_41_制热', 1),
('电视', '1', 'a3', '1', '0_32_29', 1),
('电视机', '1', 'a3', '2', '0_32_30', 1),
('模拟加湿器', '1', 'a4', '1', '0', 1),
('模拟空气净化', '1', 'a5', '1', '0', 1),
('b1门前监控', '1', 'b1', 'smart', '0', 0),
('客厅监控', '1', 'b2', '1', '1', 0),
('其他监控', '1', 'b2', '2', '0', 0),
('家庭2测试', '2', '1', '9', '0', 0),
('test_another', '2', '2', '1', '234567', 0),
('mm新改测试', '2', 'h3', '3', '2', 0);

-- --------------------------------------------------------

--
-- 表的结构 `family`
--

CREATE TABLE IF NOT EXISTS `family` (
  `Fid` int(11) NOT NULL AUTO_INCREMENT,
  `CreatorId` int(11) NOT NULL,
  `Fname` varchar(32) CHARACTER SET utf8 NOT NULL,
  `TerminalId` varchar(32) NOT NULL DEFAULT 'a0',
  `F_Mid` int(11) DEFAULT '0',
  PRIMARY KEY (`Fid`),
  UNIQUE KEY `Fname` (`Fname`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=33 ;

--
-- 转存表中的数据 `family`
--

INSERT INTO `family` (`Fid`, `CreatorId`, `Fname`, `TerminalId`, `F_Mid`) VALUES
(1, 64, '一步风雨', 'abc1234', 3),
(2, 56, '一世彷徨', 'a0', 0),
(3, 1, '无谓心伤', '222pp', 0),
(9, 60, '无力远方', 'a0', 0),
(10, 60, '创建家庭测试', 'a0', 0),
(11, 60, '心家庭', 'a0', 0),
(12, 60, '家庭测试', 'a0', 0),
(31, 65, 'mmmmm', 'a0', 0);

-- --------------------------------------------------------

--
-- 表的结构 `model`
--

CREATE TABLE IF NOT EXISTS `model` (
  `Mid` int(11) NOT NULL AUTO_INCREMENT,
  `Mname` varchar(32) CHARACTER SET utf8 NOT NULL,
  `Mdata` varchar(500) CHARACTER SET utf8 NOT NULL DEFAULT '0_0+0',
  `M_fid` int(11) NOT NULL,
  PRIMARY KEY (`Mid`),
  UNIQUE KEY `Mid` (`Mid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=18 ;

--
-- 转存表中的数据 `model`
--

INSERT INTO `model` (`Mid`, `Mname`, `Mdata`, `M_fid`) VALUES
(1, '居家模式', '6_1+关=a4_1+关=6_2+关=a5_1+关=', 1),
(2, '外出模式', '0_0+0', 1),
(3, '睡眠模式', '0_0+0', 1),
(12, '测试场景', '0_0+0', 1),
(13, '普通模式', '0_0+0', 1),
(16, '一个模式', '0_0+0', 1),
(17, '家庭影院', '0_0+0', 1);

-- --------------------------------------------------------

--
-- 表的结构 `tempinfo`
--

CREATE TABLE IF NOT EXISTS `tempinfo` (
  `TI_id` int(11) NOT NULL AUTO_INCREMENT,
  `TI_fid` varchar(32) NOT NULL,
  `lon` varchar(32) NOT NULL,
  `lat` varchar(32) NOT NULL,
  PRIMARY KEY (`TI_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- 转存表中的数据 `tempinfo`
--

INSERT INTO `tempinfo` (`TI_id`, `TI_fid`, `lon`, `lat`) VALUES
(1, '1', '120.123828', '36.001693'),
(2, '2', '119.1308650000', '37.0092730000'),
(3, '3', '118.1308650000', '35.0092730000'),
(4, '6', '118.1308650000', '36.0092730000'),
(5, '9', '119.1308650000', '34.0092730000');

-- --------------------------------------------------------

--
-- 表的结构 `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) CHARACTER SET utf8 NOT NULL,
  `pass` varchar(50) NOT NULL,
  `U_fid` varchar(11) NOT NULL DEFAULT 'a',
  `U_fid_t` varchar(5) NOT NULL DEFAULT 'a',
  `U_lon` varchar(32) NOT NULL DEFAULT '108',
  `U_lat` varchar(32) NOT NULL DEFAULT '37',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  UNIQUE KEY `name_2` (`name`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=67 ;

--
-- 转存表中的数据 `user`
--

INSERT INTO `user` (`id`, `name`, `pass`, `U_fid`, `U_fid_t`, `U_lon`, `U_lat`) VALUES
(1, '李白嘿嘿嘿', 'mmmmmmm', 'a', 'a', '118.45', '28.45'),
(2, 'nic', 'mmmm22mm', 'null', 'a', '116.66', '31.11'),
(3, 'mm11', 'mmmm', '0', 'a', '115.55', '27.77'),
(4, 'pony', '1993', '0', 'a', '114.44', '29.22'),
(5, 'mf', 'b59c67bf196a4758191e42f76670ceba', '0', 'a', '119.99', '29.99'),
(6, 'mmf', 'b59c67bf196a4758191e42f76670ceba', '0', 'a', '118.88', '28.88'),
(7, 'ii', '36347412c7d30ae6fde3742bbc4f21b9', '0', 'a', '117.77', '27.77'),
(8, 'mmmm', '3104aaddf9c1b3c410493303be4a42bd', '0', 'a', '114.44', '27.22'),
(9, 'meng', '9aee390f19345028f03bb16c588550e1', '0', 'a', '108.92', '37.762'),
(11, 'feng', '9aee390f19345028f03bb16c588550e1', '0', 'a', '114.21', '35.36'),
(12, 'pp', '96e79218965eb72c92a549dd5a330112', '0', 'a', '108.63', '33.23'),
(13, 'pony1983', '96e79218965eb72c92a549dd5a330112', '0', 'a', '118.99', '37.99'),
(14, 'mmmmm', '9aee390f19345028f03bb16c588550e1', '0', 'a', '117.02', '32.01'),
(15, 'ppp', '96e79218965eb72c92a549dd5a330112', '0', 'a', '118.92', '35.00'),
(16, 'pppm', '9aee390f19345028f03bb16c588550e1', '0', 'a', '117.88', '28.88'),
(17, 'rr', 'ff2f24f8b6d253bb5a8bc55728ca7372', '0', 'a', '108.90', '29.99'),
(18, 'mmmmmm', '9982b2a7fceaaee2c8444b5086aee008', '0', 'a', '108.09', '32.90'),
(19, 'mmmmooOjh', '472c049a51e65aa2623a9f57f0904c07', '0', 'a', '118.72', '36.20'),
(20, 'mmiiu', '6d2fe1d6f097816949a2f54ed3d986a8', '0', 'a', '117.90', '32.98'),
(21, 'yyyy', 'af8375cdb64e9c59c822d9091c954a25', '0', 'a', '118.90', '34.33'),
(22, '??????', '??', '0', 'a', '119.5', '33.42'),
(23, '要注册的昵称', '??', 'a', 'a', '102.89', '33.33'),
(24, '李白', 'aa0c4d26a06abb07d0ab982c2bf7efa3', '1', 'a', '118.00', '32.34'),
(25, '孟峰', 'a73f86ae408af70b67141843e7130723', '1', 'a', '110.10', '37.00'),
(26, '啦啦啦啦', 'f63f4fbc9f8c85d409f2f59f2b9e12d5', '0', 'a', '112.66', '33.32'),
(27, '嘟嘟', '94e7d712742adbbb7a73a1d52a7cc1a9', '0', 'a', '101.99', '37.99'),
(28, '眼前的苟且', '9aee390f19345028f03bb16c588550e1', '0', 'a', '109.20', '37.20'),
(29, '李清照', '9aee390f19345028f03bb16c588550e1', '1', 'a', '115.67', '37.56'),
(32, '2222', '9aee390f19345028f03bb16c588550e1', '0', 'a', '118.01', '37.3'),
(31, '9999', '9aee390f19345028f03bb16c588550e1', 'null', 'a', '114.41', '36.21'),
(33, 'Tobey', 'e10adc3949ba59abbe56e057f20f883e', '0', 'a', '109.09', '37.07'),
(34, 'uuuuiiuq', '670b14728ad9902aecba32e22fa4f6bd', '0', 'a', '108.91', '34.43'),
(40, 'nmmnnnnn', '52c69e3a57331081823331c4e69d3f2e', '0', 'a', '119.09', '37.08'),
(36, '1232', '111', '0', 'a', '118.90', '34.09'),
(37, '12', '111', '0', 'a', '112.78', '37.04'),
(38, '1222', '111', '0', 'a', '118.23', '32.71'),
(39, '111122', '111', '0', 'a', '116.45', '32.23'),
(41, 'kkkk', '9aee390f19345028f03bb16c588550e1', '0', 'a', '110.00', '37.00'),
(42, 'mmmmmmbbb', 'e10adc3949ba59abbe56e057f20f883e', '0', 'a', '118.44', '35.23'),
(43, 'mmmmbnn', 'e10adc3949ba59abbe56e057f20f883e', '0', 'a', '113.34', '37.81'),
(44, 'mmmooo', 'd827eb711dc0d40de2429833a9d9f349', '0', 'a', '108.40', '37.02'),
(45, 'mkbhuvv', 'd827eb711dc0d40de2429833a9d9f349', 'a', 'a', '117.77', '33.33'),
(46, 'nndndnfbfhh', 'd827eb711dc0d40de2429833a9d9f349', '0', 'a', '115.09', '33.23'),
(47, '1', '12', '0', 'a', '112.56', '37.65'),
(48, '963258741', '9aee390f19345028f03bb16c588550e1', '0', 'a', '108.56', '37.76'),
(49, 'mmmnbhh', 'd827eb711dc0d40de2429833a9d9f349', '0', 'a', '121.21', '37.21'),
(50, 'nn89999', '9aee390f19345028f03bb16c588550e1', '0', 'a', '109.99', '37.02'),
(51, '李i白', '9aee390f19345028f03bb16c588550e1', '1', 'a', '112.90', '37.00'),
(52, 'mdnbdjkdjdn', '9aee390f19345028f03bb16c588550e1', '0', 'a', '119.44', '36.02'),
(53, 'mzmnsjwj', '9aee390f19345028f03bb16c588550e1', 'null', 'a', '118.88', '33.89'),
(54, '测试账号', '9aee390f19345028f03bb16c588550e1', 'a', 'a', '108.8', '36.09'),
(55, '冷风吹', '9aee390f19345028f03bb16c588550e1', 'null', 'a', '120.124161', '36.001267'),
(56, '我我我我我我我我我我', '9aee390f19345028f03bb16c588550e1', 'a', 'a', '111.11', '36.66'),
(57, '被咯取消', '9aee390f19345028f03bb16c588550e1', 'null', 'a', '107.92', '31.02'),
(58, '图兔兔', '9aee390f19345028f03bb16c588550e1', '6', 'a', '120.00', '36.00'),
(59, '曾经拥有', '9aee390f19345028f03bb16c588550e1', 'a', 'a', '119.22', '37.01'),
(63, '我叫昵称', '9aee390f19345028f03bb16c588550e1', '1', 'a', '108', '37'),
(61, 'mmmnbhhh', '9aee390f19345028f03bb16c588550e1', '14', 'a', '120.12397', '36.00145'),
(62, '二郎', '0fc87a987bc5a65eaaa7838a3a79151a', '1', 'a', '120.119716', '36.007062'),
(64, '起名真的好难', '9aee390f19345028f03bb16c588550e1', '1', '1', '120.123924', '36.001635'),
(65, 'nnnnnn', '9aee390f19345028f03bb16c588550e1', '31', 'a', '108', '37'),
(66, '鬼迷心窍', '9aee390f19345028f03bb16c588550e1', 'a', 'a', '108', '37');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
