/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 80028
 Source Host           : localhost:3306
 Source Schema         : ebook

 Target Server Type    : MySQL
 Target Server Version : 80028
 File Encoding         : 65001

 Date: 09/07/2022 10:04:04
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for books
-- ----------------------------
DROP TABLE IF EXISTS `books`;
CREATE TABLE `books`  (
  `ID` int UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键',
  `ISBN` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '书籍的ISBN，978-7-000-00000-0',
  `bookname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '书籍的名字（简写版本）例如《程序设计》',
  `displaytitle` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '书籍的名字（详细版本，用于关键词检索）',
  `inventory` int UNSIGNED NULL DEFAULT 0 COMMENT '书籍的库存数量',
  `departure` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '书籍的库存地点',
  `author` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '书籍的作者，33个汉字可以存储，稍微做了一定的限制',
  `price` int NULL DEFAULT 0 COMMENT '书籍的价格',
  `sellnumber` int UNSIGNED NULL DEFAULT 0 COMMENT '	\r\n书籍的销量，默认最大值为：2147483647，已经够用了',
  `imgtitle` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '书籍的图片，暂且先存文件的地址',
  `publisher` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '书籍的出版商',
  `description` varchar(3000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '书本的描述字符',
  `bookid` int NULL DEFAULT NULL,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 25 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for orderitem
-- ----------------------------
DROP TABLE IF EXISTS `orderitem`;
CREATE TABLE `orderitem`  (
  `itemID` int UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '项目的主键ID',
  `status` int NOT NULL DEFAULT -1 COMMENT '状态 0-在购物车中 1-归属于订单，但是未支付 2-归属于订单，且已经支付，3-归属于订单，且已经完成的，-1表示这个字段无效（已经撤销的订单）',
  `belonguser` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '所属于的用户，引用users表格',
  `orderID` int NULL DEFAULT NULL COMMENT '所属于的订单号，引用orders表',
  `bookID` int UNSIGNED NULL DEFAULT NULL COMMENT '该订单项目所购买的书本的ID，引用book表',
  `buynum` int NULL DEFAULT NULL COMMENT '该订单项目所购买的数量',
  `payprice` int NULL DEFAULT NULL COMMENT '概订单项目所支付的价格，可能有人说书本的数据库不是保存了书本的价格吗，用户这里支付的价格为什么要保存呢？这种数据根据两个数据库的内容计算得到的，但是实际上，书籍的价格也可能会有波动，一旦数据库的价格发生了编号，那么就会导致用户的历史订单的数据都不准确了，这就回带来问题。\r\n所以，我这里保存用户购买时候的，订单的价格，而不是不保存这个payprice字段的。\r\n总而言之，这个字段不是冗余的字段。',
  `create_itemtime` datetime NULL DEFAULT NULL COMMENT '该订单项目的创建时间',
  `comment` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '订单项目的用户评价',
  PRIMARY KEY (`itemID`) USING BTREE,
  INDEX `belonguser`(`belonguser` ASC) USING BTREE,
  INDEX `orderID`(`orderID` ASC) USING BTREE,
  INDEX `bookID`(`bookID` ASC) USING BTREE,
  CONSTRAINT `FKqyadddw5faraw73978ak51y4n` FOREIGN KEY (`orderID`) REFERENCES `orders` (`orderID`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FKta9al2wkto61uxo8j60jkwtu7` FOREIGN KEY (`bookID`) REFERENCES `books` (`ID`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `orderitem_ibfk_1` FOREIGN KEY (`belonguser`) REFERENCES `users` (`username`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `orderitem_ibfk_2` FOREIGN KEY (`bookID`) REFERENCES `books` (`ID`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 57 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders`  (
  `orderID` int NOT NULL AUTO_INCREMENT,
  `belonguser` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '订单所属的用户',
  `create_time` datetime NULL DEFAULT NULL,
  `receivername` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `contactphone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `postalcode` char(6) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `destination` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `totalprice` int NULL DEFAULT NULL,
  PRIMARY KEY (`orderID`) USING BTREE,
  INDEX `belonguser`(`belonguser` ASC) USING BTREE,
  CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`belonguser`) REFERENCES `users` (`username`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 22 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户的用户名，也作为主键',
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户的密码',
  `privilege` int NOT NULL DEFAULT 2 COMMENT '用户的权限',
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用于展示的用户名字（姓名/昵称之类的）',
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户的电子邮件',
  `useraddress` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户的寄送地址',
  `telephone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `forbidlogin` int NOT NULL DEFAULT 0 COMMENT '用户禁止登录，默认为0不禁用，1表示禁用',
  PRIMARY KEY (`username`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

SET FOREIGN_KEY_CHECKS = 1;
