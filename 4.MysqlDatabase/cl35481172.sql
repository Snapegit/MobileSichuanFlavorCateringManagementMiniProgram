-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: cl35481172
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
-- Current Database: `cl35481172`
--

/*!40000 DROP DATABASE IF EXISTS `cl35481172`*/;

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `cl35481172` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `cl35481172`;

--
-- Table structure for table `address`
--

DROP TABLE IF EXISTS `address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `address` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `address` varchar(200) NOT NULL COMMENT '地址',
  `name` varchar(200) DEFAULT NULL COMMENT '收货人',
  `phone` varchar(200) DEFAULT NULL COMMENT '电话',
  `isdefault` varchar(200) DEFAULT NULL COMMENT '是否默认地址',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1709892332918 DEFAULT CHARSET=utf8 COMMENT='地址';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address`
--

LOCK TABLES `address` WRITE;
/*!40000 ALTER TABLE `address` DISABLE KEYS */;
INSERT INTO `address` VALUES (1,'2024-03-07 07:04:27','地址1','张三','19819881111','是',11),(2,'2024-03-07 07:04:27','地址2','李四','19819882222','是',12),(3,'2024-03-07 07:04:27','地址3','王五','19819883333','是',13),(4,'2024-03-07 07:04:27','地址4','赵六','19819884444','是',14),(5,'2024-03-07 07:04:27','地址5','孙七','19819885555','是',15),(6,'2024-03-07 07:04:27','地址6','周八','19819886666','是',16),(1709892332917,'2024-03-08 10:05:32','北京','111','11123454321','是',1709892288953);
/*!40000 ALTER TABLE `address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `caipinleixing`
--

DROP TABLE IF EXISTS `caipinleixing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `caipinleixing` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `caipinleixing` varchar(200) DEFAULT NULL COMMENT '菜品类型',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8 COMMENT='菜品类型';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `caipinleixing`
--

LOCK TABLES `caipinleixing` WRITE;
/*!40000 ALTER TABLE `caipinleixing` DISABLE KEYS */;
INSERT INTO `caipinleixing` VALUES (51,'2024-03-07 07:04:27','菜品类型1'),(52,'2024-03-07 07:04:27','菜品类型2'),(53,'2024-03-07 07:04:27','菜品类型3'),(54,'2024-03-07 07:04:27','菜品类型4'),(55,'2024-03-07 07:04:27','菜品类型5'),(56,'2024-03-07 07:04:27','菜品类型6');
/*!40000 ALTER TABLE `caipinleixing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `caipinxinxi`
--

DROP TABLE IF EXISTS `caipinxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `caipinxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `caipinmingcheng` varchar(200) NOT NULL COMMENT '菜品名称',
  `caipintupian` longtext NOT NULL COMMENT '菜品图片',
  `caipinleixing` varchar(200) NOT NULL COMMENT '菜品类型',
  `caipinxiangqing` longtext COMMENT '菜品详情',
  `shangjiazhanghao` varchar(200) DEFAULT NULL COMMENT '商家账号',
  `shangjiadianming` varchar(200) DEFAULT NULL COMMENT '商家店名',
  `shangjiadizhi` varchar(200) DEFAULT NULL COMMENT '商家地址',
  `thumbsupnum` int(11) DEFAULT NULL COMMENT '赞',
  `crazilynum` int(11) DEFAULT NULL COMMENT '踩',
  `storeupnum` int(11) DEFAULT NULL COMMENT '收藏数量',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `price` double DEFAULT NULL COMMENT '价格',
  `clicknum` int(11) DEFAULT NULL COMMENT '点击次数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1709892199488 DEFAULT CHARSET=utf8 COMMENT='菜品信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `caipinxinxi`
--

LOCK TABLES `caipinxinxi` WRITE;
/*!40000 ALTER TABLE `caipinxinxi` DISABLE KEYS */;
INSERT INTO `caipinxinxi` VALUES (61,'2024-03-07 07:04:27','菜品名称1','file/caipinxinxiCaipintupian1.jpg,file/caipinxinxiCaipintupian2.jpg,file/caipinxinxiCaipintupian3.jpg','菜品类型1','菜品详情1','商家账号1','商家店名1','商家地址1',1,1,1,'2024-03-07 15:04:27',99.9,1),(62,'2024-03-07 07:04:27','菜品名称2','file/caipinxinxiCaipintupian2.jpg,file/caipinxinxiCaipintupian3.jpg,file/caipinxinxiCaipintupian4.jpg','菜品类型2','菜品详情2','商家账号2','商家店名2','商家地址2',2,2,2,'2024-03-07 15:04:27',99.9,2),(63,'2024-03-07 07:04:27','菜品名称3','file/caipinxinxiCaipintupian3.jpg,file/caipinxinxiCaipintupian4.jpg,file/caipinxinxiCaipintupian5.jpg','菜品类型3','菜品详情3','商家账号3','商家店名3','商家地址3',3,3,3,'2024-03-07 15:04:27',99.9,3),(64,'2024-03-07 07:04:27','菜品名称4','file/caipinxinxiCaipintupian4.jpg,file/caipinxinxiCaipintupian5.jpg,file/caipinxinxiCaipintupian6.jpg','菜品类型4','菜品详情4','商家账号4','商家店名4','商家地址4',4,4,4,'2024-03-07 15:04:27',99.9,4),(65,'2024-03-07 07:04:27','菜品名称5','file/caipinxinxiCaipintupian5.jpg,file/caipinxinxiCaipintupian6.jpg,file/caipinxinxiCaipintupian7.jpg','菜品类型5','菜品详情5','商家账号5','商家店名5','商家地址5',5,5,5,'2024-03-07 15:04:27',99.9,5),(66,'2024-03-07 07:04:27','菜品名称6','file/caipinxinxiCaipintupian6.jpg,file/caipinxinxiCaipintupian7.jpg,file/caipinxinxiCaipintupian8.jpg','菜品类型6','菜品详情6','商家账号6','商家店名6','商家地址6',6,6,6,'2024-03-07 15:04:27',99.9,6),(1709892199487,'2024-03-08 10:03:18','麻婆豆腐','file/1709892171737.png','菜品类型1','1111111111111111111111111111','11','2222','北京',1,0,1,'2024-03-08 18:10:22',25,3);
/*!40000 ALTER TABLE `caipinxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cart` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `tablename` varchar(200) DEFAULT NULL COMMENT '商品表名',
  `goodid` bigint(20) NOT NULL COMMENT '商品id',
  `goodname` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `picture` longtext NOT NULL COMMENT '图片',
  `buynumber` int(11) DEFAULT NULL COMMENT '购买数量',
  `price` double DEFAULT NULL COMMENT '单价',
  `discountprice` double DEFAULT NULL COMMENT '折扣价',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `goodtype` varchar(200) DEFAULT NULL COMMENT '商品类型',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='购物车';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart`
--

LOCK TABLES `cart` WRITE;
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `config`
--

DROP TABLE IF EXISTS `config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='配置文件';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES (1,'swiper1','file/swiperPicture1.jpg'),(2,'swiper2','file/swiperPicture2.jpg'),(3,'swiper3','file/swiperPicture3.jpg');
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discusscaipinxinxi`
--

DROP TABLE IF EXISTS `discusscaipinxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discusscaipinxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `avatarurl` longtext COMMENT '头像',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='菜品信息评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discusscaipinxinxi`
--

LOCK TABLES `discusscaipinxinxi` WRITE;
/*!40000 ALTER TABLE `discusscaipinxinxi` DISABLE KEYS */;
/*!40000 ALTER TABLE `discusscaipinxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu`
--

DROP TABLE IF EXISTS `menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `menujson` longtext COMMENT '菜单',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='菜单';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu`
--

LOCK TABLES `menu` WRITE;
/*!40000 ALTER TABLE `menu` DISABLE KEYS */;
INSERT INTO `menu` VALUES (1,'2024-03-07 07:04:27','[{\"backMenu\":[{\"child\":[{\"appFrontIcon\":\"cuIcon-brand\",\"buttons\":[\"查看\"],\"menu\":\"已支付订单\",\"menuJump\":\"已支付\",\"tableName\":\"orders\"},{\"appFrontIcon\":\"cuIcon-brand\",\"buttons\":[\"查看\"],\"menu\":\"已退款订单\",\"menuJump\":\"已退款\",\"tableName\":\"orders\"},{\"appFrontIcon\":\"cuIcon-brand\",\"buttons\":[\"查看\"],\"menu\":\"商品订单\",\"tableName\":\"orders\"},{\"appFrontIcon\":\"cuIcon-brand\",\"buttons\":[\"查看\"],\"menu\":\"已完成订单\",\"menuJump\":\"已完成\",\"tableName\":\"orders\"},{\"appFrontIcon\":\"cuIcon-brand\",\"buttons\":[\"查看\"],\"menu\":\"已发货订单\",\"menuJump\":\"已发货\",\"tableName\":\"orders\"},{\"appFrontIcon\":\"cuIcon-brand\",\"buttons\":[\"查看\"],\"menu\":\"未支付订单\",\"menuJump\":\"未支付\",\"tableName\":\"orders\"},{\"appFrontIcon\":\"cuIcon-brand\",\"buttons\":[\"查看\"],\"menu\":\"已取消订单\",\"menuJump\":\"已取消\",\"tableName\":\"orders\"}],\"menu\":\"订单管理\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-paint\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"投诉信息\",\"menuJump\":\"列表\",\"tableName\":\"tousuxinxi\"}],\"fontClass\":\"icon-common15\",\"menu\":\"投诉信息管理\",\"unicode\":\"&#xedfc;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-newshot\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"轮播图\",\"menuJump\":\"列表\",\"tableName\":\"config\"}],\"fontClass\":\"icon-common29\",\"menu\":\"轮播图管理\",\"unicode\":\"&#xee2e;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-vipcard\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\",\"查看评论\"],\"menu\":\"菜品信息\",\"menuJump\":\"列表\",\"tableName\":\"caipinxinxi\"},{\"appFrontIcon\":\"cuIcon-newshot\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"菜品类型\",\"menuJump\":\"列表\",\"tableName\":\"caipinleixing\"}],\"fontClass\":\"icon-common7\",\"menu\":\"菜品信息管理\",\"unicode\":\"&#xedb4;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-copy\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"管理员\",\"menuJump\":\"列表\",\"tableName\":\"users\"},{\"appFrontIcon\":\"cuIcon-newshot\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"学生\",\"menuJump\":\"列表\",\"tableName\":\"xuesheng\"},{\"appFrontIcon\":\"cuIcon-attentionfavor\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"商家\",\"menuJump\":\"列表\",\"tableName\":\"shangjia\"}],\"fontClass\":\"icon-common42\",\"menu\":\"管理员管理\",\"unicode\":\"&#xef24;\"}],\"frontMenu\":[{\"child\":[{\"appFrontIcon\":\"cuIcon-list\",\"buttons\":[\"查看\",\"查看评论\"],\"menu\":\"菜品信息\",\"menuJump\":\"列表\",\"tableName\":\"caipinxinxi\"}],\"menu\":\"菜品信息管理\"}],\"hasBackLogin\":\"是\",\"hasBackRegister\":\"否\",\"hasFrontLogin\":\"否\",\"hasFrontRegister\":\"否\",\"roleName\":\"管理员\",\"tableName\":\"users\"},{\"backMenu\":[{\"child\":[{\"appFrontIcon\":\"cuIcon-goods\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"地址\",\"menuJump\":\"列表\",\"tableName\":\"address\"}],\"fontClass\":\"icon-common11\",\"menu\":\"地址管理\",\"unicode\":\"&#xeded;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-brand\",\"buttons\":[\"查看\"],\"menu\":\"已支付订单\",\"menuJump\":\"已支付\",\"tableName\":\"orders\"},{\"appFrontIcon\":\"cuIcon-brand\",\"buttons\":[\"查看\"],\"menu\":\"已退款订单\",\"menuJump\":\"已退款\",\"tableName\":\"orders\"},{\"appFrontIcon\":\"cuIcon-brand\",\"buttons\":[\"查看\"],\"menu\":\"商品订单\",\"tableName\":\"orders\"},{\"appFrontIcon\":\"cuIcon-brand\",\"buttons\":[\"查看\"],\"menu\":\"已完成订单\",\"menuJump\":\"已完成\",\"tableName\":\"orders\"},{\"appFrontIcon\":\"cuIcon-brand\",\"buttons\":[\"查看\",\"确认收货\"],\"menu\":\"已发货订单\",\"menuJump\":\"已发货\",\"tableName\":\"orders\"},{\"appFrontIcon\":\"cuIcon-brand\",\"buttons\":[\"查看\"],\"menu\":\"未支付订单\",\"menuJump\":\"未支付\",\"tableName\":\"orders\"},{\"appFrontIcon\":\"cuIcon-brand\",\"buttons\":[\"查看\"],\"menu\":\"已取消订单\",\"menuJump\":\"已取消\",\"tableName\":\"orders\"}],\"menu\":\"订单管理\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-camera\",\"buttons\":[\"查看\"],\"menu\":\"购物车\",\"menuJump\":\"列表\",\"tableName\":\"cart\"}],\"fontClass\":\"icon-common31\",\"menu\":\"购物车管理\",\"unicode\":\"&#xee48;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-paint\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"投诉信息\",\"menuJump\":\"列表\",\"tableName\":\"tousuxinxi\"}],\"fontClass\":\"icon-common15\",\"menu\":\"投诉信息管理\",\"unicode\":\"&#xedfc;\"}],\"frontMenu\":[{\"child\":[{\"appFrontIcon\":\"cuIcon-list\",\"buttons\":[\"查看\",\"查看评论\"],\"menu\":\"菜品信息\",\"menuJump\":\"列表\",\"tableName\":\"caipinxinxi\"}],\"menu\":\"菜品信息管理\"}],\"hasBackLogin\":\"否\",\"hasBackRegister\":\"否\",\"hasFrontLogin\":\"是\",\"hasFrontRegister\":\"是\",\"roleName\":\"学生\",\"tableName\":\"xuesheng\"},{\"backMenu\":[{\"child\":[{\"appFrontIcon\":\"cuIcon-brand\",\"buttons\":[\"查看\"],\"menu\":\"未支付订单\",\"menuJump\":\"未支付\",\"tableName\":\"orders\"},{\"appFrontIcon\":\"cuIcon-brand\",\"buttons\":[\"查看\"],\"menu\":\"已取消订单\",\"menuJump\":\"已取消\",\"tableName\":\"orders\"},{\"appFrontIcon\":\"cuIcon-brand\",\"buttons\":[\"查看\",\"发货\"],\"menu\":\"已支付订单\",\"menuJump\":\"已支付\",\"tableName\":\"orders\"},{\"appFrontIcon\":\"cuIcon-brand\",\"buttons\":[\"查看\"],\"menu\":\"已退款订单\",\"menuJump\":\"已退款\",\"tableName\":\"orders\"},{\"appFrontIcon\":\"cuIcon-brand\",\"buttons\":[\"查看\"],\"menu\":\"商品订单\",\"tableName\":\"orders\"},{\"appFrontIcon\":\"cuIcon-brand\",\"buttons\":[\"查看\"],\"menu\":\"已完成订单\",\"menuJump\":\"已完成\",\"tableName\":\"orders\"},{\"appFrontIcon\":\"cuIcon-brand\",\"buttons\":[\"查看\"],\"menu\":\"已发货订单\",\"menuJump\":\"已发货\",\"tableName\":\"orders\"}],\"menu\":\"订单管理\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-paint\",\"buttons\":[\"查看\",\"修改\",\"删除\"],\"menu\":\"投诉信息\",\"menuJump\":\"列表\",\"tableName\":\"tousuxinxi\"}],\"fontClass\":\"icon-common15\",\"menu\":\"投诉信息管理\",\"unicode\":\"&#xedfc;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-vipcard\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\",\"查看评论\"],\"menu\":\"菜品信息\",\"menuJump\":\"列表\",\"tableName\":\"caipinxinxi\"},{\"appFrontIcon\":\"cuIcon-newshot\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"菜品类型\",\"menuJump\":\"列表\",\"tableName\":\"caipinleixing\"}],\"fontClass\":\"icon-common7\",\"menu\":\"菜品信息管理\",\"unicode\":\"&#xedb4;\"}],\"frontMenu\":[{\"child\":[{\"appFrontIcon\":\"cuIcon-list\",\"buttons\":[\"查看\",\"查看评论\"],\"menu\":\"菜品信息\",\"menuJump\":\"列表\",\"tableName\":\"caipinxinxi\"}],\"menu\":\"菜品信息管理\"}],\"hasBackLogin\":\"是\",\"hasBackRegister\":\"是\",\"hasFrontLogin\":\"否\",\"hasFrontRegister\":\"否\",\"roleName\":\"商家\",\"tableName\":\"shangjia\"}]');
/*!40000 ALTER TABLE `menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orders` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `orderid` varchar(200) NOT NULL COMMENT '订单编号',
  `tablename` varchar(200) DEFAULT NULL COMMENT '菜品表名',
  `goodid` bigint(20) NOT NULL COMMENT '菜品id',
  `goodname` varchar(200) DEFAULT NULL COMMENT '菜品名称',
  `picture` longtext NOT NULL COMMENT '图片',
  `buynumber` int(11) DEFAULT NULL COMMENT '购买数量',
  `price` double DEFAULT NULL COMMENT '单价',
  `discountprice` double DEFAULT NULL COMMENT '折扣价',
  `total` double DEFAULT NULL COMMENT '总价',
  `discounttotal` double DEFAULT NULL COMMENT '折扣总价格',
  `type` varchar(200) DEFAULT NULL COMMENT '支付类型',
  `status` varchar(200) DEFAULT NULL COMMENT '订单状态',
  `address` varchar(200) DEFAULT NULL COMMENT '地址',
  `tel` varchar(200) DEFAULT NULL COMMENT '电话',
  `consignee` varchar(200) DEFAULT NULL COMMENT '收货人',
  `remark` varchar(200) DEFAULT NULL COMMENT '备注',
  `logistics` longtext COMMENT '物流',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `goodtype` varchar(200) DEFAULT NULL COMMENT '商品类型',
  PRIMARY KEY (`id`),
  UNIQUE KEY `orderid` (`orderid`)
) ENGINE=InnoDB AUTO_INCREMENT=1709892371820 DEFAULT CHARSET=utf8 COMMENT='商品订单';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1709892340925,'2024-03-08 10:05:40','2024381853279820610','caipinxinxi',1709892199487,'麻婆豆腐','file/1709892171737.png',1,25,25,25,25,'1','未支付','北京','11123454321','111','',NULL,1709892288953,'菜品类型1'),(1709892371819,'2024-03-08 10:06:10','202438186297449965','caipinxinxi',1709892199487,'麻婆豆腐','file/1709892171737.png',1,25,25,25,25,'1','已支付','北京','11123454321','111','',NULL,1709892288953,'菜品类型1');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shangjia`
--

DROP TABLE IF EXISTS `shangjia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shangjia` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shangjiazhanghao` varchar(200) NOT NULL COMMENT '商家账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `shangjiamingcheng` varchar(200) NOT NULL COMMENT '商家名称',
  `tupian` longtext COMMENT '图片',
  `fuzeren` varchar(200) DEFAULT NULL COMMENT '负责人',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `shangjiadizhi` varchar(200) DEFAULT NULL COMMENT '商家地址',
  PRIMARY KEY (`id`),
  UNIQUE KEY `shangjiazhanghao` (`shangjiazhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1709892095222 DEFAULT CHARSET=utf8 COMMENT='商家';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shangjia`
--

LOCK TABLES `shangjia` WRITE;
/*!40000 ALTER TABLE `shangjia` DISABLE KEYS */;
INSERT INTO `shangjia` VALUES (41,'2024-03-07 07:04:27','商家账号1','123456','商家名称1','file/shangjiaTupian1.jpg','负责人1','010-21500991','商家地址1'),(42,'2024-03-07 07:04:27','商家账号2','123456','商家名称2','file/shangjiaTupian2.jpg','负责人2','010-21500992','商家地址2'),(43,'2024-03-07 07:04:27','商家账号3','123456','商家名称3','file/shangjiaTupian3.jpg','负责人3','010-21500993','商家地址3'),(44,'2024-03-07 07:04:27','商家账号4','123456','商家名称4','file/shangjiaTupian4.jpg','负责人4','010-21500994','商家地址4'),(45,'2024-03-07 07:04:27','商家账号5','123456','商家名称5','file/shangjiaTupian5.jpg','负责人5','010-21500995','商家地址5'),(46,'2024-03-07 07:04:27','商家账号6','123456','商家名称6','file/shangjiaTupian6.jpg','负责人6','010-21500996','商家地址6'),(1709892095221,'2024-03-08 10:01:35','11','11','11','file/1709892058105.png','111','0521-22222222','北京');
/*!40000 ALTER TABLE `shangjia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `storeup`
--

DROP TABLE IF EXISTS `storeup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) DEFAULT NULL COMMENT 'refid',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '名称',
  `picture` longtext NOT NULL COMMENT '图片',
  `type` varchar(200) DEFAULT NULL COMMENT '类型(1:收藏,21:赞,22:踩,31:竞拍参与,41:关注)',
  `inteltype` varchar(200) DEFAULT NULL COMMENT '推荐类型',
  `remark` varchar(200) DEFAULT NULL COMMENT '备注',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1709892309765 DEFAULT CHARSET=utf8 COMMENT='我的收藏';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `storeup`
--

LOCK TABLES `storeup` WRITE;
/*!40000 ALTER TABLE `storeup` DISABLE KEYS */;
INSERT INTO `storeup` VALUES (1709892305618,'2024-03-08 10:05:05',1709892199487,'caipinxinxi','麻婆豆腐','file/1709892171737.png','21',NULL,NULL,1709892288953),(1709892309764,'2024-03-08 10:05:09',1709892199487,'caipinxinxi','麻婆豆腐','file/1709892171737.png','1','菜品类型1',NULL,1709892288953);
/*!40000 ALTER TABLE `storeup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `token`
--

DROP TABLE IF EXISTS `token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='token表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
INSERT INTO `token` VALUES (1,1709892095221,'11','shangjia','管理员','ddgeb6jih8ovlvh5intyg2pi2ms0m26z','2024-03-08 10:02:00','2024-03-08 11:02:01'),(2,1709892288953,'111','xuesheng','学生','3rz8m6db6ozceframfpdibprmh5ds1q6','2024-03-08 10:04:54','2024-03-08 11:04:54'),(3,1,'admin','users','管理员','1lyf7hiv0a3ic741r39kn7h7kq2zeeyh','2024-03-08 10:10:01','2024-03-08 11:10:01');
/*!40000 ALTER TABLE `token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tousuxinxi`
--

DROP TABLE IF EXISTS `tousuxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tousuxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shangjiamingcheng` varchar(200) DEFAULT NULL COMMENT '商家名称',
  `shangjiazhanghao` varchar(200) DEFAULT NULL COMMENT '商家账号',
  `tousuneirong` longtext NOT NULL COMMENT '投诉内容',
  `tousushijian` datetime DEFAULT NULL COMMENT '投诉时间',
  `xuehao` varchar(200) DEFAULT NULL COMMENT '学号',
  `xueshengxingming` varchar(200) DEFAULT NULL COMMENT '学生姓名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=117 DEFAULT CHARSET=utf8 COMMENT='投诉信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tousuxinxi`
--

LOCK TABLES `tousuxinxi` WRITE;
/*!40000 ALTER TABLE `tousuxinxi` DISABLE KEYS */;
INSERT INTO `tousuxinxi` VALUES (111,'2024-03-07 07:04:27','商家名称1','商家账号1','投诉内容1','2024-03-07 15:04:27','学号1','学生姓名1'),(112,'2024-03-07 07:04:27','商家名称2','商家账号2','投诉内容2','2024-03-07 15:04:27','学号2','学生姓名2'),(113,'2024-03-07 07:04:27','商家名称3','商家账号3','投诉内容3','2024-03-07 15:04:27','学号3','学生姓名3'),(114,'2024-03-07 07:04:27','商家名称4','商家账号4','投诉内容4','2024-03-07 15:04:27','学号4','学生姓名4'),(115,'2024-03-07 07:04:27','商家名称5','商家账号5','投诉内容5','2024-03-07 15:04:27','学号5','学生姓名5'),(116,'2024-03-07 07:04:27','商家名称6','商家账号6','投诉内容6','2024-03-07 15:04:27','学号6','学生姓名6');
/*!40000 ALTER TABLE `tousuxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `username` varchar(200) NOT NULL COMMENT '用户名',
  `password` varchar(200) NOT NULL COMMENT '密码',
  `role` varchar(200) DEFAULT NULL COMMENT '角色',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='管理员';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'2024-03-07 07:04:27','admin','admin','管理员');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xuesheng`
--

DROP TABLE IF EXISTS `xuesheng`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xuesheng` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xuehao` varchar(200) NOT NULL COMMENT '学号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xueshengxingming` varchar(200) NOT NULL COMMENT '学生姓名',
  `touxiang` longtext COMMENT '头像',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `shoujihaoma` varchar(200) DEFAULT NULL COMMENT '手机号码',
  `shenfenzhenghao` varchar(200) DEFAULT NULL COMMENT '身份证号',
  `money` double DEFAULT '0' COMMENT '余额',
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuehao` (`xuehao`)
) ENGINE=InnoDB AUTO_INCREMENT=1709892288954 DEFAULT CHARSET=utf8 COMMENT='学生';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xuesheng`
--

LOCK TABLES `xuesheng` WRITE;
/*!40000 ALTER TABLE `xuesheng` DISABLE KEYS */;
INSERT INTO `xuesheng` VALUES (31,'2024-03-07 07:04:26','学号1','123456','学生姓名1','file/xueshengTouxiang1.jpg','男','19819881111','441622200101010001',200),(32,'2024-03-07 07:04:26','学号2','123456','学生姓名2','file/xueshengTouxiang2.jpg','男','19819881112','441622200202020002',200),(33,'2024-03-07 07:04:26','学号3','123456','学生姓名3','file/xueshengTouxiang3.jpg','男','19819881113','441622200303030003',200),(34,'2024-03-07 07:04:27','学号4','123456','学生姓名4','file/xueshengTouxiang4.jpg','男','19819881114','441622200404040004',200),(35,'2024-03-07 07:04:27','学号5','123456','学生姓名5','file/xueshengTouxiang5.jpg','男','19819881115','441622200505050005',200),(36,'2024-03-07 07:04:27','学号6','123456','学生姓名6','file/xueshengTouxiang6.jpg','男','19819881116','441622200606060006',200),(1709892288953,'2024-03-08 10:04:48','111','111','111','file/1709892280563.png','男','15248523695','',5.555555555555555e25);
/*!40000 ALTER TABLE `xuesheng` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-03-09  8:17:02
