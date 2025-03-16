-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: jspmd75st
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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES (1,'picture1','http://localhost:8080/jspmd75st/upload/picture1.jpg'),(2,'picture2','http://localhost:8080/jspmd75st/upload/picture2.jpg'),(3,'picture3','http://localhost:8080/jspmd75st/upload/picture3.jpg'),(6,'homepage',NULL);
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exampaper`
--

DROP TABLE IF EXISTS `exampaper`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exampaper` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `name` varchar(200) NOT NULL COMMENT '试卷名称',
  `time` int(11) NOT NULL COMMENT '考试时长(分钟)',
  `status` int(11) NOT NULL DEFAULT '0' COMMENT '试卷状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1612699377837 DEFAULT CHARSET=utf8 COMMENT='试卷表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exampaper`
--

LOCK TABLES `exampaper` WRITE;
/*!40000 ALTER TABLE `exampaper` DISABLE KEYS */;
INSERT INTO `exampaper` VALUES (1612699377836,'2021-02-07 12:02:56','数学竞赛考试1',100,1);
/*!40000 ALTER TABLE `exampaper` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `examquestion`
--

DROP TABLE IF EXISTS `examquestion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `examquestion` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `paperid` bigint(20) NOT NULL COMMENT '所属试卷id（外键）',
  `papername` varchar(200) NOT NULL COMMENT '试卷名称',
  `questionname` varchar(200) NOT NULL COMMENT '试题名称',
  `options` longtext COMMENT '选项，json字符串',
  `score` bigint(20) DEFAULT '0' COMMENT '分值',
  `answer` varchar(200) DEFAULT NULL COMMENT '正确答案',
  `analysis` longtext COMMENT '答案解析',
  `type` bigint(20) DEFAULT '0' COMMENT '试题类型，0：单选题 1：多选题 2：判断题 3：填空题（暂不考虑多项填空）',
  `sequence` bigint(20) DEFAULT '100' COMMENT '试题排序，值越大排越前面',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1612699467640 DEFAULT CHARSET=utf8 COMMENT='试题表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `examquestion`
--

LOCK TABLES `examquestion` WRITE;
/*!40000 ALTER TABLE `examquestion` DISABLE KEYS */;
INSERT INTO `examquestion` VALUES (1612699404380,'2021-02-07 12:03:24',1612699377836,'数学竞赛考试1','发多少给对方是个改的','[{\"text\":\"多个的sdf\",\"code\":\"A\"},{\"text\":\" 稍等还是得\",\"code\":\"B\"},{\"text\":\"发给回复\",\"code\":\"C\"},{\"text\":\"打分回复\",\"code\":\"D\"}]',2,'A','FG HDF H放到花费多个',0,1),(1612699430133,'2021-02-07 12:03:49',1612699377836,'数学竞赛考试1','打分广东佛山给对方是个是打分','[{\"text\":\"水电费个\",\"code\":\"A\"},{\"text\":\"水电费广东佛山\",\"code\":\"B\"},{\"text\":\"水电费广东佛山\",\"code\":\"C\"},{\"text\":\"水电费改的\",\"code\":\"D\"}]',2,'A,B','的飞洒广东省分公司的',1,2),(1612699442186,'2021-02-07 12:04:01',1612699377836,'数学竞赛考试1','萨芬撒地方盛大发售','[{\"text\":\"A.对\",\"code\":\"A\"},{\"text\":\"B.错\",\"code\":\"B\"}]',2,'A','发多少高大上发给是大法官萨德',2,3),(1612699467639,'2021-02-07 12:04:26',1612699377836,'数学竞赛考试1','发货放到花费多个好地方规划梵蒂冈','[]',2,'放到花费多个回复的好','发很反感的花费多个回复的',3,4);
/*!40000 ALTER TABLE `examquestion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `examrecord`
--

DROP TABLE IF EXISTS `examrecord`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `examrecord` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `paperid` bigint(20) NOT NULL COMMENT '试卷id（外键）',
  `papername` varchar(200) NOT NULL COMMENT '试卷名称',
  `questionid` bigint(20) NOT NULL COMMENT '试题id（外键）',
  `questionname` varchar(200) NOT NULL COMMENT '试题名称',
  `options` longtext COMMENT '选项，json字符串',
  `score` bigint(20) DEFAULT '0' COMMENT '分值',
  `answer` varchar(200) DEFAULT NULL COMMENT '正确答案',
  `analysis` longtext COMMENT '答案解析',
  `myscore` bigint(20) NOT NULL DEFAULT '0' COMMENT '试题得分',
  `myanswer` varchar(200) DEFAULT NULL COMMENT '考生答案',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1612699546226 DEFAULT CHARSET=utf8 COMMENT='考试记录表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `examrecord`
--

LOCK TABLES `examrecord` WRITE;
/*!40000 ALTER TABLE `examrecord` DISABLE KEYS */;
INSERT INTO `examrecord` VALUES (1612699529826,'2021-02-07 12:05:29',1612699505382,NULL,1612699377836,'数学竞赛考试1',1612699404380,'发多少给对方是个改的','[{\"text\":\"多个的sdf\",\"code\":\"A\"},{\"text\":\" 稍等还是得\",\"code\":\"B\"},{\"text\":\"发给回复\",\"code\":\"C\"},{\"text\":\"打分回复\",\"code\":\"D\"}]',2,'A','FG HDF H放到花费多个',0,'B'),(1612699538895,'2021-02-07 12:05:38',1612699505382,NULL,1612699377836,'数学竞赛考试1',1612699430133,'打分广东佛山给对方是个是打分','[{\"text\":\"水电费个\",\"code\":\"A\"},{\"text\":\"水电费广东佛山\",\"code\":\"B\"},{\"text\":\"水电费广东佛山\",\"code\":\"C\"},{\"text\":\"水电费改的\",\"code\":\"D\"}]',2,'A,B','的飞洒广东省分公司的',0,'A,C'),(1612699543800,'2021-02-07 12:05:43',1612699505382,NULL,1612699377836,'数学竞赛考试1',1612699442186,'萨芬撒地方盛大发售','[{\"text\":\"A.对\",\"code\":\"A\"},{\"text\":\"B.错\",\"code\":\"B\"}]',2,'A','发多少高大上发给是大法官萨德',0,'B'),(1612699546225,'2021-02-07 12:05:46',1612699505382,NULL,1612699377836,'数学竞赛考试1',1612699467639,'发货放到花费多个好地方规划梵蒂冈','[]',2,'放到花费多个回复的好','发很反感的花费多个回复的',0,'DFS GSDFG ');
/*!40000 ALTER TABLE `examrecord` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kaoshichengjitongji`
--

DROP TABLE IF EXISTS `kaoshichengjitongji`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kaoshichengjitongji` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `kemubianhao` varchar(200) DEFAULT NULL COMMENT '科目编号',
  `kaoshimingcheng` varchar(200) DEFAULT NULL COMMENT '考试名称',
  `zuigaofen` varchar(200) DEFAULT NULL COMMENT '最高分',
  `zuidifen` varchar(200) DEFAULT NULL COMMENT '最低分',
  `pingjunfen` varchar(200) DEFAULT NULL COMMENT '平均分',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1612699596506 DEFAULT CHARSET=utf8 COMMENT='考试成绩统计';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kaoshichengjitongji`
--

LOCK TABLES `kaoshichengjitongji` WRITE;
/*!40000 ALTER TABLE `kaoshichengjitongji` DISABLE KEYS */;
INSERT INTO `kaoshichengjitongji` VALUES (31,'2021-02-07 11:46:00','科目编号1','考试名称1','最高分1','最低分1','平均分1'),(32,'2021-02-07 11:46:00','科目编号2','考试名称2','最高分2','最低分2','平均分2'),(33,'2021-02-07 11:46:00','科目编号3','考试名称3','最高分3','最低分3','平均分3'),(34,'2021-02-07 11:46:00','科目编号4','考试名称4','最高分4','最低分4','平均分4'),(35,'2021-02-07 11:46:00','科目编号5','考试名称5','最高分5','最低分5','平均分5'),(36,'2021-02-07 11:46:00','科目编号6','考试名称6','最高分6','最低分6','平均分6'),(1612699596505,'2021-02-07 12:06:36','1612699334','数学竞赛','20','2','10');
/*!40000 ALTER TABLE `kaoshichengjitongji` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kaoshikemu`
--

DROP TABLE IF EXISTS `kaoshikemu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kaoshikemu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `kemubianhao` varchar(200) DEFAULT NULL COMMENT '科目编号',
  `kaoshimingcheng` varchar(200) DEFAULT NULL COMMENT '考试名称',
  `kaoshishijian` datetime DEFAULT NULL COMMENT '考试时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `kemubianhao` (`kemubianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1612699349902 DEFAULT CHARSET=utf8 COMMENT='考试科目';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kaoshikemu`
--

LOCK TABLES `kaoshikemu` WRITE;
/*!40000 ALTER TABLE `kaoshikemu` DISABLE KEYS */;
INSERT INTO `kaoshikemu` VALUES (21,'2021-02-07 11:45:59','科目编号1','考试名称1','2021-02-07 19:45:59'),(22,'2021-02-07 11:45:59','科目编号2','考试名称2','2021-02-07 19:45:59'),(23,'2021-02-07 11:45:59','科目编号3','考试名称3','2021-02-07 19:45:59'),(24,'2021-02-07 11:46:00','科目编号4','考试名称4','2021-02-07 19:46:00'),(25,'2021-02-07 11:46:00','科目编号5','考试名称5','2021-02-07 19:46:00'),(26,'2021-02-07 11:46:00','科目编号6','考试名称6','2021-02-07 19:46:00'),(1612699247109,'2021-02-07 12:00:46','1612699234','数学竞赛考试','2021-02-07 20:00:34'),(1612699349901,'2021-02-07 12:02:29','1612699334','数学竞赛','2021-02-16 09:00:13');
/*!40000 ALTER TABLE `kaoshikemu` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='token表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
INSERT INTO `token` VALUES (1,1,'abo','users','管理员','0lga8608auakihmpz6qd9g8bmap4ebvi','2021-02-07 11:59:59','2021-02-07 13:06:23'),(2,1612699505382,'123','xuesheng','学生','boqpribbjtguhd6k58f5qweclc24w4il','2021-02-07 12:05:12','2021-02-07 13:05:13');
/*!40000 ALTER TABLE `token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
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
INSERT INTO `users` VALUES (1,'abo','abo','管理员','2021-02-07 11:46:00');
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
  `kaoshengbianhao` varchar(200) NOT NULL COMMENT '考生编号',
  `mima` varchar(200) DEFAULT NULL COMMENT '密码',
  `kaoshengxingming` varchar(200) DEFAULT NULL COMMENT '考生姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `chushengriqi` date DEFAULT NULL COMMENT '出生日期',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  PRIMARY KEY (`id`),
  UNIQUE KEY `kaoshengbianhao` (`kaoshengbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1612699505383 DEFAULT CHARSET=utf8 COMMENT='学生';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xuesheng`
--

LOCK TABLES `xuesheng` WRITE;
/*!40000 ALTER TABLE `xuesheng` DISABLE KEYS */;
INSERT INTO `xuesheng` VALUES (11,'2021-02-07 11:45:59','学生1','123456','考生姓名1','男','2021-02-07','13823888881','440300199101010001','773890001@qq.com'),(12,'2021-02-07 11:45:59','学生2','123456','考生姓名2','男','2021-02-07','13823888882','440300199202020002','773890002@qq.com'),(13,'2021-02-07 11:45:59','学生3','123456','考生姓名3','男','2021-02-07','13823888883','440300199303030003','773890003@qq.com'),(14,'2021-02-07 11:45:59','学生4','123456','考生姓名4','男','2021-02-07','13823888884','440300199404040004','773890004@qq.com'),(15,'2021-02-07 11:45:59','学生5','123456','考生姓名5','男','2021-02-07','13823888885','440300199505050005','773890005@qq.com'),(16,'2021-02-07 11:45:59','学生6','123456','考生姓名6','男','2021-02-07','13823888886','440300199606060006','773890006@qq.com'),(1612699505382,'2021-02-07 12:05:05','123','123','放到',NULL,NULL,'13455667788','334455667788998877','4564564@qq.com');
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

-- Dump completed on 2021-02-08 11:09:55
