/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - ssm8vuk5
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`ssm8vuk5` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `ssm8vuk5`;

/*Table structure for table `address` */

DROP TABLE IF EXISTS `address`;

CREATE TABLE `address` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `address` varchar(200) NOT NULL COMMENT '地址',
  `name` varchar(200) NOT NULL COMMENT '收货人',
  `phone` varchar(200) NOT NULL COMMENT '电话',
  `isdefault` varchar(200) NOT NULL COMMENT '是否默认地址[是/否]',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1619319272572 DEFAULT CHARSET=utf8 COMMENT='地址';

/*Data for the table `address` */

insert  into `address`(`id`,`addtime`,`userid`,`address`,`name`,`phone`,`isdefault`) values (1,'2021-04-25 10:43:16',1,'宇宙银河系金星1号','金某','13823888881','是');
insert  into `address`(`id`,`addtime`,`userid`,`address`,`name`,`phone`,`isdefault`) values (2,'2021-04-25 10:43:16',2,'宇宙银河系木星1号','木某','13823888882','是');
insert  into `address`(`id`,`addtime`,`userid`,`address`,`name`,`phone`,`isdefault`) values (3,'2021-04-25 10:43:16',3,'宇宙银河系水星1号','水某','13823888883','是');
insert  into `address`(`id`,`addtime`,`userid`,`address`,`name`,`phone`,`isdefault`) values (4,'2021-04-25 10:43:16',4,'宇宙银河系火星1号','火某','13823888884','是');
insert  into `address`(`id`,`addtime`,`userid`,`address`,`name`,`phone`,`isdefault`) values (5,'2021-04-25 10:43:16',5,'宇宙银河系土星1号','土某','13823888885','是');
insert  into `address`(`id`,`addtime`,`userid`,`address`,`name`,`phone`,`isdefault`) values (6,'2021-04-25 10:43:16',6,'宇宙银河系月球1号','月某','13823888886','是');
insert  into `address`(`id`,`addtime`,`userid`,`address`,`name`,`phone`,`isdefault`) values (1619319272571,'2021-04-25 10:54:31',1619319233491,'广东省梅州市梅江区江南街道白马三巷作新小学','陈一','12312312312','是');

/*Table structure for table `cart` */

DROP TABLE IF EXISTS `cart`;

CREATE TABLE `cart` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `tablename` varchar(200) DEFAULT 'shangpinxinxi' COMMENT '商品表名',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `goodid` bigint(20) NOT NULL COMMENT '商品id',
  `goodname` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `picture` varchar(200) DEFAULT NULL COMMENT '图片',
  `buynumber` int(11) NOT NULL COMMENT '购买数量',
  `price` float DEFAULT NULL COMMENT '单价',
  `discountprice` float DEFAULT NULL COMMENT '会员价',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1619319465236 DEFAULT CHARSET=utf8 COMMENT='购物车表';

/*Data for the table `cart` */

/*Table structure for table `chat` */

DROP TABLE IF EXISTS `chat`;

CREATE TABLE `chat` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `adminid` bigint(20) DEFAULT NULL COMMENT '管理员id',
  `ask` longtext COMMENT '提问',
  `reply` longtext COMMENT '回复',
  `isreply` int(11) DEFAULT NULL COMMENT '是否回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1619319435107 DEFAULT CHARSET=utf8 COMMENT='在线客服';

/*Data for the table `chat` */

insert  into `chat`(`id`,`addtime`,`userid`,`adminid`,`ask`,`reply`,`isreply`) values (61,'2021-04-25 10:43:16',1,1,'提问1','回复1',1);
insert  into `chat`(`id`,`addtime`,`userid`,`adminid`,`ask`,`reply`,`isreply`) values (62,'2021-04-25 10:43:16',2,2,'提问2','回复2',2);
insert  into `chat`(`id`,`addtime`,`userid`,`adminid`,`ask`,`reply`,`isreply`) values (63,'2021-04-25 10:43:16',3,3,'提问3','回复3',3);
insert  into `chat`(`id`,`addtime`,`userid`,`adminid`,`ask`,`reply`,`isreply`) values (64,'2021-04-25 10:43:16',4,4,'提问4','回复4',4);
insert  into `chat`(`id`,`addtime`,`userid`,`adminid`,`ask`,`reply`,`isreply`) values (65,'2021-04-25 10:43:16',5,5,'提问5','回复5',5);
insert  into `chat`(`id`,`addtime`,`userid`,`adminid`,`ask`,`reply`,`isreply`) values (66,'2021-04-25 10:43:16',6,6,'提问6','回复6',6);
insert  into `chat`(`id`,`addtime`,`userid`,`adminid`,`ask`,`reply`,`isreply`) values (1619319376007,'2021-04-25 10:56:15',1619319233491,NULL,'这里可以发咨询的给商家',NULL,0);
insert  into `chat`(`id`,`addtime`,`userid`,`adminid`,`ask`,`reply`,`isreply`) values (1619319435106,'2021-04-25 10:57:14',1619319233491,1,NULL,'可以这里回复用户咨询的问题',NULL);

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/ssm8vuk5/upload/1619319151189.jpg');
insert  into `config`(`id`,`name`,`value`) values (2,'picture2','http://localhost:8080/ssm8vuk5/upload/1619319158222.jpg');
insert  into `config`(`id`,`name`,`value`) values (3,'picture3','http://localhost:8080/ssm8vuk5/upload/1619319167443.jpg');
insert  into `config`(`id`,`name`,`value`) values (6,'homepage',NULL);

/*Table structure for table `dingdanpingjia` */

DROP TABLE IF EXISTS `dingdanpingjia`;

CREATE TABLE `dingdanpingjia` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `dingdanbianhao` varchar(200) DEFAULT NULL COMMENT '订单编号',
  `shangpinmingcheng` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `shangpinfenlei` varchar(200) DEFAULT NULL COMMENT '商品分类',
  `pingfen` varchar(200) DEFAULT NULL COMMENT '评分',
  `tianjiatupian` varchar(200) DEFAULT NULL COMMENT '添加图片',
  `pingjianeirong` longtext COMMENT '评价内容',
  `pingjiariqi` date DEFAULT NULL COMMENT '评价日期',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1619319550124 DEFAULT CHARSET=utf8 COMMENT='订单评价';

/*Data for the table `dingdanpingjia` */

insert  into `dingdanpingjia`(`id`,`addtime`,`dingdanbianhao`,`shangpinmingcheng`,`shangpinfenlei`,`pingfen`,`tianjiatupian`,`pingjianeirong`,`pingjiariqi`,`yonghuming`,`lianxidianhua`,`sfsh`,`shhf`) values (51,'2021-04-25 10:43:16','订单编号1','商品名称1','商品分类1','1','http://localhost:8080/ssm8vuk5/upload/1619318842477.jpg','评价内容1','2021-04-25','用户名1','联系电话1','是','');
insert  into `dingdanpingjia`(`id`,`addtime`,`dingdanbianhao`,`shangpinmingcheng`,`shangpinfenlei`,`pingfen`,`tianjiatupian`,`pingjianeirong`,`pingjiariqi`,`yonghuming`,`lianxidianhua`,`sfsh`,`shhf`) values (52,'2021-04-25 10:43:16','订单编号2','商品名称2','商品分类2','1','http://localhost:8080/ssm8vuk5/upload/1619318857150.jpg','评价内容2','2021-04-25','用户名2','联系电话2','是','');
insert  into `dingdanpingjia`(`id`,`addtime`,`dingdanbianhao`,`shangpinmingcheng`,`shangpinfenlei`,`pingfen`,`tianjiatupian`,`pingjianeirong`,`pingjiariqi`,`yonghuming`,`lianxidianhua`,`sfsh`,`shhf`) values (53,'2021-04-25 10:43:16','订单编号3','商品名称3','商品分类3','1','http://localhost:8080/ssm8vuk5/upload/dingdanpingjia_tianjiatupian3.jpg','评价内容3','2021-04-25','用户名3','联系电话3','是','');
insert  into `dingdanpingjia`(`id`,`addtime`,`dingdanbianhao`,`shangpinmingcheng`,`shangpinfenlei`,`pingfen`,`tianjiatupian`,`pingjianeirong`,`pingjiariqi`,`yonghuming`,`lianxidianhua`,`sfsh`,`shhf`) values (54,'2021-04-25 10:43:16','订单编号4','商品名称4','商品分类4','1','http://localhost:8080/ssm8vuk5/upload/1619318865525.jpg','评价内容4','2021-04-25','用户名4','联系电话4','是','');
insert  into `dingdanpingjia`(`id`,`addtime`,`dingdanbianhao`,`shangpinmingcheng`,`shangpinfenlei`,`pingfen`,`tianjiatupian`,`pingjianeirong`,`pingjiariqi`,`yonghuming`,`lianxidianhua`,`sfsh`,`shhf`) values (55,'2021-04-25 10:43:16','订单编号5','商品名称5','商品分类5','1','http://localhost:8080/ssm8vuk5/upload/dingdanpingjia_tianjiatupian5.jpg','评价内容5','2021-04-25','用户名5','联系电话5','是','');
insert  into `dingdanpingjia`(`id`,`addtime`,`dingdanbianhao`,`shangpinmingcheng`,`shangpinfenlei`,`pingfen`,`tianjiatupian`,`pingjianeirong`,`pingjiariqi`,`yonghuming`,`lianxidianhua`,`sfsh`,`shhf`) values (56,'2021-04-25 10:43:16','订单编号6','商品名称6','商品分类6','1','http://localhost:8080/ssm8vuk5/upload/dingdanpingjia_tianjiatupian6.jpg','评价内容6','2021-04-25','用户名6','联系电话6','是','');
insert  into `dingdanpingjia`(`id`,`addtime`,`dingdanbianhao`,`shangpinmingcheng`,`shangpinfenlei`,`pingfen`,`tianjiatupian`,`pingjianeirong`,`pingjiariqi`,`yonghuming`,`lianxidianhua`,`sfsh`,`shhf`) values (1619319550123,'2021-04-25 10:59:09','202142510562448761403','新鲜甜玉米','蔬菜','5','http://localhost:8080/ssm8vuk5/upload/1619319542419.jpg','配送很快，玉米很新鲜','2021-04-25','1','12312312312','是','感谢支持');

/*Table structure for table `discussshangpinxinxi` */

DROP TABLE IF EXISTS `discussshangpinxinxi`;

CREATE TABLE `discussshangpinxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=127 DEFAULT CHARSET=utf8 COMMENT='商品信息评论表';

/*Data for the table `discussshangpinxinxi` */

insert  into `discussshangpinxinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (121,'2021-04-25 10:43:16',1,1,'用户名1','评论内容1','回复内容1');
insert  into `discussshangpinxinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (122,'2021-04-25 10:43:16',2,2,'用户名2','评论内容2','回复内容2');
insert  into `discussshangpinxinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (123,'2021-04-25 10:43:16',3,3,'用户名3','评论内容3','回复内容3');
insert  into `discussshangpinxinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (124,'2021-04-25 10:43:16',4,4,'用户名4','评论内容4','回复内容4');
insert  into `discussshangpinxinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (125,'2021-04-25 10:43:16',5,5,'用户名5','评论内容5','回复内容5');
insert  into `discussshangpinxinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (126,'2021-04-25 10:43:16',6,6,'用户名6','评论内容6','回复内容6');

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `introduction` longtext COMMENT '简介',
  `picture` varchar(200) NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1619319212002 DEFAULT CHARSET=utf8 COMMENT='商品资讯';

/*Data for the table `news` */

insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (111,'2021-04-25 10:43:16','标题1','简介1','http://localhost:8080/ssm8vuk5/upload/1619318878450.jpg','<p>内容1</p>');
insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (112,'2021-04-25 10:43:16','标题2','简介2','http://localhost:8080/ssm8vuk5/upload/1619318887279.jpg','<p>内容2</p>');
insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (113,'2021-04-25 10:43:16','标题3','简介3','http://localhost:8080/ssm8vuk5/upload/1619318895313.jpg','<p>内容3</p>');
insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (114,'2021-04-25 10:43:16','标题4','简介4','http://localhost:8080/ssm8vuk5/upload/1619318905253.jpg','<p>内容4</p>');
insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (115,'2021-04-25 10:43:16','标题5','简介5','http://localhost:8080/ssm8vuk5/upload/1619318915074.jpg','<p>内容5</p>');
insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (116,'2021-04-25 10:43:16','标题6','简介6','http://localhost:8080/ssm8vuk5/upload/1619318924478.jpg','<p>内容6</p>');
insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (1619319212001,'2021-04-25 10:53:31','商品优惠资讯','商品优惠','http://localhost:8080/ssm8vuk5/upload/1619319194591.jpg','<p>资讯内容LKGLRTJYHLTRHUJYG</p><p><img src=\"http://localhost:8080/ssm8vuk5/upload/1619319209923.jpg\"></p>');

/*Table structure for table `orders` */

DROP TABLE IF EXISTS `orders`;

CREATE TABLE `orders` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `orderid` varchar(200) NOT NULL COMMENT '订单编号',
  `tablename` varchar(200) DEFAULT 'shangpinxinxi' COMMENT '商品表名',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `goodid` bigint(20) NOT NULL COMMENT '商品id',
  `goodname` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `picture` varchar(200) DEFAULT NULL COMMENT '商品图片',
  `buynumber` int(11) NOT NULL COMMENT '购买数量',
  `price` float NOT NULL DEFAULT '0' COMMENT '价格/积分',
  `discountprice` float DEFAULT '0' COMMENT '折扣价格',
  `total` float NOT NULL DEFAULT '0' COMMENT '总价格/总积分',
  `discounttotal` float DEFAULT '0' COMMENT '折扣总价格',
  `type` int(11) DEFAULT '1' COMMENT '支付类型',
  `status` varchar(200) DEFAULT NULL COMMENT '状态',
  `address` varchar(200) DEFAULT NULL COMMENT '地址',
  `tel` varchar(200) DEFAULT NULL COMMENT '电话',
  `consignee` varchar(200) DEFAULT NULL COMMENT '收货人',
  PRIMARY KEY (`id`),
  UNIQUE KEY `orderid` (`orderid`)
) ENGINE=InnoDB AUTO_INCREMENT=1619319471522 DEFAULT CHARSET=utf8 COMMENT='订单';

/*Data for the table `orders` */

insert  into `orders`(`id`,`addtime`,`orderid`,`tablename`,`userid`,`goodid`,`goodname`,`picture`,`buynumber`,`price`,`discountprice`,`total`,`discounttotal`,`type`,`status`,`address`,`tel`,`consignee`) values (1619319385455,'2021-04-25 10:56:24','202142510562448761403','shangpinxinxi',1619319233491,1619319127087,'新鲜甜玉米','http://localhost:8080/ssm8vuk5/upload/1619319063989.jpg',3,15,15,45,45,1,'已完成','广东省梅州市梅江区江南街道白马三巷作新小学','12312312312','陈一');
insert  into `orders`(`id`,`addtime`,`orderid`,`tablename`,`userid`,`goodid`,`goodname`,`picture`,`buynumber`,`price`,`discountprice`,`total`,`discounttotal`,`type`,`status`,`address`,`tel`,`consignee`) values (1619319471521,'2021-04-25 10:57:50','202142510575032911297','shangpinxinxi',1619319233491,45,'商品名称5','http://localhost:8080/ssm8vuk5/upload/1619318820576.jpg',2,99.9,99.9,199.8,199.8,1,'已支付','广东省梅州市梅江区江南街道白马三巷作新小学','12312312312','陈一');

/*Table structure for table `shangpinfenlei` */

DROP TABLE IF EXISTS `shangpinfenlei`;

CREATE TABLE `shangpinfenlei` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shangpinfenlei` varchar(200) NOT NULL COMMENT '商品分类',
  PRIMARY KEY (`id`),
  UNIQUE KEY `shangpinfenlei` (`shangpinfenlei`)
) ENGINE=InnoDB AUTO_INCREMENT=1619319048554 DEFAULT CHARSET=utf8 COMMENT='商品分类';

/*Data for the table `shangpinfenlei` */

insert  into `shangpinfenlei`(`id`,`addtime`,`shangpinfenlei`) values (31,'2021-04-25 10:43:16','蔬菜');
insert  into `shangpinfenlei`(`id`,`addtime`,`shangpinfenlei`) values (32,'2021-04-25 10:43:16','水果');
insert  into `shangpinfenlei`(`id`,`addtime`,`shangpinfenlei`) values (33,'2021-04-25 10:43:16','禽畜肉蛋');
insert  into `shangpinfenlei`(`id`,`addtime`,`shangpinfenlei`) values (34,'2021-04-25 10:43:16','熟食');
insert  into `shangpinfenlei`(`id`,`addtime`,`shangpinfenlei`) values (35,'2021-04-25 10:43:16','糕点');
insert  into `shangpinfenlei`(`id`,`addtime`,`shangpinfenlei`) values (36,'2021-04-25 10:43:16','肉品');
insert  into `shangpinfenlei`(`id`,`addtime`,`shangpinfenlei`) values (1619319048553,'2021-04-25 10:50:47','海鲜');

/*Table structure for table `shangpinxinxi` */

DROP TABLE IF EXISTS `shangpinxinxi`;

CREATE TABLE `shangpinxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shangpinmingcheng` varchar(200) NOT NULL COMMENT '商品名称',
  `shangpinfenlei` varchar(200) NOT NULL COMMENT '商品分类',
  `tupian` varchar(200) NOT NULL COMMENT '图片',
  `guige` varchar(200) DEFAULT NULL COMMENT '规格',
  `baozhiqi` varchar(200) DEFAULT NULL COMMENT '保质期',
  `chandi` varchar(200) DEFAULT NULL COMMENT '产地',
  `shangjiashijian` datetime DEFAULT NULL COMMENT '上架时间',
  `shangpinxiangqing` longtext COMMENT '商品详情',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  `price` float NOT NULL COMMENT '价格',
  `onelimittimes` int(11) DEFAULT '-1' COMMENT '单限',
  `alllimittimes` int(11) DEFAULT '-1' COMMENT '库存',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1619319127088 DEFAULT CHARSET=utf8 COMMENT='商品信息';

/*Data for the table `shangpinxinxi` */

insert  into `shangpinxinxi`(`id`,`addtime`,`shangpinmingcheng`,`shangpinfenlei`,`tupian`,`guige`,`baozhiqi`,`chandi`,`shangjiashijian`,`shangpinxiangqing`,`clicktime`,`clicknum`,`price`,`onelimittimes`,`alllimittimes`) values (41,'2021-04-25 10:43:16','商品名称1','水果','http://localhost:8080/ssm8vuk5/upload/1619318782000.jpg','规格1','保质期1','产地1','2021-04-25 10:43:16','<p>商品详情1</p>','2021-04-25 10:46:16',2,99.9,1,99);
insert  into `shangpinxinxi`(`id`,`addtime`,`shangpinmingcheng`,`shangpinfenlei`,`tupian`,`guige`,`baozhiqi`,`chandi`,`shangjiashijian`,`shangpinxiangqing`,`clicktime`,`clicknum`,`price`,`onelimittimes`,`alllimittimes`) values (42,'2021-04-25 10:43:16','商品名称2','熟食','http://localhost:8080/ssm8vuk5/upload/1619318791961.jpg','规格2','保质期2','产地2','2021-04-25 10:43:16','<p>商品详情2</p>','2021-04-25 10:46:25',3,99.9,2,99);
insert  into `shangpinxinxi`(`id`,`addtime`,`shangpinmingcheng`,`shangpinfenlei`,`tupian`,`guige`,`baozhiqi`,`chandi`,`shangjiashijian`,`shangpinxiangqing`,`clicktime`,`clicknum`,`price`,`onelimittimes`,`alllimittimes`) values (43,'2021-04-25 10:43:16','商品名称3','禽畜肉蛋','http://localhost:8080/ssm8vuk5/upload/1619318800067.jpg','规格3','保质期3','产地3','2021-04-25 10:43:16','<p>商品详情3</p>','2021-04-25 10:46:35',4,99.9,3,99);
insert  into `shangpinxinxi`(`id`,`addtime`,`shangpinmingcheng`,`shangpinfenlei`,`tupian`,`guige`,`baozhiqi`,`chandi`,`shangjiashijian`,`shangpinxiangqing`,`clicktime`,`clicknum`,`price`,`onelimittimes`,`alllimittimes`) values (44,'2021-04-25 10:43:16','商品名称4','糕点','http://localhost:8080/ssm8vuk5/upload/1619318811010.jpg','规格4','保质期4','产地4','2021-04-25 10:43:16','<p>商品详情4</p>','2021-04-25 10:46:43',5,99.9,4,99);
insert  into `shangpinxinxi`(`id`,`addtime`,`shangpinmingcheng`,`shangpinfenlei`,`tupian`,`guige`,`baozhiqi`,`chandi`,`shangjiashijian`,`shangpinxiangqing`,`clicktime`,`clicknum`,`price`,`onelimittimes`,`alllimittimes`) values (45,'2021-04-25 10:43:16','商品名称5','肉品','http://localhost:8080/ssm8vuk5/upload/1619318820576.jpg','规格5','保质期5','产地5','2021-04-25 10:43:16','<p>商品详情5</p>','2021-04-25 10:57:55',16,99.9,5,0);
insert  into `shangpinxinxi`(`id`,`addtime`,`shangpinmingcheng`,`shangpinfenlei`,`tupian`,`guige`,`baozhiqi`,`chandi`,`shangjiashijian`,`shangpinxiangqing`,`clicktime`,`clicknum`,`price`,`onelimittimes`,`alllimittimes`) values (46,'2021-04-25 10:43:16','商品名称6','蔬菜','http://localhost:8080/ssm8vuk5/upload/1619318832280.jpg','规格6','保质期6','产地6','2021-04-25 10:43:16','<p>商品详情6</p>','2021-04-25 10:54:49',12,99.9,6,99);
insert  into `shangpinxinxi`(`id`,`addtime`,`shangpinmingcheng`,`shangpinfenlei`,`tupian`,`guige`,`baozhiqi`,`chandi`,`shangjiashijian`,`shangpinxiangqing`,`clicktime`,`clicknum`,`price`,`onelimittimes`,`alllimittimes`) values (1619319127087,'2021-04-25 10:52:06','新鲜甜玉米','蔬菜','http://localhost:8080/ssm8vuk5/upload/1619319063989.jpg','4根','5天','广西','2021-04-25 10:50:50','<p>商品介绍</p><p><img src=\"http://localhost:8080/ssm8vuk5/upload/1619319134373.jpg\"></p>','2021-04-25 10:56:32',7,15,5,47);

/*Table structure for table `storeup` */

DROP TABLE IF EXISTS `storeup`;

CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1619319344320 DEFAULT CHARSET=utf8 COMMENT='收藏表';

/*Data for the table `storeup` */

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'abo','users','管理员','dz9u21t5fuwk2hzgpa2dau4zem2s9uzg','2021-04-25 10:45:31','2021-04-25 13:13:01');
insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (2,1619319233491,'1','yonghu','用户','j2pses6fhww2tqyoeeor5i3ki3v5se9m','2021-04-25 10:53:59','2021-04-25 11:58:34');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'abo','abo','管理员','2021-04-25 10:43:16');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuming` varchar(200) NOT NULL COMMENT '用户名',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `money` float DEFAULT '0' COMMENT '余额',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yonghuming` (`yonghuming`)
) ENGINE=InnoDB AUTO_INCREMENT=1619319233492 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`addtime`,`yonghuming`,`mima`,`xingming`,`touxiang`,`xingbie`,`lianxidianhua`,`money`) values (11,'2021-04-25 10:43:16','用户1','123456','姓名1','http://localhost:8080/ssm8vuk5/upload/yonghu_touxiang1.jpg','男','13823888881',100);
insert  into `yonghu`(`id`,`addtime`,`yonghuming`,`mima`,`xingming`,`touxiang`,`xingbie`,`lianxidianhua`,`money`) values (12,'2021-04-25 10:43:16','用户2','123456','姓名2','http://localhost:8080/ssm8vuk5/upload/yonghu_touxiang2.jpg','男','13823888882',100);
insert  into `yonghu`(`id`,`addtime`,`yonghuming`,`mima`,`xingming`,`touxiang`,`xingbie`,`lianxidianhua`,`money`) values (13,'2021-04-25 10:43:16','用户3','123456','姓名3','http://localhost:8080/ssm8vuk5/upload/yonghu_touxiang3.jpg','男','13823888883',100);
insert  into `yonghu`(`id`,`addtime`,`yonghuming`,`mima`,`xingming`,`touxiang`,`xingbie`,`lianxidianhua`,`money`) values (14,'2021-04-25 10:43:16','用户4','123456','姓名4','http://localhost:8080/ssm8vuk5/upload/yonghu_touxiang4.jpg','男','13823888884',100);
insert  into `yonghu`(`id`,`addtime`,`yonghuming`,`mima`,`xingming`,`touxiang`,`xingbie`,`lianxidianhua`,`money`) values (15,'2021-04-25 10:43:16','用户5','123456','姓名5','http://localhost:8080/ssm8vuk5/upload/yonghu_touxiang5.jpg','男','13823888885',100);
insert  into `yonghu`(`id`,`addtime`,`yonghuming`,`mima`,`xingming`,`touxiang`,`xingbie`,`lianxidianhua`,`money`) values (16,'2021-04-25 10:43:16','用户6','123456','姓名6','http://localhost:8080/ssm8vuk5/upload/yonghu_touxiang6.jpg','男','13823888886',100);
insert  into `yonghu`(`id`,`addtime`,`yonghuming`,`mima`,`xingming`,`touxiang`,`xingbie`,`lianxidianhua`,`money`) values (1619319233491,'2021-04-25 10:53:53','1','11','陈一','http://localhost:8080/ssm8vuk5/upload/1619319247021.jpg','女','12312312312',755.2);

/*Table structure for table `yuangongxinxi` */

DROP TABLE IF EXISTS `yuangongxinxi`;

CREATE TABLE `yuangongxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yuangonggonghao` varchar(200) NOT NULL COMMENT '员工工号',
  `yuangongxingming` varchar(200) DEFAULT NULL COMMENT '员工姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `fuzepinlei` varchar(200) DEFAULT NULL COMMENT '负责品类',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `yuangongyouxiang` varchar(200) DEFAULT NULL COMMENT '员工邮箱',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yuangonggonghao` (`yuangonggonghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1619319038925 DEFAULT CHARSET=utf8 COMMENT='员工信息';

/*Data for the table `yuangongxinxi` */

insert  into `yuangongxinxi`(`id`,`addtime`,`yuangonggonghao`,`yuangongxingming`,`xingbie`,`fuzepinlei`,`lianxidianhua`,`yuangongyouxiang`,`shenfenzheng`) values (21,'2021-04-25 10:43:16','员工工号1','员工姓名1','男','负责品类1','13823888881','773890001@qq.com','440300199101010001');
insert  into `yuangongxinxi`(`id`,`addtime`,`yuangonggonghao`,`yuangongxingming`,`xingbie`,`fuzepinlei`,`lianxidianhua`,`yuangongyouxiang`,`shenfenzheng`) values (22,'2021-04-25 10:43:16','员工工号2','员工姓名2','男','负责品类2','13823888882','773890002@qq.com','440300199202020002');
insert  into `yuangongxinxi`(`id`,`addtime`,`yuangonggonghao`,`yuangongxingming`,`xingbie`,`fuzepinlei`,`lianxidianhua`,`yuangongyouxiang`,`shenfenzheng`) values (23,'2021-04-25 10:43:16','员工工号3','员工姓名3','男','负责品类3','13823888883','773890003@qq.com','440300199303030003');
insert  into `yuangongxinxi`(`id`,`addtime`,`yuangonggonghao`,`yuangongxingming`,`xingbie`,`fuzepinlei`,`lianxidianhua`,`yuangongyouxiang`,`shenfenzheng`) values (24,'2021-04-25 10:43:16','员工工号4','员工姓名4','男','负责品类4','13823888884','773890004@qq.com','440300199404040004');
insert  into `yuangongxinxi`(`id`,`addtime`,`yuangonggonghao`,`yuangongxingming`,`xingbie`,`fuzepinlei`,`lianxidianhua`,`yuangongyouxiang`,`shenfenzheng`) values (25,'2021-04-25 10:43:16','员工工号5','员工姓名5','男','负责品类5','13823888885','773890005@qq.com','440300199505050005');
insert  into `yuangongxinxi`(`id`,`addtime`,`yuangonggonghao`,`yuangongxingming`,`xingbie`,`fuzepinlei`,`lianxidianhua`,`yuangongyouxiang`,`shenfenzheng`) values (26,'2021-04-25 10:43:16','员工工号6','员工姓名6','男','负责品类6','13823888886','773890006@qq.com','440300199606060006');
insert  into `yuangongxinxi`(`id`,`addtime`,`yuangonggonghao`,`yuangongxingming`,`xingbie`,`fuzepinlei`,`lianxidianhua`,`yuangongyouxiang`,`shenfenzheng`) values (1619319038924,'2021-04-25 10:50:38','001','陈明','男','肉品','12345678941','159@qq.com','123456789789456123');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
