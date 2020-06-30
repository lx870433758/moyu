-- MySQL dump 10.13  Distrib 5.7.27, for Linux (x86_64)
--
-- Host: localhost    Database: moyu
-- ------------------------------------------------------
-- Server version	5.7.27

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
-- Table structure for table `td_admin`
--

DROP TABLE IF EXISTS `td_admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `td_admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL COMMENT '用户名',
  `nickname` varchar(32) DEFAULT NULL COMMENT '真实姓名',
  `password` varchar(255) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `limit_id` int(11) DEFAULT NULL COMMENT '权限id',
  `channel` varchar(255) DEFAULT NULL COMMENT '渠道',
  `login_ip` varchar(255) DEFAULT NULL COMMENT '最后登录ip',
  `isshow` tinyint(2) NOT NULL DEFAULT '1' COMMENT '0禁用',
  `login_time` int(11) NOT NULL DEFAULT '0' COMMENT '最后登录时间',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '状态1有效 0无效',
  `auth` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='管理员表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `td_admin`
--

LOCK TABLES `td_admin` WRITE;
/*!40000 ALTER TABLE `td_admin` DISABLE KEYS */;
INSERT INTO `td_admin` VALUES (1,'admin','超级管理员','e10adc3949ba59abbe56e057f20f883e','',1,'','116.25.146.75',1,1565589685,1,NULL),(2,'editor','管理员001','e10adc3949ba59abbe56e057f20f883e',NULL,10,NULL,'127.0.0.1',1,0,1,NULL);
/*!40000 ALTER TABLE `td_admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `td_banner`
--

DROP TABLE IF EXISTS `td_banner`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `td_banner` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pic` varchar(256) NOT NULL COMMENT '图片地址',
  `sort` int(11) unsigned DEFAULT '999' COMMENT '排序',
  `status` tinyint(1) unsigned DEFAULT '1' COMMENT '状态',
  `location` tinyint(1) DEFAULT '1' COMMENT '1首页banner 2团队头部 3团队尾部',
  `ctime` int(11) DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8 COMMENT='banner表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `td_banner`
--

LOCK TABLES `td_banner` WRITE;
/*!40000 ALTER TABLE `td_banner` DISABLE KEYS */;
INSERT INTO `td_banner` VALUES (14,'/static/index/image/20181017033537184.jpg',999,1,1,NULL),(15,'/static/index/image/20181017033520481.jpg',999,1,1,NULL),(16,'/static/index/image/20181017033451887.jpg',999,1,1,NULL),(17,'/static/index/image/20181017033547447.jpg',999,1,1,NULL),(18,'/static/index/image/20181031103832173.jpg',999,1,2,NULL),(19,'/static/index/image/20180930100838803.jpg',999,1,2,NULL),(20,'/static/index/image/20181026104655642.jpg',999,1,3,NULL),(21,'/static/index/image/20181026104857140.jpg',999,1,3,NULL);
/*!40000 ALTER TABLE `td_banner` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `td_config`
--

DROP TABLE IF EXISTS `td_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `td_config` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `company_name` varchar(32) DEFAULT NULL,
  `tel` varchar(64) DEFAULT NULL,
  `phone` varchar(64) DEFAULT NULL,
  `email` varchar(64) DEFAULT NULL,
  `wx` varchar(64) DEFAULT NULL,
  `qq` varchar(64) DEFAULT NULL,
  `address` varchar(128) DEFAULT NULL,
  `lng` varchar(16) DEFAULT NULL,
  `lat` varchar(16) DEFAULT NULL,
  `qrcode` varchar(128) DEFAULT NULL,
  `icp` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COMMENT='配置表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `td_config`
--

LOCK TABLES `td_config` WRITE;
/*!40000 ALTER TABLE `td_config` DISABLE KEYS */;
INSERT INTO `td_config` VALUES (1,'飞梦人','028-84192809','13558694253','xiexi890@163.com','miso321322','123456789','成都高新区环球中心N5 1210','113.941921','22.528438','/static/index/image/qrcode.jpg','XXXXXX');
/*!40000 ALTER TABLE `td_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `td_config_team`
--

DROP TABLE IF EXISTS `td_config_team`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `td_config_team` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `intro` varchar(128) DEFAULT NULL,
  `desc` text,
  `zm` int(6) unsigned DEFAULT '0' COMMENT '主美',
  `yh` int(6) unsigned DEFAULT '0' COMMENT '原画',
  `ui` int(6) unsigned DEFAULT '0' COMMENT 'ui',
  `ms` int(6) unsigned DEFAULT '0' COMMENT '美术',
  `xm` int(6) unsigned DEFAULT '0' COMMENT '项目',
  `sw` int(6) unsigned DEFAULT '0' COMMENT '商务',
  `yy` int(6) unsigned DEFAULT '0' COMMENT '运营',
  `tg` int(6) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `td_config_team`
--

LOCK TABLES `td_config_team` WRITE;
/*!40000 ALTER TABLE `td_config_team` DISABLE KEYS */;
INSERT INTO `td_config_team` VALUES (1,'飞梦人是定位于游戏、影视2D原画以及概念设计的美术外包团队，我们专精于2D原画设定，同时能承接由2D到3D建模，动作特效全流','飞梦人是定位于游戏、影视2D原画以及概念设计的美术设计团队，我们专精于2D原画设定，同时能承接由2D到3D建模，动作特效全流程的游戏美术制作。目前团队人员由来自国内外行业知名的概念设计师、插画师组成。在未来百年内，虚拟世界必将成为我们生活的主体，我们希望在这个虚拟世界里，我们能成为那个世界卓越的设计师，里面的一花一草，一山一水，每一建筑，每一个种族，每一个职业，每一个人物，都是匠心独运的设计。我们的使命，就是虚拟世界美的缔造者、无可挑剔的游戏概念设计团队。',5,25,8,3,5,5,3,1);
/*!40000 ALTER TABLE `td_config_team` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `td_liuyan`
--

DROP TABLE IF EXISTS `td_liuyan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `td_liuyan` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(16) DEFAULT NULL,
  `mobile` varchar(32) DEFAULT NULL,
  `nr` varchar(256) DEFAULT NULL,
  `ip` varchar(32) DEFAULT NULL,
  `ctime` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `td_liuyan`
--

LOCK TABLES `td_liuyan` WRITE;
/*!40000 ALTER TABLE `td_liuyan` DISABLE KEYS */;
INSERT INTO `td_liuyan` VALUES (12,'张三','13297092881','哈哈哈','',0),(13,'张三','13297092881','哈哈哈','',0),(14,'12','323','32323','',0),(15,'12','323','32323','',0),(17,'','','','',0),(18,'','','','',0);
/*!40000 ALTER TABLE `td_liuyan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `td_news`
--

DROP TABLE IF EXISTS `td_news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `td_news` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `pic` varchar(128) DEFAULT NULL,
  `title` varchar(64) DEFAULT NULL,
  `type` tinyint(1) unsigned DEFAULT NULL,
  `intro` varchar(128) DEFAULT NULL,
  `desc` text,
  `status` tinyint(1) unsigned DEFAULT '1',
  `sort` int(11) unsigned DEFAULT '999',
  `ctime` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `td_news`
--

LOCK TABLES `td_news` WRITE;
/*!40000 ALTER TABLE `td_news` DISABLE KEYS */;
INSERT INTO `td_news` VALUES (1,'/static/index/image/20181019025206607.jpg','育碧《荣耀战魂》-“烈火行军”10月16日重燃战场！',1,'我司参与设计制作育碧—烈火行军：新的英雄，新的模式，你的值得加入！','<p style=\"margin-top:5px;margin-right:0;margin-bottom:5px;margin-left:0;text-indent:0\"><span\n                    style=\"font-family: 微软雅黑;letter-spacing: 0;font-size: 14px\"><span style=\"font-family:微软雅黑\">作为《荣耀战魂》起劲为止最大的更新内容，</span>“烈火行军”将是《荣耀战魂》有史以来最大也是最有野心的一次更新内容，于10月16日正式上线，本次更新将带来全新阵营——武林的四位英雄，一个全新的4v4模式，图像增强以及可solo以及组队的PVE模式，“烈火行军”将把荣耀战魂世界进一步扩大。</span>\n            </p>\n            <p style=\"margin-top:5px;margin-right:0;margin-bottom:5px;margin-left:0;text-indent:0\"><span\n                    style=\"font-family: 微软雅黑;letter-spacing: 0;font-size: 14px\"><span\n                    style=\"font-family:微软雅黑\">&nbsp;</span></span></p>\n            <p style=\"margin: 5px 0px; text-indent: 0px; text-align: center;\"><span\n                    style=\"font-family: 微软雅黑;letter-spacing: 0;font-size: 14px\"><span\n                    style=\"font-family:微软雅黑\"><br></span></span></p>\n            <p style=\"margin: 5px 0px; text-indent: 0px; text-align: center;\"><span\n                    style=\"font-family: 微软雅黑;letter-spacing: 0;font-size: 14px\"><span\n                    style=\"font-family:微软雅黑\">参与地址：</span></span><a\n                    href=\"http://www.ubisoft.com.cn/forkonor/fh_marching_fire\"><span style=\"text-decoration:underline;\"><span\n                    style=\"font-family: 微软雅黑;color: #0000FF;letter-spacing: 0;font-size: 14px\">http://www.ubisoft.com.cn/forkonor/fh_marching_fire</span></span></a>\n            </p>\n            <p><br></p>            <br>',1,999,1234567890),(2,'/static/index/image/20181019025448140.jpg','2018成都GMGC',1,'我司受邀参与成都2018GMGC大会','1',1,999,1234567890),(3,'/static/index/image/20181019024949205.png','四川省视协动漫专委会 漫未来Future沙龙',1,'漫未来Future沙龙','21',1,999,1234567890),(4,'/static/index/image/20181024053132459.jpg','下午茶交流Time',1,'公司提供每日提供给下午茶、水果','fdsdf',1,999,1234567890),(5,'/static/index/image/20181026103517183.jpg','大神养成记',1,'公司着力于培养，团队实力稳步上升。','2sfdsf',1,999,1234567890),(6,'http://www.cdmoyu.net/uploadfile/2018/1019/20181019034350746.jpg','EA旗下的游戏平台Origin已支持支付宝付款',2,'这或许是EA布局中国市场的又一重要步骤','sfsfdsf',1,999,1234567890),(7,'http://www.cdmoyu.net/uploadfile/2018/1019/20181019034306563.jpg','《使命召唤：黑色行动4》首发周末收入超过5亿美元',2,'这项数据与该系列上一代作品《使命召唤：二战》发售后同一时间段内的收入基本持平','sfsfd',1,999,1234567890),(8,'http://www.cdmoyu.net/uploadfile/2018/1019/20181019034111764.jpg','经典神作“巫师”（The Witcher），魅力席卷全球',2,'游戏改编自波兰奇幻小说“猎魔人”（Wiedźmin），游戏在全球爆红','sdfsf',1,999,1234567890),(9,'http://www.cdmoyu.net/uploadfile/2018/1019/20181019034446653.png','Facebook 放弃收入分成<',2,'Facebook 宣布将放弃 Instant Game 在安卓平台应用内购的 30% 收入分成','<p>sdsff</p><p>232323</p><p><img src=\"/uploads/image/20200617/1592375289459450.jpg\" title=\"1592375289459450.jpg\" alt=\"20190903110756879.jpg\"/></p>',1,999,1234567890);
/*!40000 ALTER TABLE `td_news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `td_recruitment`
--

DROP TABLE IF EXISTS `td_recruitment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `td_recruitment` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `job` varchar(64) NOT NULL,
  `desc` text,
  `status` tinyint(1) unsigned DEFAULT '1',
  `sort` int(11) unsigned DEFAULT '999',
  `ctime` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `td_recruitment`
--

LOCK TABLES `td_recruitment` WRITE;
/*!40000 ALTER TABLE `td_recruitment` DISABLE KEYS */;
INSERT INTO `td_recruitment` VALUES (1,'项目经理','<p><span style=\"color: #FFFFFF;\"><span style=\"font-size: 20px;\"><strong>岗位职责：</strong></span></span><strong><span style=\"color: #FFFFFF; font-size: 15px;\"></span></strong><span style=\"color: #FFFFFF;\"><span style=\"font-size: 15px; font-family: Tahoma, sans-serif;\"><br/> 1</span><span style=\"font-size: 15px; font-family: \">、组织项目报价、核价及排期；</span><span style=\"font-size: 15px; font-family: Tahoma, sans-serif;\"><br/> 2</span><span style=\"font-size: 15px; font-family: \">、负责项目制作的日常沟通；</span><span style=\"font-size: 15px; font-family: Tahoma, sans-serif;\"><br/> 3</span><span style=\"font-size: 15px; font-family: \">、把控项目档期，跟踪项目进度，保证项目质量；</span><span style=\"font-size: 15px; font-family: Tahoma, sans-serif;\"><br/> 4</span><span style=\"font-size: 15px; font-family: \">、参与项目人员的协调及安排；</span><span style=\"font-size: 15px; font-family: Tahoma, sans-serif;\"><br/> 5</span><span style=\"font-size: 15px; font-family: \">、负责项目总结及相关资料备份。</span><span style=\"font-size: 15px; font-family: Tahoma, sans-serif;\"><br/> <br/> </span><strong><span style=\"color: #FFFFFF; font-family: \">任职要求：</span></strong><span style=\"font-size: 15px; font-family: Tahoma, sans-serif;\"><br/> 1</span><span style=\"font-size: 15px; font-family: \">、</span><span style=\"font-size: 15px; font-family: Tahoma, sans-serif;\">2</span><span style=\"font-size: 15px; font-family: \">年以上游戏外包项目管理经验；</span><span style=\"font-size: 15px; font-family: Tahoma, sans-serif;\"><br/> 2</span><span style=\"font-size: 15px; font-family: \">、具备良好的沟通协调、统筹安排能力；</span><span style=\"font-size: 15px; font-family: Tahoma, sans-serif;\"><br/> 3</span><span style=\"font-size: 15px; font-family: \">、有较强的抗压能力、责任心及团队合作意识；</span></span></p><p><span style=\"color: #FFFFFF;\"><span style=\"font-size: 15px;\"><span style=\"color: #EFD722;\"><strong style=\"color: rgb(239, 215, 34); white-space: normal;\"></strong><strong style=\"color: rgb(239, 215, 34); white-space: normal;\">招聘邮箱:</strong><strong style=\"color: rgb(239, 215, 34); white-space: normal;\">286696377@qq.com</strong><span style=\"color: #EFD722;\"></span></span></span></span><span style=\"font-size:15px;font-family:&#39;Tahoma&#39;,&#39;sans-serif&#39;\"><br/> </span></p>',1,999,NULL),(2,'商务总监','<p style=\"margin-bottom:0;margin-bottom:0;line-height: 125%\"><span\n                                    style=\"color: #FFFFFF;\"><strong>岗位职责：</strong></span><strong><span\n                                    style=\"color: #FFFFFF;\"></span></strong><span style=\"color: #FFFFFF;\"><br> 1<span\n                                    style=\"font-family: \" microsoft=\"\">、根据公司业务模块发展需求，寻找、挖掘新的游戏研发合作资源；</span><br> 2<span\n                                    style=\"font-family: \" microsoft=\"\">、协助公司内其他部门落实游戏项目相关的合作工作；</span><br> 3<span\n                                    style=\"font-family: \" microsoft=\"\">、参与协助与合作方</span>(<span style=\"font-family: \"\n                                                                                              microsoft=\"\">包括供应商</span>)<span\n                                    style=\"font-family: \" microsoft=\"\">商务谈判、定价、合同及协议的起草；</span><br> 4<span\n                                    style=\"font-family: \" microsoft=\"\">、搜集行业的市场信息并进行分析整理；</span><br> 5<span\n                                    style=\"font-family: \" microsoft=\"\">、寻找潜在的合作伙伴，主要是国内外游戏研发团队和工作室；</span><br> 6<span\n                                    style=\"font-family: \" microsoft=\"\">、与潜在合作伙伴进行商务洽谈和签约；</span><br> 7<span\n                                    style=\"font-family: \" microsoft=\"\">、维护和加深与合作伙伴关系，负责客户管理。</span><br> <strong><span\n                                    style=\"color: #FFFFFF; font-family: \" microsoft=\"\"\n                                    font-size:=\"\">任职资格：<br></span></strong> 1<span style=\"font-family: \" microsoft=\"\">、对游戏行业有较深刻的认识，具备良好的游戏厂商、媒体、渠道等社会关系资源；</span><br> 2<span\n                                    style=\"font-family: \" microsoft=\"\">、思维灵活敏捷，逻辑思维能力强，优秀的创造力和想像力；</span><br> 3<span\n                                    style=\"font-family: \" microsoft=\"\">、工作能动性强，具备基本的数据分析和总结报告能力；</span><br> 4<span\n                                    style=\"font-family: \" microsoft=\"\">、策划能力及对最新市场流行趋势捕捉能力；</span><br> 5<span\n                                    style=\"font-family: \" microsoft=\"\">、极佳的逻辑推理能力强，思维敏捷，为人正直诚信。</span></span></p>\n                            <p style=\"margin-bottom:0;margin-bottom:0;line-height: 125%\"><span\n                                    style=\"color: #FFFFFF;\"><span style=\"font-family: \" microsoft=\"\"><span\n                                    style=\"color: #EFD722;\"><strong\n                                    style=\"color: rgb(239, 215, 34); white-space: normal;\"></strong><strong\n                                    style=\"color: rgb(239, 215, 34); white-space: normal;\">招聘邮箱:</strong><strong\n                                    style=\"color: rgb(239, 215, 34); white-space: normal;\">286696377@qq.com</strong><span\n                                    style=\"color: #EFD722;\"></span><span\n                                    style=\"color: #EFD722; font-size: 15px;\"></span></span></span></span></p>\n                            <p><br></p>',1,999,NULL),(3,'运营总监','<p style=\"margin-bottom:0;margin-bottom:0;line-height: 125%\"><span style=\"font-size: 20px;\"><strong><span\n                                    style=\"color: #FFFFFF; font-family: \" microsoft=\"\">岗位职责：</span></strong><span\n                                    style=\"color: #FFFFFF; font-family: \" microsoft=\"\"></span></span><span\n                                    style=\"color: #FFFFFF;\"><br> 1<span style=\"font-family: \" microsoft=\"\">、根据公司业务发展目标，制定短期和中长期运营策略，并落实和监督运营实施；</span>&nbsp;<br> 2<span\n                                    style=\"font-family: \" microsoft=\"\">、根据业务模式，建立数据化运营体系，进行精细化运营；</span><br> 3<span\n                                    style=\"font-family: \" microsoft=\"\">、根据公司的发展规划，结合市场需求，负责公司的市场定位、媒体宣传、运营推广和渠道建设的整体策略和实施；</span><br> 4<span\n                                    style=\"font-family: \" microsoft=\"\">、进行业务运营战略规划，对行业有独特的见解，对市场竞争进行动态分析，提出运营需求与建议，达成运营目标；</span><br> <span\n                                    style=\"font-family: \" microsoft=\"\">任职要求：</span><br> 1<span style=\"font-family: \"\n                                                                                               microsoft=\"\">、大专以上学历，</span> <span\n                                    style=\"font-family: \" microsoft=\"\">具有全面统筹市场、产品和运营工作</span>3<span\n                                    style=\"font-family: \" microsoft=\"\">年以上经验，</span>5<span style=\"font-family: \"\n                                                                                           microsoft=\"\">年以上游戏外包行业运营相关管理经验，具备成功运营案例和熟悉推广渠道者优先考虑；；</span><br> 2<span\n                                    style=\"font-family: \" microsoft=\"\">、丰富的互联网、媒体等相关人脉资源、具备优秀的商务拓展能力；</span><br> 3<span\n                                    style=\"font-family: \" microsoft=\"\">、有丰富的团队管理和组织经验，带领过</span>10<span\n                                    style=\"font-family: \" microsoft=\"\">人以上团队；</span><br> 5<span style=\"font-family: \"\n                                                                                                microsoft=\"\">、良好的沟通和谈判能力，通过内外沟通谈判争取一切可利用的资源，能从业务对接、培训等维度解决问题。</span></span>\n                            </p>\n                            <p><span style=\"color: #EFD722;\"><span style=\"color: #EFD722;\"></span><strong\n                                    style=\"color: rgb(239, 215, 34); white-space: normal;\"></strong><strong\n                                    style=\"color: rgb(239, 215, 34); white-space: normal;\">招聘邮箱:</strong><strong\n                                    style=\"color: rgb(239, 215, 34); white-space: normal;\">286696377@qq.com</strong><span\n                                    style=\"color: #EFD722;\"></span><span\n                                    style=\"color: #EFD722; font-size: 15px;\"></span></span></p>',1,999,NULL),(4,'资深3D场景设计师','<p style=\"margin-bottom:0;margin-bottom:0;line-height: 125%\"><span\n                                    style=\"color: #FFFFFF;\"><strong>岗位职责：</strong></span></p>\n                            <p style=\"margin-bottom:0;margin-bottom:0;line-height: 125%\"><span style=\"color: #FFFFFF;\">1、根据原画制作完成3D场景各元素（如宫殿，大型庙宇，建筑，野外复杂地质场景，植物模型等）的制作；<br> 2、独立制作场景模型、UV分解及贴图绘制，协助配合地编人员完成地图制作。</span>\n                            </p>\n                            <p style=\"margin-bottom:0;margin-bottom:0;line-height: 125%\"><span style=\"color: #FFFFFF;\">任职资格：</span>\n                            </p>\n                            <p style=\"margin-bottom:0;margin-bottom:0;line-height: 125%\"><span style=\"color: #FFFFFF;\">1<span\n                                    style=\"font-family: \" microsoft=\"\" color:=\"\">、具备</span>2<span style=\"font-family: \"\n                                                                                                  microsoft=\"\"\n                                                                                                  color:=\"\">年以上相关工作经验，精通</span>&nbsp;3D<span\n                                    style=\"font-family: \" microsoft=\"\" color:=\"\">相关软件，</span>&nbsp;<span\n                                    style=\"font-family: \" microsoft=\"\" color:=\"\">熟悉游戏</span>3D<span\n                                    style=\"font-family: \" microsoft=\"\" color:=\"\">模型的需求。</span></span></p>\n                            <p style=\"margin-bottom:0;margin-bottom:0;line-height: 125%\"><span style=\"color: #FFFFFF;\">2<span\n                                    style=\"font-family: \" microsoft=\"\" color:=\"\">、具有扎实的美术功底，手绘贴图能力强，色彩感觉良好，具有手绘</span>3D<span\n                                    style=\"font-family: \" microsoft=\"\" color:=\"\">场景模型制作能力。布置灯光以及烘焙灯光贴图，对场景的效果和气氛有较好的控制，能迅速准确的表达出场景的气氛。</span></span>\n                            </p>\n                            <p style=\"margin-bottom:0;margin-bottom:0;line-height: 125%\"><span style=\"color: #FFFFFF;\">3<span\n                                    style=\"font-family: \" microsoft=\"\" color:=\"\">、做事认真细致，具有高度责任感和团队合作精神，有良好的工作沟通能力，能承受一定的工作压力。</span></span>\n                            </p>\n                            <p><span style=\"color: #EFD722;\"><span style=\"color: #EFD722;\"></span><strong\n                                    style=\"color: rgb(239, 215, 34); white-space: normal;\"></strong><strong\n                                    style=\"color: rgb(239, 215, 34); white-space: normal;\">招聘邮箱:</strong><strong\n                                    style=\"color: rgb(239, 215, 34); white-space: normal;\">286696377@qq.com</strong><span\n                                    style=\"color: #EFD722;\"></span><span\n                                    style=\"color: #EFD722; font-size: 15px;\"></span></span></p>',1,999,NULL),(5,'资深3D角色设计师','<p style=\"margin-bottom:0;margin-bottom:0;line-height: 125%\"><span\n                                    style=\"color: #FFFFFF;\"><strong>岗位职责：</strong></span></p>\n                            <p style=\"margin-bottom:0;margin-bottom:0;line-height: 125%\"><span style=\"color: #FFFFFF;\">1、依据原画设定和策划文档制作角色3D模型、以及绘制贴图<br> <br> 2、与主美、原画师合作，根据项目要求，完成3D角色的最终实现。</span>\n                            </p>\n                            <p style=\"margin-bottom:0;margin-bottom:0;line-height: 125%\"><span style=\"color: #FFFFFF;\">任职资格：</span>\n                            </p>\n                            <p style=\"margin-bottom:0;margin-bottom:0;line-height: 125%\"><span style=\"color: #FFFFFF;\">1<span\n                                    style=\"font-family: \" microsoft=\"\" color:=\"\">、</span>2<span style=\"font-family: \"\n                                                                                                microsoft=\"\" color:=\"\">年以上</span>3D<span\n                                    style=\"font-family: \" microsoft=\"\" color:=\"\">角色高模制作经验，精通</span>&nbsp;3D<span\n                                    style=\"font-family: \" microsoft=\"\" color:=\"\">相关软件，至少参与过</span>1<span\n                                    style=\"font-family: \" microsoft=\"\" color:=\"\">款完整的</span>3D<span\n                                    style=\"font-family: \" microsoft=\"\" color:=\"\">游戏项目。</span></span></p>\n                            <p style=\"margin-bottom:0;margin-bottom:0;line-height: 125%\"><span style=\"color: #FFFFFF;\">2<span\n                                    style=\"font-family: \" microsoft=\"\" color:=\"\">、扎实的建模、雕刻与贴图绘制功底。</span></span></p>\n                            <p style=\"margin-bottom:0;margin-bottom:0;line-height: 125%\"><span style=\"color: #FFFFFF;\">3<span\n                                    style=\"font-family: \" microsoft=\"\" color:=\"\">、强烈的进取心，团队意识，热情，擅长沟通。</span></span></p>\n                            <p><span style=\"color: #EFD722;\"><span style=\"color: #EFD722;\"></span><strong\n                                    style=\"color: rgb(239, 215, 34); white-space: normal;\"></strong><strong\n                                    style=\"color: rgb(239, 215, 34); white-space: normal;\">招聘邮箱:</strong><strong\n                                    style=\"color: rgb(239, 215, 34); white-space: normal;\">286696377@qq.com</strong><span\n                                    style=\"color: #EFD722;\"></span><span\n                                    style=\"color: #EFD722; font-size: 15px;\"></span></span></p>',1,999,NULL),(6,'3D主管','<p style=\"margin-bottom:0;margin-bottom:0;line-height: 125%\"><span\n                                    style=\"color: #FFFFFF;\"><strong>岗位职责：</strong></span></p>\n                            <p style=\"margin-bottom:0;margin-bottom:0;line-height: 125%\"><span style=\"color: #FFFFFF;\">1、制定美术风格，制定美术团队的工作计划、保障项目进度；<br> 2、负责游戏场景3D模型制作，及其效果把控；</span>\n                            </p>\n                            <p style=\"margin-bottom:0;margin-bottom:0;line-height: 125%\"><span style=\"color: #FFFFFF;\">3、与项目团队配合，保证3D资源最大的还原原画设计；任职资格：</span>\n                            </p>\n                            <p style=\"margin-bottom:0;margin-bottom:0;line-height: 125%\"><span style=\"color: #FFFFFF;\">任职资格：</span>\n                            </p>\n                            <p style=\"margin-bottom:0;margin-bottom:0;line-height: 125%\"><span style=\"color: #FFFFFF;\">1<span\n                                    style=\"font-family: \" microsoft=\"\" color:=\"\">、</span>3-5<span style=\"font-family: \"\n                                                                                                  microsoft=\"\"\n                                                                                                  color:=\"\">年</span>3D<span\n                                    style=\"font-family: \" microsoft=\"\" color:=\"\">游戏美术制作经验，</span>2<span\n                                    style=\"font-family: \" microsoft=\"\" color:=\"\">年以上美术团队管理经验；</span></span></p>\n                            <p style=\"margin-bottom:0;margin-bottom:0;line-height: 125%\"><span style=\"color: #FFFFFF;\">2<span\n                                    style=\"font-family: \" microsoft=\"\" color:=\"\">、具有扎实的美术设计功底，具有良好的整体效果把控能力，能够判断设计相关标准，为美术团队提供美术风格方面的指导</span></span>\n                            </p>\n                            <p style=\"margin-bottom:0;margin-bottom:0;line-height: 125%\"><span style=\"color: #FFFFFF;\">&nbsp;3<span\n                                    style=\"font-family: \" microsoft=\"\" color:=\"\">、有很好的项目协作配合能力和执行能力，善于与制作团队的技术、策划合作和沟通，具有高度的团队协作精神。</span></span>\n                            </p>\n                            <p><span style=\"color: #EFD722;\"><span style=\"color: #EFD722;\"></span><strong\n                                    style=\"color: rgb(239, 215, 34); white-space: normal;\"></strong><strong\n                                    style=\"color: rgb(239, 215, 34); white-space: normal;\">招聘邮箱:</strong><strong\n                                    style=\"color: rgb(239, 215, 34); white-space: normal;\">286696377@qq.com</strong><span\n                                    style=\"color: #EFD722;\"></span><span\n                                    style=\"color: #EFD722; font-size: 15px;\"></span></span></p>',1,999,NULL),(7,'优秀原画培训生（实习生）','<p style=\"margin-bottom:0;margin-bottom:0;line-height: 125%\"><span\n                                    style=\"color: #FFFFFF;\"><strong>岗位职责：</strong></span></p>\n                            <p style=\"margin-bottom:0;margin-bottom:0;line-height: 125%\"><span style=\"color: #FFFFFF;\">在主美的指导下完成练习任务或项目任务，快速提升自己的原画水平</span>\n                            </p>\n                            <p style=\"margin-bottom:0;margin-bottom:0;line-height: 125%\"><span style=\"color: #FFFFFF;\">任职资格：</span>\n                            </p>\n                            <p style=\"margin-bottom:0;margin-bottom:0;line-height: 125%\"><span style=\"color: #FFFFFF;\">1、美术艺术类相关专业应届毕业生，熟悉计算机绘图软件；&nbsp;</span>\n                            </p>\n                            <p style=\"margin-bottom:0;margin-bottom:0;line-height: 125%\"><span style=\"color: #FFFFFF;\">2<span\n                                    style=\"font-family: \" microsoft=\"\" color:=\"\">、</span> <span style=\"font-family: \"\n                                                                                                microsoft=\"\" color:=\"\">喜欢游戏，喜欢画画，职业规划往游戏美术方向发展；</span></span>\n                            </p>\n                            <p style=\"margin-bottom:0;margin-bottom:0;line-height: 125%\"><span style=\"color: #FFFFFF;\">3<span\n                                    style=\"font-family: \" microsoft=\"\" color:=\"\">、</span> <span style=\"font-family: \"\n                                                                                                microsoft=\"\" color:=\"\">具有扎实的美术基础与良好的手绘能力；</span></span>\n                            </p>\n                            <p style=\"margin-bottom:0;margin-bottom:0;line-height: 125%\"><span style=\"color: #FFFFFF;\">4<span\n                                    style=\"font-family: \" microsoft=\"\" color:=\"\">、</span> <span\n                                    style=\"font-size: 14px; line-height: 125%; font-family: \" microsoft=\"\"\n                                    color:=\"\">主</span><span style=\"font-family: \" microsoft=\"\" color:=\"\">动学习意识强，抗压能力强，思维活跃，善于沟通交流。</span></span>\n                            </p>\n                            <p><span style=\"color: #EFD722;\"><span style=\"color: #EFD722;\"></span><strong\n                                    style=\"color: rgb(239, 215, 34); white-space: normal;\"></strong><strong\n                                    style=\"color: rgb(239, 215, 34); white-space: normal;\">招聘邮箱:</strong><strong\n                                    style=\"color: rgb(239, 215, 34); white-space: normal;\">286696377@qq.com</strong><span\n                                    style=\"color: #EFD722;\"></span><span\n                                    style=\"color: #EFD722; font-size: 15px;\"></span></span></p>',1,999,NULL),(8,'资深UI','<p style=\"margin-bottom:0;margin-bottom:0;line-height: 125%\"><span\n                                    style=\"color: #FFFFFF;\"><strong>岗位职责：</strong><br> 1、根据游戏风格，负责游戏中界面、ICON、LOGO等UI元素的设计和制作；</span>\n                            </p>\n                            <p style=\"margin-bottom:0;margin-bottom:0;line-height: 125%\"><span style=\"color: #FFFFFF;\">2、根据需求进行交互设计，用户体验设计；</span>\n                            </p>\n                            <p style=\"margin-bottom:0;margin-bottom:0;line-height: 125%\"><span style=\"color: #FFFFFF;\">3、与游戏策划及程序沟通游戏界面实现效果及视觉表现形式；</span>\n                            </p>\n                            <p style=\"margin-bottom:0;margin-bottom:0;line-height: 125%\"><span style=\"color: #FFFFFF;\">4、跟进最终产品落地UI相关效果，并验收。</span>\n                            </p>\n                            <p style=\"margin-bottom:0;margin-bottom:0;line-height: 125%\"><span style=\"color: #FFFFFF;\">任职要求：</span>\n                            </p>\n                            <p style=\"margin-bottom:0;margin-bottom:0;line-height: 125%\"><span style=\"color: #FFFFFF;\">1、具备2年以上游戏UI制作经验，熟练掌握多种游戏风格；</span>\n                            </p>\n                            <p style=\"margin-bottom:0;margin-bottom:0;line-height: 125%\"><span style=\"color: #FFFFFF;\">2<span\n                                    style=\"font-family: \" microsoft=\"\" color:=\"\">、有良好的手绘基础，较强的图片材质效果处理能力，对色彩搭配敏感；</span></span>\n                            </p>\n                            <p style=\"margin-bottom:0;margin-bottom:0;line-height: 125%\"><span style=\"color: #FFFFFF;\">3<span\n                                    style=\"font-family: \" microsoft=\"\"\n                                    color:=\"\">、充分理解以用户为中心的游戏界面设计，以像素级别的要求对待自己设计的</span>UI<span style=\"font-family: \"\n                                                                                               microsoft=\"\" color:=\"\">作品；</span></span>\n                            </p>\n                            <p style=\"margin-bottom:0;margin-bottom:0;line-height: 125%\"><span style=\"color: #FFFFFF;\">4<span\n                                    style=\"font-family: \" microsoft=\"\" color:=\"\">、热爱游戏行业，有较强的责任心和团队协作精神。</span></span>\n                            </p>\n                            <p><span style=\"color: #EFD722;\"><span style=\"color: #EFD722;\"></span><strong\n                                    style=\"color: rgb(239, 215, 34); white-space: normal;\"></strong><strong\n                                    style=\"color: rgb(239, 215, 34); white-space: normal;\">招聘邮箱:</strong><strong\n                                    style=\"color: rgb(239, 215, 34); white-space: normal;\">286696377@qq.com</strong><span\n                                    style=\"color: #EFD722;\"></span><span\n                                    style=\"color: #EFD722; font-size: 15px;\"></span></span></p>',1,999,NULL),(9,'资深场景原画师','<p style=\"margin-bottom:0;margin-bottom:0;line-height: 125%\"><span\n                                    style=\"color: #FFFFFF;\"><strong>岗位职责：</strong></span></p>\n                            <p style=\"margin-bottom:0;margin-bottom:0;line-height: 125%\"><span style=\"color: #FFFFFF;\">1<span\n                                    style=\"font-family: \" microsoft=\"\" color:=\"\">、负责游戏内的场景设定及制作，包括相关宣传画的制作等；</span><br> 2<span\n                                    style=\"font-family: \" microsoft=\"\"\n                                    color:=\"\">、能迅速准确的绘制出需求风格的场景，希望不同风格的建筑有一定的理解；</span><br> 3<span style=\"font-family: \"\n                                                                                                   microsoft=\"\"\n                                                                                                   color:=\"\">、能准确把握场景设计构图、色彩搭配、气氛渲染、层次感和空间感等。</span></span>\n                            </p>\n                            <p><span style=\"color: #FFFFFF;\"><span style=\"font-size: 15px; font-family: \" microsoft=\"\"\n                                                                   color:=\"\">任职要求：</span><span\n                                    style=\"font-size: 15px; font-family: Tahoma, sans-serif; color: #FFFFFF;\"><br> 1</span><span\n                                    style=\"font-size: 15px; font-family: \" microsoft=\"\" color:=\"\">、美术基本功扎实，拥有场景设计创造和美术专业能力；</span><span\n                                    style=\"font-size: 15px; font-family: Tahoma, sans-serif; color: #FFFFFF;\"><br> 2</span><span\n                                    style=\"font-size: 15px; font-family: \" microsoft=\"\" color:=\"\">、有</span><span\n                                    style=\"font-size: 15px; font-family: Tahoma, sans-serif; color: #FFFFFF;\">3</span><span\n                                    style=\"font-size: 15px; font-family: \" microsoft=\"\"\n                                    color:=\"\">年以上游戏场景原画制作经验；</span><span\n                                    style=\"font-size: 15px; font-family: Tahoma, sans-serif; color: #FFFFFF;\"><br> 3</span><span\n                                    style=\"font-size: 15px; font-family: \" microsoft=\"\"\n                                    color:=\"\">、能接受主美和项目管理所分配的任务要求；</span><span\n                                    style=\"font-size: 15px; font-family: Tahoma, sans-serif; color: #FFFFFF;\"><br> 4</span><span\n                                    style=\"font-size: 15px; font-family: \" microsoft=\"\" color:=\"\">、具备良好的团队精神，有刻苦耐劳与积极务实的工作态度，热衷并有志于长期从事游戏事业。</span><span\n                                    style=\"font-size: 15px; font-family: Tahoma, sans-serif; color: #FFFFFF;\"><br> 5</span><span\n                                    style=\"font-size: 15px; font-family: \" microsoft=\"\" color:=\"\">、能够倾听团队的意见，配合度高不过分个性化或偏执</span></span>\n                            </p>\n                            <p><span style=\"color: #EFD722;\"></span><strong\n                                    style=\"color: rgb(239, 215, 34); white-space: normal;\"></strong><strong\n                                    style=\"color: rgb(239, 215, 34); white-space: normal;\">招聘邮箱:</strong><strong\n                                    style=\"color: rgb(239, 215, 34); white-space: normal;\">286696377@qq.com</strong><span\n                                    style=\"color: #EFD722;\"></span><span\n                                    style=\"color: #EFD722; font-size: 15px;\"></span></p>',1,999,NULL);
/*!40000 ALTER TABLE `td_recruitment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `td_team`
--

DROP TABLE IF EXISTS `td_team`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `td_team` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `pic` varchar(128) DEFAULT NULL,
  `name` varchar(16) DEFAULT NULL,
  `job` varchar(32) DEFAULT NULL,
  `intro` varchar(256) DEFAULT NULL,
  `sort` int(11) unsigned DEFAULT '999',
  `ctime` int(11) DEFAULT NULL,
  `status` tinyint(1) unsigned DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `td_team`
--

LOCK TABLES `td_team` WRITE;
/*!40000 ALTER TABLE `td_team` DISABLE KEYS */;
INSERT INTO `td_team` VALUES (1,'/static/index/image/20181029032608997.jpg','李东逊','美术总监','10年工作经验，曾与网易总监合作。参与项目有育碧《荣耀战魂》、腾讯《狐妖小红娘》、网易《荒野求生》、《街头篮球》、《功夫熊猫》《乱斗西游》等。',999,NULL,1),(2,'/static/index/image/20181029032553472.jpg','刘淡宁','美术总监','9年工作经验，擅长影视概念、卡牌插画、美宣等类风格设计。参与制作项目有《啪啪三国》《龙之战》《Lmmortalis》《Galaxysaga》等。',999,NULL,1),(3,'/static/index/image/20181029032536864.jpg','罗晓睿','设计总监','9年工作经验，擅长各类风格概念设计，包含角色、场景、UI。参与了众多知名项目,如《怦怦英雄》《荣耀战魂》《元气战姬学院》等。',999,NULL,1),(4,'/static/index/image/20181029032510105.jpg','张信','美术总监','9年工作经验，擅长各类概念、细化，场景设计别具一格，曾创立绵阳触动科技，参与项目有《怦怦英雄》《荣耀战魂》等。',999,NULL,1);
/*!40000 ALTER TABLE `td_team` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `td_works`
--

DROP TABLE IF EXISTS `td_works`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `td_works` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `pic` varchar(128) NOT NULL,
  `type` tinyint(1) unsigned NOT NULL COMMENT '1游戏美宣2角色设计3场景设计4UI设计',
  `sort` int(11) unsigned DEFAULT '999',
  `status` tinyint(1) unsigned DEFAULT '1',
  `ctime` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `td_works`
--

LOCK TABLES `td_works` WRITE;
/*!40000 ALTER TABLE `td_works` DISABLE KEYS */;
INSERT INTO `td_works` VALUES (1,'/static/index/image/20190903110802879.jpg',1,999,1,NULL),(2,'/static/index/image/20190903110726992.jpg',1,999,1,NULL),(3,'/static/index/image/20190903110623960.jpg',1,999,1,NULL),(4,'/static/index/image/20190903110553982.jpg',1,999,1,NULL),(5,'/static/index/image/20190903110527423.jpg',1,999,1,NULL),(6,'/static/index/image/20190903110508169.jpg',1,999,1,NULL),(7,'/static/index/image/20190903110445422.jpg',1,999,1,NULL),(8,'/static/index/image/20190903110425290.jpg',1,999,1,NULL),(9,'/static/index/image/20190903110359316.jpg',1,999,1,NULL),(10,'/static/index/image/20190903110241421.jpg',1,999,1,NULL),(11,'/static/index/image/20181018093336970.jpg',1,999,1,NULL),(12,'/static/index/image/20181018093322650.jpg',1,999,1,NULL),(13,'/static/index/image/20181018093212948.jpg',1,999,1,NULL),(14,'/static/index/image/20181018093158419.jpg',1,999,1,NULL),(15,'/static/index/image/20181018093322650.jpg',1,999,1,NULL);
/*!40000 ALTER TABLE `td_works` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-06-30 14:33:50
