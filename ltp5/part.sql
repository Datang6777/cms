
CREATE TABLE `dede_p_part` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255)   DEFAULT ' ' COMMENT '用户名',
  `password` varchar(255)   DEFAULT ' ' COMMENT '密码',
  `image` varchar(255)   DEFAULT '' COMMENT '自己头像',
  `ss_image` varchar(255)   DEFAULT '' COMMENT '朋友圈图片',
  `friendsname` varchar(255)   DEFAULT '' COMMENT '朋友名',
  `loginnum` int(11) DEFAULT '0' COMMENT '登陆次数',
  `last_login_ip` varchar(255)   DEFAULT '' COMMENT '最后登录IP',
  `last_login_time` int(11) DEFAULT '0' COMMENT '最后登录时间',
  `real_name` varchar(255)   DEFAULT '' COMMENT '真实姓名',
  `a_contents` varchar(255)   DEFAULT '' COMMENT '朋友圈内容',
  `a_time` TIMESTAMP   COMMENT '朋友圈生成时间',
  `i_contents` varchar(255)   DEFAULT '' COMMENT '自己评论内容',
   `i_time` TIMESTAMP    COMMENT '自己评论时间',
  `f_contents` varchar(255)   DEFAULT '' COMMENT '评论内容',
  `f_time` TIMESTAMP    COMMENT '评论时间',
  `h_contents` varchar(255)   DEFAULT '' COMMENT '回复内容',
    `h_time` TIMESTAMP    COMMENT '回复时间',
   `dzrs` int(11)   not null  COMMENT '点赞人数',
  `dzrs_time` TIMESTAMP    COMMENT '点赞时间',
  `status` int(1) DEFAULT '0' COMMENT '状态',
  `groupid` int(11) DEFAULT '1' COMMENT '用户角色id',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=gbk;

DROP TABLE IF EXISTS `dede_p_friend`;
CREATE TABLE `friend` (
  `fid` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255)   DEFAULT '' COMMENT '用户名',
   `friendsname` varchar(255)   DEFAULT '' COMMENT '朋友名',
   `friendsname` varchar(255)   DEFAULT '' COMMENT '朋友头像',
   `friendscomment` varchar(255)   DEFAULT '' COMMENT '朋友评论',
  `loginnum` int(11) DEFAULT '0' COMMENT '登陆次数',
  `status` int(1) DEFAULT '0' COMMENT '状态',
  `groupid` int(11) DEFAULT '1' COMMENT '用户角色id',
  PRIMARY KEY (`fid`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=gbk;