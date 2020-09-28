/*
Navicat MySQL Data Transfer

Source Server         : qqq
Source Server Version : 50549
Source Host           : localhost:3306
Source Database       : shop_db

Target Server Type    : MYSQL
Target Server Version : 50549
File Encoding         : 65001

Date: 2020-09-06 16:01:43
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for ec_article
-- ----------------------------
DROP TABLE IF EXISTS `ec_article`;
CREATE TABLE `ec_article` (
  `ID` int(11) NOT NULL AUTO_INCREMENT COMMENT '物品id',
  `article_name` varchar(20) DEFAULT NULL COMMENT '商品名',
  `TITLE` varchar(200) DEFAULT NULL COMMENT '标题',
  `SUPPLIER` varchar(20) DEFAULT NULL COMMENT '供应商',
  `PRICE` double DEFAULT NULL COMMENT '价格',
  `LOCALITY` varchar(300) DEFAULT NULL COMMENT '地区',
  `PUTAWAY_DATE` date DEFAULT NULL COMMENT '上架时间',
  `STORAGE` int(11) DEFAULT NULL COMMENT '仓存数量',
  `IMAGE` varchar(200) DEFAULT NULL COMMENT '封面',
  `DESCRIPTION` varchar(500) DEFAULT NULL COMMENT '描述',
  `TYPE_CODE` varchar(100) DEFAULT NULL COMMENT '物品类型编号',
  `CREATE_DATE` date DEFAULT NULL COMMENT '创建日期',
  PRIMARY KEY (`ID`),
  KEY `FK_ARTICLE_TYPE` (`TYPE_CODE`),
  CONSTRAINT `FK_ARTICLE_TYPE` FOREIGN KEY (`TYPE_CODE`) REFERENCES `ec_article_type` (`CODE`)
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ec_article
-- ----------------------------
INSERT INTO `ec_article` VALUES ('1', null, ' 苹果（APPLE）iPhone 5 16G版 3G手机（白色）WCDMA/GSM 全新设计，更薄、更轻、更快、更好的iPhone，以及卓越音效的EarPods耳机 ', 'iPhone 5 16G版', '4899', '苹果（APPLE）iPhone 5 16G版 3G手机（白色）', '2013-04-01', '100', '20130401_1_0001_1.jpg', '\r\n苹果（APPLE）iPhone 5 16G版 3G手机（白色）WCDMA/GSM\r\n全新设计，更薄、更轻、更快、更好的iPhone，以及卓越音效的EarPods耳机 ', '00010001', '2013-04-01');
INSERT INTO `ec_article` VALUES ('2', null, ' 苹果（APPLE）iPhone 5 16G版 3G手机（黑色）WCDMA/GSM 全新设计，更薄、更轻、更快、更好的iPhone，以及卓越音效的EarPods耳机 ', 'iPhone 5 16G版', '4899', '苹果（APPLE）iPhone 5 16G版 ', '2013-04-01', '100', '20130401_1_0001_2.jpg', '苹果（APPLE）iPhone 5 16G版 3G手机（黑色）WCDMA/GSM\r\n全新设计，更薄、更轻、更快、更好的iPhone，以及卓越音效的EarPods耳机 ', '00010001', '2013-04-01');
INSERT INTO `ec_article` VALUES ('3', null, ' 苹果（APPLE）iPhone 4 8G版 3G手机（黑色）WCDMA/GSM 月末促销，支持升级iOS6，更多新体验！选择“购机返话费版”有惊喜！ ', '苹果iPhone 4 8G版 3G手机', '2899', '苹果（APPLE）iPhone 4 8G版 3G手机(黑色)', '2013-04-01', '100', '20130401_1_0001_3.jpg', '苹果（APPLE）iPhone 4 8G版 3G手机（黑色）WCDMA/GSM\r\n月末促销，支持升级iOS6，更多新体验！选择“购机返话费版”有惊喜！ ', '00010001', '2013-04-01');
INSERT INTO `ec_article` VALUES ('4', null, ' 苹果（APPLE）iPhone 4 8G版 3G手机（白色）WCDMA/GSM 月末促销，依旧出色的iPhone！可升级iOS6系统！选择“特价返话费版”有惊喜！', 'iPhone 4 8G版', '2899', '苹果（APPLE）iPhone 4 8G版 3G手机(白色)', '2013-04-01', '100', '20130401_1_0001_4.jpg', '苹果（APPLE）iPhone 4 8G版 3G手机（白色）WCDMA/GSM\r\n月末促销，依旧出色的iPhone！可升级iOS6系统！选择“特价返话费版”有惊喜！ ', '00010001', '2013-04-01');
INSERT INTO `ec_article` VALUES ('5', null, ' 苹果（APPLE）iPhone 4S 16G版 3G手机（白色）WCDMA/GSM 经典的4S，值得拥有！ ', 'iPhone 4S 16G版', '4199', '苹果（APPLE）iPhone 4S 16G版 3G手机(白色)', '2013-04-01', '100', '20130401_1_0001_5.jpg', '苹果（APPLE）iPhone 4S 16G版 3G手机（白色）WCDMA/GSM\r\n经典的4S，值得拥有！ ', '00010001', '2013-04-01');
INSERT INTO `ec_article` VALUES ('6', null, ' 苹果（APPLE）iPhone 4S 16G版 3G手机（黑色）WCDMA/GSM 经典的4S，值得拥有！ ', 'iPhone 4S 16G版', '4199', ' 苹果（APPLE）iPhone 4S 16G版 3G手机（黑色）', '2013-04-01', '100', '20130401_1_0001_6.jpg', '苹果（APPLE）iPhone 4S 16G版 3G手机（黑色）WCDMA/GSM\r\n经典的4S，值得拥有！ ', '00010001', '2013-04-01');
INSERT INTO `ec_article` VALUES ('7', null, '苹果（APPLE）iPhone 5 16G版 3G手机（白色）电信版', '电信版', '4799', '电信版', '2013-04-01', '100', '20130401_1_0001_7.jpg', '苹果（APPLE）iPhone 5 16G版 3G手机（白色）电信版', '00010001', '2013-04-01');
INSERT INTO `ec_article` VALUES ('26', null, ' 三星 Galaxy SIII I9300 3G手机（青玉蓝）WCDMA/GSM 惊爆价！卓然天成，为你而生，全球80% 3G用户的自然选择！ ', '三星', '3398', '三星', '2013-04-01', '100', '20130401_1_0007_12.jpg', '三星 Galaxy SIII I9300 3G手机（青玉蓝）WCDMA/GSM\r\n惊爆价！卓然天成，为你而生，全球80% 3G用户的自然选择！ ', '00010007', '2013-04-01');
INSERT INTO `ec_article` VALUES ('27', null, ' HTC 新渴望VC（T328d）3G手机（黑色）CDMA2000/GSM 双模双待双通 1G主频，安卓4.0系统，500万像素，特有Beats音效！ ', 'HTC', '1199', 'HTC', '2013-04-01', '100', '20130401_1_0008_1.jpg', 'HTC 新渴望VC（T328d）3G手机（黑色）CDMA2000/GSM 双模双待双通\r\n1G主频，安卓4.0系统，500万像素，特有Beats音效！ ', '00010008', '2013-04-01');
INSERT INTO `ec_article` VALUES ('28', null, ' HTC T528w（One SU）3G手机（锐意黑）WCDMA/GSM 双卡双待双通 4.3寸屏幕！Android 4.0!双核强劲动力！真纤薄机身！Beats 全场景音效！摄像时可以拍照！高品之选！ ', 'HTC', '1788', 'HTC', '2013-04-01', '100', '20130401_1_0008_2.jpg', 'HTC T528w（One SU）3G手机（锐意黑）WCDMA/GSM 双卡双待双通\r\n4.3寸屏幕！Android 4.0!双核强劲动力！真纤薄机身！Beats 全场景音效！摄像时可以拍照！高品之选！ ', '00010008', '2013-04-01');
INSERT INTO `ec_article` VALUES ('29', null, ' HTC 新渴望V（T328w）3G手机（黑色）WCDMA/GSM 双卡双待单通 Android 4.0系统！4.0寸屏！全场景Beats音效！500万像素！鱼和熊掌不可兼得，时尚和品质在此可一起拥有！ ', 'HTC', '1099', 'HTC', '2013-04-01', '100', '20130401_1_0008_3.jpg', 'HTC 新渴望V（T328w）3G手机（黑色）WCDMA/GSM 双卡双待单通\r\nAndroid 4.0系统！4.0寸屏！全场景Beats音效！500万像素！鱼和熊掌不可兼得，时尚和品质在此可一起拥有！ ', '00010008', '2013-04-01');
INSERT INTO `ec_article` VALUES ('30', null, ' HTC One XT（S720T）3G手机（睿丽黑）TD-SCDMA/GSM 2799元疯抢！1.5GHz强劲四核处理器，4.7寸1600万色SLCD2屏幕，800+130万双摄像头！ ', 'HTC', '2799', 'HTC', '2013-04-01', '100', '20130401_1_0008_4.jpg', 'HTC One XT（S720T）3G手机（睿丽黑）TD-SCDMA/GSM\r\n2799元疯抢！1.5GHz强劲四核处理器，4.7寸1600万色SLCD2屏幕，800+130万双摄像头！ ', '00010008', '2013-04-01');
INSERT INTO `ec_article` VALUES ('31', null, ' HTC T329t 3G手机（珐琅黑）TD-SCDMA/GSM 春雷心动价，下单送耳机！1GHz双核处理器，4.0寸SLCD屏，1G RAM+4G ROM，移动用户无需换号即享3G网络！ ', 'HTC', '1599', 'HTC', '2013-04-01', '100', '20130401_1_0008_5.jpg', 'HTC T329t 3G手机（珐琅黑）TD-SCDMA/GSM\r\n春雷心动价，下单送耳机！1GHz双核处理器，4.0寸SLCD屏，1G RAM+4G ROM，移动用户无需换号即享3G网络！ ', '00010008', '2013-04-01');
INSERT INTO `ec_article` VALUES ('32', null, ' HTC One SC（T528D）3G手机（灰色）CDMA2000/GSM 双模双待双通 4.3寸屏，安卓4.0系统，1G双核，Beats 音效，时尚品质在此可一起拥有！ ', 'HTC', '1998', 'HTC', '2013-04-01', '100', '20130401_1_0008_6.jpg', 'HTC One SC（T528D）3G手机（灰色）CDMA2000/GSM 双模双待双通\r\n4.3寸屏，安卓4.0系统，1G双核，Beats 音效，时尚品质在此可一起拥有！ ', '00010008', '2013-04-01');
INSERT INTO `ec_article` VALUES ('33', null, ' HTC T528w（One SU）3G手机（菁英白）WCDMA/GSM 双卡双待双通 4.3寸屏幕！Android 4.0!双核强劲动力！真纤薄机身！Beats 全场景音效！摄像时可以拍照！高品之选！ ', 'HTC', '1788', 'HTC', '2013-04-01', '100', '20130401_1_0008_7.jpg', 'HTC T528w（One SU）3G手机（菁英白）WCDMA/GSM 双卡双待双通\r\n4.3寸屏幕！Android 4.0!双核强劲动力！真纤薄机身！Beats 全场景音效！摄像时可以拍照！高品之选！ ', '00010008', '2013-04-01');
INSERT INTO `ec_article` VALUES ('34', null, ' HTC One SC（T528D）3G手机（白色）CDMA2000/GSM 双模双待双通 4.3寸屏，安卓4.0系统，1G双核，Beats 音效，时尚品质在此可一起拥有！ ', 'HTC', '1998', 'HTC', '2013-04-01', '100', '20130401_1_0008_8.jpg', 'HTC One SC（T528D）3G手机（白色）CDMA2000/GSM 双模双待双通\r\n4.3寸屏，安卓4.0系统，1G双核，Beats 音效，时尚品质在此可一起拥有！ ', '00010008', '2013-04-01');
INSERT INTO `ec_article` VALUES ('35', null, ' 摩托罗拉商用对讲机SMP268 清仓，底价出清，最后一批疯狂抢 ', '摩托罗拉', '269', '摩托罗拉', '2013-04-01', '100', '20130401_2_0001_1.jpg', '摩托罗拉商用对讲机SMP268\r\n清仓，底价出清，最后一批疯狂抢 ', '00020001', '2013-04-01');
INSERT INTO `ec_article` VALUES ('36', null, ' 摩托罗拉 T5 公众对讲机 7折疯抢，便携之王，最具性价比，出游首选，数量有限，先到先得。 ', '摩托罗拉', '399', '摩托罗拉', '2013-04-01', '100', '20130401_2_0001_2.jpg', '摩托罗拉 T5 公众对讲机\r\n7折疯抢，便携之王，最具性价比，出游首选，数量有限，先到先得。 ', '00020001', '2013-04-01');
INSERT INTO `ec_article` VALUES ('37', null, ' 松下（Panasonic） DMC-LX5GK 数码相机 黑色（1010万像素 3.0英寸液晶屏 3.8倍光学变焦 24mm广角） 【1999赔本攒吆喝-本周最后2天抢完即止】【徕卡镜头-单反画质-性价比之王限量抢】 ', '松下', '1999', '松下', '2013-04-01', '100', '20130401_4_0001_1.jpg', '松下（Panasonic） DMC-LX5GK 数码相机 黑色（1010万像素 3.0英寸液晶屏 3.8倍光学变焦 24mm广角）\r\n【1999赔本攒吆喝-本周最后2天抢完即止】【徕卡镜头-单反画质-性价比之王限量抢】 ', '00040001', '2013-04-01');
INSERT INTO `ec_article` VALUES ('38', null, ' 索尼（SONY） DSC-RX100 黑卡数码相机（2020万像素 3英寸液晶屏 F1.8光圈 1英寸Exmor CMOS） 送168元大礼包！1寸大底-专业卡片-挑战单反-轻装外拍-比拿单反更专业！ ', '索尼', '3799', '索尼', '2013-04-01', '100', '20130401_4_0001_2.jpg', '索尼（SONY） DSC-RX100 黑卡数码相机（2020万像素 3英寸液晶屏 F1.8光圈 1英寸Exmor CMOS）\r\n送168元大礼包！1寸大底-专业卡片-挑战单反-轻装外拍-比拿单反更专业！ ', '00040001', '2013-04-01');
INSERT INTO `ec_article` VALUES ('39', null, ' 三星（SAMSUNG） WB151 数码相机 黑色（1420万像素 3.0英寸屏 18倍光学变焦 24mm广角 内置4G卡） 【仅售998元！】【万人推荐超值18倍光变时尚小钢炮】【智能场景升级版】【内置4G卡+赠时尚相机包】 ', '三星', '998', '三星', '2013-04-01', '100', '20130401_4_0001_3.jpg', '\r\n三星（SAMSUNG） WB151 数码相机 黑色（1420万像素 3.0英寸屏 18倍光学变焦 24mm广角 内置4G卡）\r\n【仅售998元！】【万人推荐超值18倍光变时尚小钢炮】【智能场景升级版】【内置4G卡+赠时尚相机包】 ', '00040001', '2013-04-01');
INSERT INTO `ec_article` VALUES ('40', null, ' 富士（FUJIFILM） FinePix S4530 数码相机 黑色（1400万像素 30倍光变 3.0英寸液晶屏 24mm广角） 【1099史上惊爆价】【30倍长焦史上最低价-最强性价比一镜走天下】 ', '富士', '1099', '富士', '2013-04-01', '100', '20130401_4_0001_4.jpg', '富士（FUJIFILM） FinePix S4530 数码相机 黑色（1400万像素 30倍光变 3.0英寸液晶屏 24mm广角）\r\n【1099史上惊爆价】【30倍长焦史上最低价-最强性价比一镜走天下】 ', '00040001', '2013-04-01');
INSERT INTO `ec_article` VALUES ('41', null, ' 三星（SAMSUNG） WB151 数码相机 白色（1420万像素 3.0英寸屏 18倍光学变焦 24mm广角 内置4G卡） 【仅售998元！】【万人推荐超值18倍光变时尚小钢炮】【智能场景升级版】【内置4G卡+赠时尚相机包】 ', '三星', '998', '三星', '2013-04-01', '100', '20130401_4_0001_5.jpg', '三星（SAMSUNG） WB151 数码相机 白色（1420万像素 3.0英寸屏 18倍光学变焦 24mm广角 内置4G卡）\r\n【仅售998元！】【万人推荐超值18倍光变时尚小钢炮】【智能场景升级版】【内置4G卡+赠时尚相机包】 ', '00040001', '2013-04-01');
INSERT INTO `ec_article` VALUES ('42', null, ' 佳能（Canon） PowerShot G15 数码相机（1210万像素 1.8超大光圈 5倍光变 28mm广角） 单反备机！F1.8大光圈，不错过任何细节！ ', '佳能', '3699', '佳能', '2013-04-01', '100', '20130401_4_0001_6.jpg', '佳能（Canon） PowerShot G15 数码相机（1210万像素 1.8超大光圈 5倍光变 28mm广角）\r\n单反备机！F1.8大光圈，不错过任何细节！ ', '00040001', '2013-04-01');
INSERT INTO `ec_article` VALUES ('43', null, ' 佳能（Canon） Power Shot G1 X 数码相机（1430万像素 3.0英寸可旋转液晶屏 4倍光学变焦 28mm广角） 旗舰王者！叫板单反，无视微单！ ', '佳能', '4188', '佳能', '2013-04-01', '100', '20130401_4_0001_7.jpg', '佳能（Canon） Power Shot G1 X 数码相机（1430万像素 3.0英寸可旋转液晶屏 4倍光学变焦 28mm广角）\r\n旗舰王者！叫板单反，无视微单！ ', '00040001', '2013-04-01');
INSERT INTO `ec_article` VALUES ('44', null, ' 富士（FUJIFILM） FinePix X20 旁轴数码相机 银色 【机皇3.27预订再开】【全线升级-完美画质无限惊喜】【本次最后一批有首发礼物-预订最快5天内到货】 ', '富士', '3799', '富士', '2013-04-01', '100', '20130401_4_0001_8.jpg', '富士（FUJIFILM） FinePix X20 旁轴数码相机 银色\r\n【机皇3.27预订再开】【全线升级-完美画质无限惊喜】【本次最后一批有首发礼物-预订最快5天内到货】 ', '00040001', '2013-04-01');
INSERT INTO `ec_article` VALUES ('45', null, ' 捷波朗 EASYGO+ 易行 蓝牙耳机 黑色 蓝牙3.0,支持音乐,智能语音提示,同时待机两部手机 ', '捷波朗', '275', '捷波朗', '2013-04-01', '100', '20130401_3_0002_1.jpg', '捷波朗 EASYGO+ 易行 蓝牙耳机 黑色\r\n蓝牙3.0,支持音乐,智能语音提示,同时待机两部手机 ', '00030002', '2013-04-01');
INSERT INTO `ec_article` VALUES ('46', null, '缤特力PRO Legend 蓝牙耳机 黑色', '缤特力', '668', '缤特力PRO Legend 蓝牙耳机', '2013-04-01', '100', '20130401_3_0002_2.jpg', '缤特力PRO Legend 蓝牙耳机 黑色', '00030002', '2013-04-01');
INSERT INTO `ec_article` VALUES ('47', null, ' 索尼（SONY）MW600 蓝牙耳机 黑色 多点连接，可同时连接两部手机，双声道，语音控制，配备LED显示屏，FM radio收听功能，音乐与通话兼容！ ', '索尼', '399', '索尼', '2013-04-01', '100', '20130401_3_0002_3.jpg', '索尼（SONY）MW600 蓝牙耳机 黑色\r\n多点连接，可同时连接两部手机，双声道，语音控制，配备LED显示屏，FM radio收听功能，音乐与通话兼容！ ', '00030002', '2013-04-01');
INSERT INTO `ec_article` VALUES ('48', null, ' 乐歌 BT001 蓝牙耳机 黑色 立体声 高清音质 钢琴烤漆 金属质感 ', '乐歌', '129', '乐歌', '2013-04-01', '100', '20130401_3_0002_4.jpg', '乐歌 BT001 蓝牙耳机 黑色\r\n立体声 高清音质 钢琴烤漆 金属质感 ', '00030002', '2013-04-01');
INSERT INTO `ec_article` VALUES ('49', null, ' 捷波朗 EXTREME2 超凡2 蓝牙耳机 白色 蓝牙3.0,全中文语音提示菜单,来电播报中文名字,双倍降低背景噪音,专利舒适耳塞 ', '捷波朗', '439', '捷波朗', '2013-04-01', '100', '20130401_3_0002_5.jpg', '捷波朗 EXTREME2 超凡2 蓝牙耳机 白色\r\n蓝牙3.0,全中文语音提示菜单,来电播报中文名字,双倍降低背景噪音,专利舒适耳塞 ', '00030002', '2013-04-01');
INSERT INTO `ec_article` VALUES ('50', null, '缤特力ML20 蓝牙耳机 黑色', '缤特力', '218', '缤特力ML20 蓝牙耳机', '2013-04-01', '100', '20130401_3_0002_6.jpg', '缤特力ML20 蓝牙耳机 黑色', '00030002', '2013-04-01');
INSERT INTO `ec_article` VALUES ('51', null, ' 诺基亚（NOKIA）BH-310 蓝牙耳机 白色 耳机一摘一戴之间，通话轻松切换,内置双麦克风，DSP减噪，音量自动调节，支持NFC,更能同时连接两部设备 ', '诺基亚', '299', '诺基亚', '2013-04-01', '100', '20130401_3_0002_7.jpg', '诺基亚（NOKIA）BH-310 蓝牙耳机 白色\r\n耳机一摘一戴之间，通话轻松切换,内置双麦克风，DSP减噪，音量自动调节，支持NFC,更能同时连接两部设备 ', '00030002', '2013-04-01');
INSERT INTO `ec_article` VALUES ('52', null, ' 诺基亚（NOKIA）BH-111 蓝牙耳机 绿色 特价促销，返20元电子京?，活动随时结束！抢购迅速！ ', '诺基亚', '179', '诺基亚', '2013-04-01', '100', '20130401_3_0002_8.jpg', '诺基亚（NOKIA）BH-111 蓝牙耳机 绿色\r\n特价促销，返20元电子京?，活动随时结束！抢购迅速！ ', '00030002', '2013-04-01');
INSERT INTO `ec_article` VALUES ('53', null, 'gagre', 'gweg', '3', 'rewrg', null, '3', '84c3a842-6238-408d-8590-1ab157f24fb4.jpg', 'dafa', '00010004', '2013-07-18');
INSERT INTO `ec_article` VALUES ('54', null, 'fewq', 'ewq', '3', 'wef', null, '3', 'a714a9a8-081c-46c2-8793-c38d25c69f7f.jpg', 'dfa', '0001', '2013-07-18');
INSERT INTO `ec_article` VALUES ('55', null, 'vds', 'fds', '4', 'vfs', null, '4', 'cebd7fae-f289-4b1d-8af6-466e2bf8432e.jpg', 'fds', '00010004', '2013-07-19');

-- ----------------------------
-- Table structure for ec_article_car
-- ----------------------------
DROP TABLE IF EXISTS `ec_article_car`;
CREATE TABLE `ec_article_car` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ec_article_id` int(11) NOT NULL,
  `ec_article_num` int(11) NOT NULL,
  `ec_user` int(11) NOT NULL,
  `CREATE_DATE` date DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ec_article_car
-- ----------------------------

-- ----------------------------
-- Table structure for ec_article_type
-- ----------------------------
DROP TABLE IF EXISTS `ec_article_type`;
CREATE TABLE `ec_article_type` (
  `CODE` varchar(100) NOT NULL COMMENT '物品编号',
  `NAME` varchar(50) DEFAULT NULL COMMENT '物品名',
  `REMARK` varchar(200) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`CODE`),
  UNIQUE KEY `NAME` (`NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ec_article_type
-- ----------------------------
INSERT INTO `ec_article_type` VALUES ('0001', '手机', '手机');
INSERT INTO `ec_article_type` VALUES ('00010001', '----苹果', '苹果');
INSERT INTO `ec_article_type` VALUES ('00010003', '----诺基亚', '诺基亚');
INSERT INTO `ec_article_type` VALUES ('00010004', '----联想', '联想');
INSERT INTO `ec_article_type` VALUES ('00010005', '----魅族', '魅族');
INSERT INTO `ec_article_type` VALUES ('00010006', '----索尼', '索尼');
INSERT INTO `ec_article_type` VALUES ('00010007', '----三星', '三星');
INSERT INTO `ec_article_type` VALUES ('00010008', '----HTC', 'HTC');
INSERT INTO `ec_article_type` VALUES ('00010009', '----摩托罗拉', '摩托罗拉');
INSERT INTO `ec_article_type` VALUES ('00010010', '----平板电脑', '擦伤');
INSERT INTO `ec_article_type` VALUES ('0002', '对讲机', '对讲机');
INSERT INTO `ec_article_type` VALUES ('00020001', '----手台', '手台');
INSERT INTO `ec_article_type` VALUES ('00020002', '----车台', '车台');
INSERT INTO `ec_article_type` VALUES ('0003', '手机配件', '手机配件');
INSERT INTO `ec_article_type` VALUES ('00030001', '----手机电池', '手机电池');
INSERT INTO `ec_article_type` VALUES ('00030002', '----蓝牙耳机', '蓝牙耳机');
INSERT INTO `ec_article_type` VALUES ('00030003', '----充电器/数据线', '充电器/数据线');
INSERT INTO `ec_article_type` VALUES ('00030004', '----手机耳机', '手机耳机');
INSERT INTO `ec_article_type` VALUES ('00030005', '----手机贴膜', '手机贴膜');
INSERT INTO `ec_article_type` VALUES ('00030006', '----手机保护套', '手机保护套');
INSERT INTO `ec_article_type` VALUES ('00030007', '----iPhone配件', 'iPhone配件');
INSERT INTO `ec_article_type` VALUES ('0004', '数码相机', '数码相机');
INSERT INTO `ec_article_type` VALUES ('00040001', '----准专业机', '准专业机');
INSERT INTO `ec_article_type` VALUES ('00040002', '----防水相机', '防水相机');
INSERT INTO `ec_article_type` VALUES ('00040003', '----中长焦相机', '中长焦相机');
INSERT INTO `ec_article_type` VALUES ('00040004', '----自拍相机', '自拍相机');
INSERT INTO `ec_article_type` VALUES ('00040005', '----胶片相机', '胶片相机');
INSERT INTO `ec_article_type` VALUES ('0005', '单反相机', '单反相机');
INSERT INTO `ec_article_type` VALUES ('00050001', '----入门级', '入门级');
INSERT INTO `ec_article_type` VALUES ('00050002', '----中高级', '中高级');
INSERT INTO `ec_article_type` VALUES ('00050003', '----专业级', '专业级');
INSERT INTO `ec_article_type` VALUES ('00050004', '----大师级', '大师级');
INSERT INTO `ec_article_type` VALUES ('0006', '摄相机', '摄相机');
INSERT INTO `ec_article_type` VALUES ('00060001', '----家用', '家用');
INSERT INTO `ec_article_type` VALUES ('00060002', '----准专业', '准专业');
INSERT INTO `ec_article_type` VALUES ('0007', '单电/微单相机', '单电/微单');
INSERT INTO `ec_article_type` VALUES ('00070001', '----机身', '机身');
INSERT INTO `ec_article_type` VALUES ('00070002', '----定焦套装', '定焦套装');
INSERT INTO `ec_article_type` VALUES ('00070003', '----变焦套装', '变焦套装');
INSERT INTO `ec_article_type` VALUES ('00070004', '----双镜头套装', '双镜头套装');
INSERT INTO `ec_article_type` VALUES ('0008', '镜头', '镜头');
INSERT INTO `ec_article_type` VALUES ('0009', '滤镜', '滤镜');
INSERT INTO `ec_article_type` VALUES ('0010', '单反配件', '单反配件');
INSERT INTO `ec_article_type` VALUES ('0011', '读卡器', '读卡器');
INSERT INTO `ec_article_type` VALUES ('0012', '存储卡', '存储卡');
INSERT INTO `ec_article_type` VALUES ('0013', '移动电源', '移动电源');
INSERT INTO `ec_article_type` VALUES ('0014', '数码包', '数码包');

-- ----------------------------
-- Table structure for ec_order
-- ----------------------------
DROP TABLE IF EXISTS `ec_order`;
CREATE TABLE `ec_order` (
  `ID` int(11) NOT NULL AUTO_INCREMENT COMMENT '订单id',
  `ORDER_CODE` varchar(20) DEFAULT NULL COMMENT '订单编号',
  `CREATE_DATE` date DEFAULT NULL COMMENT '创建时间',
  `SEND_DATE` date DEFAULT NULL COMMENT '发货时间',
  `STATUS` varchar(6) DEFAULT '0' COMMENT '订单状态(0:未发货  1：已发货  2：已签收)',
  `AMOUNT` double DEFAULT NULL COMMENT '总金额',
  `USER_ID` int(11) DEFAULT NULL COMMENT '用户ID',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ORDER_CODE` (`ORDER_CODE`),
  KEY `FK_USER_ORDER` (`USER_ID`),
  CONSTRAINT `FK_USER_ORDER` FOREIGN KEY (`USER_ID`) REFERENCES `ec_user` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ec_order
-- ----------------------------
INSERT INTO `ec_order` VALUES ('16', 'PO_1_20150805165939', '2015-08-05', null, '0', '3723.24', '1');
INSERT INTO `ec_order` VALUES ('17', 'PO_1_20150805171023', '2015-08-05', null, '0', '4558.48', '1');
INSERT INTO `ec_order` VALUES ('18', 'PO_1_20150805172803', '2015-08-05', null, '0', '7446.48', '1');
INSERT INTO `ec_order` VALUES ('19', 'PO_1_20150806090605', '2015-08-06', null, '0', '7446.48', '1');
INSERT INTO `ec_order` VALUES ('20', 'PO_1_20150806090721', '2015-08-06', null, '0', '3723.24', '1');
INSERT INTO `ec_order` VALUES ('21', 'PO_1_20150818100135', '2015-08-18', null, '0', '627', '1');

-- ----------------------------
-- Table structure for ec_order_item
-- ----------------------------
DROP TABLE IF EXISTS `ec_order_item`;
CREATE TABLE `ec_order_item` (
  `ORDER_ID` int(11) NOT NULL DEFAULT '0' COMMENT '订单Id',
  `ARTICLE_ID` int(11) NOT NULL DEFAULT '0' COMMENT '物品Id',
  `ORDER_NUM` int(11) DEFAULT NULL COMMENT '物品数量',
  PRIMARY KEY (`ORDER_ID`,`ARTICLE_ID`),
  KEY `FK_ORDER_ITEM_ARTICLE_ID` (`ARTICLE_ID`),
  CONSTRAINT `FK_ORDER_ITEM_ARTICLE_ID` FOREIGN KEY (`ARTICLE_ID`) REFERENCES `ec_article` (`ID`),
  CONSTRAINT `FK_ORDER_ITEM_ORDER_ID` FOREIGN KEY (`ORDER_ID`) REFERENCES `ec_order` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ec_order_item
-- ----------------------------
INSERT INTO `ec_order_item` VALUES ('16', '1', '1');
INSERT INTO `ec_order_item` VALUES ('17', '1', '1');
INSERT INTO `ec_order_item` VALUES ('17', '29', '1');
INSERT INTO `ec_order_item` VALUES ('18', '1', '2');
INSERT INTO `ec_order_item` VALUES ('19', '1', '1');
INSERT INTO `ec_order_item` VALUES ('19', '2', '1');
INSERT INTO `ec_order_item` VALUES ('20', '1', '1');
INSERT INTO `ec_order_item` VALUES ('21', '45', '3');

-- ----------------------------
-- Table structure for ec_user
-- ----------------------------
DROP TABLE IF EXISTS `ec_user`;
CREATE TABLE `ec_user` (
  `ID` int(11) NOT NULL AUTO_INCREMENT COMMENT '用户Id',
  `LOGIN_NAME` varchar(50) DEFAULT NULL COMMENT '登录名',
  `PASS_WORD` varchar(50) DEFAULT NULL COMMENT '登录密码',
  `NAME` varchar(50) DEFAULT NULL COMMENT '用户名',
  `SEX` int(11) DEFAULT '1' COMMENT '性别',
  `EMAIL` varchar(50) DEFAULT NULL COMMENT '电子邮箱',
  `PHONE` varchar(20) DEFAULT NULL COMMENT '电话',
  `ADDRESS` varchar(255) DEFAULT NULL COMMENT '地址',
  `ROLE` int(11) DEFAULT '1' COMMENT '用户角色',
  `CREATE_DATE` date DEFAULT NULL COMMENT '创建时间',
  `ACTIVE` varchar(255) DEFAULT NULL COMMENT '活动状态',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `LOGIN_NAME` (`LOGIN_NAME`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ec_user
-- ----------------------------
INSERT INTO `ec_user` VALUES ('1', '十年', '123456', '罗春龙', '1', 'admin@163.com', '3620357', '广州天河', '2', '2013-07-05', null);
INSERT INTO `ec_user` VALUES ('2', '十年3', '123456', '刘德华', '1', null, '15622266643', '香港', '1', '2015-07-29', null);
