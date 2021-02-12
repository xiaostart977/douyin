/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 50728
 Source Host           : localhost:3306
 Source Schema         : api

 Target Server Type    : MySQL
 Target Server Version : 50728
 File Encoding         : 65001

 Date: 12/02/2021 18:07:44
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for douyin_ta
-- ----------------------------
DROP TABLE IF EXISTS `douyin_ta`;
CREATE TABLE `douyin_ta` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` varchar(255) NOT NULL COMMENT '被关注的人',
  `url` varchar(255) NOT NULL COMMENT '抖音主页',
  `nickname` varchar(255) NOT NULL COMMENT '昵称',
  `signature` varchar(255) DEFAULT NULL COMMENT '签名',
  `avatar` varchar(255) NOT NULL COMMENT '头像',
  `following_count` int(11) NOT NULL DEFAULT '0' COMMENT '关注数',
  `follower_count` int(11) NOT NULL DEFAULT '0' COMMENT '粉丝数',
  `total_favorited` int(11) NOT NULL DEFAULT '0' COMMENT '被点赞数',
  `aweme_count` int(11) NOT NULL DEFAULT '0' COMMENT '作品数',
  `favoriting_count` int(11) NOT NULL DEFAULT '0' COMMENT '喜欢作品数',
  `add_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

SET FOREIGN_KEY_CHECKS = 1;
