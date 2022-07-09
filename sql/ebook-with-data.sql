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

 Date: 09/07/2022 10:03:49
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
-- Records of books
-- ----------------------------
INSERT INTO `books` VALUES (1, '978-7-000-00000-0', '高中必刷题', '2022新教材高中必刷题人教版A版必修第一、二册 新华书店正版', 90, '湖南', '必刷题编者', 3940, 0, 'https://ebookpicture.oss-cn-hangzhou.aliyuncs.com/image/1.jpg', '首都师范大学出版', '根据高中教材，划分知识点，分为课时、节、章三个层级，分层设置基础题型、易错、提升等栏目，重要知识点设置专题，综合知识点设置刷综合栏目，每章末按知识点对高考真题进行分组，安排全章综合训练等，打造多层次训练体系。选题兼顾经典与新颖，新题以各地名校试题为主。题型全面，层次清晰，进行编写，方便教师课堂随堂训练或检测，以及学生课后针对学科弱项进行自我强化。搭配对应版本的知识讲解册，由一线教师参与编写，在总结分析学生的学习问题的基础上，按照深层理解、拓展、突破三个层级进行重点讲解，帮助学生深入理解知识规律，建立学科知识体系，迅速完成由学新知识到得高分的过渡。', NULL);
INSERT INTO `books` VALUES (2, '978-7-000-00001-1', '这就是物理 ', '【热销】这就是物理 小学科普物理读物 知识百科全书', 263, '武汉', '这就是物理编者', 1825, 16, 'https://ebookpicture.oss-cn-hangzhou.aliyuncs.com/image/2.jpg', '科学出版社', '这套书叫做《这就是物理》，一共有10本，涵盖了物质、磁性、光、电、能量、引力、热、声音、力与运动等十大物理主题，几乎囊括了学校学过的全部物理知识点。\r\n\r\n书中通过拟人化的情景，趣味性的语言，深入浅出地把物理概念解释得清楚到位，最重要的是，卡通人物的手绘，漫画风格的版式，孩子们都爱看。\r\n\r\n物理是我们认识世界的基础。如果你的家里也有一个好奇宝宝，每天都要问一堆的为什么，比如，为什么温度计能测量温度，为什么脱毛衣时会有“噼啪”的声音，为什么下雨天总是先看到闪电后听到雷声，你能解释清楚吗？\r\n\r\n在这套书中，孩子们在生活中的“十万个为什么”都能找到答案。', NULL);
INSERT INTO `books` VALUES (3, '978-7-000-00002-2', '微积分', '大学数学教材高等数学教辅 参考书 微积分全册 上海交通大学出版', 315, '上海', '上海交通大学数学系', 4020, 5, 'https://ebookpicture.oss-cn-hangzhou.aliyuncs.com/image/3.jpg', '上海交通大学出版社', '这本书是上海交通大学的教材', NULL);
INSERT INTO `books` VALUES (4, '978-7-000-00003-3', '人民日报教你写文章', '高中语文作文素材，人民日报教你写文章 热点素材 时事快讯', 202, '北京', '人民日报出版社编写组', 2300, 22, 'https://ebookpicture.oss-cn-hangzhou.aliyuncs.com/image/4.jpg', '人民日报出版社', '《人民日报教你写好文章·技法与指导》共分为5个大章节：立意、结构、选材、技法、语言，正好对应解决孩子写作的5大难点。每个章节又分四个关键步骤：思维导图、写作宝典、时文选评、实战演练，让孩子学得层层清晰。无论是《技法与指导》，还是《热点与素材》，都是在让孩子们学会官媒级别的写作技巧，并告诉孩子们，《人民日报》上的好文章，就是这么写出来的。', NULL);
INSERT INTO `books` VALUES (5, '978-7-000-00004-4', '密码编码学与网络安全原理与实践', '密码编码学与网络安全原理与实践（第八版）电子工业出版', 232, '上海', 'Author of this Book', 8919, 1, 'https://ebookpicture.oss-cn-hangzhou.aliyuncs.com/image/5.jpg', '电子工业出版社', NULL, NULL);
INSERT INTO `books` VALUES (6, '978-7-000-00005-5', '数据结构', '高级数据结构教材C++语言版 清华大学出版社 第三版', 186, '杭州', '清华大学某教授', 3900, 5, 'https://ebookpicture.oss-cn-hangzhou.aliyuncs.com/image/6.jpg', '清华大学出版社', NULL, NULL);
INSERT INTO `books` VALUES (7, '978-7-000-00006-6', '离散数学', '离散数学 机械工业出版社出版 官方正版', 117, '南昌', 'Author of 离散数学', 2200, 4, 'https://ebookpicture.oss-cn-hangzhou.aliyuncs.com/image/7.jpg', '机械工业出版社出版', '', NULL);
INSERT INTO `books` VALUES (8, '978-7-000-00007-7', '深入理解计算机系统+计算机网络', '2022全新 深入理解计算机系统+计算机网络 打包销售', 98, '西藏', '翻译者：XXX 编写者：ABC', 3222, 19, 'https://ebookpicture.oss-cn-hangzhou.aliyuncs.com/image/8.jpg', '机械工业出版社出版', '这么多人都推荐深入理解计算机系统。也就是csapp。那它到底是一本什么样的书那。我们先来看它的英文名《ComputerSystem:A programer perspective》翻译过来就是程序员视角下的计算机系统。因此这本书的受众，一开始就不是面向普通人群。它更是一本计算机科班生，或者希望详细学习了解计算机的人的一本入门读物。这本书是cmu（美国cs四大名校之一）计算机学院的院长的力作，而且基本上cmu计算机最火的课之一。每年都被抢爆。所以非常值得大家学习。除了cmu之外目前国内许多的计算机名校都基于这本书开设了相关课程。比如北大、交大、哈工大等等。都对这门课给予了非常高的地位。其他学校不太了解。但是哈工大16级课改，直接用这门课取代了计算机组成原理（要知道唐奶奶的计组书有多出名）而且高达5个学分，可见这门课的重要性。', NULL);
INSERT INTO `books` VALUES (9, '978-7-000-00008-8', '软件工程原理与实践教材 沈备军编著', '软件工程原理与实践', 122, '上海', '沈备军等', 2232, 0, 'https://ebookpicture.oss-cn-hangzhou.aliyuncs.com/image/9.jpg', '上海交通大学出版社', NULL, NULL);
INSERT INTO `books` VALUES (10, '978-7-000-00009-9', '大学计算机网路', '大学计算机网路教材 电子工业出版', 118, '南京', 'Alabama', 7830, 6, 'https://ebookpicture.oss-cn-hangzhou.aliyuncs.com/image/10.jpg', '电子工业出版社', NULL, NULL);
INSERT INTO `books` VALUES (11, '978-7-000-00010-0', '四大名著', '四大名著《西游记》《水浒传》《三国演义》《红楼梦》套装书籍', 209, '北京', '曹雪芹、吴承恩等', 9240, 5, 'https://ebookpicture.oss-cn-hangzhou.aliyuncs.com/image/11.jpg', '商务出版社', '中国古典长篇小说四大名著，简称四大名著，是指《水浒传》《三国演义》《西游记》《红楼梦》（按照成书先后顺序）这四部巨著。\r\n四大古典名著是中国文学史中的经典作品，是世界宝贵的文化遗产 [1]  。此四大巨著在世界文学史上的地位是难分高低的，都有着极高的文学水平和艺术成就，细致的刻画和所蕴含的深刻思想都为历代读者所称道，其中的故事、场景、人物已经深深地影响了中国人的思想观念、价值取向。可谓中国文学史上的四座伟大丰碑。', NULL);
INSERT INTO `books` VALUES (12, '978-7-000-00011-1', '月刊Piano', '月刊Piano外文钢琴乐谱', 221, '日本', '汇编版本', 7830, 0, 'https://ebookpicture.oss-cn-hangzhou.aliyuncs.com/image/12.jpg', 'XX出版社', NULL, NULL);
INSERT INTO `books` VALUES (13, '978-7-000-00012-2', '原神插画集', '原神插画集【原神官方】原神插画集Vol.1套装礼盒GenshinImpact', 1233, '杭州', '汇编版本', 20300, 0, 'https://ebookpicture.oss-cn-hangzhou.aliyuncs.com/image/13.jpg', '动画出版社', NULL, NULL);
INSERT INTO `books` VALUES (14, '978-7-000-00013-3', '伊索寓言故事集合', '伊索寓言故事集合', 99, '南昌', '汇编版本', 2400, 4, 'https://ebookpicture.oss-cn-hangzhou.aliyuncs.com/image/14.jpg', '浙江教育出版社', '《伊索寓言》相传为公元前六世纪被释放的古希腊奴隶伊索所著的寓言集，并加入印度、阿拉伯及基督教故事，共357篇。\r\n《伊索寓言》中收录有300多则寓言，内容大多与动物有关。书中讲述的故事简短精练，刻画出来的形象鲜明生动，每则故事都蕴含哲理，或揭露和批判社会矛盾，或抒发对人生的领悟，或总结日常生活经验。 [1]  该寓言集通过描写动物之间的关系来表现当时的社会关系，主要是压迫者和被压迫者之间的不平等关系。寓言作者谴责当时社会上人压迫人的现象，号召受欺凌的人团结起来与恶人进行斗争。 [2] \r\n《伊索寓言》对后代欧洲寓言的创作产生了重大的影响，不仅是西方寓言文学的典范之作，也是世界上传播最多的经典作品之一。', NULL);
INSERT INTO `books` VALUES (15, '978-7-000-00014-4', '星火六级英语', '六级英语真题试卷考试单词词汇书历年模拟题卷子练习题大学6级听力阅读专项训练火星标学教育', 95, '杭州', '本书编委会', 5221, 18, 'https://ebookpicture.oss-cn-hangzhou.aliyuncs.com/image/15.jpg', '科学出版社', NULL, NULL);
INSERT INTO `books` VALUES (17, '测试文本测试文本', '测试文本测试文本', '测试文本测试文本', 9876, '南京', '测试', 1234, 0, 'https://ebookpicture.oss-cn-hangzhou.aliyuncs.com/image/1655274488160.jpg', '测试', '测试文本测试文本', NULL);
INSERT INTO `books` VALUES (18, '987123321123', '阶梯图书馆', '阶梯图书馆', 136, '上海', 'author', 1932, 0, 'https://ebookpicture.oss-cn-hangzhou.aliyuncs.com/image/1655568309465.png', '人民教育出版社', '儿童读物，生动有趣', NULL);
INSERT INTO `books` VALUES (20, '111111111111', '111111111111', '漫画中国历史', 366, '上海', '作者', 1266, 0, 'https://ebookpicture.oss-cn-hangzhou.aliyuncs.com/image/1655601692888.png', '出版社', '222222222', NULL);
INSERT INTO `books` VALUES (21, '978-7-000-00000-0', '高中必刷题', '2022-2023新教材高中必刷题人教版A版必修第一、二册 新华书店正版', 90, '湖南', '必刷题编者', 3940, 0, 'https://ebookpicture.oss-cn-hangzhou.aliyuncs.com/image/1.jpg', '首都师范大学出版', '根据高中教材，划分知识点，分为课时、节、章三个层级，分层设置基础题型、易错、提升等栏目，重要知识点设置专题，综合知识点设置刷综合栏目，每章末按知识点对高考真题进行分组，安排全章综合训练等，打造多层次训练体系。选题兼顾经典与新颖，新题以各地名校试题为主。题型全面，层次清晰，进行编写，方便教师课堂随堂训练或检测，以及学生课后针对学科弱项进行自我强化。搭配对应版本的知识讲解册，由一线教师参与编写，在总结分析学生的学习问题的基础上，按照深层理解、拓展、突破三个层级进行重点讲解，帮助学生深入理解知识规律，建立学科知识体系，迅速完成由学新知识到得高分的过渡。', NULL);
INSERT INTO `books` VALUES (22, '978-7-000-00000-0', '高中必刷题', '2022-2022新教材高中必刷题人教版A版必修第一、二册 新华书店正版', 90, '湖南', '必刷题编者', 3940, 0, 'https://ebookpicture.oss-cn-hangzhou.aliyuncs.com/image/1.jpg', '首都师范大学出版', '根据高中教材，划分知识点，分为课时、节、章三个层级，分层设置基础题型、易错、提升等栏目，重要知识点设置专题，综合知识点设置刷综合栏目，每章末按知识点对高考真题进行分组，安排全章综合训练等，打造多层次训练体系。选题兼顾经典与新颖，新题以各地名校试题为主。题型全面，层次清晰，进行编写，方便教师课堂随堂训练或检测，以及学生课后针对学科弱项进行自我强化。搭配对应版本的知识讲解册，由一线教师参与编写，在总结分析学生的学习问题的基础上，按照深层理解、拓展、突破三个层级进行重点讲解，帮助学生深入理解知识规律，建立学科知识体系，迅速完成由学新知识到得高分的过渡。', NULL);
INSERT INTO `books` VALUES (23, '978-333-123-1234', '偷书贼', '热销的 偷书贼', 1999, '上海', '偷书贼的作者', 2270, 0, 'https://ebookpicture.oss-cn-hangzhou.aliyuncs.com/image/1657252614155.jpg', '偷书贼出版社', '这是一本好书', NULL);

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
-- Records of orderitem
-- ----------------------------
INSERT INTO `orderitem` VALUES (1, -1, 'ebookuser1', 1, 3, 0, 0, '2022-05-22 17:48:11', NULL);
INSERT INTO `orderitem` VALUES (2, -1, 'ebookadmin', 1, 3, 0, 0, '2022-05-22 18:07:55', NULL);
INSERT INTO `orderitem` VALUES (3, -1, 'ebookadmin', 1, 2, 0, 0, '2022-06-15 15:55:26', NULL);
INSERT INTO `orderitem` VALUES (4, 2, 'ebookadmin', 2, 2, 1, 1220, '2022-06-15 19:30:43', NULL);
INSERT INTO `orderitem` VALUES (5, 2, 'ebookadmin', 2, 3, 2, 8040, '2022-06-15 19:30:47', NULL);
INSERT INTO `orderitem` VALUES (14, 2, 'ebookadmin', 3, 2, 3, 3660, '2022-06-16 15:44:18', NULL);
INSERT INTO `orderitem` VALUES (15, 2, 'ebookadmin', 3, 3, 1, 4020, '2022-06-16 15:44:22', NULL);
INSERT INTO `orderitem` VALUES (16, 2, 'user2', 4, 2, 2, 2440, '2022-06-16 15:45:26', NULL);
INSERT INTO `orderitem` VALUES (17, 2, 'user2', 4, 4, 2, 4600, '2022-06-16 15:45:29', NULL);
INSERT INTO `orderitem` VALUES (18, 2, 'user2', 5, 11, 3, 27720, '2022-06-16 15:45:40', NULL);
INSERT INTO `orderitem` VALUES (19, 2, 'user2', 5, 15, 9, 46989, '2022-06-16 15:45:44', NULL);
INSERT INTO `orderitem` VALUES (20, -1, 'ebookadmin', 2, 2, 0, 0, '2022-06-16 15:51:21', NULL);
INSERT INTO `orderitem` VALUES (21, -1, 'ebookadmin', 2, 2, 0, 0, '2022-06-18 11:50:40', NULL);
INSERT INTO `orderitem` VALUES (22, 2, 'user2', 6, 4, 2, 4600, '2022-06-18 13:28:14', NULL);
INSERT INTO `orderitem` VALUES (23, 2, 'user2', 6, 2, 3, 3660, '2022-06-18 13:28:17', NULL);
INSERT INTO `orderitem` VALUES (24, 2, 'user2', 6, 10, 1, 7830, '2022-06-18 13:28:20', NULL);
INSERT INTO `orderitem` VALUES (25, 2, 'user4', 7, 3, 2, 8040, '2022-06-18 19:28:49', NULL);
INSERT INTO `orderitem` VALUES (26, 2, 'user4', 7, 8, 2, 6444, '2022-06-18 19:28:52', NULL);
INSERT INTO `orderitem` VALUES (27, 2, 'user4', 7, 6, 3, 11700, '2022-06-18 19:28:55', NULL);
INSERT INTO `orderitem` VALUES (28, 2, 'user5', 8, 2, 3, 3660, '2022-06-18 19:29:17', NULL);
INSERT INTO `orderitem` VALUES (29, 2, 'user5', 8, 4, 3, 6900, '2022-06-18 19:29:20', NULL);
INSERT INTO `orderitem` VALUES (30, 2, 'user5', 8, 10, 3, 23490, '2022-06-18 19:29:23', NULL);
INSERT INTO `orderitem` VALUES (31, 2, 'user9', 9, 2, 2, 2440, '2022-06-18 20:04:23', NULL);
INSERT INTO `orderitem` VALUES (32, 2, 'user9', 9, 7, 2, 4400, '2022-06-18 20:04:27', NULL);
INSERT INTO `orderitem` VALUES (33, 2, 'user9', 10, 10, 2, 15660, '2022-06-18 20:04:35', NULL);
INSERT INTO `orderitem` VALUES (34, 2, 'user8', 11, 6, 2, 7800, '2022-06-18 20:04:57', NULL);
INSERT INTO `orderitem` VALUES (35, 2, 'user8', 11, 11, 2, 18480, '2022-06-18 20:04:59', NULL);
INSERT INTO `orderitem` VALUES (36, 2, 'user8', 11, 8, 1, 3222, '2022-06-18 20:05:02', NULL);
INSERT INTO `orderitem` VALUES (37, 2, 'user7', 12, 2, 2, 2440, '2022-06-18 20:05:24', NULL);
INSERT INTO `orderitem` VALUES (38, 2, 'user7', 12, 5, 1, 8919, '2022-06-18 20:05:32', NULL);
INSERT INTO `orderitem` VALUES (39, 2, 'user10', 13, 8, 2, 6444, '2022-06-18 20:05:58', NULL);
INSERT INTO `orderitem` VALUES (40, 2, 'user11', 14, 8, 2, 6444, '2022-06-18 20:06:18', NULL);
INSERT INTO `orderitem` VALUES (41, 2, 'user11', 14, 7, 2, 4400, '2022-06-18 20:06:21', NULL);
INSERT INTO `orderitem` VALUES (42, 0, 'user7', 2, 15, 1, 5221, '2022-07-07 00:03:40', NULL);
INSERT INTO `orderitem` VALUES (43, 0, 'user7', 2, 2, 1, 1220, '2022-07-07 00:03:43', NULL);
INSERT INTO `orderitem` VALUES (44, -1, 'user4', 1, 3, 0, 0, '2022-07-07 08:12:45', NULL);
INSERT INTO `orderitem` VALUES (45, 2, 'user4', 15, 8, 3, 9666, '2022-07-07 08:12:48', NULL);
INSERT INTO `orderitem` VALUES (46, -1, 'user4', 1, 15, 0, 0, '2022-07-07 15:22:50', NULL);
INSERT INTO `orderitem` VALUES (47, 2, 'user4', 15, 15, 4, 20884, '2022-07-07 17:31:50', NULL);
INSERT INTO `orderitem` VALUES (48, 2, 'user4', 16, 8, 7, 22554, '2022-07-08 00:36:26', NULL);
INSERT INTO `orderitem` VALUES (49, 2, 'user4', 16, 4, 3, 6900, '2022-07-08 00:41:22', NULL);
INSERT INTO `orderitem` VALUES (50, 2, 'user7', 18, 15, 5, 26105, '2022-07-08 00:57:34', NULL);
INSERT INTO `orderitem` VALUES (51, -1, 'ebookadmin', 1, 23, 0, 0, '2022-07-08 11:58:16', NULL);
INSERT INTO `orderitem` VALUES (52, 2, 'testuser1', 19, 8, 2, 3222, '2022-07-08 11:59:33', NULL);
INSERT INTO `orderitem` VALUES (53, 2, 'testuser1', 19, 4, 2, 2300, '2022-07-08 11:59:41', NULL);
INSERT INTO `orderitem` VALUES (54, -1, 'user9', 1, 2, 0, 0, '2022-07-09 00:04:29', NULL);
INSERT INTO `orderitem` VALUES (55, 2, 'user9', 20, 4, 6, 13800, '2022-07-09 00:04:32', NULL);
INSERT INTO `orderitem` VALUES (56, 2, 'user9', 21, 4, 4, 9200, '2022-07-09 07:29:47', NULL);

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
-- Records of orders
-- ----------------------------
INSERT INTO `orders` VALUES (1, 'system1', '2022-06-15 15:55:38', '系统作废单', '13320030000', '000000', '系统作废订单', 0);
INSERT INTO `orders` VALUES (2, 'system1', '2022-06-15 19:30:54', '购物车订单组', '00000000000', '000000', '购物车订单组', 0);
INSERT INTO `orders` VALUES (3, 'ebookadmin', '2022-06-16 15:44:28', '全局管理员', '13320030000', '400000', '上海交通大学', 7680);
INSERT INTO `orders` VALUES (4, 'user2', '2022-06-16 15:45:36', 'Tom', '12332112345', '400000', 'tom的住所', 7040);
INSERT INTO `orders` VALUES (5, 'user2', '2022-06-16 15:45:54', 'Tom', '12332112345', '400000', 'tom的住所', 74709);
INSERT INTO `orders` VALUES (6, 'user2', '2022-06-18 13:28:27', 'Tom', '12332112345', '400000', 'tom的住所', 16090);
INSERT INTO `orders` VALUES (7, 'user4', '2022-06-18 19:29:04', 'Tom3', '11111113333', '400000', 'tom3的住所', 26184);
INSERT INTO `orders` VALUES (8, 'user5', '2022-06-18 19:29:35', 'Tom4', '12332112345', '400000', 'tom的住所', 34050);
INSERT INTO `orders` VALUES (9, 'user9', '2022-06-18 20:04:32', 'TomN', '12345645645', '400000', 'tom的住所', 6840);
INSERT INTO `orders` VALUES (10, 'user9', '2022-06-18 20:04:42', 'TomN', '12345645645', '400000', 'tom的住所', 15660);
INSERT INTO `orders` VALUES (11, 'user8', '2022-06-18 20:05:08', 'TomN', '12345645645', '400000', 'tom的住所', 29502);
INSERT INTO `orders` VALUES (12, 'user7', '2022-06-18 20:05:37', 'TomN', '11111113333', '400000', 'tom3的住所', 11359);
INSERT INTO `orders` VALUES (13, 'user10', '2022-06-18 20:06:03', 'TomN', '12345645645', '400000', 'tom的住所', 6444);
INSERT INTO `orders` VALUES (14, 'user11', '2022-06-18 20:06:26', 'TomN', '12345645645', '400000', 'tom的住所', 10844);
INSERT INTO `orders` VALUES (15, 'user4', '2022-07-07 17:53:35', 'Tom3', '11111113333', '400000', 'tom3的住所', 30550);
INSERT INTO `orders` VALUES (16, 'user4', '2022-07-08 00:43:54', 'Tom3', '11111113333', '400000', 'tom3的住所', 29454);
INSERT INTO `orders` VALUES (17, 'user5', '2022-07-08 00:51:01', 'Tom4', '12332112345', '400000', 'tom的住所', 0);
INSERT INTO `orders` VALUES (18, 'user7', '2022-07-08 00:57:34', 'TomN', '11111113333', '400000', 'tom3的住所', 26105);
INSERT INTO `orders` VALUES (19, 'testuser1', '2022-07-08 11:59:49', 'testuser1', '+8618062765851', '400000', '测试的收货地址', 5522);
INSERT INTO `orders` VALUES (20, 'user9', '2022-07-09 00:05:03', 'zzq', '12345645645', '400000', '住所我的', 13800);
INSERT INTO `orders` VALUES (21, 'user9', '2022-07-09 07:29:47', 'TomN', '12345645645', '400000', 'tom3的住所', 9200);

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

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('ebookadmin', '123456', 0, '全局管理员', 'zhangziqian@sjtu.edu.cn', '上海交通大学', '13320030000', 0);
INSERT INTO `users` VALUES ('ebookuser1', '12345678', 2, '张子谦', 'zhangziqian@sjtu.edu.cn', '上海市闵行区东川路800号', '18062765851', 0);
INSERT INTO `users` VALUES ('musicminion', '123456', 2, 'musicminion', 'zhang20021014@126.com', 'None11', '+8618062765851', 0);
INSERT INTO `users` VALUES ('system1', 'nmPoGt63xb', 2, 'Johnny Robertson', 'johnnr1107@outlook.com', '13-3-7 Toyohira 3 Jo, Toyohira Ward', '11-873-7326', 0);
INSERT INTO `users` VALUES ('system10', 'ZQ1l6qTpcS', 2, 'Mo Lu', 'lmo60@icloud.com', '490 1st Ave', '718-635-7298', 0);
INSERT INTO `users` VALUES ('system2', 'onUybHu5yd', 2, 'Yan Rui', 'yanrui@gmail.com', '855 Wall Street', '213-284-1850', 0);
INSERT INTO `users` VALUES ('system3', 'aknfc8SiAO', 2, 'Su Rui', 'rusu@icloud.com', '8 1-1 Honjocho, Yamatokoriyama', '74-725-8675', 0);
INSERT INTO `users` VALUES ('system4', 'OYJrPgYFQ2', 2, 'Mori Akina', 'akimori829@outlook.com', '497 Spring Gardens', '7670 428488', 0);
INSERT INTO `users` VALUES ('system5', 'HOEPTVbSGJ', 2, 'Xiong Shihan', 'xiong4@outlook.com', '77 Wall Street', '213-137-3133', 0);
INSERT INTO `users` VALUES ('system6', 'QIY5Guw4Hq', 2, 'Ueno Mio', 'uenomio2001@mail.com', '177 Nostrand Ave', '718-601-1242', 0);
INSERT INTO `users` VALUES ('system7', '2GRTuLMI8m', 2, 'Mary Rice', 'mrice@gmail.com', '76 Huaxia St, Jinghua Shangquan', '760-579-5750', 0);
INSERT INTO `users` VALUES ('system8', 'Nukijym0cR', 2, 'Heung Wing Fat', 'heungwf@mail.com', '656 Daxin S Rd, Daxin Shangquan, Tianhe Qu', '185-1835-0485', 0);
INSERT INTO `users` VALUES ('system9', 'JDPCeU3aFj', 2, 'Jerry Chen', 'jerry1@hotmail.com', '167 Fern Street', '330-226-0210', 0);
INSERT INTO `users` VALUES ('testuser1', '123456', 2, 'testuser1', 'zhang20021014@126.com', '测试的收货地址', '+8618062765851', 0);
INSERT INTO `users` VALUES ('user10', '123456', 2, 'TomN', 'tom3@sjtu.edu.cn', 'tom的住所', '12345645645', 0);
INSERT INTO `users` VALUES ('user11', '123456', 2, 'TomN', 'tom3@sjtu.edu.cn', 'tom的住所', '12345645645', 0);
INSERT INTO `users` VALUES ('user12', '123456', 2, 'user12', 'zhang@126.com', '我的地址', '10000023123', 0);
INSERT INTO `users` VALUES ('user2', '123456', 2, 'Tom', 'tom@sjtu.edu.cn', 'tom的住所', '12332112345', 0);
INSERT INTO `users` VALUES ('user3', '123456', 2, 'Tom2', 'tom2@sjtu.edu.cn', 'tom2的住所', '12332112345', 0);
INSERT INTO `users` VALUES ('user4', '123456', 2, 'Tom3', 'tom3@sjtu.edu.cn', 'tom3的住所', '11111113333', 0);
INSERT INTO `users` VALUES ('user5', '123456', 2, 'Tom4', 'tom@sjtu.edu.cn', 'tom的住所', '12332112345', 0);
INSERT INTO `users` VALUES ('user6', '123456', 2, 'TomN', 'tom2@sjtu.edu.cn', 'tom2的住所', '12332112345', 0);
INSERT INTO `users` VALUES ('user7', '123456', 2, 'TomN', 'tom3@sjtu.edu.cn', 'tom3的住所', '11111113333', 0);
INSERT INTO `users` VALUES ('user8', '123456', 2, 'TomN', 'tom3@sjtu.edu.cn', 'tom3的住所', '12345645645', 0);
INSERT INTO `users` VALUES ('user9', '123456', 2, 'TomN', 'tom3@sjtu.edu.cn', 'tom3的住所', '12345645645', 0);

SET FOREIGN_KEY_CHECKS = 1;
