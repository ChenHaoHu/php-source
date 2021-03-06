/*
Navicat MySQL Data Transfer

Source Server         : www_qiannaisi_com
Source Server Version : 50642
Source Host           : 129.204.118.28:3306
Source Database       : www_qiannaisi_com

Target Server Type    : MYSQL
Target Server Version : 50642
File Encoding         : 65001

Date: 2019-01-06 10:48:50
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for ims_byjs_sun_account
-- ----------------------------
DROP TABLE IF EXISTS `ims_byjs_sun_account`;
CREATE TABLE `ims_byjs_sun_account` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `weid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '所属帐号',
  `storeid` varchar(1000) NOT NULL,
  `uid` int(10) unsigned NOT NULL DEFAULT '0',
  `from_user` varchar(100) NOT NULL DEFAULT '',
  `accountname` varchar(50) NOT NULL DEFAULT '',
  `password` varchar(200) NOT NULL DEFAULT '',
  `salt` varchar(10) NOT NULL DEFAULT '',
  `pwd` varchar(50) NOT NULL,
  `mobile` varchar(20) NOT NULL,
  `email` varchar(20) NOT NULL,
  `username` varchar(50) NOT NULL,
  `pay_account` varchar(200) NOT NULL,
  `displayorder` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  `dateline` int(10) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '2' COMMENT '状态',
  `role` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '1:店长,2:店员',
  `lastvisit` int(10) unsigned NOT NULL DEFAULT '0',
  `lastip` varchar(15) NOT NULL,
  `areaid` int(10) NOT NULL DEFAULT '0' COMMENT '区域id',
  `is_admin_order` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `is_notice_order` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `is_notice_queue` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `is_notice_service` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `is_notice_boss` tinyint(1) NOT NULL DEFAULT '0',
  `remark` varchar(1000) NOT NULL DEFAULT '' COMMENT '备注',
  `lat` decimal(18,10) NOT NULL DEFAULT '0.0000000000' COMMENT '经度',
  `lng` decimal(18,10) NOT NULL DEFAULT '0.0000000000' COMMENT '纬度',
  `cityname` varchar(50) NOT NULL COMMENT '城市名称',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for ims_byjs_sun_active
-- ----------------------------
DROP TABLE IF EXISTS `ims_byjs_sun_active`;
CREATE TABLE `ims_byjs_sun_active` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `uniacid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '公众号id',
  `subtitle` varchar(45) DEFAULT NULL,
  `title` varchar(200) DEFAULT NULL,
  `createtime` int(13) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `content` text NOT NULL COMMENT '文章内容',
  `sort` int(10) DEFAULT '0',
  `antime` timestamp NULL DEFAULT NULL,
  `hits` int(10) DEFAULT '0',
  `status` tinyint(10) DEFAULT '0' COMMENT '0审核中1审核通过',
  `astime` timestamp NULL DEFAULT NULL,
  `thumb` varchar(200) DEFAULT NULL,
  `num` int(10) DEFAULT '0',
  `sharenum` int(11) DEFAULT NULL COMMENT '每天可分享次数',
  `thumb_url` text,
  `part_num` varchar(15) DEFAULT '0' COMMENT '参与人数',
  `share_plus` varchar(15) DEFAULT '1' COMMENT '分享之后可得的次数',
  `new_partnum` varchar(15) DEFAULT NULL COMMENT '初始虚拟参与人数',
  `user_id` varchar(100) DEFAULT NULL COMMENT '用户ID',
  `storeinfo` varchar(200) DEFAULT NULL COMMENT '店铺信息',
  `showindex` int(11) DEFAULT NULL COMMENT '0不显示1显示',
  `active_num` int(11) DEFAULT NULL COMMENT '活动商品数量',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=119 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for ims_byjs_sun_activerecord
-- ----------------------------
DROP TABLE IF EXISTS `ims_byjs_sun_activerecord`;
CREATE TABLE `ims_byjs_sun_activerecord` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `uniacid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '公众号id',
  `uid` int(10) DEFAULT NULL,
  `pid` int(10) DEFAULT '0',
  `num` int(10) DEFAULT '0',
  `createtime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=88 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for ims_byjs_sun_activity
-- ----------------------------
DROP TABLE IF EXISTS `ims_byjs_sun_activity`;
CREATE TABLE `ims_byjs_sun_activity` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(23) DEFAULT NULL COMMENT '活动名',
  `img` varchar(200) DEFAULT NULL COMMENT '图片',
  `prize_title` varchar(200) DEFAULT NULL COMMENT '礼品标题',
  `fw_num` int(10) DEFAULT NULL COMMENT '访问抽奖次数',
  `fxhy_num` int(10) DEFAULT NULL COMMENT '分享好友次数',
  `fxq_num` int(10) DEFAULT NULL COMMENT '分享群次数',
  `rule` text COMMENT '规则',
  `status` tinyint(4) DEFAULT NULL COMMENT '状态 1开启 2关闭 3 过期',
  `card_id` varchar(200) DEFAULT NULL COMMENT '卡片id',
  `mall` varchar(200) DEFAULT NULL COMMENT '预留字段门店',
  `uniacid` int(10) NOT NULL,
  `fxhy_maxnum` int(10) NOT NULL COMMENT '分享好友最多次数',
  `fxq_maxnum` int(10) NOT NULL COMMENT '分享群最多次数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for ims_byjs_sun_activitydetail
-- ----------------------------
DROP TABLE IF EXISTS `ims_byjs_sun_activitydetail`;
CREATE TABLE `ims_byjs_sun_activitydetail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) DEFAULT NULL,
  `time` varchar(20) DEFAULT NULL,
  `money` decimal(11,2) DEFAULT NULL,
  `uid` int(11) DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for ims_byjs_sun_activityliu
-- ----------------------------
DROP TABLE IF EXISTS `ims_byjs_sun_activityliu`;
CREATE TABLE `ims_byjs_sun_activityliu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '浏览表',
  `aid` int(11) DEFAULT NULL COMMENT '活动ID',
  `uid` int(11) DEFAULT NULL,
  `uniacid` int(11) DEFAULT NULL,
  `time` varchar(20) DEFAULT NULL,
  `num` int(11) DEFAULT NULL COMMENT '浏览次数',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for ims_byjs_sun_activityorder
-- ----------------------------
DROP TABLE IF EXISTS `ims_byjs_sun_activityorder`;
CREATE TABLE `ims_byjs_sun_activityorder` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `orderNum` varchar(50) DEFAULT NULL,
  `uid` int(11) DEFAULT NULL,
  `aid` int(11) DEFAULT NULL,
  `uniacid` int(11) DEFAULT NULL,
  `time` varchar(20) DEFAULT NULL,
  `name` varchar(20) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `gender` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT '1',
  `IDcard` varchar(20) DEFAULT NULL,
  `text` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for ims_byjs_sun_activityping
-- ----------------------------
DROP TABLE IF EXISTS `ims_byjs_sun_activityping`;
CREATE TABLE `ims_byjs_sun_activityping` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `aid` int(11) DEFAULT NULL,
  `uid` int(11) DEFAULT NULL,
  `uniacid` int(11) DEFAULT NULL,
  `content` varchar(500) DEFAULT NULL,
  `time` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for ims_byjs_sun_activitys
-- ----------------------------
DROP TABLE IF EXISTS `ims_byjs_sun_activitys`;
CREATE TABLE `ims_byjs_sun_activitys` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL COMMENT '活动名',
  `address` varchar(100) DEFAULT NULL COMMENT '活动地点',
  `lng` decimal(11,7) DEFAULT NULL,
  `lat` decimal(11,7) DEFAULT NULL,
  `addtime` varchar(20) DEFAULT NULL COMMENT '发起时间',
  `typeid` int(11) DEFAULT NULL COMMENT '类型ID',
  `vir` int(11) DEFAULT NULL COMMENT '虚拟报名人数',
  `virliu` int(11) DEFAULT NULL COMMENT '虚拟浏览',
  `virzan` int(11) DEFAULT NULL COMMENT '虚拟点赞',
  `top` int(11) DEFAULT NULL COMMENT '人数限制',
  `status` int(11) DEFAULT NULL COMMENT '状态',
  `uid` int(11) DEFAULT NULL,
  `ininame` varchar(50) DEFAULT NULL COMMENT '发起人姓名',
  `iniphone` varchar(50) DEFAULT NULL COMMENT '发起人电话',
  `inigender` int(11) DEFAULT NULL COMMENT '性别',
  `application` decimal(11,2) DEFAULT NULL COMMENT '报名费',
  `content` text COMMENT '活动内容',
  `imgs` varchar(100) DEFAULT NULL COMMENT '活动图片',
  `starttime` varchar(20) DEFAULT NULL COMMENT '活动时间',
  `endtime` varchar(20) DEFAULT NULL COMMENT '报名截止时间',
  `uniacid` int(11) DEFAULT NULL,
  `state` int(11) DEFAULT NULL COMMENT '是否推荐',
  `type` int(11) DEFAULT NULL COMMENT '是否宣传',
  `num` int(11) DEFAULT NULL,
  `is_open` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for ims_byjs_sun_activityshou
-- ----------------------------
DROP TABLE IF EXISTS `ims_byjs_sun_activityshou`;
CREATE TABLE `ims_byjs_sun_activityshou` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `aid` int(11) DEFAULT NULL,
  `uid` int(11) DEFAULT NULL,
  `uniacid` int(11) DEFAULT NULL,
  `time` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for ims_byjs_sun_activitytype
-- ----------------------------
DROP TABLE IF EXISTS `ims_byjs_sun_activitytype`;
CREATE TABLE `ims_byjs_sun_activitytype` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL,
  `uniacid` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `num` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for ims_byjs_sun_activityzan
-- ----------------------------
DROP TABLE IF EXISTS `ims_byjs_sun_activityzan`;
CREATE TABLE `ims_byjs_sun_activityzan` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '活动点赞',
  `aid` int(11) DEFAULT NULL COMMENT '活动ID',
  `uid` int(11) DEFAULT NULL,
  `uniacid` int(11) DEFAULT NULL,
  `time` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for ims_byjs_sun_ad
-- ----------------------------
DROP TABLE IF EXISTS `ims_byjs_sun_ad`;
CREATE TABLE `ims_byjs_sun_ad` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL COMMENT '轮播图标题',
  `logo` varchar(200) NOT NULL COMMENT '图片',
  `status` int(11) NOT NULL COMMENT '1.开启  2.关闭',
  `src` varchar(100) NOT NULL COMMENT '链接',
  `orderby` int(11) NOT NULL COMMENT '排序',
  `xcx_name` varchar(20) NOT NULL,
  `appid` varchar(20) NOT NULL,
  `uniacid` int(11) NOT NULL COMMENT '小程序id',
  `type` int(11) NOT NULL,
  `cityname` varchar(50) NOT NULL,
  `wb_src` varchar(300) NOT NULL,
  `state` int(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for ims_byjs_sun_address
-- ----------------------------
DROP TABLE IF EXISTS `ims_byjs_sun_address`;
CREATE TABLE `ims_byjs_sun_address` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `consignee` varchar(45) NOT NULL,
  `phone` int(11) NOT NULL,
  `address` text NOT NULL,
  `stree` text NOT NULL,
  `uid` text NOT NULL,
  `isdefault` int(11) NOT NULL DEFAULT '0',
  `uniacid` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for ims_byjs_sun_appointment
-- ----------------------------
DROP TABLE IF EXISTS `ims_byjs_sun_appointment`;
CREATE TABLE `ims_byjs_sun_appointment` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `course_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` varchar(23) DEFAULT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `uniacid` int(10) unsigned DEFAULT NULL,
  `time` varchar(40) DEFAULT NULL,
  `state` tinyint(4) DEFAULT NULL COMMENT '1,2,3',
  `coach_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=77 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for ims_byjs_sun_appointmentcoach
-- ----------------------------
DROP TABLE IF EXISTS `ims_byjs_sun_appointmentcoach`;
CREATE TABLE `ims_byjs_sun_appointmentcoach` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `coach_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` varchar(23) DEFAULT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `uniacid` int(10) unsigned DEFAULT NULL,
  `time` varchar(40) DEFAULT NULL,
  `state` tinyint(4) DEFAULT NULL COMMENT '1,2,3',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=49 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for ims_byjs_sun_area
-- ----------------------------
DROP TABLE IF EXISTS `ims_byjs_sun_area`;
CREATE TABLE `ims_byjs_sun_area` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `area_name` varchar(50) NOT NULL COMMENT '区域名称',
  `num` int(11) NOT NULL COMMENT '排序',
  `uniacid` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for ims_byjs_sun_attention
-- ----------------------------
DROP TABLE IF EXISTS `ims_byjs_sun_attention`;
CREATE TABLE `ims_byjs_sun_attention` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NOT NULL,
  `attention_id` int(11) NOT NULL COMMENT '被关注用户id',
  `fans_id` int(11) NOT NULL COMMENT '关注用户id',
  `time` datetime NOT NULL COMMENT '关注时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=128 DEFAULT CHARSET=utf8 COMMENT='关注表';

-- ----------------------------
-- Table structure for ims_byjs_sun_backimg
-- ----------------------------
DROP TABLE IF EXISTS `ims_byjs_sun_backimg`;
CREATE TABLE `ims_byjs_sun_backimg` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `img` varchar(200) NOT NULL,
  `uniacid` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for ims_byjs_sun_banner
-- ----------------------------
DROP TABLE IF EXISTS `ims_byjs_sun_banner`;
CREATE TABLE `ims_byjs_sun_banner` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bname` varchar(45) NOT NULL,
  `lb_imgs` varchar(500) NOT NULL,
  `uniacid` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for ims_byjs_sun_bargain
-- ----------------------------
DROP TABLE IF EXISTS `ims_byjs_sun_bargain`;
CREATE TABLE `ims_byjs_sun_bargain` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `gname` varchar(100) DEFAULT NULL COMMENT '商品名',
  `marketprice` varchar(45) DEFAULT NULL COMMENT '原价',
  `selftime` varchar(100) DEFAULT NULL COMMENT '发布时间',
  `pic` varchar(200) DEFAULT NULL COMMENT '活动图',
  `details` text COMMENT '商品详情',
  `status` int(11) DEFAULT NULL COMMENT '状态 1为开启2为关闭',
  `uniacid` int(11) DEFAULT NULL,
  `starttime` timestamp NULL DEFAULT NULL COMMENT '开始时间',
  `shopprice` varchar(45) DEFAULT NULL COMMENT '最低价',
  `endtime` timestamp NULL DEFAULT NULL COMMENT '结束时间',
  `num` int(11) DEFAULT NULL COMMENT '数量',
  `content` text COMMENT '活动详情',
  `showindex` int(2) DEFAULT '0' COMMENT '0为不开启1为开启',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for ims_byjs_sun_business_account
-- ----------------------------
DROP TABLE IF EXISTS `ims_byjs_sun_business_account`;
CREATE TABLE `ims_byjs_sun_business_account` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `account` varchar(23) NOT NULL,
  `password` varchar(33) NOT NULL,
  `img` varchar(300) DEFAULT NULL,
  `uniacid` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for ims_byjs_sun_business_tel
-- ----------------------------
DROP TABLE IF EXISTS `ims_byjs_sun_business_tel`;
CREATE TABLE `ims_byjs_sun_business_tel` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `phone` varchar(20) NOT NULL,
  `uniacid` int(10) NOT NULL,
  `team` varchar(400) NOT NULL COMMENT '团队描述',
  `logo` varchar(200) NOT NULL COMMENT 'logo',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for ims_byjs_sun_car
-- ----------------------------
DROP TABLE IF EXISTS `ims_byjs_sun_car`;
CREATE TABLE `ims_byjs_sun_car` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL COMMENT '用户id',
  `start_place` varchar(100) NOT NULL COMMENT '出发地',
  `end_place` varchar(100) NOT NULL COMMENT '目的地',
  `start_time` varchar(30) NOT NULL COMMENT '出发时间',
  `num` int(4) NOT NULL COMMENT '乘车人数/可乘人数',
  `link_name` varchar(30) NOT NULL COMMENT '联系人',
  `link_tel` varchar(20) NOT NULL COMMENT '联系电话',
  `typename` varchar(30) NOT NULL COMMENT '分类名称',
  `other` varchar(300) NOT NULL COMMENT '补充',
  `time` int(11) NOT NULL COMMENT '发布时间',
  `sh_time` int(11) NOT NULL COMMENT '审核时间',
  `top_id` int(11) NOT NULL COMMENT '置顶ID',
  `top` int(4) NOT NULL COMMENT '是否置顶,1,是,2否',
  `uniacid` varchar(50) NOT NULL,
  `state` int(4) NOT NULL COMMENT '1待审核,2通过，3拒绝',
  `tj_place` varchar(300) NOT NULL COMMENT '途经地',
  `hw_wet` varchar(10) NOT NULL COMMENT '货物重量',
  `star_lat` varchar(20) NOT NULL COMMENT '出发地维度',
  `star_lng` varchar(20) NOT NULL COMMENT '出发地经度',
  `end_lat` varchar(20) NOT NULL COMMENT '目的地维度',
  `end_lng` varchar(20) NOT NULL COMMENT '目的地经度',
  `is_open` int(4) NOT NULL,
  `start_time2` int(11) NOT NULL,
  `cityname` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='拼车';

-- ----------------------------
-- Table structure for ims_byjs_sun_car_my_tag
-- ----------------------------
DROP TABLE IF EXISTS `ims_byjs_sun_car_my_tag`;
CREATE TABLE `ims_byjs_sun_car_my_tag` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tag_id` int(11) NOT NULL COMMENT '标签id',
  `car_id` int(11) NOT NULL COMMENT '拼车ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for ims_byjs_sun_car_tag
-- ----------------------------
DROP TABLE IF EXISTS `ims_byjs_sun_car_tag`;
CREATE TABLE `ims_byjs_sun_car_tag` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `typename` varchar(30) NOT NULL COMMENT '分类名称',
  `tagname` varchar(30) NOT NULL COMMENT '标签名称',
  `uniacid` varchar(11) NOT NULL COMMENT '50',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for ims_byjs_sun_car_top
-- ----------------------------
DROP TABLE IF EXISTS `ims_byjs_sun_car_top`;
CREATE TABLE `ims_byjs_sun_car_top` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` int(11) NOT NULL COMMENT '1.一天2.一周3.一个月',
  `money` decimal(10,2) NOT NULL COMMENT '价格',
  `uniacid` int(11) NOT NULL,
  `num` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='拼车置顶';

-- ----------------------------
-- Table structure for ims_byjs_sun_card
-- ----------------------------
DROP TABLE IF EXISTS `ims_byjs_sun_card`;
CREATE TABLE `ims_byjs_sun_card` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `font` varchar(100) DEFAULT NULL COMMENT '卡片字',
  `logo` varchar(200) DEFAULT NULL,
  `uniacid` int(10) DEFAULT NULL,
  `chance` varchar(20) DEFAULT NULL COMMENT '几率',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for ims_byjs_sun_cardindex
-- ----------------------------
DROP TABLE IF EXISTS `ims_byjs_sun_cardindex`;
CREATE TABLE `ims_byjs_sun_cardindex` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `is_open` tinyint(4) DEFAULT NULL COMMENT '1开启 2关闭',
  `uniacid` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for ims_byjs_sun_carpaylog
-- ----------------------------
DROP TABLE IF EXISTS `ims_byjs_sun_carpaylog`;
CREATE TABLE `ims_byjs_sun_carpaylog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `car_id` int(44) NOT NULL COMMENT '拼车id',
  `money` decimal(10,2) NOT NULL COMMENT '钱',
  `time` datetime NOT NULL,
  `uniacid` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='拼车支付记录表';

-- ----------------------------
-- Table structure for ims_byjs_sun_coach
-- ----------------------------
DROP TABLE IF EXISTS `ims_byjs_sun_coach`;
CREATE TABLE `ims_byjs_sun_coach` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `coach_name` varchar(23) NOT NULL COMMENT '教练名',
  `logo` varchar(200) NOT NULL COMMENT '图片',
  `uniacid` int(10) NOT NULL,
  `num` int(11) NOT NULL,
  `state` tinyint(4) NOT NULL COMMENT '状态',
  `mall` varchar(100) DEFAULT NULL COMMENT '所属门店',
  `appoint` int(11) NOT NULL COMMENT '预约数',
  `star` varchar(45) NOT NULL COMMENT '星级',
  `life` varchar(45) NOT NULL COMMENT '年限',
  `parise` varchar(45) NOT NULL COMMENT '好评率',
  `background` varchar(400) NOT NULL COMMENT '教练背景',
  `appmoney` decimal(10,2) NOT NULL COMMENT '预约金额',
  `account` varchar(45) NOT NULL COMMENT '账号',
  `password` varchar(45) NOT NULL COMMENT '密码',
  `mobile` varchar(23) NOT NULL,
  `msg` varchar(200) NOT NULL COMMENT '简单描述',
  `detail` varchar(400) NOT NULL COMMENT '荣誉资质',
  `coach_detail` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for ims_byjs_sun_coachcourse
-- ----------------------------
DROP TABLE IF EXISTS `ims_byjs_sun_coachcourse`;
CREATE TABLE `ims_byjs_sun_coachcourse` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cid` int(11) DEFAULT NULL COMMENT '教练ID',
  `cid1` int(11) DEFAULT NULL COMMENT '课程ID',
  `uniacid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for ims_byjs_sun_comments
-- ----------------------------
DROP TABLE IF EXISTS `ims_byjs_sun_comments`;
CREATE TABLE `ims_byjs_sun_comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `information_id` int(11) NOT NULL COMMENT '帖子id',
  `details` varchar(200) NOT NULL COMMENT '评论详情',
  `time` varchar(20) NOT NULL COMMENT '时间',
  `reply` varchar(200) NOT NULL COMMENT '回复详情',
  `hf_time` varchar(20) NOT NULL COMMENT '回复时间',
  `user_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `score` decimal(10,1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for ims_byjs_sun_commission_withdrawal
-- ----------------------------
DROP TABLE IF EXISTS `ims_byjs_sun_commission_withdrawal`;
CREATE TABLE `ims_byjs_sun_commission_withdrawal` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `type` int(11) NOT NULL COMMENT '1.支付宝2.银行卡',
  `state` int(11) NOT NULL COMMENT '1.审核中2.通过3.拒绝',
  `time` int(11) NOT NULL COMMENT '申请时间',
  `sh_time` int(11) NOT NULL COMMENT '审核时间',
  `uniacid` int(11) NOT NULL,
  `user_name` varchar(20) NOT NULL,
  `account` varchar(100) NOT NULL,
  `tx_cost` decimal(10,2) NOT NULL COMMENT '提现金额',
  `sj_cost` decimal(10,2) NOT NULL COMMENT '实际到账金额',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='佣金提现';

-- ----------------------------
-- Table structure for ims_byjs_sun_coupon_order
-- ----------------------------
DROP TABLE IF EXISTS `ims_byjs_sun_coupon_order`;
CREATE TABLE `ims_byjs_sun_coupon_order` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `uniacid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '公众号id',
  `pid` int(10) DEFAULT '0',
  `uid` int(10) DEFAULT NULL,
  `cid` int(10) DEFAULT '0',
  `createtime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `status` tinyint(10) DEFAULT '0',
  `num` int(10) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=120 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for ims_byjs_sun_course
-- ----------------------------
DROP TABLE IF EXISTS `ims_byjs_sun_course`;
CREATE TABLE `ims_byjs_sun_course` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `course_id` int(11) unsigned NOT NULL COMMENT '课程id',
  `course_name` varchar(100) NOT NULL DEFAULT '' COMMENT '课程名',
  `course_img` varchar(500) NOT NULL DEFAULT '' COMMENT '课程图片',
  `course_price` decimal(10,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '课程价格',
  `course_coach` varchar(12) NOT NULL COMMENT '课程教练',
  `course_type` varchar(20) DEFAULT NULL COMMENT '课程类型',
  `course_time` datetime DEFAULT NULL COMMENT '上课时间',
  `course_adapt_people` varchar(200) DEFAULT NULL COMMENT '课程适合人群',
  `course_describe` varchar(200) DEFAULT NULL COMMENT '课程描述',
  `course_step_title` varchar(100) NOT NULL COMMENT '课程分解小步步骤标题',
  `course_step_describe` varchar(200) DEFAULT NULL COMMENT '课程步骤描述',
  `course_step_img` varchar(500) NOT NULL COMMENT '课程步骤图',
  `course_status` tinyint(4) DEFAULT '1' COMMENT '课程状态',
  `uniacid` int(10) NOT NULL DEFAULT '22',
  `mall` varchar(200) NOT NULL COMMENT '店名',
  `backimg` varchar(400) NOT NULL COMMENT '背景图',
  `top` tinyint(4) NOT NULL,
  `top_time` datetime NOT NULL,
  `logo` varchar(400) NOT NULL COMMENT '首页推荐课程图',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=34 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for ims_byjs_sun_course_type
-- ----------------------------
DROP TABLE IF EXISTS `ims_byjs_sun_course_type`;
CREATE TABLE `ims_byjs_sun_course_type` (
  `type_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `course_type` varchar(30) NOT NULL DEFAULT '' COMMENT '课程类型',
  `type_status` tinyint(4) unsigned NOT NULL COMMENT '类型状态',
  `top` tinyint(4) DEFAULT '0' COMMENT '置顶操作标识',
  `top_time` datetime DEFAULT NULL COMMENT '置顶操作的时间',
  `type_img` varchar(100) DEFAULT NULL COMMENT '课程类型logo',
  `uniacid` int(10) NOT NULL DEFAULT '22',
  `type_course` varchar(200) DEFAULT NULL COMMENT '类型的具有的课程',
  `type_imgindex` varchar(400) NOT NULL COMMENT '封面图',
  PRIMARY KEY (`type_id`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for ims_byjs_sun_distribution
-- ----------------------------
DROP TABLE IF EXISTS `ims_byjs_sun_distribution`;
CREATE TABLE `ims_byjs_sun_distribution` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `user_name` varchar(20) NOT NULL,
  `user_tel` varchar(20) NOT NULL,
  `state` int(11) NOT NULL COMMENT '1.审核中2.通过3.拒绝',
  `uniacid` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='分销申请';

-- ----------------------------
-- Table structure for ims_byjs_sun_earnings
-- ----------------------------
DROP TABLE IF EXISTS `ims_byjs_sun_earnings`;
CREATE TABLE `ims_byjs_sun_earnings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `son_id` int(11) NOT NULL COMMENT '下线',
  `money` decimal(10,2) NOT NULL,
  `time` int(11) NOT NULL,
  `uniacid` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='佣金收益表';

-- ----------------------------
-- Table structure for ims_byjs_sun_expert
-- ----------------------------
DROP TABLE IF EXISTS `ims_byjs_sun_expert`;
CREATE TABLE `ims_byjs_sun_expert` (
  `id` int(32) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `uniacid` varchar(50) NOT NULL COMMENT '小程序版本标识',
  `user_id` int(11) NOT NULL COMMENT '发布用户id',
  `content` varchar(255) DEFAULT NULL COMMENT '文字内容',
  `img` longtext COMMENT '图片',
  `comment_num` int(11) NOT NULL DEFAULT '0' COMMENT '达人圈内容被评论数',
  `collect_num` int(11) NOT NULL DEFAULT '0' COMMENT '达人圈内容被收藏数',
  `release_time` datetime NOT NULL COMMENT '内容发布时间',
  `isshow` tinyint(1) NOT NULL DEFAULT '1' COMMENT '是否显示，1显示',
  `isexamine` tinyint(4) DEFAULT '0' COMMENT '0未审核1审核',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=479 DEFAULT CHARSET=utf8 COMMENT='达人圈';

-- ----------------------------
-- Table structure for ims_byjs_sun_expert_comment
-- ----------------------------
DROP TABLE IF EXISTS `ims_byjs_sun_expert_comment`;
CREATE TABLE `ims_byjs_sun_expert_comment` (
  `id` int(32) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `expert_id` int(32) NOT NULL COMMENT '达人圈表id',
  `content` varchar(255) DEFAULT NULL COMMENT '评论内容',
  `release_time` datetime NOT NULL COMMENT '评论发布时间',
  `like_num` int(11) DEFAULT '0' COMMENT '评论被点赞数',
  `user_id` int(11) NOT NULL COMMENT '发表评论用户id',
  `reply` text COMMENT '回复内容',
  `replytime` datetime NOT NULL COMMENT '回复时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=28 DEFAULT CHARSET=utf8 COMMENT='达人圈评论表';

-- ----------------------------
-- Table structure for ims_byjs_sun_fx
-- ----------------------------
DROP TABLE IF EXISTS `ims_byjs_sun_fx`;
CREATE TABLE `ims_byjs_sun_fx` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL COMMENT '用户ID',
  `zf_user_id` int(11) NOT NULL COMMENT '转发人ID',
  `money` decimal(10,2) NOT NULL COMMENT '金额',
  `time` int(11) NOT NULL COMMENT '时间戳',
  `uniacid` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='分销表';

-- ----------------------------
-- Table structure for ims_byjs_sun_fxset
-- ----------------------------
DROP TABLE IF EXISTS `ims_byjs_sun_fxset`;
CREATE TABLE `ims_byjs_sun_fxset` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fx_details` text NOT NULL COMMENT '分销商申请协议',
  `tx_details` text NOT NULL COMMENT '佣金提现协议',
  `is_fx` int(11) NOT NULL COMMENT '1.开启分销审核2.不开启',
  `is_ej` int(11) NOT NULL COMMENT '是否开启二级分销1.是2.否',
  `tx_rate` int(11) NOT NULL COMMENT '提现手续费',
  `commission` varchar(10) NOT NULL COMMENT '一级佣金',
  `commission2` varchar(10) NOT NULL COMMENT '二级佣金',
  `tx_money` int(11) NOT NULL COMMENT '提现门槛',
  `img` varchar(100) NOT NULL COMMENT '分销中心图片',
  `img2` varchar(100) NOT NULL COMMENT '申请分销图片',
  `uniacid` int(11) NOT NULL,
  `is_open` int(11) NOT NULL DEFAULT '1' COMMENT '1.开启2关闭',
  `instructions` text NOT NULL COMMENT '分销商说明',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for ims_byjs_sun_fxuser
-- ----------------------------
DROP TABLE IF EXISTS `ims_byjs_sun_fxuser`;
CREATE TABLE `ims_byjs_sun_fxuser` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL COMMENT '一级分销',
  `fx_user` int(11) NOT NULL COMMENT '二级分销',
  `time` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for ims_byjs_sun_gift
-- ----------------------------
DROP TABLE IF EXISTS `ims_byjs_sun_gift`;
CREATE TABLE `ims_byjs_sun_gift` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `uniacid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '公众号id',
  `title` varchar(200) DEFAULT NULL,
  `createtime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `content` text NOT NULL COMMENT '文章内容',
  `sort` int(10) DEFAULT '0',
  `hits` int(10) DEFAULT '0',
  `status` tinyint(10) DEFAULT '0',
  `thumb` varchar(200) DEFAULT NULL,
  `thumb2` varchar(200) DEFAULT NULL,
  `pid` int(10) DEFAULT '0',
  `rate` mediumint(10) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=91 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for ims_byjs_sun_gift_order
-- ----------------------------
DROP TABLE IF EXISTS `ims_byjs_sun_gift_order`;
CREATE TABLE `ims_byjs_sun_gift_order` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `uniacid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '公众号id',
  `pid` int(10) DEFAULT '0',
  `uid` varchar(100) NOT NULL,
  `createtime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `status` tinyint(10) DEFAULT '0',
  `consignee` varchar(45) DEFAULT NULL,
  `tel` varchar(45) DEFAULT NULL,
  `note` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=124 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for ims_byjs_sun_goods
-- ----------------------------
DROP TABLE IF EXISTS `ims_byjs_sun_goods`;
CREATE TABLE `ims_byjs_sun_goods` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `store_id` int(11) NOT NULL,
  `goods_volume` varchar(45) NOT NULL COMMENT '商家ID',
  `spec_id` int(11) NOT NULL COMMENT '主规格ID',
  `goods_name` varchar(100) NOT NULL COMMENT '商品名称',
  `goods_num` int(11) NOT NULL COMMENT '商品数量',
  `goods_price` decimal(10,2) NOT NULL,
  `goods_cost` decimal(10,2) NOT NULL,
  `type_id` int(11) NOT NULL,
  `freight` decimal(10,2) NOT NULL COMMENT '运费',
  `delivery` varchar(500) NOT NULL COMMENT '关于发货',
  `quality` int(4) NOT NULL COMMENT '正品1是,0否',
  `free` int(4) NOT NULL COMMENT '包邮1是,0否',
  `all_day` int(4) NOT NULL COMMENT '24小时发货1是,0否',
  `service` int(4) NOT NULL COMMENT '售后服务1是,0否',
  `refund` int(4) NOT NULL COMMENT '极速退款1是,0否',
  `weeks` int(4) NOT NULL COMMENT '7天包邮1是，0否',
  `lb_imgs` varchar(500) NOT NULL COMMENT '轮播图',
  `imgs` varchar(500) NOT NULL COMMENT '商品介绍图',
  `time` int(11) NOT NULL COMMENT '时间',
  `uniacid` varchar(50) NOT NULL,
  `goods_details` text NOT NULL COMMENT '商品详细',
  `state` int(4) NOT NULL DEFAULT '1' COMMENT '1待审核,2通过，3拒绝',
  `sy_num` int(11) NOT NULL COMMENT '剩余数量',
  `is_show` int(11) NOT NULL,
  `sales` int(11) NOT NULL,
  `spec_name` varchar(45) NOT NULL,
  `spec_value` varchar(200) NOT NULL,
  `spec_names` varchar(45) NOT NULL,
  `spec_values` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=70 DEFAULT CHARSET=utf8 COMMENT='商品表';

-- ----------------------------
-- Table structure for ims_byjs_sun_goods_spec
-- ----------------------------
DROP TABLE IF EXISTS `ims_byjs_sun_goods_spec`;
CREATE TABLE `ims_byjs_sun_goods_spec` (
  `spec_value` varchar(45) NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `spec_name` varchar(100) NOT NULL COMMENT '规格名称',
  `sort` int(4) NOT NULL COMMENT '排序',
  `uniacid` varchar(50) NOT NULL COMMENT '50',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='商品规格表';

-- ----------------------------
-- Table structure for ims_byjs_sun_goodsarticle
-- ----------------------------
DROP TABLE IF EXISTS `ims_byjs_sun_goodsarticle`;
CREATE TABLE `ims_byjs_sun_goodsarticle` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `goods_id` int(11) NOT NULL COMMENT '商品ID',
  `title` varchar(16) NOT NULL COMMENT '标题',
  `article` text COMMENT '内容',
  `img` varchar(100) DEFAULT NULL COMMENT '图片',
  `top` tinyint(4) unsigned DEFAULT NULL,
  `top_time` datetime DEFAULT NULL,
  `uniacid` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for ims_byjs_sun_goodsbanner
-- ----------------------------
DROP TABLE IF EXISTS `ims_byjs_sun_goodsbanner`;
CREATE TABLE `ims_byjs_sun_goodsbanner` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bname` varchar(20) DEFAULT NULL,
  `lb_imgs` varchar(400) DEFAULT NULL,
  `uniacid` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='充能量轮播图';

-- ----------------------------
-- Table structure for ims_byjs_sun_goodsdiscount
-- ----------------------------
DROP TABLE IF EXISTS `ims_byjs_sun_goodsdiscount`;
CREATE TABLE `ims_byjs_sun_goodsdiscount` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `goods_id` int(11) NOT NULL,
  `uniacid` int(10) unsigned NOT NULL DEFAULT '22',
  `goods_name` varchar(30) DEFAULT NULL,
  `goods_price` decimal(10,2) DEFAULT NULL,
  `goods_new_price` decimal(10,2) DEFAULT NULL COMMENT '新价格',
  `endtime` datetime DEFAULT NULL COMMENT '活动结束时间',
  `goods_img` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for ims_byjs_sun_goodsrecom
-- ----------------------------
DROP TABLE IF EXISTS `ims_byjs_sun_goodsrecom`;
CREATE TABLE `ims_byjs_sun_goodsrecom` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `gid` int(11) DEFAULT NULL,
  `uniacid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for ims_byjs_sun_gowith
-- ----------------------------
DROP TABLE IF EXISTS `ims_byjs_sun_gowith`;
CREATE TABLE `ims_byjs_sun_gowith` (
  `id` int(32) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `uniacid` varchar(50) NOT NULL,
  `user_id` int(11) NOT NULL COMMENT '发布用户的id',
  `content` varchar(255) DEFAULT NULL COMMENT '文字内容',
  `img` longtext COMMENT '图片',
  `like_num` int(11) DEFAULT NULL COMMENT '结伴行内容被点赞数',
  `collect_num` int(11) DEFAULT NULL COMMENT '结伴行内容被收藏数',
  `release_time` datetime NOT NULL COMMENT '内容发布时间',
  `visa_id` int(11) DEFAULT NULL COMMENT '签证id',
  `goods_id` int(11) DEFAULT NULL COMMENT '商品id',
  `comment_num` int(11) NOT NULL COMMENT '结伴行内容评论数',
  `content_time` varchar(255) NOT NULL COMMENT '发布内容中的时间',
  `content_route` varchar(255) NOT NULL COMMENT '发布内容中的路线',
  `isshow` tinyint(1) NOT NULL DEFAULT '1' COMMENT '是否显示，1显示',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=32 DEFAULT CHARSET=utf8 COMMENT='结伴行';

-- ----------------------------
-- Table structure for ims_byjs_sun_groups
-- ----------------------------
DROP TABLE IF EXISTS `ims_byjs_sun_groups`;
CREATE TABLE `ims_byjs_sun_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `gname` varchar(100) DEFAULT NULL COMMENT '商品名',
  `marketprice` decimal(10,2) DEFAULT NULL COMMENT '原价',
  `selftime` varchar(100) DEFAULT NULL COMMENT '发布时间',
  `pic` varchar(200) DEFAULT NULL COMMENT '活动图',
  `details` text COMMENT '商品详情',
  `status` int(11) DEFAULT NULL COMMENT '状态 1为开启2为关闭',
  `uniacid` int(11) DEFAULT NULL,
  `starttime` timestamp NULL DEFAULT NULL COMMENT '开始时间',
  `shopprice` decimal(10,2) DEFAULT NULL COMMENT '最低价',
  `endtime` timestamp NULL DEFAULT NULL COMMENT '结束时间',
  `num` int(11) DEFAULT NULL COMMENT '数量',
  `content` text COMMENT '活动详情',
  `groups_num` int(11) DEFAULT NULL COMMENT '几人成团',
  `is_deliver` int(2) DEFAULT '0' COMMENT '1为自动退款2为否',
  `showindex` int(2) DEFAULT '0' COMMENT '0为不显示1为显示',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for ims_byjs_sun_hblq
-- ----------------------------
DROP TABLE IF EXISTS `ims_byjs_sun_hblq`;
CREATE TABLE `ims_byjs_sun_hblq` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL COMMENT '用户ID',
  `tz_id` int(11) NOT NULL COMMENT '帖子ID',
  `money` decimal(10,2) NOT NULL COMMENT '金额',
  `time` int(11) NOT NULL COMMENT '时间戳',
  `uniacid` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='红包领取表';

-- ----------------------------
-- Table structure for ims_byjs_sun_help
-- ----------------------------
DROP TABLE IF EXISTS `ims_byjs_sun_help`;
CREATE TABLE `ims_byjs_sun_help` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `question` varchar(200) NOT NULL COMMENT '标题',
  `answer` text NOT NULL COMMENT '回答',
  `sort` int(4) NOT NULL COMMENT '排序',
  `uniacid` varchar(50) NOT NULL,
  `created_time` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for ims_byjs_sun_hotcity
-- ----------------------------
DROP TABLE IF EXISTS `ims_byjs_sun_hotcity`;
CREATE TABLE `ims_byjs_sun_hotcity` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityname` varchar(50) NOT NULL COMMENT '城市名称',
  `time` int(11) NOT NULL COMMENT '创建时间',
  `uniacid` varchar(50) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for ims_byjs_sun_information
-- ----------------------------
DROP TABLE IF EXISTS `ims_byjs_sun_information`;
CREATE TABLE `ims_byjs_sun_information` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `details` text NOT NULL COMMENT '内容',
  `img` text NOT NULL COMMENT '图片',
  `user_id` int(11) NOT NULL COMMENT '用户id',
  `user_name` varchar(20) NOT NULL COMMENT '联系人',
  `user_tel` varchar(20) NOT NULL COMMENT '电话',
  `hot` int(11) NOT NULL COMMENT '1.热门 2.不热门',
  `top` int(11) NOT NULL COMMENT '1.置顶 2.不置顶',
  `givelike` int(11) NOT NULL COMMENT '点赞数',
  `views` int(11) NOT NULL COMMENT '浏览量',
  `uniacid` int(11) NOT NULL COMMENT '小程序id',
  `type2_id` int(11) NOT NULL COMMENT '分类二id',
  `type_id` int(11) NOT NULL,
  `state` int(11) NOT NULL COMMENT '1.待审核 2.通过3拒绝',
  `money` decimal(10,2) NOT NULL,
  `time` int(11) NOT NULL COMMENT '发布时间',
  `sh_time` int(11) NOT NULL,
  `top_type` int(11) NOT NULL,
  `address` varchar(500) NOT NULL,
  `hb_money` decimal(10,2) NOT NULL,
  `hb_num` int(11) NOT NULL,
  `hb_type` int(11) NOT NULL,
  `hb_keyword` varchar(20) NOT NULL,
  `hb_random` int(11) NOT NULL,
  `hong` text NOT NULL,
  `store_id` int(11) NOT NULL,
  `del` int(11) NOT NULL DEFAULT '2',
  `user_img2` varchar(100) NOT NULL,
  `dq_time` int(11) NOT NULL,
  `cityname` varchar(50) NOT NULL,
  `hbfx_num` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for ims_byjs_sun_label
-- ----------------------------
DROP TABLE IF EXISTS `ims_byjs_sun_label`;
CREATE TABLE `ims_byjs_sun_label` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `label_name` varchar(20) NOT NULL,
  `type2_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for ims_byjs_sun_like
-- ----------------------------
DROP TABLE IF EXISTS `ims_byjs_sun_like`;
CREATE TABLE `ims_byjs_sun_like` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `information_id` int(11) NOT NULL COMMENT '帖子id',
  `user_id` int(11) NOT NULL COMMENT '用户id',
  `zx_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for ims_byjs_sun_mall
-- ----------------------------
DROP TABLE IF EXISTS `ims_byjs_sun_mall`;
CREATE TABLE `ims_byjs_sun_mall` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `stutes` tinyint(4) NOT NULL,
  `uniacid` int(10) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `address` varchar(400) NOT NULL,
  `tel` varchar(23) NOT NULL COMMENT '联系电话',
  `logo` varchar(400) NOT NULL COMMENT '店铺LOGO',
  `detail` text NOT NULL,
  `lng` decimal(11,7) DEFAULT NULL,
  `lat` decimal(11,7) DEFAULT NULL,
  `account` varchar(100) DEFAULT NULL,
  `pwd` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='门店表';

-- ----------------------------
-- Table structure for ims_byjs_sun_mallcoach
-- ----------------------------
DROP TABLE IF EXISTS `ims_byjs_sun_mallcoach`;
CREATE TABLE `ims_byjs_sun_mallcoach` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mid` int(11) DEFAULT NULL COMMENT '门店ID',
  `cid` int(11) DEFAULT NULL COMMENT '教练ID',
  `uniacid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for ims_byjs_sun_mb
-- ----------------------------
DROP TABLE IF EXISTS `ims_byjs_sun_mb`;
CREATE TABLE `ims_byjs_sun_mb` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `is_open` tinyint(4) NOT NULL COMMENT '1,关闭,2开启',
  `uniacid` int(10) NOT NULL,
  `mb1` varchar(200) DEFAULT NULL COMMENT '模版ID',
  `mb2` varchar(200) DEFAULT NULL,
  `mb3` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for ims_byjs_sun_meal
-- ----------------------------
DROP TABLE IF EXISTS `ims_byjs_sun_meal`;
CREATE TABLE `ims_byjs_sun_meal` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `typeid` int(11) DEFAULT NULL,
  `count` int(11) DEFAULT NULL COMMENT '餐劵使用次数',
  `name` varchar(50) DEFAULT NULL COMMENT '餐劵名称',
  `price` decimal(11,2) DEFAULT NULL COMMENT '餐劵价格',
  `imgs` varchar(100) DEFAULT NULL,
  `lb_imgs` varchar(100) DEFAULT NULL COMMENT '轮播图',
  `details` text COMMENT '图文详情',
  `uniacid` int(11) DEFAULT NULL,
  `time` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for ims_byjs_sun_mealorder
-- ----------------------------
DROP TABLE IF EXISTS `ims_byjs_sun_mealorder`;
CREATE TABLE `ims_byjs_sun_mealorder` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) DEFAULT NULL,
  `uid` int(11) DEFAULT NULL,
  `mid` int(11) DEFAULT NULL COMMENT '餐劵ID',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for ims_byjs_sun_mealorderdetail
-- ----------------------------
DROP TABLE IF EXISTS `ims_byjs_sun_mealorderdetail`;
CREATE TABLE `ims_byjs_sun_mealorderdetail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `orderNum` varchar(50) DEFAULT NULL,
  `oid` int(11) DEFAULT NULL,
  `uniacid` int(11) DEFAULT NULL,
  `time` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `type` int(11) DEFAULT NULL COMMENT '1午餐、2晚餐',
  `addr` varchar(200) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `note` varchar(200) DEFAULT NULL COMMENT '备注',
  `name` varchar(50) DEFAULT NULL,
  `count` int(11) DEFAULT NULL COMMENT '使用次数',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for ims_byjs_sun_mealtext
-- ----------------------------
DROP TABLE IF EXISTS `ims_byjs_sun_mealtext`;
CREATE TABLE `ims_byjs_sun_mealtext` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `text` text COMMENT '订餐须知',
  `uniacid` int(11) DEFAULT NULL,
  `color` varchar(20) DEFAULT NULL,
  `lunch` varchar(20) DEFAULT NULL,
  `dinner` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for ims_byjs_sun_mealtype
-- ----------------------------
DROP TABLE IF EXISTS `ims_byjs_sun_mealtype`;
CREATE TABLE `ims_byjs_sun_mealtype` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `typename` varchar(20) DEFAULT NULL,
  `uniacid` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `num` int(11) DEFAULT NULL,
  `img` varchar(100) DEFAULT NULL,
  `content` varchar(200) DEFAULT NULL COMMENT '每日套餐内容',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for ims_byjs_sun_mylabel
-- ----------------------------
DROP TABLE IF EXISTS `ims_byjs_sun_mylabel`;
CREATE TABLE `ims_byjs_sun_mylabel` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `label_id` int(11) NOT NULL,
  `information_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for ims_byjs_sun_news
-- ----------------------------
DROP TABLE IF EXISTS `ims_byjs_sun_news`;
CREATE TABLE `ims_byjs_sun_news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL COMMENT '公告标题',
  `details` text NOT NULL COMMENT '公告详情',
  `num` int(11) NOT NULL COMMENT '排序',
  `uniacid` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `img` varchar(100) NOT NULL,
  `state` int(11) NOT NULL,
  `type` int(11) NOT NULL,
  `cityname` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for ims_byjs_sun_order
-- ----------------------------
DROP TABLE IF EXISTS `ims_byjs_sun_order`;
CREATE TABLE `ims_byjs_sun_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` text NOT NULL,
  `store_id` int(11) NOT NULL,
  `money` decimal(10,2) NOT NULL COMMENT '金额',
  `user_name` varchar(20) NOT NULL COMMENT '联系人',
  `address` varchar(200) NOT NULL COMMENT '联系地址',
  `tel` varchar(20) NOT NULL COMMENT '电话',
  `time` int(11) NOT NULL COMMENT '下单时间',
  `pay_time` int(11) NOT NULL,
  `complete_time` int(11) NOT NULL,
  `fh_time` int(11) NOT NULL COMMENT '发货时间',
  `state` int(11) NOT NULL COMMENT '1.待付款 2.待发货3.待确认4.已完成5.退款中6.已退款7.退款拒绝',
  `order_num` varchar(20) NOT NULL COMMENT '订单号',
  `good_id` varchar(45) NOT NULL,
  `good_name` varchar(200) NOT NULL,
  `good_img` varchar(400) NOT NULL,
  `good_money` varchar(100) NOT NULL,
  `out_trade_no` varchar(50) NOT NULL,
  `good_spec` varchar(200) NOT NULL COMMENT '商品规格',
  `del` int(11) NOT NULL COMMENT '用户删除1是  2否 ',
  `del2` int(11) NOT NULL COMMENT '商家删除1.是2.否',
  `uniacid` int(11) NOT NULL,
  `freight` decimal(10,2) NOT NULL,
  `note` varchar(100) NOT NULL,
  `good_num` varchar(45) NOT NULL,
  `coach` varchar(200) NOT NULL COMMENT '课程预约教练名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=826 DEFAULT CHARSET=utf8 COMMENT='订单表';

-- ----------------------------
-- Table structure for ims_byjs_sun_paylog
-- ----------------------------
DROP TABLE IF EXISTS `ims_byjs_sun_paylog`;
CREATE TABLE `ims_byjs_sun_paylog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fid` int(11) NOT NULL COMMENT '外键id(商家,帖子,黄页,拼车)',
  `money` decimal(10,2) NOT NULL COMMENT '钱',
  `time` datetime NOT NULL COMMENT '时间',
  `uniacid` varchar(50) NOT NULL COMMENT '50',
  `note` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='支付记录表';

-- ----------------------------
-- Table structure for ims_byjs_sun_redpacket
-- ----------------------------
DROP TABLE IF EXISTS `ims_byjs_sun_redpacket`;
CREATE TABLE `ims_byjs_sun_redpacket` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `total` decimal(10,2) unsigned NOT NULL COMMENT '总价',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `uniacid` int(10) unsigned NOT NULL DEFAULT '22',
  `status` tinyint(4) unsigned NOT NULL DEFAULT '1' COMMENT '状态  默认 1     2为禁用',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for ims_byjs_sun_share
-- ----------------------------
DROP TABLE IF EXISTS `ims_byjs_sun_share`;
CREATE TABLE `ims_byjs_sun_share` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `information_id` int(11) NOT NULL COMMENT '帖子id',
  `user_id` int(11) NOT NULL COMMENT '用户id',
  `store_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for ims_byjs_sun_shop_car
-- ----------------------------
DROP TABLE IF EXISTS `ims_byjs_sun_shop_car`;
CREATE TABLE `ims_byjs_sun_shop_car` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `gid` int(11) NOT NULL,
  `num` int(11) NOT NULL,
  `combine` varchar(110) NOT NULL,
  `gname` varchar(55) NOT NULL,
  `price` varchar(45) NOT NULL,
  `pic` varchar(110) NOT NULL,
  `uid` text NOT NULL,
  `uniacid` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for ims_byjs_sun_sms
-- ----------------------------
DROP TABLE IF EXISTS `ims_byjs_sun_sms`;
CREATE TABLE `ims_byjs_sun_sms` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `appkey` varchar(100) NOT NULL,
  `tpl_id` int(11) NOT NULL,
  `uniacid` int(11) NOT NULL,
  `is_open` int(11) NOT NULL DEFAULT '2',
  `tid1` varchar(50) NOT NULL,
  `tid2` varchar(50) NOT NULL,
  `tid3` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for ims_byjs_sun_spec_value
-- ----------------------------
DROP TABLE IF EXISTS `ims_byjs_sun_spec_value`;
CREATE TABLE `ims_byjs_sun_spec_value` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `goods_id` int(11) NOT NULL COMMENT '商品ID',
  `spec_id` int(11) NOT NULL,
  `money` decimal(10,2) NOT NULL COMMENT '价格',
  `name` varchar(50) NOT NULL COMMENT '名称',
  `num` int(11) NOT NULL COMMENT '数量',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for ims_byjs_sun_store
-- ----------------------------
DROP TABLE IF EXISTS `ims_byjs_sun_store`;
CREATE TABLE `ims_byjs_sun_store` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL COMMENT '用户id',
  `store_name` varchar(50) NOT NULL COMMENT '商家名称',
  `address` varchar(200) NOT NULL COMMENT '商家地址',
  `announcement` varchar(100) NOT NULL COMMENT '公告',
  `storetype_id` int(11) NOT NULL COMMENT '主行业分类id',
  `storetype2_id` int(11) NOT NULL COMMENT '商家子分类id',
  `area_id` int(11) NOT NULL COMMENT '区域id',
  `yy_time` varchar(50) NOT NULL COMMENT '营业时间',
  `keyword` varchar(50) NOT NULL COMMENT '关键字',
  `skzf` int(11) NOT NULL COMMENT '1.是 2否(刷卡支付)',
  `wifi` int(11) NOT NULL COMMENT '1.是 2否',
  `mftc` int(11) NOT NULL COMMENT '1.是 2否(免费停车)',
  `jzxy` int(11) NOT NULL COMMENT '1.是 2否(禁止吸烟)',
  `tgbj` int(11) NOT NULL COMMENT '1.是 2否(提供包间)',
  `sfxx` int(11) NOT NULL COMMENT '1.是 2否(沙发休闲)',
  `tel` varchar(20) NOT NULL COMMENT '手机号',
  `logo` varchar(100) NOT NULL,
  `weixin_logo` varchar(100) NOT NULL,
  `ad` text NOT NULL COMMENT '轮播图',
  `state` int(11) NOT NULL COMMENT '1.待审核2通过3拒绝',
  `money` decimal(10,2) NOT NULL COMMENT '金额',
  `password` varchar(100) NOT NULL COMMENT '核销密码',
  `details` text NOT NULL COMMENT '商家简介',
  `uniacid` int(11) NOT NULL,
  `coordinates` varchar(50) NOT NULL,
  `views` int(11) NOT NULL,
  `score` decimal(10,1) NOT NULL,
  `type` int(11) NOT NULL,
  `sh_time` int(11) NOT NULL,
  `time_over` int(11) NOT NULL,
  `img` text NOT NULL,
  `vr_link` text NOT NULL,
  `num` int(11) NOT NULL,
  `start_time` varchar(20) NOT NULL,
  `end_time` varchar(20) NOT NULL,
  `wallet` decimal(10,2) NOT NULL,
  `user_name` varchar(30) NOT NULL,
  `pwd` varchar(50) NOT NULL,
  `dq_time` int(11) NOT NULL,
  `cityname` varchar(50) NOT NULL,
  `time` datetime NOT NULL,
  `fx_num` int(11) NOT NULL,
  `ewm_logo` varchar(100) NOT NULL,
  `is_top` int(4) NOT NULL DEFAULT '2',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for ims_byjs_sun_store_wallet
-- ----------------------------
DROP TABLE IF EXISTS `ims_byjs_sun_store_wallet`;
CREATE TABLE `ims_byjs_sun_store_wallet` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `store_id` int(11) NOT NULL,
  `money` decimal(10,2) NOT NULL,
  `note` varchar(20) NOT NULL,
  `type` int(11) NOT NULL COMMENT '1加2减',
  `time` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='商家钱包明细';

-- ----------------------------
-- Table structure for ims_byjs_sun_storein
-- ----------------------------
DROP TABLE IF EXISTS `ims_byjs_sun_storein`;
CREATE TABLE `ims_byjs_sun_storein` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) DEFAULT NULL,
  `name` varchar(20) DEFAULT NULL,
  `day` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for ims_byjs_sun_storepaylog
-- ----------------------------
DROP TABLE IF EXISTS `ims_byjs_sun_storepaylog`;
CREATE TABLE `ims_byjs_sun_storepaylog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `store_id` int(11) NOT NULL COMMENT '商家ID',
  `money` decimal(10,2) NOT NULL,
  `time` datetime NOT NULL,
  `uniacid` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='商家入驻支付记录表';

-- ----------------------------
-- Table structure for ims_byjs_sun_system
-- ----------------------------
DROP TABLE IF EXISTS `ims_byjs_sun_system`;
CREATE TABLE `ims_byjs_sun_system` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `appid` varchar(100) NOT NULL COMMENT 'appid',
  `appsecret` varchar(200) NOT NULL COMMENT 'appsecret',
  `mchid` varchar(20) NOT NULL COMMENT '商户号',
  `wxkey` varchar(100) NOT NULL COMMENT '商户秘钥',
  `uniacid` varchar(50) NOT NULL,
  `url_name` varchar(20) NOT NULL COMMENT '网址名称',
  `details` text NOT NULL COMMENT '关于我们',
  `url_logo` varchar(100) NOT NULL COMMENT '网址logo',
  `bq_name` varchar(50) NOT NULL COMMENT '版权名称',
  `link_name` varchar(30) NOT NULL COMMENT '网站名称',
  `link_logo` varchar(100) NOT NULL COMMENT '网站logo',
  `support` varchar(20) NOT NULL COMMENT '技术支持',
  `bq_logo` varchar(100) NOT NULL,
  `fontcolor` varchar(20) DEFAULT NULL,
  `color` varchar(20) NOT NULL,
  `tz_appid` varchar(30) NOT NULL,
  `tz_name` varchar(30) NOT NULL,
  `pt_name` varchar(30) NOT NULL COMMENT '平台名称',
  `tz_audit` int(11) NOT NULL COMMENT '帖子审核1.是 2否',
  `sj_audit` int(11) NOT NULL COMMENT '商家审核1.是 2否',
  `mapkey` varchar(200) NOT NULL,
  `tel` varchar(20) NOT NULL,
  `gd_key` varchar(100) NOT NULL,
  `hb_sxf` int(11) NOT NULL,
  `tx_money` decimal(10,2) NOT NULL,
  `tx_sxf` int(11) NOT NULL,
  `tx_details` text NOT NULL,
  `rz_xuz` text NOT NULL,
  `ft_xuz` text NOT NULL,
  `fx_money` decimal(10,2) NOT NULL,
  `is_hhr` int(4) NOT NULL DEFAULT '2',
  `is_hbfl` int(4) NOT NULL DEFAULT '2',
  `is_zx` int(4) NOT NULL DEFAULT '2',
  `is_car` int(4) NOT NULL,
  `pc_xuz` text NOT NULL,
  `pc_money` decimal(10,2) NOT NULL,
  `is_sjrz` int(4) NOT NULL,
  `is_pcfw` int(4) NOT NULL,
  `total_num` int(11) NOT NULL,
  `is_goods` int(4) NOT NULL,
  `apiclient_cert` text NOT NULL,
  `apiclient_key` text NOT NULL,
  `is_openzx` int(4) NOT NULL,
  `is_hyset` int(4) NOT NULL,
  `is_tzopen` int(4) NOT NULL,
  `is_pageopen` int(11) NOT NULL,
  `cityname` varchar(50) NOT NULL,
  `is_tel` int(4) NOT NULL,
  `tx_mode` int(4) NOT NULL DEFAULT '1',
  `many_city` int(4) NOT NULL DEFAULT '2',
  `tx_type` int(4) NOT NULL DEFAULT '2',
  `is_hbzf` int(4) NOT NULL DEFAULT '1',
  `hb_img` varchar(100) NOT NULL,
  `tz_num` int(11) NOT NULL,
  `client_ip` varchar(30) NOT NULL,
  `hb_content` varchar(100) NOT NULL,
  `is_vipcardopen` int(4) NOT NULL DEFAULT '1',
  `is_jkopen` int(4) NOT NULL DEFAULT '1',
  `address` varchar(150) DEFAULT NULL COMMENT '店铺地址',
  `sj_ruzhu` int(5) DEFAULT NULL COMMENT '0为关闭1为开启',
  `is_kanjiaopen` int(4) DEFAULT '0' COMMENT '0关闭1开启',
  `bargain_price` varchar(10) DEFAULT NULL COMMENT '每次砍价的%',
  `sign` varchar(12) DEFAULT NULL COMMENT '本店招牌自定义',
  `bargain_title` varchar(15) DEFAULT NULL COMMENT '砍价分享标题',
  `is_pintuanopen` int(4) DEFAULT NULL COMMENT '2为关闭1为开启',
  `refund` int(4) DEFAULT '1' COMMENT '1为买家申请2为自动退款',
  `refund_time` int(4) DEFAULT '0' COMMENT '自动退款时间 1为24；2为48；3为72；4为活动结束；5为不退款',
  `groups_title` varchar(45) DEFAULT NULL COMMENT '拼团分享标题',
  `yy_money` decimal(10,2) NOT NULL COMMENT '预约金额',
  `developkey` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for ims_byjs_sun_tab
-- ----------------------------
DROP TABLE IF EXISTS `ims_byjs_sun_tab`;
CREATE TABLE `ims_byjs_sun_tab` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `index` varchar(10) DEFAULT NULL COMMENT '首页文字',
  `indeximg` varchar(200) DEFAULT NULL,
  `indeximgs` varchar(200) DEFAULT NULL COMMENT '首页图标',
  `coupon` varchar(10) DEFAULT NULL COMMENT '优惠券',
  `couponimg` varchar(200) DEFAULT NULL,
  `couponimgs` varchar(200) DEFAULT NULL,
  `fans` varchar(10) DEFAULT NULL,
  `fansimg` varchar(200) DEFAULT NULL,
  `fansimgs` varchar(200) DEFAULT NULL,
  `mine` varchar(10) DEFAULT NULL,
  `mineimg` varchar(200) DEFAULT NULL,
  `mineimgs` varchar(200) DEFAULT NULL,
  `fontcolor` varchar(10) DEFAULT NULL,
  `fontcolored` varchar(10) DEFAULT NULL COMMENT '点击后字体颜色',
  `uniacid` int(11) DEFAULT NULL,
  `find` varchar(255) DEFAULT NULL,
  `findimg` varchar(200) DEFAULT NULL,
  `findimgs` varchar(200) DEFAULT NULL,
  `is_fbopen` int(1) DEFAULT '0' COMMENT '0为关闭发布，1为开启',
  `is_shopen` int(1) DEFAULT '0' COMMENT '0为关闭动态审核,1为开启',
  `course` varchar(10) DEFAULT '课程',
  `courseimg` varchar(200) DEFAULT '../../../../byjs_sun/resource/images/index/myUser.png',
  `coach` varchar(10) DEFAULT '教练',
  `coachimg` varchar(200) DEFAULT '../../../../byjs_sun/resource/images/update/icon_coach.png',
  `vip` varchar(10) DEFAULT '入会',
  `vipimg` varchar(200) DEFAULT '../../../../byjs_sun/resource/images/index/Fitness.png',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for ims_byjs_sun_top
-- ----------------------------
DROP TABLE IF EXISTS `ims_byjs_sun_top`;
CREATE TABLE `ims_byjs_sun_top` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` int(11) NOT NULL COMMENT '1.一天2.一周3.一个月',
  `money` decimal(10,2) NOT NULL COMMENT '价格',
  `uniacid` int(11) NOT NULL,
  `num` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for ims_byjs_sun_type
-- ----------------------------
DROP TABLE IF EXISTS `ims_byjs_sun_type`;
CREATE TABLE `ims_byjs_sun_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type_name` varchar(20) NOT NULL COMMENT '分类名称',
  `img` varchar(100) NOT NULL COMMENT '分类图片',
  `uniacid` int(11) NOT NULL COMMENT '小程序id',
  `num` int(11) NOT NULL,
  `money` decimal(10,2) NOT NULL,
  `state` int(4) NOT NULL DEFAULT '1' COMMENT '1为启用，2禁用',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=159 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for ims_byjs_sun_type_show
-- ----------------------------
DROP TABLE IF EXISTS `ims_byjs_sun_type_show`;
CREATE TABLE `ims_byjs_sun_type_show` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `type_id` int(11) unsigned NOT NULL COMMENT '首页展示商品类型id',
  `uniacid` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for ims_byjs_sun_type2
-- ----------------------------
DROP TABLE IF EXISTS `ims_byjs_sun_type2`;
CREATE TABLE `ims_byjs_sun_type2` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL COMMENT '分类名称',
  `type_id` int(11) NOT NULL COMMENT '主分类id',
  `num` int(11) NOT NULL,
  `uniacid` int(11) NOT NULL,
  `state` int(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for ims_byjs_sun_tzpaylog
-- ----------------------------
DROP TABLE IF EXISTS `ims_byjs_sun_tzpaylog`;
CREATE TABLE `ims_byjs_sun_tzpaylog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tz_id` int(11) NOT NULL,
  `money` decimal(10,2) NOT NULL,
  `time` datetime NOT NULL,
  `uniacid` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='帖子支付记录表';

-- ----------------------------
-- Table structure for ims_byjs_sun_user
-- ----------------------------
DROP TABLE IF EXISTS `ims_byjs_sun_user`;
CREATE TABLE `ims_byjs_sun_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `openid` varchar(100) NOT NULL COMMENT 'openid',
  `img` varchar(200) NOT NULL COMMENT '头像',
  `time` varchar(20) NOT NULL COMMENT '注册时间',
  `name` varchar(20) NOT NULL,
  `uniacid` int(11) NOT NULL,
  `money` decimal(10,2) NOT NULL,
  `user_name` varchar(20) NOT NULL,
  `user_tel` varchar(20) NOT NULL,
  `user_address` varchar(200) NOT NULL,
  `commission` decimal(10,2) NOT NULL,
  `state` int(4) NOT NULL DEFAULT '1',
  `attention` varchar(255) DEFAULT '0' COMMENT '关注',
  `fans` varchar(255) DEFAULT '0' COMMENT '粉丝',
  `gender` int(11) NOT NULL DEFAULT '0' COMMENT '性别 0：女 1：男',
  `collection` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2040 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for ims_byjs_sun_user_active
-- ----------------------------
DROP TABLE IF EXISTS `ims_byjs_sun_user_active`;
CREATE TABLE `ims_byjs_sun_user_active` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NOT NULL,
  `uid` varchar(100) NOT NULL COMMENT 'openid',
  `num` int(11) DEFAULT NULL COMMENT '卡片数量',
  `img` varchar(150) DEFAULT NULL,
  `jikanum` int(11) DEFAULT NULL COMMENT '当前可抽奖次数',
  `active_id` int(11) DEFAULT NULL,
  `kapian_id` int(11) DEFAULT NULL,
  `sharenum` int(11) DEFAULT NULL COMMENT '可分享次数',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=69 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for ims_byjs_sun_user_bargain
-- ----------------------------
DROP TABLE IF EXISTS `ims_byjs_sun_user_bargain`;
CREATE TABLE `ims_byjs_sun_user_bargain` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `openid` varchar(200) NOT NULL COMMENT '用户id',
  `gid` int(11) DEFAULT NULL COMMENT '商品ID',
  `mch_id` int(11) DEFAULT NULL COMMENT '0是砍主，其他则返回砍主的ID',
  `status` int(11) DEFAULT NULL,
  `price` decimal(10,0) DEFAULT NULL COMMENT '剩余价格',
  `uniacid` int(11) DEFAULT NULL,
  `add_time` int(11) DEFAULT NULL COMMENT '砍价时间',
  `kanjia` decimal(11,0) NOT NULL COMMENT '砍掉的总价格',
  `prices` decimal(11,2) DEFAULT NULL COMMENT '剩余价格',
  `kanjias` decimal(11,2) DEFAULT NULL COMMENT '砍价总价',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for ims_byjs_sun_user_groups
-- ----------------------------
DROP TABLE IF EXISTS `ims_byjs_sun_user_groups`;
CREATE TABLE `ims_byjs_sun_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '拼团id',
  `mch_id` int(11) DEFAULT NULL COMMENT '判断是否是团长，团长 0，跟团id',
  `gid` int(11) DEFAULT NULL COMMENT '商品的id',
  `openid` varchar(100) DEFAULT NULL COMMENT '用户的id',
  `order_id` varchar(100) DEFAULT NULL COMMENT '订单的id',
  `addtime` varchar(100) DEFAULT NULL COMMENT '加入的时间',
  `uniacid` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL COMMENT '状态  1 为拼团成功，2为拼团中，3为拼团失败',
  `num` int(11) DEFAULT NULL COMMENT '拼团数量',
  `price` decimal(10,2) DEFAULT NULL COMMENT '拼团价格',
  `buynum` int(11) DEFAULT NULL COMMENT '拼团人数',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for ims_byjs_sun_user_vipcard
-- ----------------------------
DROP TABLE IF EXISTS `ims_byjs_sun_user_vipcard`;
CREATE TABLE `ims_byjs_sun_user_vipcard` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` text NOT NULL,
  `vipcard_id` int(11) NOT NULL,
  `card_number` varchar(45) NOT NULL,
  `uniacid` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for ims_byjs_sun_userformid
-- ----------------------------
DROP TABLE IF EXISTS `ims_byjs_sun_userformid`;
CREATE TABLE `ims_byjs_sun_userformid` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL COMMENT '用户id',
  `form_id` varchar(50) NOT NULL COMMENT 'form_id',
  `time` datetime NOT NULL,
  `uniacid` varchar(50) NOT NULL,
  `openid` varchar(50) NOT NULL COMMENT 'openid',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='formid表';

-- ----------------------------
-- Table structure for ims_byjs_sun_userinfo
-- ----------------------------
DROP TABLE IF EXISTS `ims_byjs_sun_userinfo`;
CREATE TABLE `ims_byjs_sun_userinfo` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `uniacid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '公众号id',
  `uid` varchar(100) DEFAULT NULL,
  `name` varchar(200) DEFAULT NULL,
  `tel` varchar(60) DEFAULT NULL,
  `createtime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `status` tinyint(10) DEFAULT '0',
  `nickName` varchar(60) DEFAULT NULL,
  `avatarUrl` varchar(200) DEFAULT NULL,
  `fromuid` int(10) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=75 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for ims_byjs_sun_userwithdraw
-- ----------------------------
DROP TABLE IF EXISTS `ims_byjs_sun_userwithdraw`;
CREATE TABLE `ims_byjs_sun_userwithdraw` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `openid` varchar(200) NOT NULL COMMENT '提现用户openid',
  `money` decimal(10,2) NOT NULL COMMENT '提现金额',
  `wd_type` tinyint(2) NOT NULL DEFAULT '1' COMMENT '提现方式，1微信，2支付宝，3银行账号',
  `wd_name` varchar(50) NOT NULL COMMENT '提现名字',
  `wd_phone` varchar(50) NOT NULL COMMENT '提现联系方式',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0审核中，1通过审核，2拒绝提现，3自动打款',
  `realmoney` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '实际金额',
  `paycommission` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '需要支付佣金',
  `uniacid` int(11) NOT NULL COMMENT 'uniacid',
  `ratesmoney` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '手续费',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for ims_byjs_sun_vip_user
-- ----------------------------
DROP TABLE IF EXISTS `ims_byjs_sun_vip_user`;
CREATE TABLE `ims_byjs_sun_vip_user` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `card_number` varchar(40) NOT NULL COMMENT '会员卡号',
  `card_type_id` int(4) NOT NULL COMMENT '会员卡类型',
  `card_status` int(4) unsigned NOT NULL COMMENT '1为未确认2确认',
  `uniacid` int(10) unsigned NOT NULL,
  `uid` varchar(30) NOT NULL COMMENT 'openid',
  `create_time` varchar(40) DEFAULT NULL COMMENT '购买时间',
  `user_name` varchar(16) NOT NULL COMMENT '会员姓名',
  `tel` varchar(11) DEFAULT NULL COMMENT '联系方式',
  `goal` varchar(100) DEFAULT NULL COMMENT '健身目的',
  `endtime` varchar(40) DEFAULT NULL COMMENT '到期时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=54 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for ims_byjs_sun_vipcard
-- ----------------------------
DROP TABLE IF EXISTS `ims_byjs_sun_vipcard`;
CREATE TABLE `ims_byjs_sun_vipcard` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `card_name` varchar(40) NOT NULL COMMENT '会员卡表',
  `card_logo` varchar(100) DEFAULT NULL COMMENT '会员卡Logo',
  `card_price` decimal(10,2) NOT NULL COMMENT '会员卡价格',
  `ban_time` datetime NOT NULL COMMENT '到期时间',
  `uniacid` int(10) NOT NULL COMMENT 'unicaid',
  `type` int(11) NOT NULL COMMENT '期限类型',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for ims_byjs_sun_vipcardlogo
-- ----------------------------
DROP TABLE IF EXISTS `ims_byjs_sun_vipcardlogo`;
CREATE TABLE `ims_byjs_sun_vipcardlogo` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `logo` varchar(200) NOT NULL,
  `uniacid` int(10) NOT NULL,
  `text` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for ims_byjs_sun_withdrawal
-- ----------------------------
DROP TABLE IF EXISTS `ims_byjs_sun_withdrawal`;
CREATE TABLE `ims_byjs_sun_withdrawal` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(10) NOT NULL COMMENT '真实姓名',
  `username` varchar(100) NOT NULL COMMENT '账号',
  `type` int(11) NOT NULL COMMENT '1支付宝 2.微信 3.银行',
  `time` int(11) NOT NULL COMMENT '申请时间',
  `sh_time` int(11) NOT NULL COMMENT '审核时间',
  `state` int(11) NOT NULL COMMENT '1.待审核 2.通过  3.拒绝',
  `tx_cost` decimal(10,2) NOT NULL COMMENT '提现金额',
  `sj_cost` decimal(10,2) NOT NULL COMMENT '实际金额',
  `user_id` int(11) NOT NULL COMMENT '用户id',
  `uniacid` int(11) NOT NULL,
  `method` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for ims_byjs_sun_withdrawset
-- ----------------------------
DROP TABLE IF EXISTS `ims_byjs_sun_withdrawset`;
CREATE TABLE `ims_byjs_sun_withdrawset` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `wd_type` varchar(50) NOT NULL DEFAULT '1' COMMENT '（1,2,3）提现方式，1微信支付，2支付宝，3银行打款',
  `min_money` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '最低提现金额',
  `avoidmoney` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '免审金额，可直接提现金额',
  `wd_content` text NOT NULL COMMENT '提现须知',
  `cms_rates` float NOT NULL DEFAULT '0' COMMENT '平台佣金比率',
  `uniacid` int(11) NOT NULL COMMENT 'uniacid',
  `is_open` tinyint(1) NOT NULL DEFAULT '1' COMMENT '提现开关，2关，1开',
  `wd_wxrates` float NOT NULL DEFAULT '0' COMMENT '微信提现手续费',
  `wd_alipayrates` float NOT NULL DEFAULT '0' COMMENT '支付宝提现手续费',
  `wd_bankrates` float NOT NULL DEFAULT '0' COMMENT '银行卡提现手续费',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for ims_byjs_sun_yellowpaylog
-- ----------------------------
DROP TABLE IF EXISTS `ims_byjs_sun_yellowpaylog`;
CREATE TABLE `ims_byjs_sun_yellowpaylog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `hy_id` int(11) NOT NULL,
  `money` decimal(10,2) NOT NULL,
  `time` datetime NOT NULL,
  `uniacid` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='黄页支付记录表';

-- ----------------------------
-- Table structure for ims_byjs_sun_yellowset
-- ----------------------------
DROP TABLE IF EXISTS `ims_byjs_sun_yellowset`;
CREATE TABLE `ims_byjs_sun_yellowset` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `days` int(11) NOT NULL COMMENT '入住天数',
  `money` decimal(10,2) NOT NULL,
  `num` int(11) NOT NULL,
  `uniacid` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='黄页设置表';

-- ----------------------------
-- Table structure for ims_byjs_sun_yellowstore
-- ----------------------------
DROP TABLE IF EXISTS `ims_byjs_sun_yellowstore`;
CREATE TABLE `ims_byjs_sun_yellowstore` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `logo` varchar(200) NOT NULL COMMENT 'logo图片',
  `company_name` varchar(100) NOT NULL COMMENT '公司名称',
  `company_address` varchar(200) NOT NULL COMMENT '公司地址',
  `type_id` int(11) NOT NULL COMMENT '二级分类',
  `link_tel` varchar(20) NOT NULL COMMENT '联系电话',
  `sort` int(11) NOT NULL COMMENT '排序',
  `rz_time` int(11) NOT NULL COMMENT '入住时间',
  `sh_time` int(11) NOT NULL COMMENT '审核时间',
  `state` int(4) NOT NULL COMMENT '1待,2通过,3拒绝',
  `rz_type` int(4) NOT NULL COMMENT '入驻类型',
  `time_over` int(4) NOT NULL COMMENT '1到期,2没到期',
  `uniacid` varchar(50) NOT NULL,
  `coordinates` varchar(50) NOT NULL COMMENT '坐标',
  `content` text NOT NULL COMMENT '简介',
  `imgs` varchar(500) NOT NULL COMMENT '多图',
  `views` int(11) NOT NULL,
  `tel2` varchar(20) NOT NULL,
  `cityname` varchar(50) NOT NULL,
  `dq_time` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for ims_byjs_sun_yingxiao
-- ----------------------------
DROP TABLE IF EXISTS `ims_byjs_sun_yingxiao`;
CREATE TABLE `ims_byjs_sun_yingxiao` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `toutiao` varchar(45) NOT NULL,
  `ttimg` varchar(150) NOT NULL,
  `pintuan` varchar(45) NOT NULL,
  `ptimg` varchar(150) NOT NULL,
  `jika` varchar(45) NOT NULL,
  `jkimg` varchar(150) NOT NULL,
  `kanjia` varchar(45) NOT NULL,
  `kjimg` varchar(150) NOT NULL,
  `uniacid` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for ims_byjs_sun_yjset
-- ----------------------------
DROP TABLE IF EXISTS `ims_byjs_sun_yjset`;
CREATE TABLE `ims_byjs_sun_yjset` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` int(4) NOT NULL DEFAULT '1' COMMENT '1统一模式,2分开模式',
  `typer` varchar(10) NOT NULL COMMENT '统一比例',
  `sjper` varchar(10) NOT NULL COMMENT '商家比例',
  `hyper` varchar(10) NOT NULL COMMENT '黄页比例',
  `pcper` varchar(10) NOT NULL COMMENT '拼车比例',
  `tzper` varchar(10) NOT NULL COMMENT '帖子比例',
  `uniacid` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='佣金比例表';

-- ----------------------------
-- Table structure for ims_byjs_sun_yjtx
-- ----------------------------
DROP TABLE IF EXISTS `ims_byjs_sun_yjtx`;
CREATE TABLE `ims_byjs_sun_yjtx` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `account_id` int(11) NOT NULL COMMENT '账号id',
  `tx_type` int(4) NOT NULL COMMENT '提现方式 1,支付宝,2微信,3银联',
  `tx_cost` decimal(10,2) NOT NULL COMMENT '提现金额',
  `status` int(4) NOT NULL COMMENT '状态 1申请,2通过,3拒绝',
  `uniacid` varchar(50) NOT NULL,
  `cerated_time` datetime NOT NULL COMMENT '日期',
  `sj_cost` decimal(10,2) NOT NULL COMMENT '实际金额',
  `account` varchar(30) NOT NULL COMMENT '账户',
  `name` varchar(30) NOT NULL COMMENT '姓名',
  `sx_cost` decimal(10,2) NOT NULL COMMENT '手续费',
  `time` datetime NOT NULL COMMENT '审核时间',
  `is_del` int(4) NOT NULL DEFAULT '1' COMMENT '1正常,2删除',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for ims_byjs_sun_zan
-- ----------------------------
DROP TABLE IF EXISTS `ims_byjs_sun_zan`;
CREATE TABLE `ims_byjs_sun_zan` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `uniacid` int(11) NOT NULL,
  `expert_id` int(11) NOT NULL COMMENT '达人圈id',
  `gowith_id` int(11) NOT NULL COMMENT '结伴行id',
  `user_id` int(11) NOT NULL COMMENT '点赞用户',
  `time` datetime NOT NULL COMMENT '点赞时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=164 DEFAULT CHARSET=gbk COMMENT='点赞表';

-- ----------------------------
-- Table structure for ims_byjs_sun_zx_assess
-- ----------------------------
DROP TABLE IF EXISTS `ims_byjs_sun_zx_assess`;
CREATE TABLE `ims_byjs_sun_zx_assess` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `zx_id` int(4) NOT NULL,
  `score` int(11) NOT NULL,
  `content` text NOT NULL,
  `img` varchar(500) NOT NULL,
  `cerated_time` datetime NOT NULL,
  `user_id` int(11) NOT NULL,
  `uniacid` varchar(50) NOT NULL,
  `status` int(4) NOT NULL,
  `reply` text NOT NULL,
  `reply_time` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for ims_byjs_sun_zx_zj
-- ----------------------------
DROP TABLE IF EXISTS `ims_byjs_sun_zx_zj`;
CREATE TABLE `ims_byjs_sun_zx_zj` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `zx_id` int(11) NOT NULL COMMENT '资讯ID',
  `user_id` int(11) NOT NULL COMMENT '用户ID',
  `uniacid` varchar(50) NOT NULL,
  `time` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='资讯足迹';
