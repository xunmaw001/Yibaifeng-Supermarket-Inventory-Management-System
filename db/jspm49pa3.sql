-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: jspm49pa3
-- ------------------------------------------------------
-- Server version	5.7.31

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `address`
--

DROP TABLE IF EXISTS `address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `address` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `address` varchar(200) NOT NULL COMMENT '地址',
  `name` varchar(200) NOT NULL COMMENT '收货人',
  `phone` varchar(200) NOT NULL COMMENT '电话',
  `isdefault` varchar(200) NOT NULL COMMENT '是否默认地址[是/否]',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1604905305500 DEFAULT CHARSET=utf8 COMMENT='地址';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address`
--

LOCK TABLES `address` WRITE;
/*!40000 ALTER TABLE `address` DISABLE KEYS */;
INSERT INTO `address` VALUES (2,'2020-11-09 06:53:15',2,'地址2','收货人2','电话2','是否默认地址[是/否]2'),(3,'2020-11-09 06:53:15',3,'地址3','收货人3','电话3','是否默认地址[是/否]3'),(1604905305499,'2020-11-09 07:01:44',1,'广东省梅州市梅江区江南街道美凤路7号3江南阁','张三','13800000000','是');
/*!40000 ALTER TABLE `address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cart` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `tablename` varchar(200) DEFAULT 'shangpinxinxi' COMMENT '商品表名',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `goodid` bigint(20) NOT NULL COMMENT '商品id',
  `goodname` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `picture` varchar(200) DEFAULT NULL COMMENT '图片',
  `buynumber` int(11) NOT NULL COMMENT '购买数量',
  `price` float DEFAULT NULL COMMENT '单价',
  `discountprice` float DEFAULT NULL COMMENT '会员价',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='购物车表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart`
--

LOCK TABLES `cart` WRITE;
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
INSERT INTO `cart` VALUES (1,'2020-11-09 06:53:15','商品表名1',1,1,'商品名称1','http://localhost:8080/jspm49pa3/upload/cart_picture1.jpg',1,1,1),(2,'2020-11-09 06:53:15','商品表名2',2,2,'商品名称2','http://localhost:8080/jspm49pa3/upload/cart_picture2.jpg',2,2,2),(3,'2020-11-09 06:53:15','商品表名3',3,3,'商品名称3','http://localhost:8080/jspm49pa3/upload/cart_picture3.jpg',3,3,3);
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chukujilu`
--

DROP TABLE IF EXISTS `chukujilu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chukujilu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `shangpinbianhao` varchar(200) DEFAULT NULL COMMENT '商品编号',
  `shangpinmingcheng` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `shangpinleixing` varchar(200) DEFAULT NULL COMMENT '商品类型',
  `kucunshuliang` int(11) DEFAULT NULL COMMENT '库存数量',
  `dengjiriqi` datetime DEFAULT NULL COMMENT '登记日期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1604905510764 DEFAULT CHARSET=utf8 COMMENT='出库记录';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chukujilu`
--

LOCK TABLES `chukujilu` WRITE;
/*!40000 ALTER TABLE `chukujilu` DISABLE KEYS */;
INSERT INTO `chukujilu` VALUES (1,'2020-11-09 06:53:15','商品编号1','商品名称1','商品类型1',1,'2020-11-09 14:53:15'),(2,'2020-11-09 06:53:15','商品编号2','商品名称2','商品类型2',2,'2020-11-09 14:53:15'),(3,'2020-11-09 06:53:15','商品编号3','商品名称3','商品类型3',3,'2020-11-09 14:53:15'),(1604905510763,'2020-11-09 07:05:10','商品编号1','商品名称1','日用品',15,'2020-11-09 15:05:02');
/*!40000 ALTER TABLE `chukujilu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `config`
--

DROP TABLE IF EXISTS `config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES (1,'picture1','http://localhost:8080/jspm49pa3/upload/picture1.jpg'),(2,'picture2','http://localhost:8080/jspm49pa3/upload/picture2.jpg'),(3,'picture3','http://localhost:8080/jspm49pa3/upload/picture3.jpg'),(4,'picture4','http://localhost:8080/jspm49pa3/upload/picture4.jpg'),(5,'picture5','http://localhost:8080/jspm49pa3/upload/picture5.jpg'),(6,'homepage','http://localhost:8080/jspm49pa3/upload/1604905738820.jpg');
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discussshangpinxinxi`
--

DROP TABLE IF EXISTS `discussshangpinxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discussshangpinxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `content` varchar(200) NOT NULL COMMENT '评论内容',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='商品信息评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discussshangpinxinxi`
--

LOCK TABLES `discussshangpinxinxi` WRITE;
/*!40000 ALTER TABLE `discussshangpinxinxi` DISABLE KEYS */;
INSERT INTO `discussshangpinxinxi` VALUES (1,'2020-11-09 06:53:15',1,'评论内容1',1),(2,'2020-11-09 06:53:15',2,'评论内容2',2),(3,'2020-11-09 06:53:15',3,'评论内容3',3);
/*!40000 ALTER TABLE `discussshangpinxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `messages`
--

DROP TABLE IF EXISTS `messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `messages` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `userid` bigint(20) NOT NULL COMMENT '留言人id',
  `username` varchar(200) DEFAULT NULL COMMENT '留言人用户名',
  `content` longtext NOT NULL COMMENT '留言内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1604905354803 DEFAULT CHARSET=utf8 COMMENT='留言板';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `messages`
--

LOCK TABLES `messages` WRITE;
/*!40000 ALTER TABLE `messages` DISABLE KEYS */;
INSERT INTO `messages` VALUES (1,'2020-11-09 06:53:15',1,'留言人用户名1','留言内容1','回复内容1'),(2,'2020-11-09 06:53:15',2,'留言人用户名2','留言内容2','回复内容2'),(3,'2020-11-09 06:53:15',3,'留言人用户名3','留言内容3','回复内容3'),(1604905354802,'2020-11-09 07:02:34',1,'001','有没有xx商品','有的');
/*!40000 ALTER TABLE `messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `title` varchar(200) NOT NULL COMMENT '标题',
  `picture` varchar(200) NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='新闻资讯';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES (1,'2020-11-09 06:53:15','标题1111111','http://localhost:8080/jspm49pa3/upload/1604905383780.jpg','1111111111111<img src=\"http://localhost:8080/jspm49pa3/upload/1604905388302.jpg\" width=\"900\" height=\"560\" _src=\"http://localhost:8080/jspm49pa3/upload/1604905388302.jpg\">\r\n'),(2,'2020-11-09 06:53:15','标题2','http://localhost:8080/jspm49pa3/upload/news_picture2.jpg','内容2'),(3,'2020-11-09 06:53:15','标题3','http://localhost:8080/jspm49pa3/upload/news_picture3.jpg','内容3');
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orders` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `orderid` varchar(200) NOT NULL COMMENT '订单id',
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
  `type` int(11) DEFAULT NULL COMMENT '支付类型（1：现金 2：积分）',
  `status` varchar(200) DEFAULT NULL COMMENT '状态',
  `address` varchar(200) DEFAULT NULL COMMENT '地址',
  PRIMARY KEY (`id`),
  UNIQUE KEY `orderid` (`orderid`)
) ENGINE=InnoDB AUTO_INCREMENT=1604905332023 DEFAULT CHARSET=utf8 COMMENT='订单';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1,'2020-11-09 06:53:15','订单id1','商品表名1',1,1,'商品名称1','http://localhost:8080/jspm49pa3/upload/orders_picture1.jpg',1,1,1,1,1,1,'状态1','地址1'),(2,'2020-11-09 06:53:15','订单id2','商品表名2',2,2,'商品名称2','http://localhost:8080/jspm49pa3/upload/orders_picture2.jpg',2,2,2,2,2,2,'状态2','地址2'),(3,'2020-11-09 06:53:15','订单id3','商品表名3',3,3,'商品名称3','http://localhost:8080/jspm49pa3/upload/orders_picture3.jpg',3,3,3,3,3,3,'状态3','地址3'),(1604905332022,'2020-11-09 07:02:11','2020119152973274526','shangpinxinxi',1,1,'商品名称1','http://localhost:8080/jspm49pa3/upload/shangpinxinxi_shangpintupian1.jpg',3,50,50,150,150,1,'已完成','广东省梅州市梅江区江南街道美凤路7号3江南阁');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rukujilu`
--

DROP TABLE IF EXISTS `rukujilu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rukujilu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `shangpinbianhao` varchar(200) DEFAULT NULL COMMENT '商品编号',
  `shangpinmingcheng` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `shangpinleixing` varchar(200) DEFAULT NULL COMMENT '商品类型',
  `kucunshuliang` int(11) DEFAULT NULL COMMENT '库存数量',
  `dengjiriqi` datetime DEFAULT NULL COMMENT '登记日期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1604905494711 DEFAULT CHARSET=utf8 COMMENT='入库记录';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rukujilu`
--

LOCK TABLES `rukujilu` WRITE;
/*!40000 ALTER TABLE `rukujilu` DISABLE KEYS */;
INSERT INTO `rukujilu` VALUES (1,'2020-11-09 06:53:15','商品编号1','商品名称1','商品类型1',1,'2020-11-09 14:53:15'),(2,'2020-11-09 06:53:15','商品编号2','商品名称2','商品类型2',2,'2020-11-09 14:53:15'),(3,'2020-11-09 06:53:15','商品编号3','商品名称3','商品类型3',3,'2020-11-09 14:53:15'),(1604905494710,'2020-11-09 07:04:54','商品编号1','商品名称1','日用品',500,'2020-11-08 15:04:47');
/*!40000 ALTER TABLE `rukujilu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shangpinfenlei`
--

DROP TABLE IF EXISTS `shangpinfenlei`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shangpinfenlei` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `shangpinleixing` varchar(200) NOT NULL COMMENT '商品类型',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1604905573377 DEFAULT CHARSET=utf8 COMMENT='商品分类';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shangpinfenlei`
--

LOCK TABLES `shangpinfenlei` WRITE;
/*!40000 ALTER TABLE `shangpinfenlei` DISABLE KEYS */;
INSERT INTO `shangpinfenlei` VALUES (1,'2020-11-09 06:53:15','日用品'),(2,'2020-11-09 06:53:15','食品'),(3,'2020-11-09 06:53:15','调味品'),(1604905573376,'2020-11-09 07:06:13','文具');
/*!40000 ALTER TABLE `shangpinfenlei` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shangpinweihu`
--

DROP TABLE IF EXISTS `shangpinweihu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shangpinweihu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `gonghao` varchar(200) DEFAULT NULL COMMENT '工号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `shangpinbianhao` varchar(200) DEFAULT NULL COMMENT '商品编号',
  `shangpinmingcheng` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `shangpinleixing` varchar(200) DEFAULT NULL COMMENT '商品类型',
  `weihuzhuangtai` varchar(200) DEFAULT NULL COMMENT '维护状态',
  `dengjishijian` datetime DEFAULT NULL COMMENT '登记时间',
  `weihushuoming` longtext COMMENT '维护说明',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1604905480060 DEFAULT CHARSET=utf8 COMMENT='商品维护';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shangpinweihu`
--

LOCK TABLES `shangpinweihu` WRITE;
/*!40000 ALTER TABLE `shangpinweihu` DISABLE KEYS */;
INSERT INTO `shangpinweihu` VALUES (1,'2020-11-09 06:53:15','工号1','姓名1','商品编号1','商品名称1','商品类型1','商品损坏','2020-11-09 14:53:15','维护说明1'),(2,'2020-11-09 06:53:15','工号2','姓名2','商品编号2','商品名称2','商品类型2','商品损坏','2020-11-09 14:53:15','维护说明2'),(3,'2020-11-09 06:53:15','工号3','姓名3','商品编号3','商品名称3','商品类型3','商品损坏','2020-11-09 14:53:15','维护说明3'),(1604905480059,'2020-11-09 07:04:39','001','李四','商品编号1','商品名称1','日用品','维护中','2020-11-09 15:04:29','测试');
/*!40000 ALTER TABLE `shangpinweihu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shangpinxinxi`
--

DROP TABLE IF EXISTS `shangpinxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shangpinxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `shangpinbianhao` varchar(200) DEFAULT NULL COMMENT '商品编号',
  `shangpinmingcheng` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `shangpinleixing` varchar(200) DEFAULT NULL COMMENT '商品类型',
  `kucunshuliang` int(11) DEFAULT NULL COMMENT '库存数量',
  `shangpintupian` varchar(200) DEFAULT NULL COMMENT '商品图片',
  `shangpinshuoming` longtext COMMENT '商品说明',
  `shangpinxiangqing` longtext COMMENT '商品详情',
  `thumbsupnum` int(11) DEFAULT '0' COMMENT '赞',
  `crazilynum` int(11) DEFAULT '0' COMMENT '踩',
  `jifen` int(11) DEFAULT '-1' COMMENT '积分',
  `price` float NOT NULL COMMENT '价格',
  PRIMARY KEY (`id`),
  UNIQUE KEY `shangpinbianhao` (`shangpinbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1604905631310 DEFAULT CHARSET=utf8 COMMENT='商品信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shangpinxinxi`
--

LOCK TABLES `shangpinxinxi` WRITE;
/*!40000 ALTER TABLE `shangpinxinxi` DISABLE KEYS */;
INSERT INTO `shangpinxinxi` VALUES (1,'2020-11-09 06:53:15','商品编号1','商品名称1','日用品',685,'http://localhost:8080/jspm49pa3/upload/shangpinxinxi_shangpintupian1.jpg','初始测试测试测试','商品详情1<img src=\"http://localhost:8080/jspm49pa3/upload/1604905142051.jpg\" width=\"900\" height=\"560\" _src=\"http://localhost:8080/jspm49pa3/upload/1604905142051.jpg\">\r\n',1,1,50,50),(2,'2020-11-09 06:53:15','商品编号2','商品名称2','食品',2,'http://localhost:8080/jspm49pa3/upload/shangpinxinxi_shangpintupian2.jpg','测试','商品详情2\r\n',2,2,2,2),(3,'2020-11-09 06:53:15','商品编号3','商品名称3','调味品',3,'http://localhost:8080/jspm49pa3/upload/shangpinxinxi_shangpintupian3.jpg','','商品详情3\r\n',3,3,3,3),(1604905631309,'2020-11-09 07:07:10','1604905579','文具1','文具',600,'http://localhost:8080/jspm49pa3/upload/1604905612200.jpg','测试','<img src=\"http://localhost:8080/jspm49pa3/upload/1604905629440.jpg\" width=\"900\" height=\"560\" _src=\"http://localhost:8080/jspm49pa3/upload/1604905629440.jpg\">\r\n',0,0,200,200);
/*!40000 ALTER TABLE `shangpinxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `storeup`
--

DROP TABLE IF EXISTS `storeup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='收藏表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `storeup`
--

LOCK TABLES `storeup` WRITE;
/*!40000 ALTER TABLE `storeup` DISABLE KEYS */;
INSERT INTO `storeup` VALUES (2,'2020-11-09 06:53:15',2,2,'表名2','收藏名称2','http://localhost:8080/jspm49pa3/upload/storeup_picture2.jpg'),(3,'2020-11-09 06:53:15',3,3,'表名3','收藏名称3','http://localhost:8080/jspm49pa3/upload/storeup_picture3.jpg');
/*!40000 ALTER TABLE `storeup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `token`
--

DROP TABLE IF EXISTS `token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='token表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
INSERT INTO `token` VALUES (1,1,'abo','users','管理员','0sxq20y7mhetqfphdivrf8e79j29n5mo','2020-11-09 06:56:55','2020-11-09 08:05:56'),(2,1,'001','yonghu','用户','m16rblj7ld76rqwqcfdposfzv4zq0o3c','2020-11-09 07:00:46','2020-11-09 08:00:47');
/*!40000 ALTER TABLE `token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'abo','abo','管理员','2020-11-09 06:53:15');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xiaoshoutongji`
--

DROP TABLE IF EXISTS `xiaoshoutongji`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xiaoshoutongji` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `nianfen` varchar(200) DEFAULT NULL COMMENT '年份',
  `yuefen` varchar(200) DEFAULT NULL COMMENT '月份',
  `xiaoshoue` int(11) DEFAULT NULL COMMENT '销售额',
  `dengjiriqi` date DEFAULT NULL COMMENT '登记日期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1604905700255 DEFAULT CHARSET=utf8 COMMENT='销售统计';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xiaoshoutongji`
--

LOCK TABLES `xiaoshoutongji` WRITE;
/*!40000 ALTER TABLE `xiaoshoutongji` DISABLE KEYS */;
INSERT INTO `xiaoshoutongji` VALUES (1604905680063,'2020-11-09 07:07:59','2020','一月份',15,'2020-11-09'),(1604905690246,'2020-11-09 07:08:09','2020','二月份',25,'2020-11-09'),(1604905700254,'2020-11-09 07:08:19','2020','三月份',30,'2020-11-09');
/*!40000 ALTER TABLE `xiaoshoutongji` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yonghu`
--

DROP TABLE IF EXISTS `yonghu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `mima` varchar(200) DEFAULT NULL COMMENT '密码',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `dianziyouxiang` varchar(200) DEFAULT NULL COMMENT '电子邮箱',
  `shenfenzhenghao` varchar(200) DEFAULT NULL COMMENT '身份证号',
  `gerenzhaopian` varchar(200) DEFAULT NULL COMMENT '个人照片',
  `jifen` int(11) DEFAULT '0' COMMENT '积分',
  `money` float DEFAULT '0' COMMENT '余额',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yonghuming` (`yonghuming`)
) ENGINE=InnoDB AUTO_INCREMENT=1604905238769 DEFAULT CHARSET=utf8 COMMENT='用户';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yonghu`
--

LOCK TABLES `yonghu` WRITE;
/*!40000 ALTER TABLE `yonghu` DISABLE KEYS */;
INSERT INTO `yonghu` VALUES (1,'2020-11-09 06:53:15','001','001','张三','男','13823888881','773890001@qq.com','440300199101010001','http://localhost:8080/jspm49pa3/upload/yonghu_gerenzhaopian1.jpg',151,4851),(2,'2020-11-09 06:53:15','用户2','123456','姓名2','男','13823888882','773890002@qq.com','440300199202020002','http://localhost:8080/jspm49pa3/upload/yonghu_gerenzhaopian2.jpg',2,2),(3,'2020-11-09 06:53:15','用户3','123456','姓名3','男','13823888883','773890003@qq.com','440300199303030003','http://localhost:8080/jspm49pa3/upload/yonghu_gerenzhaopian3.jpg',3,3);
/*!40000 ALTER TABLE `yonghu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yuangong`
--

DROP TABLE IF EXISTS `yuangong`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yuangong` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `gonghao` varchar(200) DEFAULT NULL COMMENT '工号',
  `mima` varchar(200) DEFAULT NULL COMMENT '密码',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `dianziyouxiang` varchar(200) DEFAULT NULL COMMENT '电子邮箱',
  `shenfenzhenghao` varchar(200) DEFAULT NULL COMMENT '身份证号',
  `yuangongzhaopian` varchar(200) DEFAULT NULL COMMENT '员工照片',
  `jifen` int(11) DEFAULT '0' COMMENT '积分',
  `money` float DEFAULT '0' COMMENT '余额',
  PRIMARY KEY (`id`),
  UNIQUE KEY `gonghao` (`gonghao`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='员工';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yuangong`
--

LOCK TABLES `yuangong` WRITE;
/*!40000 ALTER TABLE `yuangong` DISABLE KEYS */;
INSERT INTO `yuangong` VALUES (1,'2020-11-09 06:53:15','001','123456','李四','男','13823888881','773890001@qq.com','440300199101010001','http://localhost:8080/jspm49pa3/upload/yuangong_yuangongzhaopian1.jpg',1,1),(2,'2020-11-09 06:53:15','员工2','123456','姓名2','男','13823888882','773890002@qq.com','440300199202020002','http://localhost:8080/jspm49pa3/upload/yuangong_yuangongzhaopian2.jpg',2,2),(3,'2020-11-09 06:53:15','员工3','123456','姓名3','男','13823888883','773890003@qq.com','440300199303030003','http://localhost:8080/jspm49pa3/upload/yuangong_yuangongzhaopian3.jpg',3,3);
/*!40000 ALTER TABLE `yuangong` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-11-09 16:33:19
