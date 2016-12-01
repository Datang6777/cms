/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50621
Source Host           : localhost:3306
Source Database       : lunhui_tp5

Target Server Type    : MYSQL
Target Server Version : 50621
File Encoding         : 65001

Date: 2016-11-11 21:19:36
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for think_admin
-- ----------------------------
DROP TABLE IF EXISTS `think_admin`;
CREATE TABLE `think_admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) COLLATE 大唐  <datang866@163.com> DEFAULT '' COMMENT '用户名',
  `password` varchar(255) COLLATE 大唐  <datang866@163.com> DEFAULT '' COMMENT '密码',
  `loginnum` int(11) DEFAULT '0' COMMENT '登陆次数',
  `last_login_ip` varchar(255) COLLATE 大唐  <datang866@163.com> DEFAULT '' COMMENT '最后登录IP',
  `last_login_time` int(11) DEFAULT '0' COMMENT '最后登录时间',
  `real_name` varchar(255) COLLATE 大唐  <datang866@163.com> DEFAULT '' COMMENT '真实姓名',
  `status` int(1) DEFAULT '0' COMMENT '状态',
  `groupid` int(11) DEFAULT '1' COMMENT '用户角色id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COLLATE=大唐  <datang866@163.com>;

-- ----------------------------
-- Records of think_admin
-- ----------------------------
INSERT INTO `think_admin` VALUES ('1', 'admin', 'ebbd202c239d6fc65061ae22a13c1b69', '179', '0.0.0.0', '1478868748', 'admin', '1', '1');
INSERT INTO `think_admin` VALUES ('9', 'tjl', 'ad2e48e7d1f92ba78d00cae476d8747e', '18', '0.0.0.0', '1477140627', '田建龙', '1', '2');
INSERT INTO `think_admin` VALUES ('13', 'test', '218dbb225911693af03a713581a7227f', '3', '0.0.0.0', '1478268424', 'test', '1', '4');

-- ----------------------------
-- Table structure for think_article
-- ----------------------------
DROP TABLE IF EXISTS `think_article`;
CREATE TABLE `think_article` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '文章逻辑ID',
  `title` varchar(128) NOT NULL COMMENT '文章标题',
  `cate_id` int(11) NOT NULL DEFAULT '1' COMMENT '文章类别',
  `photo` varchar(64) DEFAULT '' COMMENT '文章图片',
  `remark` varchar(256) DEFAULT '' COMMENT '文章描述',
  `keyword` varchar(32) DEFAULT '' COMMENT '文章关键字',
  `content` text NOT NULL COMMENT '文章内容',
  `views` int(11) NOT NULL DEFAULT '1' COMMENT '浏览量',
  `type` int(1) NOT NULL DEFAULT '1' COMMENT '文章类型',
  `is_tui` int(1) DEFAULT '0' COMMENT '是否推荐',
  `from` varchar(16) NOT NULL DEFAULT '' COMMENT '来源',
  `writer` varchar(64) NOT NULL COMMENT '作者',
  `ip` varchar(16) NOT NULL,
  `create_time` int(11) NOT NULL COMMENT '创建时间',
  `update_time` int(11) DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`),
  KEY `a_title` (`title`)
) ENGINE=MyISAM AUTO_INCREMENT=65 DEFAULT CHARSET=utf8 COMMENT='文章表';

-- ----------------------------
-- Records of think_article
-- ----------------------------
INSERT INTO `think_article` VALUES ('58', '4524245', '1', '/images/2016-02-02/56b09e53c0272.jpg', '245245', '254245', '<p>54245</p>', '1', '1', '1', 'Win 8.1', '轮回', '0.0.0.0', '1454415230', '1454415446');
INSERT INTO `think_article` VALUES ('60', '242542', '1', '/images/2016-02-02/56b0a567d8572.jpg', '2452', '5245', '<p>2452452</p>', '5', '1', '1', 'Win 8.1', '轮回', '0.0.0.0', '1454417258', '1454417258');

-- ----------------------------
-- Table structure for think_article_cate
-- ----------------------------
DROP TABLE IF EXISTS `think_article_cate`;
CREATE TABLE `think_article_cate` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(32) DEFAULT NULL COMMENT '分类名称',
  `orderby` varchar(10) DEFAULT '100' COMMENT '排序',
  `create_time` int(11) DEFAULT NULL COMMENT '创建时间',
  `update_time` int(11) DEFAULT NULL COMMENT '更新时间',
  `status` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of think_article_cate
-- ----------------------------
INSERT INTO `think_article_cate` VALUES ('1', '学习笔记', '1', '1477140627', '1477140627', '1');
INSERT INTO `think_article_cate` VALUES ('2', '生活随笔', '2', '1477140627', '1477140627', '1');
INSERT INTO `think_article_cate` VALUES ('3', '热点分享', '3', '1477140627', '1477140627', '1');
INSERT INTO `think_article_cate` VALUES ('4', '.NET', '4', '1477140627', '1477140627', '1');
INSERT INTO `think_article_cate` VALUES ('5', 'PHP', '5', '1477140627', '1477140627', '1');
INSERT INTO `think_article_cate` VALUES ('6', 'Java', '6', '1477140627', '1477140627', '1');

-- ----------------------------
-- Table structure for think_auth_group
-- ----------------------------
DROP TABLE IF EXISTS `think_auth_group`;
CREATE TABLE `think_auth_group` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `title` char(100) NOT NULL DEFAULT '',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `rules` char(80) NOT NULL DEFAULT '',
  `create_time` int(11) DEFAULT NULL,
  `update_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of think_auth_group
-- ----------------------------
INSERT INTO `think_auth_group` VALUES ('1', '超级管理员', '1', '', '1446535750', '1446535750');
INSERT INTO `think_auth_group` VALUES ('2', '内容管理员', '1', '1,2,9,10,11,12,3,30,31,32,33,34,4,35,36,37,38,39,5,6,7,8,27,28,29,13,14,22,24,25', '1446535750', '1478267882');
INSERT INTO `think_auth_group` VALUES ('3', '系统维护员', '1', '1,2,9,10,11,12,3,30,31,32,33,34,4,35,36,37,38,39,5,6,7,8,27,28,29,13,14,22,24,25', '1446535750', '1478267868');
INSERT INTO `think_auth_group` VALUES ('4', '系统测试员', '1', '1,2,9,10,12,3,30,31,33,34,4,35,36,38,5,6,7,8,27,29,13,14,24,25,40,41,43,26,44,45', '1446535750', '1478268054');
INSERT INTO `think_auth_group` VALUES ('8', '1111', '1', '1,2,9,10,11,12,3,30,31,32,33,34,4,35,36,37,38,39', '1478868813', '1478868827');

-- ----------------------------
-- Table structure for think_auth_group_access
-- ----------------------------
DROP TABLE IF EXISTS `think_auth_group_access`;
CREATE TABLE `think_auth_group_access` (
  `uid` mediumint(8) unsigned NOT NULL,
  `group_id` mediumint(8) unsigned NOT NULL,
  UNIQUE KEY `uid_group_id` (`uid`,`group_id`),
  KEY `uid` (`uid`),
  KEY `group_id` (`group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of think_auth_group_access
-- ----------------------------
INSERT INTO `think_auth_group_access` VALUES ('1', '1');
INSERT INTO `think_auth_group_access` VALUES ('9', '2');
INSERT INTO `think_auth_group_access` VALUES ('13', '4');

-- ----------------------------
-- Table structure for think_auth_rule
-- ----------------------------
DROP TABLE IF EXISTS `think_auth_rule`;
CREATE TABLE `think_auth_rule` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` char(80) NOT NULL DEFAULT '',
  `title` char(20) NOT NULL DEFAULT '',
  `type` tinyint(1) NOT NULL DEFAULT '1',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `css` varchar(20) NOT NULL COMMENT '样式',
  `condition` char(100) NOT NULL DEFAULT '',
  `pid` int(11) NOT NULL DEFAULT '0' COMMENT '父栏目ID',
  `sort` int(11) NOT NULL DEFAULT '0' COMMENT '排序',
  `create_time` int(11) NOT NULL DEFAULT '0' COMMENT '添加时间',
  `update_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=48 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of think_auth_rule
-- ----------------------------
INSERT INTO `think_auth_rule` VALUES ('1', '#', '系统管理', '1', '1', 'fa fa-gear', '', '0', '50', '1446535750', '1477312169');
INSERT INTO `think_auth_rule` VALUES ('2', 'admin/user/index', '用户管理', '1', '1', '', '', '1', '50', '1446535750', '1477312169');
INSERT INTO `think_auth_rule` VALUES ('3', 'admin/role/index', '角色管理', '1', '1', '', '', '1', '50', '1446535750', '1477312169');
INSERT INTO `think_auth_rule` VALUES ('4', 'admin/menu/index', '菜单管理', '1', '1', '', '', '1', '50', '1446535750', '1477312169');
INSERT INTO `think_auth_rule` VALUES ('5', '#', '数据库管理', '1', '1', 'fa fa-database', '', '0', '50', '1446535750', '1477312169');
INSERT INTO `think_auth_rule` VALUES ('6', 'admin/data/index', '数据库备份', '1', '1', '', '', '5', '50', '1446535750', '1477312169');
INSERT INTO `think_auth_rule` VALUES ('7', 'admin/data/optimize', '优化表', '1', '1', '', '', '6', '50', '1477312169', '1477312169');
INSERT INTO `think_auth_rule` VALUES ('8', 'admin/data/repair', '修复表', '1', '1', '', '', '6', '50', '1477312169', '1477312169');
INSERT INTO `think_auth_rule` VALUES ('9', 'admin/user/useradd', '添加用户', '1', '1', '', '', '2', '50', '1477312169', '1477312169');
INSERT INTO `think_auth_rule` VALUES ('10', 'admin/user/useredit', '编辑用户', '1', '1', '', '', '2', '50', '1477312169', '1477312169');
INSERT INTO `think_auth_rule` VALUES ('11', 'admin/user/userdel', '删除用户', '1', '1', '', '', '2', '50', '1477312169', '1477312169');
INSERT INTO `think_auth_rule` VALUES ('12', 'admin/user/user_state', '用户状态', '1', '1', '', '', '2', '50', '1477312169', '1477312169');
INSERT INTO `think_auth_rule` VALUES ('13', '#', '日志管理', '1', '1', 'fa fa-tasks', '', '0', '50', '1477312169', '1477312169');
INSERT INTO `think_auth_rule` VALUES ('14', 'admin/log/operate_log', '行为日志', '1', '1', '', '', '13', '50', '1477312169', '1477312169');
INSERT INTO `think_auth_rule` VALUES ('22', 'admin/log/del_log', '删除日志', '1', '1', '', '', '14', '50', '1477312169', '1477316778');
INSERT INTO `think_auth_rule` VALUES ('24', '#', '文章管理', '1', '1', 'fa fa-paste', '', '0', '50', '1477312169', '1477312169');
INSERT INTO `think_auth_rule` VALUES ('25', 'admin/article/index_cate', '文章分类', '1', '1', '', '', '24', '50', '1477312260', '1477312260');
INSERT INTO `think_auth_rule` VALUES ('26', 'admin/article/index', '文章列表', '1', '1', '', '', '24', '50', '1477312333', '1477312333');
INSERT INTO `think_auth_rule` VALUES ('27', 'admin/data/import', '数据库还原', '1', '1', '', '', '5', '50', '1477639870', '1477639870');
INSERT INTO `think_auth_rule` VALUES ('28', 'admin/data/revert', '还原', '1', '1', '', '', '27', '50', '1477639972', '1477639972');
INSERT INTO `think_auth_rule` VALUES ('29', 'admin/data/del', '删除', '1', '1', '', '', '27', '50', '1477640011', '1477640011');
INSERT INTO `think_auth_rule` VALUES ('30', 'admin/role/roleAdd', '添加角色', '1', '1', '', '', '3', '50', '1477640011', '1477640011');
INSERT INTO `think_auth_rule` VALUES ('31', 'admin/role/roleEdit', '编辑角色', '1', '1', '', '', '3', '50', '1477640011', '1477640011');
INSERT INTO `think_auth_rule` VALUES ('32', 'admin/role/roleDel', '删除角色', '1', '1', '', '', '3', '50', '1477640011', '1477640011');
INSERT INTO `think_auth_rule` VALUES ('33', 'admin/role/role_state', '角色状态', '1', '1', '', '', '3', '50', '1477640011', '1477640011');
INSERT INTO `think_auth_rule` VALUES ('34', 'admin/role/giveAccess', '权限分配', '1', '1', '', '', '3', '50', '1477640011', '1477640011');
INSERT INTO `think_auth_rule` VALUES ('35', 'admin/menu/add_rule', '添加菜单', '1', '1', '', '', '4', '50', '1477640011', '1477640011');
INSERT INTO `think_auth_rule` VALUES ('36', 'admin/menu/edit_rule', '编辑菜单', '1', '1', '', '', '4', '50', '1477640011', '1477640011');
INSERT INTO `think_auth_rule` VALUES ('37', 'admin/menu/del_rule', '删除菜单', '1', '1', '', '', '4', '50', '1477640011', '1477640011');
INSERT INTO `think_auth_rule` VALUES ('38', 'admin/menu/rule_state', '菜单状态', '1', '1', '', '', '4', '50', '1477640011', '1477640011');
INSERT INTO `think_auth_rule` VALUES ('39', 'admin/menu/ruleorder', '菜单排序', '1', '1', '', '', '4', '50', '1477640011', '1477640011');
INSERT INTO `think_auth_rule` VALUES ('40', 'admin/article/add_cate', '添加分类', '1', '1', '', '', '25', '50', '1477640011', '1477640011');
INSERT INTO `think_auth_rule` VALUES ('41', 'admin/article/edit_cate', '编辑分类', '1', '1', '', '', '25', '50', '1477640011', '1477640011');
INSERT INTO `think_auth_rule` VALUES ('42', 'admin/article/del_cate', '删除分类', '1', '1', '', '', '25', '50', '1477640011', '1477640011');
INSERT INTO `think_auth_rule` VALUES ('43', 'admin/article/cate_state', '分类状态', '1', '1', '', '', '25', '50', '1477640011', '1477640011');
INSERT INTO `think_auth_rule` VALUES ('44', 'admin/article/add_article', '添加文章', '1', '1', '', '', '26', '50', '1477640011', '1477640011');
INSERT INTO `think_auth_rule` VALUES ('45', 'admin/article/edit_article', '编辑文章', '1', '1', '', '', '26', '50', '1477640011', '1477640011');
INSERT INTO `think_auth_rule` VALUES ('46', 'admin/article/del_article', '删除文章', '1', '1', '', '', '26', '50', '1477640011', '1477640011');
INSERT INTO `think_auth_rule` VALUES ('47', 'admin/article/article_state', '文章状态', '1', '1', '', '', '26', '50', '1477640011', '1477640011');

-- ----------------------------
-- Table structure for think_log
-- ----------------------------
DROP TABLE IF EXISTS `think_log`;
CREATE TABLE `think_log` (
  `log_id` int(11) NOT NULL AUTO_INCREMENT,
  `admin_id` int(11) DEFAULT NULL COMMENT '用户ID',
  `admin_name` varchar(50) DEFAULT NULL COMMENT '用户姓名',
  `description` varchar(300) DEFAULT NULL COMMENT '描述',
  `ip` char(60) DEFAULT NULL COMMENT 'IP地址',
  `status` tinyint(1) DEFAULT NULL COMMENT '1 成功 2 失败',
  `add_time` int(11) DEFAULT NULL COMMENT '添加时间',
  PRIMARY KEY (`log_id`)
) ENGINE=MyISAM AUTO_INCREMENT=296 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of think_log
-- ----------------------------
INSERT INTO `think_log` VALUES ('188', '1', 'admin', '用户【admin】登录成功', '113.242.241.19', '1', '1477075834');
INSERT INTO `think_log` VALUES ('293', '1', 'admin', '用户【admin】登录失败：密码错误', '0.0.0.0', '2', '1478868740');
INSERT INTO `think_log` VALUES ('294', '1', 'admin', '用户【admin】登录成功', '0.0.0.0', '1', '1478868748');
INSERT INTO `think_log` VALUES ('295', '1', 'admin', '用户【1111】添加成功', '0.0.0.0', '1', '1478868780');
INSERT INTO `think_log` VALUES ('279', '1', 'admin', '用户【admin】登录成功', '58.23.18.175', '1', '1478135113');
INSERT INTO `think_log` VALUES ('280', '1', 'admin', '用户【admin】登录成功', '119.137.52.24', '1', '1478135163');
INSERT INTO `think_log` VALUES ('281', '1', 'admin', '用户【admin】登录成功', '60.171.83.90', '1', '1478135270');
INSERT INTO `think_log` VALUES ('282', '1', 'admin', '用户【admin】登录成功', '218.8.66.224', '1', '1478135412');
INSERT INTO `think_log` VALUES ('283', '1', 'admin', '用户【admin】登录成功', '182.148.33.100', '1', '1478135819');
INSERT INTO `think_log` VALUES ('284', '1', 'admin', '用户【admin】登录成功', '221.0.25.151', '1', '1478136215');
INSERT INTO `think_log` VALUES ('285', '1', 'admin', '用户【admin】登录成功', '118.250.172.2', '1', '1478136270');
INSERT INTO `think_log` VALUES ('286', '1', 'admin', '用户【admin】删除管理员成功(ID=15)', '118.250.172.2', '1', '1478268135');
INSERT INTO `think_log` VALUES ('287', '1', 'admin', '用户【test】编辑成功', '14.150.164.246', '1', '1478268171');
INSERT INTO `think_log` VALUES ('288', '13', 'test', '用户【test】登录成功', '39.77.156.86', '1', '1478268223');
INSERT INTO `think_log` VALUES ('289', '13', 'test', '用户【test】登录成功', '118.212.113.91', '1', '1478268292');
INSERT INTO `think_log` VALUES ('290', '13', 'test', '用户【test】登录成功', '180.102.120.70', '1', '1478268424');
INSERT INTO `think_log` VALUES ('291', '1', 'admin', '用户【admin】登录成功', '116.230.221.164', '1', '1478322982');
INSERT INTO `think_log` VALUES ('292', '1', 'admin', '用户【tjl】编辑成功', '42.91.175.6', '1', '1478323001');

-- ----------------------------
-- Table structure for think_member
-- ----------------------------
DROP TABLE IF EXISTS `think_member`;
CREATE TABLE `think_member` (
  `member_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `account` varchar(64) DEFAULT NULL COMMENT '邮件或者手机',
  `password` char(32) DEFAULT NULL,
  `face` varchar(128) DEFAULT NULL COMMENT '头像',
  `nickname` varchar(32) DEFAULT NULL COMMENT '昵称',
  `integral` int(11) DEFAULT '0' COMMENT '积分',
  `money` int(11) DEFAULT '0' COMMENT '账户余额',
  `reg_time` int(11) DEFAULT '0' COMMENT '注册时间',
  `reg_ip` varchar(15) DEFAULT NULL COMMENT '注册IP',
  `last_time` int(11) DEFAULT NULL COMMENT '最后一次登录',
  `last_ip` varchar(15) DEFAULT NULL COMMENT '最后一次登录IP',
  `status` tinyint(1) DEFAULT NULL COMMENT '1激活  0 未激活',
  `closed` tinyint(1) DEFAULT '0',
  `mobile` varchar(11) DEFAULT NULL COMMENT '认证的手机号码',
  `token` char(32) DEFAULT '0' COMMENT '令牌',
  `session_id` varchar(20) DEFAULT NULL,
  `sex` int(10) DEFAULT NULL COMMENT '1男2女',
  `birthday` varchar(255) DEFAULT NULL,
  `open_id` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`member_id`)
) ENGINE=MyISAM AUTO_INCREMENT=212065 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of think_member
-- ----------------------------
INSERT INTO `think_member` VALUES ('212061', '1217037610', 'd41d8cd98f00b204e9800998ecf8427e', '', 'XiMi丶momo', '300', '200', '1476779394', '0.0.0.0', '1476779394', '0.0.0.0', '1', '1', '18809321956', '0', '', '2', '1997-10-17', '');
INSERT INTO `think_member` VALUES ('1', '18809321929', 'd41d8cd98f00b204e9800998ecf8427e', 'uploads/face/1476762873/1321.jpg', '醉凡尘丶Wordly', '92960', '73', '1476762875', '0.0.0.0', '1476762875', '0.0.0.0', '1', '0', '18809321929', '0', '', '1', '2016-10-17', '');
INSERT INTO `think_member` VALUES ('212039', '1217037610', 'd41d8cd98f00b204e9800998ecf8427e', '', '紫陌轩尘', '400', '434', '1476676516', '0.0.0.0', '1476676516', '0.0.0.0', '1', '1', '49494', '0', '', '1', '2021-10-13', '');