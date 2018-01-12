/*
Navicat MySQL Data Transfer

Source Server         : 10.204.126.184_3306
Source Server Version : 50624
Source Host           : 10.204.126.184:3306
Source Database       : zm_db_data

Target Server Type    : MYSQL
Target Server Version : 50624
File Encoding         : 65001

Date: 2018-01-12 18:10:00
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `s_sales_by_em`
-- ----------------------------
DROP TABLE IF EXISTS `s_sales_by_em`;
CREATE TABLE `s_sales_by_em` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `em_id` bigint(20) NOT NULL COMMENT '人员ID',
  `em_name` varchar(256) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0' COMMENT ' 人员姓名',
  `stat_year` int(11) NOT NULL DEFAULT '2017' COMMENT '出库的年份',
  `m_1` double DEFAULT '0' COMMENT '1月销售金额',
  `m_2` double DEFAULT '0' COMMENT '2月销售金额',
  `m_3` double DEFAULT '0' COMMENT '3月销售金额',
  `m_4` double DEFAULT '0' COMMENT '4月销售金额',
  `m_5` double DEFAULT '0' COMMENT '5月销售金额',
  `m_6` double DEFAULT '0' COMMENT '6月销售金额',
  `m_7` double DEFAULT '0' COMMENT '7月销售金额',
  `m_8` double DEFAULT '0' COMMENT '8月销售金额',
  `m_9` double DEFAULT '0' COMMENT '9月销售金额',
  `m_10` double DEFAULT '0' COMMENT '10月销售金额',
  `m_11` double DEFAULT '0' COMMENT '11月销售金额',
  `m_12` double DEFAULT '0' COMMENT '12月销售金额',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of s_sales_by_em
-- ----------------------------

-- ----------------------------
-- Table structure for `s_sales_by_prod`
-- ----------------------------
DROP TABLE IF EXISTS `s_sales_by_prod`;
CREATE TABLE `s_sales_by_prod` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `prod_id` bigint(20) NOT NULL COMMENT '产品ID',
  `prod_code` varchar(2) COLLATE utf8_unicode_ci NOT NULL COMMENT '产品编号',
  `prod_name` varchar(256) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0' COMMENT '产品名称',
  `prod_gb_standard` varchar(256) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0' COMMENT '产品规格',
  `stat_year` int(11) NOT NULL DEFAULT '2017' COMMENT '订单生成的年份',
  `m_1` double DEFAULT '0' COMMENT '1月订货金额',
  `m_2` double DEFAULT '0' COMMENT '2月订货金额',
  `m_3` double DEFAULT '0' COMMENT '3月订货金额',
  `m_4` double DEFAULT '0' COMMENT '4月订货金额',
  `m_5` double DEFAULT '0' COMMENT '5月订货金额',
  `m_6` double DEFAULT '0' COMMENT '6月订货金额',
  `m_7` double DEFAULT '0' COMMENT '7月订货金额',
  `m_8` double DEFAULT '0' COMMENT '8月订货金额',
  `m_9` double DEFAULT '0' COMMENT '9月订货金额',
  `m_10` double DEFAULT '0' COMMENT '10月订货金额',
  `m_11` double DEFAULT '0' COMMENT '11月订货金额',
  `m_12` double DEFAULT '0' COMMENT '12月订货金额',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=386 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of s_sales_by_prod
-- ----------------------------
INSERT INTO `s_sales_by_prod` VALUES ('1', '2680', 'RK', 'RKRQ10', 'C', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('2', '2681', 'RK', 'RKRQ10', 'C2A', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('3', '2682', 'RK', 'RKRQ10', 'G1/2-C', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('4', '2683', 'RK', 'RKRQ10', 'G1/2-C2A', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('5', '2684', 'RK', 'RKRQ10', 'G3/8-C', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('6', '2685', 'RK', 'RKRQ10', 'G3/8-C2A', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('7', '2686', 'RK', 'RKRQ10', 'M18×1.5-C', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('8', '2687', 'RK', 'RKRQ10', 'M18×1.5-C2A', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('9', '2688', 'RK', 'RKRQ10', 'G1/2', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('10', '2689', 'RK', 'RKRQ10', 'G1/2-M18×1.5', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('11', '2690', 'RK', 'RKRQ10', 'G1/2T-M18×1.5T', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('12', '2691', 'RK', 'RKRQ10T', 'C', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('13', '2692', 'RK', 'RKRQ10T', 'G1/2-C', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('14', '2693', 'RK', 'RKRQ10T', 'G3/8-C', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('15', '2694', 'RK', 'RKRQ10T', 'M18×1.5-C', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('16', '2695', 'RK', 'RKRQ10T', 'G1/2', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('17', '2696', 'RK', 'RKRQ10T', 'G1/2-M18×1.5', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('18', '2697', 'RK', 'RKRQ10T1', 'G1/2', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('19', '2698', 'RK', 'RKRQ10T1', 'G1/2-M18×1.5', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('20', '2699', 'RK', 'RKRQ10T1A', 'G1/2', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('21', '2700', 'RK', 'RKRQ10T1A', 'G1/2-M18×1.5', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('22', '2701', 'RK', 'RKRQ10T2', 'C', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('23', '2702', 'RK', 'RKRQ10T2', 'G1/2-C', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('24', '2703', 'RK', 'RKRQ10T2', 'G3/8-C', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('25', '2704', 'RK', 'RKRQ10T2', 'M18×1.5-C', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('26', '2705', 'RK', 'RKRQ10T2', 'G1/2', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('27', '2706', 'RK', 'RKRQ10T2', 'G1/2-M18×1.5', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('28', '2707', 'RK', 'RKRQ10T3', 'C', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('29', '2708', 'RK', 'RKRQ10T3', 'G1/2-C', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('30', '2709', 'RK', 'RKRQ10T3', 'G3/8-C', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('31', '2710', 'RK', 'RKRQ10T3', 'M18×1.5-C', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('32', '2711', 'RK', 'RKRQ10T3', 'G1/2', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('33', '2712', 'RK', 'RKRQ10T3', 'G1/2-M18×1.5', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('34', '2713', 'RK', 'RKRQ10T4', 'C', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('35', '2714', 'RK', 'RKRQ10T4', 'G1/2-C', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('36', '2715', 'RK', 'RKRQ10T4', 'G3/8-C', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('37', '2716', 'RK', 'RKRQ10T4', 'M18×1.5-C', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('38', '2717', 'RK', 'RKRQ10T4', 'G1/2', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('39', '2718', 'RK', 'RKRQ10T4', 'G1/2-M18×1.5', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('40', '2719', 'RK', 'RKRQ10T5', 'C', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('41', '2720', 'RK', 'RKRQ10T5', 'G1/2-C', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('42', '2721', 'RK', 'RKRQ10T5', 'G3/8-C', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('43', '2722', 'RK', 'RKRQ10T5', 'M18×1.5-C', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('44', '2723', 'RK', 'RKRQ10T5', 'G1/2', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('45', '2724', 'RK', 'RKRQ10T5', 'G1/2-M18×1.5', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('46', '2725', 'RK', 'RKRQ10T6', 'C', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('47', '2726', 'RK', 'RKRQ10T6', 'G1/2-C', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('48', '2727', 'RK', 'RKRQ10T6', 'G3/8-C', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('49', '2728', 'RK', 'RKRQ10T6', 'M18×1.5-C', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('50', '2729', 'RK', 'RKRQ10T6', 'G1/2', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('51', '2730', 'RK', 'RKRQ10T6', 'G1/2-M18×1.5', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('52', '2731', 'RK', 'RKRQ10T7', 'C', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('53', '2732', 'RK', 'RKRQ10T7', 'C-CW', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('54', '2733', 'RK', 'RKRQ10T7', 'G1/2-C', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('55', '2734', 'RK', 'RKRQ10T7', 'G1/2W-C', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('56', '2735', 'RK', 'RKRQ10T7', 'G1/2-CW', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('57', '2736', 'RK', 'RKRQ10T7', 'G1/2', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('58', '2737', 'RK', 'RKRQ10T7', 'G1/2-G1/2W', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('59', '2738', 'RK', 'RKRQ', 'RQ12', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('60', '2739', 'RK', 'RKRQ', 'RQ12T1', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('61', '2740', 'RK', 'RKRQ', 'RQ15A', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('62', '2741', 'RK', 'RKRQ', 'RQ15B', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('63', '2742', 'RK', 'RKRQ', 'RQ20A', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('64', '2743', 'RK', 'RKRQ', 'RQ20B', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('65', '2744', 'RK', 'RKRQ', 'RQ12T', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('66', '2745', 'RK', 'RKRQ', 'RQ15TA', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('67', '2746', 'RK', 'RKRQ', 'RQ15TB', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('68', '2747', 'RK', 'RKRQ', 'RQ20T', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('69', '2748', 'RK', 'RKBJ', 'RKBJ15F', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('70', '2749', 'RK', 'RKBJ', 'RKBJ15', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('71', '2750', 'RK', 'RKBJ', 'RKBJ15A', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('72', '2751', 'YJ', 'YJRQ10', 'C2', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('73', '2752', 'YJ', 'YJRQ10', 'C2A', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('74', '2753', 'YJ', 'YJRQ10', 'G1/2-C2', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('75', '2754', 'YJ', 'YJRQ10', 'G1/2-C2A', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('76', '2755', 'YJ', 'YJRQ10', 'G3/8-C2', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('77', '2756', 'YJ', 'YJRQ10', 'G3/8-C2A', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('78', '2757', 'YJ', 'YJRQ10', 'M18×1.5-C2', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('79', '2758', 'YJ', 'YJRQ10', 'M18×1.5-C2A', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('80', '2759', 'YJ', 'YJRQ10', 'G1/2', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('81', '2760', 'YJ', 'YJRQ10', 'G1/2-M18×1.5', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('82', '2761', 'YJ', 'YJRQ10', 'G1/2T-M18×1.5T', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('83', '2762', 'YJ', 'YJRQ10T', 'C2', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('84', '2763', 'YJ', 'YJRQ10T', 'G1/2-C2', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('85', '2764', 'YJ', 'YJRQ10T', 'G3/8-C2', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('86', '2765', 'YJ', 'YJRQ10T', 'M18×1.5-C2', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('87', '2766', 'YJ', 'YJRQ10T', 'G1/2-L', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('88', '2767', 'YJ', 'YJRQ10T', 'G1/2-M18×1.5', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('89', '2768', 'YJ', 'YJRQ10T2', 'C2', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('90', '2769', 'YJ', 'YJRQ10T2', 'C2A', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('91', '2770', 'YJ', 'YJRQ10T2', 'G1/2-C2-L', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('92', '2771', 'YJ', 'YJRQ10T2', 'G1/2-C2A', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('93', '2772', 'YJ', 'YJRQ10T2', 'G3/8-C2', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('94', '2773', 'YJ', 'YJRQ10T2', 'G3/8-C2A', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('95', '2774', 'YJ', 'YJRQ10T2', 'M18×1.5-C2', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('96', '2775', 'YJ', 'YJRQ10T2', 'M18×1.5-C2A', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('97', '2776', 'YJ', 'YJRQ10T2', 'G1/2', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('98', '2777', 'YJ', 'YJRQ10T2', 'G1/2-M18×1.5', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('99', '2778', 'YJ', 'YJRQ', 'RQG10', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('100', '2779', 'YJ', 'YJRQ', 'RQG10T', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('101', '2780', 'YJ', 'YJRQ', 'RQG10C', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('102', '2781', 'YJ', 'YJRQ', 'RQG12', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('103', '2782', 'YJ', 'YJRQ', 'RQG13', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('104', '2783', 'RK', 'RKLTG', 'RKLT06A', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('105', '2784', 'RK', 'RKLTG', 'RKLT06B', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('106', '2785', 'RK', 'RKPG', 'GQ12', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('107', '2786', 'RK', 'RKPG', 'GQ13', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('108', '2787', 'RK', 'RKPG', 'GQ15', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('109', '2788', 'RK', 'RKPG', 'GA15', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('110', '2789', 'RK', 'RKPG', 'GQ15B', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('111', '2790', 'RK', 'RKPG', 'GQ18', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('112', '2791', 'RK', 'RKPG', 'GQ20', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('113', '2792', 'RK', 'RKSG', 'RK9612', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('114', '2793', 'RK', 'RKSG', 'RK9613', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('115', '2794', 'RK', 'RKSG', 'RK9615', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('116', '2795', 'RK', 'RKSG', 'RK9618', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('117', '2796', 'RK', 'RKSG', 'RK9620', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('118', '2797', 'RK', 'RKSG', 'RK9612T', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('119', '2798', 'RK', 'RKSG', 'RK9613T', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('120', '2799', 'RK', 'RKRQ', 'RQG10', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('121', '2800', 'RK', 'RKRQ', 'RQG10T', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('122', '2801', 'RK', 'RKRQ', 'RQG10C', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('123', '2802', 'RK', 'RKRQ', 'RQG12', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('124', '2803', 'RK', 'RKRQ', 'RQG13', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('125', '2804', 'RK', 'RKRQ', 'RQG15', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('126', '2805', 'RK', 'RKRQ', 'RQG15A', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('127', '2806', 'RK', 'RKRQ', 'RQG15B', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('128', '2807', 'RK', 'RKRQ', 'RQG18', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('129', '2808', 'RK', 'RKRQ', 'RQG20', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('130', '2809', 'JT', '接头', 'RKRQ08-5A', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('131', '2810', 'JT', '接头', 'RKRQ08-6A', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('132', '2811', 'JT', '接头', 'RKRQ09-1B', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('133', '2812', 'JT', '接头', 'RKRQ09-1C', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('134', '2813', 'LQ', '接头', 'RKLQ08-3J', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('135', '2814', 'LQ', '接头', 'RKLQ9-3J', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('136', '2815', 'LQ', '接头', 'RKLQ12-3J', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('137', '2816', 'LQ', '环', 'RKLQ9H', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('138', '2817', 'LQ', '环', 'RKLQ12H', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('139', '2818', 'LQ', '接头', 'RKLQ16J', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('140', '2819', 'LQ', '环', 'RKLQ16H', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('141', '2820', 'LQ', '接头', 'RKLQ08-1', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('142', '2821', 'LQ', '接头', 'RKLQ10-1', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('143', '2822', 'LQ', '接头', 'RKLQ16-1', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('144', '2823', 'SL', '塑料件', 'SL15-HG', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('145', '2824', 'DQ', '垫圈', 'RKDQ08-8', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('146', '2825', 'DQ', '垫圈', 'RKDQ08-1', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('147', '2826', 'DQ', '垫圈', 'RKDQ08-3', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('148', '2827', 'DQ', '垫圈', 'RKDQ08-4', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('149', '2828', 'DQ', '垫圈', 'RKDQ08-5', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('150', '2829', 'DQ', '垫圈', 'RKDQ08-4A', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('151', '2830', 'DQ', '垫圈', 'RKDQ08-4B', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('152', '2831', 'DQ', '垫圈', 'RKDQ08-4C', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('153', '2832', 'DQ', '垫圈', 'RKDQ08-4D', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('154', '2833', 'DQ', '垫圈', 'RKDQ08-3A', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('155', '2834', 'DQ', '垫圈', 'RKDQ09-1', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('156', '2835', 'DQ', '垫圈', 'RKDQ09-2', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('157', '2836', 'DQ', '垫圈', 'RKDQ12-1', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('158', '2837', 'DQ', '垫圈', 'RKDQ20-1', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('159', '2838', 'DQ', '垫圈', 'RKDQ20-2', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('160', '2839', 'DQ', '垫圈', 'RKDQ25-1', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('161', '2840', 'DQ', '垫圈', 'RKDQ20-4', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('162', '2841', 'DQ', '垫圈', 'RKDQ08-6', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('163', '2842', 'DQ', '垫圈', 'RKDQ08-7', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('164', '2843', 'DQ', '垫圈', 'RKDQ10A', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('165', '2844', 'DQ', '垫圈', 'RKDQ12-4', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('166', '2845', 'DQ', '垫圈', 'RKDQ08-11', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('167', '2846', 'DQ', '垫圈', 'RKDQ15-1A', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('168', '2847', 'DQ', '垫圈', 'RKDQ15B', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('169', '2848', 'DQ', '垫圈', 'RKDQ20-5', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('170', '2849', 'DQ', '垫圈', 'OXQ19×15×2', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('171', '2850', 'DQ', '垫圈', 'OXQ23×17×3', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('172', '2851', 'DQ', '垫圈', 'OXQ24×18×3', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('173', '2852', 'DQ', '垫圈', 'OXQ28×22×3', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('174', '2853', 'DQ', '垫圈', 'OXQ27×21×3', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('175', '2854', 'DQ', '垫圈', 'OXQ30×24×3', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('176', '2855', 'LM', '螺母', 'RKLM12-8T', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('177', '2856', 'LM', '螺母', 'RKLM12-9T', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('178', '2857', 'LM', '螺母', 'RKWHLM12-9T', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('179', '2858', 'LQ', '网套', 'RKWT14', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('180', '2859', 'LQ', '网套', 'RKWT19', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('181', '2860', 'PV', 'PVC颗粒', 'KL-01', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('182', '2861', 'PV', 'PVC颗粒', 'KL-03', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('183', '2862', 'PV', 'PVC颗粒', 'KL-05', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('184', '2863', 'PV', 'PVC颗粒', 'KL-06', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('185', '2864', 'JT', '接头', 'RKRQ08-11', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('186', '2865', 'JT', '接头', 'RKBJ20-5', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('187', '2866', 'JT', '接头', 'RKBJ20-6', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('188', '2867', 'JT', '接头', 'LT08-3', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('189', '2868', 'JT', '接头', 'RKJT08-2', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('190', '2869', 'JT', '接头', 'RKJT08-2A', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('191', '2870', 'JT', '接头', 'RKJT08-2B', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('192', '2871', 'JT', '接头', 'RKJT08-3', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('193', '2872', 'JT', '接头', 'RKJT08-4', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('194', '2873', 'JT', '接头', 'RKJT25-1', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('195', '2874', 'JT', '接头', 'RKRQ08-1A', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('196', '2875', 'JT', '接头', 'RKRQ08-2C', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('197', '2876', 'JT', '接头', 'RKRQ08-2D', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('198', '2877', 'JT', '接头', 'RKRQ08-3A', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('199', '2878', 'JT', '接头', 'RKRQ08-4A', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('200', '2879', 'JT', '接头', 'RKRQ08-5A', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('201', '2880', 'JT', '接头', 'RKRQ12-1', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('202', '2881', 'JT', '接头', 'RKRQ12-2', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('203', '2882', 'JT', '接头', 'RKRQ12-3', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('204', '2883', 'JT', '接头', 'RKRQ13-1', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('205', '2884', 'JT', '接头', 'RKRQ13-2', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('206', '2885', 'JT', '接头', 'RKRQ13-3', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('207', '2886', 'JT', '接头', 'RKRQ13-4', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('208', '2887', 'JT', '接头', 'RKRQ13-5', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('209', '2888', 'JT', '接头', 'RKRQ15-1A', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('210', '2889', 'JT', '接头', 'RKRQ15-2A', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('211', '2890', 'JT', '接头', 'RKRQ15-3A', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('212', '2891', 'JT', '接头', 'RKRQ15B-1', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('213', '2892', 'JT', '接头', 'RKRQ15B-2', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('214', '2893', 'JT', '接头', 'RKRQ15B-3', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('215', '2894', 'JT', '接头', 'RKRQ18C', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('216', '2895', 'JT', '接头', 'RKRQ18D', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('217', '2896', 'JT', '接头', 'RKRQ18E', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('218', '2897', 'JT', '接头', 'RKRQ18F', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('219', '2898', 'JT', '接头', 'RKRQ18F-1', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('220', '2899', 'JT', '接头', 'RKRQ18G-1', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('221', '2900', 'JT', '接头', 'RKRQ18G-2', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('222', '2901', 'JT', '接头', 'MDT15-3', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('223', '2902', 'JT', '接头', 'RKJT08-1', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('224', '2903', 'KG', '卡箍', 'RKKG08-3', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('225', '2904', 'KG', '卡箍', 'RKKG10-2', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('226', '2905', 'KG', '卡箍', 'RKKG10-1', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('227', '2906', 'KG', '卡箍', 'RKKG12-4', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('228', '2907', 'KG', '卡箍', 'RKKG12-3', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('229', '2908', 'KG', '卡箍', 'RKKG15-1', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('230', '2909', 'KG', '卡箍', 'RKKG15-2', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('231', '2910', 'KG', '卡箍', 'RKKG15-3', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('232', '2911', 'KG', '卡箍', 'RKKG18-2', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('233', '2912', 'LM', '螺母', 'RKRQ09-5', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('234', '2913', 'LM', '螺母', 'RKRQ09-6', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('235', '2914', 'LM', '螺母', 'RKLM20-3', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('236', '2915', 'LM', '螺母', 'RKLM20-4', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('237', '2916', 'LM', '螺母', 'RKLM08-1', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('238', '2917', 'LM', '螺母', 'RKLM08-4', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('239', '2918', 'LM', '螺母', 'RKLM08-2E', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('240', '2919', 'LM', '螺母', 'RKLM08-2D', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('241', '2920', 'LM', '螺母', 'RKLM08-2F', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('242', '2921', 'LM', '螺母', 'RKLM08-3', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('243', '2922', 'LM', '螺母', 'RKLM08-5', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('244', '2923', 'LM', '螺母', 'RKLM08-6', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('245', '2924', 'LM', '螺母', 'RKLM20-1', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('246', '2925', 'LM', '螺母', 'RKLM20-2', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('247', '2926', 'LM', '螺母', 'RKLM25-1', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('248', '2927', 'LM', '螺母', 'YJLM08-1', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('249', '2928', 'LM', '螺母', 'YJLM08-2', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('250', '2929', 'LM', '螺母', 'YJLM08-4', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('251', '2930', 'LM', '螺母', 'RKLM09-2', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('252', '2931', 'LM', '螺母', 'YJLM08-5AT', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('253', '2932', 'LM', '螺母', 'YJLM08-7T', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('254', '2933', 'LM', '螺母', 'RKLM10-1', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('255', '2934', 'LM', '螺母', 'YJLM10-1', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('256', '2935', 'LM', '螺母', 'RKLM10C', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('257', '2936', 'LM', '螺母', 'RKLM10D', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('258', '2937', 'LM', '螺母', 'RKLM12-2', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('259', '2938', 'LM', '螺母', 'RKLM12-3', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('260', '2939', 'LM', '螺母', 'RKRQ15-6A', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('261', '2940', 'KS', '快速接头', 'JT08A', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('262', '2941', 'KS', '快速接头', 'JT08B', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('263', '2942', 'KS', '快速接头', 'JT08C', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('264', '2943', 'KS', '快速接头', 'JT08C1', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('265', '2944', 'KS', '快速接头', 'RKJT08D1', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('266', '2945', 'KS', '快速接头', 'YJJT08D1', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('267', '2946', 'KS', '快速接头', 'YJJT08C', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('268', '2947', 'KS', '快速接头', 'JT08F', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('269', '2948', 'KS', '快速接头', 'JT12A', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('270', '2949', 'KS', '快速接头', 'JT12B', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('271', '2950', 'KS', '快速接头', 'JT12C', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('272', '2951', 'KS', '快速接头', 'JT12D', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('273', '2952', 'KS', '快速接头', 'JT12E', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('274', '2953', 'KS', '快速接头', 'JT12D1', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('275', '2954', 'KS', '快速接头', 'JT13A', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('276', '2955', 'KS', '快速接头', 'JT13B', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('277', '2956', 'KS', '快速接头', 'JT13C', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('278', '2957', 'KS', '快速接头', 'JT13D', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('279', '2958', 'KS', '快速接头', 'JT13E', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('280', '2959', 'KS', '快速接头', 'JT13E1', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('281', '2960', 'KS', '快速接头', 'JT13F', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('282', '2961', 'KS', '快速接头', 'JT13G', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('283', '2962', 'KS', '快速接头', 'JT15A', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('284', '2963', 'KS', '快速接头', 'JT15B', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('285', '2964', 'KS', '快速接头', 'JT15C', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('286', '2965', 'KS', '快速接头', 'JT15D', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('287', '2966', 'KS', '快速接头', 'JT15E', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('288', '2967', 'KS', '快速接头', 'JT15A1', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('289', '2968', 'KS', '快速接头', 'JT15B1', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('290', '2969', 'KS', '快速接头', 'JT15C1', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('291', '2970', 'KS', '快速接头', 'JT20A', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('292', '2971', 'KS', '快速接头', 'JT20B', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('293', '2972', 'KS', '快速接头', 'JT20C', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('294', '2973', 'KS', '快速接头', 'JT20D', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('295', '2974', 'KS', '快速接头', 'JT20E', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('296', '2975', 'KS', '快速接头', 'JT20F', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('297', '2976', 'KS', '快速接头', 'JT20G', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('298', '2977', 'KS', '快速接头', 'JT20H', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('299', '2978', 'KS', '快速接头', 'JT20I', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('300', '2979', 'KS', '快速接头', 'JT20J', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('301', '2980', 'DQ', '垫圈', 'RKBJ15-1', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('302', '2981', 'ST', '三通', 'ST10-2', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('303', '2982', 'ST', '三通', 'ST10-4', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('304', '2983', 'ST', '三通', 'ST10-5', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('305', '2984', 'ST', '三通', 'FST20', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('306', '2985', 'WT', '弯头', 'MDT15-4', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('307', '2986', 'WT', '弯头', 'MDT20-1', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('308', '2987', 'WT', '弯头', 'MDT20-2', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('309', '2988', 'WT', '弯头', 'MDT15-1', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('310', '2989', 'WT', '弯头', 'MDT15-2', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('311', '2990', 'PV', 'PVC颗粒', 'KL-02', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('312', '2991', 'PV', 'PVC颗粒', 'KL-04', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('313', '2992', 'BF', '被覆层', 'RKBF10-1', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('314', '2993', 'BF', '被覆层', 'RKBF10-2', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('315', '2994', 'BF', '被覆层', 'RKRS25', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('316', '2995', 'BF', '被覆层', 'RKRS32', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('317', '2996', 'BF', '被覆层', 'RKRS35', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('318', '2997', 'BF', '被覆层', 'RKRS41', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('319', '2998', 'JT', '接头', 'RKRQ08-7C', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('320', '2999', 'JT', '接头', 'RKRQ08-8', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('321', '3000', 'JT', '接头', 'RKRQ10-2', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('322', '3001', 'JT', '接头', 'RKRQ20-1', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('323', '3002', 'JT', '接头', 'RKRQ20-2', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('324', '3003', 'JT', '接头', 'RKRQ25-1', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('325', '3004', 'JT', '接头', 'RKRQ08-10', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('326', '3005', 'JT', '接头', 'RKBJ20-3', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('327', '3006', 'JT', '接头', 'LT08-1', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('328', '3007', 'JT', '接头', 'LT08-2', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('329', '3008', 'LM', '螺母', 'RKLM12-1A', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('330', '3009', 'LM', '螺母', 'RKLM12-2A', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('331', '3010', 'LM', '螺母', 'RKLM12-1', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('332', '3011', 'LM', '螺母', 'RKLM12-2', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('333', '3012', 'LM', '螺母', 'RKLM12-3', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('334', '3013', 'LM', '螺母', 'BKLM12-1', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('335', '3014', 'LM', '螺母', 'BKLM20-2', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('336', '3015', 'GT', '钢套', 'RKGT08-1', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('337', '3016', 'GT', '钢套', 'RKGT08-2', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('338', '3017', 'GT', '钢套', 'RKGT08-3', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('339', '3018', 'GT', '钢套', 'RKGT08-4', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('340', '3019', 'SL', '塑料件', 'RKBJ15-2', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('341', '3020', 'SL', '塑料件', 'SL15-BG', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('342', '3021', 'SL', '塑料件', 'SL15-ST', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('343', '3022', 'SL', '塑料件', 'SL15-WJZ', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('344', '3023', 'SL', '塑料件', 'SL15-NJZ', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('345', '3024', 'SL', '塑料件', 'SL15-WWZ', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('346', '3025', 'KH', '卡环', 'RKDP08-1', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('347', '3026', 'QB', '敲波器', 'QBQ12', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('348', '3027', 'QB', '敲波器', 'QBQ13', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('349', '3028', 'QB', '敲波器', 'QBQ15', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('350', '3029', 'QB', '敲波器', 'QBQ18', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('351', '3030', 'FM', '阀门', 'MDF15-1', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('352', '3031', 'FM', '阀门', 'MDF15-2', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('353', '3032', 'FM', '阀门', 'MDF15-4A', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('354', '3033', 'FM', '阀门', 'MDF15-3', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('355', '3034', 'FM', '阀门', 'MDF15-4', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('356', '3035', 'FM', '阀门', 'YJMDF15-3', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('357', '3036', 'FM', '阀门', 'MDF15-6', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('358', '3037', 'FM', '阀门', 'MDF15-7', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('359', '3038', 'FM', '阀门', 'MDF15-9', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('360', '3043', 'BC', '波纹管', 'GQ15', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('361', '3044', 'BC', '波纹管', 'GA15', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('362', '3046', 'BC', '波纹管', 'GQ18', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('363', '3048', 'GD', '钢带', '0.17×38', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('364', '3049', 'GD', '钢带', '0.24×49.5', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('365', '3050', 'GD', '钢带', '0.2×34.5', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('366', '3051', 'GD', '钢带', '0.3×35.5', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('367', '3052', 'GD', '钢带', '0.3×42', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('368', '3053', 'GD', '钢带', '0.3×51.9', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('369', '3054', 'GD', '钢带', '0.24×65', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('370', '3055', 'GD', '钢带', '0.21×56', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('371', '3056', 'GD', '钢带', '0.19×46.6', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('372', '3058', 'GD', '钢带', '0.2×40', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('373', '3059', 'GD', '钢带', '0.22×59.2', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('374', '3067', 'BC', '透明包塑管', 'BS-01', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('375', '3068', 'BC', '硬工程黄包塑管', 'BS-02', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('376', '3069', 'BC', '软工程黄包塑管', 'BS-03', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('377', '3070', 'BC', '明黄包塑管', 'BS-04', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('378', '3071', 'BC', '波纹管', 'GA08', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('379', '3072', 'BC', '波纹管', 'GA10', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('380', '3073', 'BC', '波纹管', 'GA12', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('381', '3074', 'BC', '波纹管', 'GQ13', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('382', '3075', 'BC', '波纹管', 'GQ12', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('383', '3076', 'BC', '波纹管', 'GQ15B', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('384', '3077', 'BC', '波纹管', 'GA10-1', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `s_sales_by_prod` VALUES ('385', '3080', 'DG', '4分堵盖', 'G1/2', '2017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');

-- ----------------------------
-- Table structure for `s_sales_info`
-- ----------------------------
DROP TABLE IF EXISTS `s_sales_info`;
CREATE TABLE `s_sales_info` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `prod_id` bigint(20) NOT NULL COMMENT '产品ID',
  `prod_code` varchar(2) COLLATE utf8_unicode_ci NOT NULL COMMENT '产品编号',
  `prod_name` varchar(256) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0' COMMENT '产品名称',
  `prod_gb_standard` varchar(256) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0' COMMENT '产品规格',
  `em_id` bigint(20) NOT NULL COMMENT '人员ID',
  `em_name` varchar(256) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0' COMMENT ' 人员姓名',
  `remark` varchar(256) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0' COMMENT ' 备注',
  `sale_count` int(10) unsigned zerofill NOT NULL COMMENT '数量',
  `prod_price` double(18,3) DEFAULT '0.000',
  `prod_cost` double(18,3) DEFAULT '0.000',
  `sale_price` double(18,3) DEFAULT '0.000',
  `sale_money` double(18,3) DEFAULT '0.000',
  `plan_id` bigint(20) DEFAULT '0' COMMENT '订单编号',
  `plan_name` varchar(110) COLLATE utf8_unicode_ci DEFAULT '0' COMMENT ' 订单名称',
  `pos_receipt` varchar(256) COLLATE utf8_unicode_ci DEFAULT '0' COMMENT ' 单据编号',
  `pos_date` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '出库时间',
  `order_date` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '下单时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of s_sales_info
-- ----------------------------

-- ----------------------------
-- Table structure for `t_abandon`
-- ----------------------------
DROP TABLE IF EXISTS `t_abandon`;
CREATE TABLE `t_abandon` (
  `prod_id` bigint(20) NOT NULL COMMENT '产品ID',
  `prod_inst_id` bigint(20) NOT NULL COMMENT '产品实例ID',
  `m_count` decimal(18,3) NOT NULL COMMENT '领料数量',
  `sub_plan_id` bigint(20) NOT NULL COMMENT '子订单ID',
  `abd_count` decimal(18,3) unsigned zerofill NOT NULL COMMENT '废料数量',
  `abd_reason` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT '原因',
  `abd_remark` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT '废料说明'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='废料表';

-- ----------------------------
-- Records of t_abandon
-- ----------------------------

-- ----------------------------
-- Table structure for `t_barcode`
-- ----------------------------
DROP TABLE IF EXISTS `t_barcode`;
CREATE TABLE `t_barcode` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `bar_code` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `inst_id` bigint(20) DEFAULT NULL COMMENT '产品实例ID',
  `stock_count` decimal(18,3) unsigned zerofill NOT NULL DEFAULT '000000000000000.000',
  PRIMARY KEY (`id`),
  UNIQUE KEY `bar_code` (`bar_code`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='条码信息';

-- ----------------------------
-- Records of t_barcode
-- ----------------------------
INSERT INTO `t_barcode` VALUES ('1', 'LQRKLQ16JCZHN20160712', '147', '000000000000100.000');

-- ----------------------------
-- Table structure for `t_covered`
-- ----------------------------
DROP TABLE IF EXISTS `t_covered`;
CREATE TABLE `t_covered` (
  `covered_code` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '-1' COMMENT '覆层编码',
  `covered_desc` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '覆层描述',
  `remark` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '说明信息，保留字段',
  PRIMARY KEY (`covered_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of t_covered
-- ----------------------------
INSERT INTO `t_covered` VALUES ('-1', '请选择', '不显示');
INSERT INTO `t_covered` VALUES ('**', '默认', null);
INSERT INTO `t_covered` VALUES ('BS', '包塑', '');
INSERT INTO `t_covered` VALUES ('TM', '透明', '');
INSERT INTO `t_covered` VALUES ('TS', '套塑', '');
INSERT INTO `t_covered` VALUES ('XS', '吸塑', '');

-- ----------------------------
-- Table structure for `t_customer`
-- ----------------------------
DROP TABLE IF EXISTS `t_customer`;
CREATE TABLE `t_customer` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `cust_name` varchar(256) COLLATE utf8_unicode_ci NOT NULL COMMENT '客户名称',
  `cust_addr` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '客户地址',
  `enabled_date` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '登记日期',
  `cust_contacter` varchar(64) COLLATE utf8_unicode_ci NOT NULL COMMENT '联系人',
  `cust_contacter_phone` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '联系电话',
  `sales_person_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '业务员',
  `remark` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '备注',
  `status` varchar(64) COLLATE utf8_unicode_ci DEFAULT '有效' COMMENT '状态：有效、失效',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1532 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='客户信息表';

-- ----------------------------
-- Records of t_customer
-- ----------------------------
INSERT INTO `t_customer` VALUES ('1', '宁波立强机械有限公司', '宁波象山县东城滨海工业园金开路100号', '2017-12-11 15:46:31', '方剑智', '13575906591/17855868866/0574-65803008', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('2', '田永兴', '贵州贵阳小河黄河路', '2017-12-11 15:46:31', '田永兴', '18984886928', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('3', '陈克阳', '湖北老河口市北京洛中山大市场斜对面伟星管业', '2017-12-11 15:46:31', '陈克阳', '15671288000', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('4', '南通星诺冷冻设备有限公司', '江苏省南通市港闸区国强路31号', '2017-12-11 15:46:31', '杨桂明', '13912285912/13962750077/0513-85671400', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('5', '蓬莱市海华机械有限公司', '蓬莱市登州路181号', '2017-12-11 15:46:31', '蓬莱蒲', '13708900993/0535-5661360办公', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('6', '李年超', '广西柳州市城中区八一路福柳新都8-1-1-2', '2017-12-11 15:46:31', '李年超', '18507723690', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('7', '李年杰', '厦门岛内', '2017-12-11 15:46:31', '李年杰', '13696963489', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('8', '世保康水务（南京）有限公司', '南京市汤山工业园集中区', '2017-12-11 15:46:31', '姜振萍', '18963617905', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('9', '邦迪汽车系统(长春)有限公司', '长春经济开发区淄博路2599', '2017-12-11 15:46:31', '高晨', '04318178553/18166881431/cgao@cn.tiauto.com', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('10', '姜堰新世纪', '马鞍山市湖东中路30号荣事达厨卫电器（港华燃气傍）', '2017-12-11 15:46:31', '潘正华', '13955594908', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('11', '江苏信泰化工装备有限公司', '江苏省徐州市睢宁县宁江工业园北环路66号', '2017-12-11 15:46:31', '邢学智', '17712015255', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('12', '美的售后', '下关区中央北路120-1号73608部队21栋', '2017-12-11 15:46:31', '范涛', '18652925723', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('13', '赵经理', '南京市下关区燕江路金陵九村（玉环）', '2017-12-11 15:46:31', '赵经理', '02585189354', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('14', '唐山天工冶金设备制造有限公司', '唐山市开平区北湖产业园华耐道6号', '2017-12-11 15:46:31', '冯魁彦', '0315-5255059', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('15', '山东凤凰制药股份有限公司', '山东东营市利津县津二路198号', '2017-12-11 15:46:31', '张永海', '13305465911', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('16', '优美大整体厨房', '山东省青岛市南京路284-3', '2017-12-11 15:46:31', '李茂源', '0532-88873079', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('17', '杭州老板电器', '杭州市西湖区三墩吉鸿社区', '2017-12-11 15:46:31', '陈小杰/赖爱娣', '0571-88918667/13906521596', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('18', '杭州（德意）', '浙江省杭州市江干区机场路与交叉口东港家园一区2栋402', '2017-12-11 15:46:31', '小任/徐春洋', '13777383062/13588345325', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('19', '济南A.O史密斯客户关怀中心', '济南市历山路67号', '2017-12-11 15:46:31', '孙学民', '18954179085', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('20', '王洪', '湖北省荆门市东宝区金虾路35号', '2017-12-11 15:46:31', '王洪', '13797963235', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('21', '王洪', '上海浦东顾高路号1066号', '2017-12-11 15:46:31', '王洪', '021-68483786/传真:021-68483965', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('22', '谷卫东', '南京建邺区江东中路88号金陵国际家具F1楼松下整体馆', '2017-12-11 15:46:31', '谷卫东', '13912994088/68133688', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('23', '港华燃气(深圳)', '深圳市福田区福中一路1016号地铁大厦10楼港华燃气', '2017-12-11 15:46:31', '林嘉俊', '18602899040', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('24', '华润燃气有限公司', '福州市晋安区远洋路153号', '2017-12-11 15:46:31', '江耿江', '18950306467', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('25', '咸宁胡伟', '湖北省咸宁市温泉体育路203号', '2017-12-11 15:46:31', '胡伟', '15926939268', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('26', '兰州', '兰州市城关区东岗东路583号304室', '2017-12-11 15:46:31', '张维平', '13993182033', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('27', '杭州周水虎', '杭州市萧山通汇北路宁牧村（爱迪尔文体品厂内）', '2017-12-11 15:46:31', '周水虎', '13867165755', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('28', '李文蔚', '常州市西夏墅镇灵山中路26号5-1懂东飞工具', '2017-12-11 15:46:31', '李文蔚', '18661106800', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('29', '溧水永阳恒信家电服务中心', '江苏省溧水县分龙岗十字路口东1号', '2017-12-11 15:46:31', '张腊兵', '025-57200357/025-66131916', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('30', '江涛', '南京市江宁区江宁东山文靖路377号7-102', '2017-12-11 15:46:31', '江涛', '025-52192064/025-51728737', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('31', '江涛', '杭州市余杭区瓶窖镇华达路19号/杭州市湖州街113号樱花专卖店', '2017-12-11 15:46:31', '江涛', '15306585865/13735592296', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('32', '关存保', '镇江江山名洲36栋104（镇江市南山华庭2栋305室旧地址）', '2017-12-11 15:46:31', '关存保', '15106106630/055-85089669', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('33', '杜勇', '云龙区铜山路园梦花园D5-1-101(万和电器）', '2017-12-11 15:46:31', '杜勇', '158621853510516-82325362', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('34', '上海中达', '上海市奉贤区金汇镇红专开发区益名村100号', '2017-12-11 15:46:31', '宋中春', '021-54849878/15921933788', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('35', '戴国富', '淮安市开发区小康城5区16号', '2017-12-11 15:46:31', '戴国富', '13912088449', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('36', '李超', '泰州东城国际16号102室', '2017-12-11 15:46:31', '李超', '18761077788', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('37', '老板厨房电器', '大厂园西路175-1号大厂经久装饰城光芒专卖店', '2017-12-11 15:46:31', '陈相兵', '13814505212', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('38', '渠吉安', '江苏徐州丰县城管句', '2017-12-11 15:46:31', '渠吉安', '13952214587', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('39', '武超灶具配件经营部', '武汉市沿河大道127号-3门', '2017-12-11 15:46:31', '张凯', '13545285670/027-85645036', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('40', '龚伟/谢林', '厦门湖里区双浦西里20号207室', '2017-12-11 15:46:31', '龚伟/谢林', '18659272479/13599548758', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('41', '戴炳胜', '江苏省盐城市高力文化电子城西街102号', '2017-12-11 15:46:31', '戴炳胜', '0515-83181508', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('42', '朱总', '苏州市吴中区长宝桥宝带西路盘蠡南苑3-102', '2017-12-11 15:46:31', '朱总', '18914077139', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('43', '黄树满', '安徽芜湖市华联商城6栋3单元102', '2017-12-11 15:46:31', '黄树满', '15178516655', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('44', '周驰', '合肥市瑶海区北二环瑶海公园', '2017-12-11 15:46:31', '周驰', '13956932244', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('45', '冯永', '淮安市涟水县锦秀华庭2号楼', '2017-12-11 15:46:31', '冯永', '15189535288', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('46', '顾明国', '南京市栖霞区迈皋桥兰亭雅苑18-104室', '2017-12-11 15:46:31', '顾明国', '13776689508', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('47', '杜勇', '重庆市万州区', '2017-12-11 15:46:31', '杜勇', '13509457110', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('48', '曹永宁', '鼓楼区厚载巷20号', '2017-12-11 15:46:31', '曹永宁', '17715295480', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('49', '宋同瑜', '合肥市新站区天水路与新蚌埠路交口东北角金辉悦府10-106室,不进小区门', '2017-12-11 15:46:31', '宋同瑜', '137392788440551-64288994', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('50', '陆世新', '南通市崇川区外环东路82号喜腾包厂内北边1号仓库/崇川区钟秀路园林路路口向南200米,大东金属内南通天创仓库/', '2017-12-11 15:46:31', '陆世新', '15996614001/15996614001', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('51', '王力民', '溧水中山东路自来水厂对面', '2017-12-11 15:46:31', '王力民', '15952069487', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('52', '王广朋', '深圳市宝安区水口花园西五巷103商铺', '2017-12-11 15:46:31', '王广朋', '13410149100', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('53', '南昌市骏驰电器有限公司', '南昌市东湖区汤家园49号', '2017-12-11 15:46:31', '万向雄', '1587911227013320010220', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('54', '荣盛家用电器', '常州市武进区中凉菜场顾家村45号', '2017-12-11 15:46:31', '关家梁', '18661114798', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('55', '李青松', '四川德阳泰山北路1段121号', '2017-12-11 15:46:31', '李青松', '15181087387', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('56', '孙庆荣', '扬中市物资弄2栋103', '2017-12-11 15:46:31', '孙庆荣', '18952987822', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('57', '陆守东', '泰兴市永大翠景园12-103', '2017-12-11 15:46:31', '陆守东', '13951172995', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('58', '梁华', '铜陵市铜冠花园12-1303', '2017-12-11 15:46:31', '梁华', '13856265944', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('59', '冯东', '江苏省南京市浦口区宁六路20号启泰公司10号仓库', '2017-12-11 15:46:31', '冯东', '13770617335', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('60', '王力民', '溧水中山东路自来水厂对面', '2017-12-11 15:46:31', '王力民', '15952069487', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('61', '陈文胜', '武汉市洪山区建一南路金鹤园小区82栋2单元', '2017-12-11 15:46:31', '陈文胜', '13396077791李/15327114831', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('62', '上海翡诺医药设备有限公司', '上海奉贤沪杭公路1619号', '2017-12-11 15:46:31', '沈经理', '13818143772', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('63', '上海金鼎燃气设备工程有限公司', '龙吴路', '2017-12-11 15:46:31', '陈志强', '2134622162', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('64', '上海海尔家电维修有限公司', '上海海尔家电维修有限公司康定路659号', '2017-12-11 15:46:31', '沈伟', '2133728538', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('65', '镇江美的', '镇江市三茅宫区一区15栋206室', '2017-12-11 15:46:31', '陈洪祥', '13921590992', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('66', '美的服务部', '无锡太湖大道861号与滨湖路交叉路口', '2017-12-11 15:46:31', '高慧勇', '13921142432', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('67', '陈玉贵', '姜堰华东五金城D2－105', '2017-12-11 15:46:31', '陈玉贵', '13641586648', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('68', '任丹', '淮安市淮安区紫金花园16-3，905', '2017-12-11 15:46:31', '任丹', '18752379673', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('69', '湖南郴州市香华润燃气公司', '湖南省郴州市国庆南路延伸段华润有限公司', '2017-12-11 15:46:31', '江虎', '13317355488', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('70', '句容美的', '句容市水岸名居保安室', '2017-12-11 15:46:31', '汪兴权', '13775397053', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('71', '扬中美的', '扬中市公路小区1幢103', '2017-12-11 15:46:31', '许发兵', '13775389022', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('72', '楚州美的', '淮安市楚州区南门大街269#', '2017-12-11 15:46:31', '周贵兵', '13815452827', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('73', '朱克甫', '杭州市拱墅区祥符镇孔家埭45号', '2017-12-11 15:46:31', '朱克甫', '13968134053', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('74', '高氏企业常州美的服务部', '常州市中吴大道775号', '2017-12-11 15:46:31', '王东华', '13776845052', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('75', '张海', '盐城阜宁县百盛花园1-4#门市', '2017-12-11 15:46:31', '张海', '15061646945', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('76', '美的（苏泊尔）', '盐城锦华苑16号104室', '2017-12-11 15:46:31', '耿加贤', '13770076178', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('77', '沭阳美的', '宿迁市沭阳县北京南路25号美的专卖店', '2017-12-11 15:46:31', '沈立伟', '13812410258', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('78', '朱正云', '江都市仙女镇园林路6号', '2017-12-11 15:46:31', '朱正云', '13705250073', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('79', '老板电器', '石家庄市建设南大街150号国富华庭2号商铺', '2017-12-11 15:46:31', '张金亮', '13131101762', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('80', '张新社', '杭州市拱墅区八丈井67号', '2017-12-11 15:46:31', '张新社', '13646814412/15382303071', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('81', '三隆家电常州樱花', '常州天宁区桃园路17号三隆家电', '2017-12-11 15:46:31', '李丽', '13515257538/0519-88109955', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('82', '蔡东/蔡如兵', '盐城市亭湖区伯乐达加州东郡11号303室', '2017-12-11 15:46:31', '蔡东/蔡如兵', '13851348051/13851348051', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('83', '陈洪琴', '泰州东方名邸34-305', '2017-12-11 15:46:31', '陈洪琴', '18994655152', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('84', '陈玉新', '吉林省长春市西南湖大路5622B', '2017-12-11 15:46:31', '陈玉新', '13159779389', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('85', '朱孝龙', '大厂区葛塘松杨路138号(桥北)', '2017-12-11 15:46:31', '朱孝龙', '13404137087', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('86', '梁艳', '湖南岳阳市太阳桥福兴家居广场4-5号', '2017-12-11 15:46:31', '梁艳', '13017207009', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('87', '无锡大市场批发', '无锡市尤渡里华东商贸城西面A45-46号', '2017-12-11 15:46:31', '宋晓春', '18051579750', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('88', '马闯', '宿迁马陵小区城东园区50号', '2017-12-11 15:46:31', '马闯', '13951399795', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('89', '水暖灯具批发', '丹阳市丹金路丹金家园旁198水暖灯具批发', '2017-12-11 15:46:31', '庄晓玉', '13951273375', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('90', '句容华润', '江苏省句容市葛仙小区1幢601', '2017-12-11 15:46:31', '高桂荣', '13625265384（常用）', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('91', '华帝专卖店', '高邮市文游中路82-52号', '2017-12-11 15:46:31', '朱艳红', '13852175366/13773441566', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('92', '徐州新纳', '徐州建国小区42号1单元旁', '2017-12-11 15:46:31', '庄金铭', '13685108823', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('93', '镇江老板售后服务中心', '镇江市万达广场写字楼A座2304室', '2017-12-11 15:46:31', '叶峰', '13511699586', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('94', '江阴城东贯庄56-104', '江阴城东贯庄56-104', '2017-12-11 15:46:31', '祝学伟', '13812580866', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('95', '杨兆银', '溧水财贸新村体育彩票店', '2017-12-11 15:46:31', '杨兆银', '13222767272', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('96', '苏州海尔', '苏州相城区中翔家电城1709号', '2017-12-11 15:46:31', '徐二孩', '18662333435', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('97', '张再扬', '溧水交通路26号A.O专卖店', '2017-12-11 15:46:31', '张再扬', '13905171651', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('98', '吴桂华', '高淳区阳光花园停业维修路', '2017-12-11 15:46:31', '吴桂华', '57336708/13770870052', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('99', '美的售后服务中心', '淮安市清河区健康东路53号', '2017-12-11 15:46:31', '任军', '13511516588', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('100', '张旭', '吴江市油东路961号', '2017-12-11 15:46:31', '张旭', '18913061126', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('101', '智博淮安', '淮安市淮海西路加州城A2栋商业4', '2017-12-11 15:46:31', '王新亮', '13815722210', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('102', '海尔专卖店', '南京建邺区南湖东路37-1', '2017-12-11 15:46:31', '路强', '13382031788', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('103', '顾晓华', '盐城大丰市大华路13号美的售后服务部', '2017-12-11 15:46:31', '顾晓华', '13851013013', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('104', '张宏亮', '溧水寺桥巷133号', '2017-12-11 15:46:31', '张宏亮', '13372035939', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('105', '三洋（康宝服务售后中心）', '南京栖霞区尧新大道66号金尧新村8栋4单元601', '2017-12-11 15:46:31', '钱有明', '15905147636', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('106', '盐城A.O', '亭湖区榆河路11巷-2号', '2017-12-11 15:46:31', '陈国祥', '0515-88306020', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('107', '丹阳阿里斯顿', '丹阳市丹延路首嘉电器', '2017-12-11 15:46:31', '李伟光（丁萍）', '15905291555', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('108', '唐亮', '阜宁县百盛花园28#204', '2017-12-11 15:46:31', '唐亮', '1876122938815862017060', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('109', '德邦大庆道营业厅', '唐山路北区河北里1栋302-1-503', '2017-12-11 15:46:31', '耿朝', '15176571452', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('110', '万和燃气具', '石家庄桥西区平安南大街42君合商务中心院内万和燃气具', '2017-12-11 15:46:31', '郭静', '15373638536', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('111', '福建上杭县中阳管道天然气有限公司/旷远能源（上杭）', '福建龙岩市上杭县东环路28号', '2017-12-11 15:46:31', '陈斌/廖勇', '13859552543/15860163155', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('112', '上海山富燃气用具有限公司', '南翔翔江公路3号桥桥南永乐村288号', '2017-12-11 15:46:31', '王天强/孔阿姨(负责)', '02159120536/02139199006', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('113', '大厂樱花', '南京市大厂区和平中心村3区4排（樱花售后）', '2017-12-11 15:46:31', '史/朱云梅', '18913028856/57022245', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('114', '济南重鲈金贸有限公司', '济南市历下区燕山路2-6号3楼', '2017-12-11 15:46:31', '姚小波', '0531-83197889', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('115', '王道林', '合肥市临泉东路香格里拉花园28-103', '2017-12-11 15:46:31', '王道林', '0551-64247907', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('116', '无锡阿里斯顿', '无锡红星路红星苑8-2阿里斯顿服务中心', '2017-12-11 15:46:31', '邱婷婷/顾志翔(老总)', '15052281583/13806188112/0510-85114377', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('117', '苏州智博商贸有限公司', '苏州市新石路2号中纺机电二楼', '2017-12-11 15:46:31', '董唤梅/祁连珍', '13451670516', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('118', '孙小平', '无锡市金桥商贸城1505-1', '2017-12-11 15:46:31', '孙小平', '15951572133', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('119', '上海能盈燃气设备有限公司/上海智博', '上海江场西路1130号', '2017-12-11 15:46:31', '张春梅/王满', '15026767117/18918978000', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('120', '陈为增', '福州市金山区朝阳路216号琼花苑5#405室', '2017-12-11 15:46:31', '陈为增', '13809535515', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('121', '旷远能源股份有限公司（莆田）', '福建省莆田市西天尾宏发钢材交易市场仓库', '2017-12-11 15:46:31', '倪建敏/周军喜', '18760578652/13850073034', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('122', '郭明', '甘肃省兰州市七里河区瓜洲路168号602室', '2017-12-11 15:46:31', '郭明', '13669332135/18919826596(回访用)', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('123', '桥北海尔', '浦口区丽都雅苑1栋104海尔中央空调门面房', '2017-12-11 15:46:31', '潘付国', '13382027227（仓管）', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('124', '海安美的', '南通海安县江海西路63-5', '2017-12-11 15:46:31', '刘波', '13236096222', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('125', '上海舒博拉尼制药设备有限公司', '', '2017-12-11 15:46:31', '唐伦', '58104141-206', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('126', '宁波方太客服服务部', '中古宁波杭州湾新区滨海二路218号', '2017-12-11 15:46:31', '钟建设', '13586649995', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('127', '上海耐利流体设备有限公司网站', '中国上海上海市上海市松江区富永路758号', '2017-12-11 15:46:31', '王建钗(市场部经理)', '13818020178/021-33521111', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('128', '上海东富龙科技股份有限公司', '上海闵行区放鹤路2199号上海闵行区都会路1509号', '2017-12-11 15:46:31', '朱雪峰', '021-6490621013916187848', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('129', '苏敏静/谭总', '唐山市路北区学院路与长宁道交叉口北行50米路东万和电气', '2017-12-11 15:46:31', '苏敏静/谭总', '13180416530/13831196139', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('130', '王琦', '天津市南开区白堤路（德邦）航天北里3号楼', '2017-12-11 15:46:31', '王琦', '13032281592', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('131', '铜鼓县铜城天然气有限公司', '江西省宜春市铜鼓县铜城天然气/铜鼓县铜城西路202号（新开小区）', '2017-12-11 15:46:31', '熊伟/王新忠', '15970568570/15727569918', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('132', '乐至港华燃气有限公司', '乐至县天池镇农经路78号', '2017-12-11 15:46:31', '李峰', '028-23331113', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('133', '上海志冉(上海海浩)(上海海华)', '上海宝山区康陆路225号上海海浩燃气气具有限公司', '2017-12-11 15:46:31', '贾庚发', '13636302308', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('134', '上海志冉凯王', '浦东川沙合庆镇东川公路5237号', '2017-12-11 15:46:31', '帅正宏', '50682055', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('135', '上海志冉/浙江升博', '嵊州市三江街道仙葫路1458号绍兴升博厨房电器', '2017-12-11 15:46:31', '钱丹丽', '57583708177', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('136', '樱花厨卫中国有限公司/上海志冉', '昆山市青阳南路一号', '2017-12-11 15:46:31', '蔡忠利(仓库)/刘苏杰', '13063755180/13174108462/13862951522', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('137', '曾小荣', '昆山市青阳南路79号', '2017-12-11 15:46:31', '曾小荣', '15371476928', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('138', '朱永兵', '安徽省马鞍山市花山美居杰杰五金大卖场', '2017-12-11 15:46:31', '朱永兵', '13365552323', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('139', '丁玲', '安徽省芜湖商博城G区1栋110-111号', '2017-12-11 15:46:31', '丁玲', '15385867198', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('140', '洪新艺', '安徽省马鞍山市花山区车站路3号', '2017-12-11 15:46:31', '洪新艺', '13956231668', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('141', '盛茂贵', '安徽省芜湖市长江市场园精品五金厅G5-G6', '2017-12-11 15:46:31', '盛茂贵', '13866394948', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('142', '大宏五金建材商店', '安徽省马鞍山市花山区佳山路（明珠财富广场斜对面）', '2017-12-11 15:46:31', '汪文华', '18726006255', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('143', '王开浩', '安徽省芜湖市银湖南路9号（皖南医学院斜对面100米）', '2017-12-11 15:46:31', '王开浩', '13866397232', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('144', '余志保', '安徽省芜湖长江市场园E区7001号', '2017-12-11 15:46:31', '余志保', '18226725866', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('145', '老乔五金', '徐州市升辉装饰市场新五厅负一层A156号', '2017-12-11 15:46:31', '老乔', '13852480110', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('146', '陈老板', '溧水老金宝对面星源管业', '2017-12-11 15:46:31', '陈老板', '13915933767', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('147', '俞百红', '溧水新金宝市场', '2017-12-11 15:46:31', '俞百红', '18951037502', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('148', '王涛', '山东省蓬莱市南关路56号', '2017-12-11 15:46:31', '王涛', '13963861036', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('149', '志和燃气具配套有限公司', '山东省烟台市芝罘区幸福中路186-8号', '2017-12-11 15:46:31', '郭新茂', '15966500701', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('150', '沈艳', '江苏靖江振达小区3懂104', '2017-12-11 15:46:31', '沈艳', '13961086467', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('151', '陈素萍', '苏州高新区横塘好易家家居广场2栋266号', '2017-12-11 15:46:31', '陈素萍', '0512-62397116', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('152', '高明军', '安徽省芜湖市商品交易博览城C区10栋127-128', '2017-12-11 15:46:31', '高明军', '13909638054', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('153', '吉乃尔商贸有限公司', '安徽省芜湖市瑞丰商博城二期K区2栋101-110（农行对面）', '2017-12-11 15:46:31', '艾克翠/艾蒙雁', '13776641638/0553-3828781/15349891081', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('154', '彭女士', '镇江市天桥路时代城6-1505', '2017-12-11 15:46:31', '彭女士', '15152906621', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('155', '榕坤酒店设备', '福州市晋安区新店镇战峰村工业区内', '2017-12-11 15:46:31', '林经理', '18605073519', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('156', '贾会计/娄(回访)', '高邮市北海子河边3号美的专卖店', '2017-12-11 15:46:31', '贾会计/娄(回访)', '15050761298/15951055205', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('157', '徐经理', '河南信阳富地燃气', '2017-12-11 15:46:31', '徐经理', '13939731839', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('158', '李田君', '昆明市官渡区宏路高原明珠国际五金机电商城C4-12号', '2017-12-11 15:46:31', '李田君', '13888114664', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('159', '刘国华', '江苏泰兴市万桥路32#', '2017-12-11 15:46:31', '刘国华', '15961020930', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('160', '王炜/王老板(客访)', '徐州和平路104号', '2017-12-11 15:46:31', '王炜/王老板(客访)', '15062126905/13952116955', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('161', '徐州市徐天家用电器有限责任公司', '徐州市徐州人家小区4-5-4-202室（南门东50米）', '2017-12-11 15:46:31', '刘艳梅/韩亚静', '13913455977/83643120', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('162', '张安喜', '徐州丰县人民北路欢乐购超市美的售后', '2017-12-11 15:46:31', '张安喜', '13912017737', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('163', '陈胜才', '姜堰市通杨中路24号-1号301/姜堰区马厂小区附15-203室（府西人家北门对面）', '2017-12-11 15:46:31', '陈胜才', '18952658396', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('164', '吴艳/韩步龄', '靖江市靖安苑东大门水暖电店', '2017-12-11 15:46:31', '吴艳/韩步龄', '13961023238/13815983850', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('165', '姜彬', '扬州市宝应县莲花路北一巷4号', '2017-12-11 15:46:31', '姜彬', '13852180423', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('166', '罗剑平', '镇江市檀山路万科物业处', '2017-12-11 15:46:31', '罗剑平', '15896387997', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('167', '张宇', '江都市龙城路31号', '2017-12-11 15:46:31', '张宇', '13852208392', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('168', '魏晶晶', '江苏省宿迁市沭阳县浙江商城18-20号', '2017-12-11 15:46:31', '魏晶晶', '15862913626', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('169', '王建', '扬州江都区长江东路女神公寓配电房旁', '2017-12-11 15:46:31', '王建', '13813166646', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('170', '辛小平', '靖江靖西五队', '2017-12-11 15:46:31', '辛小平', '13914536989', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('171', '杜梅', '扬州市南通西路79号秦淮花园4-106', '2017-12-11 15:46:31', '杜梅', '13665208998', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('172', '邵泽亮', '1、江苏丰县中阳大道19号四维卫浴2、江苏丰县中阳大道290-11号林内专卖店', '2017-12-11 15:46:31', '邵泽亮', '13151793090', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('173', '镇江海尔', '江苏镇江市洒海街23号108鹏程家用电器服务中心', '2017-12-11 15:46:31', '王广武', '18952811234', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('174', '郭俊杰', '湖北襄阳市大庆路唐家台', '2017-12-11 15:46:31', '郭俊杰', '18995669015', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('175', '南通光明', '苏州市东环路655号创智赢家商务中心E座105室', '2017-12-11 15:46:31', '朱佰言', '18136778251/0512-87660018', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('176', '江都新都南路/张刚五文化', '江苏省扬州市江都区仙女镇长江东路东方苑小区2-5号车库', '2017-12-11 15:46:31', '徐有顺', '13064891721/18921944048', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('177', '镇江方太', '镇江市大西路55号京润国际1-403', '2017-12-11 15:46:31', '吴亦炜', '18206101759', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('178', '顾志明/张女士(回访)', '南通市长江中路400号3号楼5楼', '2017-12-11 15:46:31', '顾志明/张女士(回访)', '13901481272/0513-85113767', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('179', '天力燃气有限公司', '江阴市益健路94井', '2017-12-11 15:46:31', '张洪涛', '13921216234', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('180', '常州樱雪', '常州市钟楼区桂花苑19栋403室', '2017-12-11 15:46:31', '胡玉强', '15995060701', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('181', '镇江樱花厨卫', '镇江京口区智慧大道东城绿洲东大门南门面房', '2017-12-11 15:46:31', '张红梅', '15952861360', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('182', '森歌集成厨房电器', '溧水阳光家苑门面房北侧森歌专卖店（金宝市场斜对面）', '2017-12-11 15:46:31', '刘照亮', '13851456722/18761624135/传真56215969', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('183', '共和水暖', '南京市溧水区金宝市场D区21号', '2017-12-11 15:46:31', '徐立明', '57215789/13813070900', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('184', '马鞍山远东燃气具批发维修中心', '安徽省马鞍山市武警新村底商', '2017-12-11 15:46:31', '李宏灿', '0555-2453104/13955577869', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('185', '李卫东', '江苏省徐州市丰县荟园小区3号楼2单元', '2017-12-11 15:46:31', '李卫东', '15298701839', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('186', '南京溧水宏方电子科技有限公司/海尔售后', '南京市溧水县龙山路10-1号', '2017-12-11 15:46:31', '方巧生/杨勇', '66652088/传真57428251/13770700757/13057650537(杨)', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('187', '李老板', '盐城大丰市康平小区1号楼101', '2017-12-11 15:46:31', '李老板', '13851014845', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('188', '溧阳汇洋厨房设备有限公司', '溧阳市南大街延伸路210号', '2017-12-11 15:46:31', '江翔', '13961287805/13182439026/0519-87926333(传真', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('189', '李斌', '溧阳市南阳新村2区2栋3号门102室', '2017-12-11 15:46:31', '李斌', '18961136789', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('190', '徐伟', '江苏省盐城市大丰区大中镇新东苑一期（南门）聚兴超市', '2017-12-11 15:46:31', '徐伟', '15371168889', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('191', '王兴美', '安徽省芜湖市瑞丰商博城C区9栋102室', '2017-12-11 15:46:31', '王兴美', '13955363629', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('192', '徐春林', '溧水区天生桥大道新金宝帅康专营店', '2017-12-11 15:46:31', '徐春林', '18012937913', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('193', '南京红太阳', '南京市雨花开发区汽渡路12号弘阳装饰城a2区518', '2017-12-11 15:46:31', '朱成良', '13390789898', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('194', '李国美2', '昆山市宝益路89号中三楼光芒', '2017-12-11 15:46:31', '李国美2', '13584902737', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('195', '扬中市月星家具方太柏橱', '', '2017-12-11 15:46:31', '王先生', '13852904253', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('196', '王会恒', '苏州金闾新城金储街288号7楼702室', '2017-12-11 15:46:31', '王会恒', '13636662766', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('197', '王晓文', '徐州市和平路104号（林内热水器专卖）', '2017-12-11 15:46:31', '王晓文', '0516-83803955', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('198', '吴女士', '扬中市新世界花苑16-502（车库）', '2017-12-11 15:46:31', '吴女士', '18796079695（李磊？）', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('199', '吴超', '镇江市润州区镇宝路高家门油库1栋301室/（南门汽车站后万达驾校旁）', '2017-12-11 15:46:31', '吴超', '15952922731', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('200', '周家林', '南京建邺区南湖玉塘东街4-20号(发货前问清收货人！）', '2017-12-11 15:46:31', '周家林', '13951021778/86650180周华美/15952032114', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('201', '南京众志燃气设备有限公司', '', '2017-12-11 15:46:31', '沈众凯', '13913011837', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('202', '杜勇', '江西省九江市九龙街青竹路阳光锦城10一3一202', '2017-12-11 15:46:31', '杜勇', '13755735553', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('203', '四川欧诚卫浴', '1、四川成都市青白江区青龙国际建材城3区11栋108号/成都市城北派送部（发德邦时用此地址）', '2017-12-11 15:46:31', '谭斌', '13558610382', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('204', '江涛', '上海闸北区三泉路999弄98号201', '2017-12-11 15:46:31', '江涛', '13916393429', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('205', '钱存财', '姜堰市新世纪花园2号204室', '2017-12-11 15:46:31', '钱存财', '15052336576', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('206', '鸽力电器', '嵊州市三江工业园区仙湖路1428号', '2017-12-11 15:46:31', '沣冬友', '15958561165', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('207', '上海享华公司', '上海市闵行区浦江镇江凯路123号申花工业园燃气部1楼', '2017-12-11 15:46:31', '宋老板', '15026762537', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('208', '朱常春', '上海浦东区巨峰路995弄61号一1', '2017-12-11 15:46:31', '朱常春', '18217298157', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('209', '申花厨卫', '杨浦区内江路260号（靠近周家嘴路）12号仓库', '2017-12-11 15:46:31', '徐先生/张先生', '13701630821', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('210', '大华燃气有限公司', '江西省宜春市奉新县', '2017-12-11 15:46:31', '廖经理杜勇', '1361795337513755735553', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('211', '池老板', '南京市光华路石门坎装饰大世界', '2017-12-11 15:46:31', '池老板', '025-85016300', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('212', '李经理', '上海浦东获山村获山路和平队王家圈206号2楼', '2017-12-11 15:46:31', '李经理', '025-50657113', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('213', '王仕财', '厦门湖里区兴隆路第三中学仓库', '2017-12-11 15:46:31', '王仕财', '13666025668', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('214', '胡文广', '安徽省芜湖市三山区经济开发区贝斯特工业园', '2017-12-11 15:46:31', '胡文广', '13355533737', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('215', '沈文明/武（苏州）', '无锡市崇安区广益佳苑638号602', '2017-12-11 15:46:31', '沈文明/武（苏州）', '13057234706/18914073832', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('216', '南京惠佳供暖工程安装有限公司', '南京市秦淮区文安街红花村160号C座-225', '2017-12-11 15:46:31', '张以松', '13770914988/025-52635943/025-52635934(传真)', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('217', '杨树兵', '', '2017-12-11 15:46:31', '杨树兵', '13914712355', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('218', '藏先生', '浦口区江岸水城29-103门面房国庆五金建材', '2017-12-11 15:46:31', '藏先生', '13813898413', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('219', '格兰仕海尔售后维修（扬州）', '扬州江阳西路98号（万都机电城A6-3015）', '2017-12-11 15:46:31', '李文武', '18912136208', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('220', '多品牌的售后维修', '2、扬州市江都区金牛湾建材市场老板电器楼上', '2017-12-11 15:46:31', '王健', '13813166646', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('221', '南京名轩电器售后服务有限公司/阿里斯顿（浦口）', '天润城八街区22栋1102室', '2017-12-11 15:46:31', '江东', '13305161448', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('222', '万和电器', '江苏省宿迁市泗洪县青阳南路31-6号（万和电气）东风菜场东门南侧', '2017-12-11 15:46:31', '马继林', '13951298876', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('223', '阜宁泰达燃气有限公司', '盐城市阜宁县向阳路东首阜宁泰达燃气有限公司', '2017-12-11 15:46:31', '姜超', '13770164728/15358218616', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('224', '刘卫国', '安徽淮南市田家庵区国庆街道/朝阳东路与淮舜路交汇处东南角东方明珠小区二栋2403室', '2017-12-11 15:46:31', '刘卫国', '18063007979/05542107828', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('225', '圣开江', '扬州市高邮市东营巷23号', '2017-12-11 15:46:31', '圣开江', '13921923227', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('226', '邓先生', '南京市六合区金盛国际家居方新路1号', '2017-12-11 15:46:31', '邓先生', '13921415881', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('227', '开心厨具有限公司', '上海沪青平公路4501弄129号', '2017-12-11 15:46:31', '姚经理', '021-59859630(周）', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('228', '孙庆荣', '扬中市物质2弄2栋103', '2017-12-11 15:46:31', '孙庆荣', '18952987822', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('229', '淮安市淮东路165-4太阳雨太阳能专卖店', '淮安市淮东路165-4太阳雨太阳能专卖店', '2017-12-11 15:46:31', '张树兰', '13770402729', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('230', '张平', '南京市建邺区福园街福园小区18-2', '2017-12-11 15:46:31', '张平', '13813893338', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('231', '路翔', '南京市建邺区南湖东路37号-1电话', '2017-12-11 15:46:31', '路翔', '13382031788', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('232', '扬中市月星家具方太柏橱 ', '扬中市江洲西路218号方太专卖店', '2017-12-11 15:46:31', '王玉明', '13952904253', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('233', '熊言信', '马鞍山市当涂县姑孰路万和专卖店', '2017-12-11 15:46:31', '熊言信', '13721249051', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('234', '李磊', '扬中新世界花苑16-502', '2017-12-11 15:46:31', '李磊', '18796079695', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('235', '徐州大新暖通设备工程有限公司/(博容节能设备(徐州)营销中心)', '徐州市矿山路30号枫林绿洲商铺1#-1-114', '2017-12-11 15:46:31', '赵华', '13092333533/0516-66633833/66638833/www.xzdxnt.com', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('236', '鑫安燃气用品经营部', '湖北省荆州市红星北路25-5号', '2017-12-11 15:46:31', '张丹/朱建雄', '13908616761', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('237', '南京玉环达盛热水器有限公司', '南京市雨花区雨花南路51号', '2017-12-11 15:46:31', '朱栋', '13951806351', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('238', '湖北襄阳市洛卡冷暖设备有限公司', '湖北省襄阳市襄州区伙牌镇东莞工业城A区F6栋', '2017-12-11 15:46:31', '陈礼平', '138716582900710-3499208', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('239', '高修智', '泰兴市南门曹堡新村1租', '2017-12-11 15:46:31', '高修智', '15850858030', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('240', '刘酒粮', '迈皋桥和燕路388号', '2017-12-11 15:46:31', '刘酒粮', '15895851280', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('241', '谭毅敏', '海南省海口市龙华区城西路苍西村5-1号', '2017-12-11 15:46:31', '谭毅敏', '13976612180', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('242', '武汉市懋宁燃气器具技术服务有限公司', '武汉市武昌区徐家棚街三角路新村1号，美城清芷园小区紫薇二单元302', '2017-12-11 15:46:31', '潘腊娥/王伟', '15827263751/13163326828/027---82339803', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('243', '闯恒宇', '沈阳市和平区南十马路1-3号玉麟花园1号2-24-1', '2017-12-11 15:46:31', '闯恒宇', '15734057111', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('244', '南京尊朗电器有限公司（老板）', '南京市雨花区安德门大街加油站旁宁丹路9-10号', '2017-12-11 15:46:31', '刘飞虎', '13951692513', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('245', '汪云龙', '安徽省无为县姚湾小区6号505', '2017-12-11 15:46:31', '汪云龙', '13500518740', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('246', '王健', '南京建邺区南湖107号', '2017-12-11 15:46:31', '王健', '13951800123', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('247', '孙宏伟', '南京中和桥七桥翁', '2017-12-11 15:46:31', '孙宏伟', '13675138673', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('248', '嵊州东田电器', '浙江嵊州剡湖街道禹溪村东侧高速驾校内', '2017-12-11 15:46:31', '潘东友', '15958561165', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('249', '王志刚', '六合区雄洲街道汇锦水岸城一幢圣德橱柜', '2017-12-11 15:46:31', '王志刚', '13032544339', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('250', '窦军', '江苏省扬中市月星家居', '2017-12-11 15:46:31', '窦军', '13952904253', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('251', '杨兵', '南京市浦口区盘龙山庄20栋603室', '2017-12-11 15:46:31', '杨兵', '13451888624/18192785057', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('252', '南京华宇家电服务有限公司', '鼓楼区边城世家1-1-2003', '2017-12-11 15:46:31', '潘志华', '13913985260/025-58817949', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('253', '曹倩', '江苏太仓市之江国际15-1幢113-118百家居', '2017-12-11 15:46:31', '曹倩', '18906228218', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('254', '江国秋', '广州天河区东圃桃园路桃苑A2', '2017-12-11 15:46:31', '江国秋', '13609087076', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('255', '何伟谦', '广东省佛山市顺德区北滘林港新业二路1号', '2017-12-11 15:46:31', '何伟谦', '13823479246', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('256', '苏州二叶制药有限公司', '苏州市相城区黄埭镇东桥安民路1号', '2017-12-11 15:46:31', '吴祥钢', '13771850882', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('257', '上海洪璟实业有限公司', '上海市闵行区都会路368号2幢1110室', '2017-12-11 15:46:31', '朱斌锋', '13918453945', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('258', '湖熟宜玖厨具工程有限公司', '南京市江宁区湖熟镇民族工业园8号', '2017-12-11 15:46:31', '任国建', '13770911270', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('259', '万光东', '南昌市朝阳州南路怡宾花苑3号仓库', '2017-12-11 15:46:31', '万光东', '18970818126', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('260', '胡进', '扬州市施井路杨名苑4栋102室', '2017-12-11 15:46:31', '胡进', '13637289000', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('261', '上海科茂厨卫电器有限公司', '上海浦东唐镇春雅路528号', '2017-12-11 15:46:31', '陈经理', '021-58967271/13918874070', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('262', '夏总', '姜堰区西野行193号406室', '2017-12-11 15:46:31', '夏总', '13196944776', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('263', '林经理', '闵行区梅陇镇兴南路7号户吉仓库', '2017-12-11 15:46:31', '林经理', '13482324211', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('264', '丁晔梅', '大丰市万和花园18号506', '2017-12-11 15:46:31', '丁晔梅', '18905113086', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('265', '马义成', '溧阳市体育路小区4-3-301', '2017-12-11 15:46:31', '马义成', '13915005079', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('266', '黑龙江省特特环境设备有限公司', '大庆市让胡路区奥林国际公寓E区1号写字楼办公室401室', '2017-12-11 15:46:31', '陈小龙', '18645979399', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('267', '张红丽', '1、郑州未来路与石化路交叉（天地华宇郑州6号网点）2、郑州管城区城南路191号水木居3-3-102', '2017-12-11 15:46:31', '张红丽', '13523713088/0371-66818618', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('268', '甘肃和龙商贸有限公司', '甘肃省兰州市嘉峪关路155号', '2017-12-11 15:46:31', '韩娟', '18793101644', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('269', '郭向南', '无锡堰桥街道塘头村塘新路56号', '2017-12-11 15:46:31', '郭向南', '15806171689', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('270', '泰兴市机电设备安装有限公司', '四川省南充市嘉陵区化工园区晟达化工(杨斌)', '2017-12-11 15:46:31', '周玉明/杨斌', '15896073288/13382575080', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('271', '姜堰市新世纪波纹管有限公司', '江苏姜堰市白米曙光工业园区', '2017-12-11 15:46:31', '黄先生', '13641596428', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('272', '小田', '南京市雨花区板桥黑墩路88号（金地自在城附近）', '2017-12-11 15:46:31', '小田', '13584016986', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('273', '吴立清', '泰州市兴化市府东花园北区16号楼四号车库', '2017-12-11 15:46:31', '吴立清', '13815916089', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('274', '李永亮', '河南省漯河市泰山路', '2017-12-11 15:46:31', '李永亮', '13633957976', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('275', '王新光', '江苏省盐城市开放大道89号，高力酒店用品城', '2017-12-11 15:46:31', '王新光', '15295311132', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('276', '胡立萍', '南通市通州区天虹苑12-307', '2017-12-11 15:46:31', '胡立萍', '13773865448', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('277', '靖江市新建北路322-2美的售后', '靖江市新建北路322-2美的售后', '2017-12-11 15:46:31', '王华', '13961020227', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('278', '胡松', '南京市银龙花园四期9幢103室', '2017-12-11 15:46:31', '胡松', '15905149994', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('279', '潘东友', '浙江嵊州剡湖街道禹溪村东侧高速驾校内', '2017-12-11 15:46:31', '潘东友', '15958561165', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('280', '胡光荣', '安徽省芜湖瑞丰商博城k区9栋108-109', '2017-12-11 15:46:31', '胡光荣', '13905531789', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('281', '朱永喜', '南通市崇州区锦安花园33-204', '2017-12-11 15:46:31', '朱永喜', '13390948637', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('282', '南京晟柏琳厨房设备维修服务中心', '南京市鼓楼区幕府西路金达花园9-106', '2017-12-11 15:46:31', '陈建亮', '18705177458/025-83722948/83724019', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('283', '张有青', '南京六合区东沟镇金塘村卫家塘85号', '2017-12-11 15:46:31', '张有青', '18061225398', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('284', '王廷阳', '南京市秦淮区应天大街588号（银桥市场中81-83号）', '2017-12-11 15:46:31', '王廷阳', '13851806268', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('285', '罗刚', '南京市秦淮区太平南路西一新村2104室', '2017-12-11 15:46:31', '罗刚', '18951755318', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('286', '无锡阿里斯顿', '无锡红星路红星苑8-2阿里斯顿服务中心', '2017-12-11 15:46:31', '邱婷婷/顾志翔(老总)', '15052281583/13806188112/0510-85114377', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('287', '方庚柱', '连云港市新浦区通灌南路国安商城1-57号', '2017-12-11 15:46:31', '方庚柱', '15861227799', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('288', '安徽格斯波纹管有限公司', '1、安徽合肥市龙岗开发区上林雅苑十七号楼504室2、安徽合肥蜀山区小庙工业园皇嘉路3、合肥市双凤工业园凤锦路附60号', '2017-12-11 15:46:31', '王建华张国寿', '1390162119213003082036', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('289', '潘弟官', '江苏省连云港新浦区五金机电城A-27号', '2017-12-11 15:46:31', '潘弟官', '18961373280', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('290', '天然之家整体衣柜、橱柜店', '福州罗源县滨海新城风情商业街A4-01', '2017-12-11 15:46:31', '黄美红葛礼茂', '13960631368/18850772386', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('291', '周伟', '上海宝山南陈路278号', '2017-12-11 15:46:31', '周伟', '18221160008', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('292', '中国中材国际工程股份有限公司技术中心', '南京江宁开发区将军大道106号', '2017-12-11 15:46:31', '刘志国', '13951806025', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('293', '上海均阳，上海威能', '上海市嘉定区封滨镇黄家花园路565号310室', '2017-12-11 15:46:31', '朱小春', '15021163693', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('294', '关家梁', '常州市武进区凉菜场顾家村45号', '2017-12-11 15:46:31', '关家梁', '18661114798', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('295', '刘海峰', '天津市塘沽区远洋城滨悦花园11-1-101', '2017-12-11 15:46:31', '刘海峰', '15522136376', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('296', '韩呈山', '河北省邯郸市丛台区苏曹河西村南北大街3号', '2017-12-11 15:46:31', '韩呈山', '13730045648', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('297', '上海思吾艺实业有限公司', '上海浦东祝桥南祝路5823号', '2017-12-11 15:46:31', '李小龙', '13764890818/021-20915625/20915309传真', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('298', '潜江市科普燃气具安装工程公司', '潜江市园林办事处章华北路6号荆门市京山县人明大道188号', '2017-12-11 15:46:31', '卫昌勇', '153072286880728-6232199', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('299', '太阳雨太阳能专卖店', '淮安市楚州区商贸城对面太阳雨太阳能专卖店', '2017-12-11 15:46:31', '张素芹', '051785929009/13770402729', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('300', '柯学民', '马鞍山花山区中岗三村2-107号昆山市昆山市前进西路共青小区41-202', '2017-12-11 15:46:31', '柯学民', '13401441893', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('301', '夏总', '上海宝山区顾陈路171号', '2017-12-11 15:46:31', '夏总', '13801882738', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('302', '黄荣发', '浙江省建德市大洋镇', '2017-12-11 15:46:31', '黄荣发', '15988859897', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('303', '徐国强', '浙江建德市新安江山水华庭三号家能热水器', '2017-12-11 15:46:31', '徐国强', '18158712330', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('304', '江晓梅', '江苏省宿迁市宿城区果园创业路18号（美的售后）', '2017-12-11 15:46:31', '江晓梅', '18652707388', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('305', '于周欣', '青岛市城阳区康城路229号', '2017-12-11 15:46:31', '于周欣', '18661787995', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('306', '施小宏', '昆山中华园路万丰苑17-703', '2017-12-11 15:46:31', '施小宏', '13405193476', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('307', '王学娣', '南京雨花区安德新里20号8栋303室', '2017-12-11 15:46:31', '王学娣', '13057691002', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('308', '洪国华', '芜湖瑞丰商博城c区11栋109号', '2017-12-11 15:46:31', '洪国华', '15385867688', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('309', '倪久武', '南京江宁区岔路口明嘉园11栋107室浩顺浴室', '2017-12-11 15:46:31', '倪久武', '13809039832', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('310', '徐亮', '天津市滨海新区大港七邻里11-3-102', '2017-12-11 15:46:31', '徐亮', '13512879115', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('311', '李振江', '连云港市新宿浦区南极南路远方公寓24-10号海尔售后服务中心', '2017-12-11 15:46:31', '李振江', '15366662297/13776499925', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('312', '孙占军', '连云港市新浦九龙城市乐园11-1—302室', '2017-12-11 15:46:31', '孙占军', '18661261129', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('313', '殷茂良', '扬州市施井路杨名苑4栋102室', '2017-12-11 15:46:31', '殷茂良', '15151323528', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('314', '六安市开源通用机电销售公司', '六安市大别山路香樟公寓13号楼107号', '2017-12-11 15:46:31', '荣发余', '13856478828/13516452915', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('315', '朱舰', '淮安市盱眙县陵园路65—3号', '2017-12-11 15:46:31', '朱舰', '18915165986/18762046982', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('316', '伟星管业', '南京市雨花台区弘阳装饰城A5区4栋424—426', '2017-12-11 15:46:31', '沈华娟', '13813945225', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('317', '董从瑞', '雨花台区春江新城正和坊13-1-102', '2017-12-11 15:46:31', '董从瑞', '13813891975', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('318', '刘维龙', '高淳富馨花园', '2017-12-11 15:46:31', '刘维龙', '13770878108', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('319', '肖飞', '上海市闵行区梅陇镇兴南路7号', '2017-12-11 15:46:31', '肖飞', '021-64663191', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('320', '王世取', '南京市应天大街588号银桥市场1楼中区4号（中间电梯底下）', '2017-12-11 15:46:31', '王世取', '13770768276/52432865', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('321', '朱经理', '上海闵行区春都路88弄56号101', '2017-12-11 15:46:31', '朱经理', '13761596223', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('322', '唐保全', '南通市崇川区钟秀路与园林路交界处往南200米(大东金属里面南通天创冷暖)', '2017-12-11 15:46:31', '唐保全', '18862922955', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('323', '钟艺丰', '长沙市雨花区沙湾路体院巷一号长沙电工器材总厂', '2017-12-11 15:46:31', '钟艺丰', '0731-82061111', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('324', '黄麟均', '无锡市滨湖区塘南路112号招商城WW区110号', '2017-12-11 15:46:31', '黄麟均', '15052277111', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('325', '刘光林', '江苏南京市浦口区新城装饰城1018号', '2017-12-11 15:46:31', '刘光林', '18362096115/13813914219', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('326', '蓝剑', '南昌市安石路同盟嘉苑小区1栋二单元1001室', '2017-12-11 15:46:31', '蓝剑', '13870055066', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('327', '孙鹏辉', '郑州市东大街59号福华大厦A座1204室', '2017-12-11 15:46:31', '孙鹏辉', '13523713088', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('328', '张凯', '武汉市东西湖三秀路团结村658号', '2017-12-11 15:46:31', '张凯', '13545285670/027-85645036', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('329', '陈爰忠', '泰兴市黄桥镇银杏路296号好夫人电器', '2017-12-11 15:46:31', '陈爰忠', '15195295993', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('330', '华宇潘', '南京市鼓楼区白云亭8号边城世家1-1-2003', '2017-12-11 15:46:31', '华宇潘', '025-58817949/13913985260', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('331', '郭富贵', '安徽省宣城市广德县桃州镇横山南路华帝专卖店', '2017-12-11 15:46:31', '郭富贵', '15956281888', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('332', '丛军', '上海市宝山区长江路366弄370号能率', '2017-12-11 15:46:31', '丛军', '13052475331', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('333', '龚震', '上海市青浦区崧盈路1299号', '2017-12-11 15:46:31', '龚震', '13501769963', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('334', '茆艾健', '淮安市开发区明发摩尔城1号楼', '2017-12-11 15:46:31', '茆艾健', '18932345110', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('335', '杨留保', '南京市溧水区金桥镇杭村街道海尔电器', '2017-12-11 15:46:31', '杨留保', '15105186221', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('336', '施燕', '江西省九江市九龙街天缘小区', '2017-12-11 15:46:31', '施燕', '13979239783', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('337', '王泽选', '南京市应天大街588号银桥市场1楼北区44号，新辉水暖', '2017-12-11 15:46:31', '王泽选', '13951767765/02552458177', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('338', '杨斌', '淮安市淮安区国际商城b6锦源建材', '2017-12-11 15:46:31', '杨斌', '13852257998', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('339', '孙部长', '马鞍山花山区慈湖国家高新区笔架山路1166号', '2017-12-11 15:46:31', '孙部长', '13696736175', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('340', '李鹏涛', '济南市历城区烈士山东路10号院', '2017-12-11 15:46:31', '李鹏涛', '15866790377', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('341', '史名军', '武昌区徐家棚街三角路新村1号,美城清芷园小区紫薇二单元302', '2017-12-11 15:46:31', '史名军', '15926270781', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('342', '李巧玲', '汉阳区汉阳大道642号金龙花园1栋3-6号门面', '2017-12-11 15:46:31', '李巧玲', '13407162001', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('343', '邢华', '浦东惠南镇听潮路宣黄公路口浙江宝业万华城工地', '2017-12-11 15:46:31', '邢华', '18951327611', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('344', '李德彪袁文官', '浦东南汇惠南，宣黄公路2588弄吉园坊24号302室', '2017-12-11 15:46:31', '李德彪袁文官', '13851618948/18101906597', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('345', '吕小红', '泰州市姜堰区华东五金城E区2幢103-106。', '2017-12-11 15:46:31', '吕小红', '18252615156/O523-82289058', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('346', '孙爱民', '姜堰市华东五金城H1-107-108日月厨具批发', '2017-12-11 15:46:31', '孙爱民', '15861010681/0523-82285028', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('347', '周卫东', '泰兴市根思乡玉秀村4队', '2017-12-11 15:46:31', '周卫东', '13655264076', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('348', '万建钦', '南昌市安石路8号抚河明珠小区1号楼-，二层', '2017-12-11 15:46:31', '万建钦', '13907089030', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('349', '谢艳', '南京建邺区所街66号城开怡家地下室', '2017-12-11 15:46:31', '谢艳', '025-58498896', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('350', '王女士', '郑州管城回族区三里岗街道未来路与凤凰路交叉口向北20米路东,华蒂专卖店', '2017-12-11 15:46:31', '王女士', '0371-86021531', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('351', '涂小辉', '西湖区莱茵半岛花园10栋一单元一楼（华帝售后）', '2017-12-11 15:46:31', '涂小辉', '13330121779', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('352', '王进', '南通市海安县通榆中路58号9（四通水暖）', '2017-12-11 15:46:31', '王进', '13083575499', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('353', '黄如意', '南京市雨花区板桥红太阳装饰城A1区317号', '2017-12-11 15:46:31', '黄如意', '13851942318', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('354', '锦明/上海美的', '上海浦东新区书院镇丽正路1512号贵贵科创园', '2017-12-11 15:46:31', '李良', '15821461907', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('355', '上海开心厨具', '沪青平公路4501弄129号', '2017-12-11 15:46:31', '姚经理', '021-59859630', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('356', '高永峰', '郑州郑汴路与未来路交叉口向南300米路西', '2017-12-11 15:46:31', '高永峰', '137039222300371-66354011', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('357', '欣达五金商行', '郑州市未来路厨具市场新南区12号', '2017-12-11 15:46:31', '谷国政', '0371-66323242/13073767169', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('358', '潘彦博', '郑州市郑密路126号亚星盛世郦都5号楼3103', '2017-12-11 15:46:31', '潘彦博', '15516980216', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('359', '郭光华', '郑州市郑汴路东明路交叉口东南角', '2017-12-11 15:46:31', '郭光华', '13700857882', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('360', '樱花卫厨中国股份有限公司郑州分公司', '郑州市二七区京广路与长江路交叉口西200米路南', '2017-12-11 15:46:31', '宋经理', '18037673933', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('361', '昌玉峻', '浦东惠南镇听潮路宣黄公路口浙江宝业万华城', '2017-12-11 15:46:31', '昌玉峻', '13611826544', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('362', '方东阳', '连云港市万家欣装饰城北五区8-9号', '2017-12-11 15:46:31', '方东阳', '13851262910', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('363', '李增华', '湖北襄阳市南漳县金漳大道首耀1号商铺方太厨电体验馆', '2017-12-11 15:46:31', '李增华', '18086139898', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('364', '陆经理', '高邮市新华园5-4.6室', '2017-12-11 15:46:31', '陆经理', '13952558006', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('365', '张明', '南京市雨花区喜善花园安嘉东苑5栋2单元', '2017-12-11 15:46:31', '张明', '13813823560', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('366', '马毅', '江宁区东山街道章村产业园城北路27号', '2017-12-11 15:46:31', '马毅', '18018031783', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('367', '陈兵朋', '长沙市雨花区沙湾路体院巷湖南电工器材总厂', '2017-12-11 15:46:31', '陈兵朋', '13875843518', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('368', '施军', '江苏省太仓市南郊盛园小区8-2101', '2017-12-11 15:46:31', '施军', '15190139108', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('369', '佟煜', '郑州市管城区未来路货栈街交叉口向南150米路西史密斯专卖店', '2017-12-11 15:46:31', '佟煜', '15038528811', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('370', '成秀凤', '盐城市大丰市工农西路147号万和厨电器专卖店', '2017-12-11 15:46:31', '成秀凤', '189125214180515—83511418', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('371', '曾永林', '六合区北外环135号', '2017-12-11 15:46:31', '曾永林', '15951786531', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('372', '帅龙强', '南昌市西湖区灌婴路滨江小区15栋', '2017-12-11 15:46:31', '帅龙强', '15079006121', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('373', '裴晶晶', '海门港华新区污水处理厂（西安路）', '2017-12-11 15:46:31', '裴晶晶', '15950501802', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('374', '郑贤萍', '水西门大街291号，万达金街西区242铺面', '2017-12-11 15:46:31', '郑贤萍', '15105141138/18913914148', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('375', '汪雷', '宿迁市泗洪县环洲万博城6栋109—110', '2017-12-11 15:46:31', '汪雷', '13951451375/13851364050', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('376', '李刚', '徐州市云龙区子房街道津浦东路32号05库旁美美家园', '2017-12-11 15:46:31', '李刚', '15952156446', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('377', '寇华堂', '连云港市新浦区龙尾路7-1号', '2017-12-11 15:46:31', '寇华堂', '18961345189', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('378', '周瑞东', '上海南汇宝业万华城', '2017-12-11 15:46:31', '周瑞东', '15001911626', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('379', '徐峰', '盐城市射阳县众兴路众兴公寓4号门市(美的服务站)', '2017-12-11 15:46:31', '徐峰', '13182111128', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('380', '浙江摩多巴克斯汽配有限公司', '宁波江北洪塘工业A区洪兴路8号', '2017-12-11 15:46:31', '韩欣志', '0574-87562810/13819821422', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('381', '周付刚', '南京市鼓楼幕府东路55-53号旭日景城美的客服中心', '2017-12-11 15:46:31', '周付刚', '18105166188', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('382', '余磊', '铜陵市金山中路瑞龙公馆B2栋7号门面(售楼部后面)', '2017-12-11 15:46:31', '余磊', '13866848116', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('383', '石家庄祥智科技有限公司', '石家庄市107国道洋成家电市场', '2017-12-11 15:46:31', '李玉青', '15830976000', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('384', '罗兆军', '扬州市宝应县利民路宜城快捷宾馆对面', '2017-12-11 15:46:31', '罗兆军', '18951040988', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('385', '王金兵', '淮安市金湖县新城公寓4栋4单元302', '2017-12-11 15:46:31', '王金兵', '15949161088', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('386', '潘灯', '江苏省盐城市亭湖区黄海大桥桥西路南（闽峰洁具）', '2017-12-11 15:46:31', '潘灯', '18361649992', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('387', '蔡益龙', '江西南昌市青山湖区紫阳大道3088号泰豪科技广场A座', '2017-12-11 15:46:31', '蔡益龙', '15250208756/13870091062', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('388', '上海柔泰', '上海静安区江场西路570号2号楼310', '2017-12-11 15:46:31', '夏伟铭', '13917054470', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('389', '贾志文', '无锡市新区旺庄工业园集中区三区二期2-2号', '2017-12-11 15:46:31', '贾志文', '13915323109/15212295788', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('390', '付长浩', '浦东新区巨峰路995弄90号102室', '2017-12-11 15:46:31', '付长浩', '15821033162', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('391', '吕洪涛', '湖北省仙桃市沙嘴办事处华泰家园5-1-202', '2017-12-11 15:46:31', '吕洪涛', '13469709292', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('392', '全筑', '南汇区宣黄公路听潮路宝业万华城', '2017-12-11 15:46:31', '方辉', '15216846481', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('393', '黄俊', '安徽省广德县横山南路50号', '2017-12-11 15:46:31', '黄俊', '13856330579/0563-2210050', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('394', '成敏妮', '广东佛山南海区大沥镇盐步河西冯边大道黎边路涛江节能厨具厂', '2017-12-11 15:46:31', '成敏妮', '13392248319', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('395', '徐守军', '洪泽县惠民三期16栋504', '2017-12-11 15:46:31', '徐守军', '13151873096', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('396', '牛传亮', '苏州市相城区采莲路欧风丽苑15一405', '2017-12-11 15:46:31', '牛传亮', '18501509088', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('397', '江诗益', '湖北宜昌金五一建材市场', '2017-12-11 15:46:31', '江诗益', '13872598693', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('398', '黄经理', '湖北咸宁市金桂路113号', '2017-12-11 15:46:31', '黄经理', '13451112199', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('399', '徐世刚', '湖北咸宁温泉体育路58号', '2017-12-11 15:46:31', '徐世刚', '15672303480', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('400', '杨志明', '1.江西南昌洛阳路23-2号(西湖区华利建材供应站)2.南昌迎宾中大道顺麒昌铜工艺有限公司长安铃木4S店里面(宅品汇家具城正对面)', '2017-12-11 15:46:31', '杨志明', '13907086826', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('401', '王华', '苏州沧浪新城太湖西路万佳花苑9栋104，美的售后', '2017-12-11 15:46:31', '王华', '13914070884/13382182060', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('402', '关总', '苏州市吴中区迎春南路112号C座302阿里售后', '2017-12-11 15:46:31', '关总', '13706208728/0512—68273203', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('403', '蒋红星', '惠南镇听潮路宣黄公路口宝业万华城', '2017-12-11 15:46:31', '蒋红星', '13122632448', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('404', '于芝胜段晓东', '1、黑龙江省佳木期市第一加油站润滑油店2、黑龙江佳木斯市向阳区通江街65号博世暖通生活馆', '2017-12-11 15:46:31', '于芝胜段晓东', '13091658447/15765417788', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('405', '刘', '连云港市新浦南极北路126号', '2017-12-11 15:46:31', '刘', '13675292057', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('406', '肖海群', '陕西省西安新城去东元路东岸阳光3-404', '2017-12-11 15:46:31', '肖海群', '18629042881', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('407', '李晶、陈卫华', '1.新疆乌鲁木齐长春南路333号盈科棕榈园小区18栋5单元4012.新疆乌鲁木齐高新区长春南路西六巷178号宝石花苑5-1-202', '2017-12-11 15:46:31', '李晶、陈卫华', '13199897675/13565811166', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('408', '陆挺', '南京应天大街308号长江装饰城2F-3', '2017-12-11 15:46:31', '陆挺', '18662719166', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('409', '刘培勇', '徐州市沛县江南美术馆27号', '2017-12-11 15:46:31', '刘培勇', '15805227062', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('410', '吴洪利', '徐州市沛县金凤凰装饰城21号楼1厅2厅', '2017-12-11 15:46:31', '吴洪利', '13395261881', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('411', '王丽君', '南京市秦淮区大明路72号 东芝中央空调', '2017-12-11 15:46:31', '王丽君', '13851990651', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('412', '合肥擎天住宅科技设备有限公司', '合肥市包河区马鞍山南路660号路绿地赢家大厦D座1615室', '2017-12-11 15:46:31', '沈强', '13705514252', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('413', '蔡浩', '宿迁市泗阳翰学院22b-1009', '2017-12-11 15:46:31', '蔡浩', '13851378561', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('414', '万总', '南昌市青云谱区城南佳园', '2017-12-11 15:46:31', '万总', '18172858575', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('415', '肖群红', '武汉市舵落口大市场陶瓷卫浴基地20区4栋20号。', '2017-12-11 15:46:31', '肖群红', '18971333922', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('416', '黄老板', '泰州姜堰区太宇家居广场A-1011', '2017-12-11 15:46:31', '黄老板', '136415952680523-88919869', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('417', '胡红利', '四川成都成华区崔家店7组工业园内(万和电器)省理工大学对面', '2017-12-11 15:46:31', '胡红利', '15198136667', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('418', '余峰', '江西省鄱阳县五一北路北关程家山122号。', '2017-12-11 15:46:31', '余峰', '13687937559', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('419', '周丽', '镇江市京口路小路口76号院华帝售后', '2017-12-11 15:46:31', '周丽', '0511-84413678/13776477267', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('420', '肖文华', '江西省高安市瑞州商贸广场19A4-6号', '2017-12-11 15:46:31', '肖文华', '13879128079', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('421', '舒明革', '江西萍乡市莲花县金城大道366号燃气公司营业大厅', '2017-12-11 15:46:31', '舒明革', '13617023285', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('422', '魏国华', '南昌市进贤县民和商城南一区19号', '2017-12-11 15:46:31', '魏国华', '13684816983', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('423', '田勇', '南京市雨花区板桥经济开发区荆刘工业园黑墩营86号', '2017-12-11 15:46:31', '田勇', '13584016986', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('424', '刘小海', '连云港市海州区瀛洲路10-3-11号', '2017-12-11 15:46:31', '刘小海', '18936652268/0518-81080055', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('425', '叶丽', '南京市建邺区南湖安国村62-1号', '2017-12-11 15:46:31', '叶丽', '18994027055', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('426', '日丰管业', '安徽省滁州市来安县南大街198号', '2017-12-11 15:46:31', '戴总', '13955020216/0550-2767111', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('427', '刘新华', '上海市沪南路858号', '2017-12-11 15:46:31', '刘新华', '2158915203', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('428', '杜鹏', '泰兴市海陵区海光新村19-105室', '2017-12-11 15:46:31', '杜鹏', '15850851135', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('429', '上海联悦', '杨浦区河涧路临青路口', '2017-12-11 15:46:31', '罗工', '15902160290', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('430', '奇可霆', '1、襄阳市长征路16号长征花园内阿诗丹顿售后2、襄阳市长征路铁路货场', '2017-12-11 15:46:31', '奇可霆', '13627195620', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('431', '司鹏杰', '张家港市杨舍镇国贸弄（国泰小区）公园新村63号405室', '2017-12-11 15:46:31', '司鹏杰', '13862197511', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('432', '王恩德', '南京市建邺区华隆新寓17-65-101', '2017-12-11 15:46:31', '王恩德', '13675188785', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('433', '谢志强', '石家庄市工农路北礼让街', '2017-12-11 15:46:31', '谢志强', '15830976000', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('434', '郗兆全', '无锡市中南西路349号美的客服中心', '2017-12-11 15:46:31', '郗兆全', '13921543555', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('435', '袁自珍', '武汉市江岸区后湖大道汉口花园5期5栋4单元1002室', '2017-12-11 15:46:31', '袁自珍', '18971409972', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('436', '袁自珍', '江西省奉新县大华燃气有限公司', '2017-12-11 15:46:31', '袁自珍', '15179598808', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('437', '上海加冷松芝汽车空调股份有限公司', '上海市莘庄工业园华宁路4999号', '2017-12-11 15:46:31', '黄萍', '13918752307', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('438', '李杰', '连云港海洲区新海建材城18A-16', '2017-12-11 15:46:31', '李杰', '15950740088', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('439', '刘总', '安徽省滁州市国际商城(提前电话联系)', '2017-12-11 15:46:31', '刘总', '13655502964', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('440', '曲经理', '六合区鹏程国际17幢101室', '2017-12-11 15:46:31', '曲经理', '18013305966', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('441', '郑和荣', '广东省中山市南头镇南和东路324号', '2017-12-11 15:46:31', '郑和荣', '13928135225', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('442', '徐州市丰县滨海燃气有限公司', '徐州市丰县中阳大道西延段', '2017-12-11 15:46:31', '张银领', '13182390136', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('443', '阳建良', '武汉市洪山区鲁磨路茅屋岭3号工贸学院对面', '2017-12-11 15:46:31', '阳建良', '18108639567/13971432556', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('444', '李小初', '上高县锦江镇石湖村村委会对面(320国道旁)顺民天然气公司', '2017-12-11 15:46:31', '李小初', '18322918168', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('445', '石刚', '湖北省襄阳市谷城县金水湾沿河路146号', '2017-12-11 15:46:31', '石刚', '15271097923', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('446', '董在雪', '淮安市洪泽县华盛小区E幢1单元602', '2017-12-11 15:46:31', '董在雪', '13655159130', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('447', '王民', '湖北省十堰市人民中路77-37(百诗供暖)', '2017-12-11 15:46:31', '王民', '13907281657', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('448', '王德安', '南昌市建设西路663号(家电市场13栋7号正对面得珍家电)', '2017-12-11 15:46:31', '王德安', '13970022834/13330108739', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('449', '上官河态', '江西鄱阳县粮食局五楼昌江燃气有限公司', '2017-12-11 15:46:31', '上官河态', '13617033966', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('450', '董石', '河南省郑州市管城区幸福港湾B区3号楼1单元', '2017-12-11 15:46:31', '董石', '13327737905', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('451', '安徽蚌埠特种气体压缩机(武汉)销售公司', '武汉市硚口区南泥弯大道汇丰企业总部6栋104号', '2017-12-11 15:46:31', '张树发', '13659852190', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('452', '毛文玲', '泰州高新开发区春风路20号3楼美的办公室', '2017-12-11 15:46:31', '毛文玲', '18251013760', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('453', '陈鹏', '团结大道旺家建材城日丰管(大众4S)对门8057号430035', '2017-12-11 15:46:31', '陈鹏', '13971461479/15337223361', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('454', '万九龙', '南昌市青云谱区城南佳园(自提)', '2017-12-11 15:46:31', '万九龙', '18172858575', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('455', '卞培莉', '浦东新区牟平路339号', '2017-12-11 15:46:31', '卞培莉', '13611911548', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('456', '吕斌', '山西省忻州市原平市天然气有限责任公司邮编034100', '2017-12-11 15:46:31', '吕斌', '13994196991', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('457', '孙元兵', '荆州市荆州区南环路吉祥凤凰城小区2-51号', '2017-12-11 15:46:31', '孙元兵', '15272363091', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('458', '张云刚', '江苏省镇江市京口路小路口76号华帝', '2017-12-11 15:46:31', '张云刚', '18605111899', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('459', '厉海峰', '泰州市姜堰市华东五金城H17栋113-114号', '2017-12-11 15:46:31', '厉海峰', '13961090989', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('460', '张诚畅', '徐州市新沂市国际商贸城二期二栋32号', '2017-12-11 15:46:31', '张诚畅', '18952281550', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('461', '李勇', '湖北襄阳樊城区江山南路景观豪庭7栋2单元504', '2017-12-11 15:46:31', '李勇', '18972202061', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('462', '李伟', '十堰市茅剑区三堰澳门街', '2017-12-11 15:46:31', '李伟', '15172243008', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('463', '诸毛毛', '禄口永欣新寓紫金苑2栋302', '2017-12-11 15:46:31', '诸毛毛', '13913961994', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('464', '冯东（重复）', '南京市浦口区宁六路20号10号库', '2017-12-11 15:46:31', '冯东（重复）', '13770617335', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('465', '田鸣', '潜江市章华北路4号', '2017-12-11 15:46:31', '田鸣', '15871904205', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('466', '彭雪', '南京市浦口区大桥北路48号红太阳装饰城综合二区仓库2栋205', '2017-12-11 15:46:31', '彭雪', '18012920396', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('467', '杨玉新', '镇江市丹阳市云阳小区8栋1单元101室', '2017-12-11 15:46:31', '杨玉新', '0511-86552177/13912828621', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('468', '杨子祥', '南京市应天大街吉庆家园金秋苑5栋102', '2017-12-11 15:46:31', '杨子祥', '13805181660', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('469', '徐保生', '郑州市南环路与京广路交叉口向东100米南（汽车南站隔壁)中陆机电城5排28号', '2017-12-11 15:46:31', '徐保生', '13271596000', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('470', '武松', '连云港市墟沟日出南门26-13号', '2017-12-11 15:46:31', '武松', '18071665030/0518-82308250', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('471', '邵诚', '南京市浦口区宁六路先锋加油站后面飞扬羽毛球馆', '2017-12-11 15:46:31', '邵诚', '15150565999', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('472', '汪智勇', '湖北省当阳市宜安居建材市场B栋', '2017-12-11 15:46:31', '汪智勇', '15872498488', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('473', '郑超军', '江西省新余市站前西路延伸段钟山花园对面', '2017-12-11 15:46:31', '郑超军', '18879087276', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('474', '霍龙龙', '山西省晋中市榆次区经纬南路沪晋集团', '2017-12-11 15:46:31', '霍龙龙', '13935410102', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('475', '王亚辉', '湖北省枣阳市新华路商园市场大门内北边', '2017-12-11 15:46:31', '王亚辉', '13774171973', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('476', '张爱新', '盐城市阜宁县上海路金城时代广场9号楼11号门室', '2017-12-11 15:46:31', '张爱新', '13851121368', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('477', '吴兆信', '东湖区沙井街道办事处红谷滩新区翠苑路699号/铁臂山庄酒店旁', '2017-12-11 15:46:31', '吴兆信', '15279150709', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('478', '王泽龙', '南京市雨花区板桥红太阳B7-109-1号标龙阀门', '2017-12-11 15:46:31', '王泽龙', '025-52607749', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('479', '唐涛', '上海闵行区莲花南路3998号', '2017-12-11 15:46:31', '唐涛', '15001897854', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('480', '丁皓辉', '淮安市金湖县人民路173-4金达广场(金浦花园对面)', '2017-12-11 15:46:31', '丁皓辉', '13805232119/86980848', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('481', '李岐东', '南京市栖霞区仙林大学城经天路枫情水岸项目', '2017-12-11 15:46:31', '李岐东', '15895999692', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('482', '汪兴全', '句容市南门水岸名居碧桂园保安室', '2017-12-11 15:46:31', '汪兴全', '13852972646', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('483', '刘成群杨(女)', '盐城市建湖县湖中南路465号(美的)', '2017-12-11 15:46:31', '刘成群杨(女)', '13092118093/18961907633', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('484', '胡小鹏', '南昌市西湖区家电市场13栋13号', '2017-12-11 15:46:31', '胡小鹏', '13317005030', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('485', '史家成', '盐城市滨海县坎东居委会越河路207号', '2017-12-11 15:46:31', '史家成', '15161910423', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('486', '唐总', '盐城市响水县幸福小区331号', '2017-12-11 15:46:31', '唐总', '13851192799', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('487', '杨林', '盐城市阜宁县海峡打市场6号楼204', '2017-12-11 15:46:31', '杨林', '13770166650', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('488', '柳华锋', '常州市钟楼区都市桃源商业街68-317(林内燃气具)', '2017-12-11 15:46:31', '柳华锋', '13775602599', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('489', '王业飞', '宿迁市义乌商贸城精品商业街4幢12-13号', '2017-12-11 15:46:31', '王业飞', '13365257480/88856185', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('490', '李少波', '淮安市淮安区运东小区75号', '2017-12-11 15:46:31', '李少波', '13151865508', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('491', '张健仓郭内荣', '河南省郑州市农业路嵩山路交叉路口农业西建材市场7去2号', '2017-12-11 15:46:31', '张健仓郭内荣', '13663853679', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('492', '宋慧敏', '郑州市金水区南阳路与黄河路交叉口向西300米好易家门口', '2017-12-11 15:46:31', '宋慧敏', '13523584832/88882169', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('493', '王琴', '扬州市宝应县南城根路宝利莱商城2-B06', '2017-12-11 15:46:31', '王琴', '13852761861', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('494', '顾春强', '徐州市睢宁县彩虹公寓6-508', '2017-12-11 15:46:31', '顾春强', '15722884316', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('495', '龙凤', '湖北省汉川市仙女大道广场北路西段', '2017-12-11 15:46:31', '龙凤', '13971655043', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('496', '李松', '河南省南阳市北京大道中断圣泉酒店对面财伟家属院', '2017-12-11 15:46:31', '李松', '13333776778', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('497', '秦绍智', '芜湖县湾沚镇临湖丽城30-1-201', '2017-12-11 15:46:31', '秦绍智', '18605691766', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('498', '徐州史密斯', '徐州市云龙区广山西路响山烈士陵园北隔壁', '2017-12-11 15:46:31', '师红健', '13305218185', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('499', '胡林强', '郑州市华南城4B建材区1-42号(4街)', '2017-12-11 15:46:31', '胡林强', '15038111573', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('500', '余汗欣', '郑州华南城建材6B-1-221', '2017-12-11 15:46:31', '余汗欣', '13849105634/13383857574', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('501', '刘春水', '南昌市安义县解放路华帝专卖店', '2017-12-11 15:46:31', '刘春水', '15179110251', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('502', '陈赣水', '南昌市安义县新华书店斜对面东侧(美盼旺夫人店)', '2017-12-11 15:46:31', '陈赣水', '18070092893', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('503', '梁家铭', '郑州华南城6B区-1-103', '2017-12-11 15:46:31', '梁家铭', '18503873977', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('504', '孙浩楠', '徐州市睢宁县文学北路华夏宾馆楼下', '2017-12-11 15:46:31', '孙浩楠', '18921786777', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('505', '上海璞康', '宝山区蕴川路5300弄6号，销售三部仓', '2017-12-11 15:46:31', '冯雪珍', '13817418390', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('506', '王仲伟', '郑州市农业路嵩山北路西建材市场', '2017-12-11 15:46:31', '王仲伟', '13523095682', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('507', '卢俊峰', '郑州市博颂路明天建材城日丰管北环专卖店', '2017-12-11 15:46:31', '卢俊峰', '13783699052、0371-63528778', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('508', '李新', '南昌市安义县老大桥头林业局铺面(李新家电维修部)', '2017-12-11 15:46:31', '李新', '13970939380', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('509', '陈飞', '连云港连云区中山西路155-1号辉煌供暖', '2017-12-11 15:46:31', '陈飞', '15996103099', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('510', '朱雪松', '邳州市邳州大运河装饰城A幢01-02号', '2017-12-11 15:46:31', '朱雪松', '138052229800516-86226005', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('511', '庞雪雷', '徐州市新沂市四华里南巷18号', '2017-12-11 15:46:31', '庞雪雷', '15952288559', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('512', '李', '上海市闸北区江场西路570号2号楼306室', '2017-12-11 15:46:31', '李', '13361989878', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('513', '吴江山', '南京市浦口区明发滨江323幢1302室力群', '2017-12-11 15:46:31', '吴江山', '13851619309', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('514', '孙步龙', '浦东南路2345号', '2017-12-11 15:46:31', '孙步龙', '021-58392963', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('515', '刘东招', '无锡市江阴市江阴永康五金城大街33号', '2017-12-11 15:46:31', '刘东招', '13063699214', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('516', '刘南国', '荆州市监利容城镇容城大道68号东', '2017-12-11 15:46:31', '刘南国', '139721000730716-3278418', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('517', '宋群柱(宋经理)', '郑州市京广路长江路西300米樱花卫厨', '2017-12-11 15:46:31', '宋群柱(宋经理)', '18037673933', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('518', '高品琴', '安徽省芜湖市瑞丰商博城1-1-5-111', '2017-12-11 15:46:31', '高品琴', '130633603330553-3834433', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('519', '周迪河', '南昌市安义县女人街麦佳基对面万家乐热水器专卖店', '2017-12-11 15:46:31', '周迪河', '13870930295', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('520', '李惠珍', '武汉市洪山区北洋桥路金鹤园小区82栋2单元102室', '2017-12-11 15:46:31', '李惠珍', '13396077791', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('521', '马旭鹏', '江西省余干县紫阳路7号余干县天然气有限公司', '2017-12-11 15:46:31', '马旭鹏', '18679383047', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('522', '张明亮', '湖北省应城市光明大市场', '2017-12-11 15:46:31', '张明亮', '13476533055', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('523', '唐晓辉', '重庆市长寿区渡舟街道在水一方12栋10-2', '2017-12-11 15:46:31', '唐晓辉', '17782284044', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('524', '周齐军', '宿迁市义乌商贸城精品街4栋15-16号', '2017-12-11 15:46:31', '周齐军', '18118038778', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('525', '陈宝国', '扬州市江都区新都路189号华江润泽苑门市AO史密斯家庭采暖', '2017-12-11 15:46:31', '陈宝国', '13952708474', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('526', '扬波', '武汉市汉阳大道七里庙二合村2栋201室', '2017-12-11 15:46:31', '扬波', '13247212999', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('527', '胡均初', '江西萍乡市建设东路119号(烟草公司斜对面广场花园旁边)', '2017-12-11 15:46:31', '胡均初', '13755539006', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('528', '刘建亮', '江西萍乡市西门公交公司出入口中间(西环路565号)', '2017-12-11 15:46:31', '刘建亮', '13979993373', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('529', '王晓静', '镇江铭基商贸城1号楼105一1润之美装饰材料大卖场', '2017-12-11 15:46:31', '王晓静', '13705287596', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('530', '郭锐', '郑州市农业路西建材市场南排8号', '2017-12-11 15:46:31', '郭锐', '15378717989、13323860076', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('531', '王会玲', '洛阳市关林建材市场4街29号', '2017-12-11 15:46:31', '王会玲', '15036773437、0379-65275658', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('532', '谢明想', '徐州市丰县东环开发区南普电机院内东岳轮胎', '2017-12-11 15:46:31', '谢明想', '18252126432', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('533', '张晓晨', '苏州市相城区相城大道168号新尚商业广场A816', '2017-12-11 15:46:31', '张晓晨', '13295126580', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('534', '刘老师培训协会，上海燃气处', '上海市虹口区车站南路261号', '2017-12-11 15:46:31', '刘老师', '13501777081/6556312', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('535', '叶良成', '武汉市蔡甸区轻工商场(邮政局隔壁)', '2017-12-11 15:46:31', '叶良成', '15377643616', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('536', '陈和', '西安市未央区永城路万嘉暖气城1排19号', '2017-12-11 15:46:31', '陈和', '13992884578', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('537', '邱方平', '南京市建邺区奥体大街130号奥体名座A座1304室', '2017-12-11 15:46:31', '邱方平', '13382005677', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('538', '吴贻凤赵官武', '苏州市吴江市长坂路与中山南路交汇处中南世纪城项目地', '2017-12-11 15:46:31', '吴贻凤赵官武', '18913158788/18761917530', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('539', '彭凯', '镇江市丹徒新区铭基商贸城B4区12号', '2017-12-11 15:46:31', '彭凯', '13052906777051185345287', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('540', '吴昌龙', '盐城市建湖县新建西路131号阳光厨具', '2017-12-11 15:46:31', '吴昌龙', '13814352080', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('541', '南京市高淳双湖液化石油气有限公司', '南京市高淳区淳溪镇太安前赵村588号', '2017-12-11 15:46:31', '邢辉', '13585169565', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('542', '王刚', '江苏省宿迁市泗洪县沁雅花园30栋606', '2017-12-11 15:46:31', '王刚', '15850408016', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('543', '徐宝生', '郑州市南环路与京广路交叉口向东100米南(汽车南站隔壁)中陆机电城5排28号', '2017-12-11 15:46:31', '徐宝生', '13271596000', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('544', '王添', '南通市海门市海门港新区福建路泰昌焊丝有限公司', '2017-12-11 15:46:31', '王添', '15262823658', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('545', '朱志刚', '太原市南内环街赛博数码1802室', '2017-12-11 15:46:31', '朱志刚', '18536606419', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('546', '张卉娟', '萍乡市北桥育才街12号万和售后', '2017-12-11 15:46:31', '张卉娟', '18797992558', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('547', '傅翔宇', '苏州市阊胥路118号华孚写字楼803室', '2017-12-11 15:46:31', '傅翔宇', '133821014450512-67952890', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('548', '李扬赵', '西安市高新区西部大道乳驾庄郭村14排', '2017-12-11 15:46:31', '李扬赵', '15389228238', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('549', '王思聪', '哈尔滨市道里区小职工街18号现代布艺五楼', '2017-12-11 15:46:31', '王思聪', '15546308877', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('550', '张光明', '徐州市新沂市国际商贸城三期大唐足疗后面樱花电器', '2017-12-11 15:46:31', '张光明', '13775955536/15295461083', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('551', '张宝兴', '郑州市城东路货栈街南200米路东商业储运公司万和仓库', '2017-12-11 15:46:31', '张宝兴', '15093202669', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('552', '朱帅', '上海市崇明县新河镇三烈村塔南1523号', '2017-12-11 15:46:31', '朱帅', '13482848361', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('553', '陈明', '无锡市江阴市君山路208-4苏庆五金', '2017-12-11 15:46:31', '陈明', '18961636117/15061033522', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('554', '郭代权', '随州市湖岸新城正大门旁(火星人集成灶随州旗帜店)', '2017-12-11 15:46:31', '郭代权', '15335792879', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('555', '张琪', '江西省萍乡市安源区(自提)', '2017-12-11 15:46:31', '张琪', '15979499839', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('556', '张老板', '郑州市管城区金河小区4单元一楼', '2017-12-11 15:46:31', '张老板', '13073726019', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('557', '彭兴旺', '南昌市安义县文峰路国税局对面(森歌集成灶专卖)', '2017-12-11 15:46:31', '彭兴旺', '15179169368', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('558', '常州市佳汇不锈钢管业有限公司', '常州市武进区洛阳镇戴溪工业区戴洛路79号', '2017-12-11 15:46:31', '黄金良', '13606118520', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('559', '李建平', '南昌市高新区高新七路999号万科四季花城南区牡丹苑L座101室', '2017-12-11 15:46:31', '李建平', '18679179899', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('560', '罗永临', '西安市临潼区东建材市场南门口', '2017-12-11 15:46:31', '罗永临', '13572837324', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('561', '刘文刚', '上海市松江区玉树路与中山西路交叉口  兴仓路项目工地', '2017-12-11 15:46:31', '刘文刚', '13914084503', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('562', '胡石宝', '南昌市安义县迎宾大道丰和都会门面110铺(安逸地暖）', '2017-12-11 15:46:31', '胡石宝', '13870065753', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('563', '张海军', '1.无锡市南长区曹张新村51号华润煤气公司2.崇明县城桥镇体育路124号,林内专卖店', '2017-12-11 15:46:31', '张海军', '15358087979', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('564', '李林', '南京浦口区桥北新村5栋102（麻烦快递提前打电话）', '2017-12-11 15:46:31', '李林', '13301597028', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('565', '贺百灵', '南昌县小兰中大道168号四平电器荣云家电维修服务中心', '2017-12-11 15:46:31', '贺百灵', '18627883239', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('566', '佛山市南海新悦机电设备有限公司', '佛山市南海区罗村联和工业西区六路1号', '2017-12-11 15:46:31', '区伟强', '13418433812', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('567', '任家照', '西安市临潼区常堡建材市场1排1号万和专卖店', '2017-12-11 15:46:31', '任家照', '13572026238', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('568', '郭玉胜', '郑州市金水区任寨北街3号院', '2017-12-11 15:46:31', '郭玉胜', '13603983354', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('569', '游亚林', '山东济南(客户自提)', '2017-12-11 15:46:31', '游亚林', '13553161857', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('570', '王莎莎', '镇江市丹阳市普善人家36栋3单元405', '2017-12-11 15:46:31', '王莎莎', '15312350968', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('571', '李庆明', '西安市莲湖区昆明路50号9号门房欧普照明', '2017-12-11 15:46:31', '李庆明', '13891974629', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('572', '满昌梅', '淮安市洪泽县慧民家园二期12栋', '2017-12-11 15:46:31', '满昌梅', '13056033693', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('573', '张道良/陈箭', '南京市江宁区东山街道章村工业园城北路27号', '2017-12-11 15:46:31', '张道良/陈箭', '15380773929', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('574', '刘猛', '徐州市邳州市大榆树运河派出所隔壁南10米', '2017-12-11 15:46:31', '刘猛', '15852066971', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('575', '宣杭峰', '苏州市金阊区清塘路32号兆丰水暖批发', '2017-12-11 15:46:31', '宣杭峰', '18662430408/0512-65571927', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('576', '吴海群', '奉新县大华燃气有限公司', '2017-12-11 15:46:31', '吴海群', '13879230716', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('577', '李军', '永州市祁阳县金盆东路76号(华润燃气客服服务中心)', '2017-12-11 15:46:31', '李军', '15399848080', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('578', '李香玲', '襄阳市丹江路15号姓名', '2017-12-11 15:46:31', '李香玲', '13908670703', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('579', '赵伟', '襄阳华中光彩大市场47栋6号', '2017-12-11 15:46:31', '赵伟', '18972250288', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('580', '胡纯', '南昌市西湖区桃苑西路1号香江花园3栋3单元202室', '2017-12-11 15:46:31', '胡纯', '18279135599', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('581', '张松涛', '洛阳偃师市迎宾路8号(老电业局对面)', '2017-12-11 15:46:31', '张松涛', '18837967899', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('582', '陈莎莎', '南昌红谷滩新区学府大道绿胡豪城二期欧罗巴广场欧恩斯店铺', '2017-12-11 15:46:31', '陈莎莎', '15079434433', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('583', '周健', '盐城市阜宁县金沙湖悦湖新城50#602', '2017-12-11 15:46:31', '周健', '13921890924', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('584', '林飞', '扬州市广陵区金盛国际家居综合区美林水暖', '2017-12-11 15:46:31', '林飞', '18905277311', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('585', '徐贵兵', '随州市三桥头御山墅、别墅对面电话', '2017-12-11 15:46:31', '徐贵兵', '18972996183', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('586', '胡爱国', '潜江市章华北路6号', '2017-12-11 15:46:31', '胡爱国', '18986953394', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('587', '陆龙华', '盐城市大丰市幸福东大街98号', '2017-12-11 15:46:31', '陆龙华', '15365719779', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('588', '彭顺', '湘潭市红旗商贸城D区8号', '2017-12-11 15:46:31', '彭顺', '18173256282', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('589', '段景虎', '江汉区民权路统一街新丰大厦1楼1号', '2017-12-11 15:46:31', '段景虎', '13808607438', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('590', '马经理', '信阳市新华东路108号上海商场家属院3单元', '2017-12-11 15:46:31', '马经理', '13703769177', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('591', '张海波', '湘潭市南湖区新杉山南片区18栋1单元301', '2017-12-11 15:46:31', '张海波', '18673213077', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('592', '周岳华', '湘潭县易俗河镇玉兰中路372号', '2017-12-11 15:46:31', '周岳华', '13873222808', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('593', '张联军', '高淳区淳溪镇北岭路15号11幢-31号', '2017-12-11 15:46:31', '张联军', '13770917608', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('594', '杨周明', '湘潭县易俗河雪松中路城南正春天对面', '2017-12-11 15:46:31', '杨周明', '15873217588', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('595', '侯方玉', '齐齐哈尔龙沙区青云街269号德国博世燃气炉', '2017-12-11 15:46:31', '侯方玉', '13204525556', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('596', '李煜', '淮安市淮海东路与承德路交叉口向南50米承德北路67号', '2017-12-11 15:46:31', '李煜', '13915107561', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('597', '李煜', '宁夏自治区盐池县带丰燃气公司', '2017-12-11 15:46:31', '李煜', '13895560088', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('598', '张根友', '萧山空港经济区南阳街道南虹路528号南阳镇政府', '2017-12-11 15:46:31', '张根友', '15925683896', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('599', '郝新义', '咸阳市陈杨寨南郊建材市场中大门东第一家', '2017-12-11 15:46:31', '郝新义', '18700087001', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('600', '强力', '西安市莲湖区枣园西路厨具市场C排1号', '2017-12-11 15:46:31', '强力', '13992898211', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('601', '秦抬民', '陕西省咸阳市西郊嘉苑国际建材市场', '2017-12-11 15:46:31', '秦抬民', '15591041329', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('602', '陈华明', '上海市闵行区罗阳路罗阳一村', '2017-12-11 15:46:31', '陈华明', '13391046685', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('603', '胡新祥', '西安市莲湖区三民村枣园北路华轩五金建材', '2017-12-11 15:46:31', '胡新祥', '18392197628', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('604', '朱兆娣', '句容市宁杭北路36-5号西岗中转站对面', '2017-12-11 15:46:31', '朱兆娣', '13625269224', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('605', '田继顺', '高淳县北岭路72号海尔专卖店(大市场对面)', '2017-12-11 15:46:31', '田继顺', '15150612788', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('606', '郑先生', '安徽省芜湖市三山区老公路街148号鑫奇厨卫', '2017-12-11 15:46:31', '郑先生', '18110292576', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('607', '王国平', '西安市新城区公园北路长乐新城小区1号楼', '2017-12-11 15:46:31', '王国平', '13626105691', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('608', '李荣财', '句容市温州商贸城D区1—2号', '2017-12-11 15:46:31', '李荣财', '18952962092', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('609', '梁玲方', '句容市温州商贸城A幢11-12号', '2017-12-11 15:46:31', '梁玲方', '13775522570', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('610', '徐霞', '句容市华阳东路瑞祥集团', '2017-12-11 15:46:31', '徐霞', '15952968927', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('611', '荆建华', '上海宣黄公路2588弄吉园坊25号102室', '2017-12-11 15:46:31', '荆建华', '13901611777', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('612', '洪宝财', '镇江市亿都家居建材城7幢138-139号', '2017-12-11 15:46:31', '洪宝财', '13605289501', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('613', '王建河', '镇江亿都建材城精品厅3D117-118/128-129号(卫浴店)', '2017-12-11 15:46:31', '王建河', '15050873208', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('614', '范国富', '1、襄阳市檀溪路213号917新3号楼1单元701室/湖北省宜城市一阳街方太专卖店', '2017-12-11 15:46:31', '范国富', '13349805938', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('615', '刘普康', '陕西咸阳市杨凌区马场什字路北10米', '2017-12-11 15:46:31', '刘普康', '15929801699', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('616', '程晓江', '西安市城西厨具批发市场C排16号(西安国伟厨具有限公司)', '2017-12-11 15:46:31', '程晓江', '13571921762', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('617', '吴斌', '西安市碑林区草场坡', '2017-12-11 15:46:31', '吴斌', '13572204389', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('618', '马顺', '郑州市管城区经北六路悦如公寓C栋611室', '2017-12-11 15:46:31', '马顺', '15850602309', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('619', '俞国鸿', '襄阳市檀溪路213号917新3号楼1单元701室', '2017-12-11 15:46:31', '俞国鸿', '15926898665', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('620', '朱山勇', '陕西省西安市新城区轻工市场金海北排43X号', '2017-12-11 15:46:31', '朱山勇', '13509182117', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('621', '王美香', '江苏省南通市通州区金桥东苑1号303室', '2017-12-11 15:46:31', '王美香', '13358081134', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('622', '芦盛文', '湖北省黄石市黄石岗区沈家营王家里路口', '2017-12-11 15:46:31', '芦盛文', '15586552318', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('623', '陕西雪莲厨具（配件）有限公司', '西安市兴庆路69号陕西雪莲厨具（配件）有限公司', '2017-12-11 15:46:31', '高向海', '18192028535/029-83229799', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('624', '黄火明', '镇江市京口区京口路小东庄21号', '2017-12-11 15:46:31', '黄火明', '15996840828', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('625', '欧阳治国', '湘潭市湘潭县易俗河玉兰中路566号', '2017-12-11 15:46:31', '欧阳治国', '13348627077', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('626', '李幸', '济南市市中区陈家庄大街11号楼1单元302室', '2017-12-11 15:46:31', '李幸', '13816932454', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('627', '端传庆', '溧水区人民法院', '2017-12-11 15:46:31', '端传庆', '18951032313', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('628', '邓光辉', '湘潭市湘潭县易俗河海棠中路399号', '2017-12-11 15:46:31', '邓光辉', '18773207267', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('629', '杨帆', '湘潭市湘潭县易俗河玉兰中路529号', '2017-12-11 15:46:31', '杨帆', '18673241106', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('630', '曹元杰', '河南省南阳车站路红星美凯龙B座负一楼', '2017-12-11 15:46:31', '曹元杰', '18624788899', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('631', '熊文勇', '汉阳汤家咀', '2017-12-11 15:46:31', '熊文勇', '18162790712', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('632', '孙智孝', '1、陕西省咸阳市东风路立交桥北150米路西的中储建材市', '2017-12-11 15:46:31', '孙智孝', '18629101999', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('633', '张鸿', '仙桃市金城花园门面107号', '2017-12-11 15:46:31', '张鸿', '15871856699', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('634', '庞科', '安徽省淮南市田家庵区香港街71号帅康旗舰店', '2017-12-11 15:46:31', '庞科', '18055438780', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('635', '彭艳', '江苏省镇江市京口区丁卯路金环花苑7栋105', '2017-12-11 15:46:31', '彭艳', '15152906621', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('636', '蒋新双', '江苏省句容市江苏商贸城7幢128号', '2017-12-11 15:46:31', '蒋新双', '13605290872', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('637', '林杰', '句容市宁杭路人民路口农业银行北侧神舟管业', '2017-12-11 15:46:31', '林杰', '13605290259', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('638', '钱荣富', '泰兴市隆兴花园2号楼1单元302', '2017-12-11 15:46:31', '钱荣富', '13179369603', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('639', '易建中', '湖北省黄冈市黄州区贸易广场东一街25-27号', '2017-12-11 15:46:31', '易建中', '13907259037', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('640', '李振斌', '湖北省黄冈市黄州区贸易广场三街29号对面', '2017-12-11 15:46:31', '李振斌', '18972753581', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('641', '惠恩芳', '江苏省仪征市丰仪装饰城南大门内8848号', '2017-12-11 15:46:31', '惠恩芳', '13952522758/13773481318', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('642', '许月平', '南京市浦口区泰山街道江山路钱北花苑物业管理处', '2017-12-11 15:46:31', '许月平', '13376062856', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('643', '章红', '湖南省湘潭市沙子岭建材大市场211号门面', '2017-12-11 15:46:31', '章红', '0731-52311206', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('644', '屠庆兵', '扬州市文汇西路翠柳苑18幢106室', '2017-12-11 15:46:31', '屠庆兵', '13151115360/0514-7955058', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('645', '李炳秋', '湖南省湘潭市沙子岭大市场101号', '2017-12-11 15:46:31', '李炳秋', '13973237992', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('646', '柳明', '姜堰市中天新村77-403室', '2017-12-11 15:46:31', '柳明', '13815923338', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('647', '赵兴', '西安市雁塔区富源二路二府庄建材市场北排20-21号', '2017-12-11 15:46:31', '赵兴', '18740434238', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('648', '刘利华', '湖北省黄冈市黄州新港大道130号', '2017-12-11 15:46:31', '刘利华', '13971712727', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('649', '宗之文', '湖南省湘潭市岚霞路裕丰新城国际君盛阁4D', '2017-12-11 15:46:31', '宗之文', '18761621479', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('650', '皋德勇', '南京市和燕路251号北银桥市场一楼62号', '2017-12-11 15:46:31', '皋德勇', '13951956227/13813933617', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('651', '冯武兵', '滨湖北路西子正街38-20(安泰天然气公司客服中心)', '2017-12-11 15:46:31', '冯武兵', '13177371968', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('652', '李杨赵', '西安市高新区西部大道乳驾庄新村十四排', '2017-12-11 15:46:31', '李杨赵', '15389228238', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('653', '王小进', '句容市南大街28号(华城宾馆对面)永发五金', '2017-12-11 15:46:31', '王小进', '13862435958/0511-87228381', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('654', '辰枫小林', '西安市团结路庆安建材市场163号', '2017-12-11 15:46:31', '辰枫小林', '13572988439', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('655', '臧子林', '巢湖市团结东路以南安成路以东汇豪天下13号路', '2017-12-11 15:46:31', '臧子林', '15005661579', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('656', '王晓东', '青岛即墨市文化路一中东200米路北港华燃气公司', '2017-12-11 15:46:31', '王晓东', '13793287165', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('657', '沈卫清', '句容市华阳东路中国银行东边', '2017-12-11 15:46:31', '沈卫清', '13775385981', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('658', '刘念龚志勇', '重庆市永川区巨宇江南', '2017-12-11 15:46:31', '刘念龚志勇', '15310549144/18581011370', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('659', '王苏星', '苏州市姑苏区洋南路25号(苏州燃气集团煤气厂)', '2017-12-11 15:46:31', '王苏星', '13906211418', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('660', '徐启宝', '江西丰城市林安国际商贸城Y6栋6-8号门面', '2017-12-11 15:46:31', '徐启宝', '13807952096', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('661', '童桂凤', '扬州市宝应县白田雅苑37幢502', '2017-12-11 15:46:31', '童桂凤', '13773325978', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('662', '张英', '张家港市杨舍镇悦盛花苑6-207室', '2017-12-11 15:46:31', '张英', '15062510635', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('663', '景斌', '湖北省黄石市五金机电城二楼B220', '2017-12-11 15:46:31', '景斌', '15972526003', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('664', '刘林', '湖北襄阳宜城京忠路280号', '2017-12-11 15:46:31', '刘林', '15872285140', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('665', '庞辉', '扬中市扬子中路工商银行对面万家乐林内售后', '2017-12-11 15:46:31', '庞辉', '18951277420', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('666', '伍绍文', '衡阳市中湘五金机电大市场五栋15-16门面', '2017-12-11 15:46:31', '伍绍文', '13974784566', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('667', '丁永富', '衡阳市日鑫市场对面永富电气批发部', '2017-12-11 15:46:31', '丁永富', '15367070919', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('668', '熊开学', '九江市永修县永修A0史密斯专卖店', '2017-12-11 15:46:31', '熊开学', '13870208978', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('669', '汤学良', '衡阳市日鑫建材市场对面', '2017-12-11 15:46:31', '汤学良', '17752778142', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('670', '季万彬', '南通市通州区东大批发市场D区110号', '2017-12-11 15:46:31', '季万彬', '13801469563', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('671', '曹成', '扬州市江都区泰山西路城北农贸市场西门扬龙物资经营部', '2017-12-11 15:46:31', '曹成', '18752772848', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('672', '彭小江', '衡阳市华新开发区日鑫建材市场(亚泰国际大酒店隔壁)', '2017-12-11 15:46:31', '彭小江', '13203066681', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('673', '徐萨萨', '青岛市北区辽阳西路235号', '2017-12-11 15:46:31', '徐萨萨', '15866869615', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('674', '顾善华', '南通市通州区金沙镇金河小区37-401', '2017-12-11 15:46:31', '顾善华', '15306275095', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('675', '贾庆飞', '扬州市仪征市仪征万博大世界108', '2017-12-11 15:46:31', '贾庆飞', '13235261188', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('676', '袁纬俊', '盐城市通榆被村五区15栋101室', '2017-12-11 15:46:31', '袁纬俊', '13805101679', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('677', '刘冬', '盐城市阜宁县阜城西大街486-406', '2017-12-11 15:46:31', '刘冬', '15050656288', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('678', '吴洪卫', '盐城市射阳县城人民路78号(中国银行大楼对面)', '2017-12-11 15:46:31', '吴洪卫', '15312866222', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('679', '张天平', '武汉市汉阳墨水湖北路七里庙小区公交站旁', '2017-12-11 15:46:31', '张天平', '15802774257', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('680', '徐冰清', '盐城市滨海县人民南路249号(天海元南侧)', '2017-12-11 15:46:31', '徐冰清', '15950258808', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('681', '陈兆钦', '青岛即墨市嵩山二路487号', '2017-12-11 15:46:31', '陈兆钦', '13964298821', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('682', '马媛媛', '青岛即墨市华山一路516号', '2017-12-11 15:46:31', '马媛媛', '18669775827', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('683', '肖博', '淄博市淄川区钟楼以西', '2017-12-11 15:46:31', '肖博', '18678208567', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('684', '张会春', '盐城市阜宁县清华名仕园.东苑19#601室', '2017-12-11 15:46:31', '张会春', '15298550709', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('685', '李斌', '衡阳市华新开发区紫云北路6号', '2017-12-11 15:46:31', '李斌', '13789399697', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('686', '李强', '济南市张庄路新老屯汽配城南区6排9号', '2017-12-11 15:46:31', '李强', '15376408485', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('687', '李老板', '西安市兴庆路69号西安鑫宇鸿厨配销售部', '2017-12-11 15:46:31', '李老板', '18629081913', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('688', '胡总', '赣州市章贡区南外街道章江北大道86号后潮泥湾4号', '2017-12-11 15:46:31', '胡总', '18779023672', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('689', '张宁昌', '郑州市二七区马寨学院路', '2017-12-11 15:46:31', '张宁昌', '15090020140', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('690', '蒋令平', '句容市黄梅镇金桥商店', '2017-12-11 15:46:31', '蒋令平', '13952930471/0511一87383179', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('691', '虞杰', '常州市武进洛阳友谊村联谊路22号', '2017-12-11 15:46:31', '虞杰', '13961418758', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('692', '陈东阳', '南昌市灌婴路金润二期6栋29号', '2017-12-11 15:46:31', '陈东阳', '13767950628', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('693', '贺进', '江西省宜春市万载县康乐大道99号天然气用户中心', '2017-12-11 15:46:31', '贺进', '18166029668', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('694', '陈秀荣', '淮安开发区维多利亚花苑3-405', '2017-12-11 15:46:31', '陈秀荣', '17712803533', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('695', '刘德庆', '湘潭市湘潭工业品市场C栋17号', '2017-12-11 15:46:31', '刘德庆', '15973218193', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('696', '史立明', '山东省济南市中区白马山庄324号', '2017-12-11 15:46:31', '史立明', '13553172274', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('697', '彭兴华', '兴国县将军中学北上400米家欢天然气有限公司储气站', '2017-12-11 15:46:31', '彭兴华', '13576676565', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('698', '朱涛', '山东省济南市中区土屋路25号', '2017-12-11 15:46:31', '朱涛', '13589028286', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('699', '吴洪泽', '江苏省淮安市清河区加州城C1-7日丰管总代理门市', '2017-12-11 15:46:31', '吴洪泽', '18652301058', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('700', '占得发', '淮安市洪泽县中兴名都66-901', '2017-12-11 15:46:31', '占得发', '15851712961', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('701', '刘绪宝', '江苏省淮安市盱眙县东方世纪城15幢902', '2017-12-11 15:46:31', '刘绪宝', '15152551066', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('702', '刘俊领', '湖南省永州市冷水滩珊瑚海103号', '2017-12-11 15:46:31', '刘俊领', '18674607987', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('703', '越平', '南昌市西湖区桃花镇滨江小区大塉公寓15栋', '2017-12-11 15:46:31', '越平', '13607083162', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('704', '董远康', '常州市中吴大道1526号华帝服务部', '2017-12-11 15:46:31', '董远康', '13775050193', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('705', '廖然香', '湖南省衡东县衡东大市场临街门面B1栋110号', '2017-12-11 15:46:31', '廖然香', '15116831922', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('706', '叶少强', '江苏省金坛市金城建材市场9幢17-18号', '2017-12-11 15:46:31', '叶少强', '13585401232', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('707', '李年胜', '江苏省洪泽县惠民3期19栋1号', '2017-12-11 15:46:31', '李年胜', '13852364890', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('708', '韦志平', '金坛市丹阳门装饰材料市场2号34#-35#', '2017-12-11 15:46:31', '韦志平', '15366815652', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('709', '林柯', '江苏省金坛区凤凰城东大门23-12门面', '2017-12-11 15:46:31', '林柯', '18101496698', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('710', '黄继军', '咸宁市金桂路113号(中石油昆仑燃气营业厅对面)', '2017-12-11 15:46:31', '黄继军', '13451112199', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('711', '王工', '上海市金光路88号', '2017-12-11 15:46:31', '王工', '13818827729', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('712', '严玉兰', '泰州市泰兴北湾新村二区47号', '2017-12-11 15:46:31', '严玉兰', '13921747692', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('713', '李声连', '湖南省永州市冷水滩区珊瑚路城中丽景6-8号', '2017-12-11 15:46:31', '李声连', '15907483521', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('714', '孙璐璐', '山东省青岛即墨市环秀街道塔元头村', '2017-12-11 15:46:31', '孙璐璐', '18561936772', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('715', '吴艳华', '南通市虹桥路(社会福利厂内)', '2017-12-11 15:46:31', '吴艳华', '13776911587', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('716', '杜敢', '常州市顺园路36号明道科技园', '2017-12-11 15:46:31', '杜敢', '13813564255', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('717', '杨虎林', '宝鸡市岐山县乐家建材城C区北排13-14号', '2017-12-11 15:46:31', '杨虎林', '13892491448', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('718', '季振宇', '南京大厂新庄西村6幢303', '2017-12-11 15:46:31', '季振宇', '13851843579', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('719', '杨涛', '江苏省徐州市邳州市卫校大门口', '2017-12-11 15:46:31', '杨涛', '18762221652', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('720', '李维国', '西安市未央区大明宫红旗建材装饰批发市场6排31号', '2017-12-11 15:46:31', '李维国', '18049095118/18049095115', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('721', '阮鸿燕', '贵阳市小河区黄河南路354号(三00医院对面)', '2017-12-11 15:46:31', '阮鸿燕', '13985165339', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('722', '袁世金', '南昌市安义县文峰路红日厨卫专卖店', '2017-12-11 15:46:31', '袁世金', '13320018321', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('723', '杨忠祥', '广西省钦州市兴桂路体育中心(市社保局旁)', '2017-12-11 15:46:31', '杨忠祥', '18007773576', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('724', '袁继月', '贵州省贵阳市小河区盘江路49号(贵阳市二十五中后门)', '2017-12-11 15:46:31', '袁继月', '13770805796', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('725', '赖招辉', '赣州市于都县乐都建材市场18栋5-6号华帝专卖店', '2017-12-11 15:46:31', '赖招辉', '13707971783', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('726', '航天晨光金属软管分公司', '南京市江宁区将军大道177号', '2017-12-11 15:46:31', '陈艺丹', '025-52826662', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('727', '蔡成伟', '江苏省徐州市云龙区新城区碧桂园北区十五建筑公司', '2017-12-11 15:46:31', '蔡成伟', '15996930085/13805201583', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('728', '王追厚', '山东省青岛市李沧区滨河路1079号', '2017-12-11 15:46:31', '王追厚', '13255562236', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('729', '曹俊平', '漯河市汉江路与太行山路交叉口方太专卖店', '2017-12-11 15:46:31', '曹俊平', '13939570875', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('730', '陈运', '湖南省湘潭县易俗河玉兰中路134号老邮政局斜对面', '2017-12-11 15:46:31', '陈运', '15367328585', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('731', '张书刚', '山东省潍坊市奎文区鸢飞路735号', '2017-12-11 15:46:31', '张书刚', '13165367999', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('732', '马宗万', '随州市交通大道202-23号(天星家电服务有限公司)', '2017-12-11 15:46:31', '马宗万', '13477348840', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('733', '周金平', '镇江市丹徒区谷阳镇三山湖山路龙腾新村16栋101室', '2017-12-11 15:46:31', '周金平', '18018373202', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('734', '上海白云汽车制管有限公司', '上海市奉贤区四团镇平港路555号', '2017-12-11 15:46:31', '赵勇春', '13701872364', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('735', '顾丽娟', '黑龙江省哈尔滨五常市英联燃气公司', '2017-12-11 15:46:31', '顾丽娟', '18643207176、18249214560', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('736', '武新宝', '吉林省吉林市船营区南京街209部队11号楼2单元1楼右', '2017-12-11 15:46:31', '武新宝', '13844671467', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('737', '易经理', '黄冈市黄州区新港大道130号', '2017-12-11 15:46:31', '易经理', '13636000096', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('738', '赵向明', '湖北仙桃市仙桃大道西端德国威能(金域城邦旁)', '2017-12-11 15:46:31', '赵向明', '13477447777', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('739', '宋春娟', '吉林市昌邑区解放大路延庆小区2号楼2号网店博世专卖店', '2017-12-11 15:46:31', '宋春娟', '13843287566', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('740', '金跃红', '湖南省娄底市粮运建材市场10栋7-8号门面', '2017-12-11 15:46:31', '金跃红', '13873809061', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('741', '张立红', '赣州市定南县物流产业园内中能燃气有限公司', '2017-12-11 15:46:31', '张立红', '18970735996', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('742', '周超峰', '芜湖市瑞丰商博城k9一l03', '2017-12-11 15:46:31', '周超峰', '18056992517', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('743', '溧阳市溧城维妍五金商行', '溧阳苏浙皖边界市场A区2-3号', '2017-12-11 15:46:31', '彭国良', '13093179674', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('744', '张师傅', '江苏省江阴市天鹤六村4幢205', '2017-12-11 15:46:31', '张师傅', '18761507267', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('745', '刘刚', '江阴市朝阳关南路76号', '2017-12-11 15:46:31', '刘刚', '13812101595', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('746', '万成龙', '江阴市山观镇西苑二村39-105', '2017-12-11 15:46:31', '万成龙', '13812024017', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('747', '于世钢', '哈尔滨市道外区先锋路8号禧龙水暖区11区29号', '2017-12-11 15:46:31', '于世钢', '15304803331', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('748', '闫欢', '江苏宿迁市宿城区双庄镇富民大道305江山修理厂', '2017-12-11 15:46:31', '闫欢', '15252031031', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('749', '刘超一', '连云港市连云区墟沟中华路雅都家具城东门金来厨具', '2017-12-11 15:46:31', '刘超一', '15261373037', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('750', '李总', '江阴市花园四村10幢305', '2017-12-11 15:46:31', '李总', '18067985761', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('751', '张小龙', '随州市香江商贸中心深圳五街', '2017-12-11 15:46:31', '张小龙', '18727920097', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('752', '王宝治', '河北黄骅市建设大街北端盛德燃气', '2017-12-11 15:46:31', '王宝治', '18833715378', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('753', '叶磊', '江苏省盐城市滨海县人民北路89号', '2017-12-11 15:46:31', '叶磊', '18912589260', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('754', '常州市新久日用电器有限公司', '常州市新北区孟河镇蔡家村', '2017-12-11 15:46:31', '马苏峰', '15151966464', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('755', '石青青', '重庆市大足区棠香街道海棠路20号', '2017-12-11 15:46:31', '石青青', '13372628461', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('756', '陈强', '黑龙江省哈尔滨市南岗区文明街49号鑫海城2072号', '2017-12-11 15:46:31', '陈强', '13804604877', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('757', '陆文峰', '江苏省句容市宁杭路文泽园20-21号门市', '2017-12-11 15:46:31', '陆文峰', '13952962088', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('758', '徐国民', '江苏省江阴市文通南路114号', '2017-12-11 15:46:31', '徐国民', '13621538894', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('759', '许维从', '安徽省六安市金寨县江店新城区金顾路东方龙城156号', '2017-12-11 15:46:31', '许维从', '13276999990', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('760', '林仁国', '贵阳市西南五金市场', '2017-12-11 15:46:31', '林仁国', '13984078505', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('761', '李忠年', '江苏省徐州市邳州市浙农饰城长江西路51号', '2017-12-11 15:46:31', '李忠年', '13151200687', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('762', '黄海龙', '江苏省无锡市南湖家园104-103', '2017-12-11 15:46:31', '黄海龙', '15995229866', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('763', '姜林波', '云南省昆明市官渡区银水湾2-1-101', '2017-12-11 15:46:31', '姜林波', '18313938163', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('764', '邢卫春', '南京市高淳区北岭路178号-1（日立中央空调专卖店）', '2017-12-11 15:46:31', '邢卫春', '13951953808', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('765', '池中华', '江西省铜鼓县铜城天然气公司', '2017-12-11 15:46:31', '池中华', '15879890907', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('766', '邵师傅', '上海市宝山区长江路26号', '2017-12-11 15:46:31', '邵师傅', '15921111994', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('767', '杨工', '南京市江宁区江苏吉山软件园对面高层工地', '2017-12-11 15:46:31', '杨工', '13675182748', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('768', '徐利刚', '黄石市东方装饰城城中北路24栋253-254号', '2017-12-11 15:46:31', '徐利刚', '18672010861', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('769', '李惠霞', '山西省原平市永康南路天然气客服中心灶具销售部', '2017-12-11 15:46:31', '李惠霞', '18636006585', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('770', '孙亮华', '江苏省盐城市滨海县龙泰御景湾湾69栋502', '2017-12-11 15:46:31', '孙亮华', '13770136101', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('771', '沈国良', '江苏省盐城市建湖县人民南路严桥小区(布克厨卫)一期7号楼', '2017-12-11 15:46:31', '沈国良', '13651593385', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('772', '赵玉军', '江苏徐州睢宁成侯花园30号楼501', '2017-12-11 15:46:31', '赵玉军', '15252098377', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('773', '安徽永军水暖商行', '安徽大市场一区30-31号', '2017-12-11 15:46:31', '包永军', '13053085608', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('774', '吴江会', '贵阳观山湖区世纪城金源街119号', '2017-12-11 15:46:31', '吴江会', '13639148604', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('775', '刘国雄', '湖南省邵阳市西外街12号附1号', '2017-12-11 15:46:31', '刘国雄', '13973580193', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('776', '沈成文', '安徽省合肥市庐江县五里中路871-4', '2017-12-11 15:46:31', '沈成文', '13696799028', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('777', '潘洁', '山东省威海市环翠区青岛北路92号水岸明居3号-3', '2017-12-11 15:46:31', '潘洁', '18663114548', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('778', '辛双余', '贵阳观山湖区北京西路599-601号', '2017-12-11 15:46:31', '辛双余', '18984396167', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('779', '王敬荣', '贵阳中新建材市场22-6号', '2017-12-11 15:46:31', '王敬荣', '15329403803', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('780', '何欢', '宁夏吴忠市盐池县盐林南路10号', '2017-12-11 15:46:31', '何欢', '18161673332', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('781', '蓝锦荣', '安徽省广德县开发区祠山岗小区', '2017-12-11 15:46:31', '蓝锦荣', '13966169330', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('782', '董哲', '临潼区文化路新房管所家属院北门', '2017-12-11 15:46:31', '董哲', '15114833118', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('783', '荣浩天然气有限公司', '安徽省金寨县经济开发区二龙岗村荣浩天然气有限公司', '2017-12-11 15:46:31', '周欣怡', '15855252539', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('784', '吴旭辉', '咸宁市通城县秀水河路25号', '2017-12-11 15:46:31', '吴旭辉', '13907244259', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('785', '王鹏', '咸宁市咸宁大道246号水务局大楼8楼', '2017-12-11 15:46:31', '王鹏', '15629986555', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('786', '王晓莉', '山东省蓬莱市钟楼南路老邮局168米路西（宝祥快餐美食城对面）', '2017-12-11 15:46:31', '王晓莉', '13697888486', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('787', '罗兵', '南昌市进贤县丽景花城', '2017-12-11 15:46:31', '罗兵', '13870950890', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('788', '吴衍海', '山东省泰安市宁阳县阳光景园50米路南好太太', '2017-12-11 15:46:31', '吴衍海', '13705384836', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('789', '洪连福', '江苏省淮安市五金市场C区10号', '2017-12-11 15:46:31', '洪连福', '13196979326', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('790', '卜俊平', '安徽省蚌埠市经开区华府天地家园26号楼1单元301', '2017-12-11 15:46:31', '卜俊平', '17755201999', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('791', '五所', '安徽省蚌埠市蚌山区广场四街阿卡碧水湾2-3-202', '2017-12-11 15:46:31', '五所', '17755201999', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('792', '六所', '安徽省蚌埠市蚌山区兰凤路公安新村4栋1单元101', '2017-12-11 15:46:31', '六所', '17755201999', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('793', '赵亮', '商洛市商州区杨峪河镇房湾村五组', '2017-12-11 15:46:31', '赵亮', '18329982727', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('794', '杨枫', '安徽省蚌埠市高新区新奥燃气有限公司901室', '2017-12-11 15:46:31', '杨枫', '17355206600', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('795', '吕玉清', '黑龙江省哈尔滨市道外区南勋街副286号', '2017-12-11 15:46:31', '吕玉清', '18745079183', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('796', '宁波万茂电器有限公司', '奉化市南山北路178号（三横工业区）', '2017-12-11 15:46:31', '竺斯维', '13777255851', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('797', '金国威', '贵阳市罗汉营52号', '2017-12-11 15:46:31', '金国威', '13984067289', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('798', '杨碧清', '瑞金市绵水路时代广场A区华帝专卖店', '2017-12-11 15:46:31', '杨碧清', '18070577178', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('799', '杨晶', '陕西省西安市蓝田县北环路中段（北关小学西200米）', '2017-12-11 15:46:31', '杨晶', '15719188588', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('800', '王娟', '江苏省泰兴市长征路88号能率专卖店', '2017-12-11 15:46:31', '王娟', '13852881333', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('801', '严锦荣', '杭州市西湖区三墩华彩国际8幢2232室', '2017-12-11 15:46:31', '严锦荣', '13857167278', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('802', '卜俊平1', '安徽省蚌埠市蚌山区华府天地11号楼4单元102', '2017-12-11 15:46:31', '卜俊平1', '18226560508', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('803', '潘亚俊', '淮安市金湖县景秀湾御景苑“碧水源”门市281--3', '2017-12-11 15:46:31', '潘亚俊', '15312342016/13852267016', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('804', '王勤', '江苏省泰州市姜堰区人民北路85号姜堰苏北砂轮厂', '2017-12-11 15:46:31', '王勤', '15161097093', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('805', '薛国娟', '盐城市射阳县香樟园小区6#306', '2017-12-11 15:46:31', '薛国娟', '13276148304', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('806', '贵阳小河联盟配送中心', '贵阳小河锦江路科技楼003号', '2017-12-11 15:46:31', '王荣茂', '13608565559', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('807', '赵振东', '江苏省南京市禄口镇颐家春天28幢316', '2017-12-11 15:46:31', '赵振东', '18012954235', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('808', '邢涛', '合肥市瑶海区莱茵河畔3栋106商铺樱花电器', '2017-12-11 15:46:31', '邢涛', '18949893341', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('809', '贵州祥龙物资有限公司', '贵州市贵阳小河黔江路江名典50号', '2017-12-11 15:46:31', '卢开拓', '18685126833', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('810', '程胜军', '山东省烟台市海港饰家G15百得厨卫', '2017-12-11 15:46:31', '程胜军', '15205450131', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('811', '王霞', '南京北京东路46号安峰置业经济园9楼东', '2017-12-11 15:46:31', '王霞', '18905171688', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('812', '黄建初', '昆山市前进西路182号华建化工商店', '2017-12-11 15:46:31', '黄建初', '15371476928', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('813', '蒋文英', '苏州市劳动路1053号苏州燃气集团客户服务部', '2017-12-11 15:46:31', '蒋文英', '13812782367', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('814', '韩亮亮', '江苏省盐城市阜宁县百盛花苑37幢', '2017-12-11 15:46:31', '韩亮亮', '18361632006', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('815', '荣波电器', '贵阳市解放路荣波电器', '2017-12-11 15:46:31', '刘易书', '13638502864', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('816', '孙贵军', '黑龙江省哈尔滨市道外区太古街五道--七道街地下汇丰太古商城C厅28-31号', '2017-12-11 15:46:31', '孙贵军', '18686798867', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('817', '张磊', '山东省潍坊市卧龙街与白浪河桥西头路北', '2017-12-11 15:46:31', '张磊', '15864587008', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('818', '王喜东', '山东省烟台市福山区城里街163-7-8号', '2017-12-11 15:46:31', '王喜东', '13176919557', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('819', '曲元后', '山东省济南市南辛庄西路75-3号', '2017-12-11 15:46:31', '曲元后', '1509889388', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('820', '徐刘通', '江苏省启东市汇龙镇长龙三村33-401', '2017-12-11 15:46:31', '徐刘通', '18012869139', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('821', '仁怀市燃气有限公司（贵燃集团）', '贵州省仁怀市国酒南路总江会三楼', '2017-12-11 15:46:31', '袁朝兵', '18785244107', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('822', '彭大祥', '江苏省盐城市射阳县海韵家园', '2017-12-11 15:46:31', '彭大祥', '15895128282', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('823', '赵婷', '南京市玄武区康定里小区4幢3单元109室', '2017-12-11 15:46:31', '赵婷', '18651889996', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('824', '林树岭', '黑龙江省大庆市让胡路区新潮建材路5-3-102室', '2017-12-11 15:46:31', '林树岭', '13059092186', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('825', '张梅', '淮安市清浦区柯山路华德力逸翠园18-104', '2017-12-11 15:46:31', '张梅', '15189699648', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('826', '赵昱翔', '山东省青岛市重庆中路中南世纪城2期3号楼1901室', '2017-12-11 15:46:31', '赵昱翔', '18562877388', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('827', '周非凡', '重庆市九龙坡区杨家坪直港大道珠江花园（东门）中大驾校培训基地旁', '2017-12-11 15:46:31', '周非凡', '13618354387', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('828', '贺圣辉', '湖南省娄底市娄星区贤童街市林园处门面', '2017-12-11 15:46:31', '贺圣辉', '15873870529', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('829', '郭辉', '陕西省宝鸡市陈仓区李家崖新村', '2017-12-11 15:46:31', '郭辉', '15091690286', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('830', '万潮', '南昌市青云谱区三店西路310号（麻纺宿舍17栋3单元1号）', '2017-12-11 15:46:31', '万潮', '15270916949', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('831', '张林晓', '河北省沧州市孟村回族自治县孟村北环(孟村回族自治县盛德燃气有限公司)', '2017-12-11 15:46:31', '张林晓', '18730775778', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('832', '范方太', '溧水区新车站', '2017-12-11 15:46:31', '范方太', '18651906263', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('833', '马超群', '江苏省南通市海门市海门华润燃气有限公司', '2017-12-11 15:46:31', '马超群', '18651072759', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('834', '王敏', '山东省海阳市垛山街十号', '2017-12-11 15:46:31', '王敏', '13697872337', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('835', '张东阳', '闵行区灯辉路1129号1号楼3楼', '2017-12-11 15:46:31', '张东阳', '13564122378', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('836', '陈学强', '山东省蓬莱市登州路129号兴强家电', '2017-12-11 15:46:31', '陈学强', '18806452800', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('837', '王波', '山东省济南市天桥区济泺路166-3号万家乐卖店', '2017-12-11 15:46:31', '王波', '13361011115', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('838', '王国民', '泰州市姜堰区罗塘新村7号103', '2017-12-11 15:46:31', '王国民', '18351156363', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('839', '靳俊森', '河南省新乡市红旗区人民东路文苑小区20号楼', '2017-12-11 15:46:31', '靳俊森', '18738399066', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('840', '张文禄', '山东省烟台市环山路115-8号路南，林内燃气专卖店', '2017-12-11 15:46:31', '张文禄', '139-5456-6881', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('841', '陈永', '安徽省滁州市百合花园7栋二单元103室', '2017-12-11 15:46:31', '陈永', '13865818845', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('842', '杨全春', '南昌市洛阳路23-2号华利水电', '2017-12-11 15:46:31', '杨全春', '13732904006', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('843', '江苏新世纪波纹管有限公司', '江苏省泰州市姜堰区白米工业园区', '2017-12-11 15:46:31', '黄玉清', '13641596428', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('844', '张红宝', '江苏省泰州市姜堰区高教路475号', '2017-12-11 15:46:31', '张红宝', '13775797199', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('845', '狄伟珊', '石家庄市裕华区裕华南路方北新村23栋2单元101', '2017-12-11 15:46:31', '狄伟珊', '15930648099', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('846', '孙安', '江西省赣州市安远县欣山镇龙泉西路B2-13号', '2017-12-11 15:46:31', '孙安', '15970875986', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('847', '余兴元', '贵州省毕节市金沙县城', '2017-12-11 15:46:31', '余兴元', '13698531964', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('848', '朱国良', '无锡市滨湖区蠡湖香樟园6-11-2401', '2017-12-11 15:46:31', '朱国良', '13901518790', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('849', '张玉国', '山东省潍坊市潍城区和平路福寿街叉口西80米北万和电气店', '2017-12-11 15:46:31', '张玉国', '18660626538', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('850', '焦东', '陕西省宝鸡市岐山县天燃气有限公司', '2017-12-11 15:46:31', '焦东', '13659173049', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('851', '周桂红', '扬州市四望亭路锦绣家园12-106', '2017-12-11 15:46:31', '周桂红', '15358501223', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('852', '张丽一站', '河北省石家庄市桥西区水产西街38号送变电宿舍5栋104室', '2017-12-11 15:46:31', '张丽一站', '13931185912', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('853', '张丽二站', '河北省石家庄市裕华区裕华路方北新村23栋2单元101室', '2017-12-11 15:46:31', '张丽二站', '13931185912', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('854', '邵来彬', '河南省开封市汉兴路永合丽景小区4栋东单元102室', '2017-12-11 15:46:31', '邵来彬', '13343865111', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('855', '潍坊恩潍经贸有限公司', '山东省潍坊市奎文区福寿街与鸢飞路交叉口路西30米路南', '2017-12-11 15:46:31', '邢洁', '13173101152', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('856', '王玉成', '吉林省吉林市西安路899号碧水山城A1-5号网点港华燃气', '2017-12-11 15:46:31', '王玉成', '15004329900', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('857', '田必福', '贵阳南明区体育路建材市场71号腾豹卫浴', '2017-12-11 15:46:31', '田必福', '13985051812', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('858', '张明', '贵阳市北京西路世纪城居然之家对面', '2017-12-11 15:46:31', '张明', '13984407551', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('859', '闫存宁', '山东省潍坊市潍城区东风街与永安路交叉口北50米金城五金水电暖', '2017-12-11 15:46:31', '闫存宁', '15288995568', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('860', '李金', '湖北省枣阳市民族西路巧太太专卖店（四季蔬菜批发市场门口）', '2017-12-11 15:46:31', '李金', '13871727589', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('861', '赵崇贵', '榆林市航宇路粮食储备库对面', '2017-12-11 15:46:31', '赵崇贵', '13720643588', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('862', '张丽', '徐州市新沂市国际商贸城二期一栋32号', '2017-12-11 15:46:31', '张丽', '18751772850', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('863', '赵乾坤', '新乡市红旗区文苑小区20号楼2单元202室', '2017-12-11 15:46:31', '赵乾坤', '15560126315', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('864', '刘艳君', '黑龙江省肇东市北六道街利波日杂酒店用品商贸行', '2017-12-11 15:46:31', '刘艳君', '13603668898', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('865', '白利友', '黑龙江省安达市华联商业城地下一层百里奇厨房家电商行', '2017-12-11 15:46:31', '白利友', '13359811965', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('866', '高浩洋', '黑龙江省齐齐哈尔市龙沙区青云街269号德国博世燃气炉', '2017-12-11 15:46:31', '高浩洋', '15663206666', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('867', '刘毅', '湖北省十堰市火车站小商品市场', '2017-12-11 15:46:31', '刘毅', '13035258622', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('868', '陈经理', '陕西省榆林市长虹建材市场万和电气', '2017-12-11 15:46:31', '陈经理', '18791440606', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('869', '巫炳军', '淮安市淮安区友谊西路南侧21号炳军塑料厂', '2017-12-11 15:46:31', '巫炳军', '15396950999', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('870', '邵来彬（1）', '河南省开封市宋城路90号，新奥燃气公司e城e家', '2017-12-11 15:46:31', '邵来彬（1）', '13343865111', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('871', '周海军', '山东省济南市中区后龙（济南大学）鑫源暖通', '2017-12-11 15:46:31', '周海军', '13210508788', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('872', '郑霞红', '苏州市吴中新门路2号苏州中纺2楼', '2017-12-11 15:46:31', '郑霞红', '13962140356', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('873', '汪满', '上海闸北区江场西路1138号', '2017-12-11 15:46:31', '汪满', '18918978000', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('874', '骆飞', '西安市临潼区人民路', '2017-12-11 15:46:31', '骆飞', '15191428878', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('875', '董飞朋', '河南省新乡市红旗区人民东路文苑小区20号楼2单元202', '2017-12-11 15:46:31', '董飞朋', '15037190151', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('876', '高宏山', '黑龙江省大庆市萨尔图区铁西天桥下宏达厨具', '2017-12-11 15:46:31', '高宏山', '13845918170', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('877', '杨万宏', '山东省德州市东风东路德百家居广场装饰材料城B区9号', '2017-12-11 15:46:31', '杨万宏', '18653404380', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('878', '胡义伟', '云南省昆明市官渡区日新东路福德南路碧水蓝天小区8栋1单元501室', '2017-12-11 15:46:31', '胡义伟', '13658800501', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('879', '潘礼', '南京市建邺区燕山路118号消防池旁530库', '2017-12-11 15:46:31', '潘礼', '18351003536/13912607122', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('880', '刘德兴', '杭州市江干区俞章路118-2仓库内', '2017-12-11 15:46:31', '刘德兴', '13567142951', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('881', '姚少琴', '连云港市海州区海宁大道玉龙花园8一3号', '2017-12-11 15:46:31', '姚少琴', '15861227799', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('882', '樊友霞', '南昌市进贤县丽景花城7栋1号店铺', '2017-12-11 15:46:31', '樊友霞', '18970092345', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('883', '陈玮', '南京市迈皋桥万寿村10号百江液化气', '2017-12-11 15:46:31', '陈玮', '13357805955', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('884', '宋景超', '广东省惠州市江北望江小学旁，惠州市菲亚特实业有限公司', '2017-12-11 15:46:31', '宋景超', '13669590705', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('885', '乔志清', '榆林市榆阳区金阳小区银沙苑', '2017-12-11 15:46:31', '乔志清', '13259352508', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('886', '章凌广', '山西省长治市亿博五金南一排四号', '2017-12-11 15:46:31', '章凌广', '13834770977/13994606406', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('887', '刘德忠', '赣州市章贡区经济开发区金龙路北万和电器', '2017-12-11 15:46:31', '刘德忠', '15070759588', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('888', '张善文', '武昌区健康路幸福里社区5栋14-16号门面', '2017-12-11 15:46:31', '张善文', '18627970062', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('889', '李孝平', '赣州市于都县长征广场君豪酒店后面一栋', '2017-12-11 15:46:31', '李孝平', '13033212333', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('890', '陈永（2）', '滁州市南谯区会峰东路新奥E城E家城南服务站', '2017-12-11 15:46:31', '陈永（2）', '13865818845', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('891', '陈凯', '安徽省芜湖市弋江区楚江府第1幢1单元201', '2017-12-11 15:46:31', '陈凯', '18605533446', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('892', '王丰', '山东省诸城市九龙商贸城南门西侧（繁荣路大桥东路北）万和电气', '2017-12-11 15:46:31', '王丰', '0536-6047988', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('893', '杜德水', '山东省聊城市茌平县中心街皇明太阳能专营店', '2017-12-11 15:46:31', '杜德水', '13963591151', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('894', '刘勇', '山东省济南市天桥区南全福大街44号1-3-301', '2017-12-11 15:46:31', '刘勇', '13361035377', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('895', '李欢一站', '河北省石家庄市桥西区水产西街38号送变电宿舍5栋104室', '2017-12-11 15:46:31', '李欢一站', '15930158607', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('896', '李欢二站', '河北省石家庄市裕华区裕华路方北新村23栋2单元101室', '2017-12-11 15:46:31', '李欢二站', '15930158607', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('897', '李欢三站', '河北省石家庄市裕华区体育南大街东王丁科苑3号楼2单元102', '2017-12-11 15:46:31', '李欢三站', '15930158607', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('898', '白经理', '山东省聊城市振兴路19号楼，东昌府区大有壁挂炉经营部', '2017-12-11 15:46:31', '白经理', '18906356572', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('899', '侯经理', '陕西省宝鸡市千阳县城关镇东海路加气站', '2017-12-11 15:46:31', '侯经理', '13991361921', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('900', '秦皇岛缘源节能设备有限公司', '1、河北省秦皇岛市海港区森林逸城D2、河北省秦皇岛市青龙县众诚燃气', '2017-12-11 15:46:31', '朱波', '13393307678', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('901', '陶晶', '江苏省如皋市杨宗小区418栋205室', '2017-12-11 15:46:31', '陶晶', '13606278368/15962766228', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('902', '王思聪', '黑龙江省哈尔滨市道里区小职工街18号现代布艺5楼', '2017-12-11 15:46:31', '王思聪', '15546308877', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('903', '吕美春', '山东省烟台莱阳市富水北路46号万和电气', '2017-12-11 15:46:31', '吕美春', '139-6383-2609‬', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('904', '刘小光', '河北省保定市长城北大街大迪小区9栋1单元101', '2017-12-11 15:46:31', '刘小光', '18875739788', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('905', '潘建', '昆山市长江路夹浦新村8幢203室', '2017-12-11 15:46:31', '潘建', '13776316600', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('906', '袁立东', '吉林省公主岭市温州城三区楼北八厅3160-3165', '2017-12-11 15:46:31', '袁立东', '15886005559/15981540808', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('907', '周桂莲', '新余市分宜县高速公路出口南侧200米分宜县顺明天然气有限公司', '2017-12-11 15:46:31', '周桂莲', '13397900531', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('908', '王先生', '南京市浦口区天润城十六街区16栋102', '2017-12-11 15:46:31', '王先生', '18751842979', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('909', '德兴汪', '江西德兴市凤凰家居城日立中央空调店', '2017-12-11 15:46:31', '德兴汪', '13970383663', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('910', '马磊', '陕西省榆林市环城东路流沙杏小区B区18排3号', '2017-12-11 15:46:31', '马磊', '13636843639', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('911', '王彦强', '天津滨海新区汉沽区一经路香水湾花园9-102', '2017-12-11 15:46:31', '王彦强', '15022777345', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('912', '虞智慧', '南昌市洪城大市场五华二区116号', '2017-12-11 15:46:31', '虞智慧', '15970622089', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('913', '孙宏伟', '南京市秦淮区怡水嘉园7幢23号102室', '2017-12-11 15:46:31', '孙宏伟', '136-7513-8673', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('914', '刘洪庆', '山东省泰安市宁阳县', '2017-12-11 15:46:31', '刘洪庆', '13905383156', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('915', '崔小龙', '陕西省榆树市绥德县滨河大道天然气公司营业厅', '2017-12-11 15:46:31', '崔小龙', '15332631958', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('916', '曾小荣', '昆山市中华园路四季华城25栋1103', '2017-12-11 15:46:31', '曾小荣', '15995633498', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('917', '宋忠春', '上海市崇明区堡镇新港路138号西门岗向北50米', '2017-12-11 15:46:31', '宋忠春', '15921933788', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('918', '宁吉星', '山东省胶州市中云办事处对面143号', '2017-12-11 15:46:31', '宁吉星', '15192625578', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('919', '杨林坤', '郑州市金水区经五路丰产路北200米康宁居小区2号楼1单元2楼东户', '2017-12-11 15:46:31', '杨林坤', '15537730665', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('920', '董跃伟', '郑州市郑东新区通泰路与商鼎路交叉口龙杰苑五栋一单元2楼东户', '2017-12-11 15:46:31', '董跃伟', '15238084954', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('921', '张国雨', '郑州市中原区桐柏路煤仓北街风和日丽家园19号楼3单元1楼东户', '2017-12-11 15:46:31', '张国雨', '0371-55905635/18538582819', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('922', '王先品', '山东省滨州市黄一渤八东100米路北（万和电气）', '2017-12-11 15:46:31', '王先品', '18668992233', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('923', '于树军', '山东省滨州市无棣县棣新五与院前街交叉东华帝专卖店', '2017-12-11 15:46:31', '于树军', '158-6521-9912', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('924', '刘润上', '山东省青岛胶南市水灵山路奥华建材市场东门万和电气', '2017-12-11 15:46:31', '刘润上', '13864899582', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('925', '卢立真', '山东省日照市东港区江豪建材市场高新三路万和电气', '2017-12-11 15:46:31', '卢立真', '0633-8265605', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('926', '吴玉振', '洛阳市西工区健康西路灶具批发市场1排2号', '2017-12-11 15:46:31', '吴玉振', '13343883550/13213593397', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('927', '付邦治', '洛阳市关林建材市场4街前排33号', '2017-12-11 15:46:31', '付邦治', '13693790572/13461090066', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('928', '董飞朋2', '河南省新乡市卫滨区解放路华兰大道交叉口轻化家属院', '2017-12-11 15:46:31', '董飞朋2', '15037190151', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('929', '姚松学', '三门峡市建材市场北门进门30米右拐二楼', '2017-12-11 15:46:31', '姚松学', '13781027165', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('930', '任依品', '福建省福州市台江区西洋路嘉园邨新村7座102', '2017-12-11 15:46:31', '任依品', '13328663031', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('931', '荆豪', '河南省三门峡市义乌商贸城A座1344号', '2017-12-11 15:46:31', '荆豪', '13603407075/13193995005', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('932', '亢留勇', '湖北省枣阳市南阳路44号帅丰集成灶', '2017-12-11 15:46:31', '亢留勇', '13339822211', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('933', '王院', '陕西省渭南市贸易广场银岛F-12号', '2017-12-11 15:46:31', '王院', '15336159553', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('934', '罗巧', '陕西省渭南市国贸北400米路东小松鼠壁挂炉', '2017-12-11 15:46:31', '罗巧', '13571381548/15891323903', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('935', '范兴胜', '溧水区中山路242号302', '2017-12-11 15:46:31', '范兴胜', '18795823075', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('936', '刘海峰', '湖南省衡阳市华新区', '2017-12-11 15:46:31', '刘海峰', '17854321105', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('937', '陈尚彬', '盐城市阜宁县苏州路中星嘉园美的专卖店', '2017-12-11 15:46:31', '陈尚彬', '15371121234', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('938', '上海映才机械设备有限公司', '上海市奉贤区庄行镇潘垫路358号', '2017-12-11 15:46:31', '王映志', '02157595701/15316790852', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('939', '凡伟', '湖北省枣阳市民主路老建筑公司院内', '2017-12-11 15:46:31', '凡伟', '15871039330', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('940', '闫效敏', '山西省河津市美丽家园建材城北门口', '2017-12-11 15:46:31', '闫效敏', '15513480399', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('941', '刘建军', '山西省河津市新耿南街信用社楼下', '2017-12-11 15:46:31', '刘建军', '13593572586', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('942', '胡军', '上海金光路801弄（靠近北青公路）', '2017-12-11 15:46:31', '胡军', '15221252981', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('943', '韩玉坤', '黑龙江省哈尔滨市方正林业高楞镇学府一号楼玉坤移动厅', '2017-12-11 15:46:31', '韩玉坤', '13654627856', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('944', '王小红', '山西省临汾市向阳路五交化市场向阳大酒店斜对面', '2017-12-11 15:46:31', '王小红', '13835362084', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('945', '贾小海', '山西省闻喜县太风车路福来大酒店斜对面美的销售维修服务部', '2017-12-11 15:46:31', '贾小海', '13835869110', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('946', '王怀玉', '济南市英雄山路与二七南路交汇处西行100米路南', '2017-12-11 15:46:31', '王怀玉', '053158595053', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('947', '马春强', '河南省三门峡市家电市场东区2排12号万邦燃具', '2017-12-11 15:46:31', '马春强', '13030382577', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('948', '肖振生', '福建省三明市尤溪县水东新城滨河大道2号(尤溪国税局)', '2017-12-11 15:46:31', '肖振生', '13605985897', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('949', '魏善华', '淮安市清河区加州城D1号楼8号', '2017-12-11 15:46:31', '魏善华', '18036543199', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('950', '中油燃气有限责任公司', '山东省滨州市滨城区渤海22号719号', '2017-12-11 15:46:31', '武健', '15553366556', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('951', '刘晓华', '湖南常德市武陵区落路口一巷179号', '2017-12-11 15:46:31', '刘晓华', '13807426206', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('952', '钟主席', '南京市龙蟠中路418号三楼（南京燃气行业协会）', '2017-12-11 15:46:31', '钟主席', '13951911345', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('953', '李云峰', '江西省南昌市西湖区灌婴路鸿顺德建材城14栋23号', '2017-12-11 15:46:31', '李云峰', '18970929016', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('954', '张松林', '湖北省武汉市徐东欧亚达建材家居一楼（博士暖通生活馆）', '2017-12-11 15:46:31', '张松林', '15007179906', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('955', '王志勇', '河南省洛阳市洛龙新区通济街与关林大道交叉口金盾花园13号楼1单元101室', '2017-12-11 15:46:31', '王志勇', '17737736220', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('956', '范东辉', '河南省洛阳市涧西区长安路和景华路交叉口拖厂6号街坊60号楼3单元101', '2017-12-11 15:46:31', '范东辉', '17737736211', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('957', '张朋华', '河南省洛阳市西工区定鼎路与凯旋路交叉口凯旋东路7号院1栋3门102号', '2017-12-11 15:46:31', '张朋华', '17737736228', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('958', '郭泉海2', '河北省保定市新市区百花路劳动局宿舍2号楼一单元101', '2017-12-11 15:46:31', '郭泉海2', '156-3087-9940', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('959', '魏红梅', '郑州博颂路丰乐五金机电城2号楼一层六号', '2017-12-11 15:46:31', '魏红梅', '13323860076/15378717989', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('960', '张春', '河北省唐山市高新区龙康西楼4排4号', '2017-12-11 15:46:31', '张春', '153-3315-0015', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('961', '冯利华', '湖北省武汉市舵路口大市场10区1楼103（东门进右转即到）', '2017-12-11 15:46:31', '冯利华', '15807125151', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('962', '李育昌', '江西赣州市会昌县城九州大道中断会源燃气公司', '2017-12-11 15:46:31', '李育昌', '15390735766', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('963', '李国辉', '盐城市大丰区康平小区11号楼502室', '2017-12-11 15:46:31', '李国辉', '18905112050', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('964', '司志斌', '山东省淄博市淄川经济开发区胶王路以南钟楼以西', '2017-12-11 15:46:31', '司志斌', '17605333988', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('965', '宋松森', '河南省开封市东京大道三宝尚苑4栋1单元101室', '2017-12-11 15:46:31', '宋松森', '13693894007', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('966', '胡余作', '湖南省衡阳市衡南县三塘镇旺旺燃气公司', '2017-12-11 15:46:31', '胡余作', '18873420868', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('967', '王雨刚', '贵州省瓮安县经济开发区一号桥', '2017-12-11 15:46:31', '王雨刚', '13985437117', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('968', '曲伟', '南京市六合区大厂街道葛中路怡景佳园7-101', '2017-12-11 15:46:31', '曲伟', '18013305966', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('969', '刘青', '湖北省武汉市汉阳区罗七北路（百合街）金龙花园三期1栋商铺105室', '2017-12-11 15:46:31', '刘青', '13437267945/027-84885826', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('970', '魏福泰', '河北省廊坊市广阳区博泰公寓A座602室', '2017-12-11 15:46:31', '魏福泰', '13193443730/03165215858', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('971', '张晓东', '河北省霸州市益津中路319号小松鼠壁挂炉专卖店', '2017-12-11 15:46:31', '张晓东', '18903262909/18932609044', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('972', '张淼、王子娟', '河北省保定市南市区三丰中路258号', '2017-12-11 15:46:31', '张淼、王子娟', '0312-2123222/13730205266', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('973', '冯海亮', '河南省洛阳市洛龙区市府西街与政和路交叉口新奥燃气6002', '2017-12-11 15:46:31', '冯海亮', '18638850105', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('974', '李丽', '常州市桃园路19号（常州三隆家电院内）', '2017-12-11 15:46:31', '李丽', '13515257538', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('975', '李新凯', '河南省许昌市三八路与六一路交叉口向西50米路南厨具百货日杂店', '2017-12-11 15:46:31', '李新凯', '13903990502/13629885459', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('976', '刘学普', '河南省许昌市华佗路中心医院东100米路北许昌宜家厨卫电器', '2017-12-11 15:46:31', '刘学普', '13333745891/13462132594', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('977', '侯柏林', '河南省商丘市睢阳区神火大道与珠江路交叉口往西电子商务创业园', '2017-12-11 15:46:31', '侯柏林', '15136008863', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('978', '张总', '陕西省铜川市耀州新城区天然气公司（铜川市金奥天然气公司）', '2017-12-11 15:46:31', '张总', '18909190881', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('979', '牛二丽', '河南省信阳市民权路方太厨房电器', '2017-12-11 15:46:31', '牛二丽', '18638895872', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('980', '丁远清', '南京市秦淮区中山东路300号长发中心C座一楼美的空调', '2017-12-11 15:46:31', '丁远清', '13372002254', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('981', '陈金海', '南京市雨花台区板桥红太阳B7-124', '2017-12-11 15:46:31', '陈金海', '13770331989', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('982', '王维东', '无锡市滨湖区立信大道与高浪路交汇口（富力十号工地）', '2017-12-11 15:46:31', '王维东', '15710185915', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('983', '廖继泽', '四川省德阳市旌阳区天山南路二段358号', '2017-12-11 15:46:31', '廖继泽', '13419048393', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('984', '廖欢喜', '湖北省荆州市公安县青吉工业园欢喜化工气体厂', '2017-12-11 15:46:31', '廖欢喜', '13986726715', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('985', '赵萌', '山东省滨州市阳信县幸福一路与阳城五路交叉口西北角（阳信港华燃气有限公司）', '2017-12-11 15:46:31', '赵萌', '18366820323', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('986', '姜亮', '江西抚州市学府路272号', '2017-12-11 15:46:31', '姜亮', '15870779455', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('987', '臧齐', '江苏省淮安市清河区加州城D1号楼8号', '2017-12-11 15:46:31', '臧齐', '13451888252', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('988', '刘瑞林', '北京市门头沟区三家店新河西路小区十号楼', '2017-12-11 15:46:31', '刘瑞林', '18911126708', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('989', '朱绍春', '武汉青山区建设四路江南春城二期17栋1单元1801', '2017-12-11 15:46:31', '朱绍春', '18627902989', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('990', '于微', '徐水区南关路口南行80米路东阿里斯顿壁挂炉', '2017-12-11 15:46:31', '于微', '18714092369、0312-8600600', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('991', '韩冬锋', '江苏省泰州市姜堰经济开发扬州路93号', '2017-12-11 15:46:31', '韩冬锋', '15061049918', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('992', '李纪昌', '河南省新乡市金港装饰广场中心大道32号', '2017-12-11 15:46:31', '李纪昌', '13072691232', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('993', '李星院', '西安市临潼区常堡建材市场1排1号（万和专卖）', '2017-12-11 15:46:31', '李星院', '13572219015', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('994', '于雄', '西安市临潼区建材家居城A区15-18（银桥乳业对面）', '2017-12-11 15:46:31', '于雄', '15229259392', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('995', '乾广场', '江苏省盐城市东台市安丰镇', '2017-12-11 15:46:31', '乾广场', '13390789898', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('996', '冯伟', '洛阳市涧西区湖北路小学斜对面', '2017-12-11 15:46:31', '冯伟', '13703792494/13027636926', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('997', '孙莺宁', '黑龙江省佳木斯市大世界日杂批发市场东门1区1号', '2017-12-11 15:46:31', '孙莺宁', '13946447696', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('998', '刘金波', '山东省淄博市淄川区', '2017-12-11 15:46:31', '刘金波', '13070676328', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('999', '张滨', '河南省开封市滨河路与公园路交叉口农机岗东北角', '2017-12-11 15:46:31', '张滨', '13937825255/13723261979', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1000', '肖海安', '河北省衡水市胜利东路老桥东20米路南欧仕厨具商场', '2017-12-11 15:46:31', '肖海安', '18231875002/0318-2198159', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1001', '张小珍', '南昌进贤县进贤大道人寿保险公司对面(万家乐授权专卖店)', '2017-12-11 15:46:31', '张小珍', '13397915268', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1002', '席书东', '河南省开封自由路东段33号', '2017-12-11 15:46:31', '席书东', '13837826138/0371-25985643', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1003', '李灵芝', '河南省开封市大梁路圆梦家具城北门西50米华帝专卖店', '2017-12-11 15:46:31', '李灵芝', '13937869493/0317-25580777', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1004', '夏春丽', '河南省开封市大梁路医药大厦路口北50米路东', '2017-12-11 15:46:31', '夏春丽', '13069333368/15837864000', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1005', '翟龚南子', '河南省商丘市佳海国际商贸城22号楼126号', '2017-12-11 15:46:31', '翟龚南子', '13598353007/13523151117', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1006', '胡灿标', '陕西省西安市华清路西北五金市场西排1198号', '2017-12-11 15:46:31', '胡灿标', '13709266226', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1007', '于维硕', '连云港海州区通灌南路35号华润办公楼401', '2017-12-11 15:46:31', '于维硕', '13337876898', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1008', '沈聆', '浙江省海宁市南郊小区三区3号楼', '2017-12-11 15:46:31', '沈聆', '15968357302', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1009', '张姝婧', '湖南省株洲市天元区泰山路1号新奥燃气公司', '2017-12-11 15:46:31', '张姝婧', '15197355603', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1010', '陈秀娟', '山东省淄博市淄川开发区胶王路以南钟楼以西', '2017-12-11 15:46:31', '陈秀娟', '13573331360', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1011', '吴玉洁', '巢湖市向阳南路新奥燃气加气站', '2017-12-11 15:46:31', '吴玉洁', '13866981116', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1012', '顺达不锈钢制品厂', '江苏省盐城东台市溱东草舍工业园', '2017-12-11 15:46:31', '鞠玉发', '13813427292', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1013', '苗多多', '河南省商丘市光彩大市场东电器卫浴一条街98号', '2017-12-11 15:46:31', '苗多多', '18272685106/1313087020868', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1014', '阮进华', '苏州工业园雅戈尔未来城二期1幢2801室', '2017-12-11 15:46:31', '阮进华', '18616819418', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1015', '孙桂芹', '江苏省苏州工业园区雅戈尔未来城二期伯爵1-2801', '2017-12-11 15:46:31', '孙桂芹', '15895428382', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1016', '李欢', '河北省石家庄市建设大街与光华路交叉口瀚科大厦1502室', '2017-12-11 15:46:31', '李欢', '15930158607', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1017', '向刚', '湖北省黄石市西塞山区花园路长青花园', '2017-12-11 15:46:31', '向刚', '18671631337', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1018', '成晶', '江苏省无锡市崇安区广益星苑25#102室', '2017-12-11 15:46:31', '成晶', '18601786007', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1019', '步云', '江苏省丹阳市水关西路门市30-11号门市', '2017-12-11 15:46:31', '步云', '13506108666', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1020', '刘晓成', '江苏省淮安市清河路与上海路交叉口向西100米新潮家具旁e城e家服务站', '2017-12-11 15:46:31', '刘晓成', '18762002785', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1021', '杜平', '保定市建华大街铁路二房舍6栋3单元103', '2017-12-11 15:46:31', '杜平', '18018062209/18851031244', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1022', '夏晔', '上海市宝山区长临路913号（北斗星广场）1104室', '2017-12-11 15:46:31', '夏晔', '13801882738', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1023', '吴老板', '河南省新乡市原阳县鑫源花园42号-2单元-2楼西', '2017-12-11 15:46:31', '吴老板', '18738531555', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1024', '陈国荣', '武汉市东西湖区三秀路荷花苑小区', '2017-12-11 15:46:31', '陈国荣', '13554270066', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1025', '青龙满族自治县众城燃气有限公司', '河北省秦皇岛市青龙满族自治县滨河路东段青龙满族自治县众城燃气有限公司', '2017-12-11 15:46:31', '汤海鸿', '0335-7997903/13081847568', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1026', '庄剑鸿', '福建省泉州市鲤城区美食街华联宿舍106', '2017-12-11 15:46:31', '庄剑鸿', '18650908260', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1027', '王义存', '辽宁省葫芦岛市龙港区安居园25栋4单元103', '2017-12-11 15:46:31', '王义存', '18342359898', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1028', '河南蓝天燃气股份有限公司', '河南省郑州市人民路中段139号', '2017-12-11 15:46:31', '卢广军', '13949035753', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1029', '韩经理', '江苏省桃园路19号（常州三隆家电院内）', '2017-12-11 15:46:31', '韩经理', '0519-88159955', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1030', '郭长勇', '湖北省枣阳市园林小区101号', '2017-12-11 15:46:31', '郭长勇', '18327550004', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1031', '李健兵', '湖南省湘潭市雨湖区韶山东路怡园花苑3栋2单元202室', '2017-12-11 15:46:31', '李健兵', '13621822070', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1032', '肖学文', '湖南省株洲市荷塘区新华西路72号顺达花园6栋107室', '2017-12-11 15:46:31', '肖学文', '18173348378', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1033', '丁雁冰', '河南省商丘市中州路与香君路交叉口中意建材西南门向北100米路', '2017-12-11 15:46:31', '丁雁冰', '15137071171/0370-2776889', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1034', '王必飞', '广东省惠州市惠城区麦地南路翠园B1座602室', '2017-12-11 15:46:31', '王必飞', '18827418052', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1035', '洪诗旺', '陕西省延安市高峁湾建材批发市场A区10号', '2017-12-11 15:46:31', '洪诗旺', '13772299958', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1036', '杨东伟', '陕西省延安市宝塔区长青路丝绸厂建材城一楼老板电器', '2017-12-11 15:46:31', '杨东伟', '13399110734', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1037', '海门华润燃气有限公司', '江苏省南通市海门市海门港新区海景嘉园2幢121号', '2017-12-11 15:46:31', '甘阳', '15162733765', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1038', '刘广彬', '河北省邯郸市丛台区曙光路78号院', '2017-12-11 15:46:31', '刘广彬', '18630449606', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1039', '王小龙', '陕西省西安高新科技产业开发区唐延路35号旺座现代城B座19层', '2017-12-11 15:46:31', '王小龙', '15191576862', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1040', '赵法喜', '河南省开封市祥符区宏达大道北段', '2017-12-11 15:46:31', '赵法喜', '13592130979', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1041', '李伟（南昌）', '江西南昌汇仁大道汇仁阳光花园51店面', '2017-12-11 15:46:31', '李伟（南昌）', '13870890316', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1042', '王洋', '河南省焦作市朝阳路五金建材装饰市场3排10号', '2017-12-11 15:46:31', '王洋', '13503917875/0391-8333623', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1043', '李蕊', '河南省长葛市建设路南三环交叉口长葛汇源天然气有限公司', '2017-12-11 15:46:31', '李蕊', '13733650616', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1044', '董旭', '河北省保定市徐水区南行50米路西恒邦橱柜', '2017-12-11 15:46:31', '董旭', '13832281898/13323128898', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1045', '张玉磊', '河南省卫辉市建设路中段中原银行后院', '2017-12-11 15:46:31', '张玉磊', '15903091145', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1046', '李兴明', '黑龙江省牡丹江市北龙大市场北厅西门宏运炉具厨具专卖店', '2017-12-11 15:46:31', '李兴明', '13766619663、18645300786', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1047', '张新维', '新疆乌鲁木齐市米东南路龙庭华府红园小区', '2017-12-11 15:46:31', '张新维', '15276601100', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1048', '王铁春', '上海闵行开发区江川路2002号6号库', '2017-12-11 15:46:31', '王铁春', '18001834226', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1049', '徐凤', '湖北黄冈市罗田县凤山镇义水北路罗田赛洛天然气有限公司', '2017-12-11 15:46:31', '徐凤', '13687138811', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1050', '王颜', '安徽省马鞍山市花山区华山路900号7-101', '2017-12-11 15:46:31', '王颜', '18356521387', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1051', '孙来福', '江苏省南京市雨花区梅山上怡新村313栋4单元101', '2017-12-11 15:46:31', '孙来福', '15951761090', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1052', '丽德创业园上海倩洋贸易有限公司', '上海市松江区泗泾镇九干路168号1幢C203室（丽德创业园上海倩洋贸易有限公司）', '2017-12-11 15:46:31', '周永俊', '13764510631', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1053', '曹幼英', '湖南省郴州市永兴县滨河路自来水公司', '2017-12-11 15:46:31', '曹幼英', '13203371006', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1054', '余先生', '武汉市汉阳区麒麟路加油站', '2017-12-11 15:46:31', '余先生', '18162790712', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1055', '张文斌', '泰州市海陵区九龙镇钓鱼岛物流园', '2017-12-11 15:46:31', '张文斌', '15366701989', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1056', '姜雪林', '江苏省南通市通州区金沙不锈钢制品厂（通州新通掘公路东侧工业园区）', '2017-12-11 15:46:31', '姜雪林', '13862812804', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1057', '张艳丽', '沈阳市浑南新区富民南街8-19号灶香重庆老火锅', '2017-12-11 15:46:31', '张艳丽', '13940319858', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1058', '刘练', '重庆荣昌昌龙大道23号北国之春1-20-3', '2017-12-11 15:46:31', '刘练', '15683756939', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1059', '刘建红', '廊坊市第五大街酒吧街2栋-D15', '2017-12-11 15:46:31', '刘建红', '18630680081', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1060', '张春', '唐山市高新技术产业园区龙王庙小区81号', '2017-12-11 15:46:31', '张春', '15333150015', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1061', '胡维为', '安徽省芜湖市弋江区楚江府第1幢1单元201', '2017-12-11 15:46:31', '胡维为', '18255164403', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1062', '海航', '郑州市金水区科源路蓝堡湾一期9栋2单元203室', '2017-12-11 15:46:31', '海航', '18538582819', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1063', '王晓漫', '河南省汝州市永安街东七排九号', '2017-12-11 15:46:31', '王晓漫', '18437122332', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1064', '唐利', '湖南省株洲市荷塘区新华西路72号顺达花园6栋107号', '2017-12-11 15:46:31', '唐利', '15773346781', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1065', '杨兴', '湖南省湘潭市韶山东路怡园花苑3栋二单元202号', '2017-12-11 15:46:31', '杨兴', '15173216540', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1066', '潘宇', '淮安市清河区上海路与清河路交界处向西100米', '2017-12-11 15:46:31', '潘宇', '15161767866', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1067', '周浩', '苏州市工业园区现代大道华池街北与沈浒路交界雅戈尔泊爵1栋2802室', '2017-12-11 15:46:31', '周浩', '18352421002', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1068', '陈秀美', '福建省福州市晋安区国货路东泰公寓1栋101', '2017-12-11 15:46:31', '陈秀美', '18059047215', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1069', '孙永伟', '上海市虹梅路3888弄2号102室', '2017-12-11 15:46:31', '孙永伟', '18918792370', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1070', '霍鹏举', '山西省朔州市豪德贸易广场4街46号', '2017-12-11 15:46:31', '霍鹏举', '18234956333/13152714257', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1071', '曹佩', '江苏省泰兴市中南世纪城8-1801', '2017-12-11 15:46:31', '曹佩', '18014525702', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1072', '王存义', '山西省朔州市张辽路朔华燃气安装有限公司', '2017-12-11 15:46:31', '王存义', '13903493215', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1073', '林玉欣', '陕西省西安市莲湖区汉城南路庆安市场163号', '2017-12-11 15:46:31', '林玉欣', '13572025975', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1074', '巩浩', '河南省汝州市永安街东七巷九号', '2017-12-11 15:46:31', '巩浩', '15565139602', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1075', '党茂田', '上海市虹口区车站北路500弄18号101室', '2017-12-11 15:46:31', '党茂田', '13901975142', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1076', '刘洪喜', '黑龙江省哈尔滨市道外区景阳街161号（原利达宫酒店）', '2017-12-11 15:46:31', '刘洪喜', '13936443929', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1077', '金骄勇', '黑龙江省哈尔滨市道外区景阳街203号桃花宾馆酒店用品1层123号', '2017-12-11 15:46:31', '金骄勇', '18103651926', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1078', '姚永成', '廊坊市博泰公寓A座602室', '2017-12-11 15:46:31', '姚永成', '13311507637', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1079', '王德强', '河北省秦皇岛市工农里33-1-202', '2017-12-11 15:46:31', '王德强', '13930360660', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1080', '刘汉迎', '江苏省徐州市邳州市万兴路刘汉迎建材店', '2017-12-11 15:46:31', '刘汉迎', '13092308598', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1081', '谷总', '江苏南京市河西万达金陵国际家居负一楼F8331号松下整体家装', '2017-12-11 15:46:31', '谷总', '13912994088', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1082', '贾总', '江苏省淮安市涟水县老干局东50M百衣百顺店', '2017-12-11 15:46:31', '贾总', '15851789201', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1083', '雷凌华', '南昌市西湖区灌婴路滨江小区15栋', '2017-12-11 15:46:31', '雷凌华', '15079006121', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1084', '吴艳华2', '江苏省南通市虹桥路段家坝小园22幢华帝专卖店', '2017-12-11 15:46:31', '吴艳华2', '13776911587', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1085', '陈海龙', '贵州省贵阳市云岩区三桥和尚坡曹家岩廉租房电梯楼604', '2017-12-11 15:46:31', '陈海龙', '18096000985', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1086', '张琦', '江西南昌市安义县前进路安义中油燃气公司', '2017-12-11 15:46:31', '张琦', '13756999939', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1087', '王潇语', '山西省太原市万柏林区千峰路煤气化大王小区3号楼3单元102室', '2017-12-11 15:46:31', '王潇语', '18835092226', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1088', '武志向', '陕西省榆林市神木县大悦百货对面飞龙公司', '2017-12-11 15:46:31', '武志向', '18991063323', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1089', '吴伟俊', '河南省洛阳市洛阳健康西路灶具批发市场', '2017-12-11 15:46:31', '吴伟俊', '15538551522', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1090', '方利新', '安徽省亳州市谯城区蚂蚱庙中心村七巷20-3新奥e城e家亳州分公司', '2017-12-11 15:46:31', '方利新', '15803266779', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1091', '江艳部长', '新疆奎屯市喀什东路莱茵小镇德信燃气公司', '2017-12-11 15:46:31', '江艳部长', '15099216806', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1092', '刘臣', '江苏省徐州市泉山区万通小区10号楼3单元102室', '2017-12-11 15:46:31', '刘臣', '18005217972', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1093', '魏良友2', '山东省聊城市兴华路聊医花园1号楼2单元1楼西户', '2017-12-11 15:46:31', '魏良友2', '15666736111', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1094', '张涛', '江苏省太仓市之江国际7幢', '2017-12-11 15:46:31', '张涛', '18913783262', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1095', '石洪', '烟台市芝罘区南沟街0012号新奥检测站', '2017-12-11 15:46:31', '石洪', '13573542935', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1096', '郑瑞', '徐州市泉山区王陵路万里巷小区11栋3单元402', '2017-12-11 15:46:31', '郑瑞', '17712199882', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1097', '周海燕', '上海市崇明区长征农场北首绿岛门卫东50米华润燃气营业厅', '2017-12-11 15:46:31', '周海燕', '13912884353', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1098', '徐岳磊', '山东省日照市东港区迎宾路茶博园北沿街西数第五家e城e家', '2017-12-11 15:46:31', '徐岳磊', '15898986056', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1099', '胡晓辉2', '山东省青岛市黄岛区长江街道黄浦路老官厅小区南门164号楼3单元101户', '2017-12-11 15:46:31', '胡晓辉2', '18661713468', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1100', '陈慧杰', '广东省东莞市莞城区澳南路19巷4号', '2017-12-11 15:46:31', '陈慧杰', '13712878466', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1101', '聂辉', '广东省佛山市禅城区石湾镇街道岭南大道北83号金碧花园8座106', '2017-12-11 15:46:31', '聂辉', '13590668540', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1102', '张爱华', '河南省封丘县工业路南段路东', '2017-12-11 15:46:31', '张爱华', '13639634894', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1103', '刘永强', '山西省运城市经济开发区军屯街军屯村村口（山西民生天然气有限公司）', '2017-12-11 15:46:31', '刘永强', '15340996789', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1104', '黄美娇', '福建省泉州市丰泽区海安路115号', '2017-12-11 15:46:31', '黄美娇', '13960289871', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1105', '戴相云', '湖北武汉市江岸区后湖街办事处余华岭佳园16栋1单元2201室', '2017-12-11 15:46:31', '戴相云', '17712882850', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1106', '郑斌', '江苏省徐州市鼓楼区汉城东路九里景秀东50米浩富机械', '2017-12-11 15:46:31', '郑斌', '130-9233-2666', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1107', '贺先森', '陕西省榆林市麻地湾教育局万和电器', '2017-12-11 15:46:31', '贺先森', '18791234531', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1108', '宋永旭', '吉林省长春市光复路天元大厦113号', '2017-12-11 15:46:31', '宋永旭', '13756016083', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1109', '张习文', '长沙市天心区刘家冲中路君尚嘉筑佳苑9栋2单元104室（金林医院旁）', '2017-12-11 15:46:31', '张习文', '15073131237', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1110', '郭伟建', '常州市武进区新天地不夜城创业大厦712', '2017-12-11 15:46:31', '郭伟建', '18015881855', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1111', '朱天保', '新疆乌鲁木齐米东区米东北路61号新疆鑫泰天然气股份有限公司', '2017-12-11 15:46:31', '朱天保', '13669991921/0991-3358911', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1112', '傅友宏', '广东省佛山市顺德区文海西路33号鑫华酒店', '2017-12-11 15:46:31', '傅友宏', '17705191522', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1113', '雷志港', '广东省佛山市南海区桂城街道叠南茶基新村116号二楼', '2017-12-11 15:46:31', '雷志港', '13928669169', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1114', '赖维德', '湛江市霞山区工农西二路4号102室', '2017-12-11 15:46:31', '赖维德', '15813343067', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1115', '文明', '广东省肇庆市端州区月圆花苑北苑16栋一层', '2017-12-11 15:46:31', '文明', '15334057750', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1116', '李翔', '江苏省常州市武进区湖塘镇湾里新村105栋101', '2017-12-11 15:46:31', '李翔', '15380337778', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1117', '李想', '安徽省六安市皋城东路与东一路交叉口六安新奥燃气有限公司', '2017-12-11 15:46:31', '李想', '18656961122', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1118', '方利新', '安徽省亳州市谯城区蚂蚱庙南村7巷20-3', '2017-12-11 15:46:31', '方利新', '15803266779', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1119', '牟春华', '日照市舒斯贝尔花园8栋4单元101', '2017-12-11 15:46:31', '牟春华', '15206339588', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1120', '刘臣', '徐州市泉山区万通小区10-3-102', '2017-12-11 15:46:31', '刘臣', '18005217972', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1121', '金永峰', '青岛市黄岛区玉山路23号三单元102', '2017-12-11 15:46:31', '金永峰', '18661951511', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1122', '王彦辉', '烟台市芝罘区解放路与南沟街交口南沟街0012号', '2017-12-11 15:46:31', '王彦辉', '18053235799', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1123', '刘少阳', '聊城东昌府区利民东路3号（利民大药店西）药监局家属院北楼西单元一楼东户', '2017-12-11 15:46:31', '刘少阳', '15552855188', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1124', '张毅', '江苏省南京市恒嘉路六四路（中海南京玄武公馆）', '2017-12-11 15:46:31', '张毅', '13917888102', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1125', '李国美', '江苏省昆山市玉山镇象屿珑庭10-1304', '2017-12-11 15:46:31', '李国美', '13584902737', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1126', '逯鹏', '河南省卫辉市中原天然气开发公司', '2017-12-11 15:46:31', '逯鹏', '15903885866', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1127', '梁彦', '广东省湛江市霞山区工农西二路4号102房', '2017-12-11 15:46:31', '梁彦', '135-9005-6295', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1128', '董平平', '广东省肇庆市端州区文明路14号祥福楼二层1#写字楼', '2017-12-11 15:46:31', '董平平', '18802728219', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1129', '马利', '湖北荆州市公安县石桥街荆华房产门面38-8号泽安燃气用品', '2017-12-11 15:46:31', '马利', '18871626663', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1130', '张祖华', '武汉市洪山区雄楚大街991号礼尚人家5-14-302', '2017-12-11 15:46:31', '张祖华', '17762587131', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1131', '谢慧国', '安徽省亳州市谯城区蚂蚱庙中心村七巷20-3新奥e城e家亳州分公司', '2017-12-11 15:46:31', '谢慧国', '17756731835', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1132', '张端伟', '湖南省湘潭市雨湖区韶山东路怡园花苑3栋2单元202', '2017-12-11 15:46:31', '张端伟', '18673262206', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1133', '肖思鹏', '湖南省湘潭市岳塘区建设路口丛竹巷液压站件厂新4栋1单元102', '2017-12-11 15:46:31', '肖思鹏', '18867393789', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1134', '隋晓冬', '山东烟台市芝罘区南沟街0012号新奥检测站', '2017-12-11 15:46:31', '隋晓冬', '13853569806', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1135', '张卫东', '贵州省贵阳市小河区小河平桥青龙路矿山厂(食堂旁)', '2017-12-11 15:46:31', '张卫东', '13985106047', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1136', '梁维', '安徽省六安市裕安区东大街古城花园13号楼103', '2017-12-11 15:46:31', '梁维', '18792073177', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1137', '梁均锐', '广东省佛山市顺德高新区（容桂）华天路18号', '2017-12-11 15:46:31', '梁均锐', '18038781988/13702834296', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1138', '陈裕强', '惠州市惠城区麦地花边岭南路16号（惠州市城市燃气发展有限公司客服中心）', '2017-12-11 15:46:31', '陈裕强', '13516682173', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1139', '刘春明', '江苏省泰州市海陵区钓鱼岛物流园', '2017-12-11 15:46:31', '刘春明', '13182441990', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1140', '李欢四站', '河北省石家庄市长安区石纺路6号银都花园8-11A', '2017-12-11 15:46:31', '李欢四站', '15930158607', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1141', '苏安凤', '山东省青岛市城阳区古庙工业园青岛新奥新城燃气有限公司', '2017-12-11 15:46:31', '苏安凤', '15066246897', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1142', '高学清', '安徽省巢湖市含山县环峰镇环城东路西侧26号', '2017-12-11 15:46:31', '高学清', '18355516826', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1143', '程斌', '陕西省铜川市新区华阳小区西门', '2017-12-11 15:46:31', '程斌', '15909192787', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1144', '钟思思', '浙江台州市黄岩区西城街道迎春社区鑫城天元商务广场30栋3单元201', '2017-12-11 15:46:31', '钟思思', '13806593931', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1145', '张小聪', '广东省惠州市仲恺高新区陈江大道中106号', '2017-12-11 15:46:31', '张小聪', '13719670276', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1146', '焦永健', '河北省辛集市和睦井乡和睦井村信用社斜对面品牌服装折扣店', '2017-12-11 15:46:31', '焦永健', '15030189959', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1147', '段军', '新疆维吾尔自治区乌鲁木齐市新市区高新街街道长沙路115号金色港湾小区2栋一层4号商铺龙胜管业', '2017-12-11 15:46:31', '段军', '13659988578', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1148', '李忱', '新疆省伊宁市新华西路43号', '2017-12-11 15:46:31', '李忱', '13109060118/18609990890', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1149', '兰剑', '新疆省乌鲁木齐市新市区石油新村瑞昌街183号横淑平价购物超市', '2017-12-11 15:46:31', '兰剑', '13999876700', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1150', '樱花厨卫中国有限公司/上海志冉', '昆山市青阳南路一号', '2017-12-11 15:46:31', '赵继光', '13405148058', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1151', '赵爱国', '赣州市开发区金东路嘉年华D栋2号店巧派厨电', '2017-12-11 15:46:31', '赵爱国', '18779725378', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1152', '苏祈瑞', '湖北鄂州市寿昌大道洋澜国际康城南门诺诚舒适环境设备有限公司', '2017-12-11 15:46:31', '苏祈瑞', '13669012121', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1153', '六安燃气', '安徽省六安市金安区皋城东路白鹭雅苑别墅区H9-05E城E家服务二站', '2017-12-11 15:46:31', '六安燃气', '18805646585', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1154', '杨俊东', '湖南省娄底市娄星区贤童街华润燃气有限公司', '2017-12-11 15:46:31', '杨俊东', '13317389269', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1155', '陈海军', '江苏省如皋市苏浙大市场33-23', '2017-12-11 15:46:31', '陈海军', '18806275902', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1156', '杨涛2', '江苏省徐州市邳州市运河镇鸿福家园7号楼', '2017-12-11 15:46:31', '杨涛2', '15262172122', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1157', '李总', '河南省信阳市浉河区羚锐大道长虹花园住宅小区十号楼二单元203', '2017-12-11 15:46:31', '李总', '13507605369', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1158', '郑洪', '浙江杭州萧山区北干一苑9幢3单元102室', '2017-12-11 15:46:31', '郑洪', '17681825531/18858160016', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1159', '朴春玲', '山东省淄博市张店区华光路88号远通大厦501', '2017-12-11 15:46:31', '朴春玲', '18678205680', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1160', '韦朝嘉', '广西省桂林市七星区七星路16号景韵世家8栋104室', '2017-12-11 15:46:31', '韦朝嘉', '18290018303', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1161', '王立忠', '山东省烟台经济技术开发区华电小区13号楼1单元36号车库（泰山路与珠江路十字路口西北角）', '2017-12-11 15:46:31', '王立忠', '15165742358', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1162', '杜勇', '江西省南昌市新建区落龙724社区', '2017-12-11 15:46:31', '杜勇', '13755735553', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1163', '杜春剑', '福建省泉州市丰泽燃气大厦B座5楼', '2017-12-11 15:46:31', '杜春剑', '15260728129', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1164', '沈荣华', '泰州市海陵区联钢物资公司江洲路205号', '2017-12-11 15:46:31', '沈荣华', '18762331000', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1165', '郝阳', '山西省临汾市尧都区解放东路中试巷2号，临汾市城燃天然气有限公司', '2017-12-11 15:46:31', '郝阳', '18636790007', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1166', '郭学龄', '济南市天桥区小清河北路王小二炒鸡旁边工业用昵厂', '2017-12-11 15:46:31', '郭学龄', '18963548733', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1167', '谭小琴', '湖北省武昌区中北路54号宏城金都C座负二楼电梯口', '2017-12-11 15:46:31', '谭小琴', '13871537238', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1168', '连开海', '晋江市青阳街道兴盛路曾井二排5号', '2017-12-11 15:46:31', '连开海', '15559104269', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1169', '于天津', '山东省德州市皇明太阳能总部', '2017-12-11 15:46:31', '于天津', '13365347573', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1170', '金恒', '山东省淄博市张店区，莲池中路西五路瑞景苑16号楼1单元101', '2017-12-11 15:46:31', '金恒', '13864415257', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1171', '秦乐', '江苏省苏州市苏州园区沈浒路535号雅戈尔未来城', '2017-12-11 15:46:31', '秦乐', '15850012259', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1172', '刘从越', '黑龙江省哈尔滨市通河县越胜商店', '2017-12-11 15:46:31', '刘从越', '13796152852、0451-57422890', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1173', '王新伟', '山东省烟台市莱阳市龙门西路梨花涂料厂院内', '2017-12-11 15:46:31', '王新伟', '15318663977', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1174', '严冬', '江苏省泰州市海陵区九龙镇西堤阳光7号楼', '2017-12-11 15:46:31', '严冬', '13815965918', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1175', '王义存2', '辽宁省葫芦岛市龙港区区海飞苑北门', '2017-12-11 15:46:31', '王义存2', '18342359898', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1176', '王义存3', '辽宁省葫芦岛市连山区三维家园', '2017-12-11 15:46:31', '王义存3', '18342359898', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1177', '许剑', '浙江省金华市婺城区，环城南路西段1138号，广天绿城花园6-3-102', '2017-12-11 15:46:31', '许剑', '13616791018', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1178', '武小燕', '陕西省榆林市府谷县人民南路（AO史密斯店）', '2017-12-11 15:46:31', '武小燕', '0912-8710637、13109683228', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1179', '侯柏林2', '河南省商丘市梁园区平原路与文化路交叉口北香格里拉小区20号楼3单元1楼', '2017-12-11 15:46:31', '侯柏林2', '15136008863', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1180', '夏兴', '山东省济南市槐荫区阳光新路24号怡心园小区6#2-101', '2017-12-11 15:46:31', '夏兴', '18615681981', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1181', '于明延', '黑龙江省哈尔滨五常市运政楼东升吸塑美术社', '2017-12-11 15:46:31', '于明延', '18643207176', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1182', '孙达', '江苏省南通市崇川区家和花苑2栋105', '2017-12-11 15:46:31', '孙达', '15151884665', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1183', '胡晓辉', '山东省青岛市胶州市富豪新村北侧鸿泰小区7栋东3户', '2017-12-11 15:46:31', '胡晓辉', '18661713468', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1184', '时化伟', '浙江省宁波有鄞州区首南街道香堤水岸12幢2单元101室', '2017-12-11 15:46:31', '时化伟', '13267066331', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1185', '郑能坤', '山东省青岛市胶南铁山路和高城路交叉路口，铁山路综合网点8号', '2017-12-11 15:46:31', '郑能坤', '18765928449', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1186', '张金水', '河北晋州市朝阳路河北鑫尚采暖设备有限公司', '2017-12-11 15:46:31', '张金水', '13932109648', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1187', '陈勇', '河北省衡水市大麻森乡耿家村', '2017-12-11 15:46:31', '陈勇', '18031873851', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1188', '周红炼', '武汉市东西湖区金银湖南四街2号湖北荷普药业股份有限公司', '2017-12-11 15:46:31', '周红炼', '13720238619', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1189', '徐磊', '浙江省衢州市柯城区荷花街道松园东区3幢1单元101室', '2017-12-11 15:46:31', '徐磊', '18858124846', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1190', '王金堂', '山东省诸城市兴华西路范公小区四单元102', '2017-12-11 15:46:31', '王金堂', '13752324603', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1191', '王斌', '河南省开封市区', '2017-12-11 15:46:31', '王斌', '13343659989', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1192', '张春英', '吉林省松原市松原大路366号', '2017-12-11 15:46:31', '张春英', '15944800590', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1193', '金占波', '福建省福州市前横路与福新路交叉口盛辉大厦旁福兴物联网产品展示中心D27号', '2017-12-11 15:46:31', '金占波', '18950376065', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1194', '苗世浪', '陕西省延安市宝塔区黄蒿湾金岳小区库房', '2017-12-11 15:46:31', '苗世浪', '18809117566', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1195', '陈炜', '扬州市邗江区文汇东路秋雨新村4幢102', '2017-12-11 15:46:31', '陈炜', '18756961709', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1196', '高金晶', '浙江省湖州市吴兴区南庄圩小区54幢', '2017-12-11 15:46:31', '高金晶', '15268249947', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1197', '莫维华', '南昌市靖安县双溪大道9号电力新村', '2017-12-11 15:46:31', '莫维华', '13879507883', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1198', '周丽', '湖南省娄底市娄星区商业区', '2017-12-11 15:46:31', '周丽', '18664990028', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1199', '陈剑2', '安徽省六安市金安区皋城东路白鹭雅苑别墅区H9-05', '2017-12-11 15:46:31', '陈剑2', '18805646585', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1200', '王洪瑞', '黑龙江省哈尔滨市南岗区哈西万达华宅F3-单元2003', '2017-12-11 15:46:31', '王洪瑞', '13804572729', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1201', '吴工', '惠州市博罗县阳镇商业街东路桃园路富锦花园201-301号', '2017-12-11 15:46:31', '吴工', '13928304740', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1202', '仇海军', '盐城市解放南路268号金鹰天地广场2号写字楼1117室', '2017-12-11 15:46:31', '仇海军', '15371219089', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1203', '朱民', '合肥市望江西路与岳西路交叉口华地学府名都3栋2单元104', '2017-12-11 15:46:31', '朱民', '18256927753', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1204', '张仕河', '广东省惠州市博罗县石湾镇上访Q4区M栋106室', '2017-12-11 15:46:31', '张仕河', '13413063774', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1205', '陈先天', '广东省惠州市博罗县罗阳镇江尾村6号', '2017-12-11 15:46:31', '陈先天', '13421652032', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1206', '南京渲有贸易有限公司（帅康）', '南京市秦淮区朝天宫止马村小区10号302', '2017-12-11 15:46:31', '宋静', '13815854358', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1207', '刘晓龙', '保定市新区百花路劳动局宿舍2号楼1单元101室', '2017-12-11 15:46:31', '刘晓龙', '18875739788', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1208', '明亮', '湖北省随州广水市应山办事处科技小区第三巷38栋西单元202', '2017-12-11 15:46:31', '明亮', '15971941237', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1209', '王兵', '上海市宝山区逸仙路1321弄1支弄23号对门车棚收', '2017-12-11 15:46:31', '王兵', '13671858809', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1210', '沈旭波', '浙江省宁波市海曙区柳西新村15号11幢101号', '2017-12-11 15:46:31', '沈旭波', '15888121961', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1211', '沈旭波1', '浙江省宁波市江东区惊驾路251号弄29号10幢104室', '2017-12-11 15:46:31', '沈旭波1', '15888121961', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1212', '沈旭波2', '浙江省宁波市鄞州区中河街道凤凰新村71幢106室', '2017-12-11 15:46:31', '沈旭波2', '15888121961', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1213', '沈旭波3', '浙江省宁波市鄞州区香堤水岸12幢2单元101', '2017-12-11 15:46:31', '沈旭波3', '15888121961', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1214', '易阳', '江苏省镇江市常发广场6号楼1305', '2017-12-11 15:46:31', '易阳', '139-5294-4990', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1215', '程茂南', '安徽省合肥市嘉山路龙兴苑一号楼门面107', '2017-12-11 15:46:31', '程茂南', '13965046016', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1216', '周驰', '安徽省合肥市新站区淮海大道京商商贸城G区GD121', '2017-12-11 15:46:31', '周驰', '13956932244', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1217', '长葛市麟觉能源有限公司', '河南省长葛市建设路南段水木清华售楼处', '2017-12-11 15:46:31', '张凡', '18937447027', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1218', '张镪森', '温州市鹿城区锦绣路银都花苑浙瓯2幢106室', '2017-12-11 15:46:31', '张镪森', '152-5771-7045', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1219', '薛恒霞', '江苏省镇江市青年广场旭辉时代华府6-303（镇江帅康办事处）', '2017-12-11 15:46:31', '薛恒霞', '0511-85033691', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1220', '邵芳真', '浙江省绍兴市越城区勾乘路秀水苑杨柳阁8栋104室', '2017-12-11 15:46:31', '邵芳真', '15373285393', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1221', '范碧云', '江苏省泰州市兴化市天妃居委会八字桥中央广场C1区01室', '2017-12-11 15:46:31', '范碧云', '18762335808', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1222', '于维硕1', '连云港海州区海宁大道玉龙华园21-7', '2017-12-11 15:46:31', '于维硕1', '13337876898', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1223', '谢丽丽', '福建省石狮市濠江路丽景花苑495号201', '2017-12-11 15:46:31', '谢丽丽', '18894012686', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1224', '陈大宁', '南京浦珠南路30号南工大亚青村丰巢快递柜', '2017-12-11 15:46:31', '陈大宁', '13505183822', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1225', '苏安凤1', '山东省青岛市城阳区国城路101号茵悦小城4号楼2单元102', '2017-12-11 15:46:31', '苏安凤1', '15066246897', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1226', '侯柏林3', '河南省商丘市梁园区文化路与中州路交叉口东220米路北四季港湾小区25号楼2单元101', '2017-12-11 15:46:31', '侯柏林3', '15136008863', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1227', '蒋燕', '江苏省扬州市开发区御峰国际2-204帅康电器扬州办事处', '2017-12-11 15:46:31', '蒋燕', '0514-87369189', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1228', '贺英祥', '惠州市惠城区三栋镇数码工业园南区水北区惠州燃气公司仓库', '2017-12-11 15:46:31', '贺英祥', '13927308508', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1229', '葛安丽', '江苏省句容市宁杭南路32号。金阳光电器服务部', '2017-12-11 15:46:31', '葛安丽', '13914598566', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1230', '郑和荣', '广东省中山市南头镇南和东路324号', '2017-12-11 15:46:31', '郑和荣', '13928135225', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1231', '田思思', '河北省晋州市摩尔新街对面奥莱克健身中心', '2017-12-11 15:46:31', '田思思', '18732104840', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1232', '朱波1', '河北省秦皇岛市开发区孟营市场2号时光便当', '2017-12-11 15:46:31', '朱波1', '13393307678', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1233', '陈赵新', '广东省梅州巿大埔县湖寮镇城北湖山中学', '2017-12-11 15:46:31', '陈赵新', '13825943739', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1234', '郑洪1', '浙江省杭州市萧山区天汇园9幢4单元101', '2017-12-11 15:46:31', '郑洪1', '1768182553118858160016', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1235', '李国栋', '江苏省昆山市宝益路89号中栋三楼光芒厨卫电器', '2017-12-11 15:46:31', '李国栋', '13962677899', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1236', '王世来', '南京巿雨花台区板桥弘阳装饰城B8区-1幢116号（五金区4号路）', '2017-12-11 15:46:31', '王世来', '13805150192', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1237', '刘亮', '无锡刘潭塘头村塘新路50-31号', '2017-12-11 15:46:31', '刘亮', '15806171689', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1238', '徐柏东', '黑龙江省北安市北方商城柏东酒店日杂批发106号库', '2017-12-11 15:46:31', '徐柏东', '13845620876/13846361011', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1239', '李鹏', '广东省汕头市潮阳区棉城镇新华东路南工业园区新通达钢管厂旁民安燃气公司三楼大区办公室', '2017-12-11 15:46:31', '李鹏', '13503890436', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1240', '田英华', '德州经济开发区太阳谷大道皇明太阳能搪瓷厂仓库', '2017-12-11 15:46:31', '田英华', '13310605155', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1241', '李波', '江苏省邳州市大运河装饰城天龙五金', '2017-12-11 15:46:31', '李波', '15952123402', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1242', '陈彭刚', '陕西省榆林市长虹建材市场万和电气', '2017-12-11 15:46:31', '陈彭刚', '18791440606', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1243', '胡成宝', '盱眙县海通建材城东大门对面能率专卖店', '2017-12-11 15:46:31', '胡成宝', '18015164666', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1244', '梅先生', '河南省驻马店市交通路儿童公园东50米路北，万和厨卫暖通', '2017-12-11 15:46:31', '梅先生', '15236928588/03962912860', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1245', '李冰聪', '广东省惠州市博罗县罗阳镇桃园路商业东街富景花园', '2017-12-11 15:46:31', '李冰聪', '15820704055', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1246', '刘凯', '淮安市清江浦区承德南路日月星城东区33幢103室，新奥E城E家', '2017-12-11 15:46:31', '刘凯', '15252396485', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1247', '韩以然', '淮安市清河路和上海路交叉口向西100米阿美龙虾馆对面），新奥E城E家', '2017-12-11 15:46:31', '韩以然', '13186642209', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1248', '张从静', '淮安市经济开发区新村3区一排3号，新奥E城E家', '2017-12-11 15:46:31', '张从静', '15061411281', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1249', '徐锦龙', '淮安市淮阴区盐依云路风荷丽景门面房18-23，新奥E城E家', '2017-12-11 15:46:31', '徐锦龙', '15162928078', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1250', '张素勇', '河北省石家庄市桥西区平安南大街42号君合商务中心院内万和燃气具', '2017-12-11 15:46:31', '张素勇', '13933110339', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1251', '胡运华', '南昌市安义县文峰路557号国税局对面（森歌集成灶专卖）', '2017-12-11 15:46:31', '胡运华', '13970827656', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1252', '林怀志', '厦门市湖里区国联大厦14G', '2017-12-11 15:46:31', '林怀志', '18030210662', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1253', '李勇波', '安徽省亳州市谯城区蚂蚱庙中心村七巷20-3', '2017-12-11 15:46:31', '李勇波', '18726755198', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1254', '孙晓理', '安徽省亳州市谯城区建安路竹溪花园2栋3单元101', '2017-12-11 15:46:31', '孙晓理', '18856799076', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1255', '张继合', '亳州市谯城区骆驼坑街义和小区南门向西20米新奥e城e家', '2017-12-11 15:46:31', '张继合', '15385229892', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1256', '沈聆（1）', '浙江省海宁市百汇隆广场E区014号', '2017-12-11 15:46:31', '沈聆（1）', '15968357302', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1257', '王少林', '湖南省株洲市天元区韶山路钻石花园15栋102室', '2017-12-11 15:46:31', '王少林', '13337339322', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1258', '唐威', '湖南省株洲市荷塘区新华西路72号顺达花园6栋107号', '2017-12-11 15:46:31', '唐威', '18973376080', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1259', '余跃龙', '湖南省株洲市芦淞区龙泉村井家组180号附1号', '2017-12-11 15:46:31', '余跃龙', '13973355457', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1260', '刘新', '湖南省株洲市石峰区响田西路80号香博堡3栋104室', '2017-12-11 15:46:31', '刘新', '15173339992', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1261', '杭州五智科技有限公司', '浙江省杭州市余杭区瓶窑镇凤都工业园前程路2-4号', '2017-12-11 15:46:31', '王五项', '13625812918/0571-88531718', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1262', '王金堂1', '山东省诸城市密州路龙城华庭北门2-24', '2017-12-11 15:46:31', '王金堂1', '13371089575', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1263', '边疆', '天津市河西区体院北津淄东里12门501号', '2017-12-11 15:46:31', '边疆', '13302196921', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1264', '张健', '随州市文峰物流园众诚暖通客户服务中心', '2017-12-11 15:46:31', '张健', '13908666058', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1265', '陈威豪', '惠州市惠城区麦地花边岭南路16号。惠州市城市燃气发展有限公司客服中心', '2017-12-11 15:46:31', '陈威豪', '13829982891', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1266', '赵连明', '辽宁省沈阳市浑南新区金水花城南门灶香重庆火锅', '2017-12-11 15:46:31', '赵连明', '18842300000', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1267', '李阳', '河北黄骅市建设大街北端盛德燃气', '2017-12-11 15:46:31', '李阳', '15632733678', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1268', '王平', '江西省赣州市安远县欣山镇龙泉西路B2-13号', '2017-12-11 15:46:31', '王平', '13803582225', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1269', '庞土雄', '广东省湛江市开发区人民大道中23号之三金碧花园12栋B1', '2017-12-11 15:46:31', '庞土雄', '18219438468', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1270', '马经理', '许昌市春秋广场东侧天伦大厦七楼', '2017-12-11 15:46:31', '马经理', '13303752434', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1271', '丁金龙', '山东省青岛市胶南市铁山路与高城路交叉口南20米新奥e城e家', '2017-12-11 15:46:31', '丁金龙', '13697661265', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1272', '陈永（1）', '安徽省滁州市琅琊区金域豪庭5栋2单元103室', '2017-12-11 15:46:31', '陈永（1）', '13865818845', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1273', '徐刘通1', '常熟市珠江路丽珠苑1-406车库', '2017-12-11 15:46:31', '徐刘通1', '18012869139', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1274', '王义存4', '辽宁省葫芦岛市龙港区龙湾大街山水路2号', '2017-12-11 15:46:31', '王义存4', '18342359898', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1275', '雷生', '佛山市南海区桂城街道叠南茶基新村116号文华北路中天药房二楼（即星辉宾馆旁）', '2017-12-11 15:46:31', '雷生', '13928669169', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1276', '南京渲有贸易有限公司（帅康）', '南京市建业西路止马村1-3号南京渲有贸易有限公司', '2017-12-11 15:46:31', '宋静1', '13815854358', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1277', '杨金永', '河北省玉田县宏泰佳城东门对面万和专卖店', '2017-12-11 15:46:31', '杨金永', '13081137102', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1278', '张世双', '安徽省广德县桃州南路79号万家乐', '2017-12-11 15:46:31', '张世双', '18756318270', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1279', '黄文君', '浙江省台州市黄岩区西城街道前洋头里八弄7号', '2017-12-11 15:46:31', '黄文君', '15356355553', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1280', '杨兴1', '湖南省湘潭市雨湖区雨湖路113号新奥燃气', '2017-12-11 15:46:31', '杨兴1', '15173216540', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1281', '张红艳', '陕西省铜川市新区华阳小区西门', '2017-12-11 15:46:31', '张红艳', '18909190881', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1282', '邵余德', '南京市江宁区文靖西路193-3号', '2017-12-11 15:46:31', '邵余德', '18061616800', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1283', '姜金国', '山东省德州市经济开发区太阳谷大道皇明太阳能总部', '2017-12-11 15:46:31', '姜金国', '13354432009', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1284', '苗少丽（六所）', '安徽省蚌埠市蚌山区兰凤路公安新村4栋1单元101', '2017-12-11 15:46:31', '苗少丽（六所）', '13865058835', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1285', '孙素萍（五所）', '安徽省蚌埠市蚌山区广场四街金奥华府30号2-101室', '2017-12-11 15:46:31', '孙素萍（五所）', '13955273667', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1286', '何娜（四所)', '安徽省蚌埠市禹会区张公山瑞城小区A区4栋3单元101', '2017-12-11 15:46:31', '何娜（四所)', '0552-2041591/18119866505', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1287', '吕婕(一所）', '安徽省蚌埠市禹会区华光大道与兴华路交叉口新奥大楼901', '2017-12-11 15:46:31', '吕婕(一所）', '13865069955', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1288', '张舒（二所）', '安徽省蚌埠市禹会区华光大道与兴华路交叉口新奥大楼', '2017-12-11 15:46:31', '张舒（二所）', '13721168533', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1289', '刘萍（三所）', '安徽省蚌埠市蚌山区青年街280号新奥燃气社群网格', '2017-12-11 15:46:31', '刘萍（三所）', '13855222719', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1290', '刘玉明', '江西省南昌市红角洲学府大道欧罗巴广场旁（大金空调店）', '2017-12-11 15:46:31', '刘玉明', '15907095915', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1291', '王义存5', '辽宁省葫芦岛市兴城市兴海北街92-2号', '2017-12-11 15:46:31', '王义存5', '18342359898', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1292', '李先生', '河南省开封市金明区翠园光明医院', '2017-12-11 15:46:31', '李先生', '037122237556/13939066134', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1293', '张俊磊', '河南省驻马店市天中山路341号', '2017-12-11 15:46:31', '张俊磊', '13183149500', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1294', '熊炜', '南昌市西湖区云天路观洲小区2栋3单元206室', '2017-12-11 15:46:31', '熊炜', '13803539965', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1295', '廖翔', '抚州市临川区抚北工业园区抚北天然气有限公司', '2017-12-11 15:46:31', '廖翔', '18079080001', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1296', '张克贤', '河南省洛阳市关林福拉多厨具市场北街58号', '2017-12-11 15:46:31', '张克贤', '13014738099', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1297', '黄本亮', '湖北省鄂州市鄂城区菜园头胡家墩58号', '2017-12-11 15:46:31', '黄本亮', '13871571552', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1298', '胡文兵', '湖北省武汉市江岸区罗家咀路君安花园9栋6号门面万和专卖店', '2017-12-11 15:46:31', '胡文兵', '15337244961', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1299', '徐鹏', '湖北省宜昌市西陵区华祥商业中心西苑小区3栋负一楼', '2017-12-11 15:46:31', '徐鹏', '18138835533', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1300', '李志伟', '山东省烟台市莱山区海滨小区宏川路58-4', '2017-12-11 15:46:31', '李志伟', '18663872432', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1301', '万国才', '四川省自贡市（自提）', '2017-12-11 15:46:31', '万国才', '13684326162', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1302', '朱荣国', '广东省佛山市顺德区容桂街道顺德大道细滘大桥旁金志公司', '2017-12-11 15:46:31', '朱荣国', '13928613920', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1303', '周杨', '咸宁市咸安区潜山路白茶4组', '2017-12-11 15:46:31', '周杨', '13972849905', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1304', '田浩', '天津市汉沽区大田小区居委会', '2017-12-11 15:46:31', '田浩', '18522997826', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1305', '牛小伍', '河南焦作市山阳区光亚二街南9号', '2017-12-11 15:46:31', '牛小伍', '18639116068', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1306', '刘勇', '武汉市洪山区南湖大道西加油站旁', '2017-12-11 15:46:31', '刘勇', '18507153533', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1307', '庞军', '吉林市江华小区二号楼六号网点', '2017-12-11 15:46:31', '庞军', '13331624000', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1308', '郭玉胜', '河南省郑州市金水区任寨北街', '2017-12-11 15:46:31', '郭玉胜', '13603983354', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1309', '岳永泉', '广西省钦州市新桂路体育中心（市社保中心）钦州胜利天然气有限公司', '2017-12-11 15:46:31', '岳永泉', '18977147500', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1310', '任卫杰', '三门峡市大岭南路汇景新城楼下万和电气', '2017-12-11 15:46:31', '任卫杰', '18539938855', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1311', '李国芳', '昆山市宝益路89号中三楼光芒电器', '2017-12-11 15:46:31', '李国芳', '13775715699', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1312', '杜安庆', '南京市南湖茶亭东街79号17栋303室', '2017-12-11 15:46:31', '杜安庆', '13851511761', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1313', '张琳', '山东省青岛市兴城路15号。青岛凯特电器有限公司', '2017-12-11 15:46:31', '张琳', '13808997185', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1314', '董月华', '安徽省安庆市安庆光彩二期花园广场A-14号安庆宇晨厨具用品商行', '2017-12-11 15:46:31', '董月华', '13955621769', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1315', '乔爽', '黑龙江省大庆市让胡路区新潮建材楼5～1～102', '2017-12-11 15:46:31', '乔爽', '15164526525', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1316', '陆端彬', '广西省钦州市新桂路体育中心（市社保中心）钦州胜利天然气有限公司', '2017-12-11 15:46:31', '陆端彬', '13877776871', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1317', '李健', '山东省潍坊市安丘市官庄镇', '2017-12-11 15:46:31', '李健', '13573650578', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1318', '陈昌吉', '山东省潍坊市寿光台头辛庄中慧养鸡场', '2017-12-11 15:46:31', '陈昌吉', '13563682179', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1319', '杨锦利', '南昌市金润广场F栋26号金利水暖批发部', '2017-12-11 15:46:31', '杨锦利', '13699561023', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1320', '余爱明', '湖南省湘潭市建设北路156号', '2017-12-11 15:46:31', '余爱明', '13873269124', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1321', '孙立伟', '石家庄市长安区石纺路6号银都花园8-11A', '2017-12-11 15:46:31', '孙立伟', '13102887804', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1322', '兰东华', '深圳市龙岗区布澜路31号A1栋4楼', '2017-12-11 15:46:31', '兰东华', '18923298080', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1323', '陈震', '山东省泰安市东岳大街花园小区十号楼前杉浦壁挂炉', '2017-12-11 15:46:31', '陈震', '13954853641', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1324', '王义存6', '辽宁省葫芦岛市龙港区龙湾大街水路2号新奥燃气', '2017-12-11 15:46:31', '王义存6', '18342359898', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1325', '沈东昌', '湖北省孝感市玉泉路63号东升园院内万和专卖店', '2017-12-11 15:46:31', '沈东昌', '13227124307', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1326', '闰康', '河南省南阳市建设路与文化路交叉口西北角二楼', '2017-12-11 15:46:31', '闰康', '18568797588', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1327', '游朗', '南昌市西湖区灌婴路滨江小区15栋', '2017-12-11 15:46:31', '游朗', '15979165383', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1328', '李磊', '广东省惠州市惠城区河南岸汽车大市场东部铭座1单元2402', '2017-12-11 15:46:31', '李磊', '15919019601', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1329', '武芮安', '陕西省延安市宝塔区二庄科金岳小区延安老板电器仓储中心', '2017-12-11 15:46:31', '武芮安', '18740713512', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1330', '汤青松', '宿迁市泗洪县圣玛可23号118--119', '2017-12-11 15:46:31', '汤青松', '13365153021、15896087869', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1331', '张华鹏', '陕西省西安市灞桥区纺渭北华东购物广场斜对面巷子', '2017-12-11 15:46:31', '张华鹏', '13399282009', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1332', '苏总', '武汉洪山区友谊大道智和路东方雅园1期', '2017-12-11 15:46:31', '苏总', '13545234995', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1333', '黄石（客户）', '湖南省湘潭市岳塘区锦绣华庭幼儿园旁边', '2017-12-11 15:46:31', '黄石（客户）', '15195795728', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1334', '曲凤', '哈尔滨市南岗区西宁南路哈西万达E5-39号商服', '2017-12-11 15:46:31', '曲凤', '13904630457', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1335', '张平平', '江苏省阜宁市状元里小区23-201', '2017-12-11 15:46:31', '张平平', '15862082690', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1336', '代鹏雁', '江西新余市分宜县台前村介垦1-1-101室', '2017-12-11 15:46:31', '代鹏雁', '13870229597', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1337', '曹老板', '河南省洛阳市关林老二运三街', '2017-12-11 15:46:31', '曹老板', '13007631151', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1338', '朱云军', '南京市建邺区高庙街正荣润峰项目部', '2017-12-11 15:46:31', '朱云军', '15250995770', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1339', '于一', '山东省潍坊市。（客户自提）', '2017-12-11 15:46:31', '于一', '18853662526', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1340', '刘伟', '郑州航空港郑港七路与郑港四街交叉口，领航中心十一楼1113室', '2017-12-11 15:46:31', '刘伟', '15939622076', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1341', '张国栋', '江苏省南京市江宁区天景山公寓春秀苑安庆三江建设工程总公司工地', '2017-12-11 15:46:31', '张国栋', '13605620191', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1342', '于永寿', '河北省，秦皇岛市海港区，东山街56号', '2017-12-11 15:46:31', '于永寿', '13731762158', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1343', '胡晓辉3', '山东省青岛市黄岛区江山北路铁路小区13号楼1单元101', '2017-12-11 15:46:31', '胡晓辉3', '186-6171-3468', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1344', '陈怀波', '湖北省襄阳市谷城县城关镇银城大道130号', '2017-12-11 15:46:31', '陈怀波', '18871095426', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1345', '魏良友1', '山东省聊城市东昌路中通领秀城2号楼1单元1楼西户', '2017-12-11 15:46:31', '魏良友1', '15666736111', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1346', '张文波', '徐州市沛县鼓楼小区东门文波厨卫维修中心', '2017-12-11 15:46:31', '张文波', '13775819667', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1347', '孙丽霞', '山东省济宁市中区阜桥街道建设路41号市中区政府宿舍1-西1-4东', '2017-12-11 15:46:31', '孙丽霞', '15805476976', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1348', '管悦', '黑龙江省大庆市让胡区新潮汽配城11栋17', '2017-12-11 15:46:31', '管悦', '13091696109', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1349', '汪留馨', '湖北省黄冈市黄梅县民营六路37号黄梅赛洛天然气有限公司', '2017-12-11 15:46:31', '汪留馨', '13971737020', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1350', '于维硕2', '江苏省连云港市连云区栖霞路新奥燃气营业厅e城e家维修部', '2017-12-11 15:46:31', '于维硕2', '13337876898', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1351', '刘总', '江西南昌市洪城大市场', '2017-12-11 15:46:31', '刘总', '13870658919', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1352', '郭志军', '江西省万载县沿河路139-19号志军维修部', '2017-12-11 15:46:31', '郭志军', '1376560377、18907057713', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1353', '胡晓辉1', '山东省青岛胶州扬州支路和温州路交汇处，胶城集团西侧E城E家服务站', '2017-12-11 15:46:31', '胡晓辉1', '18661713468', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1354', '石守忠', '河北省秦皇岛市海港区和美小区1栋3单元402室', '2017-12-11 15:46:31', '石守忠', '15369749567', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1355', '叶灶弟', '湖北省应城市杉树南路6巷6号', '2017-12-11 15:46:31', '叶灶弟', '13971978602', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1356', '宋同余', '安徽省合肥市瑶海区天水路与蚌埠路交口东北角，金辉悦府10-106门面', '2017-12-11 15:46:31', '宋同余', '13739278844', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1357', '陈明荣', '江阴市月城镇中海大院6-203', '2017-12-11 15:46:31', '陈明荣', '15961770254', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1358', '蒙庆选', '广东省广州市天河区员村', '2017-12-11 15:46:31', '蒙庆选', '18819219800', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1359', '李亚东', '河南省驻马店浙江商贸城林内店', '2017-12-11 15:46:31', '李亚东', '18595561013', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1360', '时和杰', '河南省郑州市郑东新区龙湖街道平安大道龙兴嘉苑2号院', '2017-12-11 15:46:31', '时和杰', '18837184156', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1361', '赵琼丹', '广西南宁市青秀区民主路8号聚宝苑小区腾龙阁3125房', '2017-12-11 15:46:31', '赵琼丹', '13737090402', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1362', '候会计', '陕西省咸阳市世纪大道渭水华庭', '2017-12-11 15:46:31', '候会计', '18629101999', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1363', '王建平', '山东省烟台龙口市西城区和平路中宇卫浴', '2017-12-11 15:46:31', '王建平', '13210938866', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1364', '尚海飞', '新疆独山子10区中国家电联保服务中心', '2017-12-11 15:46:31', '尚海飞', '13809922611', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1365', '徐鹏远', '河南省商丘市商品大市场2期60号', '2017-12-11 15:46:31', '徐鹏远', '13233877189、0370-3039283', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1366', '王刚', '吉林省长春市格莱美厨房设备有限公司', '2017-12-11 15:46:31', '王刚', '13654406162', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1367', '王鑫', '吉林省长春市长吉北线赵家店工业区', '2017-12-11 15:46:31', '王鑫', '18604456158', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1368', '熊总', '广东中山市黄圃镇大岑工业园成业大道103号', '2017-12-11 15:46:31', '熊总', '13715565046', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1369', '侯建春', '兴化市西郊镇侯管村侯家81号', '2017-12-11 15:46:31', '侯建春', '15261099969', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1370', '朱校进', '江苏省无锡市江阴市城东街道金童小区15-204', '2017-12-11 15:46:31', '朱校进', '13914179242', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1371', '谢明明', '湖南省益阳市赫山区桃花仑路桃花里小区', '2017-12-11 15:46:31', '谢明明', '15274799966', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1372', '朱六保', '湖南省益阳市桃江县桃花江镇桃花江社区蔬菜批发市场', '2017-12-11 15:46:31', '朱六保', '17773735674', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1373', '樊庆亮', '江苏省宿迁市泗洪县瑶沟镇盛世豪庭', '2017-12-11 15:46:31', '樊庆亮', '15052718399', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1374', '林莎莎', '广东省陆丰市东海镇桥西路盛源苑小区', '2017-12-11 15:46:31', '林莎莎', '15914963376', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1375', '牛贞', '新疆乌鲁木齐市新市区喀什东路铝苑小区22-2-202', '2017-12-11 15:46:31', '牛贞', '13565819450', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1376', '熊春龙', '上海市南汇区新环西路58弄58号802', '2017-12-11 15:46:31', '熊春龙', '13917530507', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1377', '江先勇', '湖北省恩施市施州大道167号临江仙居602室', '2017-12-11 15:46:31', '江先勇', '13477256882', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1378', '姜东', '北京市大兴区黄村镇王立庄村思源路', '2017-12-11 15:46:31', '姜东', '15901090099', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1379', '杨涛3', '邳州市运河镇花园路文联巷2号家电制冷服务站', '2017-12-11 15:46:31', '杨涛3', '18762221652', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1380', '李小龙', '上海市浦东新区惠南镇城南路168弄B座1222室', '2017-12-11 15:46:31', '李小龙', '13764890818、021-20915625', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1381', '袁爱春', '江西新余市分宜县紫荆花园', '2017-12-11 15:46:31', '袁爱春', '13979040715', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1382', '贾武召', '北京市通州区宋庄镇小杨各庄村157号', '2017-12-11 15:46:31', '贾武召', '13601235829', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1383', '唐运宁', '安徽省六安市霍山县迎驾大道西路（鑫宇电器经营部）', '2017-12-11 15:46:31', '唐运宁', '18919781103', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1384', '肖海群', '陕西省西安市雁塔区', '2017-12-11 15:46:31', '肖海群', '18629042881', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1385', '张耀', '湖北省武汉市青山区工业二路', '2017-12-11 15:46:31', '张耀', '15927002715', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1386', '沈美华', '上海市浦东新区张江益江路433号2楼22号', '2017-12-11 15:46:31', '沈美华', '13918874070', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1387', '杨波', '北京市门头沟区门头沟侯庄子新村一区17号', '2017-12-11 15:46:31', '杨波', '18810795806', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1388', '俞律', '海门港华新区污水处理厂（西安路）', '2017-12-11 15:46:31', '俞律', '18751370271', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1389', '艾春香', '常州市顺园路36号明道科技园', '2017-12-11 15:46:31', '艾春香', '13776819133', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1390', '温晓燕', '河南省洛阳市老城区西关街310国道与王城大道交叉口万和电气', '2017-12-11 15:46:31', '温晓燕', '18937900480', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1391', '陈国奎', '北京市昌平区七家镇西平府村甲317号', '2017-12-11 15:46:31', '陈国奎', '18911691144', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1392', '李桂芳', '江西省宜春市靖安县房管局', '2017-12-11 15:46:31', '李桂芳', '15180509293', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1393', '汤师傅', '江西省余干县余信路国际都会建祥移门店', '2017-12-11 15:46:31', '汤师傅', '15879356722/18679383047', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1394', '蒋建华', '溧阳市南大街121-14林内热水器专卖店', '2017-12-11 15:46:31', '蒋建华', '13901496937', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1395', '徐文荣', '山东省泰安市泰山区迎胜路七里装饰材料精品城岳源超市', '2017-12-11 15:46:31', '徐文荣', '15275482704', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1396', '张宜静', '苏州昆山市开发区黄浦江南路166号', '2017-12-11 15:46:31', '张宜静', '15950180285', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1397', '丁振云', '山东省聊城市高新技术开发区顾官屯镇驻地', '2017-12-11 15:46:31', '丁振云', '13963012333', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1398', '徐亮', '山东省烟台市蓬莱市登州街道东关路118号405商业街万和专卖店', '2017-12-11 15:46:31', '徐亮', '13465525936', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1399', '刘瑞林', '北京市门头沟区三家店新河路小区内西平房3号', '2017-12-11 15:46:31', '刘瑞林', '18911126708', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1400', '谢玲红', '北京市海定区四季青镇香山南路82号院', '2017-12-11 15:46:31', '谢玲红', '13911697399', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1401', '林万才', '广东省广州市番禺区石基镇罗家村英万西街16号一楼', '2017-12-11 15:46:31', '林万才', '18926210453', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1402', '李品阳', '北京市大兴区旧宫镇灵秀山庄19-1-401', '2017-12-11 15:46:31', '李品阳', '13901332230', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1403', '倪永宽', '北京市昌平区马池口镇红冶家属院西侧万和电气', '2017-12-11 15:46:31', '倪永宽', '13910583259', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1404', '曹定红', '广西省北海市海城区变电东十巷17号', '2017-12-11 15:46:31', '曹定红', '18677948182', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1405', '黄进', '安徽省广德县金恒建材市场20#金牌橱柜', '2017-12-11 15:46:31', '黄进', '13856330579/0563-6638889', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1406', '万祥彬', '江西南昌市东湖区富大有路9号赣昌大厦1602', '2017-12-11 15:46:31', '万祥彬', '13507008350', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1407', '胡卫坚', '江西宜春市御景东方31栋17号店', '2017-12-11 15:46:31', '胡卫坚', '13006279905', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1408', '董得', '湖北咸宁市温泉岔路口地质队', '2017-12-11 15:46:31', '董得', '15671819477', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1409', '杨化顺', '山东省济南市槐荫区阳光新路24号怡心园小区6#2-101', '2017-12-11 15:46:31', '杨化顺', '18906410208', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1410', '杜明勇', '无锡市梁溪区曹张新村51号华润燃气大院内', '2017-12-11 15:46:31', '杜明勇', '18921519979', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1411', '吴杰坤', '广东佛山市顺德区北滘碧江碧桂园西苑听涛居三街2座102', '2017-12-11 15:46:31', '吴杰坤', '18616023848', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1412', '朱瑾', '宿迁市泗洪县环洲万博城', '2017-12-11 15:46:31', '朱瑾', '13815768394', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1413', '李年超', '广西柳州市城中区八一路西一巷8号福柳新都5栋1单元1-4号', '2017-12-11 15:46:31', '李年超', '18507723690', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1414', '邬冬香', '湖北武汉市洪山区珞南街道南湖公园世家一期1-1-104', '2017-12-11 15:46:31', '邬冬香', '18138835592', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1415', '于维硕3', '连云港市海州区龙河南路万佳商务中心A座3楼e城e家', '2017-12-11 15:46:31', '于维硕3', '13337876898', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1416', '赵总', '新疆库勒尔幸福城109小区8栋1单元1601', '2017-12-11 15:46:31', '赵总', '13608314211', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1417', '吴少鹏', '惠州市惠城区三栋镇数码工业园南区水北区惠州燃气公司仓库', '2017-12-11 15:46:31', '吴少鹏', '13516682006', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1418', '林祥涛', '河北省衡水市桃城区开发区大麻森乡', '2017-12-11 15:46:31', '林祥涛', '15937362666', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1419', '赵敏成', '河南省郑州市管城区经北6路悦如寓', '2017-12-11 15:46:31', '赵敏成', '13851915909', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1420', '倪曙光', '山东省泰安市泰山区岱下华庭6号楼一单元501室', '2017-12-11 15:46:31', '倪曙光', '13866976711', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1421', '彭总', '湖南省衡阳市华新开发区日鑫建材市场', '2017-12-11 15:46:31', '彭总', '18163972907', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1422', '赵亮', '河南省安阳市安钢大道省建七公司家属院4-1-101', '2017-12-11 15:46:31', '赵亮', '13937212644', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1423', '季茂林', '南京市浦口区鼎泰家园53-106', '2017-12-11 15:46:31', '季茂林', '15150575729', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1424', '顾明国', '江苏省南京市栖霞区迈皋桥街道兰亭雅苑18-104室', '2017-12-11 15:46:31', '顾明国', '13776689508', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1425', '张涛', '南京市秦淮区永乐路1#万象都荟', '2017-12-11 15:46:31', '张涛', '13915973803', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1426', '丁武勇', '安徽省蚌埠市经开区华府天地26号楼一单元301', '2017-12-11 15:46:31', '丁武勇', '18226560508', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1427', '钟永强', '四川省泸州市龙马潭区星月街205号泸州天顺家电维修部', '2017-12-11 15:46:31', '钟永强', '18982458237', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1428', '曹政祥', '甘肃省陇南市武都区成达燃气有限公司', '2017-12-11 15:46:31', '曹政祥', '18781066661', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1429', '万亚平', '黑龙江省哈尔滨七台河市山上', '2017-12-11 15:46:31', '万亚平', '13945586287', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1430', '许仁荣', '湖北省东西湖区七支沟海峡国际企业城2期8号电梯7楼', '2017-12-11 15:46:31', '许仁荣', '18086036472', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1431', '沈笑影', '江苏省连云港市东海县水晶公园尚城22幢1单元502', '2017-12-11 15:46:31', '沈笑影', '18362317666', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1432', '邵来彬（2）', '开封市金明区西蔡屯A区10排182号', '2017-12-11 15:46:31', '邵来彬（2）', '13343865111‬', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1433', '赵英明', '贵阳小河青龙路矿山厂职工食堂旁贵阳斯克诗公司', '2017-12-11 15:46:31', '赵英明', '13765006110', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1434', '文士虎', '山东省滨州市阳信县河东一路众安消防器材门市部', '2017-12-11 15:46:31', '文士虎', '15550232778', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1435', '谢总', '湖南省湘潭市岳塘区锦绣华庭附件', '2017-12-11 15:46:31', '谢总', '18163972907', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1436', '商爱民', '山东省滨州市阳信县幸福四路华帝专卖店', '2017-12-11 15:46:31', '商爱民', '15554369778', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1437', '张阳', '贵州省瓮安县经济开发区一号桥深安燃气有限责任公司', '2017-12-11 15:46:31', '张阳', '15227262626', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1438', '王琰', '天津市静海县中旺镇中心街（海德燃气（天津）有限责任公司）', '2017-12-11 15:46:31', '王琰', '022-68530188', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1439', '张金水1', '河北省晋州市朝阳大街晋州电视台东红绿灯往东50米', '2017-12-11 15:46:31', '张金水1', '13932109648', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1440', '王玉娇', '河北省晋州市光明路158号煤改气项目部', '2017-12-11 15:46:31', '王玉娇', '18131183768', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1441', '孙青', '北京市朝阳区黑庄户乡万子营东村406号', '2017-12-11 15:46:31', '孙青', '13701110597', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1442', '王德威', '辽宁省营口市站前区盼盼路北11甲，营口煤气公司', '2017-12-11 15:46:31', '王德威', '15504978031', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1443', '丛立军', '辽宁省营口市站前区中亚购物广场对面红日厨电', '2017-12-11 15:46:31', '丛立军', '15541706677/0417-3551588', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1444', '任昌', '陕西省西安市雁塔区二府庄建材市场北排20号', '2017-12-11 15:46:31', '任昌', '13991843354', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1445', '陈朝导', '广东省广州市增城区新塘镇长岗村水园西路一巷2号', '2017-12-11 15:46:31', '陈朝导', '18002273594', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1446', '朱雪峰', '上海市金山区金流路399号', '2017-12-11 15:46:31', '朱雪峰', '13916187848', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1447', '胡小定', '浙江省宁波市江北区甬江工业园兴甬路1号', '2017-12-11 15:46:31', '胡小定', '0574-87621365', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1448', '赵海彬', '浙江省温州市平阳县鳌江镇邮电路422号', '2017-12-11 15:46:31', '赵海彬', '13587966375', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1449', '王峰涛', '山东省滨州市滨城区黄河一路渤海八路高杜建材城', '2017-12-11 15:46:31', '王峰涛', '15865212666', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1450', '闫燕', '山东省济南市高新区奥体中路盛福家园南区14-4-402', '2017-12-11 15:46:31', '闫燕', '18660190218', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1451', '张海洋', '盐城市射阳县振华公寓7号楼306华文书店楼上', '2017-12-11 15:46:31', '张海洋', '15396719907', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1452', '谢嘉伟', '福建省泉州市鲤城区美食街华联宿舍106', '2017-12-11 15:46:31', '谢嘉伟', '15880951961', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1453', '才颖', '辽宁省营口市西市区青松里2号', '2017-12-11 15:46:31', '才颖', '15504978490', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1454', '谢守辉', '广西桂林市叠彩区水塔南路万和电器', '2017-12-11 15:46:31', '谢守辉', '18677393510', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1455', '杜艳芳', '河南省长葛市南环路与建设路交叉口汇源天然气有限公司', '2017-12-11 15:46:31', '杜艳芳', '13569489321', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1456', '李龙飞', '1、重庆北部新区金开大道2001号（重庆超力高科技股份有限公司）2、重庆市涪陵区李渡新区鹤凤大道6号伟柯斯汽车系统有限公司', '2017-12-11 15:46:31', '李龙飞', '18620662403', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1457', '魏良有', '山东省聊城市东昌府区星光水晶丽城12号楼52号商铺', '2017-12-11 15:46:31', '魏良有', '15666736111', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1458', '肖华', '江西南昌市联信大市场停车场北楼10-13号', '2017-12-11 15:46:31', '肖华', '18907918881', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1459', '任秀秀', '陕西省延安市宝塔区二庄科金岳小区延安老板电器仓储中心', '2017-12-11 15:46:31', '任秀秀', '18609117021；18691176261', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1460', '姜磊', '山东省菏泽市广州路芙蓉小镇南50米庭茂商务楼四楼410室', '2017-12-11 15:46:31', '姜磊', '18954632897', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1461', '朱慧民', '', '2017-12-11 15:46:31', '朱慧民', '13753497058', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1462', '邵晶晶', '河北省任丘市北环中路任丘市宏利燃具有限公司', '2017-12-11 15:46:31', '邵晶晶', '18931773919', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1463', '昌红燕', '安徽省宿州市埇桥区西昌南路健康产业园3栋107号', '2017-12-11 15:46:31', '昌红燕', '15055350698', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1464', '扶庆银', '广州市番禺区南村镇坑头村永宁大道东14号', '2017-12-11 15:46:31', '扶庆银', '13642605149', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1465', '谢厅', '湖南省岳阳市岳阳楼区岳阳兰亭北门芙蓉兴盛超市门口', '2017-12-11 15:46:31', '谢厅', '13787997087', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1466', '邓志成', '广东省佛山市顺德区容桂街道环塘路41号之6号展新家电维修部', '2017-12-11 15:46:31', '邓志成', '18923201985', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1467', '罗辉', '湖南湘潭市岳塘区建设路口丛竹巷液压站件厂新4栋102', '2017-12-11 15:46:31', '罗辉', '18153776122', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1468', '林声', '福建福州市台江区西洋路嘉园邨新村7座102', '2017-12-11 15:46:31', '林声', '18059008985', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1469', '王伟', '湖北宜都市陆城长江大道98号', '2017-12-11 15:46:31', '王伟', '13545778488', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1470', '戴相云', '湖北恩施市区', '2017-12-11 15:46:31', '戴相云', '17712882850', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1471', '夏侯丽君', '广东省深圳市观澜街道环观南路兴发路万和展厅', '2017-12-11 15:46:31', '夏侯丽君', '18479613668', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1472', '郭超', '湖北省恩施市柑子槽小区二期五巷38号', '2017-12-11 15:46:31', '郭超', '15971793344', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1473', '刘浩', '湖北恩施市东风大道585号5栋2单元202', '2017-12-11 15:46:31', '刘浩', '13317266663', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1474', '李浩', '南京市建邺区长虹路197号南京煤气管线工程有限公司', '2017-12-11 15:46:31', '李浩', '18751860567', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1475', '林冰峰', '佛山市顺德容桂聚龙苑d-402', '2017-12-11 15:46:31', '林冰峰', '13326798095', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1476', '汤琛', '湖北省宜昌市西陵区夷陵大道16号', '2017-12-11 15:46:31', '汤琛', '15607203335', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1477', '汪洪峰', '湖北荆州市318国道宏远物流园对面', '2017-12-11 15:46:31', '汪洪峰', '18607153643', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1478', '周日柱', '广东省中山市石歧街道老安山华光路43号104', '2017-12-11 15:46:31', '周日柱', '13532076185', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1479', '黎毅', '长沙市天心区刘家冲中路升远君尚嘉筑小区9栋二单元104室', '2017-12-11 15:46:31', '黎毅', '18163678775', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1480', '屠国辉', '无锡市塘南招商城劝业市场W区56号', '2017-12-11 15:46:31', '屠国辉', '18661014836', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1481', '冯铁', '广东省中山市小榄镇德莱村德莱南路一街14号一楼', '2017-12-11 15:46:31', '冯铁', '13380890586', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1482', '王冬梅', '江西南昌市进贤县民和镇进贤大道名门世家斜对面红良薄利五金水暖店', '2017-12-11 15:46:31', '王冬梅', '13755628369', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1483', '徐翠莲', '湖南省湘潭市雨湖区楠竹山镇液化气站', '2017-12-11 15:46:31', '徐翠莲', '13786287310', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1484', '沈笑影（1）', '江苏省泰州市海陵区江洲南路100号，泰河名府50-101', '2017-12-11 15:46:31', '沈笑影（1）', '18362317666', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1485', '严晶', '江苏省泰州市姜堰区锦都国际花园C12-101', '2017-12-11 15:46:31', '严晶', '15161096123', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1486', '胡波', '浙江省杭州市江干区观音堂静怡花苑1-106室', '2017-12-11 15:46:31', '胡波', '13345714131', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1487', '骆俊锦', '广东省广州市增城区荔城街金星村清水塘八街4号', '2017-12-11 15:46:31', '骆俊锦', '13512773301', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1488', '付欣', '天津西青区王稳庄镇大侯村村委会', '2017-12-11 15:46:31', '付欣', '13370308602', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1489', '李雅兰', '武汉市江岸区和谐大道竹叶山五金水暖市场西区X31号盾运阀门', '2017-12-11 15:46:31', '李雅兰', '027-82823058', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1490', '汤德乾', '武汉市东湖高新区佛祖岭E区43栋3单元101室', '2017-12-11 15:46:31', '汤德乾', '15327411849', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1491', '杨显红', '湖北荆州市江陵县郝穴镇江陵大道江景豪庭4号楼福泽燃气具', '2017-12-11 15:46:31', '杨显红', '13986713078', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1492', '唐利（1）', '湖南省株洲市天元区泰山路1号，株洲新奥燃气有限公司', '2017-12-11 15:46:31', '唐利（1）', '15773346781', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1493', '李欢（2）', '河北省石家庄市裕华区太行大街学苑路交口主语城10-0-1701', '2017-12-11 15:46:31', '李欢（2）', '15930158607', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1494', '凡宗成', '重庆市渝北区双龙湖街道北湖支路45号', '2017-12-11 15:46:31', '凡宗成', '15123833921', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1495', '李嘉兴', '广东省广州市番禺区坑头镇永宁大道3街45号', '2017-12-11 15:46:31', '李嘉兴', '15142546780', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1496', '丁金龙（1）', '青岛市黄岛区银桥大街166号银桥小区', '2017-12-11 15:46:31', '丁金龙（1）', '13697661265', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1497', '刘军', '江西南昌高新区艾溪湖北路绿地玫瑰城304-1-2204', '2017-12-11 15:46:31', '刘军', '15180481795', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1498', '徐经理', '山东省青岛市黄岛区海王路贝多芬公司馆美宜家', '2017-12-11 15:46:31', '徐经理', '13864252145', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1499', '闫康', '河南省南阳市建设路与文化路交叉口西北角二楼', '2017-12-11 15:46:31', '闫康', '18568797588/18438865785', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1500', '马中刚', '江苏省南京市建邺区双闸街道高庙路上海建工2号门（1号门往前200米）', '2017-12-11 15:46:31', '马中刚', '13818993039', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1501', '丁全林', '湖南省长沙市雨花区莲湖汽配城20栋', '2017-12-11 15:46:31', '丁全林', '13397410369', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1502', '封幼维', '德州经济开发区太阳谷大道皇明太阳能搪瓷厂仓库', '2017-12-11 15:46:31', '封幼维', '17353865707', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1503', '文建新', '株洲市天元区泰山路1299号瀚水栗源6栋1016栋101室', '2017-12-11 15:46:31', '文建新', '17773353996', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1504', '曾东', '四川省成都市二环路南三段一号祥福苑大厦东楼306室', '2017-12-11 15:46:31', '曾东', '18682698688、18982000900', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1505', '程航', '广东省深圳市罗湖区笋岗街道宝岗路23号笋岗大厦913号', '2017-12-11 15:46:31', '程航', '13545520850', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1506', '文建伟', '广东省珠海市香洲区街道人民西路北园新村67栋9号车库', '2017-12-11 15:46:31', '文建伟', '13697701010', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1507', '谢波', '山东省济南市中区王官庄小区三区3-3-103室', '2017-12-11 15:46:31', '谢波', '15853188899', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1508', '陈海阳', '南京市雨花台区凤台南路75号新和源装饰城2楼18号', '2017-12-11 15:46:31', '陈海阳', '13675125728', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1509', '黄秋兰', '湖北省咸宁市咸安区邮电路65号', '2017-12-11 15:46:31', '黄秋兰', '15871953053', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1510', '刘总', '湖南省湘潭市岳塘区裕丰国际', '2017-12-11 15:46:31', '刘总', '18163972907', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1511', '傅朝亮', '南京市江宁区将军大道199号', '2017-12-11 15:46:31', '傅朝亮', '13951864500', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1512', '于维硕4', '连云港市连云区中山西路355-2-1-401新奥e城e家', '2017-12-11 15:46:31', '于维硕4', '13337876898', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1513', '黄双英', '山东省德州经济开发区皇明三厂仓库', '2017-12-11 15:46:31', '黄双英', '15806818635', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1514', '曹方银', '荆州市监利县容城张胡湾23号', '2017-12-11 15:46:31', '曹方银', '13094211252', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1515', '郭玉胜', '河南省郑州市金水区文化路街道东三街36号', '2017-12-11 15:46:31', '郭玉胜', '13603983354', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1516', '侯柏林4', '河南省商丘市梁园区归德路白云公馆小区东，向北200米', '2017-12-11 15:46:31', '侯柏林4', '15136008863', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1517', '彭顺', '湘潭市红旗商贸城D区8号', '2017-12-11 15:46:31', '彭顺', '18173256282', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1518', '张海波', '湘潭市南湖区新杉山南片区18栋1单元301', '2017-12-11 15:46:31', '张海波', '18673213077', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1519', '周岳华', '湘潭县易俗河镇玉兰中路372号', '2017-12-11 15:46:31', '周岳华', '13873222808', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1520', '欧阳治国', '湘潭市湘潭县易俗河玉兰中路566号', '2017-12-11 15:46:31', '欧阳治国', '13348627077', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1521', '杨帆', '湘潭市湘潭县易俗河玉兰中路529号', '2017-12-11 15:46:31', '杨帆', '18673241106', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1522', '章红', '湖南省湘潭市沙子岭建材大市场211号门面', '2017-12-11 15:46:31', '章红', '0731-52311206', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1523', '李炳秋', '湖南省湘潭市沙子岭大市场101号', '2017-12-11 15:46:31', '李炳秋', '13973237992', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1524', '伍绍文', '衡阳市中湘五金机电大市场五栋15-16门面', '2017-12-11 15:46:31', '伍绍文', '13974784566', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1525', '汤学良', '衡阳市日鑫建材市场对面', '2017-12-11 15:46:31', '汤学良', '17752778142', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1526', '彭小江', '衡阳市华新开发区日鑫建材市场(亚泰国际大酒店隔壁)', '2017-12-11 15:46:31', '彭小江', '13203066681', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1527', '刘德庆', '湘潭市湘潭工业品市场C栋17号', '2017-12-11 15:46:31', '刘德庆', '15973218193', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1528', '廖然香', '湖南省衡东县衡东大市场临街门面B1栋110号', '2017-12-11 15:46:31', '廖然香', '15116831922', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1529', '李声连', '湖南省永州市冷水滩区珊瑚路城中丽景6-8号', '2017-12-11 15:46:31', '李声连', '15907483521', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1530', '金跃红', '湖南省娄底市粮运建材市场10栋7-8号门面', '2017-12-11 15:46:31', '金跃红', '13873809061', '20', null, '有效');
INSERT INTO `t_customer` VALUES ('1531', '胡余作', '湖南省衡阳市衡南县三塘镇旺旺燃气公司', '2017-12-11 03:46:31', '胡余作', '18873420868', '20', '', '有效');

-- ----------------------------
-- Table structure for `t_drawing`
-- ----------------------------
DROP TABLE IF EXISTS `t_drawing`;
CREATE TABLE `t_drawing` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `drw_name` varchar(64) COLLATE utf8_unicode_ci NOT NULL COMMENT '图纸名称',
  `drw_designer_id` bigint(20) NOT NULL COMMENT '设计师',
  `drw_date` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '出图日期',
  `prod_id` bigint(20) NOT NULL COMMENT '产品ID',
  `drw_img` blob,
  `status` varchar(64) COLLATE utf8_unicode_ci NOT NULL DEFAULT '有效' COMMENT '状态：有效、失效',
  `remark` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`),
  UNIQUE KEY `drw_name` (`drw_name`),
  UNIQUE KEY `prod_id` (`prod_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='图纸信息';

-- ----------------------------
-- Records of t_drawing
-- ----------------------------

-- ----------------------------
-- Table structure for `t_employee`
-- ----------------------------
DROP TABLE IF EXISTS `t_employee`;
CREATE TABLE `t_employee` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `code` varchar(64) COLLATE utf8_unicode_ci NOT NULL COMMENT '员工编号',
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL COMMENT '姓名',
  `duty` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '职务',
  `roler_id` bigint(20) DEFAULT NULL COMMENT '角色',
  `phone` varchar(64) COLLATE utf8_unicode_ci DEFAULT '13951623007' COMMENT '手机号码',
  `email` varchar(64) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'support@hanzhigu.com' COMMENT '邮箱',
  `password` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '密码',
  `family_addr` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '家庭住址',
  `status` varchar(64) COLLATE utf8_unicode_ci NOT NULL DEFAULT '有效' COMMENT '状态：有效、失效',
  `remark` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`),
  UNIQUE KEY `code` (`code`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='员工信息表';

-- ----------------------------
-- Records of t_employee
-- ----------------------------
INSERT INTO `t_employee` VALUES ('9', '1001', '王成勇', '销售部-（经理）', '31', '13770986013', '', 'QPfAH0GJUQAxrczZxgShKK2vmwA=', '', '有效', '销售经理');
INSERT INTO `t_employee` VALUES ('10', '1002', '陈剑', '销售部-经理', '31', '13951646550', '', 'fCIvspJ9goryL1khNOiTJIBjfA0=', '', '有效', '');
INSERT INTO `t_employee` VALUES ('11', '1003', '王必飞', '销售员', '31', '18827418052', '', 'fEqNCco3Yq9h5ZUglD3CZJT4lBs=', '', '有效', '');
INSERT INTO `t_employee` VALUES ('12', '1004', '戴相云', '销售员', '31', '17712882850', '', 'QPfAH0GJUQAxrczZxgShKK2vmwA=', '', '有效', '');
INSERT INTO `t_employee` VALUES ('13', '1005', '王国平', '销售员', '31', '13626105691', '', 'fEqNCco3Yq9h5ZUglD3CZJT4lBs=', '', '有效', '');
INSERT INTO `t_employee` VALUES ('14', '1006', '宗之文', '销售员', '31', '18761621479', '', 'fEqNCco3Yq9h5ZUglD3CZJT4lBs=', '', '有效', '');
INSERT INTO `t_employee` VALUES ('15', '1007', '傅友宏', '销售员', '31', '17705191522', '', 'fEqNCco3Yq9h5ZUglD3CZJT4lBs=', '', '有效', '');
INSERT INTO `t_employee` VALUES ('16', '1008', '李幸', '销售员', '31', '13816932454', '', 'fEqNCco3Yq9h5ZUglD3CZJT4lBs=', '', '有效', '');
INSERT INTO `t_employee` VALUES ('17', '1009', '方道宁', '销售员', '31', '13072536373', '', 'fEqNCco3Yq9h5ZUglD3CZJT4lBs=', '', '有效', '');
INSERT INTO `t_employee` VALUES ('18', '1010', '杜平', '销售员', '31', '18018062209', '', 'fEqNCco3Yq9h5ZUglD3CZJT4lBs=', '', '有效', '');
INSERT INTO `t_employee` VALUES ('19', '1011', '顾丽娟', '销售员', '31', '15380434679', '', 'fEqNCco3Yq9h5ZUglD3CZJT4lBs=', '', '有效', '');
INSERT INTO `t_employee` VALUES ('20', 'admin', '高峰', '系统管理员', null, '13813095514', '', 'QPfAH0GJUQAxrczZxgShKK2vmwA=', '', '有效', '管理员');
INSERT INTO `t_employee` VALUES ('24', '2001', '彭琳燕', '综合管理部-（部长）', null, '', '', 'fEqNCco3Yq9h5ZUglD3CZJT4lBs=', '', '有效', '');
INSERT INTO `t_employee` VALUES ('26', '2002', '史辉', '综合管理部-（采购）', null, '', '', 'fEqNCco3Yq9h5ZUglD3CZJT4lBs=', '', '有效', '');
INSERT INTO `t_employee` VALUES ('27', '2003', '王鹏', '综合管理部-（会计）', null, '', '', 'fEqNCco3Yq9h5ZUglD3CZJT4lBs=', '', '有效', '');
INSERT INTO `t_employee` VALUES ('28', '2004', '徐慧玲', '综合管理部-（销售内勤）', null, '', '', 'fEqNCco3Yq9h5ZUglD3CZJT4lBs=', '', '有效', '');
INSERT INTO `t_employee` VALUES ('29', '4002', '管元元', '技术质量部-（技术员）', null, '', '', 'fEqNCco3Yq9h5ZUglD3CZJT4lBs=', '', '有效', '');
INSERT INTO `t_employee` VALUES ('31', '4001', '林波', '技术质量部-（部长）', null, '', '', 'fEqNCco3Yq9h5ZUglD3CZJT4lBs=', '', '有效', '');
INSERT INTO `t_employee` VALUES ('32', '3001', '董秋伦', '生产部-（部长）', null, '', '', 'fEqNCco3Yq9h5ZUglD3CZJT4lBs=', '', '有效', '');
INSERT INTO `t_employee` VALUES ('33', '3002', '尹茂越', '生产部-（原材料库）', null, '', '', 'fEqNCco3Yq9h5ZUglD3CZJT4lBs=', '', '有效', '');
INSERT INTO `t_employee` VALUES ('34', '3003', '焦开喜', '生产部-（成品发货）', null, '', '', 'fEqNCco3Yq9h5ZUglD3CZJT4lBs=', '', '有效', '');
INSERT INTO `t_employee` VALUES ('35', '5001', '诸勇豪', '设备-（部长）', null, '', '', '123456', '', '有效', '');

-- ----------------------------
-- Table structure for `t_mate_instock_info`
-- ----------------------------
DROP TABLE IF EXISTS `t_mate_instock_info`;
CREATE TABLE `t_mate_instock_info` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `mate_id` bigint(20) NOT NULL COMMENT '原料ID',
  `mate_barcode` varchar(64) COLLATE utf8_unicode_ci NOT NULL COMMENT '原料条码',
  `prod_inst_id` bigint(20) NOT NULL COMMENT '产品实例ID',
  `purchase_datetime` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '进货日期',
  `purchase_em_id` bigint(20) NOT NULL COMMENT '进货人ID',
  `mis_date` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '入库时间',
  `mis_count` decimal(18,3) unsigned zerofill NOT NULL COMMENT '入库数量',
  `mis_em_id` bigint(20) NOT NULL COMMENT '入库人ID',
  `mis_receipt` varchar(64) COLLATE utf8_unicode_ci DEFAULT '无单据' COMMENT '入库单据号',
  `mate_price` double unsigned zerofill DEFAULT '0000000000000000000000' COMMENT '原料价格（涉密字段）',
  `mate_supplier_id` bigint(20) NOT NULL COMMENT '供应商ID',
  `remark` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '备注',
  `plan_id` bigint(20) DEFAULT NULL COMMENT '子订单',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='原料入库明细';

-- ----------------------------
-- Records of t_mate_instock_info
-- ----------------------------
INSERT INTO `t_mate_instock_info` VALUES ('4', '2818', 'LQRKLQ16JCZHN20160712', '147', '2017-12-25 18:32:50', '12', '2017-12-25 18:32:50', '000000000000100.000', '10', '123123', '0000000000000000000000', '0', 'ceshi', null);
INSERT INTO `t_mate_instock_info` VALUES ('5', '2818', 'LQRKLQ16JCZHN20160712', '147', '2017-12-25 18:33:29', '12', '2017-12-25 18:33:29', '000000000000100.000', '10', '123123', '0000000000000000000000', '0', 'ceshi', null);
INSERT INTO `t_mate_instock_info` VALUES ('6', '2818', 'LQRKLQ16JCZHN20160712', '147', '2017-12-25 18:35:47', '12', '2017-12-25 18:35:47', '000000000000100.000', '10', '123123', '0000000000000000000000', '0', 'ceshi', null);
INSERT INTO `t_mate_instock_info` VALUES ('7', '2818', 'LQRKLQ16JCZHN20160712', '147', '2017-12-25 18:37:17', '12', '2017-12-25 18:37:17', '000000000000100.000', '10', '123123', '0000000000000000000000', '6', 'ceshi', null);
INSERT INTO `t_mate_instock_info` VALUES ('8', '2818', 'LQRKLQ16JCZHN20160712', '147', '2017-12-25 19:03:13', '12', '2017-12-25 19:03:13', '000000000000100.000', '10', '123123', '0000000000000000000000', '6', 'ceshi', null);
INSERT INTO `t_mate_instock_info` VALUES ('9', '2818', 'LQRKLQ16JCZHN20160712', '147', '2018-01-08 09:34:40', '12', '2018-01-08 09:34:40', '000000000000100.000', '10', '123123', '0000000000000000000000', '6', 'ceshi', null);
INSERT INTO `t_mate_instock_info` VALUES ('10', '2818', 'LQRKLQ16JCZHN20160712', '147', '2018-01-08 09:43:22', '12', '2018-01-08 09:43:22', '000000000000100.000', '10', '123123', '0000000000000000000000', '6', 'ceshi', null);
INSERT INTO `t_mate_instock_info` VALUES ('12', '2818', 'LQRKLQ16JCZHN20160712', '147', '2018-01-08 10:15:55', '12', '2018-01-08 10:15:55', '000000000000100.000', '10', '123123', '0000000000000000000000', '6', 'ceshi', null);

-- ----------------------------
-- Table structure for `t_mate_outstock_info`
-- ----------------------------
DROP TABLE IF EXISTS `t_mate_outstock_info`;
CREATE TABLE `t_mate_outstock_info` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `mate_id` bigint(20) NOT NULL COMMENT '原料ID',
  `mate_barcode` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '原料条码',
  `prod_inst_id` bigint(20) DEFAULT NULL COMMENT '产品实例ID',
  `consumer_id` bigint(20) NOT NULL COMMENT '领用人ID',
  `mos_date` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '出库时间',
  `mos_count` decimal(18,3) unsigned zerofill DEFAULT NULL COMMENT '出库数量',
  `mos_em_id` bigint(20) NOT NULL COMMENT '出库人ID',
  `mos_receipt` varchar(64) COLLATE utf8_unicode_ci DEFAULT '无单据' COMMENT '出库单据号',
  `remark` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '备注',
  `plan_id` bigint(20) DEFAULT NULL COMMENT '子订单',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='原料出库明细';

-- ----------------------------
-- Records of t_mate_outstock_info
-- ----------------------------

-- ----------------------------
-- Table structure for `t_message`
-- ----------------------------
DROP TABLE IF EXISTS `t_message`;
CREATE TABLE `t_message` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `sender` bigint(20) DEFAULT NULL,
  `to` bigint(20) DEFAULT NULL,
  `content` varchar(255) COLLATE utf8_unicode_520_ci DEFAULT NULL,
  `plan` bigint(20) DEFAULT NULL,
  `status` varchar(64) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT '有效' COMMENT '状态：有效、失效',
  `receive_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_520_ci;

-- ----------------------------
-- Records of t_message
-- ----------------------------

-- ----------------------------
-- Table structure for `t_plan`
-- ----------------------------
DROP TABLE IF EXISTS `t_plan`;
CREATE TABLE `t_plan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `order_type` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `order_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `delivery_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '要求发货日期',
  `ev_delivery_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '估计发货日期',
  `remark` varchar(300) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '有效',
  `salesman` bigint(20) NOT NULL,
  `sponsor` bigint(20) NOT NULL,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `customer` bigint(20) NOT NULL,
  `product_codes` varchar(2000) COLLATE utf8_unicode_520_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_520_ci;

-- ----------------------------
-- Records of t_plan
-- ----------------------------

-- ----------------------------
-- Table structure for `t_plan_product`
-- ----------------------------
DROP TABLE IF EXISTS `t_plan_product`;
CREATE TABLE `t_plan_product` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(110) COLLATE utf8_unicode_ci DEFAULT NULL,
  `plan_id` bigint(20) NOT NULL,
  `product_id` bigint(20) NOT NULL,
  `product_price` double DEFAULT '0',
  `prop_code` varchar(8) COLLATE utf8_unicode_ci DEFAULT '-1' COMMENT '扩展属性代号',
  `product_amount` decimal(18,3) DEFAULT '0.000' COMMENT '订货量',
  `product_length` int(11) NOT NULL DEFAULT '0',
  `real_amount` decimal(18,3) DEFAULT '0.000' COMMENT '实际发货量',
  `real_instock_amount` decimal(18,3) DEFAULT '0.000' COMMENT '实际入库量',
  `to_product_amount` decimal(18,3) DEFAULT '0.000' COMMENT '转生产数量',
  `use_stock_amount` decimal(18,3) DEFAULT '0.000' COMMENT '使用已有库存数量',
  `status` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '子订单状态',
  `product_remark` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `prod_task_code` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '生产工单号',
  `b_covered` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '被覆层方式',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of t_plan_product
-- ----------------------------

-- ----------------------------
-- Table structure for `t_pm`
-- ----------------------------
DROP TABLE IF EXISTS `t_pm`;
CREATE TABLE `t_pm` (
  `prod_id` bigint(20) NOT NULL COMMENT '产品ID',
  `mate_id` bigint(20) NOT NULL COMMENT '原料ID',
  `mate_num` int(10) unsigned zerofill DEFAULT '0000000000' COMMENT '数量',
  UNIQUE KEY `prod_id_mate_id` (`prod_id`,`mate_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_520_ci COMMENT='产品与原料配置关系表';

-- ----------------------------
-- Records of t_pm
-- ----------------------------
INSERT INTO `t_pm` VALUES ('1', '1', '0000000044');
INSERT INTO `t_pm` VALUES ('1', '2', '0000000044');
INSERT INTO `t_pm` VALUES ('2', '1', '0000000222');
INSERT INTO `t_pm` VALUES ('2', '2', '0000010000');

-- ----------------------------
-- Table structure for `t_priv`
-- ----------------------------
DROP TABLE IF EXISTS `t_priv`;
CREATE TABLE `t_priv` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `pv_code` varchar(64) COLLATE utf8_unicode_ci NOT NULL COMMENT '权限id',
  `pv_name` varchar(64) COLLATE utf8_unicode_ci NOT NULL COMMENT '名称',
  `pv_desc` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '描述',
  `remark` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`),
  UNIQUE KEY `pv_code` (`pv_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='权限表';

-- ----------------------------
-- Records of t_priv
-- ----------------------------

-- ----------------------------
-- Table structure for `t_product`
-- ----------------------------
DROP TABLE IF EXISTS `t_product`;
CREATE TABLE `t_product` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `code` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `prod_name` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `prod_num_alarm` int(11) NOT NULL DEFAULT '9999' COMMENT '产品库存告警阈值',
  `prod_gb_standard` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT '规格',
  `prod_type` varchar(256) COLLATE utf8_unicode_ci DEFAULT '产品' COMMENT '类别:自有、外购、原料',
  `status` varchar(64) COLLATE utf8_unicode_ci DEFAULT '有效' COMMENT '产品状态：有效、失效',
  `remark` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '备注',
  `mate_gb_standard` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '规格名称',
  `sp_id` bigint(20) DEFAULT NULL COMMENT '供应商',
  `unit` varchar(20) COLLATE utf8_unicode_ci DEFAULT 'ge',
  PRIMARY KEY (`id`),
  UNIQUE KEY `code_gb_sp_u` (`code`,`prod_gb_standard`,`sp_id`,`unit`)
) ENGINE=InnoDB AUTO_INCREMENT=3081 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='产品表';

-- ----------------------------
-- Records of t_product
-- ----------------------------
INSERT INTO `t_product` VALUES ('2680', 'RKRQ10', 'RKRQ10', '9999', 'C', '产品', '有效', null, null, '0', 'ge');
INSERT INTO `t_product` VALUES ('2681', 'RKRQ10', 'RKRQ10', '9999', 'C2A', '产品', '有效', null, null, '0', 'ge');
INSERT INTO `t_product` VALUES ('2682', 'RKRQ10', 'RKRQ10', '9999', 'G1/2-C', '产品', '有效', null, null, '0', 'ge');
INSERT INTO `t_product` VALUES ('2683', 'RKRQ10', 'RKRQ10', '9999', 'G1/2-C2A', '产品', '有效', null, null, '0', 'ge');
INSERT INTO `t_product` VALUES ('2684', 'RKRQ10', 'RKRQ10', '9999', 'G3/8-C', '产品', '有效', null, null, '0', 'ge');
INSERT INTO `t_product` VALUES ('2685', 'RKRQ10', 'RKRQ10', '9999', 'G3/8-C2A', '产品', '有效', null, null, '0', 'ge');
INSERT INTO `t_product` VALUES ('2686', 'RKRQ10', 'RKRQ10', '9999', 'M18×1.5-C', '产品', '有效', null, null, '0', 'ge');
INSERT INTO `t_product` VALUES ('2687', 'RKRQ10', 'RKRQ10', '9999', 'M18×1.5-C2A', '产品', '有效', null, null, '0', 'ge');
INSERT INTO `t_product` VALUES ('2688', 'RKRQ10', 'RKRQ10', '9999', 'G1/2', '产品', '有效', null, null, '0', 'ge');
INSERT INTO `t_product` VALUES ('2689', 'RKRQ10', 'RKRQ10', '9999', 'G1/2-M18×1.5', '产品', '有效', null, null, '0', 'ge');
INSERT INTO `t_product` VALUES ('2690', 'RKRQ10', 'RKRQ10', '9999', 'G1/2T-M18×1.5T', '产品', '有效', null, null, '0', 'ge');
INSERT INTO `t_product` VALUES ('2691', 'RKRQ10T', 'RKRQ10T', '9999', 'C', '产品', '有效', null, null, '0', 'ge');
INSERT INTO `t_product` VALUES ('2692', 'RKRQ10T', 'RKRQ10T', '9999', 'G1/2-C', '产品', '有效', null, null, '0', 'ge');
INSERT INTO `t_product` VALUES ('2693', 'RKRQ10T', 'RKRQ10T', '9999', 'G3/8-C', '产品', '有效', null, null, '0', 'ge');
INSERT INTO `t_product` VALUES ('2694', 'RKRQ10T', 'RKRQ10T', '9999', 'M18×1.5-C', '产品', '有效', null, null, '0', 'ge');
INSERT INTO `t_product` VALUES ('2695', 'RKRQ10T', 'RKRQ10T', '9999', 'G1/2', '产品', '有效', null, null, '0', 'ge');
INSERT INTO `t_product` VALUES ('2696', 'RKRQ10T', 'RKRQ10T', '9999', 'G1/2-M18×1.5', '产品', '有效', null, null, '0', 'ge');
INSERT INTO `t_product` VALUES ('2697', 'RKRQ10T1', 'RKRQ10T1', '9999', 'G1/2', '产品', '有效', null, null, '0', 'ge');
INSERT INTO `t_product` VALUES ('2698', 'RKRQ10T1', 'RKRQ10T1', '9999', 'G1/2-M18×1.5', '产品', '有效', null, null, '0', 'ge');
INSERT INTO `t_product` VALUES ('2699', 'RKRQ10T1A', 'RKRQ10T1A', '9999', 'G1/2', '产品', '有效', null, null, '0', 'ge');
INSERT INTO `t_product` VALUES ('2700', 'RKRQ10T1A', 'RKRQ10T1A', '9999', 'G1/2-M18×1.5', '产品', '有效', null, null, '0', 'ge');
INSERT INTO `t_product` VALUES ('2701', 'RKRQ10T2', 'RKRQ10T2', '9999', 'C', '产品', '有效', null, null, '0', 'ge');
INSERT INTO `t_product` VALUES ('2702', 'RKRQ10T2', 'RKRQ10T2', '9999', 'G1/2-C', '产品', '有效', null, null, '0', 'ge');
INSERT INTO `t_product` VALUES ('2703', 'RKRQ10T2', 'RKRQ10T2', '9999', 'G3/8-C', '产品', '有效', null, null, '0', 'ge');
INSERT INTO `t_product` VALUES ('2704', 'RKRQ10T2', 'RKRQ10T2', '9999', 'M18×1.5-C', '产品', '有效', null, null, '0', 'ge');
INSERT INTO `t_product` VALUES ('2705', 'RKRQ10T2', 'RKRQ10T2', '9999', 'G1/2', '产品', '有效', '', null, '0', 'm');
INSERT INTO `t_product` VALUES ('2706', 'RKRQ10T2', 'RKRQ10T2', '9999', 'G1/2-M18×1.5', '产品', '有效', null, null, '0', 'ge');
INSERT INTO `t_product` VALUES ('2707', 'RKRQ10T3', 'RKRQ10T3', '9999', 'C', '产品', '有效', null, null, '0', 'ge');
INSERT INTO `t_product` VALUES ('2708', 'RKRQ10T3', 'RKRQ10T3', '9999', 'G1/2-C', '产品', '有效', null, null, '0', 'ge');
INSERT INTO `t_product` VALUES ('2709', 'RKRQ10T3', 'RKRQ10T3', '9999', 'G3/8-C', '产品', '有效', null, null, '0', 'ge');
INSERT INTO `t_product` VALUES ('2710', 'RKRQ10T3', 'RKRQ10T3', '9999', 'M18×1.5-C', '产品', '有效', null, null, '0', 'ge');
INSERT INTO `t_product` VALUES ('2711', 'RKRQ10T3', 'RKRQ10T3', '9999', 'G1/2', '产品', '有效', null, null, '0', 'ge');
INSERT INTO `t_product` VALUES ('2712', 'RKRQ10T3', 'RKRQ10T3', '9999', 'G1/2-M18×1.5', '产品', '有效', null, null, '0', 'ge');
INSERT INTO `t_product` VALUES ('2713', 'RKRQ10T4', 'RKRQ10T4', '9999', 'C', '产品', '有效', null, null, '0', 'ge');
INSERT INTO `t_product` VALUES ('2714', 'RKRQ10T4', 'RKRQ10T4', '9999', 'G1/2-C', '产品', '有效', null, null, '0', 'ge');
INSERT INTO `t_product` VALUES ('2715', 'RKRQ10T4', 'RKRQ10T4', '9999', 'G3/8-C', '产品', '有效', null, null, '0', 'ge');
INSERT INTO `t_product` VALUES ('2716', 'RKRQ10T4', 'RKRQ10T4', '9999', 'M18×1.5-C', '产品', '有效', null, null, '0', 'ge');
INSERT INTO `t_product` VALUES ('2717', 'RKRQ10T4', 'RKRQ10T4', '9999', 'G1/2', '产品', '有效', null, null, '0', 'ge');
INSERT INTO `t_product` VALUES ('2718', 'RKRQ10T4', 'RKRQ10T4', '9999', 'G1/2-M18×1.5', '产品', '有效', null, null, '0', 'ge');
INSERT INTO `t_product` VALUES ('2719', 'RKRQ10T5', 'RKRQ10T5', '9999', 'C', '产品', '有效', null, null, '0', 'ge');
INSERT INTO `t_product` VALUES ('2720', 'RKRQ10T5', 'RKRQ10T5', '9999', 'G1/2-C', '产品', '有效', null, null, '0', 'ge');
INSERT INTO `t_product` VALUES ('2721', 'RKRQ10T5', 'RKRQ10T5', '9999', 'G3/8-C', '产品', '有效', null, null, '0', 'ge');
INSERT INTO `t_product` VALUES ('2722', 'RKRQ10T5', 'RKRQ10T5', '9999', 'M18×1.5-C', '产品', '有效', null, null, '0', 'ge');
INSERT INTO `t_product` VALUES ('2723', 'RKRQ10T5', 'RKRQ10T5', '9999', 'G1/2', '产品', '有效', null, null, '0', 'ge');
INSERT INTO `t_product` VALUES ('2724', 'RKRQ10T5', 'RKRQ10T5', '9999', 'G1/2-M18×1.5', '产品', '有效', null, null, '0', 'ge');
INSERT INTO `t_product` VALUES ('2725', 'RKRQ10T6', 'RKRQ10T6', '9999', 'C', '产品', '有效', null, null, '0', 'ge');
INSERT INTO `t_product` VALUES ('2726', 'RKRQ10T6', 'RKRQ10T6', '9999', 'G1/2-C', '产品', '有效', null, null, '0', 'ge');
INSERT INTO `t_product` VALUES ('2727', 'RKRQ10T6', 'RKRQ10T6', '9999', 'G3/8-C', '产品', '有效', null, null, '0', 'ge');
INSERT INTO `t_product` VALUES ('2728', 'RKRQ10T6', 'RKRQ10T6', '9999', 'M18×1.5-C', '产品', '有效', null, null, '0', 'ge');
INSERT INTO `t_product` VALUES ('2729', 'RKRQ10T6', 'RKRQ10T6', '9999', 'G1/2', '产品', '有效', null, null, '0', 'ge');
INSERT INTO `t_product` VALUES ('2730', 'RKRQ10T6', 'RKRQ10T6', '9999', 'G1/2-M18×1.5', '产品', '有效', null, null, '0', 'ge');
INSERT INTO `t_product` VALUES ('2731', 'RKRQ10T7', 'RKRQ10T7', '9999', 'C', '产品', '有效', null, null, '0', 'ge');
INSERT INTO `t_product` VALUES ('2732', 'RKRQ10T7', 'RKRQ10T7', '9999', 'C-CW', '产品', '有效', null, null, '0', 'ge');
INSERT INTO `t_product` VALUES ('2733', 'RKRQ10T7', 'RKRQ10T7', '9999', 'G1/2-C', '产品', '有效', null, null, '0', 'ge');
INSERT INTO `t_product` VALUES ('2734', 'RKRQ10T7', 'RKRQ10T7', '9999', 'G1/2W-C', '产品', '有效', null, null, '0', 'ge');
INSERT INTO `t_product` VALUES ('2735', 'RKRQ10T7', 'RKRQ10T7', '9999', 'G1/2-CW', '产品', '有效', null, null, '0', 'ge');
INSERT INTO `t_product` VALUES ('2736', 'RKRQ10T7', 'RKRQ10T7', '9999', 'G1/2', '产品', '有效', null, null, '0', 'ge');
INSERT INTO `t_product` VALUES ('2737', 'RKRQ10T7', 'RKRQ10T7', '9999', 'G1/2-G1/2W', '产品', '有效', null, null, '0', 'ge');
INSERT INTO `t_product` VALUES ('2738', 'RKRQ', 'RKRQ', '9999', 'RQ12', '产品', '有效', null, null, '0', 'ge');
INSERT INTO `t_product` VALUES ('2739', 'RKRQ', 'RKRQ', '9999', 'RQ12T1', '产品', '有效', null, null, '0', 'ge');
INSERT INTO `t_product` VALUES ('2740', 'RKRQ', 'RKRQ', '9999', 'RQ15A', '产品', '有效', null, null, '0', 'ge');
INSERT INTO `t_product` VALUES ('2741', 'RKRQ', 'RKRQ', '9999', 'RQ15B', '产品', '有效', null, null, '0', 'ge');
INSERT INTO `t_product` VALUES ('2742', 'RKRQ', 'RKRQ', '9999', 'RQ20A', '产品', '有效', null, null, '0', 'ge');
INSERT INTO `t_product` VALUES ('2743', 'RKRQ', 'RKRQ', '9999', 'RQ20B', '产品', '有效', null, null, '0', 'ge');
INSERT INTO `t_product` VALUES ('2744', 'RKRQ', 'RKRQ', '9999', 'RQ12T', '产品', '有效', '', null, '0', 'geng');
INSERT INTO `t_product` VALUES ('2745', 'RKRQ', 'RKRQ', '9999', 'RQ15TA', '产品', '有效', null, null, '0', 'ge');
INSERT INTO `t_product` VALUES ('2746', 'RKRQ', 'RKRQ', '9999', 'RQ15TB', '产品', '有效', null, null, '0', 'ge');
INSERT INTO `t_product` VALUES ('2747', 'RKRQ', 'RKRQ', '9999', 'RQ20T', '产品', '有效', null, null, '0', 'ge');
INSERT INTO `t_product` VALUES ('2748', 'RKBJ', 'RKBJ', '9999', 'RKBJ15F', '产品', '有效', null, null, '0', 'ge');
INSERT INTO `t_product` VALUES ('2749', 'RKBJ', 'RKBJ', '9999', 'RKBJ15', '产品', '有效', null, null, '0', 'ge');
INSERT INTO `t_product` VALUES ('2750', 'RKBJ', 'RKBJ', '9999', 'RKBJ15A', '产品', '有效', null, null, '0', 'ge');
INSERT INTO `t_product` VALUES ('2751', 'YJRQ10', 'YJRQ10', '9999', 'C2', '产品', '有效', null, null, '0', 'ge');
INSERT INTO `t_product` VALUES ('2752', 'YJRQ10', 'YJRQ10', '9999', 'C2A', '产品', '有效', null, null, '0', 'ge');
INSERT INTO `t_product` VALUES ('2753', 'YJRQ10', 'YJRQ10', '9999', 'G1/2-C2', '产品', '有效', null, null, '0', 'ge');
INSERT INTO `t_product` VALUES ('2754', 'YJRQ10', 'YJRQ10', '9999', 'G1/2-C2A', '产品', '有效', null, null, '0', 'ge');
INSERT INTO `t_product` VALUES ('2755', 'YJRQ10', 'YJRQ10', '9999', 'G3/8-C2', '产品', '有效', null, null, '0', 'ge');
INSERT INTO `t_product` VALUES ('2756', 'YJRQ10', 'YJRQ10', '9999', 'G3/8-C2A', '产品', '有效', null, null, '0', 'ge');
INSERT INTO `t_product` VALUES ('2757', 'YJRQ10', 'YJRQ10', '9999', 'M18×1.5-C2', '产品', '有效', null, null, '0', 'ge');
INSERT INTO `t_product` VALUES ('2758', 'YJRQ10', 'YJRQ10', '9999', 'M18×1.5-C2A', '产品', '有效', null, null, '0', 'ge');
INSERT INTO `t_product` VALUES ('2759', 'YJRQ10', 'YJRQ10', '9999', 'G1/2', '产品', '有效', null, null, '0', 'ge');
INSERT INTO `t_product` VALUES ('2760', 'YJRQ10', 'YJRQ10', '9999', 'G1/2-M18×1.5', '产品', '有效', null, null, '0', 'ge');
INSERT INTO `t_product` VALUES ('2761', 'YJRQ10', 'YJRQ10', '9999', 'G1/2T-M18×1.5T', '产品', '有效', null, null, '0', 'ge');
INSERT INTO `t_product` VALUES ('2762', 'YJRQ10T', 'YJRQ10T', '9999', 'C2', '产品', '有效', null, null, '0', 'ge');
INSERT INTO `t_product` VALUES ('2763', 'YJRQ10T', 'YJRQ10T', '9999', 'G1/2-C2', '产品', '有效', null, null, '0', 'ge');
INSERT INTO `t_product` VALUES ('2764', 'YJRQ10T', 'YJRQ10T', '9999', 'G3/8-C2', '产品', '有效', null, null, '0', 'ge');
INSERT INTO `t_product` VALUES ('2765', 'YJRQ10T', 'YJRQ10T', '9999', 'M18×1.5-C2', '产品', '有效', null, null, '0', 'ge');
INSERT INTO `t_product` VALUES ('2766', 'YJRQ10T', 'YJRQ10T', '9999', 'G1/2-L', '产品', '有效', null, null, '0', 'ge');
INSERT INTO `t_product` VALUES ('2767', 'YJRQ10T', 'YJRQ10T', '9999', 'G1/2-M18×1.5', '产品', '有效', null, null, '0', 'ge');
INSERT INTO `t_product` VALUES ('2768', 'YJRQ10T2', 'YJRQ10T2', '9999', 'C2', '产品', '有效', null, null, '0', 'ge');
INSERT INTO `t_product` VALUES ('2769', 'YJRQ10T2', 'YJRQ10T2', '9999', 'C2A', '产品', '有效', null, null, '0', 'ge');
INSERT INTO `t_product` VALUES ('2770', 'YJRQ10T2', 'YJRQ10T2', '9999', 'G1/2-C2-L', '产品', '有效', null, null, '0', 'ge');
INSERT INTO `t_product` VALUES ('2771', 'YJRQ10T2', 'YJRQ10T2', '9999', 'G1/2-C2A', '产品', '有效', null, null, '0', 'ge');
INSERT INTO `t_product` VALUES ('2772', 'YJRQ10T2', 'YJRQ10T2', '9999', 'G3/8-C2', '产品', '有效', null, null, '0', 'ge');
INSERT INTO `t_product` VALUES ('2773', 'YJRQ10T2', 'YJRQ10T2', '9999', 'G3/8-C2A', '产品', '有效', null, null, '0', 'ge');
INSERT INTO `t_product` VALUES ('2774', 'YJRQ10T2', 'YJRQ10T2', '9999', 'M18×1.5-C2', '产品', '有效', null, null, '0', 'ge');
INSERT INTO `t_product` VALUES ('2775', 'YJRQ10T2', 'YJRQ10T2', '9999', 'M18×1.5-C2A', '产品', '有效', null, null, '0', 'ge');
INSERT INTO `t_product` VALUES ('2776', 'YJRQ10T2', 'YJRQ10T2', '9999', 'G1/2', '产品', '有效', null, null, '0', 'ge');
INSERT INTO `t_product` VALUES ('2777', 'YJRQ10T2', 'YJRQ10T2', '9999', 'G1/2-M18×1.5', '产品', '有效', null, null, '0', 'ge');
INSERT INTO `t_product` VALUES ('2778', 'YJRQ', 'YJRQ', '9999', 'RQG10', '产品', '有效', null, null, '0', 'ge');
INSERT INTO `t_product` VALUES ('2779', 'YJRQ', 'YJRQ', '9999', 'RQG10T', '产品', '有效', null, null, '0', 'ge');
INSERT INTO `t_product` VALUES ('2780', 'YJRQ', 'YJRQ', '9999', 'RQG10C', '产品', '有效', null, null, '0', 'ge');
INSERT INTO `t_product` VALUES ('2781', 'YJRQ', 'YJRQ', '9999', 'RQG12', '产品', '有效', null, null, '0', 'ge');
INSERT INTO `t_product` VALUES ('2782', 'YJRQ', 'YJRQ', '9999', 'RQG13', '产品', '有效', null, null, '0', 'ge');
INSERT INTO `t_product` VALUES ('2783', 'RKLTG', 'RKLTG', '9999', 'RKLT06A', '产品', '有效', null, null, '0', 'ge');
INSERT INTO `t_product` VALUES ('2784', 'RKLTG', 'RKLTG', '9999', 'RKLT06B', '产品', '有效', null, null, '0', 'ge');
INSERT INTO `t_product` VALUES ('2785', 'RKPG', 'RKPG', '9999', 'GQ12', '产品', '有效', null, null, '0', 'ge');
INSERT INTO `t_product` VALUES ('2786', 'RKPG', 'RKPG', '9999', 'GQ13', '产品', '有效', null, null, '0', 'ge');
INSERT INTO `t_product` VALUES ('2787', 'RKPG', 'RKPG', '9999', 'GQ15', '产品', '有效', null, null, '0', 'ge');
INSERT INTO `t_product` VALUES ('2788', 'RKPG', 'RKPG', '9999', 'GA15', '产品', '有效', null, null, '0', 'ge');
INSERT INTO `t_product` VALUES ('2789', 'RKPG', 'RKPG', '9999', 'GQ15B', '产品', '有效', null, null, '0', 'ge');
INSERT INTO `t_product` VALUES ('2790', 'RKPG', 'RKPG', '9999', 'GQ18', '产品', '有效', null, null, '0', 'ge');
INSERT INTO `t_product` VALUES ('2791', 'RKPG', 'RKPG', '9999', 'GQ20', '产品', '有效', null, null, '0', 'ge');
INSERT INTO `t_product` VALUES ('2792', 'RKSG', 'RKSG', '9999', 'RK9612', '产品', '有效', null, null, '0', 'ge');
INSERT INTO `t_product` VALUES ('2793', 'RKSG', 'RKSG', '9999', 'RK9613', '产品', '有效', null, null, '0', 'ge');
INSERT INTO `t_product` VALUES ('2794', 'RKSG', 'RKSG', '9999', 'RK9615', '产品', '有效', null, null, '0', 'ge');
INSERT INTO `t_product` VALUES ('2795', 'RKSG', 'RKSG', '9999', 'RK9618', '产品', '有效', null, null, '0', 'ge');
INSERT INTO `t_product` VALUES ('2796', 'RKSG', 'RKSG', '9999', 'RK9620', '产品', '有效', null, null, '0', 'ge');
INSERT INTO `t_product` VALUES ('2797', 'RKSG', 'RKSG', '9999', 'RK9612T', '产品', '有效', null, null, '0', 'ge');
INSERT INTO `t_product` VALUES ('2798', 'RKSG', 'RKSG', '9999', 'RK9613T', '产品', '有效', null, null, '0', 'ge');
INSERT INTO `t_product` VALUES ('2799', 'RKRQ', 'RKRQ', '9999', 'RQG10', '产品', '有效', null, null, '0', 'ge');
INSERT INTO `t_product` VALUES ('2800', 'RKRQ', 'RKRQ', '9999', 'RQG10T', '产品', '有效', null, null, '0', 'ge');
INSERT INTO `t_product` VALUES ('2801', 'RKRQ', 'RKRQ', '9999', 'RQG10C', '产品', '有效', null, null, '0', 'ge');
INSERT INTO `t_product` VALUES ('2802', 'RKRQ', 'RKRQ', '9999', 'RQG12', '产品', '有效', null, null, '0', 'ge');
INSERT INTO `t_product` VALUES ('2803', 'RKRQ', 'RKRQ', '9999', 'RQG13', '产品', '有效', '', null, '0', 'm');
INSERT INTO `t_product` VALUES ('2804', 'RKRQ', 'RKRQ', '9999', 'RQG15', '产品', '有效', null, null, '0', 'ge');
INSERT INTO `t_product` VALUES ('2805', 'RKRQ', 'RKRQ', '9999', 'RQG15A', '产品', '有效', null, null, '0', 'ge');
INSERT INTO `t_product` VALUES ('2806', 'RKRQ', 'RKRQ', '9999', 'RQG15B', '产品', '有效', null, null, '0', 'ge');
INSERT INTO `t_product` VALUES ('2807', 'RKRQ', 'RKRQ', '9999', 'RQG18', '产品', '有效', null, null, '0', 'ge');
INSERT INTO `t_product` VALUES ('2808', 'RKRQ', 'RKRQ', '9999', 'RQG20', '产品', '有效', null, null, '0', 'ge');
INSERT INTO `t_product` VALUES ('2809', 'JT', '接头', '9999', 'RKRQ08-5A', '原料', '有效', null, null, '18', 'ge');
INSERT INTO `t_product` VALUES ('2810', 'JT', '接头', '9999', 'RKRQ08-6A', '原料', '有效', null, null, '18', 'ge');
INSERT INTO `t_product` VALUES ('2811', 'JT', '接头', '9999', 'RKRQ09-1B', '原料', '有效', null, null, '18', 'ge');
INSERT INTO `t_product` VALUES ('2812', 'JT', '接头', '9999', 'RKRQ09-1C', '原料', '有效', null, null, '18', 'ge');
INSERT INTO `t_product` VALUES ('2813', 'LQ', '接头', '9999', 'RKLQ08-3J', '原料', '有效', null, null, '6', 'ge');
INSERT INTO `t_product` VALUES ('2814', 'LQ', '接头', '9999', 'RKLQ9-3J', '原料', '有效', null, null, '6', 'ge');
INSERT INTO `t_product` VALUES ('2815', 'LQ', '接头', '9999', 'RKLQ12-3J', '原料', '有效', null, null, '6', 'ge');
INSERT INTO `t_product` VALUES ('2816', 'LQ', '环', '9999', 'RKLQ9H', '原料', '有效', null, null, '6', 'ge');
INSERT INTO `t_product` VALUES ('2817', 'LQ', '环', '9999', 'RKLQ12H', '原料', '有效', null, null, '6', 'ge');
INSERT INTO `t_product` VALUES ('2818', 'LQ', '接头', '9999', 'RKLQ16J', '原料', '有效', null, null, '6', 'ge');
INSERT INTO `t_product` VALUES ('2819', 'LQ', '环', '9999', 'RKLQ16H', '原料', '有效', null, null, '6', 'ge');
INSERT INTO `t_product` VALUES ('2820', 'LQ', '接头', '9999', 'RKLQ08-1', '原料', '有效', null, null, '6', 'ge');
INSERT INTO `t_product` VALUES ('2821', 'LQ', '接头', '9999', 'RKLQ10-1', '原料', '有效', null, null, '6', 'ge');
INSERT INTO `t_product` VALUES ('2822', 'LQ', '接头', '9999', 'RKLQ16-1', '原料', '有效', null, null, '6', 'ge');
INSERT INTO `t_product` VALUES ('2823', 'SLJ', '塑料件', '9999', 'SL15-HG', '原料', '有效', null, null, '7', 'ge');
INSERT INTO `t_product` VALUES ('2824', 'DQ', '垫圈', '9999', 'RKDQ08-8', '原料', '有效', null, null, '12', 'ge');
INSERT INTO `t_product` VALUES ('2825', 'DQ', '垫圈', '9999', 'RKDQ08-1', '原料', '有效', null, null, '12', 'ge');
INSERT INTO `t_product` VALUES ('2826', 'DQ', '垫圈', '9999', 'RKDQ08-3', '原料', '有效', null, null, '12', 'ge');
INSERT INTO `t_product` VALUES ('2827', 'DQ', '垫圈', '9999', 'RKDQ08-4', '原料', '有效', null, null, '12', 'ge');
INSERT INTO `t_product` VALUES ('2828', 'DQ', '垫圈', '9999', 'RKDQ08-5', '原料', '有效', null, null, '12', 'ge');
INSERT INTO `t_product` VALUES ('2829', 'DQ', '垫圈', '9999', 'RKDQ08-4A', '原料', '有效', null, null, '12', 'ge');
INSERT INTO `t_product` VALUES ('2830', 'DQ', '垫圈', '9999', 'RKDQ08-4B', '原料', '有效', null, null, '12', 'ge');
INSERT INTO `t_product` VALUES ('2831', 'DQ', '垫圈', '9999', 'RKDQ08-4C', '原料', '有效', null, null, '12', 'ge');
INSERT INTO `t_product` VALUES ('2832', 'DQ', '垫圈', '9999', 'RKDQ08-4D', '原料', '有效', null, null, '12', 'ge');
INSERT INTO `t_product` VALUES ('2833', 'DQ', '垫圈', '9999', 'RKDQ08-3A', '原料', '有效', null, null, '12', 'ge');
INSERT INTO `t_product` VALUES ('2834', 'DQ', '垫圈', '9999', 'RKDQ09-1', '原料', '有效', null, null, '12', 'ge');
INSERT INTO `t_product` VALUES ('2835', 'DQ', '垫圈', '9999', 'RKDQ09-2', '原料', '有效', null, null, '12', 'ge');
INSERT INTO `t_product` VALUES ('2836', 'DQ', '垫圈', '9999', 'RKDQ12-1', '原料', '有效', null, null, '12', 'ge');
INSERT INTO `t_product` VALUES ('2837', 'DQ', '垫圈', '9999', 'RKDQ20-1', '原料', '有效', null, null, '12', 'ge');
INSERT INTO `t_product` VALUES ('2838', 'DQ', '垫圈', '9999', 'RKDQ20-2', '原料', '有效', null, null, '12', 'ge');
INSERT INTO `t_product` VALUES ('2839', 'DQ', '垫圈', '9999', 'RKDQ25-1', '原料', '有效', null, null, '12', 'ge');
INSERT INTO `t_product` VALUES ('2840', 'DQ', '垫圈', '9999', 'RKDQ20-4', '原料', '有效', null, null, '12', 'ge');
INSERT INTO `t_product` VALUES ('2841', 'DQ', '垫圈', '9999', 'RKDQ08-6', '原料', '有效', null, null, '12', 'ge');
INSERT INTO `t_product` VALUES ('2842', 'DQ', '垫圈', '9999', 'RKDQ08-7', '原料', '有效', null, null, '12', 'ge');
INSERT INTO `t_product` VALUES ('2843', 'DQ', '垫圈', '9999', 'RKDQ10A', '原料', '有效', null, null, '12', 'ge');
INSERT INTO `t_product` VALUES ('2844', 'DQ', '垫圈', '9999', 'RKDQ12-4', '原料', '有效', null, null, '12', 'ge');
INSERT INTO `t_product` VALUES ('2845', 'DQ', '垫圈', '9999', 'RKDQ08-11', '原料', '有效', null, null, '12', 'ge');
INSERT INTO `t_product` VALUES ('2846', 'DQ', '垫圈', '9999', 'RKDQ15-1A', '原料', '有效', null, null, '12', 'ge');
INSERT INTO `t_product` VALUES ('2847', 'DQ', '垫圈', '9999', 'RKDQ15B', '原料', '有效', null, null, '12', 'ge');
INSERT INTO `t_product` VALUES ('2848', 'DQ', '垫圈', '9999', 'RKDQ20-5', '原料', '有效', null, null, '12', 'ge');
INSERT INTO `t_product` VALUES ('2849', 'DQ', '垫圈', '9999', 'OXQ19×15×2', '原料', '有效', null, null, '12', 'ge');
INSERT INTO `t_product` VALUES ('2850', 'DQ', '垫圈', '9999', 'OXQ23×17×3', '原料', '有效', null, null, '12', 'ge');
INSERT INTO `t_product` VALUES ('2851', 'DQ', '垫圈', '9999', 'OXQ24×18×3', '原料', '有效', null, null, '12', 'ge');
INSERT INTO `t_product` VALUES ('2852', 'DQ', '垫圈', '9999', 'OXQ28×22×3', '原料', '有效', null, null, '12', 'ge');
INSERT INTO `t_product` VALUES ('2853', 'DQ', '垫圈', '9999', 'OXQ27×21×3', '原料', '有效', null, null, '12', 'ge');
INSERT INTO `t_product` VALUES ('2854', 'DQ', '垫圈', '9999', 'OXQ30×24×3', '原料', '有效', null, null, '12', 'ge');
INSERT INTO `t_product` VALUES ('2855', 'LM', '螺母', '9999', 'RKLM12-8T', '原料', '有效', null, null, '90', 'ge');
INSERT INTO `t_product` VALUES ('2856', 'LM', '螺母', '9999', 'RKLM12-9T', '原料', '有效', null, null, '90', 'ge');
INSERT INTO `t_product` VALUES ('2857', 'LM', '螺母', '9999', 'RKWHLM12-9T', '原料', '有效', null, null, '90', 'ge');
INSERT INTO `t_product` VALUES ('2858', 'LQ', '网套', '9999', 'RKWT14', '原料', '有效', '', '', '9', 'mm');
INSERT INTO `t_product` VALUES ('2859', 'LQ', '网套', '9999', 'RKWT19', '原料', '有效', '', '', '9', 'mm');
INSERT INTO `t_product` VALUES ('2860', 'PVC', 'PVC颗粒', '9999', 'KL-01', '原料', '有效', '', '', '95', 'kg');
INSERT INTO `t_product` VALUES ('2861', 'PVC', 'PVC颗粒', '9999', 'KL-03', '原料', '有效', '', '', '95', 'kg');
INSERT INTO `t_product` VALUES ('2862', 'PVC', 'PVC颗粒', '9999', 'KL-05', '原料', '有效', '', '', '95', 'kg');
INSERT INTO `t_product` VALUES ('2863', 'PVC', 'PVC颗粒', '9999', 'KL-06', '原料', '有效', '', '', '95', 'kg');
INSERT INTO `t_product` VALUES ('2864', 'JT', '接头', '9999', 'RKRQ08-11', '原料', '有效', null, null, '96', 'ge');
INSERT INTO `t_product` VALUES ('2865', 'JT', '接头', '9999', 'RKBJ20-5', '原料', '有效', null, null, '96', 'ge');
INSERT INTO `t_product` VALUES ('2866', 'JT', '接头', '9999', 'RKBJ20-6', '原料', '有效', null, null, '96', 'ge');
INSERT INTO `t_product` VALUES ('2867', 'JT', '接头', '9999', 'LT08-3', '原料', '有效', null, null, '96', 'ge');
INSERT INTO `t_product` VALUES ('2868', 'JT', '接头', '9999', 'RKJT08-2', '原料', '有效', null, null, '96', 'ge');
INSERT INTO `t_product` VALUES ('2869', 'JT', '接头', '9999', 'RKJT08-2A', '原料', '有效', null, null, '96', 'ge');
INSERT INTO `t_product` VALUES ('2870', 'JT', '接头', '9999', 'RKJT08-2B', '原料', '有效', null, null, '96', 'ge');
INSERT INTO `t_product` VALUES ('2871', 'JT', '接头', '9999', 'RKJT08-3', '原料', '有效', null, null, '96', 'ge');
INSERT INTO `t_product` VALUES ('2872', 'JT', '接头', '9999', 'RKJT08-4', '原料', '有效', null, null, '96', 'ge');
INSERT INTO `t_product` VALUES ('2873', 'JT', '接头', '9999', 'RKJT25-1', '原料', '有效', null, null, '96', 'ge');
INSERT INTO `t_product` VALUES ('2874', 'JT', '接头', '9999', 'RKRQ08-1A', '原料', '有效', null, null, '96', 'ge');
INSERT INTO `t_product` VALUES ('2875', 'JT', '接头', '9999', 'RKRQ08-2C', '原料', '有效', null, null, '96', 'ge');
INSERT INTO `t_product` VALUES ('2876', 'JT', '接头', '9999', 'RKRQ08-2D', '原料', '有效', null, null, '96', 'ge');
INSERT INTO `t_product` VALUES ('2877', 'JT', '接头', '9999', 'RKRQ08-3A', '原料', '有效', null, null, '96', 'ge');
INSERT INTO `t_product` VALUES ('2878', 'JT', '接头', '9999', 'RKRQ08-4A', '原料', '有效', null, null, '96', 'ge');
INSERT INTO `t_product` VALUES ('2879', 'JT', '接头', '9999', 'RKRQ08-5A', '原料', '有效', null, null, '96', 'ge');
INSERT INTO `t_product` VALUES ('2880', 'JT', '接头', '9999', 'RKRQ12-1', '原料', '有效', null, null, '96', 'ge');
INSERT INTO `t_product` VALUES ('2881', 'JT', '接头', '9999', 'RKRQ12-2', '原料', '有效', null, null, '96', 'ge');
INSERT INTO `t_product` VALUES ('2882', 'JT', '接头', '9999', 'RKRQ12-3', '原料', '有效', null, null, '96', 'ge');
INSERT INTO `t_product` VALUES ('2883', 'JT', '接头', '9999', 'RKRQ13-1', '原料', '有效', null, null, '96', 'ge');
INSERT INTO `t_product` VALUES ('2884', 'JT', '接头', '9999', 'RKRQ13-2', '原料', '有效', null, null, '96', 'ge');
INSERT INTO `t_product` VALUES ('2885', 'JT', '接头', '9999', 'RKRQ13-3', '原料', '有效', null, null, '96', 'ge');
INSERT INTO `t_product` VALUES ('2886', 'JT', '接头', '9999', 'RKRQ13-4', '原料', '有效', null, null, '96', 'ge');
INSERT INTO `t_product` VALUES ('2887', 'JT', '接头', '9999', 'RKRQ13-5', '原料', '有效', null, null, '96', 'ge');
INSERT INTO `t_product` VALUES ('2888', 'JT', '接头', '9999', 'RKRQ15-1A', '原料', '有效', null, null, '96', 'ge');
INSERT INTO `t_product` VALUES ('2889', 'JT', '接头', '9999', 'RKRQ15-2A', '原料', '有效', null, null, '96', 'ge');
INSERT INTO `t_product` VALUES ('2890', 'JT', '接头', '9999', 'RKRQ15-3A', '原料', '有效', null, null, '96', 'ge');
INSERT INTO `t_product` VALUES ('2891', 'JT', '接头', '9999', 'RKRQ15B-1', '原料', '有效', null, null, '96', 'ge');
INSERT INTO `t_product` VALUES ('2892', 'JT', '接头', '9999', 'RKRQ15B-2', '原料', '有效', null, null, '96', 'ge');
INSERT INTO `t_product` VALUES ('2893', 'JT', '接头', '9999', 'RKRQ15B-3', '原料', '有效', null, null, '96', 'ge');
INSERT INTO `t_product` VALUES ('2894', 'JT', '接头', '9999', 'RKRQ18C', '原料', '有效', null, null, '96', 'ge');
INSERT INTO `t_product` VALUES ('2895', 'JT', '接头', '9999', 'RKRQ18D', '原料', '有效', null, null, '96', 'ge');
INSERT INTO `t_product` VALUES ('2896', 'JT', '接头', '9999', 'RKRQ18E', '原料', '有效', null, null, '96', 'ge');
INSERT INTO `t_product` VALUES ('2897', 'JT', '接头', '9999', 'RKRQ18F', '原料', '有效', null, null, '96', 'ge');
INSERT INTO `t_product` VALUES ('2898', 'JT', '接头', '9999', 'RKRQ18F-1', '原料', '有效', null, null, '96', 'ge');
INSERT INTO `t_product` VALUES ('2899', 'JT', '接头', '9999', 'RKRQ18G-1', '原料', '有效', null, null, '96', 'ge');
INSERT INTO `t_product` VALUES ('2900', 'JT', '接头', '9999', 'RKRQ18G-2', '原料', '有效', null, null, '96', 'ge');
INSERT INTO `t_product` VALUES ('2901', 'JT', '接头', '9999', 'MDT15-3', '原料', '有效', null, null, '96', 'ge');
INSERT INTO `t_product` VALUES ('2902', 'JT', '接头', '9999', 'RKJT08-1', '原料', '有效', null, null, '96', 'ge');
INSERT INTO `t_product` VALUES ('2903', 'KG', '卡箍', '9999', 'RKKG08-3', '原料', '有效', null, null, '96', 'ge');
INSERT INTO `t_product` VALUES ('2904', 'KG', '卡箍', '9999', 'RKKG10-2', '原料', '有效', null, null, '96', 'ge');
INSERT INTO `t_product` VALUES ('2905', 'KG', '卡箍', '9999', 'RKKG10-1', '原料', '有效', null, null, '96', 'ge');
INSERT INTO `t_product` VALUES ('2906', 'KG', '卡箍', '9999', 'RKKG12-4', '原料', '有效', null, null, '96', 'ge');
INSERT INTO `t_product` VALUES ('2907', 'KG', '卡箍', '9999', 'RKKG12-3', '原料', '有效', null, null, '96', 'ge');
INSERT INTO `t_product` VALUES ('2908', 'KG', '卡箍', '9999', 'RKKG15-1', '原料', '有效', null, null, '96', 'ge');
INSERT INTO `t_product` VALUES ('2909', 'KG', '卡箍', '9999', 'RKKG15-2', '原料', '有效', null, null, '96', 'ge');
INSERT INTO `t_product` VALUES ('2910', 'KG', '卡箍', '9999', 'RKKG15-3', '原料', '有效', null, null, '96', 'ge');
INSERT INTO `t_product` VALUES ('2911', 'KG', '卡箍', '9999', 'RKKG18-2', '原料', '有效', null, null, '96', 'ge');
INSERT INTO `t_product` VALUES ('2912', 'LM', '螺母', '9999', 'RKRQ09-5', '原料', '有效', null, null, '96', 'ge');
INSERT INTO `t_product` VALUES ('2913', 'LM', '螺母', '9999', 'RKRQ09-6', '原料', '有效', null, null, '96', 'ge');
INSERT INTO `t_product` VALUES ('2914', 'LM', '螺母', '9999', 'RKLM20-3', '原料', '有效', null, null, '96', 'ge');
INSERT INTO `t_product` VALUES ('2915', 'LM', '螺母', '9999', 'RKLM20-4', '原料', '有效', null, null, '96', 'ge');
INSERT INTO `t_product` VALUES ('2916', 'LM', '螺母', '9999', 'RKLM08-1', '原料', '有效', null, null, '96', 'ge');
INSERT INTO `t_product` VALUES ('2917', 'LM', '螺母', '9999', 'RKLM08-4', '原料', '有效', null, null, '96', 'ge');
INSERT INTO `t_product` VALUES ('2918', 'LM', '螺母', '9999', 'RKLM08-2E', '原料', '有效', null, null, '96', 'ge');
INSERT INTO `t_product` VALUES ('2919', 'LM', '螺母', '9999', 'RKLM08-2D', '原料', '有效', null, null, '96', 'ge');
INSERT INTO `t_product` VALUES ('2920', 'LM', '螺母', '9999', 'RKLM08-2F', '原料', '有效', null, null, '96', 'ge');
INSERT INTO `t_product` VALUES ('2921', 'LM', '螺母', '9999', 'RKLM08-3', '原料', '有效', null, null, '96', 'ge');
INSERT INTO `t_product` VALUES ('2922', 'LM', '螺母', '9999', 'RKLM08-5', '原料', '有效', null, null, '96', 'ge');
INSERT INTO `t_product` VALUES ('2923', 'LM', '螺母', '9999', 'RKLM08-6', '原料', '有效', null, null, '96', 'ge');
INSERT INTO `t_product` VALUES ('2924', 'LM', '螺母', '9999', 'RKLM20-1', '原料', '有效', null, null, '96', 'ge');
INSERT INTO `t_product` VALUES ('2925', 'LM', '螺母', '9999', 'RKLM20-2', '原料', '有效', null, null, '96', 'ge');
INSERT INTO `t_product` VALUES ('2926', 'LM', '螺母', '9999', 'RKLM25-1', '原料', '有效', null, null, '96', 'ge');
INSERT INTO `t_product` VALUES ('2927', 'LM', '螺母', '9999', 'YJLM08-1', '原料', '有效', null, null, '96', 'ge');
INSERT INTO `t_product` VALUES ('2928', 'LM', '螺母', '9999', 'YJLM08-2', '原料', '有效', null, null, '96', 'ge');
INSERT INTO `t_product` VALUES ('2929', 'LM', '螺母', '9999', 'YJLM08-4', '原料', '有效', null, null, '96', 'ge');
INSERT INTO `t_product` VALUES ('2930', 'LM', '螺母', '9999', 'RKLM09-2', '原料', '有效', null, null, '96', 'ge');
INSERT INTO `t_product` VALUES ('2931', 'LM', '螺母', '9999', 'YJLM08-5AT', '原料', '有效', null, null, '96', 'ge');
INSERT INTO `t_product` VALUES ('2932', 'LM', '螺母', '9999', 'YJLM08-7T', '原料', '有效', null, null, '96', 'ge');
INSERT INTO `t_product` VALUES ('2933', 'LM', '螺母', '9999', 'RKLM10-1', '原料', '有效', null, null, '96', 'ge');
INSERT INTO `t_product` VALUES ('2934', 'LM', '螺母', '9999', 'YJLM10-1', '原料', '有效', null, null, '96', 'ge');
INSERT INTO `t_product` VALUES ('2935', 'LM', '螺母', '9999', 'RKLM10C', '原料', '有效', null, null, '96', 'ge');
INSERT INTO `t_product` VALUES ('2936', 'LM', '螺母', '9999', 'RKLM10D', '原料', '有效', null, null, '96', 'ge');
INSERT INTO `t_product` VALUES ('2937', 'LM', '螺母', '9999', 'RKLM12-2', '原料', '有效', null, null, '96', 'ge');
INSERT INTO `t_product` VALUES ('2938', 'LM', '螺母', '9999', 'RKLM12-3', '原料', '有效', null, null, '96', 'ge');
INSERT INTO `t_product` VALUES ('2939', 'LM', '螺母', '9999', 'RKRQ15-6A', '原料', '有效', null, null, '96', 'ge');
INSERT INTO `t_product` VALUES ('2940', 'KSJT', '快速接头', '9999', 'JT08A', '原料', '有效', null, null, '96', 'ge');
INSERT INTO `t_product` VALUES ('2941', 'KSJT', '快速接头', '9999', 'JT08B', '原料', '有效', null, null, '96', 'ge');
INSERT INTO `t_product` VALUES ('2942', 'KSJT', '快速接头', '9999', 'JT08C', '原料', '有效', null, null, '96', 'ge');
INSERT INTO `t_product` VALUES ('2943', 'KSJT', '快速接头', '9999', 'JT08C1', '原料', '有效', null, null, '96', 'ge');
INSERT INTO `t_product` VALUES ('2944', 'KSJT', '快速接头', '9999', 'RKJT08D1', '原料', '有效', null, null, '96', 'ge');
INSERT INTO `t_product` VALUES ('2945', 'KSJT', '快速接头', '9999', 'YJJT08D1', '原料', '有效', null, null, '96', 'ge');
INSERT INTO `t_product` VALUES ('2946', 'KSJT', '快速接头', '9999', 'YJJT08C', '原料', '有效', null, null, '96', 'ge');
INSERT INTO `t_product` VALUES ('2947', 'KSJT', '快速接头', '9999', 'JT08F', '原料', '有效', null, null, '96', 'ge');
INSERT INTO `t_product` VALUES ('2948', 'KSJT', '快速接头', '9999', 'JT12A', '原料', '有效', null, null, '96', 'ge');
INSERT INTO `t_product` VALUES ('2949', 'KSJT', '快速接头', '9999', 'JT12B', '原料', '有效', null, null, '96', 'ge');
INSERT INTO `t_product` VALUES ('2950', 'KSJT', '快速接头', '9999', 'JT12C', '原料', '有效', null, null, '96', 'ge');
INSERT INTO `t_product` VALUES ('2951', 'KSJT', '快速接头', '9999', 'JT12D', '原料', '有效', null, null, '96', 'ge');
INSERT INTO `t_product` VALUES ('2952', 'KSJT', '快速接头', '9999', 'JT12E', '原料', '有效', null, null, '96', 'ge');
INSERT INTO `t_product` VALUES ('2953', 'KSJT', '快速接头', '9999', 'JT12D1', '原料', '有效', null, null, '96', 'ge');
INSERT INTO `t_product` VALUES ('2954', 'KSJT', '快速接头', '9999', 'JT13A', '原料', '有效', null, null, '96', 'ge');
INSERT INTO `t_product` VALUES ('2955', 'KSJT', '快速接头', '9999', 'JT13B', '原料', '有效', null, null, '96', 'ge');
INSERT INTO `t_product` VALUES ('2956', 'KSJT', '快速接头', '9999', 'JT13C', '原料', '有效', null, null, '96', 'ge');
INSERT INTO `t_product` VALUES ('2957', 'KSJT', '快速接头', '9999', 'JT13D', '原料', '有效', null, null, '96', 'ge');
INSERT INTO `t_product` VALUES ('2958', 'KSJT', '快速接头', '9999', 'JT13E', '原料', '有效', null, null, '96', 'ge');
INSERT INTO `t_product` VALUES ('2959', 'KSJT', '快速接头', '9999', 'JT13E1', '原料', '有效', null, null, '96', 'ge');
INSERT INTO `t_product` VALUES ('2960', 'KSJT', '快速接头', '9999', 'JT13F', '原料', '有效', null, null, '96', 'ge');
INSERT INTO `t_product` VALUES ('2961', 'KSJT', '快速接头', '9999', 'JT13G', '原料', '有效', null, null, '96', 'ge');
INSERT INTO `t_product` VALUES ('2962', 'KSJT', '快速接头', '9999', 'JT15A', '原料', '有效', null, null, '96', 'ge');
INSERT INTO `t_product` VALUES ('2963', 'KSJT', '快速接头', '9999', 'JT15B', '原料', '有效', null, null, '96', 'ge');
INSERT INTO `t_product` VALUES ('2964', 'KSJT', '快速接头', '9999', 'JT15C', '原料', '有效', null, null, '96', 'ge');
INSERT INTO `t_product` VALUES ('2965', 'KSJT', '快速接头', '9999', 'JT15D', '原料', '有效', null, null, '96', 'ge');
INSERT INTO `t_product` VALUES ('2966', 'KSJT', '快速接头', '9999', 'JT15E', '原料', '有效', null, null, '96', 'ge');
INSERT INTO `t_product` VALUES ('2967', 'KSJT', '快速接头', '9999', 'JT15A1', '原料', '有效', null, null, '96', 'ge');
INSERT INTO `t_product` VALUES ('2968', 'KSJT', '快速接头', '9999', 'JT15B1', '原料', '有效', null, null, '96', 'ge');
INSERT INTO `t_product` VALUES ('2969', 'KSJT', '快速接头', '9999', 'JT15C1', '原料', '有效', null, null, '96', 'ge');
INSERT INTO `t_product` VALUES ('2970', 'KSJT', '快速接头', '9999', 'JT20A', '原料', '有效', null, null, '96', 'ge');
INSERT INTO `t_product` VALUES ('2971', 'KSJT', '快速接头', '9999', 'JT20B', '原料', '有效', null, null, '96', 'ge');
INSERT INTO `t_product` VALUES ('2972', 'KSJT', '快速接头', '9999', 'JT20C', '原料', '有效', null, null, '96', 'ge');
INSERT INTO `t_product` VALUES ('2973', 'KSJT', '快速接头', '9999', 'JT20D', '原料', '有效', null, null, '96', 'ge');
INSERT INTO `t_product` VALUES ('2974', 'KSJT', '快速接头', '9999', 'JT20E', '原料', '有效', null, null, '96', 'ge');
INSERT INTO `t_product` VALUES ('2975', 'KSJT', '快速接头', '9999', 'JT20F', '原料', '有效', null, null, '96', 'ge');
INSERT INTO `t_product` VALUES ('2976', 'KSJT', '快速接头', '9999', 'JT20G', '原料', '有效', null, null, '96', 'ge');
INSERT INTO `t_product` VALUES ('2977', 'KSJT', '快速接头', '9999', 'JT20H', '原料', '有效', null, null, '96', 'ge');
INSERT INTO `t_product` VALUES ('2978', 'KSJT', '快速接头', '9999', 'JT20I', '原料', '有效', null, null, '96', 'ge');
INSERT INTO `t_product` VALUES ('2979', 'KSJT', '快速接头', '9999', 'JT20J', '原料', '有效', null, null, '96', 'ge');
INSERT INTO `t_product` VALUES ('2980', 'DQ', '垫圈', '9999', 'RKBJ15-1', '原料', '有效', null, null, '96', 'ge');
INSERT INTO `t_product` VALUES ('2981', 'ST', '三通', '9999', 'ST10-2', '原料', '有效', null, null, '96', 'ge');
INSERT INTO `t_product` VALUES ('2982', 'ST', '三通', '9999', 'ST10-4', '原料', '有效', null, null, '96', 'ge');
INSERT INTO `t_product` VALUES ('2983', 'ST', '三通', '9999', 'ST10-5', '原料', '有效', null, null, '96', 'ge');
INSERT INTO `t_product` VALUES ('2984', 'ST', '三通', '9999', 'FST20', '原料', '有效', null, null, '96', 'ge');
INSERT INTO `t_product` VALUES ('2985', 'WT', '弯头', '9999', 'MDT15-4', '原料', '有效', null, null, '96', 'ge');
INSERT INTO `t_product` VALUES ('2986', 'WT', '弯头', '9999', 'MDT20-1', '原料', '有效', null, null, '96', 'ge');
INSERT INTO `t_product` VALUES ('2987', 'WT', '弯头', '9999', 'MDT20-2', '原料', '有效', null, null, '96', 'ge');
INSERT INTO `t_product` VALUES ('2988', 'WT', '弯头', '9999', 'MDT15-1', '原料', '有效', null, null, '96', 'ge');
INSERT INTO `t_product` VALUES ('2989', 'WT', '弯头', '9999', 'MDT15-2', '原料', '有效', null, null, '96', 'ge');
INSERT INTO `t_product` VALUES ('2990', 'PVC', 'PVC颗粒', '9999', 'KL-02', '原料', '有效', '', '', '13', 'kg');
INSERT INTO `t_product` VALUES ('2991', 'PVC', 'PVC颗粒', '9999', 'KL-04', '原料', '有效', '', '', '13', 'kg');
INSERT INTO `t_product` VALUES ('2992', 'BFC', '被覆层', '9999', 'RKBF10-1', '原料', '有效', '', '', '91', 'm');
INSERT INTO `t_product` VALUES ('2993', 'BFC', '被覆层', '9999', 'RKBF10-2', '原料', '有效', '', '', '91', 'm');
INSERT INTO `t_product` VALUES ('2994', 'BFC', '被覆层', '9999', 'RKRS25', '原料', '有效', '', '', '91', 'm');
INSERT INTO `t_product` VALUES ('2995', 'BFC', '被覆层', '9999', 'RKRS32', '原料', '有效', '', '', '91', 'm');
INSERT INTO `t_product` VALUES ('2996', 'BFC', '被覆层', '9999', 'RKRS35', '原料', '有效', '', '', '91', 'm');
INSERT INTO `t_product` VALUES ('2997', 'BFC', '被覆层', '9999', 'RKRS41', '原料', '有效', '', '', '91', 'm');
INSERT INTO `t_product` VALUES ('2998', 'JT', '接头', '9999', 'RKRQ08-7C', '原料', '有效', null, null, '93', 'ge');
INSERT INTO `t_product` VALUES ('2999', 'JT', '接头', '9999', 'RKRQ08-8', '原料', '有效', null, null, '93', 'ge');
INSERT INTO `t_product` VALUES ('3000', 'JT', '接头', '9999', 'RKRQ10-2', '原料', '有效', null, null, '93', 'ge');
INSERT INTO `t_product` VALUES ('3001', 'JT', '接头', '9999', 'RKRQ20-1', '原料', '有效', null, null, '93', 'ge');
INSERT INTO `t_product` VALUES ('3002', 'JT', '接头', '9999', 'RKRQ20-2', '原料', '有效', null, null, '93', 'ge');
INSERT INTO `t_product` VALUES ('3003', 'JT', '接头', '9999', 'RKRQ25-1', '原料', '有效', null, null, '93', 'ge');
INSERT INTO `t_product` VALUES ('3004', 'JT', '接头', '9999', 'RKRQ08-10', '原料', '有效', null, null, '93', 'ge');
INSERT INTO `t_product` VALUES ('3005', 'JT', '接头', '9999', 'RKBJ20-3', '原料', '有效', null, null, '93', 'ge');
INSERT INTO `t_product` VALUES ('3006', 'JT', '接头', '9999', 'LT08-1', '原料', '有效', null, null, '93', 'ge');
INSERT INTO `t_product` VALUES ('3007', 'JT', '接头', '9999', 'LT08-2', '原料', '有效', null, null, '93', 'ge');
INSERT INTO `t_product` VALUES ('3008', 'LM', '螺母', '9999', 'RKLM12-1A', '原料', '有效', null, null, '17', 'ge');
INSERT INTO `t_product` VALUES ('3009', 'LM', '螺母', '9999', 'RKLM12-2A', '原料', '有效', null, null, '17', 'ge');
INSERT INTO `t_product` VALUES ('3010', 'LM', '螺母', '9999', 'RKLM12-1', '原料', '有效', null, null, '17', 'ge');
INSERT INTO `t_product` VALUES ('3011', 'LM', '螺母', '9999', 'RKLM12-2', '原料', '有效', null, null, '17', 'ge');
INSERT INTO `t_product` VALUES ('3012', 'LM', '螺母', '9999', 'RKLM12-3', '原料', '有效', null, null, '17', 'ge');
INSERT INTO `t_product` VALUES ('3013', 'LM', '螺母', '9999', 'BKLM12-1', '原料', '有效', null, null, '17', 'ge');
INSERT INTO `t_product` VALUES ('3014', 'LM', '螺母', '9999', 'BKLM20-2', '原料', '有效', null, null, '17', 'ge');
INSERT INTO `t_product` VALUES ('3015', 'GT', '钢套', '9999', 'RKGT08-1', '原料', '有效', null, null, '97', 'ge');
INSERT INTO `t_product` VALUES ('3016', 'GT', '钢套', '9999', 'RKGT08-2', '原料', '有效', null, null, '97', 'ge');
INSERT INTO `t_product` VALUES ('3017', 'GT', '钢套', '9999', 'RKGT08-3', '原料', '有效', null, null, '97', 'ge');
INSERT INTO `t_product` VALUES ('3018', 'GT', '钢套', '9999', 'RKGT08-4', '原料', '有效', '', '', '97', 'ge');
INSERT INTO `t_product` VALUES ('3019', 'SLJ', '塑料件', '9999', 'RKBJ15-2', '原料', '有效', null, null, '8', 'ge');
INSERT INTO `t_product` VALUES ('3020', 'SLJ', '塑料件', '9999', 'SL15-BG', '原料', '有效', null, null, '8', 'ge');
INSERT INTO `t_product` VALUES ('3021', 'SLJ', '塑料件', '9999', 'SL15-ST', '原料', '有效', null, null, '8', 'ge');
INSERT INTO `t_product` VALUES ('3022', 'SLJ', '塑料件', '9999', 'SL15-WJZ', '原料', '有效', null, null, '8', 'ge');
INSERT INTO `t_product` VALUES ('3023', 'SLJ', '塑料件', '9999', 'SL15-NJZ', '原料', '有效', null, null, '8', 'ge');
INSERT INTO `t_product` VALUES ('3024', 'SLJ', '塑料件', '9999', 'SL15-WWZ', '原料', '有效', null, null, '8', 'ge');
INSERT INTO `t_product` VALUES ('3025', 'KH', '卡环', '9999', 'RKDP08-1', '原料', '有效', null, null, '8', 'ge');
INSERT INTO `t_product` VALUES ('3026', 'QBQ', '敲波器', '9999', 'QBQ12', '原料', '有效', null, null, '98', 'ge');
INSERT INTO `t_product` VALUES ('3027', 'QBQ', '敲波器', '9999', 'QBQ13', '原料', '有效', null, null, '98', 'ge');
INSERT INTO `t_product` VALUES ('3028', 'QBQ', '敲波器', '9999', 'QBQ15', '原料', '有效', null, null, '98', 'ge');
INSERT INTO `t_product` VALUES ('3029', 'QBQ', '敲波器', '9999', 'QBQ18', '原料', '有效', null, null, '98', 'ge');
INSERT INTO `t_product` VALUES ('3030', 'FM', '阀门', '9999', 'MDF15-1', '原料', '有效', null, null, '10', 'ge');
INSERT INTO `t_product` VALUES ('3031', 'FM', '阀门', '9999', 'MDF15-2', '原料', '有效', null, null, '10', 'ge');
INSERT INTO `t_product` VALUES ('3032', 'FM', '阀门', '9999', 'MDF15-4A', '原料', '有效', null, null, '10', 'ge');
INSERT INTO `t_product` VALUES ('3033', 'FM', '阀门', '9999', 'MDF15-3', '原料', '有效', null, null, '10', 'ge');
INSERT INTO `t_product` VALUES ('3034', 'FM', '阀门', '9999', 'MDF15-4', '原料', '有效', null, null, '10', 'ge');
INSERT INTO `t_product` VALUES ('3035', 'FM', '阀门', '9999', 'YJMDF15-3', '原料', '有效', null, null, '10', 'ge');
INSERT INTO `t_product` VALUES ('3036', 'FM', '阀门', '9999', 'MDF15-6', '原料', '有效', null, null, '10', 'ge');
INSERT INTO `t_product` VALUES ('3037', 'FM', '阀门', '9999', 'MDF15-7', '原料', '有效', null, null, '10', 'ge');
INSERT INTO `t_product` VALUES ('3038', 'FM', '阀门', '9999', 'MDF15-9', '原料', '有效', '', '', '10', 'ge');
INSERT INTO `t_product` VALUES ('3043', 'BCP', '波纹管', '99999', 'GQ15', '半成品', '有效', '', null, null, 'kg');
INSERT INTO `t_product` VALUES ('3044', 'BCP', '波纹管', '99999', 'GA15', '半成品', '有效', '', null, null, 'kg');
INSERT INTO `t_product` VALUES ('3046', 'BCP', '波纹管', '99999', 'GQ18', '半成品', '有效', '', null, null, 'kg');
INSERT INTO `t_product` VALUES ('3048', 'GD', '钢带', '99999', '0.17×38', '原料', '有效', '', 'GD', '4', 'kg');
INSERT INTO `t_product` VALUES ('3049', 'GD', '钢带', '99999', '0.24×49.5', '原料', '有效', '', 'GD', '4', 'kg');
INSERT INTO `t_product` VALUES ('3050', 'GD', '钢带', '99999', '0.2×34.5', '原料', '有效', '', 'GD', '4', 'kg');
INSERT INTO `t_product` VALUES ('3051', 'GD', '钢带', '99999', '0.3×35.5', '原料', '有效', '', 'GD', '4', 'kg');
INSERT INTO `t_product` VALUES ('3052', 'GD', '钢带', '99999', '0.3×42', '原料', '有效', '', 'GD', '4', 'kg');
INSERT INTO `t_product` VALUES ('3053', 'GD', '钢带', '99999', '0.3×51.9', '原料', '有效', '', 'GD', '4', 'kg');
INSERT INTO `t_product` VALUES ('3054', 'GD', '钢带', '99999', '0.24×65', '原料', '有效', '', 'GD', '4', 'kg');
INSERT INTO `t_product` VALUES ('3055', 'GD', '钢带', '99999', '0.21×56', '原料', '有效', '', 'GD', '4', 'kg');
INSERT INTO `t_product` VALUES ('3056', 'GD', '钢带', '99999', '0.19×46.6', '原料', '有效', '', 'GD', '4', 'kg');
INSERT INTO `t_product` VALUES ('3058', 'GD', '钢带', '99999', '0.2×40', '原料', '有效', '', 'GD', '4', 'kg');
INSERT INTO `t_product` VALUES ('3059', 'GD', '钢带', '99999', '0.22×59.2', '原料', '有效', '', 'GD', '4', 'kg');
INSERT INTO `t_product` VALUES ('3067', 'BCP', '透明包塑管', '99999', 'BS-01', '半成品', '有效', '', null, null, 'kg');
INSERT INTO `t_product` VALUES ('3068', 'BCP', '硬工程黄包塑管', '99999', 'BS-02', '半成品', '有效', '', null, null, 'kg');
INSERT INTO `t_product` VALUES ('3069', 'BCP', '软工程黄包塑管', '99999', 'BS-03', '半成品', '有效', '', null, null, 'kg');
INSERT INTO `t_product` VALUES ('3070', 'BCP', '明黄包塑管', '99999', 'BS-04', '半成品', '有效', '', null, null, 'kg');
INSERT INTO `t_product` VALUES ('3071', 'BCP', '波纹管', '99999', 'GA08', '半成品', '有效', '', null, null, 'kg');
INSERT INTO `t_product` VALUES ('3072', 'BCP', '波纹管', '99999', 'GA10', '半成品', '有效', '', null, null, 'kg');
INSERT INTO `t_product` VALUES ('3073', 'BCP', '波纹管', '99999', 'GA12', '半成品', '有效', '', null, null, 'kg');
INSERT INTO `t_product` VALUES ('3074', 'BCP', '波纹管', '99999', 'GQ13', '半成品', '有效', '', null, null, 'kg');
INSERT INTO `t_product` VALUES ('3075', 'BCP', '波纹管', '99999', 'GQ12', '半成品', '有效', '', null, null, 'kg');
INSERT INTO `t_product` VALUES ('3076', 'BCP', '波纹管', '99999', 'GQ15B', '半成品', '有效', '', null, null, 'kg');
INSERT INTO `t_product` VALUES ('3077', 'BCP', '波纹管', '99999', 'GA10-1', '半成品', '有效', '', null, null, 'kg');
INSERT INTO `t_product` VALUES ('3080', 'DG', '4分堵盖', '99999', 'G1/2', '原料', '有效', '', '', '4', 'ge');

-- ----------------------------
-- Table structure for `t_prod_inst`
-- ----------------------------
DROP TABLE IF EXISTS `t_prod_inst`;
CREATE TABLE `t_prod_inst` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `prod_id` bigint(20) NOT NULL,
  `prod_num_stock` decimal(18,3) unsigned zerofill DEFAULT '000000000000000.000' COMMENT '库存量',
  `pre_outstock` decimal(18,3) unsigned DEFAULT '0.000' COMMENT '预出库',
  `product_length` int(10) unsigned DEFAULT '0' COMMENT '长度',
  `add_date` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `remark` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '备注',
  `product_codes` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `b_covered` varchar(10) COLLATE utf8_unicode_ci DEFAULT '-1' COMMENT '产品被复层方式',
  `prop_code` varchar(50) COLLATE utf8_unicode_ci DEFAULT '-1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `p_len_code_bc` (`prod_id`,`prop_code`,`product_length`,`b_covered`)
) ENGINE=InnoDB AUTO_INCREMENT=439 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='产品实例表';

-- ----------------------------
-- Records of t_prod_inst
-- ----------------------------
INSERT INTO `t_prod_inst` VALUES ('9', '2680', '000000000000000.000', '0.000', '0', '2017-12-05 17:55:10', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('10', '2681', '000000000000000.000', '0.000', '0', '2017-12-05 17:55:10', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('11', '2682', '000000000000000.000', '0.000', '0', '2017-12-05 17:55:10', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('12', '2683', '000000000000000.000', '0.000', '0', '2017-12-05 17:55:10', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('13', '2684', '000000000000000.000', '0.000', '0', '2017-12-05 17:55:10', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('14', '2685', '000000000000000.000', '0.000', '0', '2017-12-05 17:55:10', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('15', '2686', '000000000000000.000', '0.000', '0', '2017-12-05 17:55:10', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('17', '2688', '000000000000000.000', '0.000', '0', '2017-12-05 17:55:10', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('18', '2689', '000000000000000.000', '0.000', '0', '2017-12-05 17:55:10', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('19', '2690', '000000000000000.000', '0.000', '0', '2017-12-05 17:55:10', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('20', '2691', '000000000000000.000', '0.000', '0', '2017-12-05 17:55:10', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('21', '2692', '000000000000000.000', '0.000', '0', '2017-12-05 17:55:10', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('22', '2693', '000000000000000.000', '0.000', '0', '2017-12-05 17:55:10', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('23', '2694', '000000000000000.000', '0.000', '0', '2017-12-05 17:55:10', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('24', '2695', '000000000000000.000', '0.000', '0', '2017-12-05 17:55:10', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('25', '2696', '000000000000000.000', '0.000', '0', '2017-12-05 17:55:10', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('26', '2697', '000000000000000.000', '0.000', '0', '2017-12-05 17:55:10', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('27', '2698', '000000000000000.000', '0.000', '0', '2017-12-05 17:55:10', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('28', '2699', '000000000000000.000', '0.000', '0', '2017-12-05 17:55:10', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('29', '2700', '000000000000000.000', '0.000', '0', '2017-12-05 17:55:10', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('30', '2701', '000000000000000.000', '0.000', '0', '2017-12-05 17:55:10', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('31', '2702', '000000000000000.000', '0.000', '0', '2017-12-05 17:55:10', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('32', '2703', '000000000000000.000', '0.000', '0', '2017-12-05 17:55:10', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('33', '2704', '000000000000000.000', '0.000', '0', '2017-12-05 17:55:10', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('34', '2705', '000000000000000.000', '0.000', '0', '2017-12-05 17:55:10', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('35', '2706', '000000000000000.000', '0.000', '0', '2017-12-05 17:55:10', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('36', '2707', '000000000000000.000', '0.000', '0', '2017-12-05 17:55:10', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('37', '2708', '000000000000000.000', '0.000', '0', '2017-12-05 17:55:10', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('38', '2709', '000000000000000.000', '0.000', '0', '2017-12-05 17:55:10', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('39', '2710', '000000000000000.000', '0.000', '0', '2017-12-05 17:55:10', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('40', '2711', '000000000000000.000', '0.000', '0', '2017-12-05 17:55:10', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('41', '2712', '000000000000000.000', '0.000', '0', '2017-12-05 17:55:10', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('42', '2713', '000000000000000.000', '0.000', '0', '2017-12-05 17:55:10', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('43', '2714', '000000000000000.000', '0.000', '0', '2017-12-05 17:55:10', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('44', '2715', '000000000000000.000', '0.000', '0', '2017-12-05 17:55:10', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('45', '2716', '000000000000000.000', '0.000', '0', '2017-12-05 17:55:10', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('46', '2717', '000000000000000.000', '0.000', '0', '2017-12-05 17:55:10', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('47', '2718', '000000000000000.000', '0.000', '0', '2017-12-05 17:55:10', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('48', '2719', '000000000000000.000', '0.000', '0', '2017-12-05 17:55:10', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('49', '2720', '000000000000000.000', '0.000', '0', '2017-12-05 17:55:10', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('50', '2721', '000000000000000.000', '0.000', '0', '2017-12-05 17:55:10', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('51', '2722', '000000000000000.000', '0.000', '0', '2017-12-05 17:55:10', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('52', '2723', '000000000000000.000', '0.000', '0', '2017-12-05 17:55:10', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('53', '2724', '000000000000000.000', '0.000', '0', '2017-12-05 17:55:10', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('54', '2725', '000000000000000.000', '0.000', '0', '2017-12-05 17:55:10', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('55', '2726', '000000000000000.000', '0.000', '0', '2017-12-05 17:55:10', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('56', '2727', '000000000000000.000', '0.000', '0', '2017-12-05 17:55:10', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('57', '2728', '000000000000000.000', '0.000', '0', '2017-12-05 17:55:10', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('58', '2729', '000000000000000.000', '0.000', '0', '2017-12-05 17:55:10', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('59', '2730', '000000000000000.000', '0.000', '0', '2017-12-05 17:55:10', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('60', '2731', '000000000000000.000', '0.000', '0', '2017-12-05 17:55:10', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('61', '2732', '000000000000000.000', '0.000', '0', '2017-12-05 17:55:10', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('62', '2733', '000000000000000.000', '0.000', '0', '2017-12-05 17:55:10', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('63', '2734', '000000000000000.000', '0.000', '0', '2017-12-05 17:55:10', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('64', '2735', '000000000000000.000', '0.000', '0', '2017-12-05 17:55:10', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('65', '2736', '000000000000000.000', '0.000', '0', '2017-12-05 17:55:10', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('66', '2737', '000000000000000.000', '0.000', '0', '2017-12-05 17:55:10', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('67', '2738', '000000000000000.000', '0.000', '0', '2017-12-05 17:55:10', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('68', '2739', '000000000000000.000', '0.000', '0', '2017-12-05 17:55:10', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('69', '2740', '000000000000000.000', '0.000', '0', '2017-12-05 17:55:10', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('70', '2741', '000000000000000.000', '0.000', '0', '2017-12-05 17:55:10', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('71', '2742', '000000000000000.000', '0.000', '0', '2017-12-05 17:55:10', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('72', '2743', '000000000000000.000', '0.000', '0', '2017-12-05 17:55:10', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('73', '2744', '000000000000000.000', '0.000', '0', '2017-12-05 17:55:10', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('74', '2745', '000000000000000.000', '0.000', '0', '2017-12-05 17:55:10', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('75', '2746', '000000000000000.000', '0.000', '0', '2017-12-05 17:55:10', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('76', '2747', '000000000000000.000', '0.000', '0', '2017-12-05 17:55:10', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('81', '2752', '000000000000000.000', '0.000', '0', '2017-12-05 17:55:10', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('82', '2753', '000000000000000.000', '0.000', '0', '2017-12-05 17:55:10', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('83', '2754', '000000000000000.000', '0.000', '0', '2017-12-05 17:55:10', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('84', '2755', '000000000000000.000', '0.000', '0', '2017-12-05 17:55:10', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('85', '2756', '000000000000000.000', '0.000', '0', '2017-12-05 17:55:10', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('86', '2757', '000000000000000.000', '0.000', '0', '2017-12-05 17:55:10', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('87', '2758', '000000000000000.000', '0.000', '0', '2017-12-05 17:55:10', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('88', '2759', '000000000000000.000', '0.000', '0', '2017-12-05 17:55:10', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('89', '2760', '000000000000000.000', '0.000', '0', '2017-12-05 17:55:10', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('90', '2761', '000000000000000.000', '0.000', '0', '2017-12-05 17:55:10', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('91', '2762', '000000000000000.000', '0.000', '0', '2017-12-05 17:55:10', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('92', '2763', '000000000000000.000', '0.000', '0', '2017-12-05 17:55:10', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('94', '2765', '000000000000000.000', '0.000', '0', '2017-12-05 17:55:10', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('95', '2766', '000000000000000.000', '0.000', '0', '2017-12-05 17:55:10', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('96', '2767', '000000000000000.000', '0.000', '0', '2017-12-05 17:55:10', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('98', '2769', '000000000000000.000', '0.000', '0', '2017-12-05 17:55:10', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('99', '2770', '000000000000000.000', '0.000', '0', '2017-12-05 17:55:10', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('100', '2771', '000000000000000.000', '0.000', '0', '2017-12-05 17:55:10', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('101', '2772', '000000000000000.000', '0.000', '0', '2017-12-05 17:55:10', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('102', '2773', '000000000000000.000', '0.000', '0', '2017-12-05 17:55:10', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('103', '2774', '000000000000000.000', '0.000', '0', '2017-12-05 17:55:10', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('104', '2775', '000000000000000.000', '0.000', '0', '2017-12-05 17:55:10', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('105', '2776', '000000000000000.000', '0.000', '0', '2017-12-05 17:55:10', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('106', '2777', '000000000000000.000', '0.000', '0', '2017-12-05 17:55:10', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('107', '2778', '000000000000000.000', '0.000', '0', '2017-12-05 17:55:10', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('109', '2780', '000000000000000.000', '0.000', '0', '2017-12-05 17:55:10', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('110', '2781', '000000000000000.000', '0.000', '0', '2017-12-05 17:55:10', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('111', '2782', '000000000000000.000', '0.000', '0', '2017-12-05 17:55:10', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('113', '2784', '000000000000000.000', '0.000', '0', '2017-12-05 17:55:10', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('115', '2786', '000000000000000.000', '0.000', '0', '2017-12-05 17:55:10', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('116', '2787', '000000000000000.000', '0.000', '0', '2017-12-05 17:55:10', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('117', '2788', '000000000000000.000', '0.000', '0', '2017-12-05 17:55:10', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('118', '2789', '000000000000000.000', '0.000', '0', '2017-12-05 17:55:10', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('119', '2790', '000000000000000.000', '0.000', '0', '2017-12-05 17:55:10', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('120', '2791', '000000000000000.000', '0.000', '0', '2017-12-05 17:55:10', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('122', '2793', '000000000000000.000', '0.000', '0', '2017-12-05 17:55:10', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('123', '2794', '000000000000000.000', '0.000', '0', '2017-12-05 17:55:10', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('124', '2795', '000000000000000.000', '0.000', '0', '2017-12-05 17:55:10', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('125', '2796', '000000000000000.000', '0.000', '0', '2017-12-05 17:55:10', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('126', '2797', '000000000000000.000', '0.000', '0', '2017-12-05 17:55:10', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('127', '2798', '000000000000000.000', '0.000', '0', '2017-12-05 17:55:10', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('128', '2799', '000000000000000.000', '0.000', '0', '2017-12-05 17:55:10', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('129', '2800', '000000000000000.000', '0.000', '0', '2017-12-05 17:55:10', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('130', '2801', '000000000000000.000', '0.000', '0', '2017-12-05 17:55:10', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('131', '2802', '000000000000000.000', '0.000', '0', '2017-12-05 17:55:10', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('132', '2803', '000000000000000.000', '0.000', '0', '2017-12-05 17:55:10', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('133', '2804', '000000000000000.000', '0.000', '0', '2017-12-05 17:55:10', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('134', '2805', '000000000000000.000', '0.000', '0', '2017-12-05 17:55:10', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('135', '2806', '000000000000000.000', '0.000', '0', '2017-12-05 17:55:10', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('136', '2807', '000000000000000.000', '0.000', '0', '2017-12-05 17:55:10', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('137', '2808', '000000000000000.000', '0.000', '0', '2017-12-05 17:55:10', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('138', '2809', '000000000000000.000', '0.000', '0', '2017-12-05 17:55:10', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('139', '2810', '000000000000000.000', '0.000', '0', '2017-12-05 17:55:10', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('140', '2811', '000000000000000.000', '0.000', '0', '2017-12-05 17:55:10', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('141', '2812', '000000000000000.000', '0.000', '0', '2017-12-05 17:55:10', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('142', '2813', '000000000000000.000', '0.000', '0', '2017-12-05 17:55:10', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('143', '2814', '000000000000000.000', '0.000', '0', '2017-12-05 17:55:10', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('144', '2815', '000000000000000.000', '0.000', '0', '2017-12-05 17:55:10', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('145', '2816', '000000000000000.000', '0.000', '0', '2017-12-05 17:55:10', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('146', '2817', '000000000000000.000', '0.000', '0', '2017-12-05 17:55:10', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('147', '2818', '000000000000800.000', '0.000', '0', '2017-12-05 17:55:10', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('148', '2819', '000000000000000.000', '0.000', '0', '2017-12-05 17:55:10', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('149', '2820', '000000000000000.000', '0.000', '0', '2017-12-05 17:55:10', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('150', '2821', '000000000000000.000', '0.000', '0', '2017-12-05 17:55:10', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('151', '2822', '000000000000000.000', '0.000', '0', '2017-12-05 17:55:10', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('152', '2823', '000000000000000.000', '0.000', '0', '2017-12-05 17:55:10', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('153', '2824', '000000000000000.000', '0.000', '0', '2017-12-05 17:55:10', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('154', '2825', '000000000000000.000', '0.000', '0', '2017-12-05 17:55:10', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('155', '2826', '000000000000000.000', '0.000', '0', '2017-12-05 17:55:10', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('156', '2827', '000000000000000.000', '0.000', '0', '2017-12-05 17:55:10', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('157', '2828', '000000000000000.000', '0.000', '0', '2017-12-05 17:55:10', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('158', '2829', '000000000000000.000', '0.000', '0', '2017-12-05 17:55:10', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('159', '2830', '000000000000000.000', '0.000', '0', '2017-12-05 17:55:10', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('160', '2831', '000000000000000.000', '0.000', '0', '2017-12-05 17:55:10', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('161', '2832', '000000000000000.000', '0.000', '0', '2017-12-05 17:55:10', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('162', '2833', '000000000000000.000', '0.000', '0', '2017-12-05 17:55:10', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('163', '2834', '000000000000000.000', '0.000', '0', '2017-12-05 17:55:10', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('164', '2835', '000000000000000.000', '0.000', '0', '2017-12-05 17:55:10', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('165', '2836', '000000000000000.000', '0.000', '0', '2017-12-05 17:55:10', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('166', '2837', '000000000000000.000', '0.000', '0', '2017-12-05 17:55:10', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('167', '2838', '000000000000000.000', '0.000', '0', '2017-12-05 17:55:10', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('168', '2839', '000000000000000.000', '0.000', '0', '2017-12-05 17:55:10', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('169', '2840', '000000000000000.000', '0.000', '0', '2017-12-05 17:55:10', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('170', '2841', '000000000000000.000', '0.000', '0', '2017-12-05 17:55:10', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('171', '2842', '000000000000000.000', '0.000', '0', '2017-12-05 17:55:10', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('172', '2843', '000000000000000.000', '0.000', '0', '2017-12-05 17:55:10', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('173', '2844', '000000000000000.000', '0.000', '0', '2017-12-05 17:55:10', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('174', '2845', '000000000000000.000', '0.000', '0', '2017-12-05 17:55:10', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('175', '2846', '000000000000000.000', '0.000', '0', '2017-12-05 17:55:10', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('176', '2847', '000000000000000.000', '0.000', '0', '2017-12-05 17:55:10', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('177', '2848', '000000000000000.000', '0.000', '0', '2017-12-05 17:55:10', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('178', '2849', '000000000000000.000', '0.000', '0', '2017-12-05 17:55:10', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('179', '2850', '000000000000000.000', '0.000', '0', '2017-12-05 17:55:10', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('180', '2851', '000000000000000.000', '0.000', '0', '2017-12-05 17:55:10', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('181', '2852', '000000000000000.000', '0.000', '0', '2017-12-05 17:55:10', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('182', '2853', '000000000000000.000', '0.000', '0', '2017-12-05 17:55:10', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('183', '2854', '000000000000000.000', '0.000', '0', '2017-12-05 17:55:10', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('184', '2855', '000000000000000.000', '0.000', '0', '2017-12-05 17:55:10', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('185', '2856', '000000000000000.000', '0.000', '0', '2017-12-05 17:55:10', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('186', '2857', '000000000000000.000', '0.000', '0', '2017-12-05 17:55:10', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('187', '2858', '000000000000000.000', '0.000', '0', '2017-12-05 17:55:10', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('188', '2859', '000000000000000.000', '0.000', '0', '2017-12-05 17:55:10', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('189', '2860', '000000000000000.000', '0.000', '0', '2017-12-05 17:55:10', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('190', '2861', '000000000000000.000', '0.000', '0', '2017-12-05 17:55:10', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('191', '2862', '000000000000000.000', '0.000', '0', '2017-12-05 17:55:10', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('192', '2863', '000000000000000.000', '0.000', '0', '2017-12-05 17:55:10', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('193', '2864', '000000000000000.000', '0.000', '0', '2017-12-05 17:55:10', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('194', '2865', '000000000000000.000', '0.000', '0', '2017-12-05 17:55:10', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('195', '2866', '000000000000000.000', '0.000', '0', '2017-12-05 17:55:10', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('196', '2867', '000000000000000.000', '0.000', '0', '2017-12-05 17:55:10', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('197', '2868', '000000000000000.000', '0.000', '0', '2017-12-05 17:55:10', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('198', '2869', '000000000000000.000', '0.000', '0', '2017-12-05 17:55:10', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('199', '2870', '000000000000000.000', '0.000', '0', '2017-12-05 17:55:10', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('200', '2871', '000000000000000.000', '0.000', '0', '2017-12-05 17:55:10', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('201', '2872', '000000000000000.000', '0.000', '0', '2017-12-05 17:55:10', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('202', '2873', '000000000000000.000', '0.000', '0', '2017-12-05 17:55:10', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('203', '2874', '000000000000000.000', '0.000', '0', '2017-12-05 17:55:10', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('204', '2875', '000000000000000.000', '0.000', '0', '2017-12-05 17:55:10', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('205', '2876', '000000000000000.000', '0.000', '0', '2017-12-05 17:55:10', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('206', '2877', '000000000000000.000', '0.000', '0', '2017-12-05 17:55:10', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('207', '2878', '000000000000000.000', '0.000', '0', '2017-12-05 17:55:10', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('208', '2879', '000000000000000.000', '0.000', '0', '2017-12-05 17:55:10', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('209', '2880', '000000000000000.000', '0.000', '0', '2017-12-05 17:55:10', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('210', '2881', '000000000000000.000', '0.000', '0', '2017-12-05 17:55:10', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('211', '2882', '000000000000000.000', '0.000', '0', '2017-12-05 17:55:10', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('212', '2883', '000000000000000.000', '0.000', '0', '2017-12-05 17:55:10', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('213', '2884', '000000000000000.000', '0.000', '0', '2017-12-05 17:55:10', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('214', '2885', '000000000000000.000', '0.000', '0', '2017-12-05 17:55:10', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('215', '2886', '000000000000000.000', '0.000', '0', '2017-12-05 17:55:10', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('216', '2887', '000000000000000.000', '0.000', '0', '2017-12-05 17:55:10', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('217', '2888', '000000000000000.000', '0.000', '0', '2017-12-05 17:55:10', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('218', '2889', '000000000000000.000', '0.000', '0', '2017-12-05 17:55:10', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('219', '2890', '000000000000000.000', '0.000', '0', '2017-12-05 17:55:10', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('220', '2891', '000000000000000.000', '0.000', '0', '2017-12-05 17:55:10', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('221', '2892', '000000000000000.000', '0.000', '0', '2017-12-05 17:55:10', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('222', '2893', '000000000000000.000', '0.000', '0', '2017-12-05 17:55:10', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('223', '2894', '000000000000000.000', '0.000', '0', '2017-12-05 17:55:10', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('224', '2895', '000000000000000.000', '0.000', '0', '2017-12-05 17:55:10', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('225', '2896', '000000000000000.000', '0.000', '0', '2017-12-05 17:55:10', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('226', '2897', '000000000000000.000', '0.000', '0', '2017-12-05 17:55:10', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('227', '2898', '000000000000000.000', '0.000', '0', '2017-12-05 17:55:10', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('228', '2899', '000000000000000.000', '0.000', '0', '2017-12-05 17:55:10', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('229', '2900', '000000000000000.000', '0.000', '0', '2017-12-05 17:55:10', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('230', '2901', '000000000000000.000', '0.000', '0', '2017-12-05 17:55:10', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('231', '2902', '000000000000000.000', '0.000', '0', '2017-12-05 17:55:10', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('232', '2903', '000000000000000.000', '0.000', '0', '2017-12-05 17:55:10', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('233', '2904', '000000000000000.000', '0.000', '0', '2017-12-05 17:55:10', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('234', '2905', '000000000000000.000', '0.000', '0', '2017-12-05 17:55:10', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('235', '2906', '000000000000000.000', '0.000', '0', '2017-12-05 17:55:10', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('236', '2907', '000000000000000.000', '0.000', '0', '2017-12-05 17:55:10', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('237', '2908', '000000000000000.000', '0.000', '0', '2017-12-05 17:55:10', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('238', '2909', '000000000000000.000', '0.000', '0', '2017-12-05 17:55:10', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('239', '2910', '000000000000000.000', '0.000', '0', '2017-12-05 17:55:10', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('240', '2911', '000000000000000.000', '0.000', '0', '2017-12-05 17:55:10', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('241', '2912', '000000000000000.000', '0.000', '0', '2017-12-05 17:55:10', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('242', '2913', '000000000000000.000', '0.000', '0', '2017-12-05 17:55:10', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('243', '2914', '000000000000000.000', '0.000', '0', '2017-12-05 17:55:10', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('244', '2915', '000000000000000.000', '0.000', '0', '2017-12-05 17:55:10', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('245', '2916', '000000000000000.000', '0.000', '0', '2017-12-05 17:55:10', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('246', '2917', '000000000000000.000', '0.000', '0', '2017-12-05 17:55:10', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('247', '2918', '000000000000000.000', '0.000', '0', '2017-12-05 17:55:10', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('248', '2919', '000000000000000.000', '0.000', '0', '2017-12-05 17:55:10', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('249', '2920', '000000000000000.000', '0.000', '0', '2017-12-05 17:55:10', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('250', '2921', '000000000000000.000', '0.000', '0', '2017-12-05 17:55:10', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('251', '2922', '000000000000000.000', '0.000', '0', '2017-12-05 17:55:10', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('252', '2923', '000000000000000.000', '0.000', '0', '2017-12-05 17:55:10', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('253', '2924', '000000000000000.000', '0.000', '0', '2017-12-05 17:55:10', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('254', '2925', '000000000000000.000', '0.000', '0', '2017-12-05 17:55:10', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('255', '2926', '000000000000000.000', '0.000', '0', '2017-12-05 17:55:10', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('256', '2927', '000000000000000.000', '0.000', '0', '2017-12-05 17:55:10', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('257', '2928', '000000000000000.000', '0.000', '0', '2017-12-05 17:55:10', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('258', '2929', '000000000000000.000', '0.000', '0', '2017-12-05 17:55:10', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('259', '2930', '000000000000000.000', '0.000', '0', '2017-12-05 17:55:10', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('260', '2931', '000000000000000.000', '0.000', '0', '2017-12-05 17:55:10', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('261', '2932', '000000000000000.000', '0.000', '0', '2017-12-05 17:55:10', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('262', '2933', '000000000000000.000', '0.000', '0', '2017-12-05 17:55:10', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('263', '2934', '000000000000000.000', '0.000', '0', '2017-12-05 17:55:10', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('264', '2935', '000000000000000.000', '0.000', '0', '2017-12-05 17:55:10', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('265', '2936', '000000000000000.000', '0.000', '0', '2017-12-05 17:55:10', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('266', '2937', '000000000000000.000', '0.000', '0', '2017-12-05 17:55:10', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('267', '2938', '000000000000000.000', '0.000', '0', '2017-12-05 17:55:10', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('268', '2939', '000000000000000.000', '0.000', '0', '2017-12-05 17:55:10', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('269', '2940', '000000000000000.000', '0.000', '0', '2017-12-05 17:55:10', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('270', '2941', '000000000000000.000', '0.000', '0', '2017-12-05 17:55:10', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('271', '2942', '000000000000000.000', '0.000', '0', '2017-12-05 17:55:10', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('272', '2943', '000000000000000.000', '0.000', '0', '2017-12-05 17:55:10', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('273', '2944', '000000000000000.000', '0.000', '0', '2017-12-05 17:55:10', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('274', '2945', '000000000000000.000', '0.000', '0', '2017-12-05 17:55:10', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('275', '2946', '000000000000000.000', '0.000', '0', '2017-12-05 17:55:10', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('276', '2947', '000000000000000.000', '0.000', '0', '2017-12-05 17:55:10', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('277', '2948', '000000000000000.000', '0.000', '0', '2017-12-05 17:55:10', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('278', '2949', '000000000000000.000', '0.000', '0', '2017-12-05 17:55:10', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('279', '2950', '000000000000000.000', '0.000', '0', '2017-12-05 17:55:10', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('280', '2951', '000000000000000.000', '0.000', '0', '2017-12-05 17:55:10', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('281', '2952', '000000000000000.000', '0.000', '0', '2017-12-05 17:55:10', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('282', '2953', '000000000000000.000', '0.000', '0', '2017-12-05 17:55:10', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('283', '2954', '000000000000000.000', '0.000', '0', '2017-12-05 17:55:10', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('284', '2955', '000000000000000.000', '0.000', '0', '2017-12-05 17:55:10', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('285', '2956', '000000000000000.000', '0.000', '0', '2017-12-05 17:55:10', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('286', '2957', '000000000000000.000', '0.000', '0', '2017-12-05 17:55:10', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('287', '2958', '000000000000000.000', '0.000', '0', '2017-12-05 17:55:10', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('288', '2959', '000000000000000.000', '0.000', '0', '2017-12-05 17:55:10', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('289', '2960', '000000000000000.000', '0.000', '0', '2017-12-05 17:55:10', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('290', '2961', '000000000000000.000', '0.000', '0', '2017-12-05 17:55:10', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('291', '2962', '000000000000000.000', '0.000', '0', '2017-12-05 17:55:10', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('292', '2963', '000000000000000.000', '0.000', '0', '2017-12-05 17:55:10', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('293', '2964', '000000000000000.000', '0.000', '0', '2017-12-05 17:55:10', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('294', '2965', '000000000000000.000', '0.000', '0', '2017-12-05 17:55:10', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('295', '2966', '000000000000000.000', '0.000', '0', '2017-12-05 17:55:10', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('296', '2967', '000000000000000.000', '0.000', '0', '2017-12-05 17:55:10', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('297', '2968', '000000000000000.000', '0.000', '0', '2017-12-05 17:55:10', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('298', '2969', '000000000000000.000', '0.000', '0', '2017-12-05 17:55:10', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('299', '2970', '000000000000000.000', '0.000', '0', '2017-12-05 17:55:10', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('300', '2971', '000000000000000.000', '0.000', '0', '2017-12-05 17:55:10', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('301', '2972', '000000000000000.000', '0.000', '0', '2017-12-05 17:55:10', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('302', '2973', '000000000000000.000', '0.000', '0', '2017-12-05 17:55:10', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('303', '2974', '000000000000000.000', '0.000', '0', '2017-12-05 17:55:10', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('304', '2975', '000000000000000.000', '0.000', '0', '2017-12-05 17:55:10', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('305', '2976', '000000000000000.000', '0.000', '0', '2017-12-05 17:55:10', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('306', '2977', '000000000000000.000', '0.000', '0', '2017-12-05 17:55:10', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('307', '2978', '000000000000000.000', '0.000', '0', '2017-12-05 17:55:10', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('308', '2979', '000000000000000.000', '0.000', '0', '2017-12-05 17:55:10', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('309', '2980', '000000000000000.000', '0.000', '0', '2017-12-05 17:55:10', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('310', '2981', '000000000000000.000', '0.000', '0', '2017-12-05 17:55:10', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('311', '2982', '000000000000000.000', '0.000', '0', '2017-12-05 17:55:10', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('312', '2983', '000000000000000.000', '0.000', '0', '2017-12-05 17:55:10', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('313', '2984', '000000000000000.000', '0.000', '0', '2017-12-05 17:55:10', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('314', '2985', '000000000000000.000', '0.000', '0', '2017-12-05 17:55:10', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('315', '2986', '000000000000000.000', '0.000', '0', '2017-12-05 17:55:10', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('316', '2987', '000000000000000.000', '0.000', '0', '2017-12-05 17:55:10', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('317', '2988', '000000000000000.000', '0.000', '0', '2017-12-05 17:55:10', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('318', '2989', '000000000000000.000', '0.000', '0', '2017-12-05 17:55:10', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('319', '2990', '000000000000000.000', '0.000', '0', '2017-12-05 17:55:10', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('320', '2991', '000000000000000.000', '0.000', '0', '2017-12-05 17:55:10', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('321', '2992', '000000000000000.000', '0.000', '0', '2017-12-05 17:55:10', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('322', '2993', '000000000000000.000', '0.000', '0', '2017-12-05 17:55:10', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('323', '2994', '000000000000000.000', '0.000', '0', '2017-12-05 17:55:10', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('324', '2995', '000000000000000.000', '0.000', '0', '2017-12-05 17:55:10', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('325', '2996', '000000000000000.000', '0.000', '0', '2017-12-05 17:55:10', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('326', '2997', '000000000000000.000', '0.000', '0', '2017-12-05 17:55:10', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('327', '2998', '000000000000000.000', '0.000', '0', '2017-12-05 17:55:10', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('328', '2999', '000000000000000.000', '0.000', '0', '2017-12-05 17:55:10', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('329', '3000', '000000000000000.000', '0.000', '0', '2017-12-05 17:55:10', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('330', '3001', '000000000000000.000', '0.000', '0', '2017-12-05 17:55:10', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('331', '3002', '000000000000000.000', '0.000', '0', '2017-12-05 17:55:10', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('332', '3003', '000000000000000.000', '0.000', '0', '2017-12-05 17:55:10', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('333', '3004', '000000000000000.000', '0.000', '0', '2017-12-05 17:55:10', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('334', '3005', '000000000000000.000', '0.000', '0', '2017-12-05 17:55:10', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('335', '3006', '000000000000000.000', '0.000', '0', '2017-12-05 17:55:10', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('336', '3007', '000000000000000.000', '0.000', '0', '2017-12-05 17:55:10', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('337', '3008', '000000000000000.000', '0.000', '0', '2017-12-05 17:55:10', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('338', '3009', '000000000000000.000', '0.000', '0', '2017-12-05 17:55:10', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('339', '3010', '000000000000000.000', '0.000', '0', '2017-12-05 17:55:10', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('340', '3011', '000000000000000.000', '0.000', '0', '2017-12-05 17:55:10', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('341', '3012', '000000000000000.000', '0.000', '0', '2017-12-05 17:55:10', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('342', '3013', '000000000000000.000', '0.000', '0', '2017-12-05 17:55:10', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('343', '3014', '000000000000000.000', '0.000', '0', '2017-12-05 17:55:10', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('344', '3015', '000000000000000.000', '0.000', '0', '2017-12-05 17:55:10', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('345', '3016', '000000000000000.000', '0.000', '0', '2017-12-05 17:55:10', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('346', '3017', '000000000000000.000', '0.000', '0', '2017-12-05 17:55:10', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('347', '3018', '000000000000000.000', '0.000', '0', '2017-12-05 17:55:10', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('348', '3019', '000000000000000.000', '0.000', '0', '2017-12-05 17:55:10', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('349', '3020', '000000000000000.000', '0.000', '0', '2017-12-05 17:55:10', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('350', '3021', '000000000000000.000', '0.000', '0', '2017-12-05 17:55:10', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('351', '3022', '000000000000000.000', '0.000', '0', '2017-12-05 17:55:10', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('352', '3023', '000000000000000.000', '0.000', '0', '2017-12-05 17:55:10', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('353', '3024', '000000000000000.000', '0.000', '0', '2017-12-05 17:55:10', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('354', '3025', '000000000000000.000', '0.000', '0', '2017-12-05 17:55:10', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('355', '3026', '000000000000000.000', '0.000', '0', '2017-12-05 17:55:10', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('356', '3027', '000000000000000.000', '0.000', '0', '2017-12-05 17:55:10', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('357', '3028', '000000000000000.000', '0.000', '0', '2017-12-05 17:55:10', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('358', '3029', '000000000000000.000', '0.000', '0', '2017-12-05 17:55:10', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('359', '3030', '000000000000000.000', '0.000', '0', '2017-12-05 17:55:10', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('360', '3031', '000000000000000.000', '0.000', '0', '2017-12-05 17:55:10', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('361', '3032', '000000000000000.000', '0.000', '0', '2017-12-05 17:55:10', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('362', '3033', '000000000000000.000', '0.000', '0', '2017-12-05 17:55:10', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('363', '3034', '000000000000000.000', '0.000', '0', '2017-12-05 17:55:10', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('364', '3035', '000000000000000.000', '0.000', '0', '2017-12-05 17:55:10', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('365', '3036', '000000000000000.000', '0.000', '0', '2017-12-05 17:55:10', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('366', '3037', '000000000000000.000', '0.000', '0', '2017-12-05 17:55:10', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('367', '3038', '000000000000000.000', '0.000', '0', '2017-12-05 17:55:10', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('368', '2748', '000000000000000.000', '0.000', '150', '2017-12-07 09:13:47', null, null, 'XS', '-1');
INSERT INTO `t_prod_inst` VALUES ('369', '2748', '000000000000000.000', '0.000', '150', '2017-12-08 13:44:41', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('370', '2749', '000000000000000.000', '0.000', '150', '2017-12-08 14:39:18', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('371', '2750', '000000000000000.000', '0.000', '150', '2017-12-08 14:43:11', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('372', '2783', '000000000000000.000', '0.000', '150', '2017-12-08 15:01:56', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('373', '2768', '000000000000000.000', '0.000', '200', '2017-12-09 08:06:28', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('374', '2751', '000000000000000.000', '0.000', '100', '2017-12-09 08:31:28', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('375', '2764', '000000000000000.000', '0.000', '300', '2017-12-09 08:31:28', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('376', '2792', '000000000000000.000', '0.000', '130', '2017-12-09 08:36:45', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('377', '2751', '000000000000000.000', '0.000', '122', '2017-12-09 09:09:34', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('378', '2779', '000000000000000.000', '0.000', '222', '2017-12-09 09:09:34', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('385', '2748', '000000000000000.000', '0.000', '1000', '2017-12-12 09:50:37', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('386', '2749', '000000000000000.000', '0.000', '22', '2017-12-12 09:53:35', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('387', '2783', '000000000000000.000', '0.000', '300', '2017-12-12 10:45:58', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('388', '2785', '000000000000000.000', '0.000', '300', '2017-12-12 11:10:19', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('389', '2792', '000000000000000.000', '0.000', '100', '2017-12-13 11:41:11', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('390', '2783', '000000000000000.000', '0.000', '200', '2017-12-13 13:37:14', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('393', '3043', '000000000000000.000', '0.000', '0', '2017-12-13 13:59:55', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('394', '3044', '000000000000000.000', '0.000', '0', '2017-12-13 13:59:55', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('395', '3046', '000000000000000.000', '0.000', '0', '2017-12-13 13:59:55', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('396', '3048', '000000000000000.000', '0.000', '0', '2017-12-13 13:59:55', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('397', '3049', '000000000000000.000', '0.000', '0', '2017-12-13 13:59:55', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('398', '3050', '000000000000000.000', '0.000', '0', '2017-12-13 13:59:55', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('399', '3051', '000000000000000.000', '0.000', '0', '2017-12-13 13:59:55', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('400', '3052', '000000000000000.000', '0.000', '0', '2017-12-13 13:59:55', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('401', '3053', '000000000000000.000', '0.000', '0', '2017-12-13 13:59:56', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('402', '3054', '000000000000000.000', '0.000', '0', '2017-12-13 13:59:56', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('403', '3055', '000000000000000.000', '0.000', '0', '2017-12-13 13:59:56', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('404', '3056', '000000000000000.000', '0.000', '0', '2017-12-13 13:59:56', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('405', '3058', '000000000000000.000', '0.000', '0', '2017-12-13 13:59:56', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('406', '3059', '000000000000000.000', '0.000', '0', '2017-12-13 13:59:56', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('408', '2687', '000000000000000.000', '0.000', '150', '2017-12-13 16:11:29', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('414', '3071', '000000000000000.000', '0.000', '0', '2017-12-14 13:18:23', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('415', '2748', '000000000000000.000', '0.000', '0', '2017-12-14 13:40:55', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('416', '2749', '000000000000000.000', '0.000', '0', '2017-12-14 13:49:52', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('417', '3072', '000000000000000.000', '0.000', '0', '2017-12-14 14:48:00', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('418', '3073', '000000000000000.000', '0.000', '0', '2017-12-14 14:49:08', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('419', '3074', '000000000000000.000', '0.000', '0', '2017-12-14 14:52:03', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('420', '3076', '000000000000000.000', '0.000', '0', '2017-12-14 14:55:52', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('421', '3075', '000000000000000.000', '0.000', '0', '2017-12-14 14:58:23', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('422', '3077', '000000000000000.000', '0.000', '0', '2017-12-14 15:01:00', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('423', '3067', '000000000000000.000', '0.000', '0', '2017-12-14 15:06:21', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('424', '3068', '000000000000000.000', '0.000', '0', '2017-12-14 15:14:39', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('425', '3069', '000000000000000.000', '0.000', '0', '2017-12-14 15:16:15', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('426', '3070', '000000000000000.000', '0.000', '0', '2017-12-14 15:24:56', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('427', '2705', '000000000000000.000', '0.000', '30', '2017-12-14 15:53:33', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('428', '3080', '000000000000000.000', '0.000', '0', '2017-12-15 12:58:09', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('429', '2744', '000000000000000.000', '0.000', '30', '2017-12-15 13:27:54', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('430', '2683', '000000000000000.000', '0.000', '300', '2017-12-15 14:22:37', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('431', '2680', '000000000000000.000', '0.000', '300', '2017-12-15 14:27:33', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('432', '2748', '000000000000000.000', '0.000', '150', '2017-12-16 08:24:07', null, null, '-1', 'RKRQ10T');
INSERT INTO `t_prod_inst` VALUES ('433', '2778', '000000000000000.000', '0.000', '30', '2017-12-16 09:35:01', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('434', '2748', '000000000000000.000', '0.000', '0', '2017-12-16 10:52:53', null, null, 'BS', '-1');
INSERT INTO `t_prod_inst` VALUES ('435', '2748', '000000000000000.000', '0.000', '0', '2017-12-16 10:57:19', null, null, '**', '-1');
INSERT INTO `t_prod_inst` VALUES ('436', '2692', '000000000000000.000', '0.000', '2', '2017-12-16 11:35:38', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('437', '2692', '000000000000000.000', '0.000', '5', '2017-12-16 11:35:41', null, null, '-1', '-1');
INSERT INTO `t_prod_inst` VALUES ('438', '2783', '000000000000000.000', '0.000', '100', '2017-12-17 22:58:07', null, null, 'BS', '-1');

-- ----------------------------
-- Table structure for `t_prod_instock_info`
-- ----------------------------
DROP TABLE IF EXISTS `t_prod_instock_info`;
CREATE TABLE `t_prod_instock_info` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `prod_id` bigint(20) NOT NULL COMMENT '产品ID',
  `prod_inst_id` bigint(20) NOT NULL COMMENT '产品实例ID',
  `prod_barcode` varchar(64) COLLATE utf8_unicode_ci NOT NULL COMMENT '产品条码',
  `pis_date` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '入库时间',
  `pis_count` decimal(18,3) unsigned zerofill DEFAULT NULL COMMENT '入库数量',
  `pis_em_id` bigint(20) NOT NULL COMMENT '入库人ID',
  `pis_receipt` varchar(64) COLLATE utf8_unicode_ci DEFAULT '无单据' COMMENT '入库单据号',
  `prod_cost` double unsigned zerofill DEFAULT '0000000000000000000000' COMMENT '产品成本（涉密字段）',
  `remark` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '备注',
  `plan_id` bigint(20) DEFAULT NULL COMMENT '子订单',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='产品入库明细';

-- ----------------------------
-- Records of t_prod_instock_info
-- ----------------------------

-- ----------------------------
-- Table structure for `t_prod_outstock_info`
-- ----------------------------
DROP TABLE IF EXISTS `t_prod_outstock_info`;
CREATE TABLE `t_prod_outstock_info` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `prod_id` bigint(20) NOT NULL COMMENT '产品ID',
  `prod_inst_id` bigint(20) NOT NULL COMMENT '产品实例ID',
  `prod_barcode` varchar(64) COLLATE utf8_unicode_ci NOT NULL COMMENT '产品条码',
  `pos_date` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '出库时间',
  `pos_count` decimal(18,3) unsigned NOT NULL COMMENT '出库数量',
  `pos_em_id` bigint(20) NOT NULL COMMENT '出库人ID',
  `pos_receipt` varchar(64) COLLATE utf8_unicode_ci DEFAULT '无单据' COMMENT '出库单据号',
  `pos_salesperson_id` bigint(20) NOT NULL COMMENT '业务员ID',
  `pos_customer_id` bigint(20) NOT NULL COMMENT '客户ID',
  `remark` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '备注',
  `plan_id` bigint(20) DEFAULT NULL COMMENT '子订单',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='产品出库明细';

-- ----------------------------
-- Records of t_prod_outstock_info
-- ----------------------------

-- ----------------------------
-- Table structure for `t_property`
-- ----------------------------
DROP TABLE IF EXISTS `t_property`;
CREATE TABLE `t_property` (
  `prop_code` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT '属性编码',
  `prop_desc` varchar(256) COLLATE utf8_unicode_ci NOT NULL COMMENT '属性描述',
  `remark` varchar(256) COLLATE utf8_unicode_ci NOT NULL COMMENT '说明信息，保留字段',
  UNIQUE KEY `code` (`prop_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of t_property
-- ----------------------------
INSERT INTO `t_property` VALUES ('-1', '无', 'do not delete');
INSERT INTO `t_property` VALUES ('RKRQ10T', '南京专供', '');

-- ----------------------------
-- Table structure for `t_roler`
-- ----------------------------
DROP TABLE IF EXISTS `t_roler`;
CREATE TABLE `t_roler` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `p_id` bigint(20) DEFAULT NULL,
  `rl_name` varchar(64) COLLATE utf8_unicode_ci NOT NULL COMMENT '角色名称',
  `rl_priv` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '权限',
  `remark` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='角色信息表';

-- ----------------------------
-- Records of t_roler
-- ----------------------------
INSERT INTO `t_roler` VALUES ('-1', '0', '请选择角色', null, null);
INSERT INTO `t_roler` VALUES ('2', '-1', '超级来访', 'product:view,plan:view,report:view,stock:edit', '拥有除报表查看以外的所有查看权限。');
INSERT INTO `t_roler` VALUES ('3', '-1', '分配角色', '_user:account:view,_user:role:define', '可以为系统的用户分配角色，但不能修改和创建用户');
INSERT INTO `t_roler` VALUES ('4', '-1', '用户管理者', '_user:account:view,_user:account:edit', '可以对用户进行增删改查，但不具有角色分配权');
INSERT INTO `t_roler` VALUES ('5', '-1', '仓管', 'stock:edit', '可以录入产品/原料，可以进行出库/入库操作');
INSERT INTO `t_roler` VALUES ('6', '-1', '审核', 'plan:view,plan:audit', '拥有对销售创建的订单进行审核');
INSERT INTO `t_roler` VALUES ('7', '-1', '计划', 'plan:view,plan:plan', '拥有对审核通过的订单组织生产');
INSERT INTO `t_roler` VALUES ('8', '-1', '产品访问者', '_bom:product:view,_bom:product:edit,_bom:material:view,_bom:material:edit,_bom:drwaing:view,_bom:drwaing:edit,_bom:property:view,_bom:property:edit,_bom:covered:view,_bom:covered:edit,_bom:trace:view', '访问权限有：产品管理/原料管理/入库管理/出库管理/图纸管理/供应商管理，不包含生产计划浏览权。');
INSERT INTO `t_roler` VALUES ('9', '-1', '员工访问者', '_user:account:view,_user:role:view', '只能访问员工管理/角色管理，不能创建/修改/删除用户，不能修改角色');
INSERT INTO `t_roler` VALUES ('10', '-1', '角色管理者', '_user:role:view,_user:role:edit', '可以创建角色，系统正式运行后，屏蔽该角色');
INSERT INTO `t_roler` VALUES ('17', '-1', '系统管理员', 'home:view,_bom:product:view,_bom:product:edit,_bom:material:view,_bom:material:edit,_bom:drwaing:view,_bom:drwaing:edit,_bom:property:view,_bom:property:edit,_bom:covered:view,_bom:covered:edit,_bom:trace:view,_stock:in_material:view,_stock:out_material:view,_stock:in_product:view,_stock:out_product:view,_user:account:view,_user:account:edit,_user:role:define,_user:role:view,_user:role:edit,_relation:customer:view,_relation:customer:edit,_relation:supply:view,_relation:supply:edit,plan:view,plan:create,plan:audit,plan:end,plan:plan,plan:product,plan:task,_report:sales_info:view,_report:sales_order:view,_report:sales_product:view,stock:edit', '具有所有项目管理权限。');
INSERT INTO `t_roler` VALUES ('31', '-1', '销售员', '_stock:in_product:view,_stock:out_product:view,plan:view,plan:create,plan:end', '拥有下订单，跟踪订单、产品信息查询、报表查询权限。');
INSERT INTO `t_roler` VALUES ('32', '-1', '销售经理', 'home:view,_stock:in_product:view,_stock:out_product:view,_user:account:view,_user:account:edit,_user:role:define,_relation:customer:view,_relation:customer:edit,plan:view,plan:create,plan:audit,plan:end', '拥有下订单、审核订单、跟踪订单、产品信息查询、访问员工管理、报表查、首页查询权限 。');
INSERT INTO `t_roler` VALUES ('33', '-1', '销售内勤', '_stock:in_product:view,_stock:out_product:view,plan:view,plan:create', '下订单权限。');
INSERT INTO `t_roler` VALUES ('34', '-1', '采购', 'home:view,_bom:material:view,_bom:material:edit,_stock:in_material:view,_stock:out_material:view,_stock:in_product:view,_stock:out_product:view,_report:sales_order:view', '原材料、成品、供应商、报表查询权限。');
INSERT INTO `t_roler` VALUES ('35', '-1', '会计', 'home:view,_report:sales_info:view,_report:sales_order:view,_report:sales_product:view', '报表管理权限');
INSERT INTO `t_roler` VALUES ('36', '-1', '综合管理部长', 'home:view,_user:account:view,_relation:customer:view,_relation:customer:edit,_relation:supply:view,_relation:supply:edit,_report:sales_info:view,_report:sales_order:view,_report:sales_product:view', '员工查询、报表管理权限');
INSERT INTO `t_roler` VALUES ('37', '-1', '原材料库', '_stock:in_material:view,_stock:out_material:view,stock:edit', '原材料出入库管理权限');
INSERT INTO `t_roler` VALUES ('38', '-1', '成品库', '_bom:product:view,_bom:product:edit,_bom:material:view,_bom:material:edit,_stock:in_material:view,_stock:out_material:view,_stock:in_product:view,_stock:out_product:view,stock:edit', '成品出入库与管理');
INSERT INTO `t_roler` VALUES ('39', '-1', '生产部长', 'home:view,_bom:product:view,_bom:product:edit,_bom:material:view,_bom:material:edit,_stock:in_material:view,_stock:out_material:view,_stock:in_product:view,_stock:out_product:view,_user:account:view,_user:account:edit,_user:role:define,_relation:customer:view,_relation:customer:edit,_relation:supply:view,_relation:supply:edit,plan:view,plan:audit,plan:end,plan:plan,plan:product,plan:task,_report:sales_info:view,_report:sales_order:view,_report:sales_product:view', '生产订单管理、原材料、成品管理、报表查询权限。');
INSERT INTO `t_roler` VALUES ('40', '-1', '查询', '_stock:in_material:view,_stock:out_material:view,_stock:in_product:view,_stock:out_product:view', '产品查询');

-- ----------------------------
-- Table structure for `t_supplier`
-- ----------------------------
DROP TABLE IF EXISTS `t_supplier`;
CREATE TABLE `t_supplier` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `sp_name` varchar(64) COLLATE utf8_unicode_ci NOT NULL COMMENT '供应商名称',
  `code` varchar(4) COLLATE utf8_unicode_ci NOT NULL,
  `sp_addr` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '地址',
  `enabled_date` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '登记日期',
  `sp_contacter` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '联系人',
  `sp_contacter_phone` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '联系电话',
  `sales_person_id` bigint(20) NOT NULL COMMENT '业务员',
  `remark` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '备注',
  `status` varchar(64) COLLATE utf8_unicode_ci DEFAULT '有效' COMMENT '状态：有效、失效',
  PRIMARY KEY (`id`),
  UNIQUE KEY `code` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=99 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='供应商信息表';

-- ----------------------------
-- Records of t_supplier
-- ----------------------------
INSERT INTO `t_supplier` VALUES ('4', '无锡环胜金属制品有限公司', 'WXHS', '无锡市锡山区大成工业园翔盛路2号', '2017-08-26 04:23:23', '刘毅', '13771183610', '20', '', '有效');
INSERT INTO `t_supplier` VALUES ('6', '常州汇诺机械', 'CZHN', '常州市武进洛阳联谊路', '2017-08-26 16:29:17', '黄如良', '13506113881', '20', null, '有效');
INSERT INTO `t_supplier` VALUES ('7', '常州康驰塑料制品厂', 'CZKC', '常州洛阳镇谈家头工业区遥洛路', '2017-08-26 16:30:43', '谈中云', '13809072573', '20', null, '有效');
INSERT INTO `t_supplier` VALUES ('8', '余姚陆埠军辉塑料厂', 'YYLB', '余姚市陆埠镇干溪村路下58号', '2017-08-26 16:34:15', '章国军', '13505782752', '20', null, '有效');
INSERT INTO `t_supplier` VALUES ('9', '姜堰市神武不锈钢丝网制造有限公司', 'JYSW', '姜堰市沈高镇超幸村', '2017-08-26 16:36:12', '贺小伟', '18605233299', '20', null, '有效');
INSERT INTO `t_supplier` VALUES ('10', '浙江奕富铜业', 'ZJYF', '浙江省诸暨市店口镇江东社区东大路', '2017-08-26 16:38:19', '俞戈铭', '13575576395', '20', null, '有效');
INSERT INTO `t_supplier` VALUES ('11', '余姚春燕塑料制品厂', 'YYCY', '浙江省余姚市梁辉经济开发区振兴东路46号', '2017-08-26 16:40:07', '邵燕琪', '13605845526', '20', null, '有效');
INSERT INTO `t_supplier` VALUES ('12', '慈溪市周巷沃龙橡胶制品厂', 'CXWL', '浙江省慈溪市周巷镇小安村陶家丘64号', '2017-08-26 16:42:23', '马建英', '15669206312', '20', null, '有效');
INSERT INTO `t_supplier` VALUES ('13', '上海锋顺塑料制品有限公司', 'SHFS', '上海市浦东新区孙桥镇桥弄寸金家宅21号', '2017-08-26 16:44:18', '陆小姐', '13761048179', '20', null, '有效');
INSERT INTO `t_supplier` VALUES ('14', '常州新久', 'CZXJ', '常州市新北区孟河镇蔡家村', '2017-08-26 16:44:43', '马新华', '13004371201', '20', null, '有效');
INSERT INTO `t_supplier` VALUES ('15', '余姚市晶通洁具软管厂', 'YYJT', '余姚市阳明街道舜宇路88号', '2017-08-26 16:47:51', '董国权', '13082927500', '20', null, '有效');
INSERT INTO `t_supplier` VALUES ('16', '黄山市龙跃铜业有限公司', 'HSLY', '黄山市休宁县经济开发区科技城', '2017-08-26 16:49:49', '金义泉', '18955995776', '20', null, '有效');
INSERT INTO `t_supplier` VALUES ('17', '余姚福亿电子科技有限公司', 'YYYF', '余姚市陆埠镇江南村舜孙西路19号', '2017-08-26 16:51:21', '许高福', '15867595777', '20', null, '有效');
INSERT INTO `t_supplier` VALUES ('18', '常州佳汇', 'CZJH', '常州市武进区洛阳镇工业园戴洛路79号', '2017-08-26 16:53:12', '黄金良', '13606118520', '20', null, '有效');
INSERT INTO `t_supplier` VALUES ('20', '南京祥泰包装有限公司', 'NJXT', '南京市江宁区东山街道骆村社区兴民工业园', '2017-08-26 16:58:21', '臧何云', '13182976852', '20', null, '有效');
INSERT INTO `t_supplier` VALUES ('23', '泰州市海宁包装有限公司', 'TZHN', '泰州市姜堰区张甸工业园区', '2017-09-13 09:29:35', '蒋存宝', '13951168883', '20', null, '有效');
INSERT INTO `t_supplier` VALUES ('24', '常州佳诚波纹管', 'CZJC', '常州市洛阳工业园区遥洛路9号', '2017-09-13 09:31:22', '王加平', '18001508516', '20', null, '有效');
INSERT INTO `t_supplier` VALUES ('90', '浩盛五金', 'HSWJ', '', '2017-09-22 11:34:51', '章姜寅', '13429266155', '20', '', '有效');
INSERT INTO `t_supplier` VALUES ('91', '苏州沃尔兴', 'SZWE', '', '2017-09-22 11:34:51', '陈文涛', '18963669855', '20', '', '有效');
INSERT INTO `t_supplier` VALUES ('93', '余姚东磊', 'YYDL', '余姚市阳明街道舜宇路99号', '2017-08-26 04:47:51', '王姬珍', '18057498188', '20', '', '有效');
INSERT INTO `t_supplier` VALUES ('94', '余姚莲通机械厂', 'YYLT', '余姚市阳明街道舜宇路109号', '2017-08-26 04:47:51', '杨金莲', '15158388047', '20', '', '有效');
INSERT INTO `t_supplier` VALUES ('95', '宁波炜烨', 'NBWH', '', '2017-08-26 04:47:51', '邵燕琪', '13605845526', '20', '', '有效');
INSERT INTO `t_supplier` VALUES ('96', '柔科五金', 'RKWJ', '宁波市鄞州区高桥镇高桥村联众路', '2017-12-05 01:41:23', '吴高志', '18658207032', '20', '', '有效');
INSERT INTO `t_supplier` VALUES ('97', '余姚巨辉水暖厂', 'JHSN', '', '2017-12-05 01:44:39', '夏巨辉', '18658408890', '20', '', '有效');
INSERT INTO `t_supplier` VALUES ('98', '玉延五金厂', 'YYWJ', null, '2017-12-05 13:46:13', null, null, '20', null, '有效');

-- ----------------------------
-- Table structure for `t_unit`
-- ----------------------------
DROP TABLE IF EXISTS `t_unit`;
CREATE TABLE `t_unit` (
  `code` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '-1' COMMENT '单位编码',
  `desc` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '单位描述',
  `sort` int(11) unsigned zerofill DEFAULT '00000009999' COMMENT '排序',
  `decimals` int(11) DEFAULT '0' COMMENT '小数位数',
  PRIMARY KEY (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of t_unit
-- ----------------------------
INSERT INTO `t_unit` VALUES ('cm', '厘米', '00000000400', '0');
INSERT INTO `t_unit` VALUES ('ge', '个', '00000000100', '0');
INSERT INTO `t_unit` VALUES ('geng', '根', '00000000200', '0');
INSERT INTO `t_unit` VALUES ('kg', '公斤', '00000000600', '0');
INSERT INTO `t_unit` VALUES ('m', '米', '00000000300', '0');
INSERT INTO `t_unit` VALUES ('mm', '毫米', '00000000500', '0');

-- ----------------------------
-- Table structure for `t_user_role`
-- ----------------------------
DROP TABLE IF EXISTS `t_user_role`;
CREATE TABLE `t_user_role` (
  `user_id` bigint(20) NOT NULL,
  `role_id` bigint(20) NOT NULL,
  PRIMARY KEY (`user_id`,`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_520_ci;

-- ----------------------------
-- Records of t_user_role
-- ----------------------------
INSERT INTO `t_user_role` VALUES ('9', '11');
INSERT INTO `t_user_role` VALUES ('10', '11');
INSERT INTO `t_user_role` VALUES ('11', '11');
INSERT INTO `t_user_role` VALUES ('11', '19');
INSERT INTO `t_user_role` VALUES ('12', '11');
INSERT INTO `t_user_role` VALUES ('13', '11');
INSERT INTO `t_user_role` VALUES ('14', '11');
INSERT INTO `t_user_role` VALUES ('15', '31');
INSERT INTO `t_user_role` VALUES ('16', '31');
INSERT INTO `t_user_role` VALUES ('17', '31');
INSERT INTO `t_user_role` VALUES ('18', '31');
INSERT INTO `t_user_role` VALUES ('19', '31');
INSERT INTO `t_user_role` VALUES ('20', '17');
INSERT INTO `t_user_role` VALUES ('22', '11');
INSERT INTO `t_user_role` VALUES ('24', '11');
INSERT INTO `t_user_role` VALUES ('24', '36');
INSERT INTO `t_user_role` VALUES ('26', '34');
INSERT INTO `t_user_role` VALUES ('27', '35');
INSERT INTO `t_user_role` VALUES ('28', '33');
INSERT INTO `t_user_role` VALUES ('29', '40');
INSERT INTO `t_user_role` VALUES ('31', '40');
INSERT INTO `t_user_role` VALUES ('32', '39');
INSERT INTO `t_user_role` VALUES ('33', '37');
INSERT INTO `t_user_role` VALUES ('34', '38');
INSERT INTO `t_user_role` VALUES ('35', '40');

-- ----------------------------
-- Procedure structure for `backup_mate_stock`
-- ----------------------------
DROP PROCEDURE IF EXISTS `backup_mate_stock`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `backup_mate_stock`(IN `keep_month` INT)
    COMMENT 'b'
BEGIN
	declare tb_mi_name  varchar(255); 
	declare tb_mo_name  varchar(255); 
	declare tb_pi_name  varchar(255); 
	declare tb_po_name  varchar(255); 
	declare tb_temp_name  varchar(255); 
	declare str_bef_sql  varchar(4096);
	declare str_aft_sql  varchar(4096);
   declare str_mod_sql  varchar(4096);
	declare dt_datetime DATETIME;
	set dt_datetime = curdate();
	set tb_mi_name = (CONCAT('t_mate_instock_info_',(cast((select year(curdate())) as char))));
	set str_bef_sql = 'CREATE TABLE IF NOT EXISTS ';
	set str_aft_sql = '(
		`id` BIGINT(20) NOT NULL,
		`mate_id` BIGINT(20) NOT NULL COMMENT \'原料ID\',
		`mate_barcode` VARCHAR(64) NOT NULL COMMENT \'原料条码\' COLLATE \'utf8_unicode_ci\',
		`gb_standard` VARCHAR(256) NOT NULL COMMENT \'规格\' COLLATE \'utf8_unicode_ci\',
		`purchase_datetime` DATETIME NULL DEFAULT CURRENT_TIMESTAMP COMMENT \'进货日期\',
		`purchase_em_id` BIGINT(20) NOT NULL COMMENT \'进货人ID\',
		`mis_date` DATETIME NULL DEFAULT CURRENT_TIMESTAMP COMMENT \'入库时间\',
		`mis_count` INT(10) UNSIGNED ZEROFILL NOT NULL COMMENT \'入库数量\',
		`mis_em_id` BIGINT(20) NOT NULL COMMENT \'入库人ID\',
		`mis_receipt` VARCHAR(64) NULL DEFAULT \'无单据\' COMMENT \'入库单据号\' COLLATE \'utf8_unicode_ci\',
		`mate_price` DOUBLE UNSIGNED ZEROFILL NULL DEFAULT \'0000000000000000000000\' COMMENT \'原料价格（涉密字段）\',
		`mate_supplier_id` BIGINT(20) NOT NULL COMMENT \'供应商ID\',
		`remark` VARCHAR(256) NULL DEFAULT NULL COMMENT \'备注\' COLLATE \'utf8_unicode_ci\',
		`plan_id` BIGINT(20) NULL DEFAULT NULL COMMENT \'子订单\'
	)';
	set @sqlStr=CONCAT(str_bef_sql,tb_mi_name,str_aft_sql);
	PREPARE stmt from @sqlStr;
	EXECUTE stmt; 
	
	set tb_mo_name = (CONCAT('t_mate_outstock_info_',(cast((select year(curdate())) as char))));
	set str_bef_sql = 'CREATE TABLE IF NOT EXISTS ';
	set str_aft_sql = '(
		`id` BIGINT(20) NOT NULL,
		`mate_id` BIGINT(20) NOT NULL COMMENT \'原料ID\',
		`mate_barcode` VARCHAR(64) NULL DEFAULT NULL COMMENT \'原料条码\' COLLATE \'utf8_unicode_ci\',
		`gb_standard` VARCHAR(256) NULL DEFAULT NULL COMMENT \'规格\' COLLATE \'utf8_unicode_ci\',
		`consumer_id` BIGINT(20) NOT NULL COMMENT \'领用人ID\',
		`mos_date` DATETIME NULL DEFAULT CURRENT_TIMESTAMP COMMENT \'出库时间\',
		`mos_count` INT(10) UNSIGNED ZEROFILL NULL DEFAULT NULL COMMENT \'出库数量\',
		`mos_em_id` BIGINT(20) NOT NULL COMMENT \'出库人ID\',
		`mos_receipt` VARCHAR(64) NULL DEFAULT NULL COMMENT \'出库单据号\' COLLATE \'utf8_unicode_ci\',
		`remark` VARCHAR(256) NULL DEFAULT NULL COMMENT \'备注\' COLLATE \'utf8_unicode_ci\',
		`plan_id` BIGINT(20) NULL DEFAULT NULL COMMENT \'子订单\'
	)';
	set @sqlStr=CONCAT(str_bef_sql,tb_mo_name,str_aft_sql);
	PREPARE stmt from @sqlStr;
	EXECUTE stmt; 
	
	#查询出keep_month月前的所有入库记录，两个字段：条码、该条码的入库总量
	DROP TABLE if exists t_zm_in;
	set str_bef_sql ='create temporary table t_zm_in(select mate_barcode,sum(mis_count) as mis from t_mate_instock_info where mis_date<DATE_SUB(curdate(),INTERVAL ';
	set str_aft_sql =' month) group by mate_barcode)';
	set @sqlStr=CONCAT(str_bef_sql,keep_month,str_aft_sql);
	PREPARE stmt from @sqlStr;
	EXECUTE stmt;

	
	#查询出keep_month月前且t_zm_in表中存在的条码的所有出库记录，两个字段：条码、该条码的出库总量
	drop table if exists t_zm_out;
	create temporary table t_zm_out(select mate_barcode,sum(mos_count) as mos from t_mate_outstock_info where mate_barcode in (select mate_barcode from t_zm_in) group by mate_barcode);

	#查询出出库量大于等于入库量的条码记录集（严格来说：出库量不可能大于入库量的，只能是等于）
	drop table if exists t_zm_mate_temp;
	create temporary table t_zm_mate_temp(select mate_barcode from t_zm_out where t_zm_out.mos>=(select mis from t_zm_in where t_zm_in.mate_barcode=t_zm_out.mate_barcode));
	
	#备份原料入库记录
	set str_bef_sql = 'Insert into ';
	set str_aft_sql = ' select * from t_mate_instock_info where mate_barcode in (select mate_barcode from t_zm_mate_temp)';
	set @sqlStr=CONCAT(str_bef_sql,tb_mi_name,str_aft_sql);
	PREPARE stmt from @sqlStr;
	EXECUTE stmt;
	
	#备份原料出库记录
	set str_bef_sql = 'Insert into ';
	set str_aft_sql = ' select * from t_mate_outstock_info where mate_barcode in (select mate_barcode from t_zm_mate_temp)';
	set @sqlStr=CONCAT(str_bef_sql,tb_mo_name,str_aft_sql);
	PREPARE stmt from @sqlStr;
	EXECUTE stmt;
	
	#删除已备份的记录
	delete from t_mate_instock_info where mate_barcode in (select mate_barcode from t_zm_mate_temp);
	delete from t_mate_outstock_info where mate_barcode in (select mate_barcode from t_zm_mate_temp);
	
	#删除临时表
	DROP TABLE IF EXISTS t_zm_in;
	DROP TABLE IF EXISTS t_zm_out;
	DROP TABLE IF EXISTS t_zm_mate_temp;
	
	
	set tb_pi_name = (CONCAT('t_prod_instock_info_',(cast((select year(curdate())) as char))));
	set str_bef_sql = 'CREATE TABLE IF NOT EXISTS ';
	set str_aft_sql = '(
		`id` BIGINT(20) NOT NULL,
		`prod_id` BIGINT(20) NOT NULL COMMENT \'产品ID\',
		`prod_barcode` VARCHAR(64) NOT NULL COMMENT \'产品条码\' COLLATE \'utf8_unicode_ci\',
		`gb_standard` VARCHAR(256) NOT NULL COMMENT \'规格\' COLLATE \'utf8_unicode_ci\',
		`pis_date` DATETIME NULL DEFAULT CURRENT_TIMESTAMP COMMENT \'入库时间\',
		`pis_count` INT(10) UNSIGNED ZEROFILL NULL DEFAULT NULL COMMENT \'入库数量\',
		`pis_em_id` BIGINT(20) NOT NULL COMMENT \'入库人ID\',
		`pis_receipt` VARCHAR(64) NULL DEFAULT \'无单据\' COMMENT \'入库单据号\' COLLATE \'utf8_unicode_ci\',
		`prod_cost` DOUBLE UNSIGNED ZEROFILL NULL DEFAULT \'0000000000000000000000\' COMMENT \'产品成本（涉密字段）\',
		`remark` VARCHAR(256) NULL DEFAULT NULL COMMENT \'备注\' COLLATE \'utf8_unicode_ci\',
		`plan_id` BIGINT(20) NULL DEFAULT NULL COMMENT \'子订单\'
	)';
	set @sqlStr=CONCAT(str_bef_sql,tb_pi_name,str_aft_sql);
	PREPARE stmt from @sqlStr;
	EXECUTE stmt; 
	
	set tb_po_name = (CONCAT('t_prod_outstock_info_',(cast((select year(curdate())) as char))));
	set str_bef_sql = 'CREATE TABLE IF NOT EXISTS ';
	set str_aft_sql = '(
		`id` BIGINT(20) NOT NULL,
		`prod_id` BIGINT(20) NOT NULL COMMENT \'产品ID\',
		`prod_barcode` VARCHAR(64) NOT NULL COMMENT \'产品条码\' COLLATE \'utf8_unicode_ci\',
		`gb_standard` VARCHAR(256) NOT NULL COMMENT \'规格\' COLLATE \'utf8_unicode_ci\',
		`pos_date` DATETIME NULL DEFAULT CURRENT_TIMESTAMP COMMENT \'出库时间\',
		`pos_count` INT(10) UNSIGNED NOT NULL COMMENT \'出库数量\',
		`pos_em_id` BIGINT(20) NOT NULL COMMENT \'出库人ID\',
		`pos_receipt` VARCHAR(64) NULL DEFAULT \'无单据\' COMMENT \'出库单据号\' COLLATE \'utf8_unicode_ci\',
		`pos_salesperson_id` BIGINT(20) NOT NULL COMMENT \'业务员ID\',
		`pos_customer_id` BIGINT(20) NOT NULL COMMENT \'客户ID\',
		`remark` VARCHAR(256) NULL DEFAULT NULL COMMENT \'备注\' COLLATE \'utf8_unicode_ci\',
		`plan_id` BIGINT(20) NULL DEFAULT NULL COMMENT \'子订单\'
	)';
	set @sqlStr=CONCAT(str_bef_sql,tb_po_name,str_aft_sql);
	PREPARE stmt from @sqlStr;
	EXECUTE stmt; 
	
	#查询出keep_month月前的所有入库记录，两个字段：条码、该条码的入库总量
	DROP TABLE if exists t_zm_in;
	set str_bef_sql ='create temporary table t_zm_in(select prod_barcode,sum(pis_count) as pis from t_prod_instock_info where pis_date<DATE_SUB(curdate(),INTERVAL ';
	set str_aft_sql =' month) group by prod_barcode)';
	set @sqlStr=CONCAT(str_bef_sql,keep_month,str_aft_sql);
	PREPARE stmt from @sqlStr;
	EXECUTE stmt;

	#查询出keep_month月前且t_zm_in表中存在的条码的所有出库记录，两个字段：条码、该条码的出库总量	
	drop table if exists t_zm_out;
	create temporary table t_zm_out(select prod_barcode,sum(pos_count) as pos from t_prod_outstock_info where prod_barcode in (select prod_barcode from t_zm_in) group by prod_barcode);

	#查询出出库量大于等于入库量的条码记录集（严格来说：出库量不可能大于入库量的，只能是等于）
	drop table if exists t_zm_prod_temp;
	create temporary table t_zm_prod_temp(select prod_barcode from t_zm_out where t_zm_out.pos>=(select pis from t_zm_in where t_zm_in.prod_barcode=t_zm_out.prod_barcode));
	
	#备份产品入库记录
	set str_bef_sql = 'Insert into ';
	set str_aft_sql = ' select * from t_prod_instock_info as t_m where prod_barcode in (select prod_barcode from t_zm_prod_temp)';
	set @sqlStr=CONCAT(str_bef_sql,tb_pi_name,str_aft_sql);
	PREPARE stmt from @sqlStr;
	EXECUTE stmt;
	
	#备份产品出库记录
	set str_bef_sql = 'Insert into ';
	set str_aft_sql = ' select * from t_prod_outstock_info as t_m where prod_barcode in (select prod_barcode from t_zm_prod_temp)';
	set @sqlStr=CONCAT(str_bef_sql,tb_po_name,str_aft_sql);
	PREPARE stmt from @sqlStr;
	EXECUTE stmt;
	
	#删除已备份的记录
	delete from t_prod_instock_info where prod_barcode in (select prod_barcode from t_zm_prod_temp);
	delete from t_prod_outstock_info where prod_barcode in (select prod_barcode from t_zm_prod_temp);
	
	#删除临时表
	DROP TABLE IF EXISTS t_zm_in;
	DROP TABLE IF EXISTS t_zm_out;
	DROP TABLE IF EXISTS t_zm_prod_temp;
END
;;
DELIMITER ;
