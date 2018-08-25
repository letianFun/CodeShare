/*
Navicat MySQL Data Transfer

Source Server         : new
Source Server Version : 50722
Source Host           : localhost:3306
Source Database       : seven_bbs

Target Server Type    : MYSQL
Target Server Version : 50722
File Encoding         : 65001

Date: 2018-08-10 14:12:47
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for t_collection
-- ----------------------------
DROP TABLE IF EXISTS `t_collection`;
CREATE TABLE `t_collection` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT NULL,
  `sid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_collection
-- ----------------------------

-- ----------------------------
-- Table structure for t_follow
-- ----------------------------
DROP TABLE IF EXISTS `t_follow`;
CREATE TABLE `t_follow` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT NULL,
  `beuid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_follow
-- ----------------------------
INSERT INTO `t_follow` VALUES ('25', '3', '3');

-- ----------------------------
-- Table structure for t_loginlog
-- ----------------------------
DROP TABLE IF EXISTS `t_loginlog`;
CREATE TABLE `t_loginlog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ip` varchar(30) DEFAULT NULL,
  `city` varchar(20) DEFAULT NULL,
  `createtime` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_loginlog
-- ----------------------------

-- ----------------------------
-- Table structure for t_msg
-- ----------------------------
DROP TABLE IF EXISTS `t_msg`;
CREATE TABLE `t_msg` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `beuid` int(11) DEFAULT NULL,
  `uid` int(11) DEFAULT NULL,
  `msg` varchar(200) DEFAULT NULL,
  `createtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `flag` tinyint(2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_msg
-- ----------------------------
INSERT INTO `t_msg` VALUES ('22', '3', '1', '随便写点\r\n', '2018-07-24 23:36:43', '1');
INSERT INTO `t_msg` VALUES ('23', '3', '6', '随便把', '2018-07-24 23:36:51', '1');
INSERT INTO `t_msg` VALUES ('24', '3', '5', 'sadds ', '2018-07-24 23:36:46', '1');
INSERT INTO `t_msg` VALUES ('25', '3', '5', 'sadds ', '2018-07-24 23:37:07', '2');

-- ----------------------------
-- Table structure for t_notice
-- ----------------------------
DROP TABLE IF EXISTS `t_notice`;
CREATE TABLE `t_notice` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(30) DEFAULT NULL,
  `context` varchar(200) DEFAULT NULL,
  `createtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `uid` int(11) DEFAULT NULL,
  `flag` tinyint(2) DEFAULT NULL,
  `pid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_notice
-- ----------------------------
INSERT INTO `t_notice` VALUES ('1', 'layui简介', 'layui（谐音：类UI) 是一款采用自身模块规范编写的前端 UI 框架，遵循原生 HTML/CSS/JS 的书写与组织形式，门槛极低，拿来即用。其外在极简，却又不失饱满的内在，体积轻盈，组件丰盈，从核心代码到 API 的每一处细节都经过精心雕琢，非常适合界面的快速开发。layui 首个版本发布于2016年金秋，她区别于那些基于 MVVM 底层的 UI 框架，却并非逆道而行，而是信奉返璞归真之道。', '2018-07-23 20:17:57', '1', '1', '1');

-- ----------------------------
-- Table structure for t_plate
-- ----------------------------
DROP TABLE IF EXISTS `t_plate`;
CREATE TABLE `t_plate` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键，自增',
  `name` varchar(30) NOT NULL COMMENT '板块名称',
  `sign` varchar(100) DEFAULT NULL COMMENT '签名/简介',
  `uid` int(11) DEFAULT NULL COMMENT '版主id',
  `flag` tinyint(4) DEFAULT NULL COMMENT '标记位：1.有效 2.无效',
  `createtime` date NOT NULL COMMENT '创建时间',
  `cuid` int(11) DEFAULT NULL COMMENT '创建人id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_plate
-- ----------------------------
INSERT INTO `t_plate` VALUES ('1', 'java', '1', '1', '1', '2018-07-23', '5');
INSERT INTO `t_plate` VALUES ('2', 'phython', '世界上最美的语言', '5', '1', '2018-07-09', '6');
INSERT INTO `t_plate` VALUES ('3', 'html', '漂亮的页面', '6', '1', '2018-07-04', '3');

-- ----------------------------
-- Table structure for t_reply
-- ----------------------------
DROP TABLE IF EXISTS `t_reply`;
CREATE TABLE `t_reply` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sid` int(11) DEFAULT NULL,
  `context` text,
  `createtime` timestamp NULL DEFAULT NULL,
  `flag` int(5) DEFAULT NULL,
  `uid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_reply
-- ----------------------------
INSERT INTO `t_reply` VALUES ('1', '1', '少林功夫好诶', '2018-07-15 03:43:23', '1', '5');
INSERT INTO `t_reply` VALUES ('2', '1', '千峰教育', '2018-07-10 04:04:04', '1', '6');
INSERT INTO `t_reply` VALUES ('3', '1', '哈喽', '2018-07-04 13:32:45', '1', '16');
INSERT INTO `t_reply` VALUES ('4', '1', '你好', '2018-07-13 00:32:12', '1', '17');
INSERT INTO `t_reply` VALUES ('5', '3', '板凳', '2018-07-18 15:24:17', '1', '18');
INSERT INTO `t_reply` VALUES ('6', '1', '大吉大利，今晚吃鸡', '2018-07-26 15:24:17', '1', '16');
INSERT INTO `t_reply` VALUES ('7', '1', '45454', '2018-07-21 15:24:17', '1', '1');
INSERT INTO `t_reply` VALUES ('8', '1', '说的不错', '2018-07-28 15:27:18', '1', '3');
INSERT INTO `t_reply` VALUES ('11', '76', '<img src=\"http://localhost:8080/media/layui/images/face/0.gif\" alt=\"[微笑]\">实验', '2018-07-26 17:37:41', '1', '3');
INSERT INTO `t_reply` VALUES ('12', '76', '<img src=\"http://localhost:8080/media/layui/images/face/0.gif\" alt=\"[微笑]\">实验', '2018-07-26 17:38:20', '1', '3');
INSERT INTO `t_reply` VALUES ('13', '76', '<img src=\"http://localhost:8080/media/layui/images/face/0.gif\" alt=\"[微笑]\">实验', '2018-07-26 17:40:43', '1', '3');
INSERT INTO `t_reply` VALUES ('14', '3', '<img src=\"http://localhost:8080/media/layui/images/face/13.gif\" alt=\"[偷笑]\"><img src=\"IMG\\201807\\2144caeb-a8e9-4a49-8766-ca8a6d369a86_5.jpg\" alt=\"2144caeb-a8e9-4a49-8766-ca8a6d369a86_5.jpg\"><img src=\"IMG\\201807\\7feb3ea1-f3d4-42c9-8cc9-b7c3d0f765a4_9.jpg\" alt=\"7feb3ea1-f3d4-42c9-8cc9-b7c3d0f765a4_9.jpg\">测试回帖', '2018-07-26 17:43:59', '1', '5');
INSERT INTO `t_reply` VALUES ('15', '81', '1', '2018-07-31 20:14:43', '1', '16');

-- ----------------------------
-- Table structure for t_send
-- ----------------------------
DROP TABLE IF EXISTS `t_send`;
CREATE TABLE `t_send` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT NULL,
  `title` varchar(40) DEFAULT NULL,
  `createtime` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `flag` int(5) DEFAULT NULL,
  `hot` int(5) NOT NULL,
  `context` mediumtext,
  `pid` int(11) DEFAULT NULL,
  `look` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=82 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_send
-- ----------------------------
INSERT INTO `t_send` VALUES ('1', '1', 'java最基础介绍', '2018-08-04 17:15:33', '1', '1', '<p><img src=\"IMG\\201807\\d77ccb5a-99bd-49b8-8389-3803b543e53d_07.gif\" alt=\"d77ccb5a-99bd-49b8-8389-3803b543e53d_07.gif\">图片插入成功！高兴<img src=\"http://localhost:8080/media/layui/images/face/1.gif\" alt=\"[嘻嘻]\"></p><p style=\"text-align: center; \"><b>字体加粗</b></p>', '1', '33');
INSERT INTO `t_send` VALUES ('3', '1', '星期五去撸串', '2018-07-26 18:46:54', '1', '3', '星期五1802全体去撸串 快来啊', '2', '29');
INSERT INTO `t_send` VALUES ('4', '1', '成功', '2018-07-26 16:00:00', '1', '1', '一定要成功', '3', '3');
INSERT INTO `t_send` VALUES ('5', '17', 'java基础强化之深入理解java注解', '2018-07-27 09:11:47', '1', '1', '<p><img src=\"IMG\\201807\\d77ccb5a-99bd-49b8-8389-3803b543e53d_07.gif\" alt=\"d77ccb5a-99bd-49b8-8389-3803b543e53d_07.gif\">图片插入成功！高兴<img src=\"http://localhost:8080/media/layui/images/face/1.gif\" alt=\"[嘻嘻]\"></p><p style=\"text-align: center; \"><b>字体加粗</b></p>', '1', '4');
INSERT INTO `t_send` VALUES ('69', '18', '今天星期天1', '2018-07-31 10:43:17', '1', '2', '今天星期天 不建议大家去上课face[馋嘴] ', '2', '3');
INSERT INTO `t_send` VALUES ('70', '19', '今天星期天2', '2018-08-04 17:15:28', '1', '1', '<p><img src=\"IMG\\201807\\d77ccb5a-99bd-49b8-8389-3803b543e53d_07.gif\" alt=\"d77ccb5a-99bd-49b8-8389-3803b543e53d_07.gif\">图片插入成功！高兴<img src=\"http://localhost:8080/media/layui/images/face/1.gif\" alt=\"[嘻嘻]\"></p><p style=\"text-align: center; \"><b>字体加粗</b></p>', '3', '14');
INSERT INTO `t_send` VALUES ('71', '5', '今天星期天3', '2018-07-26 16:00:02', '1', '2', '明天不上课face[嘻嘻] ', '2', '12');
INSERT INTO `t_send` VALUES ('72', '20', 'java基础强化之深入理解', '2018-07-26 16:00:03', '1', '1', '垃圾回收在 Java 程序运行过程中自动进行，程序员无法精确控制和干预。', '3', '1');
INSERT INTO `t_send` VALUES ('73', '16', '哈喽', '2018-07-26 16:00:03', '1', '1', '你好啊face[嘻嘻] ', '1', '2');
INSERT INTO `t_send` VALUES ('74', '1', '测试数据', '2018-07-26 16:00:04', '1', '1', '<p><img src=\"IMG\\201807\\d77ccb5a-99bd-49b8-8389-3803b543e53d_07.gif\" alt=\"d77ccb5a-99bd-49b8-8389-3803b543e53d_07.gif\">图片插入成功！高兴<img src=\"http://localhost:8080/media/layui/images/face/1.gif\" alt=\"[嘻嘻]\"></p><p style=\"text-align: center; \"><b>字体加粗</b></p>', '1', '3');
INSERT INTO `t_send` VALUES ('75', '6', 'layer[可爱]', '2018-07-31 10:43:23', '1', '1', '<p style=\"text-align: center;\"><b>layer<img src=\"http://localhost:8080/media/layui/images/face/3.gif\" alt=\"[可爱]\"></b></p><p><b>layer 是 layui 中最广为人知的组件，它可以轻松应对 Web 应用开发中的各类复杂的弹出交互。有人说使用 layer 是一种情怀，一旦用上了，就离不开了。有多少人是因为 layer 才选择 layui 的呢，有一种信仰，叫：无条件相信</b></p><p><br></p><p>&nbsp;<img src=\"http://localhost:8080/media/layui/images/face/0.gif\" alt=\"[微笑]\"><img src=\"http://localhost:8080/IMG/201807/370f54e1-8e95-4a1c-9579-a88c08732375_10.jpg\" alt=\"370f54e1-8e95-4a1c-9579-a88c08732375_10.jpg\"></p><p>layer 至今仍作为 layui 的代表作，她的受众广泛并非偶然，而是这数年来的坚持、不弃的执念，将那些不屑的眼光转化为应得的尊重，不断完善和维护、不断建设和提升社区服务，在 Web 开发者的圈子里口口相传，乃至于成为今天的 layui 最强劲的源动力。目前，<em>layer已成为国内最多人使用的 Web 弹层组件</em>，<a href=\"https://github.com/sentsin/layer\" target=\"_blank\">GitHub</a>&nbsp;自然Stars<em>5000+</em>，官网累计下载量达50w+，大概有30万不同规模的 Web 平台使用过 layer。&nbsp;</p><p><img src=\"http://localhost:8080/IMG/201807/ce369286-c424-43d5-9a26-2bec87891b71_1.jpg\" alt=\"ce369286-c424-43d5-9a26-2bec87891b71_1.jpg\"><br></p><p>之所以列举上面这些数字，并非是在夸夸其谈，而是懂 layer 的人都知道，这是一种怎样不易的沉淀。而由于 layer 在 layui 体系中的位置比较特殊，甚至让很多人都误以为 layui = layer ui，所以再次强调 layer 只是作为 layui 的一个弹层模块，由于其用户基数较大，所以至今仍把她作为独立组件来维护。不过请注意：无论是独立的 layer，还是作为内置模块的 layer，文档都以本页为准。</p><p>Layui提倡返璞归真，遵循于原生态的元素书写规则，所以通常而言，你仍然是在写基本的HTML和CSS代码，不同的是，在HTML结构上及CSS定义上需要小小遵循一定的规范。<img src=\"http://localhost:8080/IMG/201807/82f80e1b-de9a-47e7-97a5-470ce7b57b08_3.jpg\" alt=\"82f80e1b-de9a-47e7-97a5-470ce7b57b08_3.jpg\"></p>', '1', '5');
INSERT INTO `t_send` VALUES ('76', '5', 'layer', '2018-07-27 22:28:12', '1', '3', '<p style=\"text-align: center;\"><b>layer<img src=\"http://localhost:8080/media/layui/images/face/3.gif\" alt=\"[可爱]\"></b></p><p><b>layer 是 layui 中最广为人知的组件，它可以轻松应对 Web 应用开发中的各类复杂的弹出交互。有人说使用 layer 是一种情怀，一旦用上了，就离不开了。有多少人是因为 layer 才选择 layui 的呢，有一种信仰，叫：无条件相信</b></p><p><br></p><p>&nbsp;<img src=\"http://localhost:8080/media/layui/images/face/0.gif\" alt=\"[微笑]\"><img src=\"http://localhost:8080/IMG/201807/370f54e1-8e95-4a1c-9579-a88c08732375_10.jpg\" alt=\"370f54e1-8e95-4a1c-9579-a88c08732375_10.jpg\"></p><p>layer 至今仍作为 layui 的代表作，她的受众广泛并非偶然，而是这数年来的坚持、不弃的执念，将那些不屑的眼光转化为应得的尊重，不断完善和维护、不断建设和提升社区服务，在 Web 开发者的圈子里口口相传，乃至于成为今天的 layui 最强劲的源动力。目前，<em>layer已成为国内最多人使用的 Web 弹层组件</em>，<a href=\"https://github.com/sentsin/layer\" target=\"_blank\">GitHub</a>&nbsp;自然Stars<em>5000+</em>，官网累计下载量达50w+，大概有30万不同规模的 Web 平台使用过 layer。&nbsp;</p><p><img src=\"http://localhost:8080/IMG/201807/ce369286-c424-43d5-9a26-2bec87891b71_1.jpg\" alt=\"ce369286-c424-43d5-9a26-2bec87891b71_1.jpg\"><br></p><p>之所以列举上面这些数字，并非是在夸夸其谈，而是懂 layer 的人都知道，这是一种怎样不易的沉淀。而由于 layer 在 layui 体系中的位置比较特殊，甚至让很多人都误以为 layui = layer ui，所以再次强调 layer 只是作为 layui 的一个弹层模块，由于其用户基数较大，所以至今仍把她作为独立组件来维护。不过请注意：无论是独立的 layer，还是作为内置模块的 layer，文档都以本页为准。</p><p>Layui提倡返璞归真，遵循于原生态的元素书写规则，所以通常而言，你仍然是在写基本的HTML和CSS代码，不同的是，在HTML结构上及CSS定义上需要小小遵循一定的规范。<img src=\"http://localhost:8080/IMG/201807/82f80e1b-de9a-47e7-97a5-470ce7b57b08_3.jpg\" alt=\"82f80e1b-de9a-47e7-97a5-470ce7b57b08_3.jpg\"></p>', '1', '15');
INSERT INTO `t_send` VALUES ('77', '3', '实验', '2018-07-26 18:20:58', '1', '1', '<img src=\"http://localhost:8080/media/layui/images/face/38.gif\" alt=\"[哼]\">', '2', '9');
INSERT INTO `t_send` VALUES ('78', '17', '实验帖子', '2018-07-27 10:37:12', '1', '1', '<img src=\"http://localhost:8080/media/layui/images/face/51.gif\" alt=\"[兔子]\">', '3', '5');
INSERT INTO `t_send` VALUES ('79', '6', 'Java 9 逆天的十大新特性', '2018-07-27 09:01:51', '1', '2', '在介绍java9之前，我们先来看看java成立到现在的所有版本。\r\n\r\n \r\n\r\n    1990年初，最初被命名为Oak；\r\n\r\n    1995年5月23日，Java语言诞生；\r\n\r\n    1996年1月，第一个JDK-JDK1.0诞生；\r\n\r\n    1996年4月，10个最主要的操作系统供应商申明将在其产品中嵌入Java技术；\r\n\r\n    1996年9月，约8.3万个网页应用了Java技术来制作；\r\n\r\n    1997年2月18日，JDK1.1发布；\r\n\r\n    1997年4月2日，JavaOne会议召开，参与者逾一万人，创当时全球同类会议纪录；\r\n\r\n    1997年9月，JavaDeveloperConnection社区成员超过十万；\r\n\r\n    1998年2月，JDK1.1被下载超过2,000,000次；\r\n\r\n    1998年12月8日，Java 2企业平台J2EE发布；\r\n\r\n    1999年6月，SUN公司发布Java三个版本：标准版（J2SE）、企业版（J2EE）和微型版（J2ME）；\r\n\r\n    2000年5月8日，JDK1.3发布；\r\n\r\n    2000年5月29日，JDK1.4发布；\r\n\r\n    2001年6月5日，Nokia宣布到2003年将出售1亿部支持Java的手机；\r\n\r\n    2001年9月24日，J2EE1.3发布；\r\n\r\n    2002年2月26日，J2SE1.4发布，此后Java的计算能力有了大幅提升；\r\n\r\n    2004年9月30日，J2SE1.5发布，成为Java语言发展史上的又一里程碑。为了表示该版本的重要性，J2SE1.5更名为Java SE 5.0；\r\n\r\n    2005年6月，JavaOne大会召开，SUN公司公开Java SE 6。此时，Java的各种版本已经更名，以取消其中的数字“2”：J2EE更名为Java EE，J2SE更名为Java SE，J2ME更名为Java ME；\r\n\r\n    2006年12月，SUN公司发布JRE6.0；\r\n\r\n    2009年4月20日，甲骨文以74亿美元的价格收购SUN公司，取得java的版权，业界传闻说这对Java程序员是个坏消息（其实恰恰相反）；\r\n\r\n    2010年11月，由于甲骨文对Java社区的不友善，因此Apache扬言将退出JCP；\r\n\r\n    2011年7月28日，甲骨文发布Java SE 7；\r\n\r\n    2014年3月18日，甲骨文发表Java SE 8；\r\n\r\n    2017年7月，甲骨文发表Java SE 9 按照java1995年正式诞生起到现在，已经快23年了。比我年龄都大（我今天刚满18岁，哈哈）。java已经陪我走过了十几个年头了，当年我用的第一个版本应该是J2SE1.4（完了，暴露了）。其实现在好多人还在用Java SE 6，还有一部分人Java SE 8还没玩明白呢（公众号回复“学习”，获取JAVA8视频教程），Java SE 9已经粉末登场了。在Open JDK的官网上看到了Java 10的标准也在制定当中，Java的发展真的越来越快了。\r\n\r\n \r\n\r\nmodularity System 模块系统\r\n\r\n \r\n\r\nJava 9中主要的变化是已经实现的模块化系统。\r\n\r\n \r\n\r\nModularity提供了类似于OSGI框架的功能，模块之间存在相互的依赖关系，可以导出一个公共的API，并且隐藏实现的细节，Java提供该功能的主要的动机在于，减少内存的开销，在JVM启动的时候，至少会有30～60MB的内存加载，主要原因是JVM需要加载rt.jar，不管其中的类是否被classloader加载，第一步整个jar都会被JVM加载到内存当中去，模块化可以根据模块的需要加载程序运行需要的class。\r\n\r\n \r\n\r\n在引入了模块系统之后，JDK 被重新组织成 94 个模块。Java 应用可以通过新增的 jlink 工具，创建出只包含所依赖的 JDK 模块的自定义运行时镜像。这样可以极大的减少 Java 运行时环境的大小。使得JDK可以在更小的设备中使用。采用模块化系统的应用程序只需要这些应用程序所需的那部分JDK模块，而非是整个JDK框架了。\r\n\r\n \r\n\r\nHTTP/2\r\n\r\n \r\n\r\nJDK9之前提供HttpURLConnection API来实现Http访问功能，但是这个类基本很少使用，一般都会选择Apache的Http Client，此次在Java 9的版本中引入了一个新的package:java.net.http，里面提供了对Http访问很好的支持，不仅支持Http1.1而且还支持HTTP2（什么是HTTP2？请参见HTTP2的时代来了...），以及WebSocket，据说性能特别好。\r\n\r\n \r\n\r\n\r\n注意：新的 HttpClient API 在 Java 9 中以所谓的孵化器模块交付。也就是说，这套 API 不能保证 100% 完成。\r\n\r\n \r\n\r\nJShell\r\n\r\n \r\n\r\n用过Python的童鞋都知道，Python 中的读取-求值-打印循环（ Read-Evaluation-Print Loop ）很方便。它的目的在于以即时结果和反馈的形式。\r\n\r\n \r\n\r\njava9引入了jshell这个交互性工具，让Java也可以像脚本语言一样来运行，可以从控制台启动 jshell ，在 jshell 中直接输入表达式并查看其执行结果。当需要测试一个方法的运行效果，或是快速的对表达式进行求值时，jshell 都非常实用。\r\n\r\n \r\n\r\n除了表达式之外，还可以创建 Java 类和方法。jshell 也有基本的代码完成功能。我们在教人们如何编写 Java 的过程中，不再需要解释 “public static void main（String [] args）” 这句废话。\r\n\r\n \r\n\r\n\r\n \r\n\r\n不可变集合工厂方法\r\n\r\n \r\n\r\nJava 9增加了List.of()、Set.of()、Map.of()和Map.ofEntries()等工厂方法来创建不可变集合。\r\n\r\n \r\n\r\n    List strs = List.of(\"Hello\", \"World\");\r\n\r\n    List strs List.of(1, 2, 3);\r\n\r\n    Set strs = Set.of(\"Hello\", \"World\");\r\n\r\n    Set ints = Set.of(1, 2, 3);\r\n\r\n    Map maps = Map.of(\"Hello\", 1, \"World\", 2);\r\n\r\n \r\n\r\n除了更短和更好阅读之外，这些方法也可以避免您选择特定的集合实现。在创建后，继续添加元素到这些集合会导致 “UnsupportedOperationException” 。\r\n\r\n \r\n\r\n私有接口方法\r\n\r\n \r\n\r\nJava 8 为我们提供了接口的默认方法和静态方法，接口也可以包含行为，而不仅仅是方法定义。\r\n\r\n默认方法和静态方法可以共享接口中的私有方法，因此避免了代码冗余，这也使代码更加清晰。如果私有方法是静态的，那这个方法就属于这个接口的。并且没有静态的私有方法只能被在接口中的实例调用。\r\n\r\n \r\n\r\ninterface InterfaceWithPrivateMethods {\r\n\r\n    private static String staticPrivate() {\r\n\r\n        return \"static private\";\r\n\r\n    }\r\n\r\n    private String instancePrivate() {\r\n\r\n        return \"instance private\";\r\n\r\n    }\r\n\r\n    default void check() {    \r\n\r\n        String result = staticPrivate();\r\n\r\n        InterfaceWithPrivateMethods pvt = new InterfaceWithPrivateMethods() {\r\n\r\n            // anonymous class 匿名类\r\n\r\n        };\r\n\r\n        result = pvt.instancePrivate();\r\n\r\n    }\r\n\r\n}\r\n\r\n \r\n\r\nHTML5风格的Java帮助文档\r\n\r\n \r\n\r\nJava 8之前的版本生成的Java帮助文档是在HTML 4中。在Java 9中，Javadoc 的输出现在符合兼容 HTML5 标准。现在HTML 4是默认的输出标记语言，但是在之后发布的JDK中，HTML 5将会是默认的输出标记语言。\r\n\r\n \r\n\r\nJava帮助文档还是由三个框架组成的结构构成，这是不会变的，并且以HTML 5输出的Java帮助文档也保持相同的结构。每个 Javadoc 页面都包含有关 JDK 模块类或接口来源的信息。\r\n\r\n \r\n\r\n\r\n \r\n\r\n多版本兼容 JAR\r\n\r\n \r\n\r\n当一个新版本的 Java 出现的时候，你的库用户要花费很长时间才会切换到这个新的版本。这就意味着库要去向后兼容你想要支持的最老的 Java 版本 (许多情况下就是 Java 6 或者 7)。这实际上意味着未来的很长一段时间，你都不能在库中运用 Java 9 所提供的新特性。幸运的是，多版本兼容 JAR 功能能让你创建仅在特定版本的 Java 环境中运行库程序时选择使用的 class 版本：\r\n\r\n \r\n\r\nmultirelease.jar\r\n\r\n├── META-INF\r\n\r\n│   └── versions\r\n\r\n│       └── 9\r\n\r\n│           └── multirelease\r\n\r\n│               └── Helper.class\r\n\r\n├── multirelease\r\n\r\n├── Helper.class\r\n\r\n└── Main.class\r\n\r\n \r\n\r\n在上述场景中， multirelease.jar 可以在 Java 9 中使用, 不过 Helper 这个类使用的不是顶层的 multirelease.Helper 这个 class, 而是处在“META-INF/versions/9”下面的这个。这是特别为 Java 9 准备的 class 版本，可以运用 Java 9 所提供的特性和库。同时，在早期的 Java 诸版本中使用这个 JAR 也是能运行的，因为较老版本的 Java 只会看到顶层的这个 Helper 类。\r\n\r\n \r\n\r\n统一 JVM 日志\r\n\r\n \r\n\r\nJava 9 中 ，JVM 有了统一的日志记录系统，可以使用新的命令行选项-Xlog 来控制 JVM 上 所有组件的日志记录。该日志记录系统可以设置输出的日志消息的标签、级别、修饰符和输出目标等。\r\n\r\n \r\n\r\njava9的垃圾收集机制\r\n\r\n \r\n\r\nJava 9 移除了在 Java 8 中 被废弃的垃圾回收器配置组合，同时把G1设为默认的垃圾回收器实现。替代了之前默认使用的Parallel GC，对于这个改变，evens的评论是酱紫的：这项变更是很重要的，因为相对于Parallel来说，G1会在应用线程上做更多的事情，而Parallel几乎没有在应用线程上做任何事情，它基本上完全依赖GC线程完成所有的内存管理。这意味着切换到G1将会为应用线程带来额外的工作，从而直接影响到应用的性能\r\n\r\n \r\n\r\nI/O 流新特性\r\n\r\n \r\n\r\njava.io.InputStream 中增加了新的方法来读取和复制 InputStream 中包含的数据。\r\n\r\n    readAllBytes：读取 InputStream 中的所有剩余字节。\r\n\r\n    readNBytes： 从 InputStream 中读取指定数量的字节到数组中。\r\n\r\n    transferTo：读取 InputStream 中的全部字节并写入到指定的 OutputStream 中 。\r\n\r\n \r\n\r\n除了上面这些以外，还有以下这么多的新特性，不再一一介绍。\r\n\r\n \r\n\r\n    102: Process API Updates\r\n\r\n    110: HTTP 2 Client\r\n\r\n    143: Improve Contended Locking\r\n\r\n    158: Unified JVM Logging\r\n\r\n    165: Compiler Control\r\n\r\n    193: Variable Handles\r\n\r\n    197: Segmented Code Cache\r\n\r\n    199: Smart Java Compilation, Phase Two\r\n\r\n    200: The Modular JDK\r\n\r\n    201: Modular Source Code\r\n\r\n    211: Elide Deprecation Warnings on Import Statements\r\n\r\n    212: Resolve Lint and Doclint Warnings\r\n\r\n    213: Milling Project Coin\r\n\r\n    214: Remove GC Combinations Deprecated in JDK 8\r\n\r\n    215: Tiered Attribution for javac\r\n\r\n    216: Process Import Statements Correctly\r\n\r\n    217: Annotations Pipeline 2.0\r\n\r\n    219: Datagram Transport Layer Security (DTLS)\r\n\r\n    220: Modular Run-Time Images\r\n\r\n    221: Simplified Doclet API\r\n\r\n    222: jshell: The Java Shell (Read-Eval-Print Loop)\r\n\r\n    223: New Version-String Scheme\r\n\r\n    224: HTML5 Javadoc\r\n\r\n    225: Javadoc Search\r\n\r\n    226: UTF-8 Property Files\r\n\r\n    227: Unicode 7.0\r\n\r\n    228: Add More Diagnostic Commands\r\n\r\n    229: Create PKCS12 Keystores by Default\r\n\r\n    231: Remove Launch-Time JRE Version Selection\r\n\r\n    232: Improve Secure Application Performance\r\n\r\n    233: Generate Run-Time Compiler Tests Automatically\r\n\r\n    235: Test Class-File Attributes Generated by javac\r\n\r\n    236: Parser API for Nashorn\r\n\r\n    237: Linux/AArch64 Port\r\n\r\n    238: Multi-Release JAR Files\r\n\r\n    240: Remove the JVM TI hprof Agent\r\n\r\n    241: Remove the jhat Tool\r\n\r\n    243: Java-Level JVM Compiler Interface\r\n\r\n    244: TLS Application-Layer Protocol Negotiation Extension\r\n\r\n    245: Validate JVM Command-Line Flag Arguments\r\n\r\n    246: Leverage CPU Instructions for GHASH and RSA\r\n\r\n    247: Compile for Older Platform Versions\r\n\r\n    248: Make G1 the Default Garbage Collector\r\n\r\n    249: OCSP Stapling for TLS\r\n\r\n    250: Store Interned Strings in CDS Archives\r\n\r\n    251: Multi-Resolution Images\r\n\r\n    252: Use CLDR Locale Data by Default    \r\n\r\n    253: Prepare JavaFX UI Controls & CSS APIs for Modularization\r\n\r\n    254: Compact Strings\r\n\r\n    255: Merge Selected Xerces 2.11.0 Updates into JAXP\r\n\r\n    256: BeanInfo Annotations\r\n\r\n    257: Update JavaFX/Media to Newer Version of GStreamer\r\n\r\n    258: HarfBuzz Font-Layout Engine\r\n\r\n    259: Stack-Walking API\r\n\r\n    260: Encapsulate Most Internal APIs\r\n\r\n    261: Module System\r\n\r\n    262: TIFF Image I/O\r\n\r\n    263: HiDPI Graphics on Windows and Linux\r\n\r\n    264: Platform Logging API and Service\r\n\r\n    265: Marlin Graphics Renderer\r\n\r\n    266: More Concurrency Updates\r\n\r\n    267: Unicode 8.0\r\n\r\n    268: XML Catalogs\r\n\r\n    269: Convenience Factory Methods for Collections\r\n\r\n    270: Reserved Stack Areas for Critical Sections\r\n\r\n    271: Unified GC Logging\r\n\r\n    272: Platform-Specific Desktop Features\r\n\r\n    273: DRBG-Based SecureRandom Implementations\r\n\r\n    274: Enhanced Method Handles\r\n\r\n    275: Modular Java Application Packaging\r\n\r\n    276: Dynamic Linking of Language-Defined Object Models\r\n\r\n    277: Enhanced Deprecation\r\n\r\n    278: Additional Tests for Humongous Objects in G1\r\n\r\n    279: Improve Test-Failure Troubleshooting        \r\n\r\n    280: Indify String Concatenation\r\n\r\n    281: HotSpot C++ Unit-Test Framework\r\n\r\n    282: jlink: The Java Linker\r\n\r\n    283: Enable GTK 3 on Linux\r\n\r\n    284: New HotSpot Build System\r\n\r\n    285: Spin-Wait Hints\r\n\r\n    287: SHA-3 Hash Algorithms\r\n\r\n    288: Disable SHA-1 Certificates\r\n\r\n    289: Deprecate the Applet API    \r\n\r\n    290: Filter Incoming Serialization Data\r\n\r\n    292: Implement Selected ECMAScript 6 Features in Nashorn\r\n\r\n    294: Linux/s390x Port\r\n\r\n    295: Ahead-of-Time Compilation', '1', '24');
INSERT INTO `t_send` VALUES ('80', '1', '测试222222', '2018-07-31 20:10:35', '1', '1', '<img src=\"IMG\\201807\\c181bd17-9e7e-4c0e-96d2-841eb6977f16_4.jpg\" alt=\"c181bd17-9e7e-4c0e-96d2-841eb6977f16_4.jpg\">是<b><i><u>的方式对方的身</u></i></b>份对方答复<img src=\"http://10.8.155.56:8080/media/layui/images/face/1.gif\" alt=\"[嘻嘻]\">', '1', '3');
INSERT INTO `t_send` VALUES ('81', '17', '快看！java语言的秘密', '2018-07-31 20:14:43', '1', '1', '<p><img src=\"IMG\\201807\\e3462b33-da09-440d-b803-73484b7b0c0a_1.jpg\" alt=\"e3462b33-da09-440d-b803-73484b7b0c0a_1.jpg\"><img src=\"IMG\\201807\\c9e5bf81-4189-4d7b-910e-b7a780b7b9dc_4.jpg\" alt=\"c9e5bf81-4189-4d7b-910e-b7a780b7b9dc_4.jpg\"><img src=\"IMG\\201807\\8974fe53-4402-461b-98a9-88fbce1ac2fd_3.jpg\" alt=\"8974fe53-4402-461b-98a9-88fbce1ac2fd_3.jpg\"><img src=\"IMG\\201807\\37778bc3-b72e-4a54-b83e-cbe43dd86512_5.jpg\" alt=\"37778bc3-b72e-4a54-b83e-cbe43dd86512_5.jpg\"><img src=\"IMG\\201807\\749a0199-caa2-4a12-849e-b5ffd064a861_6.jpg\" alt=\"749a0199-caa2-4a12-849e-b5ffd064a861_6.jpg\"></p><p>&lt;h1&gt;没有秘密&lt;/h1&gt;</p>', '1', '2');

-- ----------------------------
-- Table structure for t_user
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '用户编号',
  `username` varchar(30) NOT NULL COMMENT '用户名',
  `password` varchar(50) NOT NULL COMMENT '密码',
  `nickname` varchar(30) DEFAULT NULL,
  `level` tinyint(2) DEFAULT NULL COMMENT '权限级别 1普通用户2版主3管理员',
  `createtime` date DEFAULT NULL COMMENT '创建时间',
  `flag` tinyint(2) DEFAULT '1' COMMENT '标记位',
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_user
-- ----------------------------
INSERT INTO `t_user` VALUES ('1', '1234', '202cb962ac59075b964b07152d234b70', '小米', '2', '2018-07-17', '1');
INSERT INTO `t_user` VALUES ('3', '123', '202cb962ac59075b964b07152d234b70', '小星星', '3', '2018-07-17', '1');
INSERT INTO `t_user` VALUES ('5', '12223', '202cb962ac59075b964b07152d234b70', '一千年', '2', '2018-07-09', '1');
INSERT INTO `t_user` VALUES ('6', 'admin', 'e10adc3949ba59abbe56e057f20f883e', 'admin', '1', '2018-07-20', '1');
INSERT INTO `t_user` VALUES ('16', 'fu', '202cb962ac59075b964b07152d234b70', '星望', '2', '2018-07-20', '1');
INSERT INTO `t_user` VALUES ('17', 'wby', '202cb962ac59075b964b07152d234b70', '(づ｡◕‿‿◕｡)づ', '1', '2018-07-20', '1');
INSERT INTO `t_user` VALUES ('18', 'qq', '202cb962ac59075b964b07152d234b70', 'qq', '1', '2018-07-20', '1');
INSERT INTO `t_user` VALUES ('19', 'ww', '202cb962ac59075b964b07152d234b70', 'ww', '1', '2018-07-20', '1');
INSERT INTO `t_user` VALUES ('20', 'dogkang', '202cb962ac59075b964b07152d234b70', 'JavaGit', '1', '2018-07-24', '1');

-- ----------------------------
-- Table structure for t_userdetail
-- ----------------------------
DROP TABLE IF EXISTS `t_userdetail`;
CREATE TABLE `t_userdetail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `email` varchar(40) DEFAULT NULL,
  `sendnum` int(11) DEFAULT NULL,
  `replynum` int(11) DEFAULT NULL,
  `follow` int(11) DEFAULT NULL,
  `fans` int(11) DEFAULT NULL,
  `sign` varchar(200) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `sex` tinyint(2) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_userdetail
-- ----------------------------
INSERT INTO `t_userdetail` VALUES ('1', '3', '522940698@qq.com', '4', '1', '2', '1', '经典，因返璞归真2', 'IMG\\201807\\f26b4a12-4c8b-41ae-bdb0-b5414e46db4d_3.jpg', '1', '2018-07-01');
INSERT INTO `t_userdetail` VALUES ('2', '1', '522940698@qq.com', '1', '1', '2', '2', '经典，因返璞归真sad ', 'IMG\\201807\\2346520e-41f4-4bc1-8b42-bd54d15159d8_5.jpg', '0', '2018-07-01');
INSERT INTO `t_userdetail` VALUES ('5', '6', '522940698@qq.com', '3', '3', '3', '1', '经典，因返324归真', 'IMG\\201807\\58f25e9f-c087-4263-9ff4-42084daeb756_6.jpg', '0', '2018-07-01');
INSERT INTO `t_userdetail` VALUES ('6', '16', '522940698@qq.com', '5', '4', '23', '123', '经典，因返璞归真', 'IMG\\201807\\5b4697d4-c6c3-498a-8a90-7cd1cf6e4666_1.jpg', '1', '2018-07-01');
INSERT INTO `t_userdetail` VALUES ('7', '17', '522940698@qq.com', '1', '2', '2', '1', '经典，因返璞归真4324', 'IMG\\201807\\cd0251ae-409e-410f-af8c-de5530db9d42_11.jpg', '0', '2018-07-01');
INSERT INTO `t_userdetail` VALUES ('8', '18', '522940698@qq.com', '2', '4', '2', '23', '经典，因返璞归真23423', 'IMG\\201807\\259b0513-190d-497b-985a-1351dfb3b8c3_9.jpg', '1', '2018-07-01');
INSERT INTO `t_userdetail` VALUES ('9', '19', '522940698@qq.com', '3', '3', '23', '1', '经典，因返璞归真342423', 'IMG\\201807\\a76ca3aa-2a98-47ff-8380-c9155cbe3ddb_2.jpg', '0', '2018-07-01');
INSERT INTO `t_userdetail` VALUES ('10', '5', '522940698@qq.com', '4', '3', '3', '2', '经典，因返璞归真342423', 'IMG\\201807\\66cd305b-68e7-4945-a11d-bc56808152ad_7.jpg', '1', '2018-07-09');
INSERT INTO `t_userdetail` VALUES ('12', '20', null, null, null, null, null, null, 'IMG\\201807\\4604125e-d07b-4d59-9083-6cd59e1d3bd9_8.jpg', null, null);
