/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 50558
 Source Host           : localhost:3306
 Source Schema         : jlzm

 Target Server Type    : MySQL
 Target Server Version : 50558
 File Encoding         : 65001

 Date: 24/01/2018 18:11:55
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for customer
-- ----------------------------
DROP TABLE IF EXISTS `customer`;
CREATE TABLE `customer`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `address` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `phone` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `email` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `status` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of customer
-- ----------------------------
INSERT INTO `customer` VALUES (1, 'asdasd', 'beijing', '123123', 'asf@sdfa.com', '4');

-- ----------------------------
-- Table structure for dept
-- ----------------------------
DROP TABLE IF EXISTS `dept`;
CREATE TABLE `dept`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `partment` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `color` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of dept
-- ----------------------------
INSERT INTO `dept` VALUES (1, '研发', '框架研发', '#126AFF');
INSERT INTO `dept` VALUES (2, '研发', 'BU研发', '#FFD600');
INSERT INTO `dept` VALUES (3, '产品', '公共产品', '#F80728');
INSERT INTO `dept` VALUES (4, '产品', 'BU产品', '#05C147');
INSERT INTO `dept` VALUES (5, '产品', '启明星', '#FF4EB9');
INSERT INTO `dept` VALUES (6, '项目', '项目管理', '#EE810D');

-- ----------------------------
-- Table structure for emp
-- ----------------------------
DROP TABLE IF EXISTS `emp`;
CREATE TABLE `emp`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `username` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `password` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `partment` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `tel` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `email` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `tag` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `creater` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  `token` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 113 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of emp
-- ----------------------------
INSERT INTO `emp` VALUES (1, '6d7f0ef9-4b69-4d2b-a8af-a8d5de8f5ede', '宋江', '框架研发', '18604317890', 'test0@126.com', '研发', NULL, NULL, NULL, NULL);
INSERT INTO `emp` VALUES (2, 'deb3a693-2100-4565-8dbd-f67c7c6570da', '卢俊义', '框架研发', '18604317891', 'test1@126.com', '研发', NULL, NULL, NULL, NULL);
INSERT INTO `emp` VALUES (3, '1b8278de-60af-4cbd-bc08-c4f7a72a016f', '吴用', '框架研发', '18604317892', 'test0@127.com', '研发', NULL, NULL, NULL, NULL);
INSERT INTO `emp` VALUES (4, '1ee325cc-b576-492d-bc7e-cfa101e96588', '公孙胜', '框架研发', '18604317893', 'test1@127.com', '研发', NULL, NULL, NULL, NULL);
INSERT INTO `emp` VALUES (5, '8a3af82a-32dd-417c-b3a7-cb9240dea666', '关胜', '框架研发', '18604317894', 'test0@128.com', '研发', NULL, NULL, NULL, NULL);
INSERT INTO `emp` VALUES (6, 'f3f85267-698e-4322-a98c-4846f43c865a', '林冲', '框架研发', '18604317895', 'test1@128.com', '研发', NULL, NULL, NULL, NULL);
INSERT INTO `emp` VALUES (7, '52cd0c64-66c9-451d-9032-4515938372c1', '秦明', '启明星', '18604317896', 'test0@129.com', '研发', NULL, NULL, NULL, NULL);
INSERT INTO `emp` VALUES (8, '82425c18-562e-468c-9a1a-c63701db9e45', '呼延灼', '框架研发', '18604317897', 'test1@129.com', '研发', NULL, NULL, NULL, NULL);
INSERT INTO `emp` VALUES (9, '65445059-a254-425b-a4f8-7406250e7fa1', '花荣', 'BU产品', '18604317898', 'test0@130.com', '产品', NULL, NULL, NULL, NULL);
INSERT INTO `emp` VALUES (10, '6f1e1963-c8b8-4119-a7a0-7ff2c2db6b25', '柴进', 'BU产品', '18604317899', 'test1@130.com', '产品', NULL, NULL, NULL, NULL);
INSERT INTO `emp` VALUES (11, '8ff2a745-0104-4ebf-b3a7-1362487d1ac0', '李应', 'BU研发', '18604317900', 'test0@131.com', '研发', NULL, NULL, NULL, NULL);
INSERT INTO `emp` VALUES (12, 'b38e3bf6-4bcd-4140-b0e3-a282dac693b0', '朱仝', '公共产品', '18604317901', 'test1@131.com', '产品', NULL, NULL, NULL, NULL);
INSERT INTO `emp` VALUES (13, 'dc5d943e-2be8-408f-bbce-e227c24ba2c9', '鲁智深', '启明星', '18604317902', 'test0@132.com', '研发', NULL, NULL, NULL, NULL);
INSERT INTO `emp` VALUES (14, 'a0608c70-4d47-4da3-ab80-1a7560d7d2ad', '武松', '项目管理', '18604317903', 'test1@132.com', '项目', NULL, NULL, NULL, NULL);
INSERT INTO `emp` VALUES (15, 'c4203cbd-3b9f-4314-8c21-5f7aa5ed4017', '董平', '项目管理', '18604317904', 'test0@133.com', '项目', NULL, NULL, NULL, NULL);
INSERT INTO `emp` VALUES (16, '4d07f848-120e-425a-9f56-658e87ef862b', '张清', 'BU产品', '18604317905', 'test1@133.com', '产品', NULL, NULL, NULL, NULL);
INSERT INTO `emp` VALUES (17, '5c08059a-a89b-4e68-a123-f2c27671ae5d', '杨志', '框架研发', '18604317906', 'test0@134.com', '研发', NULL, NULL, NULL, NULL);
INSERT INTO `emp` VALUES (18, 'd504f074-aae2-4879-aefc-13a4b9029caf', '徐宁', '启明星', '18604317907', 'test1@134.com', '研发', NULL, NULL, NULL, NULL);
INSERT INTO `emp` VALUES (19, 'ccdab1bc-aa4e-40a5-8274-6a41c2344ad8', '索超', '框架研发', '18604317908', 'test0@135.com', '研发', NULL, NULL, NULL, NULL);
INSERT INTO `emp` VALUES (20, '245f35cc-c110-4a89-bca2-4abd35951db1', '戴宗', '公共产品', '18604317909', 'test1@135.com', '研发', NULL, NULL, NULL, NULL);
INSERT INTO `emp` VALUES (21, 'd908e3c2-f4a0-499b-9827-e852edbba396', '刘唐', '框架研发', '18604317910', 'test0@136.com', '研发', NULL, NULL, NULL, NULL);
INSERT INTO `emp` VALUES (22, '14d5afa9-444d-4117-a132-5946438b7427', '李逵', 'BU产品', '18604317911', 'test1@136.com', '产品', NULL, NULL, NULL, NULL);
INSERT INTO `emp` VALUES (23, '6a646666-e1cf-4c38-9ee7-73b4a5145a97', '史进', 'BU研发', '18604317912', 'test0@137.com', '研发', NULL, NULL, NULL, NULL);
INSERT INTO `emp` VALUES (24, 'b18a6d94-53c6-4925-b88b-21dad724eedc', '穆弘', 'BU研发', '18604317913', 'test1@137.com', '研发', NULL, NULL, NULL, NULL);
INSERT INTO `emp` VALUES (25, 'a03383c0-1df4-4629-ab05-6d01539a11d5', '雷横', '框架研发', '18604317914', 'test0@138.com', '研发', NULL, NULL, NULL, NULL);
INSERT INTO `emp` VALUES (26, 'd37b358c-d1f5-4ea3-ae34-f878948cf502', '李俊', '框架研发', '18604317915', 'test1@138.com', '研发', NULL, NULL, NULL, NULL);
INSERT INTO `emp` VALUES (27, 'e507f4c4-4d6c-4234-a71d-009302defbe7', '阮小二', '框架研发', '18604317916', 'test0@139.com', '研发', NULL, NULL, NULL, NULL);
INSERT INTO `emp` VALUES (28, '38b8c22f-534e-4b5b-a615-95fcd5fc5913', '张横', '框架研发', '18604317917', 'test1@139.com', '研发', NULL, NULL, NULL, NULL);
INSERT INTO `emp` VALUES (29, '58481a5e-3a27-4aeb-8f63-25e9196492f8', '阮小五', '框架研发', '18604317918', 'test0@140.com', '研发', NULL, NULL, NULL, NULL);
INSERT INTO `emp` VALUES (30, 'c82cc161-aeb2-4263-8828-dd05c9bcf057', '张顺', '框架研发', '18604317919', 'test1@140.com', '研发', NULL, NULL, NULL, NULL);
INSERT INTO `emp` VALUES (31, 'f908a6d1-c436-4771-aaaf-e12e2de2a910', '阮小七', '启明星', '18604317920', 'test0@141.com', '研发', NULL, NULL, NULL, NULL);
INSERT INTO `emp` VALUES (32, '9f80f002-ec1e-49ce-915e-96fe080d457b', '杨雄', '框架研发', '18604317921', 'test1@141.com', '研发', NULL, NULL, NULL, NULL);
INSERT INTO `emp` VALUES (33, 'aeef3584-95e4-4f7f-a038-52a550edb4c0', '石秀', 'BU产品', '18604317922', 'test0@142.com', '产品', NULL, NULL, NULL, NULL);
INSERT INTO `emp` VALUES (34, '2e633357-364b-466b-ad30-9b9612741158', '解珍', 'BU产品', '18604317923', 'test1@142.com', '产品', NULL, NULL, NULL, NULL);
INSERT INTO `emp` VALUES (35, 'a5e91c91-c8bc-4927-9f0a-09e4840982d2', '解宝', 'BU研发', '18604317924', 'test0@143.com', '研发', NULL, NULL, NULL, NULL);
INSERT INTO `emp` VALUES (36, 'cfc4b54e-fd9b-4641-893b-0420f009d57f', '燕青', '公共产品', '18604317925', 'test1@143.com', '产品', NULL, NULL, NULL, NULL);
INSERT INTO `emp` VALUES (37, 'c6f181a6-c3b9-4d0e-9c80-7dd7e0716f5b', '朱武', '启明星', '18604317926', 'test0@144.com', '研发', NULL, NULL, NULL, NULL);
INSERT INTO `emp` VALUES (38, 'c35bdfdd-2a49-43bd-a859-c4f43d2b3a90', '黄信', '项目管理', '18604317927', 'test1@144.com', '项目', NULL, NULL, NULL, NULL);
INSERT INTO `emp` VALUES (39, '42930556-6d36-4859-b218-f94ebd120875', '孙立', '项目管理', '18604317928', 'test0@145.com', '项目', NULL, NULL, NULL, NULL);
INSERT INTO `emp` VALUES (40, 'f8eaa957-05cc-46fa-b41d-5a6cad8db6fa', '宣赞', 'BU产品', '18604317929', 'test1@145.com', '产品', NULL, NULL, NULL, NULL);
INSERT INTO `emp` VALUES (41, 'c2fe569c-4a87-47e5-8a66-10773c9f031f', '郝思文', '框架研发', '18604317930', 'test0@146.com', '研发', NULL, NULL, NULL, NULL);
INSERT INTO `emp` VALUES (42, '5cff4360-6d71-4e59-b5f9-bb54ae2e146b', '韩滔', '启明星', '18604317931', 'test1@146.com', '研发', NULL, NULL, NULL, NULL);
INSERT INTO `emp` VALUES (43, 'feaaca18-865c-4bd9-bdf7-003425c10b81', '彭玘', '框架研发', '18604317932', 'test0@147.com', '研发', NULL, NULL, NULL, NULL);
INSERT INTO `emp` VALUES (44, 'ef33433d-4199-4555-ba2a-c42ae8248b3c', '单廷圭', '公共产品', '18604317933', 'test1@147.com', '研发', NULL, NULL, NULL, NULL);
INSERT INTO `emp` VALUES (45, '566433c2-1e67-41bf-b9a1-19f205a06c52', '魏定国', '框架研发', '18604317934', 'test0@148.com', '研发', NULL, NULL, NULL, NULL);
INSERT INTO `emp` VALUES (46, 'a492502c-d1d4-4ff6-a68a-4683dc68ec9e', '萧让', 'BU产品', '18604317935', 'test1@148.com', '产品', NULL, NULL, NULL, NULL);
INSERT INTO `emp` VALUES (47, '71730f3b-5c3f-4d36-bc45-ab6b084e87df', '裴宣', 'BU研发', '18604317936', 'test0@149.com', '研发', NULL, NULL, NULL, NULL);
INSERT INTO `emp` VALUES (48, 'db70f5b4-cd35-4231-bc10-b07df8601914', '欧鹏', 'BU研发', '18604317937', 'test1@149.com', '研发', NULL, NULL, NULL, NULL);
INSERT INTO `emp` VALUES (49, '2c7703f6-688a-4860-b513-7d955e1ec860', '邓飞', '框架研发', '18604317938', 'test0@150.com', '研发', NULL, NULL, NULL, NULL);
INSERT INTO `emp` VALUES (50, 'd84fed1c-4acc-40b6-9797-dd8c5ce81b8e', '燕顺', '框架研发', '18604317939', 'test1@150.com', '研发', NULL, NULL, NULL, NULL);
INSERT INTO `emp` VALUES (51, '5195fa26-d522-437d-a906-725dd0869526', '杨林', '框架研发', '18604317940', 'test0@151.com', '研发', NULL, NULL, NULL, NULL);
INSERT INTO `emp` VALUES (52, '4a6a58ad-0e64-4a15-8166-3dee027daa05', '凌振', '框架研发', '18604317941', 'test1@151.com', '研发', NULL, NULL, NULL, NULL);
INSERT INTO `emp` VALUES (53, 'de4e9b5e-4438-47cf-807b-d18e299ceeed', '蒋敬', '框架研发', '18604317942', 'test0@152.com', '研发', NULL, NULL, NULL, NULL);
INSERT INTO `emp` VALUES (54, 'dbbff7d2-326b-4672-9ed8-eeb94d141b25', '吕方', '框架研发', '18604317943', 'test1@152.com', '研发', NULL, NULL, NULL, NULL);
INSERT INTO `emp` VALUES (55, 'ca337cb9-33af-4cac-b21d-b43aea3d4910', '郭盛', '启明星', '18604317944', 'test0@153.com', '研发', NULL, NULL, NULL, NULL);
INSERT INTO `emp` VALUES (56, '9c990e2d-90d3-4410-8b25-8c70816d673f', '道全', '框架研发', '18604317945', 'test1@153.com', '研发', NULL, NULL, NULL, NULL);
INSERT INTO `emp` VALUES (57, '4234d505-bdbf-4eb5-8617-5a1378a1e1d8', '皇甫端', 'BU产品', '18604317946', 'test0@154.com', '产品', NULL, NULL, NULL, NULL);
INSERT INTO `emp` VALUES (58, '0cba2af2-3681-40c8-b30a-f434380699e6', '王英', 'BU产品', '18604317947', 'test1@154.com', '产品', NULL, NULL, NULL, NULL);
INSERT INTO `emp` VALUES (59, '40c29bf9-6c1c-49e9-ad80-36620d28ea15', '扈三娘', 'BU研发', '18604317948', 'test0@155.com', '研发', NULL, NULL, NULL, NULL);
INSERT INTO `emp` VALUES (60, '3c825c63-4917-436b-85ae-dd4df64c3165', '鲍旭', '公共产品', '18604317949', 'test1@155.com', '产品', NULL, NULL, NULL, NULL);
INSERT INTO `emp` VALUES (61, 'e56bc045-9ddd-4033-b1c2-4a78d51220be', '樊瑞', '启明星', '18604317950', 'test0@156.com', '研发', NULL, NULL, NULL, NULL);
INSERT INTO `emp` VALUES (62, '2629f8a1-74cb-4761-85a0-0943c5fe0eeb', '孔明', '项目管理', '18604317951', 'test1@156.com', '项目', NULL, NULL, NULL, NULL);
INSERT INTO `emp` VALUES (63, 'a7a85039-c36d-483a-b1a2-4253d421ae2c', '孔亮', '项目管理', '18604317952', 'test0@157.com', '项目', NULL, NULL, NULL, NULL);
INSERT INTO `emp` VALUES (64, 'ae42e65e-3028-4bdb-8162-28517a4c3af8', '项充', 'BU产品', '18604317953', 'test1@157.com', '产品', NULL, NULL, NULL, NULL);
INSERT INTO `emp` VALUES (65, 'ed4bf492-0c5e-48fe-9b40-257adc3b624f', '李衮', '框架研发', '18604317954', 'test0@158.com', '研发', NULL, NULL, NULL, NULL);
INSERT INTO `emp` VALUES (66, 'e601d0be-1536-4b1e-a1f7-5654d88c17b5', '金大坚', '启明星', '18604317955', 'test1@158.com', '研发', NULL, NULL, NULL, NULL);
INSERT INTO `emp` VALUES (67, '201e3bc4-9731-45fb-816d-0b5e514eb23d', '马麟', '框架研发', '18604317956', 'test0@159.com', '研发', NULL, NULL, NULL, NULL);
INSERT INTO `emp` VALUES (68, 'c2655218-e6fe-4146-a850-c3ed63f2368b', '童威', '公共产品', '18604317957', 'test1@159.com', '研发', NULL, NULL, NULL, NULL);
INSERT INTO `emp` VALUES (69, '244ad3d4-6d9d-4b0a-8eb7-ed7f03648bc1', '童猛', '框架研发', '18604317958', 'test0@160.com', '研发', NULL, NULL, NULL, NULL);
INSERT INTO `emp` VALUES (70, '10cc9135-8636-4ea0-970a-dc867fdb85a1', '孟康', 'BU产品', '18604317959', 'test1@160.com', '产品', NULL, NULL, NULL, NULL);
INSERT INTO `emp` VALUES (71, '2e760c64-d54f-4acc-a137-36957ad2e406', '侯健', 'BU研发', '18604317960', 'test0@161.com', '研发', NULL, NULL, NULL, NULL);
INSERT INTO `emp` VALUES (72, 'b6a648d2-1397-492d-a28f-564d3d04d5af', '陈达', 'BU研发', '18604317961', 'test1@161.com', '研发', NULL, NULL, NULL, NULL);
INSERT INTO `emp` VALUES (73, '666dbcaf-e797-4164-83a0-3e6410b72479', '杨春', '框架研发', '18604317962', 'test0@162.com', '研发', NULL, NULL, NULL, NULL);
INSERT INTO `emp` VALUES (74, 'a2fa439c-003e-496b-a829-a7a7cd5c53a7', '郑天寿', '框架研发', '18604317963', 'test1@162.com', '研发', NULL, NULL, NULL, NULL);
INSERT INTO `emp` VALUES (75, 'c2d6b77e-daf0-4f5b-93aa-dd9addebf275', '陶宗旺', '框架研发', '18604317964', 'test0@163.com', '研发', NULL, NULL, NULL, NULL);
INSERT INTO `emp` VALUES (76, 'e95de57d-33ca-4892-b293-5fb6ecc73163', '宋清', '框架研发', '18604317965', 'test1@163.com', '研发', NULL, NULL, NULL, NULL);
INSERT INTO `emp` VALUES (77, '68a1d3b1-1f5a-4b7f-8e18-c6303df7a240', '乐和', '框架研发', '18604317966', 'test0@164.com', '研发', NULL, NULL, NULL, NULL);
INSERT INTO `emp` VALUES (78, '75491d27-348f-4cef-933f-1f6eb96e39fc', '龚旺', '框架研发', '18604317967', 'test1@164.com', '研发', NULL, NULL, NULL, NULL);
INSERT INTO `emp` VALUES (79, 'c76e5cc6-71eb-41dd-929e-a8c3aa9451f9', '丁得孙', '启明星', '18604317968', 'test0@165.com', '研发', NULL, NULL, NULL, NULL);
INSERT INTO `emp` VALUES (80, '13410b1d-070a-4c3d-862c-49fff95361d6', '穆春', '框架研发', '18604317969', 'test1@165.com', '研发', NULL, NULL, NULL, NULL);
INSERT INTO `emp` VALUES (81, '83956d64-92d0-4a6f-9ef9-cf3a9840cd90', '曹正', 'BU产品', '18604317970', 'test0@166.com', '产品', NULL, NULL, NULL, NULL);
INSERT INTO `emp` VALUES (82, '51937360-16f1-468e-9927-5be60ac44a1b', '宋万', 'BU产品', '18604317971', 'test1@166.com', '产品', NULL, NULL, NULL, NULL);
INSERT INTO `emp` VALUES (83, '05dfd026-1210-4c43-acf2-90d0752f7a06', '杜迁', 'BU研发', '18604317972', 'test0@167.com', '研发', NULL, NULL, NULL, NULL);
INSERT INTO `emp` VALUES (84, 'cb70f436-e12b-4c70-b7d1-b556104ca1ca', '薛永', '公共产品', '18604317973', 'test1@167.com', '产品', NULL, NULL, NULL, NULL);
INSERT INTO `emp` VALUES (85, 'c4eb71d5-6582-435a-bf14-30f9317aac15', '李忠', '启明星', '18604317974', 'test0@168.com', '研发', NULL, NULL, NULL, NULL);
INSERT INTO `emp` VALUES (86, '3e6d48f8-8acb-486b-ad6a-b7ad18b4c61c', '周通', '项目管理', '18604317975', 'test1@168.com', '项目', NULL, NULL, NULL, NULL);
INSERT INTO `emp` VALUES (87, '36ab4c38-c82e-452d-8b06-90feefda70a6', '汤隆', '项目管理', '18604317976', 'test0@169.com', '项目', NULL, NULL, NULL, NULL);
INSERT INTO `emp` VALUES (88, '9a06b41d-4fe7-4fba-b420-3fc197e31c9e', '杜兴', 'BU产品', '18604317977', 'test1@169.com', '产品', NULL, NULL, NULL, NULL);
INSERT INTO `emp` VALUES (89, 'fccda338-71b6-4f47-9747-4c6228fdb54a', '邹渊', '框架研发', '18604317978', 'test0@170.com', '研发', NULL, NULL, NULL, NULL);
INSERT INTO `emp` VALUES (90, 'ff61579a-b05b-4040-839d-077ba5d8bafe', '邹润', '启明星', '18604317979', 'test1@170.com', '研发', NULL, NULL, NULL, NULL);
INSERT INTO `emp` VALUES (91, 'bfa2c773-cb27-4377-883a-b08092539ed3', '朱贵', '框架研发', '18604317980', 'test0@171.com', '研发', NULL, NULL, NULL, NULL);
INSERT INTO `emp` VALUES (92, '2d53f282-30a8-4d27-9986-274b9990fd50', '朱富', '公共产品', '18604317981', 'test1@171.com', '研发', NULL, NULL, NULL, NULL);
INSERT INTO `emp` VALUES (93, 'd75e681a-95f5-43fa-bce9-55f748db0e03', '施恩', '框架研发', '18604317982', 'test0@172.com', '研发', NULL, NULL, NULL, NULL);
INSERT INTO `emp` VALUES (94, 'b731460d-c228-485e-9697-92ff2812330b', '蔡福', 'BU产品', '18604317983', 'test1@172.com', '产品', NULL, NULL, NULL, NULL);
INSERT INTO `emp` VALUES (95, '6e4d452a-322f-41ed-aef2-e4e2958a44d4', '蔡庆', 'BU研发', '18604317984', 'test0@173.com', '研发', NULL, NULL, NULL, NULL);
INSERT INTO `emp` VALUES (96, '80343ed4-f420-4df6-91c0-89cbf32c7466', '李立', 'BU研发', '18604317985', 'test1@173.com', '研发', NULL, NULL, NULL, NULL);
INSERT INTO `emp` VALUES (97, 'd36d4903-fe6a-47f4-97fa-e9c748bd6ad7', '李云', '框架研发', '18604317986', 'test0@174.com', '研发', NULL, NULL, NULL, NULL);
INSERT INTO `emp` VALUES (98, '718acede-fb51-4e0a-b705-102787c006bc', '焦挺', '框架研发', '18604317987', 'test1@174.com', '研发', NULL, NULL, NULL, NULL);
INSERT INTO `emp` VALUES (99, '302cd859-f87c-4298-bbe0-4ad85235a528', '石勇', '框架研发', '18604317988', 'test0@175.com', '研发', NULL, NULL, NULL, NULL);
INSERT INTO `emp` VALUES (100, 'a0fac3d4-8c46-4dea-b1b0-f9d97acf3f74', '孙新', '框架研发', '18604317989', 'test1@175.com', '研发', NULL, NULL, NULL, NULL);
INSERT INTO `emp` VALUES (101, 'f358ebe9-ef77-4d42-b30d-be730243a018', '顾大嫂', '框架研发', '18604317990', 'test0@176.com', '研发', NULL, NULL, NULL, NULL);
INSERT INTO `emp` VALUES (102, '84a5530f-36bf-4457-84f8-ad48da0d1c9e', '张青', '框架研发', '18604317991', 'test1@176.com', '研发', NULL, NULL, NULL, NULL);
INSERT INTO `emp` VALUES (103, '67508a1e-fe9f-4b85-bc32-98e1c31790fa', '孙二娘', '启明星', '18604317992', 'test0@177.com', '研发', NULL, NULL, NULL, NULL);
INSERT INTO `emp` VALUES (104, '5e1a6022-c9d8-46f8-ba47-3edca1fb538f', '王定六', '框架研发', '18604317993', 'test1@177.com', '研发', NULL, NULL, NULL, NULL);
INSERT INTO `emp` VALUES (105, '7b1eac86-b09c-4c23-81e7-1fb5d4bb02c2', '郁保四', 'BU产品', '18604317994', 'test0@178.com', '产品', NULL, NULL, NULL, NULL);
INSERT INTO `emp` VALUES (106, '5bcbbcdd-1545-403f-abf7-1e924846fba3', '白胜', 'BU产品', '18604317995', 'test1@178.com', '产品', NULL, NULL, NULL, NULL);
INSERT INTO `emp` VALUES (107, '2f25dd46-5249-4c96-82e9-fc59a774b92b', '时迁', 'BU研发', '18604317996', 'test0@179.com', '研发', NULL, NULL, NULL, NULL);
INSERT INTO `emp` VALUES (108, '0a4fcfc7-2247-4a26-b88e-ffd1c16254ca', '段景柱', '公共产品', '18604317997', 'test1@179.com', '产品', NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for house
-- ----------------------------
DROP TABLE IF EXISTS `house`;
CREATE TABLE `house`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `price_formatted` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `img_url` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `title` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `bedroom_number` int(11) DEFAULT NULL,
  `bathroom_number` int(11) DEFAULT NULL,
  `property_type` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `summary` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of house
-- ----------------------------
INSERT INTO `house` VALUES (1, '£2,200,000', '/pic/4_bedroom_terraced_house_for_sale_in_st_peters_street_n1_london_108247860326974120.jpg', 'St. Peter\'s Street, London N1', 4, 1, 'house', 'An family home boasting a rich collection of period and contemporar...');
INSERT INTO `house` VALUES (2, '£735,000', '/pic/2_bedroom_flat_for_sale_in_rosebery_avenue_ec1r_london_108247842457117063.jpg', 'Rosebery Avenue, London EC1R - Porter', 2, 1, 'flat', 'A superb two bedroom apartment on the top floor of this prestigious...');
INSERT INTO `house` VALUES (3, '£1,100,000', '/pic/2_bedroom_flat_for_sale_in_union_wharf_n1_london_108247859612066615.jpg', 'Union Wharf, London N1 - Balcony', 2, 0, 'flat', 'Brilliantly located overlooking shepherdess walk park, this ly brig...');
INSERT INTO `house` VALUES (4, '£2,828,950', '/pic/3_bedroom_flat_for_sale_in_one_crown_place_ec2a_london_108247846350377128.jpg', 'One Crown Place, London EC2A - Gym', 3, 3, 'flat', 'Located on the 26th floor of north tower and offering triple aspect...');
INSERT INTO `house` VALUES (5, '£1,300,000', '/pic/2_bedroom_flat_for_sale_in_the_atlas_building_old_street_n1_london_108247852953449894.jpg', 'The Atlas Building, Old Street, London N1', 2, 2, 'flat', 'Please quote asp id 27184entertain friends for the weekend in your ...');
INSERT INTO `house` VALUES (6, '£840,000', '/pic/1_bedroom_flat_for_sale_in_tudor_house_one_tower_bridge_se1_london_108247840486267011.jpg', 'Tudor House, One Tower Bridge, London SE1', 1, 1, 'flat', 'A 1 double bedroom apartment for sale of approx. Situated on the 7t...');
INSERT INTO `house` VALUES (7, '£450,000', '/pic/2_bedroom_flat_for_sale_in_micawber_court_n1_london_108247853784553586.jpg', 'Micawber Court, London, London N1', 3, 1, 'flat', 'Well-presented two bedroom apartment. Situated in the heart of lond...');
INSERT INTO `house` VALUES (8, '£775,000', '/pic/4_bedroom_mews_for_sale_in_aran_mews_st_clements_lane_n7_london_108247857346085044.jpg', 'Aran Mews, St Clements Lane, London N7', 4, 3, 'house', 'A well presented modern freehold mews house with four bedrooms over...');
INSERT INTO `house` VALUES (9, '£1,317,120', '/pic/2_bedroom_flat_for_sale_in_shoreditch_high_street_shoreditch_e1_london_108247858826077989.jpg', 'Shoreditch High Street, Shoreditch, London E1', 2, 2, 'flat', 'The tower benefits from five major transport hubs within walking di...');
INSERT INTO `house` VALUES (10, '£834,240', '/pic/1_bedroom_flat_for_sale_in_shoreditch_high_street_shoreditch_e1_london_108247859082949890.jpg', 'Shoreditch High Street, Shoreditch, London E1', 1, 1, 'flat', 'The tower benefits from five major transport hubs within walking di...');

-- ----------------------------
-- Table structure for sys_permissions
-- ----------------------------
DROP TABLE IF EXISTS `sys_permissions`;
CREATE TABLE `sys_permissions`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `permission` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `description` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_permissions
-- ----------------------------
INSERT INTO `sys_permissions` VALUES (1, 'user:create', '用户模块新增');
INSERT INTO `sys_permissions` VALUES (2, 'user:update', '用户模块修改');
INSERT INTO `sys_permissions` VALUES (3, 'user:select', '用户模块查询');
INSERT INTO `sys_permissions` VALUES (4, 'user:delete', '用户模块删除');

-- ----------------------------
-- Table structure for sys_roles
-- ----------------------------
DROP TABLE IF EXISTS `sys_roles`;
CREATE TABLE `sys_roles`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `role` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `description` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_roles
-- ----------------------------
INSERT INTO `sys_roles` VALUES (1, 'admin', '管理员');
INSERT INTO `sys_roles` VALUES (2, 'user', '用户管理员');

-- ----------------------------
-- Table structure for sys_roles_permissions
-- ----------------------------
DROP TABLE IF EXISTS `sys_roles_permissions`;
CREATE TABLE `sys_roles_permissions`  (
  `role_id` bigint(20) NOT NULL,
  `permission_id` bigint(20) NOT NULL,
  PRIMARY KEY (`role_id`, `permission_id`) USING BTREE,
  INDEX `sys_roles_permissions_ibfk_2`(`permission_id`) USING BTREE,
  CONSTRAINT `sys_roles_permissions_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `sys_roles` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `sys_roles_permissions_ibfk_2` FOREIGN KEY (`permission_id`) REFERENCES `sys_permissions` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_roles_permissions
-- ----------------------------
INSERT INTO `sys_roles_permissions` VALUES (1, 1);
INSERT INTO `sys_roles_permissions` VALUES (1, 2);
INSERT INTO `sys_roles_permissions` VALUES (1, 3);
INSERT INTO `sys_roles_permissions` VALUES (2, 3);
INSERT INTO `sys_roles_permissions` VALUES (1, 4);

-- ----------------------------
-- Table structure for sys_users
-- ----------------------------
DROP TABLE IF EXISTS `sys_users`;
CREATE TABLE `sys_users`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `password` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `locked` tinyint(255) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_users
-- ----------------------------
INSERT INTO `sys_users` VALUES (1, 'admin', '$shiro1$SHA-256$50000$i/lQ+UlZk2d37NWAj1XgEg==$tO6qfpgkYE/spbTiLzdnaAlBotVJnG0+lOFYVbQY5sQ=', 0);
INSERT INTO `sys_users` VALUES (2, 'ddw', '$shiro1$SHA-256$50000$Orz1I7i8b3dAgDAyG9GUXg==$Znb9QvJH3f7KLJBYU3DWxFtq1jxVxvH0LVQ3NfUx+WI=', 0);

-- ----------------------------
-- Table structure for sys_users_roles
-- ----------------------------
DROP TABLE IF EXISTS `sys_users_roles`;
CREATE TABLE `sys_users_roles`  (
  `user_id` bigint(20) NOT NULL,
  `role_id` bigint(20) NOT NULL,
  PRIMARY KEY (`user_id`, `role_id`) USING BTREE,
  INDEX `sys_users_roles_ibfk_2`(`role_id`) USING BTREE,
  CONSTRAINT `sys_users_roles_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `sys_users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `sys_users_roles_ibfk_2` FOREIGN KEY (`role_id`) REFERENCES `sys_roles` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_users_roles
-- ----------------------------
INSERT INTO `sys_users_roles` VALUES (1, 1);
INSERT INTO `sys_users_roles` VALUES (1, 2);
INSERT INTO `sys_users_roles` VALUES (2, 2);

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, 'david', 'e10adc3949ba59abbe56e057f20f883e');

SET FOREIGN_KEY_CHECKS = 1;
