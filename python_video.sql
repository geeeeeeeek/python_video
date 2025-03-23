/*
 Navicat Premium Data Transfer

 Source Server         : localhost连接
 Source Server Type    : MySQL
 Source Server Version : 50737
 Source Host           : localhost:3306
 Source Schema         : python_video

 Target Server Type    : MySQL
 Target Server Version : 50737
 File Encoding         : 65001

 Date: 28/05/2023 17:43:25
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for auth_group
-- ----------------------------
DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE `auth_group`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `name`(`name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_group
-- ----------------------------

-- ----------------------------
-- Table structure for auth_group_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE `auth_group_permissions`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_group_permissions_group_id_permission_id_0cd325b0_uniq`(`group_id`, `permission_id`) USING BTREE,
  INDEX `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm`(`permission_id`) USING BTREE,
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_group_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for auth_permission
-- ----------------------------
DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE `auth_permission`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_permission_content_type_id_codename_01ab375a_uniq`(`content_type_id`, `codename`) USING BTREE,
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 85 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_permission
-- ----------------------------
INSERT INTO `auth_permission` VALUES (1, 'Can add log entry', 1, 'add_logentry');
INSERT INTO `auth_permission` VALUES (2, 'Can change log entry', 1, 'change_logentry');
INSERT INTO `auth_permission` VALUES (3, 'Can delete log entry', 1, 'delete_logentry');
INSERT INTO `auth_permission` VALUES (4, 'Can view log entry', 1, 'view_logentry');
INSERT INTO `auth_permission` VALUES (5, 'Can add permission', 2, 'add_permission');
INSERT INTO `auth_permission` VALUES (6, 'Can change permission', 2, 'change_permission');
INSERT INTO `auth_permission` VALUES (7, 'Can delete permission', 2, 'delete_permission');
INSERT INTO `auth_permission` VALUES (8, 'Can view permission', 2, 'view_permission');
INSERT INTO `auth_permission` VALUES (9, 'Can add group', 3, 'add_group');
INSERT INTO `auth_permission` VALUES (10, 'Can change group', 3, 'change_group');
INSERT INTO `auth_permission` VALUES (11, 'Can delete group', 3, 'delete_group');
INSERT INTO `auth_permission` VALUES (12, 'Can view group', 3, 'view_group');
INSERT INTO `auth_permission` VALUES (13, 'Can add user', 4, 'add_user');
INSERT INTO `auth_permission` VALUES (14, 'Can change user', 4, 'change_user');
INSERT INTO `auth_permission` VALUES (15, 'Can delete user', 4, 'delete_user');
INSERT INTO `auth_permission` VALUES (16, 'Can view user', 4, 'view_user');
INSERT INTO `auth_permission` VALUES (17, 'Can add content type', 5, 'add_contenttype');
INSERT INTO `auth_permission` VALUES (18, 'Can change content type', 5, 'change_contenttype');
INSERT INTO `auth_permission` VALUES (19, 'Can delete content type', 5, 'delete_contenttype');
INSERT INTO `auth_permission` VALUES (20, 'Can view content type', 5, 'view_contenttype');
INSERT INTO `auth_permission` VALUES (21, 'Can add session', 6, 'add_session');
INSERT INTO `auth_permission` VALUES (22, 'Can change session', 6, 'change_session');
INSERT INTO `auth_permission` VALUES (23, 'Can delete session', 6, 'delete_session');
INSERT INTO `auth_permission` VALUES (24, 'Can view session', 6, 'view_session');
INSERT INTO `auth_permission` VALUES (25, 'Can add user', 7, 'add_user');
INSERT INTO `auth_permission` VALUES (26, 'Can change user', 7, 'change_user');
INSERT INTO `auth_permission` VALUES (27, 'Can delete user', 7, 'delete_user');
INSERT INTO `auth_permission` VALUES (28, 'Can view user', 7, 'view_user');
INSERT INTO `auth_permission` VALUES (29, 'Can add tag', 8, 'add_tag');
INSERT INTO `auth_permission` VALUES (30, 'Can change tag', 8, 'change_tag');
INSERT INTO `auth_permission` VALUES (31, 'Can delete tag', 8, 'delete_tag');
INSERT INTO `auth_permission` VALUES (32, 'Can view tag', 8, 'view_tag');
INSERT INTO `auth_permission` VALUES (33, 'Can add classification', 9, 'add_classification');
INSERT INTO `auth_permission` VALUES (34, 'Can change classification', 9, 'change_classification');
INSERT INTO `auth_permission` VALUES (35, 'Can delete classification', 9, 'delete_classification');
INSERT INTO `auth_permission` VALUES (36, 'Can view classification', 9, 'view_classification');
INSERT INTO `auth_permission` VALUES (37, 'Can add thing', 10, 'add_thing');
INSERT INTO `auth_permission` VALUES (38, 'Can change thing', 10, 'change_thing');
INSERT INTO `auth_permission` VALUES (39, 'Can delete thing', 10, 'delete_thing');
INSERT INTO `auth_permission` VALUES (40, 'Can view thing', 10, 'view_thing');
INSERT INTO `auth_permission` VALUES (41, 'Can add comment', 11, 'add_comment');
INSERT INTO `auth_permission` VALUES (42, 'Can change comment', 11, 'change_comment');
INSERT INTO `auth_permission` VALUES (43, 'Can delete comment', 11, 'delete_comment');
INSERT INTO `auth_permission` VALUES (44, 'Can view comment', 11, 'view_comment');
INSERT INTO `auth_permission` VALUES (45, 'Can add record', 12, 'add_record');
INSERT INTO `auth_permission` VALUES (46, 'Can change record', 12, 'change_record');
INSERT INTO `auth_permission` VALUES (47, 'Can delete record', 12, 'delete_record');
INSERT INTO `auth_permission` VALUES (48, 'Can view record', 12, 'view_record');
INSERT INTO `auth_permission` VALUES (49, 'Can add login log', 13, 'add_loginlog');
INSERT INTO `auth_permission` VALUES (50, 'Can change login log', 13, 'change_loginlog');
INSERT INTO `auth_permission` VALUES (51, 'Can delete login log', 13, 'delete_loginlog');
INSERT INTO `auth_permission` VALUES (52, 'Can view login log', 13, 'view_loginlog');
INSERT INTO `auth_permission` VALUES (53, 'Can add op log', 14, 'add_oplog');
INSERT INTO `auth_permission` VALUES (54, 'Can change op log', 14, 'change_oplog');
INSERT INTO `auth_permission` VALUES (55, 'Can delete op log', 14, 'delete_oplog');
INSERT INTO `auth_permission` VALUES (56, 'Can view op log', 14, 'view_oplog');
INSERT INTO `auth_permission` VALUES (57, 'Can add error log', 15, 'add_errorlog');
INSERT INTO `auth_permission` VALUES (58, 'Can change error log', 15, 'change_errorlog');
INSERT INTO `auth_permission` VALUES (59, 'Can delete error log', 15, 'delete_errorlog');
INSERT INTO `auth_permission` VALUES (60, 'Can view error log', 15, 'view_errorlog');
INSERT INTO `auth_permission` VALUES (61, 'Can add order', 16, 'add_order');
INSERT INTO `auth_permission` VALUES (62, 'Can change order', 16, 'change_order');
INSERT INTO `auth_permission` VALUES (63, 'Can delete order', 16, 'delete_order');
INSERT INTO `auth_permission` VALUES (64, 'Can view order', 16, 'view_order');
INSERT INTO `auth_permission` VALUES (65, 'Can add order log', 17, 'add_orderlog');
INSERT INTO `auth_permission` VALUES (66, 'Can change order log', 17, 'change_orderlog');
INSERT INTO `auth_permission` VALUES (67, 'Can delete order log', 17, 'delete_orderlog');
INSERT INTO `auth_permission` VALUES (68, 'Can view order log', 17, 'view_orderlog');
INSERT INTO `auth_permission` VALUES (69, 'Can add banner', 18, 'add_banner');
INSERT INTO `auth_permission` VALUES (70, 'Can change banner', 18, 'change_banner');
INSERT INTO `auth_permission` VALUES (71, 'Can delete banner', 18, 'delete_banner');
INSERT INTO `auth_permission` VALUES (72, 'Can view banner', 18, 'view_banner');
INSERT INTO `auth_permission` VALUES (73, 'Can add ad', 19, 'add_ad');
INSERT INTO `auth_permission` VALUES (74, 'Can change ad', 19, 'change_ad');
INSERT INTO `auth_permission` VALUES (75, 'Can delete ad', 19, 'delete_ad');
INSERT INTO `auth_permission` VALUES (76, 'Can view ad', 19, 'view_ad');
INSERT INTO `auth_permission` VALUES (77, 'Can add notice', 20, 'add_notice');
INSERT INTO `auth_permission` VALUES (78, 'Can change notice', 20, 'change_notice');
INSERT INTO `auth_permission` VALUES (79, 'Can delete notice', 20, 'delete_notice');
INSERT INTO `auth_permission` VALUES (80, 'Can view notice', 20, 'view_notice');
INSERT INTO `auth_permission` VALUES (81, 'Can add address', 21, 'add_address');
INSERT INTO `auth_permission` VALUES (82, 'Can change address', 21, 'change_address');
INSERT INTO `auth_permission` VALUES (83, 'Can delete address', 21, 'delete_address');
INSERT INTO `auth_permission` VALUES (84, 'Can view address', 21, 'view_address');

-- ----------------------------
-- Table structure for auth_user
-- ----------------------------
DROP TABLE IF EXISTS `auth_user`;
CREATE TABLE `auth_user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `last_login` datetime(6) NULL DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `first_name` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `last_name` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `email` varchar(254) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `username`(`username`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_user
-- ----------------------------

-- ----------------------------
-- Table structure for auth_user_groups
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_groups`;
CREATE TABLE `auth_user_groups`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_user_groups_user_id_group_id_94350c0c_uniq`(`user_id`, `group_id`) USING BTREE,
  INDEX `auth_user_groups_group_id_97559544_fk_auth_group_id`(`group_id`) USING BTREE,
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_user_groups
-- ----------------------------

-- ----------------------------
-- Table structure for auth_user_user_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_user_permissions`;
CREATE TABLE `auth_user_user_permissions`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq`(`user_id`, `permission_id`) USING BTREE,
  INDEX `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm`(`permission_id`) USING BTREE,
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_user_user_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for b_ad
-- ----------------------------
DROP TABLE IF EXISTS `b_ad`;
CREATE TABLE `b_ad`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `image` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `link` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime(6) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_ad
-- ----------------------------

-- ----------------------------
-- Table structure for b_address
-- ----------------------------
DROP TABLE IF EXISTS `b_address`;
CREATE TABLE `b_address`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `mobile` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `desc` varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `default` tinyint(1) NULL DEFAULT NULL,
  `create_time` datetime(6) NULL DEFAULT NULL,
  `user_id` bigint(20) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `b_address_user_id_a37a8d6a_fk_b_user_id`(`user_id`) USING BTREE,
  CONSTRAINT `b_address_user_id_a37a8d6a_fk_b_user_id` FOREIGN KEY (`user_id`) REFERENCES `b_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_address
-- ----------------------------

-- ----------------------------
-- Table structure for b_banner
-- ----------------------------
DROP TABLE IF EXISTS `b_banner`;
CREATE TABLE `b_banner`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `image` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime(6) NULL DEFAULT NULL,
  `thing_id` bigint(20) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `b_banner_thing_id_3f307d00_fk_b_thing_id`(`thing_id`) USING BTREE,
  CONSTRAINT `b_banner_thing_id_3f307d00_fk_b_thing_id` FOREIGN KEY (`thing_id`) REFERENCES `b_thing` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_banner
-- ----------------------------

-- ----------------------------
-- Table structure for b_classification
-- ----------------------------
DROP TABLE IF EXISTS `b_classification`;
CREATE TABLE `b_classification`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime(6) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_classification
-- ----------------------------
INSERT INTO `b_classification` VALUES (1, '娱乐', '2023-05-27 14:32:05.284030');
INSERT INTO `b_classification` VALUES (2, '体育', '2023-05-27 14:32:10.943539');
INSERT INTO `b_classification` VALUES (3, '财经', '2023-05-27 14:32:17.257247');
INSERT INTO `b_classification` VALUES (4, '旅游', '2023-05-28 16:30:51.763804');
INSERT INTO `b_classification` VALUES (5, '军事', '2023-05-28 16:30:56.742332');
INSERT INTO `b_classification` VALUES (6, '文化', '2023-05-28 16:31:03.161323');
INSERT INTO `b_classification` VALUES (7, '科技', '2023-05-28 16:31:48.518767');

-- ----------------------------
-- Table structure for b_comment
-- ----------------------------
DROP TABLE IF EXISTS `b_comment`;
CREATE TABLE `b_comment`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `content` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `comment_time` datetime(6) NULL DEFAULT NULL,
  `like_count` int(11) NOT NULL,
  `thing_id` bigint(20) NULL DEFAULT NULL,
  `user_id` bigint(20) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `b_comment_thing_id_57ab492b_fk_b_thing_id`(`thing_id`) USING BTREE,
  INDEX `b_comment_user_id_46f0670f_fk_b_user_id`(`user_id`) USING BTREE,
  CONSTRAINT `b_comment_thing_id_57ab492b_fk_b_thing_id` FOREIGN KEY (`thing_id`) REFERENCES `b_thing` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `b_comment_user_id_46f0670f_fk_b_user_id` FOREIGN KEY (`user_id`) REFERENCES `b_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_comment
-- ----------------------------
INSERT INTO `b_comment` VALUES (1, '33', '2023-05-28 11:27:50.420472', 2, 3, 2);
INSERT INTO `b_comment` VALUES (2, 'ddd', '2023-05-28 11:33:09.499619', 0, 3, 3);
INSERT INTO `b_comment` VALUES (3, 'fff', '2023-05-28 11:33:11.586047', 0, 3, 3);
INSERT INTO `b_comment` VALUES (4, 'da', '2023-05-28 11:33:13.278650', 0, 3, 3);
INSERT INTO `b_comment` VALUES (5, 'fdddf', '2023-05-28 11:38:51.014511', 0, 3, 3);
INSERT INTO `b_comment` VALUES (6, '测试哈哈哈', '2023-05-28 17:23:12.363651', 1, 31, 5);
INSERT INTO `b_comment` VALUES (7, 'bbbb', '2023-05-28 17:23:15.625603', 1, 31, 5);
INSERT INTO `b_comment` VALUES (8, 'eeeee', '2023-05-28 17:23:17.976603', 0, 31, 5);
INSERT INTO `b_comment` VALUES (9, 'adbdcdfeee', '2023-05-28 17:23:21.875290', 0, 31, 5);
INSERT INTO `b_comment` VALUES (10, '33333333333333333333', '2023-05-28 17:23:27.028212', 0, 31, 5);
INSERT INTO `b_comment` VALUES (11, 'aaaaaaa', '2023-05-28 17:23:30.047755', 0, 31, 5);
INSERT INTO `b_comment` VALUES (12, 'hhhhhh98hhhhh', '2023-05-28 17:23:43.528253', 1, 31, 5);
INSERT INTO `b_comment` VALUES (13, '哈哈哈哈哈哈哈哈哈哈', '2023-05-28 17:23:58.926142', 0, 31, 5);

-- ----------------------------
-- Table structure for b_error_log
-- ----------------------------
DROP TABLE IF EXISTS `b_error_log`;
CREATE TABLE `b_error_log`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `ip` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `url` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `method` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `content` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `log_time` datetime(6) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_error_log
-- ----------------------------
INSERT INTO `b_error_log` VALUES (1, '127.0.0.1', '/myapp/index/thing/getCollectThingList', 'GET', '操作失败User matching query does not exist.', '2023-05-28 10:49:42.406506');
INSERT INTO `b_error_log` VALUES (2, '127.0.0.1', '/myapp/index/thing/getWishThingList', 'GET', '操作失败User matching query does not exist.', '2023-05-28 10:49:42.418796');

-- ----------------------------
-- Table structure for b_login_log
-- ----------------------------
DROP TABLE IF EXISTS `b_login_log`;
CREATE TABLE `b_login_log`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ip` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ua` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `log_time` datetime(6) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_login_log
-- ----------------------------
INSERT INTO `b_login_log` VALUES (1, 'admin111', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', '2023-05-27 21:05:02.646548');
INSERT INTO `b_login_log` VALUES (2, 'admin111', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', '2023-05-27 21:09:29.851357');
INSERT INTO `b_login_log` VALUES (3, 'test', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', '2023-05-28 11:32:49.187222');
INSERT INTO `b_login_log` VALUES (4, 'test', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', '2023-05-28 15:44:14.138799');
INSERT INTO `b_login_log` VALUES (5, 'admin111', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', '2023-05-28 15:44:37.055608');
INSERT INTO `b_login_log` VALUES (6, 'testa', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', '2023-05-28 16:07:12.552259');
INSERT INTO `b_login_log` VALUES (7, 'testa', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', '2023-05-28 16:09:12.605211');
INSERT INTO `b_login_log` VALUES (8, 'admin111', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', '2023-05-28 16:29:46.881809');
INSERT INTO `b_login_log` VALUES (9, 'admin123', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', '2023-05-28 17:34:16.076868');
INSERT INTO `b_login_log` VALUES (10, 'admin111', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', '2023-05-28 17:37:33.752459');

-- ----------------------------
-- Table structure for b_notice
-- ----------------------------
DROP TABLE IF EXISTS `b_notice`;
CREATE TABLE `b_notice`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `content` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime(6) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_notice
-- ----------------------------
INSERT INTO `b_notice` VALUES (1, 'dddd', 'ffff', '2023-05-28 11:45:12.363526');

-- ----------------------------
-- Table structure for b_op_log
-- ----------------------------
DROP TABLE IF EXISTS `b_op_log`;
CREATE TABLE `b_op_log`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `re_ip` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `re_time` datetime(6) NULL DEFAULT NULL,
  `re_url` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `re_method` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `re_content` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `access_time` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2293 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_op_log
-- ----------------------------
INSERT INTO `b_op_log` VALUES (1, '127.0.0.1', '2023-05-27 12:45:37.998103', '/', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (2, '127.0.0.1', '2023-05-27 12:45:38.047861', '/favicon.ico', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (3, '127.0.0.1', '2023-05-27 12:45:47.831693', '/doc', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (4, '127.0.0.1', '2023-05-27 12:45:57.170809', '/redoc/', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (5, '127.0.0.1', '2023-05-27 12:45:57.291338', '/redoc/', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (6, '127.0.0.1', '2023-05-27 12:47:00.504441', '/', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (7, '127.0.0.1', '2023-05-27 12:47:07.399779', '/swagger/', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (8, '127.0.0.1', '2023-05-27 12:47:07.562557', '/swagger/', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (9, '127.0.0.1', '2023-05-27 12:47:11.418409', '/accounts/login/', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (10, '127.0.0.1', '2023-05-27 12:47:46.651261', '/myapp/admin/ad/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (11, '127.0.0.1', '2023-05-27 12:48:04.086579', '/myapp/admin/ad/delete', 'POST', NULL, '58');
INSERT INTO `b_op_log` VALUES (12, '127.0.0.1', '2023-05-27 12:48:29.399960', '/myapp/admin/ad/create', 'POST', NULL, '14');
INSERT INTO `b_op_log` VALUES (13, '127.0.0.1', '2023-05-27 13:57:42.747239', '/', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (14, '127.0.0.1', '2023-05-27 14:03:49.648720', '/myapp', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (15, '127.0.0.1', '2023-05-27 14:03:57.511899', '/myapp/user/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (16, '127.0.0.1', '2023-05-27 14:04:13.376746', '/myapp/index/user/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (17, '127.0.0.1', '2023-05-27 14:04:34.801136', '/myapp/admin/user/list', 'GET', NULL, '74');
INSERT INTO `b_op_log` VALUES (18, '127.0.0.1', '2023-05-27 14:04:44.560093', '/myapp/admin/user/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (19, '127.0.0.1', '2023-05-27 14:04:45.740986', '/myapp/admin/user/list', 'GET', NULL, '36');
INSERT INTO `b_op_log` VALUES (20, '127.0.0.1', '2023-05-27 14:04:46.637123', '/myapp/admin/user/list', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (21, '127.0.0.1', '2023-05-27 14:04:47.366998', '/myapp/admin/user/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (22, '127.0.0.1', '2023-05-27 14:06:43.510164', '/myapp/admin/user/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (23, '127.0.0.1', '2023-05-27 14:08:16.446224', '/myapp/admin/thing/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (24, '127.0.0.1', '2023-05-27 14:14:12.824205', '/myapp/admin/thing/create', 'GET', NULL, '71');
INSERT INTO `b_op_log` VALUES (25, '127.0.0.1', '2023-05-27 14:15:41.013554', '/myapp/admin/thing/create', 'GET', NULL, '56');
INSERT INTO `b_op_log` VALUES (26, '127.0.0.1', '2023-05-27 14:16:04.196224', '/myapp/admin/thing/create', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (27, '127.0.0.1', '2023-05-27 14:16:15.746717', '/myapp/admin/thing/create', 'POST', NULL, '38');
INSERT INTO `b_op_log` VALUES (28, '127.0.0.1', '2023-05-27 14:18:43.448488', '/myapp/admin/thing/create', 'POST', NULL, '51');
INSERT INTO `b_op_log` VALUES (29, '127.0.0.1', '2023-05-27 14:20:36.462174', '/myapp/admin/thing/update', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (30, '127.0.0.1', '2023-05-27 14:20:42.276787', '/myapp/admin/thing/update', 'POST', NULL, '57');
INSERT INTO `b_op_log` VALUES (31, '127.0.0.1', '2023-05-27 14:21:26.538684', '/myapp/admin/thing/delete', 'POST', NULL, '240');
INSERT INTO `b_op_log` VALUES (32, '127.0.0.1', '2023-05-27 14:21:41.806694', '/myapp/admin/thing/delete', 'POST', NULL, '56');
INSERT INTO `b_op_log` VALUES (33, '127.0.0.1', '2023-05-27 14:28:11.858255', '/myapp/index/thing/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (34, '127.0.0.1', '2023-05-27 14:28:11.860297', '/myapp/index/thing/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (35, '127.0.0.1', '2023-05-27 14:28:11.863254', '/myapp/index/thing/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (36, '127.0.0.1', '2023-05-27 14:28:11.871223', '/myapp/index/thing/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (37, '127.0.0.1', '2023-05-27 14:28:26.244304', '/myapp/admin/classification/list', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (38, '127.0.0.1', '2023-05-27 14:28:53.233464', '/myapp/admin/adminLogin', 'POST', NULL, '15');
INSERT INTO `b_op_log` VALUES (39, '127.0.0.1', '2023-05-27 14:30:18.859995', '/myapp/admin/overview/count', 'GET', NULL, '255');
INSERT INTO `b_op_log` VALUES (40, '127.0.0.1', '2023-05-27 14:30:21.520943', '/myapp/admin/user/list', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (41, '127.0.0.1', '2023-05-27 14:30:41.749943', '/myapp/admin/user/create', 'POST', NULL, '12');
INSERT INTO `b_op_log` VALUES (42, '127.0.0.1', '2023-05-27 14:30:41.786583', '/myapp/admin/user/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (43, '127.0.0.1', '2023-05-27 14:31:00.465725', '/myapp/admin/user/create', 'POST', NULL, '20');
INSERT INTO `b_op_log` VALUES (44, '127.0.0.1', '2023-05-27 14:31:00.495148', '/myapp/admin/user/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (45, '127.0.0.1', '2023-05-27 14:31:20.622274', '/myapp/admin/user/create', 'POST', NULL, '21');
INSERT INTO `b_op_log` VALUES (46, '127.0.0.1', '2023-05-27 14:31:20.646027', '/myapp/admin/user/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (47, '127.0.0.1', '2023-05-27 14:31:40.098089', '/myapp/admin/user/create', 'POST', NULL, '17');
INSERT INTO `b_op_log` VALUES (48, '127.0.0.1', '2023-05-27 14:31:40.128084', '/myapp/admin/user/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (49, '127.0.0.1', '2023-05-27 14:31:50.485537', '/myapp/admin/classification/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (50, '127.0.0.1', '2023-05-27 14:32:05.296947', '/myapp/admin/classification/create', 'POST', NULL, '34');
INSERT INTO `b_op_log` VALUES (51, '127.0.0.1', '2023-05-27 14:32:05.333555', '/myapp/admin/classification/list', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (52, '127.0.0.1', '2023-05-27 14:32:10.956606', '/myapp/admin/classification/create', 'POST', NULL, '22');
INSERT INTO `b_op_log` VALUES (53, '127.0.0.1', '2023-05-27 14:32:10.993059', '/myapp/admin/classification/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (54, '127.0.0.1', '2023-05-27 14:32:17.271788', '/myapp/admin/classification/create', 'POST', NULL, '35');
INSERT INTO `b_op_log` VALUES (55, '127.0.0.1', '2023-05-27 14:32:17.296130', '/myapp/admin/classification/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (56, '127.0.0.1', '2023-05-27 14:32:22.239739', '/myapp/admin/tag/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (57, '127.0.0.1', '2023-05-27 14:32:34.166798', '/myapp/admin/tag/create', 'POST', NULL, '26');
INSERT INTO `b_op_log` VALUES (58, '127.0.0.1', '2023-05-27 14:32:34.204345', '/myapp/admin/tag/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (59, '127.0.0.1', '2023-05-27 14:32:40.859804', '/myapp/admin/tag/create', 'POST', NULL, '49');
INSERT INTO `b_op_log` VALUES (60, '127.0.0.1', '2023-05-27 14:32:40.879213', '/myapp/admin/tag/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (61, '127.0.0.1', '2023-05-27 14:32:47.121622', '/myapp/admin/tag/create', 'POST', NULL, '10');
INSERT INTO `b_op_log` VALUES (62, '127.0.0.1', '2023-05-27 14:32:47.142322', '/myapp/admin/tag/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (63, '127.0.0.1', '2023-05-27 14:32:56.047317', '/myapp/admin/tag/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (64, '127.0.0.1', '2023-05-27 14:32:56.066517', '/myapp/admin/tag/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (65, '127.0.0.1', '2023-05-27 14:32:56.080540', '/myapp/admin/tag/list', 'GET', NULL, '43');
INSERT INTO `b_op_log` VALUES (66, '127.0.0.1', '2023-05-27 14:32:58.884054', '/myapp/admin/comment/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (67, '127.0.0.1', '2023-05-27 14:36:06.306616', '/myapp/admin/comment/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (68, '127.0.0.1', '2023-05-27 14:36:12.092051', '/myapp/admin/classification/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (69, '127.0.0.1', '2023-05-27 14:36:13.598409', '/myapp/admin/tag/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (70, '127.0.0.1', '2023-05-27 14:36:13.605993', '/myapp/admin/tag/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (71, '127.0.0.1', '2023-05-27 14:36:13.614551', '/myapp/admin/tag/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (72, '127.0.0.1', '2023-05-27 14:37:00.727596', '/myapp/admin/classification/list', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (73, '127.0.0.1', '2023-05-27 14:37:02.240955', '/myapp/admin/tag/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (74, '127.0.0.1', '2023-05-27 14:37:03.136182', '/myapp/admin/comment/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (75, '127.0.0.1', '2023-05-27 14:37:10.027123', '/myapp/admin/overview/sysInfo', 'GET', NULL, '1040');
INSERT INTO `b_op_log` VALUES (76, '127.0.0.1', '2023-05-27 14:38:40.351385', '/myapp/admin/overview/count', 'GET', NULL, '76');
INSERT INTO `b_op_log` VALUES (77, '127.0.0.1', '2023-05-27 14:38:42.148246', '/myapp/admin/tag/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (78, '127.0.0.1', '2023-05-27 14:38:42.150835', '/myapp/admin/tag/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (79, '127.0.0.1', '2023-05-27 14:38:42.163240', '/myapp/admin/tag/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (80, '127.0.0.1', '2023-05-27 14:38:43.450564', '/myapp/admin/classification/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (81, '127.0.0.1', '2023-05-27 14:38:45.612051', '/myapp/admin/tag/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (82, '127.0.0.1', '2023-05-27 14:38:46.940259', '/myapp/admin/comment/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (83, '127.0.0.1', '2023-05-27 14:39:01.718376', '/myapp/admin/comment/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (84, '127.0.0.1', '2023-05-27 14:39:04.216105', '/myapp/admin/user/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (85, '127.0.0.1', '2023-05-27 14:39:07.497087', '/myapp/admin/ad/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (86, '127.0.0.1', '2023-05-27 14:39:11.419667', '/myapp/admin/notice/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (87, '127.0.0.1', '2023-05-27 14:39:16.448733', '/myapp/admin/loginLog/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (88, '127.0.0.1', '2023-05-27 14:39:17.884705', '/myapp/admin/opLog/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (89, '127.0.0.1', '2023-05-27 14:39:19.859865', '/myapp/admin/errorLog/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (90, '127.0.0.1', '2023-05-27 14:39:23.693077', '/myapp/admin/user/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (91, '127.0.0.1', '2023-05-27 14:39:25.787164', '/myapp/admin/comment/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (92, '127.0.0.1', '2023-05-27 14:39:27.535678', '/myapp/admin/tag/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (93, '127.0.0.1', '2023-05-27 14:39:28.792405', '/myapp/admin/classification/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (94, '127.0.0.1', '2023-05-27 14:39:31.025112', '/myapp/admin/overview/count', 'GET', NULL, '84');
INSERT INTO `b_op_log` VALUES (95, '127.0.0.1', '2023-05-27 14:40:40.231545', '/myapp/admin/tag/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (96, '127.0.0.1', '2023-05-27 14:40:40.238615', '/myapp/admin/tag/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (97, '127.0.0.1', '2023-05-27 14:40:40.245798', '/myapp/admin/tag/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (98, '127.0.0.1', '2023-05-27 14:41:56.165285', '/myapp/admin/thing/update', 'POST', NULL, '56');
INSERT INTO `b_op_log` VALUES (99, '127.0.0.1', '2023-05-27 14:41:56.211952', '/myapp/admin/thing/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (100, '127.0.0.1', '2023-05-27 14:42:11.373630', '/myapp/admin/classification/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (101, '127.0.0.1', '2023-05-27 14:42:12.279929', '/myapp/admin/tag/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (102, '127.0.0.1', '2023-05-27 14:42:12.289243', '/myapp/admin/tag/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (103, '127.0.0.1', '2023-05-27 14:42:12.303005', '/myapp/admin/tag/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (104, '127.0.0.1', '2023-05-27 14:42:25.097185', '/myapp/admin/thing/update', 'POST', NULL, '32');
INSERT INTO `b_op_log` VALUES (105, '127.0.0.1', '2023-05-27 14:42:25.142005', '/myapp/admin/thing/list', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (106, '127.0.0.1', '2023-05-27 14:43:35.849339', '/myapp/admin/classification/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (107, '127.0.0.1', '2023-05-27 14:43:35.854566', '/myapp/admin/classification/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (108, '127.0.0.1', '2023-05-27 14:43:35.860786', '/myapp/admin/classification/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (109, '127.0.0.1', '2023-05-27 14:48:22.315856', '/myapp/admin/classification/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (110, '127.0.0.1', '2023-05-27 14:48:22.996185', '/myapp/admin/tag/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (111, '127.0.0.1', '2023-05-27 14:48:22.998202', '/myapp/admin/tag/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (112, '127.0.0.1', '2023-05-27 14:48:23.024264', '/myapp/admin/tag/list', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (113, '127.0.0.1', '2023-05-27 14:48:33.210664', '/myapp/admin/thing/update', 'POST', NULL, '231');
INSERT INTO `b_op_log` VALUES (114, '127.0.0.1', '2023-05-27 14:48:33.245336', '/myapp/admin/thing/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (115, '127.0.0.1', '2023-05-27 14:48:35.480761', '/upload/cover/1685170107820.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (116, '127.0.0.1', '2023-05-27 14:49:58.940852', '/myapp/admin/tag/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (117, '127.0.0.1', '2023-05-27 14:49:58.944719', '/myapp/admin/tag/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (118, '127.0.0.1', '2023-05-27 14:49:58.949426', '/myapp/admin/tag/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (119, '127.0.0.1', '2023-05-27 14:50:18.826706', '/myapp/admin/tag/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (120, '127.0.0.1', '2023-05-27 14:50:18.829552', '/myapp/admin/tag/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (121, '127.0.0.1', '2023-05-27 14:50:18.835022', '/myapp/admin/tag/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (122, '127.0.0.1', '2023-05-27 14:51:56.860762', '/myapp/admin/tag/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (123, '127.0.0.1', '2023-05-27 14:51:56.863179', '/myapp/admin/tag/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (124, '127.0.0.1', '2023-05-27 14:51:56.889453', '/myapp/admin/tag/list', 'GET', NULL, '35');
INSERT INTO `b_op_log` VALUES (125, '127.0.0.1', '2023-05-27 14:52:34.702663', '/myapp/admin/tag/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (126, '127.0.0.1', '2023-05-27 14:52:34.705319', '/myapp/admin/tag/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (127, '127.0.0.1', '2023-05-27 14:52:34.709398', '/myapp/admin/tag/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (128, '127.0.0.1', '2023-05-27 14:52:50.103140', '/myapp/admin/classification/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (129, '127.0.0.1', '2023-05-27 14:52:50.105467', '/myapp/admin/classification/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (130, '127.0.0.1', '2023-05-27 14:52:50.112796', '/myapp/admin/classification/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (131, '127.0.0.1', '2023-05-27 14:53:01.090092', '/upload/cover/1685170107820.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (132, '127.0.0.1', '2023-05-27 14:53:09.342235', '/myapp/admin/thing/update', 'POST', NULL, '45');
INSERT INTO `b_op_log` VALUES (133, '127.0.0.1', '2023-05-27 14:53:09.371329', '/myapp/admin/thing/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (134, '127.0.0.1', '2023-05-27 15:02:45.859547', '/myapp/admin/thing/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (135, '127.0.0.1', '2023-05-27 15:02:45.884998', '/myapp/admin/tag/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (136, '127.0.0.1', '2023-05-27 15:02:45.887000', '/myapp/admin/tag/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (137, '127.0.0.1', '2023-05-27 15:02:51.212766', '/myapp/admin/classification/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (138, '127.0.0.1', '2023-05-27 15:02:52.096637', '/myapp/admin/tag/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (139, '127.0.0.1', '2023-05-27 15:02:52.100037', '/myapp/admin/tag/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (140, '127.0.0.1', '2023-05-27 15:02:52.107037', '/myapp/admin/tag/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (141, '127.0.0.1', '2023-05-27 15:03:22.040322', '/myapp/admin/thing/create', 'POST', NULL, '216');
INSERT INTO `b_op_log` VALUES (142, '127.0.0.1', '2023-05-27 15:03:22.092002', '/myapp/admin/thing/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (143, '127.0.0.1', '2023-05-27 15:07:07.064184', '/myapp/admin/thing/create', 'POST', NULL, '31');
INSERT INTO `b_op_log` VALUES (144, '127.0.0.1', '2023-05-27 15:07:07.131111', '/myapp/admin/thing/list', 'GET', NULL, '44');
INSERT INTO `b_op_log` VALUES (145, '127.0.0.1', '2023-05-27 15:07:27.587934', '/myapp/index/thing/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (146, '127.0.0.1', '2023-05-27 15:07:27.589974', '/myapp/index/thing/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (147, '127.0.0.1', '2023-05-27 15:07:27.606266', '/myapp/index/thing/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (148, '127.0.0.1', '2023-05-27 15:07:27.609654', '/myapp/index/thing/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (149, '127.0.0.1', '2023-05-27 15:07:27.627452', '/upload/cover/1685170107820.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (150, '127.0.0.1', '2023-05-27 15:07:27.639396', '/upload/cover/1685170107820.jpeg', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (151, '127.0.0.1', '2023-05-27 15:07:35.720697', '/myapp/index/thing/list', 'GET', NULL, '36');
INSERT INTO `b_op_log` VALUES (152, '127.0.0.1', '2023-05-27 15:08:18.399089', '/upload/raw/1685171209805.mp4', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (153, '127.0.0.1', '2023-05-27 15:08:50.225182', '/myapp/admin/thing/update', 'POST', NULL, '35');
INSERT INTO `b_op_log` VALUES (154, '127.0.0.1', '2023-05-27 15:08:50.268438', '/myapp/admin/thing/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (155, '127.0.0.1', '2023-05-27 15:08:57.233526', '/upload/cover/1685170987684.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (156, '127.0.0.1', '2023-05-27 15:09:41.146296', '/myapp/admin/thing/update', 'POST', NULL, '156');
INSERT INTO `b_op_log` VALUES (157, '127.0.0.1', '2023-05-27 15:09:41.187841', '/myapp/admin/thing/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (158, '127.0.0.1', '2023-05-27 15:09:54.253749', '/myapp/index/thing/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (159, '127.0.0.1', '2023-05-27 15:10:07.797719', '/myapp/index/notice/list_api', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (160, '127.0.0.1', '2023-05-27 15:10:07.799925', '/myapp/index/notice/list_api', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (161, '127.0.0.1', '2023-05-27 15:10:07.801965', '/myapp/index/notice/list_api', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (162, '127.0.0.1', '2023-05-27 15:10:07.814930', '/myapp/index/notice/list_api', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (163, '127.0.0.1', '2023-05-27 15:10:07.832432', '/upload/cover/1685170107820.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (164, '127.0.0.1', '2023-05-27 15:10:07.832432', '/upload/cover/1685170107820.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (165, '127.0.0.1', '2023-05-27 15:10:17.026681', '/myapp/admin/thing/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (166, '127.0.0.1', '2023-05-27 15:10:18.938029', '/myapp/admin/thing/list', 'GET', NULL, '39');
INSERT INTO `b_op_log` VALUES (167, '127.0.0.1', '2023-05-27 15:10:20.099875', '/myapp/admin/thing/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (168, '127.0.0.1', '2023-05-27 15:10:21.979551', '/myapp/admin/thing/list', 'GET', NULL, '61');
INSERT INTO `b_op_log` VALUES (169, '127.0.0.1', '2023-05-27 15:10:49.937646', '/myapp/admin/thing/create', 'POST', NULL, '40');
INSERT INTO `b_op_log` VALUES (170, '127.0.0.1', '2023-05-27 15:10:49.988226', '/myapp/admin/thing/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (171, '127.0.0.1', '2023-05-27 15:10:55.362125', '/myapp/admin/thing/delete', 'POST', NULL, '53');
INSERT INTO `b_op_log` VALUES (172, '127.0.0.1', '2023-05-27 15:10:55.434210', '/myapp/admin/thing/list', 'GET', NULL, '51');
INSERT INTO `b_op_log` VALUES (173, '127.0.0.1', '2023-05-27 15:11:03.215280', '/myapp/admin/thing/delete', 'POST', NULL, '39');
INSERT INTO `b_op_log` VALUES (174, '127.0.0.1', '2023-05-27 15:11:03.274034', '/myapp/admin/thing/list', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (175, '127.0.0.1', '2023-05-27 15:11:15.428266', '/myapp/admin/classification/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (176, '127.0.0.1', '2023-05-27 15:11:17.690218', '/myapp/admin/tag/list', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (177, '127.0.0.1', '2023-05-27 15:11:18.680612', '/myapp/admin/comment/list', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (178, '127.0.0.1', '2023-05-27 15:11:19.894842', '/myapp/admin/user/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (179, '127.0.0.1', '2023-05-27 15:11:21.532736', '/myapp/admin/overview/count', 'GET', NULL, '276');
INSERT INTO `b_op_log` VALUES (180, '127.0.0.1', '2023-05-27 15:13:33.525125', '/myapp/admin/overview/sysInfo', 'GET', NULL, '1031');
INSERT INTO `b_op_log` VALUES (181, '127.0.0.1', '2023-05-27 15:13:34.491385', '/myapp/admin/overview/count', 'GET', NULL, '74');
INSERT INTO `b_op_log` VALUES (182, '127.0.0.1', '2023-05-27 15:16:09.943782', '/myapp/admin/overview/sysInfo', 'GET', NULL, '1041');
INSERT INTO `b_op_log` VALUES (183, '127.0.0.1', '2023-05-27 15:16:10.845907', '/myapp/admin/overview/count', 'GET', NULL, '82');
INSERT INTO `b_op_log` VALUES (184, '127.0.0.1', '2023-05-27 15:17:36.000216', '/myapp/admin/overview/sysInfo', 'GET', NULL, '1028');
INSERT INTO `b_op_log` VALUES (185, '127.0.0.1', '2023-05-27 15:17:36.803280', '/myapp/admin/overview/count', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (186, '127.0.0.1', '2023-05-27 15:18:05.759071', '/myapp/admin/overview/count', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (187, '127.0.0.1', '2023-05-27 15:18:05.901971', '/myapp/admin/overview/count', 'GET', NULL, '151');
INSERT INTO `b_op_log` VALUES (188, '127.0.0.1', '2023-05-27 15:18:12.046464', '/myapp/admin/overview/count', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (189, '127.0.0.1', '2023-05-27 15:18:12.237190', '/myapp/admin/overview/count', 'GET', NULL, '198');
INSERT INTO `b_op_log` VALUES (190, '127.0.0.1', '2023-05-27 15:18:29.190145', '/myapp/admin/overview/count', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (191, '127.0.0.1', '2023-05-27 15:18:29.266713', '/myapp/admin/overview/count', 'GET', NULL, '82');
INSERT INTO `b_op_log` VALUES (192, '127.0.0.1', '2023-05-27 15:19:02.516056', '/myapp/admin/overview/sysInfo', 'GET', NULL, '1030');
INSERT INTO `b_op_log` VALUES (193, '127.0.0.1', '2023-05-27 15:19:03.503538', '/myapp/admin/overview/count', 'GET', NULL, '83');
INSERT INTO `b_op_log` VALUES (194, '127.0.0.1', '2023-05-27 15:19:32.880995', '/myapp/admin/overview/sysInfo', 'GET', NULL, '1035');
INSERT INTO `b_op_log` VALUES (195, '127.0.0.1', '2023-05-27 15:19:33.750401', '/myapp/admin/overview/count', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (196, '127.0.0.1', '2023-05-27 15:20:02.045226', '/myapp/admin/overview/sysInfo', 'GET', NULL, '1012');
INSERT INTO `b_op_log` VALUES (197, '127.0.0.1', '2023-05-27 15:20:02.736525', '/myapp/admin/overview/count', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (198, '127.0.0.1', '2023-05-27 15:20:22.280108', '/myapp/admin/overview/sysInfo', 'GET', NULL, '1017');
INSERT INTO `b_op_log` VALUES (199, '127.0.0.1', '2023-05-27 15:20:23.161092', '/myapp/admin/overview/count', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (200, '127.0.0.1', '2023-05-27 15:21:48.889484', '/myapp/admin/user/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (201, '127.0.0.1', '2023-05-27 15:21:52.722965', '/myapp/admin/comment/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (202, '127.0.0.1', '2023-05-27 15:21:57.618596', '/myapp/admin/tag/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (203, '127.0.0.1', '2023-05-27 15:21:59.059346', '/myapp/admin/classification/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (204, '127.0.0.1', '2023-05-27 15:22:01.666107', '/myapp/admin/tag/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (205, '127.0.0.1', '2023-05-27 15:22:04.364136', '/myapp/admin/classification/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (206, '127.0.0.1', '2023-05-27 15:22:06.240696', '/myapp/admin/tag/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (207, '127.0.0.1', '2023-05-27 15:22:06.245905', '/myapp/admin/tag/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (208, '127.0.0.1', '2023-05-27 15:22:06.248118', '/myapp/admin/tag/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (209, '127.0.0.1', '2023-05-27 15:22:12.094353', '/upload/cover/1685170987684.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (210, '127.0.0.1', '2023-05-27 15:22:17.516259', '/myapp/admin/thing/update', 'POST', NULL, '28');
INSERT INTO `b_op_log` VALUES (211, '127.0.0.1', '2023-05-27 15:22:17.553876', '/myapp/admin/thing/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (212, '127.0.0.1', '2023-05-27 15:23:14.498204', '/myapp/admin/tag/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (213, '127.0.0.1', '2023-05-27 15:23:14.514635', '/myapp/admin/tag/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (214, '127.0.0.1', '2023-05-27 15:23:14.515646', '/myapp/admin/tag/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (215, '127.0.0.1', '2023-05-27 15:23:17.212466', '/myapp/index/notice/list_api', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (216, '127.0.0.1', '2023-05-27 15:23:17.224108', '/myapp/index/thing/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (217, '127.0.0.1', '2023-05-27 15:23:17.222616', '/myapp/index/thing/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (218, '127.0.0.1', '2023-05-27 15:23:17.237418', '/myapp/index/thing/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (219, '127.0.0.1', '2023-05-27 15:23:17.260904', '/upload/cover/1685170107820.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (220, '127.0.0.1', '2023-05-27 15:28:17.155244', '/myapp/admin/thing/create', 'POST', NULL, '878');
INSERT INTO `b_op_log` VALUES (221, '127.0.0.1', '2023-05-27 15:28:17.230923', '/myapp/admin/thing/list', 'GET', NULL, '42');
INSERT INTO `b_op_log` VALUES (222, '127.0.0.1', '2023-05-27 15:28:46.823830', '/myapp/index/thing/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (223, '127.0.0.1', '2023-05-27 15:28:46.830827', '/myapp/index/thing/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (224, '127.0.0.1', '2023-05-27 15:28:46.833829', '/myapp/index/thing/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (225, '127.0.0.1', '2023-05-27 15:28:46.853827', '/myapp/index/thing/list', 'GET', NULL, '35');
INSERT INTO `b_op_log` VALUES (226, '127.0.0.1', '2023-05-27 15:28:46.874082', '/upload/cover/1685170107820.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (227, '127.0.0.1', '2023-05-27 15:28:46.874082', '/upload/cover/1685170107820.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (228, '127.0.0.1', '2023-05-27 15:28:49.265328', '/myapp/index/notice/list_api', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (229, '127.0.0.1', '2023-05-27 15:28:49.303161', '/myapp/index/comment/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (230, '127.0.0.1', '2023-05-27 15:28:49.313332', '/myapp/index/comment/list', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (231, '127.0.0.1', '2023-05-27 15:28:49.318388', '/myapp/index/comment/list', 'GET', NULL, '39');
INSERT INTO `b_op_log` VALUES (232, '127.0.0.1', '2023-05-27 15:28:57.826469', '/myapp/index/thing/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (233, '127.0.0.1', '2023-05-27 15:28:58.756439', '/myapp/index/thing/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (234, '127.0.0.1', '2023-05-27 15:29:33.154050', '//upload/raw/1685172485691.mp4', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (235, '127.0.0.1', '2023-05-27 15:29:33.241872', '/favicon.ico', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (236, '127.0.0.1', '2023-05-27 15:29:37.958109', '/upload/raw/1685172485691.mp4', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (237, '127.0.0.1', '2023-05-27 15:29:37.996517', '/upload/raw/1685172485691.mp4', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (238, '127.0.0.1', '2023-05-27 15:30:48.581474', '/myapp/admin/thing/create', 'POST', NULL, '76');
INSERT INTO `b_op_log` VALUES (239, '127.0.0.1', '2023-05-27 15:30:48.656826', '/myapp/admin/thing/list', 'GET', NULL, '44');
INSERT INTO `b_op_log` VALUES (240, '127.0.0.1', '2023-05-27 21:03:16.236911', '/myapp/index/thing/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (241, '127.0.0.1', '2023-05-27 21:03:16.238678', '/myapp/index/thing/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (242, '127.0.0.1', '2023-05-27 21:03:16.243730', '/myapp/index/thing/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (243, '127.0.0.1', '2023-05-27 21:03:16.252785', '/myapp/index/thing/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (244, '127.0.0.1', '2023-05-27 21:03:16.295045', '/upload/cover/1685170107820.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (245, '127.0.0.1', '2023-05-27 21:03:16.296045', '/upload/cover/1685170107820.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (246, '127.0.0.1', '2023-05-27 21:03:16.453433', '/myapp/admin/classification/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (247, '127.0.0.1', '2023-05-27 21:03:16.455431', '/myapp/admin/classification/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (248, '127.0.0.1', '2023-05-27 21:03:16.476451', '/myapp/admin/classification/list', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (249, '127.0.0.1', '2023-05-27 21:03:32.854264', '/myapp/admin/classification/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (250, '127.0.0.1', '2023-05-27 21:03:33.682599', '/myapp/admin/tag/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (251, '127.0.0.1', '2023-05-27 21:03:33.684591', '/myapp/admin/tag/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (252, '127.0.0.1', '2023-05-27 21:03:33.701957', '/myapp/admin/tag/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (253, '127.0.0.1', '2023-05-27 21:03:36.338217', '/myapp/admin/classification/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (254, '127.0.0.1', '2023-05-27 21:03:37.423603', '/myapp/admin/comment/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (255, '127.0.0.1', '2023-05-27 21:03:39.228858', '/myapp/admin/tag/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (256, '127.0.0.1', '2023-05-27 21:03:39.230850', '/myapp/admin/tag/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (257, '127.0.0.1', '2023-05-27 21:03:39.254850', '/myapp/admin/tag/list', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (258, '127.0.0.1', '2023-05-27 21:03:55.686490', '/myapp/admin/adminLogin', 'POST', NULL, '8');
INSERT INTO `b_op_log` VALUES (259, '127.0.0.1', '2023-05-27 21:04:20.304406', '/myapp/admin/adminLogin', 'POST', NULL, '4');
INSERT INTO `b_op_log` VALUES (260, '127.0.0.1', '2023-05-27 21:05:02.654798', '/myapp/admin/adminLogin', 'POST', NULL, '58');
INSERT INTO `b_op_log` VALUES (261, '127.0.0.1', '2023-05-27 21:05:03.005813', '/myapp/admin/overview/count', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (262, '127.0.0.1', '2023-05-27 21:05:08.309955', '/myapp/admin/classification/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (263, '127.0.0.1', '2023-05-27 21:05:08.314959', '/myapp/admin/classification/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (264, '127.0.0.1', '2023-05-27 21:05:08.341979', '/myapp/admin/classification/list', 'GET', NULL, '36');
INSERT INTO `b_op_log` VALUES (265, '127.0.0.1', '2023-05-27 21:05:08.940481', '/myapp/admin/classification/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (266, '127.0.0.1', '2023-05-27 21:05:14.653560', '/myapp/admin/tag/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (267, '127.0.0.1', '2023-05-27 21:05:15.469111', '/myapp/admin/classification/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (268, '127.0.0.1', '2023-05-27 21:05:15.471112', '/myapp/admin/classification/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (269, '127.0.0.1', '2023-05-27 21:05:15.495880', '/myapp/admin/classification/list', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (270, '127.0.0.1', '2023-05-27 21:05:16.081507', '/myapp/admin/classification/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (271, '127.0.0.1', '2023-05-27 21:05:17.129023', '/myapp/admin/tag/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (272, '127.0.0.1', '2023-05-27 21:05:18.020739', '/myapp/admin/thing/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (273, '127.0.0.1', '2023-05-27 21:05:18.037368', '/myapp/admin/thing/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (274, '127.0.0.1', '2023-05-27 21:05:18.060916', '/myapp/admin/thing/list', 'GET', NULL, '42');
INSERT INTO `b_op_log` VALUES (275, '127.0.0.1', '2023-05-27 21:05:19.302467', '/myapp/admin/classification/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (276, '127.0.0.1', '2023-05-27 21:06:42.461499', '/myapp/admin/classification/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (277, '127.0.0.1', '2023-05-27 21:06:42.500516', '/myapp/index/thing/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (278, '127.0.0.1', '2023-05-27 21:06:42.502526', '/myapp/index/thing/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (279, '127.0.0.1', '2023-05-27 21:06:42.503516', '/myapp/index/thing/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (280, '127.0.0.1', '2023-05-27 21:06:42.519059', '/myapp/index/thing/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (281, '127.0.0.1', '2023-05-27 21:06:42.540057', '/upload/cover/1685170107820.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (282, '127.0.0.1', '2023-05-27 21:06:42.540057', '/upload/cover/1685170107820.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (283, '127.0.0.1', '2023-05-27 21:06:46.217294', '/myapp/admin/classification/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (284, '127.0.0.1', '2023-05-27 21:06:48.707560', '/myapp/admin/tag/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (285, '127.0.0.1', '2023-05-27 21:06:49.577157', '/myapp/admin/tag/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (286, '127.0.0.1', '2023-05-27 21:06:49.585147', '/myapp/admin/tag/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (287, '127.0.0.1', '2023-05-27 21:06:49.613174', '/myapp/admin/tag/list', 'GET', NULL, '39');
INSERT INTO `b_op_log` VALUES (288, '127.0.0.1', '2023-05-27 21:08:16.902476', '/myapp/index/classification/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (289, '127.0.0.1', '2023-05-27 21:08:16.902476', '/myapp/index/classification/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (290, '127.0.0.1', '2023-05-27 21:08:16.906348', '/myapp/index/classification/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (291, '127.0.0.1', '2023-05-27 21:08:16.912659', '/myapp/index/classification/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (292, '127.0.0.1', '2023-05-27 21:08:16.929173', '/upload/cover/1685170107820.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (293, '127.0.0.1', '2023-05-27 21:08:16.947060', '/upload/cover/1685170107820.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (294, '127.0.0.1', '2023-05-27 21:09:29.856892', '/myapp/admin/adminLogin', 'POST', NULL, '27');
INSERT INTO `b_op_log` VALUES (295, '127.0.0.1', '2023-05-27 21:09:30.463708', '/myapp/admin/classification/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (296, '127.0.0.1', '2023-05-27 21:09:30.470718', '/myapp/admin/classification/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (297, '127.0.0.1', '2023-05-27 21:09:30.501955', '/myapp/admin/classification/list', 'GET', NULL, '41');
INSERT INTO `b_op_log` VALUES (298, '127.0.0.1', '2023-05-27 21:09:42.160525', '/myapp/admin/classification/list', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (299, '127.0.0.1', '2023-05-27 21:09:43.215872', '/myapp/admin/tag/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (300, '127.0.0.1', '2023-05-27 21:09:44.171536', '/myapp/admin/classification/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (301, '127.0.0.1', '2023-05-27 21:09:44.852395', '/myapp/admin/tag/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (302, '127.0.0.1', '2023-05-27 21:09:44.877956', '/myapp/admin/tag/list', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (303, '127.0.0.1', '2023-05-27 21:09:44.892203', '/myapp/admin/tag/list', 'GET', NULL, '45');
INSERT INTO `b_op_log` VALUES (304, '127.0.0.1', '2023-05-27 21:14:11.848287', '/myapp/admin/thing/create', 'POST', NULL, '15276');
INSERT INTO `b_op_log` VALUES (305, '127.0.0.1', '2023-05-27 21:18:49.056385', '/myapp/admin/tag/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (306, '127.0.0.1', '2023-05-27 21:18:49.060467', '/myapp/admin/tag/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (307, '127.0.0.1', '2023-05-27 21:18:49.086429', '/myapp/admin/tag/list', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (308, '127.0.0.1', '2023-05-27 21:19:27.550558', '/myapp/admin/thing/create', 'POST', NULL, '20050');
INSERT INTO `b_op_log` VALUES (309, '127.0.0.1', '2023-05-27 21:20:21.536757', '/myapp/admin/thing/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (310, '127.0.0.1', '2023-05-27 21:20:21.538757', '/myapp/admin/thing/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (311, '127.0.0.1', '2023-05-27 21:20:21.592820', '/myapp/admin/thing/list', 'GET', NULL, '60');
INSERT INTO `b_op_log` VALUES (312, '127.0.0.1', '2023-05-27 21:20:42.779972', '/myapp/admin/thing/create', 'POST', NULL, '3849');
INSERT INTO `b_op_log` VALUES (313, '127.0.0.1', '2023-05-27 21:20:43.382019', '/myapp/admin/thing/list', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (314, '127.0.0.1', '2023-05-27 21:26:09.196608', '/myapp/admin/thing/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (315, '127.0.0.1', '2023-05-27 21:26:09.215608', '/myapp/admin/tag/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (316, '127.0.0.1', '2023-05-27 21:26:09.250157', '/myapp/admin/tag/list', 'GET', NULL, '50');
INSERT INTO `b_op_log` VALUES (317, '127.0.0.1', '2023-05-27 21:26:23.009870', '/myapp/admin/classification/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (318, '127.0.0.1', '2023-05-27 21:26:24.163503', '/myapp/admin/tag/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (319, '127.0.0.1', '2023-05-27 21:26:24.169620', '/myapp/admin/tag/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (320, '127.0.0.1', '2023-05-27 21:26:24.214891', '/myapp/admin/tag/list', 'GET', NULL, '55');
INSERT INTO `b_op_log` VALUES (321, '127.0.0.1', '2023-05-27 21:26:30.381049', '/myapp/admin/classification/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (322, '127.0.0.1', '2023-05-27 21:26:31.257281', '/myapp/admin/thing/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (323, '127.0.0.1', '2023-05-27 21:26:31.283365', '/myapp/admin/thing/list', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (324, '127.0.0.1', '2023-05-27 21:26:31.335658', '/myapp/admin/thing/list', 'GET', NULL, '85');
INSERT INTO `b_op_log` VALUES (325, '127.0.0.1', '2023-05-27 21:34:21.277867', '/myapp/admin/thing/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (326, '127.0.0.1', '2023-05-27 21:34:21.278849', '/myapp/admin/thing/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (327, '127.0.0.1', '2023-05-27 21:34:21.312277', '/myapp/admin/thing/list', 'GET', NULL, '39');
INSERT INTO `b_op_log` VALUES (328, '127.0.0.1', '2023-05-27 21:36:56.409605', '/myapp/admin/tag/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (329, '127.0.0.1', '2023-05-27 21:36:56.417956', '/myapp/admin/tag/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (330, '127.0.0.1', '2023-05-27 21:36:56.452789', '/myapp/admin/tag/list', 'GET', NULL, '48');
INSERT INTO `b_op_log` VALUES (331, '127.0.0.1', '2023-05-27 21:37:24.729039', '/myapp/admin/thing/create', 'POST', NULL, '6401');
INSERT INTO `b_op_log` VALUES (332, '127.0.0.1', '2023-05-27 21:37:26.769025', '/myapp/admin/thing/list', 'GET', NULL, '37');
INSERT INTO `b_op_log` VALUES (333, '127.0.0.1', '2023-05-27 21:39:24.419907', '/myapp/admin/thing/update', 'POST', NULL, '34');
INSERT INTO `b_op_log` VALUES (334, '127.0.0.1', '2023-05-27 21:39:26.580904', '/myapp/admin/thing/list', 'GET', NULL, '96');
INSERT INTO `b_op_log` VALUES (335, '127.0.0.1', '2023-05-27 21:39:38.325900', '/myapp/admin/thing/update', 'POST', NULL, '41');
INSERT INTO `b_op_log` VALUES (336, '127.0.0.1', '2023-05-27 21:39:38.429613', '/myapp/admin/thing/list', 'GET', NULL, '65');
INSERT INTO `b_op_log` VALUES (337, '127.0.0.1', '2023-05-27 21:40:41.165870', '/myapp/admin/thing/update', 'POST', NULL, '54');
INSERT INTO `b_op_log` VALUES (338, '127.0.0.1', '2023-05-27 21:40:41.294478', '/myapp/admin/thing/list', 'GET', NULL, '59');
INSERT INTO `b_op_log` VALUES (339, '127.0.0.1', '2023-05-27 21:40:47.331886', '/myapp/admin/thing/delete', 'POST', NULL, '30');
INSERT INTO `b_op_log` VALUES (340, '127.0.0.1', '2023-05-27 21:40:47.436482', '/myapp/admin/thing/list', 'GET', NULL, '78');
INSERT INTO `b_op_log` VALUES (341, '127.0.0.1', '2023-05-27 21:40:49.440576', '/myapp/admin/thing/delete', 'POST', NULL, '52');
INSERT INTO `b_op_log` VALUES (342, '127.0.0.1', '2023-05-27 21:40:49.546426', '/myapp/admin/thing/list', 'GET', NULL, '76');
INSERT INTO `b_op_log` VALUES (343, '127.0.0.1', '2023-05-27 21:40:50.912959', '/myapp/admin/thing/delete', 'POST', NULL, '54');
INSERT INTO `b_op_log` VALUES (344, '127.0.0.1', '2023-05-27 21:40:50.987366', '/myapp/admin/thing/list', 'GET', NULL, '44');
INSERT INTO `b_op_log` VALUES (345, '127.0.0.1', '2023-05-27 21:40:54.421286', '/upload/cover/1685193225537.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (346, '127.0.0.1', '2023-05-27 21:41:37.214270', '/myapp/admin/classification/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (347, '127.0.0.1', '2023-05-27 21:41:38.720265', '/myapp/admin/tag/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (348, '127.0.0.1', '2023-05-27 21:41:39.872866', '/myapp/admin/classification/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (349, '127.0.0.1', '2023-05-27 21:41:40.918843', '/myapp/admin/thing/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (350, '127.0.0.1', '2023-05-27 21:41:40.920845', '/myapp/admin/thing/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (351, '127.0.0.1', '2023-05-27 21:41:40.967622', '/myapp/admin/thing/list', 'GET', NULL, '50');
INSERT INTO `b_op_log` VALUES (352, '127.0.0.1', '2023-05-27 21:41:45.626599', '/myapp/admin/classification/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (353, '127.0.0.1', '2023-05-27 21:41:47.005001', '/myapp/admin/tag/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (354, '127.0.0.1', '2023-05-27 21:41:47.699429', '/myapp/admin/comment/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (355, '127.0.0.1', '2023-05-27 21:41:48.357557', '/myapp/admin/user/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (356, '127.0.0.1', '2023-05-27 21:41:49.380215', '/myapp/admin/tag/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (357, '127.0.0.1', '2023-05-27 21:41:49.384795', '/myapp/admin/tag/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (358, '127.0.0.1', '2023-05-27 21:41:49.427724', '/myapp/admin/tag/list', 'GET', NULL, '54');
INSERT INTO `b_op_log` VALUES (359, '127.0.0.1', '2023-05-27 21:42:14.843572', '/upload/cover/1685193225537.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (360, '127.0.0.1', '2023-05-27 21:42:20.852755', '/myapp/admin/thing/update', 'POST', NULL, '61');
INSERT INTO `b_op_log` VALUES (361, '127.0.0.1', '2023-05-27 21:42:22.878042', '/myapp/admin/thing/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (362, '127.0.0.1', '2023-05-27 21:42:39.168121', '/myapp/admin/thing/update', 'POST', NULL, '65');
INSERT INTO `b_op_log` VALUES (363, '127.0.0.1', '2023-05-27 21:42:41.235635', '/myapp/admin/thing/list', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (364, '127.0.0.1', '2023-05-27 21:47:17.087163', '/myapp/admin/overview/count', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (365, '127.0.0.1', '2023-05-27 21:48:27.575631', '/myapp/admin/tag/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (366, '127.0.0.1', '2023-05-27 21:48:27.582948', '/myapp/admin/tag/list', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (367, '127.0.0.1', '2023-05-27 21:48:27.612618', '/myapp/admin/tag/list', 'GET', NULL, '56');
INSERT INTO `b_op_log` VALUES (368, '127.0.0.1', '2023-05-27 21:50:00.542958', '/upload/cover/1685193225537.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (369, '127.0.0.1', '2023-05-27 21:52:23.346343', '/myapp/admin/overview/sysInfo', 'GET', NULL, '1017');
INSERT INTO `b_op_log` VALUES (370, '127.0.0.1', '2023-05-27 21:52:24.414044', '/myapp/admin/overview/count', 'GET', NULL, '35');
INSERT INTO `b_op_log` VALUES (371, '127.0.0.1', '2023-05-27 21:52:27.450429', '/myapp/admin/overview/count', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (372, '127.0.0.1', '2023-05-27 21:52:29.270427', '/myapp/admin/classification/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (373, '127.0.0.1', '2023-05-27 21:52:29.271443', '/myapp/admin/classification/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (374, '127.0.0.1', '2023-05-27 21:52:29.318767', '/myapp/admin/classification/list', 'GET', NULL, '53');
INSERT INTO `b_op_log` VALUES (375, '127.0.0.1', '2023-05-27 21:52:32.675644', '/myapp/admin/classification/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (376, '127.0.0.1', '2023-05-27 21:52:33.880816', '/myapp/admin/overview/count', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (377, '127.0.0.1', '2023-05-27 21:53:57.413055', '/myapp/admin/overview/count', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (378, '127.0.0.1', '2023-05-27 21:54:03.027834', '/myapp/admin/classification/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (379, '127.0.0.1', '2023-05-27 21:54:03.054625', '/myapp/admin/classification/list', 'GET', NULL, '35');
INSERT INTO `b_op_log` VALUES (380, '127.0.0.1', '2023-05-27 21:54:03.082632', '/myapp/admin/classification/list', 'GET', NULL, '64');
INSERT INTO `b_op_log` VALUES (381, '127.0.0.1', '2023-05-27 21:54:40.423138', '/myapp/admin/classification/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (382, '127.0.0.1', '2023-05-27 21:54:40.447826', '/myapp/admin/classification/list', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (383, '127.0.0.1', '2023-05-27 21:54:40.449823', '/myapp/admin/classification/list', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (384, '127.0.0.1', '2023-05-27 21:54:40.644536', '/myapp/admin/overview/count', 'GET', NULL, '35');
INSERT INTO `b_op_log` VALUES (385, '127.0.0.1', '2023-05-27 21:55:29.558640', '/myapp/admin/tag/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (386, '127.0.0.1', '2023-05-27 21:55:29.573709', '/myapp/admin/tag/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (387, '127.0.0.1', '2023-05-27 21:55:29.610353', '/myapp/admin/tag/list', 'GET', NULL, '57');
INSERT INTO `b_op_log` VALUES (388, '127.0.0.1', '2023-05-27 21:56:47.676683', '/myapp/admin/classification/list', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (389, '127.0.0.1', '2023-05-27 21:56:48.765851', '/myapp/admin/tag/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (390, '127.0.0.1', '2023-05-27 21:56:48.787388', '/myapp/admin/tag/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (391, '127.0.0.1', '2023-05-27 21:56:48.820813', '/myapp/admin/tag/list', 'GET', NULL, '60');
INSERT INTO `b_op_log` VALUES (392, '127.0.0.1', '2023-05-27 21:56:50.225761', '/upload/cover/1685193225537.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (393, '127.0.0.1', '2023-05-27 21:56:53.456988', '/myapp/admin/thing/update', 'POST', NULL, '36');
INSERT INTO `b_op_log` VALUES (394, '127.0.0.1', '2023-05-27 21:56:53.565872', '/myapp/admin/thing/list', 'GET', NULL, '72');
INSERT INTO `b_op_log` VALUES (395, '127.0.0.1', '2023-05-27 21:56:57.943592', '/myapp/admin/thing/delete', 'POST', NULL, '32');
INSERT INTO `b_op_log` VALUES (396, '127.0.0.1', '2023-05-27 21:56:58.002821', '/myapp/admin/thing/list', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (397, '127.0.0.1', '2023-05-27 21:57:00.416050', '/myapp/admin/classification/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (398, '127.0.0.1', '2023-05-27 21:57:01.148872', '/myapp/admin/tag/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (399, '127.0.0.1', '2023-05-27 21:57:01.978472', '/myapp/admin/tag/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (400, '127.0.0.1', '2023-05-27 21:57:01.982083', '/myapp/admin/tag/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (401, '127.0.0.1', '2023-05-27 21:57:02.006336', '/myapp/admin/tag/list', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (402, '127.0.0.1', '2023-05-27 21:57:16.227628', '/myapp/index/thing/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (403, '127.0.0.1', '2023-05-27 21:57:16.229732', '/myapp/index/thing/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (404, '127.0.0.1', '2023-05-27 21:57:16.230737', '/myapp/index/thing/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (405, '127.0.0.1', '2023-05-27 21:57:16.239658', '/myapp/index/thing/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (406, '127.0.0.1', '2023-05-27 21:57:16.261926', '/upload/cover/1685170107820.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (407, '127.0.0.1', '2023-05-27 21:57:16.261926', '/upload/cover/1685170107820.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (408, '127.0.0.1', '2023-05-27 21:59:01.630872', '/myapp/admin/tag/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (409, '127.0.0.1', '2023-05-27 21:59:01.634210', '/myapp/admin/tag/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (410, '127.0.0.1', '2023-05-27 21:59:01.652619', '/myapp/admin/tag/list', 'GET', NULL, '37');
INSERT INTO `b_op_log` VALUES (411, '127.0.0.1', '2023-05-27 21:59:03.019794', '/myapp/index/thing/list', 'GET', NULL, '35');
INSERT INTO `b_op_log` VALUES (412, '127.0.0.1', '2023-05-27 21:59:03.705266', '/myapp/index/thing/list', 'GET', NULL, '39');
INSERT INTO `b_op_log` VALUES (413, '127.0.0.1', '2023-05-27 22:34:18.743424', '/myapp/index/thing/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (414, '127.0.0.1', '2023-05-27 22:34:18.769078', '/myapp/index/thing/list', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (415, '127.0.0.1', '2023-05-27 22:34:18.780638', '/myapp/index/thing/list', 'GET', NULL, '42');
INSERT INTO `b_op_log` VALUES (416, '127.0.0.1', '2023-05-27 22:34:18.786698', '/myapp/index/thing/list', 'GET', NULL, '48');
INSERT INTO `b_op_log` VALUES (417, '127.0.0.1', '2023-05-27 22:36:45.889166', '/myapp/index/thing/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (418, '127.0.0.1', '2023-05-27 22:36:46.942211', '/myapp/index/thing/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (419, '127.0.0.1', '2023-05-27 22:36:48.183643', '/myapp/index/thing/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (420, '127.0.0.1', '2023-05-27 22:36:50.246154', '/myapp/index/thing/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (421, '127.0.0.1', '2023-05-27 22:36:51.767312', '/myapp/index/thing/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (422, '127.0.0.1', '2023-05-27 22:36:53.885651', '/myapp/index/thing/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (423, '127.0.0.1', '2023-05-27 22:36:59.973937', '/myapp/index/thing/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (424, '127.0.0.1', '2023-05-27 22:40:09.364775', '/myapp/index/thing/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (425, '127.0.0.1', '2023-05-27 22:40:09.367137', '/myapp/index/thing/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (426, '127.0.0.1', '2023-05-27 22:40:09.398615', '/myapp/index/thing/list', 'GET', NULL, '37');
INSERT INTO `b_op_log` VALUES (427, '127.0.0.1', '2023-05-27 22:40:09.424572', '/upload/cover/1685170107820.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (428, '127.0.0.1', '2023-05-27 22:40:09.425573', '/upload/cover/1685170107820.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (429, '127.0.0.1', '2023-05-28 10:13:07.953620', '/myapp/admin/tag/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (430, '127.0.0.1', '2023-05-28 10:13:07.959642', '/myapp/admin/tag/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (431, '127.0.0.1', '2023-05-28 10:13:07.988245', '/myapp/admin/tag/list', 'GET', NULL, '42');
INSERT INTO `b_op_log` VALUES (432, '127.0.0.1', '2023-05-28 10:13:08.145322', '/myapp/index/thing/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (433, '127.0.0.1', '2023-05-28 10:13:08.147322', '/myapp/index/thing/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (434, '127.0.0.1', '2023-05-28 10:13:08.149322', '/myapp/index/thing/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (435, '127.0.0.1', '2023-05-28 10:13:08.165341', '/myapp/index/thing/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (436, '127.0.0.1', '2023-05-28 10:13:08.186363', '/upload/cover/1685170107820.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (437, '127.0.0.1', '2023-05-28 10:13:08.198882', '/upload/cover/1685170107820.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (438, '127.0.0.1', '2023-05-28 10:16:19.737218', '/myapp/admin/tag/list', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (439, '127.0.0.1', '2023-05-28 10:16:19.746653', '/myapp/admin/tag/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (440, '127.0.0.1', '2023-05-28 10:16:19.771477', '/myapp/admin/tag/list', 'GET', NULL, '37');
INSERT INTO `b_op_log` VALUES (441, '127.0.0.1', '2023-05-28 10:16:25.525366', '/myapp/admin/thing/update', 'POST', NULL, '25');
INSERT INTO `b_op_log` VALUES (442, '127.0.0.1', '2023-05-28 10:16:25.625974', '/myapp/admin/thing/list', 'GET', NULL, '66');
INSERT INTO `b_op_log` VALUES (443, '127.0.0.1', '2023-05-28 10:16:31.856872', '/myapp/admin/thing/update', 'POST', NULL, '44');
INSERT INTO `b_op_log` VALUES (444, '127.0.0.1', '2023-05-28 10:16:31.970220', '/myapp/admin/thing/list', 'GET', NULL, '87');
INSERT INTO `b_op_log` VALUES (445, '127.0.0.1', '2023-05-28 10:16:35.503705', '/myapp/index/classification/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (446, '127.0.0.1', '2023-05-28 10:16:35.512036', '/myapp/index/thing/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (447, '127.0.0.1', '2023-05-28 10:16:35.516488', '/myapp/index/thing/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (448, '127.0.0.1', '2023-05-28 10:16:35.539746', '/myapp/index/thing/list', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (449, '127.0.0.1', '2023-05-28 10:16:35.570345', '/upload/cover/1685240191000.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (450, '127.0.0.1', '2023-05-28 10:16:35.595987', '/upload/cover/1685240191000.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (451, '127.0.0.1', '2023-05-28 10:30:42.286016', '/myapp/index/thing/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (452, '127.0.0.1', '2023-05-28 10:30:42.289619', '/myapp/index/thing/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (453, '127.0.0.1', '2023-05-28 10:30:42.292932', '/myapp/index/thing/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (454, '127.0.0.1', '2023-05-28 10:30:42.312973', '/myapp/index/thing/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (455, '127.0.0.1', '2023-05-28 10:30:42.337948', '/upload/cover/1685240191000.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (456, '127.0.0.1', '2023-05-28 10:30:42.341088', '/upload/cover/1685170987684.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (457, '127.0.0.1', '2023-05-28 10:30:42.342100', '/upload/cover/1685170987684.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (458, '127.0.0.1', '2023-05-28 10:30:42.342100', '/upload/cover/1685240191000.jpeg', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (459, '127.0.0.1', '2023-05-28 10:33:02.244701', '/myapp/index/thing/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (460, '127.0.0.1', '2023-05-28 10:33:02.247709', '/myapp/index/thing/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (461, '127.0.0.1', '2023-05-28 10:33:02.254704', '/myapp/index/thing/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (462, '127.0.0.1', '2023-05-28 10:33:02.257712', '/myapp/index/thing/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (463, '127.0.0.1', '2023-05-28 10:33:02.280216', '/upload/cover/1685240184357.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (464, '127.0.0.1', '2023-05-28 10:33:02.281228', '/upload/cover/1685170107820.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (465, '127.0.0.1', '2023-05-28 10:33:02.281228', '/upload/cover/1685170107820.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (466, '127.0.0.1', '2023-05-28 10:33:02.281228', '/upload/cover/1685170107820.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (467, '127.0.0.1', '2023-05-28 10:33:31.401371', '/myapp/index/thing/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (468, '127.0.0.1', '2023-05-28 10:33:32.619983', '/myapp/index/thing/list', 'GET', NULL, '37');
INSERT INTO `b_op_log` VALUES (469, '127.0.0.1', '2023-05-28 10:34:18.864888', '/myapp/index/thing/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (470, '127.0.0.1', '2023-05-28 10:34:18.867349', '/myapp/index/thing/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (471, '127.0.0.1', '2023-05-28 10:34:18.875674', '/myapp/index/thing/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (472, '127.0.0.1', '2023-05-28 10:35:04.230186', '/myapp/index/thing/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (473, '127.0.0.1', '2023-05-28 10:35:04.231189', '/myapp/index/thing/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (474, '127.0.0.1', '2023-05-28 10:35:04.233196', '/myapp/index/thing/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (475, '127.0.0.1', '2023-05-28 10:35:04.245773', '/myapp/index/thing/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (476, '127.0.0.1', '2023-05-28 10:35:04.267637', '/upload/cover/1685170107820.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (477, '127.0.0.1', '2023-05-28 10:35:04.268679', '/upload/cover/1685170107820.jpeg', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (478, '127.0.0.1', '2023-05-28 10:35:04.268679', '/upload/cover/1685170107820.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (479, '127.0.0.1', '2023-05-28 10:35:04.268679', '/upload/cover/1685170107820.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (480, '127.0.0.1', '2023-05-28 10:35:22.780075', '/myapp/index/thing/list', 'GET', NULL, '36');
INSERT INTO `b_op_log` VALUES (481, '127.0.0.1', '2023-05-28 10:36:44.208262', '/myapp/index/thing/list', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (482, '127.0.0.1', '2023-05-28 10:36:47.033101', '/myapp/index/thing/list', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (483, '127.0.0.1', '2023-05-28 10:37:12.711964', '/myapp/index/thing/list', 'GET', NULL, '40');
INSERT INTO `b_op_log` VALUES (484, '127.0.0.1', '2023-05-28 10:37:16.757585', '/myapp/index/thing/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (485, '127.0.0.1', '2023-05-28 10:37:16.763636', '/myapp/index/thing/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (486, '127.0.0.1', '2023-05-28 10:37:16.768887', '/myapp/index/thing/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (487, '127.0.0.1', '2023-05-28 10:37:16.788920', '/myapp/index/thing/list', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (488, '127.0.0.1', '2023-05-28 10:37:16.820595', '/upload/cover/1685170987684.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (489, '127.0.0.1', '2023-05-28 10:37:16.822617', '/upload/cover/1685170987684.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (490, '127.0.0.1', '2023-05-28 10:37:16.822617', '/upload/cover/1685170987684.jpeg', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (491, '127.0.0.1', '2023-05-28 10:37:16.823631', '/upload/cover/1685170987684.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (492, '127.0.0.1', '2023-05-28 10:37:32.487224', '/myapp/index/thing/list', 'GET', NULL, '44');
INSERT INTO `b_op_log` VALUES (493, '127.0.0.1', '2023-05-28 10:38:41.414010', '/myapp/index/thing/list', 'GET', NULL, '38');
INSERT INTO `b_op_log` VALUES (494, '127.0.0.1', '2023-05-28 10:38:42.768088', '/myapp/index/thing/list', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (495, '127.0.0.1', '2023-05-28 10:38:43.312188', '/myapp/index/thing/list', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (496, '127.0.0.1', '2023-05-28 10:38:46.394361', '/myapp/index/tag/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (497, '127.0.0.1', '2023-05-28 10:38:46.395784', '/myapp/index/tag/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (498, '127.0.0.1', '2023-05-28 10:38:46.397997', '/myapp/index/tag/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (499, '127.0.0.1', '2023-05-28 10:38:46.419601', '/myapp/index/tag/list', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (500, '127.0.0.1', '2023-05-28 10:38:46.452845', '/upload/cover/1685170987684.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (501, '127.0.0.1', '2023-05-28 10:38:46.454948', '/upload/cover/1685170107820.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (502, '127.0.0.1', '2023-05-28 10:38:46.454948', '/upload/cover/1685170107820.jpeg', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (503, '127.0.0.1', '2023-05-28 10:38:46.461075', '/upload/cover/1685240191000.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (504, '127.0.0.1', '2023-05-28 10:42:59.633655', '/myapp/index/thing/list', 'GET', NULL, '41');
INSERT INTO `b_op_log` VALUES (505, '127.0.0.1', '2023-05-28 10:43:00.851900', '/myapp/index/thing/list', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (506, '127.0.0.1', '2023-05-28 10:47:23.916406', '/myapp/index/thing/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (507, '127.0.0.1', '2023-05-28 10:49:27.618567', '/myapp/index/thing/detail', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (508, '127.0.0.1', '2023-05-28 10:49:27.654653', '/myapp/index/comment/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (509, '127.0.0.1', '2023-05-28 10:49:27.659659', '/myapp/index/comment/list', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (510, '127.0.0.1', '2023-05-28 10:49:27.677659', '/myapp/index/comment/list', 'GET', NULL, '48');
INSERT INTO `b_op_log` VALUES (511, '127.0.0.1', '2023-05-28 10:49:27.704652', '/upload/cover/1685240184357.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (512, '127.0.0.1', '2023-05-28 10:49:27.717660', '/upload/cover/1685240184357.jpeg', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (513, '127.0.0.1', '2023-05-28 10:49:42.397760', '/myapp/index/order/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (514, '127.0.0.1', '2023-05-28 10:49:42.413052', '/myapp/index/thing/getWishThingList', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (515, '127.0.0.1', '2023-05-28 10:49:42.424102', '/myapp/index/thing/getWishThingList', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (516, '127.0.0.1', '2023-05-28 10:49:42.437864', '/myapp/index/thing/getWishThingList', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (517, '127.0.0.1', '2023-05-28 10:49:44.559392', '/myapp/index/comment/listMyComments', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (518, '127.0.0.1', '2023-05-28 10:50:57.299211', '/myapp/index/thing/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (519, '127.0.0.1', '2023-05-28 10:50:57.304476', '/myapp/index/thing/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (520, '127.0.0.1', '2023-05-28 10:50:57.309486', '/myapp/index/thing/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (521, '127.0.0.1', '2023-05-28 10:50:57.332485', '/myapp/index/thing/list', 'GET', NULL, '45');
INSERT INTO `b_op_log` VALUES (522, '127.0.0.1', '2023-05-28 10:53:58.174596', '/myapp/index/comment/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (523, '127.0.0.1', '2023-05-28 10:53:58.193341', '/myapp/index/comment/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (524, '127.0.0.1', '2023-05-28 10:53:58.215103', '/myapp/index/comment/list', 'GET', NULL, '45');
INSERT INTO `b_op_log` VALUES (525, '127.0.0.1', '2023-05-28 10:53:58.219714', '/myapp/index/comment/list', 'GET', NULL, '49');
INSERT INTO `b_op_log` VALUES (526, '127.0.0.1', '2023-05-28 10:53:58.249714', '/upload/cover/1685240184357.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (527, '127.0.0.1', '2023-05-28 10:53:58.249714', '/upload/cover/1685240191000.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (528, '127.0.0.1', '2023-05-28 10:57:48.193710', '/myapp/index/thing/detail', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (529, '127.0.0.1', '2023-05-28 10:57:48.217097', '/myapp/index/thing/detail', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (530, '127.0.0.1', '2023-05-28 10:57:48.225098', '/myapp/index/thing/detail', 'GET', NULL, '38');
INSERT INTO `b_op_log` VALUES (531, '127.0.0.1', '2023-05-28 10:57:48.241284', '/myapp/index/thing/detail', 'GET', NULL, '53');
INSERT INTO `b_op_log` VALUES (532, '127.0.0.1', '2023-05-28 10:57:48.262303', '/upload/cover/1685240184357.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (533, '127.0.0.1', '2023-05-28 10:57:48.286675', '/upload/cover/1685240184357.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (534, '127.0.0.1', '2023-05-28 10:58:16.917524', '/myapp/index/comment/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (535, '127.0.0.1', '2023-05-28 10:58:16.923925', '/myapp/index/comment/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (536, '127.0.0.1', '2023-05-28 10:58:16.933915', '/myapp/index/comment/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (537, '127.0.0.1', '2023-05-28 10:58:16.934929', '/myapp/index/comment/list', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (538, '127.0.0.1', '2023-05-28 10:58:37.842575', '/myapp/index/thing/detail', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (539, '127.0.0.1', '2023-05-28 10:58:37.846573', '/myapp/index/thing/detail', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (540, '127.0.0.1', '2023-05-28 10:58:37.858563', '/myapp/index/thing/detail', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (541, '127.0.0.1', '2023-05-28 10:58:37.859563', '/myapp/index/thing/detail', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (542, '127.0.0.1', '2023-05-28 11:00:10.353323', '/myapp/index/thing/detail', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (543, '127.0.0.1', '2023-05-28 11:00:10.357457', '/myapp/index/thing/detail', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (544, '127.0.0.1', '2023-05-28 11:00:10.365184', '/myapp/index/thing/detail', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (545, '127.0.0.1', '2023-05-28 11:00:10.377097', '/myapp/index/thing/detail', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (546, '127.0.0.1', '2023-05-28 11:01:11.386054', '/myapp/index/comment/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (547, '127.0.0.1', '2023-05-28 11:01:11.388042', '/myapp/index/comment/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (548, '127.0.0.1', '2023-05-28 11:01:11.405266', '/myapp/index/comment/list', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (549, '127.0.0.1', '2023-05-28 11:01:11.407249', '/myapp/index/comment/list', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (550, '127.0.0.1', '2023-05-28 11:01:28.962220', '/myapp/index/comment/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (551, '127.0.0.1', '2023-05-28 11:01:28.966514', '/myapp/index/comment/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (552, '127.0.0.1', '2023-05-28 11:01:28.974200', '/myapp/index/comment/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (553, '127.0.0.1', '2023-05-28 11:01:28.979090', '/myapp/index/comment/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (554, '127.0.0.1', '2023-05-28 11:02:32.195700', '/myapp/index/comment/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (555, '127.0.0.1', '2023-05-28 11:02:32.202193', '/myapp/index/comment/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (556, '127.0.0.1', '2023-05-28 11:02:32.210366', '/myapp/index/comment/list', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (557, '127.0.0.1', '2023-05-28 11:02:32.213365', '/myapp/index/comment/list', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (558, '127.0.0.1', '2023-05-28 11:02:32.224683', '/upload/cover/1685240184357.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (559, '127.0.0.1', '2023-05-28 11:02:32.249250', '/upload/cover/1685240184357.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (560, '127.0.0.1', '2023-05-28 11:03:45.749173', '/myapp/index/comment/list', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (561, '127.0.0.1', '2023-05-28 11:03:45.763719', '/myapp/index/comment/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (562, '127.0.0.1', '2023-05-28 11:03:45.769722', '/myapp/index/comment/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (563, '127.0.0.1', '2023-05-28 11:03:45.778726', '/myapp/index/comment/list', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (564, '127.0.0.1', '2023-05-28 11:03:45.800267', '/upload/cover/1685240191000.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (565, '127.0.0.1', '2023-05-28 11:03:45.799254', '/upload/cover/1685240184357.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (566, '127.0.0.1', '2023-05-28 11:03:45.801258', '/upload/cover/1685240184357.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (567, '127.0.0.1', '2023-05-28 11:03:45.801258', '/upload/cover/1685240184357.jpeg', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (568, '127.0.0.1', '2023-05-28 11:03:49.643078', '/myapp/index/thing/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (569, '127.0.0.1', '2023-05-28 11:03:49.649118', '/myapp/index/thing/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (570, '127.0.0.1', '2023-05-28 11:03:49.664115', '/myapp/index/thing/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (571, '127.0.0.1', '2023-05-28 11:03:49.669383', '/myapp/index/thing/list', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (572, '127.0.0.1', '2023-05-28 11:03:49.686811', '/upload/cover/1685240184357.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (573, '127.0.0.1', '2023-05-28 11:03:49.687855', '/upload/cover/1685240184357.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (574, '127.0.0.1', '2023-05-28 11:03:49.687855', '/upload/cover/1685240184357.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (575, '127.0.0.1', '2023-05-28 11:03:49.688915', '/upload/cover/1685240184357.jpeg', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (576, '127.0.0.1', '2023-05-28 11:04:16.095362', '/myapp/index/thing/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (577, '127.0.0.1', '2023-05-28 11:04:16.100354', '/myapp/index/thing/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (578, '127.0.0.1', '2023-05-28 11:04:16.108362', '/myapp/index/thing/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (579, '127.0.0.1', '2023-05-28 11:04:16.119357', '/myapp/index/thing/list', 'GET', NULL, '36');
INSERT INTO `b_op_log` VALUES (580, '127.0.0.1', '2023-05-28 11:04:22.325730', '/myapp/index/thing/detail', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (581, '127.0.0.1', '2023-05-28 11:04:22.342882', '/myapp/index/comment/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (582, '127.0.0.1', '2023-05-28 11:04:22.343903', '/myapp/index/comment/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (583, '127.0.0.1', '2023-05-28 11:04:22.346002', '/myapp/index/comment/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (584, '127.0.0.1', '2023-05-28 11:04:25.994706', '/myapp/index/comment/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (585, '127.0.0.1', '2023-05-28 11:04:26.003713', '/myapp/index/comment/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (586, '127.0.0.1', '2023-05-28 11:04:26.021718', '/myapp/index/comment/list', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (587, '127.0.0.1', '2023-05-28 11:04:26.039741', '/myapp/index/comment/list', 'GET', NULL, '50');
INSERT INTO `b_op_log` VALUES (588, '127.0.0.1', '2023-05-28 11:04:37.431154', '/upload/raw/1685172643495.mp4', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (589, '127.0.0.1', '2023-05-28 11:04:37.485091', '/upload/raw/1685172643495.mp4', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (590, '127.0.0.1', '2023-05-28 11:05:29.495823', '/myapp/index/thing/detail', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (591, '127.0.0.1', '2023-05-28 11:05:29.502821', '/myapp/index/thing/detail', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (592, '127.0.0.1', '2023-05-28 11:05:29.520823', '/myapp/index/thing/detail', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (593, '127.0.0.1', '2023-05-28 11:05:29.524814', '/myapp/index/thing/detail', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (594, '127.0.0.1', '2023-05-28 11:05:29.539813', '/upload/cover/1685240184357.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (595, '127.0.0.1', '2023-05-28 11:05:29.539813', '/upload/cover/1685240184357.jpeg', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (596, '127.0.0.1', '2023-05-28 11:05:29.540813', '/upload/cover/1685240184357.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (597, '127.0.0.1', '2023-05-28 11:05:29.552828', '/upload/cover/1685240184357.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (598, '127.0.0.1', '2023-05-28 11:05:44.089280', '/myapp/index/thing/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (599, '127.0.0.1', '2023-05-28 11:05:44.114278', '/myapp/index/comment/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (600, '127.0.0.1', '2023-05-28 11:05:44.124270', '/myapp/index/comment/list', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (601, '127.0.0.1', '2023-05-28 11:05:44.125269', '/myapp/index/comment/list', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (602, '127.0.0.1', '2023-05-28 11:05:44.151322', '/upload/cover/1685240184357.jpeg', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (603, '127.0.0.1', '2023-05-28 11:05:44.152270', '/upload/cover/1685240184357.jpeg', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (604, '127.0.0.1', '2023-05-28 11:05:44.152270', '/upload/cover/1685240184357.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (605, '127.0.0.1', '2023-05-28 11:05:44.152270', '/upload/cover/1685240184357.jpeg', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (606, '127.0.0.1', '2023-05-28 11:06:01.186785', '/myapp/index/notice/list_api', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (607, '127.0.0.1', '2023-05-28 11:06:01.196297', '/myapp/index/notice/list_api', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (608, '127.0.0.1', '2023-05-28 11:06:01.212307', '/myapp/index/notice/list_api', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (609, '127.0.0.1', '2023-05-28 11:06:01.219305', '/myapp/index/notice/list_api', 'GET', NULL, '39');
INSERT INTO `b_op_log` VALUES (610, '127.0.0.1', '2023-05-28 11:06:01.248297', '/upload/cover/1685240184357.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (611, '127.0.0.1', '2023-05-28 11:06:01.249296', '/upload/cover/1685240184357.jpeg', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (612, '127.0.0.1', '2023-05-28 11:06:01.249296', '/upload/cover/1685240184357.jpeg', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (613, '127.0.0.1', '2023-05-28 11:06:01.250297', '/upload/cover/1685240184357.jpeg', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (614, '127.0.0.1', '2023-05-28 11:09:02.547976', '/upload/raw/1685172643495.mp4', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (615, '127.0.0.1', '2023-05-28 11:09:06.018854', '/myapp/index/notice/list_api', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (616, '127.0.0.1', '2023-05-28 11:09:06.031332', '/myapp/index/thing/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (617, '127.0.0.1', '2023-05-28 11:09:06.039658', '/myapp/index/thing/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (618, '127.0.0.1', '2023-05-28 11:09:06.042099', '/myapp/index/thing/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (619, '127.0.0.1', '2023-05-28 11:09:06.058531', '/upload/raw/1685172643495.mp4', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (620, '127.0.0.1', '2023-05-28 11:09:06.059863', '/upload/cover/1685240184357.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (621, '127.0.0.1', '2023-05-28 11:09:06.059863', '/upload/cover/1685240184357.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (622, '127.0.0.1', '2023-05-28 11:09:06.059863', '/upload/cover/1685240184357.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (623, '127.0.0.1', '2023-05-28 11:09:06.060944', '/upload/cover/1685240184357.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (624, '127.0.0.1', '2023-05-28 11:09:12.934063', '/myapp/index/comment/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (625, '127.0.0.1', '2023-05-28 11:09:12.945984', '/myapp/index/comment/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (626, '127.0.0.1', '2023-05-28 11:09:12.948035', '/myapp/index/comment/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (627, '127.0.0.1', '2023-05-28 11:09:12.953123', '/myapp/index/comment/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (628, '127.0.0.1', '2023-05-28 11:09:12.967713', '/upload/cover/1685240184357.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (629, '127.0.0.1', '2023-05-28 11:09:12.967713', '/upload/cover/1685240184357.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (630, '127.0.0.1', '2023-05-28 11:09:12.968751', '/upload/raw/1685172643495.mp4', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (631, '127.0.0.1', '2023-05-28 11:09:12.968751', '/upload/cover/1685240184357.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (632, '127.0.0.1', '2023-05-28 11:09:12.968751', '/upload/cover/1685240184357.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (633, '127.0.0.1', '2023-05-28 11:09:33.720052', '/myapp/index/comment/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (634, '127.0.0.1', '2023-05-28 11:09:33.723176', '/myapp/index/comment/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (635, '127.0.0.1', '2023-05-28 11:09:33.732421', '/myapp/index/comment/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (636, '127.0.0.1', '2023-05-28 11:09:33.733375', '/myapp/index/comment/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (637, '127.0.0.1', '2023-05-28 11:09:33.760904', '/upload/raw/1685171374586.mp4', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (638, '127.0.0.1', '2023-05-28 11:09:53.038585', '/myapp/index/comment/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (639, '127.0.0.1', '2023-05-28 11:09:53.042133', '/myapp/index/comment/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (640, '127.0.0.1', '2023-05-28 11:09:53.046129', '/myapp/index/comment/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (641, '127.0.0.1', '2023-05-28 11:09:53.051523', '/myapp/index/comment/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (642, '127.0.0.1', '2023-05-28 11:09:57.960572', '/myapp/index/thing/detail', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (643, '127.0.0.1', '2023-05-28 11:09:57.961569', '/myapp/index/thing/detail', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (644, '127.0.0.1', '2023-05-28 11:09:57.966653', '/myapp/index/thing/detail', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (645, '127.0.0.1', '2023-05-28 11:09:57.969564', '/myapp/index/thing/detail', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (646, '127.0.0.1', '2023-05-28 11:09:57.975560', '/upload/raw/1685172485691.mp4', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (647, '127.0.0.1', '2023-05-28 11:10:29.547327', '/myapp/index/comment/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (648, '127.0.0.1', '2023-05-28 11:10:29.549889', '/myapp/index/comment/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (649, '127.0.0.1', '2023-05-28 11:10:29.555020', '/myapp/index/comment/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (650, '127.0.0.1', '2023-05-28 11:10:29.564361', '/myapp/index/comment/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (651, '127.0.0.1', '2023-05-28 11:10:29.575709', '/upload/raw/1685171374586.mp4', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (652, '127.0.0.1', '2023-05-28 11:10:46.446183', '/upload/raw/1685171374586.mp4', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (653, '127.0.0.1', '2023-05-28 11:10:46.523755', '/upload/raw/1685171374586.mp4', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (654, '127.0.0.1', '2023-05-28 11:13:16.993413', '/myapp/index/thing/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (655, '127.0.0.1', '2023-05-28 11:13:16.994353', '/myapp/index/thing/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (656, '127.0.0.1', '2023-05-28 11:13:17.001315', '/myapp/index/thing/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (657, '127.0.0.1', '2023-05-28 11:13:17.005710', '/myapp/index/thing/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (658, '127.0.0.1', '2023-05-28 11:13:40.351442', '/myapp/index/thing/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (659, '127.0.0.1', '2023-05-28 11:13:40.357443', '/myapp/index/thing/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (660, '127.0.0.1', '2023-05-28 11:13:40.363443', '/myapp/index/thing/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (661, '127.0.0.1', '2023-05-28 11:13:40.366442', '/myapp/index/thing/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (662, '127.0.0.1', '2023-05-28 11:13:40.382843', '/upload/cover/1685240191000.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (663, '127.0.0.1', '2023-05-28 11:13:40.382843', '/upload/raw/1685171374586.mp4', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (664, '127.0.0.1', '2023-05-28 11:13:40.383888', '/upload/cover/1685240191000.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (665, '127.0.0.1', '2023-05-28 11:13:40.383888', '/upload/cover/1685240184357.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (666, '127.0.0.1', '2023-05-28 11:13:40.383888', '/upload/cover/1685240184357.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (667, '127.0.0.1', '2023-05-28 11:14:13.921115', '/upload/raw/1685171374586.mp4', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (668, '127.0.0.1', '2023-05-28 11:14:37.937143', '/myapp/index/comment/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (669, '127.0.0.1', '2023-05-28 11:14:37.940143', '/myapp/index/comment/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (670, '127.0.0.1', '2023-05-28 11:14:37.946805', '/myapp/index/comment/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (671, '127.0.0.1', '2023-05-28 11:14:37.954805', '/myapp/index/comment/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (672, '127.0.0.1', '2023-05-28 11:14:48.267158', '/myapp/index/comment/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (673, '127.0.0.1', '2023-05-28 11:14:48.269639', '/myapp/index/comment/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (674, '127.0.0.1', '2023-05-28 11:14:48.274921', '/myapp/index/comment/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (675, '127.0.0.1', '2023-05-28 11:14:48.278037', '/myapp/index/comment/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (676, '127.0.0.1', '2023-05-28 11:14:59.248382', '/myapp/index/comment/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (677, '127.0.0.1', '2023-05-28 11:14:59.252002', '/myapp/index/comment/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (678, '127.0.0.1', '2023-05-28 11:14:59.257333', '/myapp/index/comment/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (679, '127.0.0.1', '2023-05-28 11:14:59.261143', '/myapp/index/comment/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (680, '127.0.0.1', '2023-05-28 11:15:19.593666', '/myapp/index/thing/addWishUser', 'POST', NULL, '82');
INSERT INTO `b_op_log` VALUES (681, '127.0.0.1', '2023-05-28 11:15:20.237818', '/myapp/index/thing/addCollectUser', 'POST', NULL, '52');
INSERT INTO `b_op_log` VALUES (682, '127.0.0.1', '2023-05-28 11:15:20.872576', '/myapp/index/thing/addWishUser', 'POST', NULL, '53');
INSERT INTO `b_op_log` VALUES (683, '127.0.0.1', '2023-05-28 11:15:21.297393', '/myapp/index/thing/addCollectUser', 'POST', NULL, '57');
INSERT INTO `b_op_log` VALUES (684, '127.0.0.1', '2023-05-28 11:15:27.085891', '/myapp/index/comment/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (685, '127.0.0.1', '2023-05-28 11:15:27.086905', '/myapp/index/comment/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (686, '127.0.0.1', '2023-05-28 11:15:27.096224', '/myapp/index/comment/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (687, '127.0.0.1', '2023-05-28 11:15:27.099775', '/myapp/index/comment/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (688, '127.0.0.1', '2023-05-28 11:16:20.855815', '/myapp/index/thing/addWishUser', 'POST', NULL, '69');
INSERT INTO `b_op_log` VALUES (689, '127.0.0.1', '2023-05-28 11:17:17.403257', '/myapp/index/comment/list', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (690, '127.0.0.1', '2023-05-28 11:17:17.410842', '/myapp/index/comment/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (691, '127.0.0.1', '2023-05-28 11:17:17.416671', '/myapp/index/comment/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (692, '127.0.0.1', '2023-05-28 11:17:17.422025', '/myapp/index/comment/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (693, '127.0.0.1', '2023-05-28 11:17:17.440045', '/upload/cover/1685240184357.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (694, '127.0.0.1', '2023-05-28 11:17:17.440045', '/upload/cover/1685240184357.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (695, '127.0.0.1', '2023-05-28 11:17:17.440045', '/upload/cover/1685240184357.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (696, '127.0.0.1', '2023-05-28 11:17:17.441061', '/upload/cover/1685240184357.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (697, '127.0.0.1', '2023-05-28 11:17:17.453405', '/upload/raw/1685171374586.mp4', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (698, '127.0.0.1', '2023-05-28 11:17:23.691300', '/myapp/index/comment/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (699, '127.0.0.1', '2023-05-28 11:17:23.699531', '/myapp/index/comment/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (700, '127.0.0.1', '2023-05-28 11:17:23.701617', '/myapp/index/comment/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (701, '127.0.0.1', '2023-05-28 11:17:23.705668', '/myapp/index/comment/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (702, '127.0.0.1', '2023-05-28 11:17:23.710720', '/upload/raw/1685171374586.mp4', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (703, '127.0.0.1', '2023-05-28 11:17:44.162004', '/myapp/index/comment/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (704, '127.0.0.1', '2023-05-28 11:17:44.166373', '/myapp/index/comment/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (705, '127.0.0.1', '2023-05-28 11:17:44.170804', '/myapp/index/comment/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (706, '127.0.0.1', '2023-05-28 11:17:44.174025', '/myapp/index/comment/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (707, '127.0.0.1', '2023-05-28 11:17:44.198721', '/upload/raw/1685171374586.mp4', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (708, '127.0.0.1', '2023-05-28 11:25:46.461449', '/myapp/index/comment/list', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (709, '127.0.0.1', '2023-05-28 11:25:46.469294', '/myapp/index/comment/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (710, '127.0.0.1', '2023-05-28 11:25:46.475375', '/myapp/index/comment/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (711, '127.0.0.1', '2023-05-28 11:25:46.477393', '/myapp/index/comment/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (712, '127.0.0.1', '2023-05-28 11:25:46.492293', '/upload/cover/1685240191000.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (713, '127.0.0.1', '2023-05-28 11:25:46.493308', '/upload/cover/1685240191000.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (714, '127.0.0.1', '2023-05-28 11:25:46.510208', '/upload/cover/1685240184357.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (715, '127.0.0.1', '2023-05-28 11:26:45.326186', '/myapp/index/thing/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (716, '127.0.0.1', '2023-05-28 11:26:45.335202', '/myapp/index/thing/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (717, '127.0.0.1', '2023-05-28 11:26:45.338199', '/myapp/index/thing/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (718, '127.0.0.1', '2023-05-28 11:26:45.349526', '/myapp/index/thing/list', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (719, '127.0.0.1', '2023-05-28 11:26:48.409935', '/myapp/index/comment/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (720, '127.0.0.1', '2023-05-28 11:26:48.412466', '/myapp/index/comment/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (721, '127.0.0.1', '2023-05-28 11:26:48.417635', '/myapp/index/comment/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (722, '127.0.0.1', '2023-05-28 11:26:48.425680', '/upload/raw/1685171374586.mp4', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (723, '127.0.0.1', '2023-05-28 11:26:48.444215', '/upload/raw/1685171374586.mp4', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (724, '127.0.0.1', '2023-05-28 11:27:50.424469', '/myapp/index/comment/create', 'POST', NULL, '24');
INSERT INTO `b_op_log` VALUES (725, '127.0.0.1', '2023-05-28 11:27:50.441474', '/myapp/index/comment/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (726, '127.0.0.1', '2023-05-28 11:27:54.955989', '/myapp/index/comment/like', 'POST', NULL, '38');
INSERT INTO `b_op_log` VALUES (727, '127.0.0.1', '2023-05-28 11:27:54.995356', '/myapp/index/comment/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (728, '127.0.0.1', '2023-05-28 11:27:55.464974', '/myapp/index/comment/like', 'POST', NULL, '8');
INSERT INTO `b_op_log` VALUES (729, '127.0.0.1', '2023-05-28 11:27:55.506486', '/myapp/index/comment/list', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (730, '127.0.0.1', '2023-05-28 11:28:42.603690', '/upload/raw/1685171374586.mp4', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (731, '127.0.0.1', '2023-05-28 11:31:31.322814', '/myapp/index/thing/addCollectUser', 'POST', NULL, '50');
INSERT INTO `b_op_log` VALUES (732, '127.0.0.1', '2023-05-28 11:32:40.835342', '/myapp/index/tag/list', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (733, '127.0.0.1', '2023-05-28 11:32:40.837840', '/myapp/index/tag/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (734, '127.0.0.1', '2023-05-28 11:32:40.841934', '/myapp/index/tag/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (735, '127.0.0.1', '2023-05-28 11:32:40.854165', '/myapp/index/tag/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (736, '127.0.0.1', '2023-05-28 11:32:40.872010', '/upload/cover/1685240191000.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (737, '127.0.0.1', '2023-05-28 11:32:40.873189', '/upload/cover/1685170987684.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (738, '127.0.0.1', '2023-05-28 11:32:40.873189', '/upload/cover/1685170987684.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (739, '127.0.0.1', '2023-05-28 11:32:40.873189', '/upload/cover/1685240191000.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (740, '127.0.0.1', '2023-05-28 11:32:49.193521', '/myapp/index/user/login', 'POST', NULL, '42');
INSERT INTO `b_op_log` VALUES (741, '127.0.0.1', '2023-05-28 11:32:49.246567', '/myapp/index/classification/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (742, '127.0.0.1', '2023-05-28 11:32:49.250566', '/myapp/index/classification/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (743, '127.0.0.1', '2023-05-28 11:32:49.251567', '/myapp/index/classification/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (744, '127.0.0.1', '2023-05-28 11:32:49.257567', '/myapp/index/classification/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (745, '127.0.0.1', '2023-05-28 11:32:54.838747', '/myapp/index/comment/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (746, '127.0.0.1', '2023-05-28 11:32:54.847297', '/myapp/index/comment/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (747, '127.0.0.1', '2023-05-28 11:32:54.849809', '/myapp/index/comment/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (748, '127.0.0.1', '2023-05-28 11:32:54.852819', '/myapp/index/comment/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (749, '127.0.0.1', '2023-05-28 11:32:59.351553', '/myapp/index/thing/addCollectUser', 'POST', NULL, '31');
INSERT INTO `b_op_log` VALUES (750, '127.0.0.1', '2023-05-28 11:32:59.394822', '/myapp/index/thing/detail', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (751, '127.0.0.1', '2023-05-28 11:33:00.387412', '/myapp/index/thing/addWishUser', 'POST', NULL, '49');
INSERT INTO `b_op_log` VALUES (752, '127.0.0.1', '2023-05-28 11:33:00.401421', '/myapp/index/thing/detail', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (753, '127.0.0.1', '2023-05-28 11:33:01.694942', '/myapp/index/thing/addCollectUser', 'POST', NULL, '23');
INSERT INTO `b_op_log` VALUES (754, '127.0.0.1', '2023-05-28 11:33:01.748241', '/myapp/index/thing/detail', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (755, '127.0.0.1', '2023-05-28 11:33:02.413140', '/myapp/index/thing/addWishUser', 'POST', NULL, '36');
INSERT INTO `b_op_log` VALUES (756, '127.0.0.1', '2023-05-28 11:33:02.481183', '/myapp/index/thing/detail', 'GET', NULL, '41');
INSERT INTO `b_op_log` VALUES (757, '127.0.0.1', '2023-05-28 11:33:09.504621', '/myapp/index/comment/create', 'POST', NULL, '30');
INSERT INTO `b_op_log` VALUES (758, '127.0.0.1', '2023-05-28 11:33:09.554296', '/myapp/index/comment/list', 'GET', NULL, '38');
INSERT INTO `b_op_log` VALUES (759, '127.0.0.1', '2023-05-28 11:33:11.590214', '/myapp/index/comment/create', 'POST', NULL, '24');
INSERT INTO `b_op_log` VALUES (760, '127.0.0.1', '2023-05-28 11:33:11.626049', '/myapp/index/comment/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (761, '127.0.0.1', '2023-05-28 11:33:13.282581', '/myapp/index/comment/create', 'POST', NULL, '20');
INSERT INTO `b_op_log` VALUES (762, '127.0.0.1', '2023-05-28 11:33:13.314581', '/myapp/index/comment/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (763, '127.0.0.1', '2023-05-28 11:33:14.879753', '/upload/raw/1685171374586.mp4', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (764, '127.0.0.1', '2023-05-28 11:33:41.406672', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (765, '127.0.0.1', '2023-05-28 11:33:41.411703', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (766, '127.0.0.1', '2023-05-28 11:33:41.420821', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (767, '127.0.0.1', '2023-05-28 11:33:41.421824', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (768, '127.0.0.1', '2023-05-28 11:34:50.695577', '/myapp/index/thing/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (769, '127.0.0.1', '2023-05-28 11:34:50.697829', '/myapp/index/thing/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (770, '127.0.0.1', '2023-05-28 11:34:50.700350', '/myapp/index/thing/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (771, '127.0.0.1', '2023-05-28 11:34:50.703874', '/myapp/index/thing/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (772, '127.0.0.1', '2023-05-28 11:35:00.363387', '/myapp/index/user/info', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (773, '127.0.0.1', '2023-05-28 11:35:00.366387', '/myapp/index/user/info', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (774, '127.0.0.1', '2023-05-28 11:35:00.372388', '/myapp/index/user/info', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (775, '127.0.0.1', '2023-05-28 11:35:00.374387', '/myapp/index/user/info', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (776, '127.0.0.1', '2023-05-28 11:36:05.980761', '/myapp/index/thing/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (777, '127.0.0.1', '2023-05-28 11:36:05.982990', '/myapp/index/thing/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (778, '127.0.0.1', '2023-05-28 11:36:05.986335', '/myapp/index/thing/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (779, '127.0.0.1', '2023-05-28 11:36:05.993736', '/myapp/index/thing/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (780, '127.0.0.1', '2023-05-28 11:36:07.260528', '/myapp/index/thing/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (781, '127.0.0.1', '2023-05-28 11:36:07.261531', '/myapp/index/thing/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (782, '127.0.0.1', '2023-05-28 11:36:07.262656', '/myapp/index/thing/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (783, '127.0.0.1', '2023-05-28 11:36:07.268985', '/myapp/index/thing/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (784, '127.0.0.1', '2023-05-28 11:36:08.391001', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (785, '127.0.0.1', '2023-05-28 11:36:08.392004', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (786, '127.0.0.1', '2023-05-28 11:36:08.403760', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (787, '127.0.0.1', '2023-05-28 11:36:08.404786', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (788, '127.0.0.1', '2023-05-28 11:36:09.711634', '/myapp/index/thing/getWishThingList', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (789, '127.0.0.1', '2023-05-28 11:36:10.917775', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (790, '127.0.0.1', '2023-05-28 11:36:12.375472', '/myapp/index/thing/getWishThingList', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (791, '127.0.0.1', '2023-05-28 11:36:18.246421', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (792, '127.0.0.1', '2023-05-28 11:36:21.544184', '/myapp/index/user/info', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (793, '127.0.0.1', '2023-05-28 11:36:24.607998', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (794, '127.0.0.1', '2023-05-28 11:38:02.432406', '/myapp/index/thing/getWishThingList', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (795, '127.0.0.1', '2023-05-28 11:38:03.070597', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (796, '127.0.0.1', '2023-05-28 11:38:03.741804', '/myapp/index/thing/getWishThingList', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (797, '127.0.0.1', '2023-05-28 11:38:04.453723', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (798, '127.0.0.1', '2023-05-28 11:38:04.936538', '/myapp/index/thing/getWishThingList', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (799, '127.0.0.1', '2023-05-28 11:38:05.416084', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (800, '127.0.0.1', '2023-05-28 11:38:06.029248', '/myapp/index/thing/getWishThingList', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (801, '127.0.0.1', '2023-05-28 11:38:42.779103', '/myapp/index/comment/listMyComments', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (802, '127.0.0.1', '2023-05-28 11:38:43.717583', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (803, '127.0.0.1', '2023-05-28 11:38:44.199370', '/myapp/index/thing/getWishThingList', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (804, '127.0.0.1', '2023-05-28 11:38:44.891203', '/myapp/index/comment/listMyComments', 'GET', NULL, '40');
INSERT INTO `b_op_log` VALUES (805, '127.0.0.1', '2023-05-28 11:38:47.873621', '/myapp/index/thing/detail', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (806, '127.0.0.1', '2023-05-28 11:38:47.886678', '/myapp/index/thing/detail', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (807, '127.0.0.1', '2023-05-28 11:38:47.888678', '/myapp/index/thing/detail', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (808, '127.0.0.1', '2023-05-28 11:38:47.889700', '/myapp/index/thing/detail', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (809, '127.0.0.1', '2023-05-28 11:38:47.924908', '/upload/raw/1685171374586.mp4', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (810, '127.0.0.1', '2023-05-28 11:38:51.020009', '/myapp/index/comment/create', 'POST', NULL, '24');
INSERT INTO `b_op_log` VALUES (811, '127.0.0.1', '2023-05-28 11:38:51.055345', '/myapp/index/comment/list', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (812, '127.0.0.1', '2023-05-28 11:38:53.639154', '/myapp/index/comment/listMyComments', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (813, '127.0.0.1', '2023-05-28 11:38:53.649809', '/myapp/index/comment/listMyComments', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (814, '127.0.0.1', '2023-05-28 11:38:53.649809', '/myapp/index/comment/listMyComments', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (815, '127.0.0.1', '2023-05-28 11:38:53.653261', '/myapp/index/comment/listMyComments', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (816, '127.0.0.1', '2023-05-28 11:38:56.699990', '/myapp/index/user/info', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (817, '127.0.0.1', '2023-05-28 11:38:58.449983', '/myapp/index/comment/listMyComments', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (818, '127.0.0.1', '2023-05-28 11:38:59.134802', '/myapp/index/thing/getWishThingList', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (819, '127.0.0.1', '2023-05-28 11:38:59.727643', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (820, '127.0.0.1', '2023-05-28 11:39:41.768452', '/myapp/index/thing/getWishThingList', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (821, '127.0.0.1', '2023-05-28 11:39:42.342500', '/myapp/index/comment/listMyComments', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (822, '127.0.0.1', '2023-05-28 11:39:43.010973', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (823, '127.0.0.1', '2023-05-28 11:41:17.655794', '/myapp/index/user/info', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (824, '127.0.0.1', '2023-05-28 11:41:18.882578', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (825, '127.0.0.1', '2023-05-28 11:41:19.475440', '/myapp/index/thing/getWishThingList', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (826, '127.0.0.1', '2023-05-28 11:41:20.087513', '/myapp/index/comment/listMyComments', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (827, '127.0.0.1', '2023-05-28 11:41:21.081298', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (828, '127.0.0.1', '2023-05-28 11:41:21.654761', '/myapp/index/thing/getWishThingList', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (829, '127.0.0.1', '2023-05-28 11:41:22.242834', '/myapp/index/comment/listMyComments', 'GET', NULL, '44');
INSERT INTO `b_op_log` VALUES (830, '127.0.0.1', '2023-05-28 11:41:22.773938', '/myapp/index/user/info', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (831, '127.0.0.1', '2023-05-28 11:41:24.209395', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (832, '127.0.0.1', '2023-05-28 11:41:25.234848', '/myapp/index/user/info', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (833, '127.0.0.1', '2023-05-28 11:41:29.589426', '/myapp/index/user/info', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (834, '127.0.0.1', '2023-05-28 11:41:31.261805', '/myapp/index/user/info', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (835, '127.0.0.1', '2023-05-28 11:41:34.170383', '/myapp/index/user/update', 'POST', NULL, '41');
INSERT INTO `b_op_log` VALUES (836, '127.0.0.1', '2023-05-28 11:41:34.203413', '/myapp/index/user/info', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (837, '127.0.0.1', '2023-05-28 11:41:36.304712', '/myapp/index/user/update', 'POST', NULL, '47');
INSERT INTO `b_op_log` VALUES (838, '127.0.0.1', '2023-05-28 11:41:36.327501', '/myapp/index/user/info', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (839, '127.0.0.1', '2023-05-28 11:41:38.078487', '/myapp/index/user/update', 'POST', NULL, '21');
INSERT INTO `b_op_log` VALUES (840, '127.0.0.1', '2023-05-28 11:41:38.100059', '/myapp/index/user/info', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (841, '127.0.0.1', '2023-05-28 11:41:42.511516', '/myapp/index/user/update', 'POST', NULL, '23');
INSERT INTO `b_op_log` VALUES (842, '127.0.0.1', '2023-05-28 11:41:42.555811', '/myapp/index/user/info', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (843, '127.0.0.1', '2023-05-28 11:41:46.136632', '/myapp/index/user/info', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (844, '127.0.0.1', '2023-05-28 11:41:47.007803', '/myapp/index/notice/list_api', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (845, '127.0.0.1', '2023-05-28 11:41:47.548672', '/myapp/index/user/info', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (846, '127.0.0.1', '2023-05-28 11:41:48.370250', '/myapp/index/notice/list_api', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (847, '127.0.0.1', '2023-05-28 11:41:49.797100', '/myapp/index/user/info', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (848, '127.0.0.1', '2023-05-28 11:41:50.589485', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (849, '127.0.0.1', '2023-05-28 11:41:51.936729', '/myapp/index/thing/getWishThingList', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (850, '127.0.0.1', '2023-05-28 11:41:53.065353', '/myapp/index/thing/removeWishUser', 'POST', NULL, '43');
INSERT INTO `b_op_log` VALUES (851, '127.0.0.1', '2023-05-28 11:41:53.100007', '/myapp/index/thing/getWishThingList', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (852, '127.0.0.1', '2023-05-28 11:41:54.476461', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (853, '127.0.0.1', '2023-05-28 11:41:55.084535', '/myapp/index/thing/getWishThingList', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (854, '127.0.0.1', '2023-05-28 11:41:55.987612', '/myapp/index/comment/listMyComments', 'GET', NULL, '44');
INSERT INTO `b_op_log` VALUES (855, '127.0.0.1', '2023-05-28 11:41:57.353646', '/myapp/index/thing/getWishThingList', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (856, '127.0.0.1', '2023-05-28 11:41:59.729711', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '37');
INSERT INTO `b_op_log` VALUES (857, '127.0.0.1', '2023-05-28 11:42:00.691268', '/myapp/index/thing/getWishThingList', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (858, '127.0.0.1', '2023-05-28 11:42:01.675738', '/myapp/index/comment/listMyComments', 'GET', NULL, '40');
INSERT INTO `b_op_log` VALUES (859, '127.0.0.1', '2023-05-28 11:42:02.608215', '/myapp/index/user/info', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (860, '127.0.0.1', '2023-05-28 11:42:03.826961', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (861, '127.0.0.1', '2023-05-28 11:42:04.742461', '/myapp/index/thing/getWishThingList', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (862, '127.0.0.1', '2023-05-28 11:42:05.423987', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (863, '127.0.0.1', '2023-05-28 11:42:06.545467', '/myapp/index/thing/getWishThingList', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (864, '127.0.0.1', '2023-05-28 11:42:06.969162', '/myapp/index/comment/listMyComments', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (865, '127.0.0.1', '2023-05-28 11:42:08.074150', '/myapp/index/user/info', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (866, '127.0.0.1', '2023-05-28 11:42:08.773481', '/myapp/index/comment/listMyComments', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (867, '127.0.0.1', '2023-05-28 11:42:13.478012', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (868, '127.0.0.1', '2023-05-28 11:42:15.176130', '/myapp/index/thing/getWishThingList', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (869, '127.0.0.1', '2023-05-28 11:42:20.170210', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (870, '127.0.0.1', '2023-05-28 11:42:29.882792', '/myapp/index/classification/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (871, '127.0.0.1', '2023-05-28 11:42:29.884055', '/myapp/index/classification/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (872, '127.0.0.1', '2023-05-28 11:42:29.885458', '/myapp/index/classification/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (873, '127.0.0.1', '2023-05-28 11:42:29.891988', '/myapp/index/classification/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (874, '127.0.0.1', '2023-05-28 11:42:29.903206', '/upload/cover/1685240191000.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (875, '127.0.0.1', '2023-05-28 11:42:29.913600', '/upload/cover/1685240191000.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (876, '127.0.0.1', '2023-05-28 11:42:30.999736', '/myapp/index/comment/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (877, '127.0.0.1', '2023-05-28 11:42:31.004173', '/myapp/index/comment/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (878, '127.0.0.1', '2023-05-28 11:42:31.008277', '/myapp/index/comment/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (879, '127.0.0.1', '2023-05-28 11:42:31.010332', '/myapp/index/comment/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (880, '127.0.0.1', '2023-05-28 11:42:31.036969', '/upload/raw/1685172485691.mp4', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (881, '127.0.0.1', '2023-05-28 11:43:05.010845', '/myapp/index/comment/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (882, '127.0.0.1', '2023-05-28 11:43:05.011845', '/myapp/index/comment/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (883, '127.0.0.1', '2023-05-28 11:43:05.018358', '/myapp/index/comment/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (884, '127.0.0.1', '2023-05-28 11:43:05.022000', '/myapp/index/comment/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (885, '127.0.0.1', '2023-05-28 11:43:06.415432', '/myapp/index/thing/addWishUser', 'POST', NULL, '46');
INSERT INTO `b_op_log` VALUES (886, '127.0.0.1', '2023-05-28 11:43:06.469885', '/myapp/index/thing/detail', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (887, '127.0.0.1', '2023-05-28 11:43:06.969101', '/myapp/index/thing/addCollectUser', 'POST', NULL, '55');
INSERT INTO `b_op_log` VALUES (888, '127.0.0.1', '2023-05-28 11:43:07.028907', '/myapp/index/thing/detail', 'GET', NULL, '40');
INSERT INTO `b_op_log` VALUES (889, '127.0.0.1', '2023-05-28 11:43:14.387122', '/myapp/index/thing/getWishThingList', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (890, '127.0.0.1', '2023-05-28 11:43:14.398742', '/myapp/index/thing/getWishThingList', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (891, '127.0.0.1', '2023-05-28 11:43:14.403938', '/myapp/index/thing/getWishThingList', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (892, '127.0.0.1', '2023-05-28 11:43:14.440839', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (893, '127.0.0.1', '2023-05-28 11:43:17.446619', '/myapp/index/thing/getWishThingList', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (894, '127.0.0.1', '2023-05-28 11:43:18.083173', '/myapp/index/comment/listMyComments', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (895, '127.0.0.1', '2023-05-28 11:43:18.810242', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (896, '127.0.0.1', '2023-05-28 11:43:19.426462', '/myapp/index/thing/getWishThingList', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (897, '127.0.0.1', '2023-05-28 11:43:21.022502', '/myapp/index/comment/listMyComments', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (898, '127.0.0.1', '2023-05-28 11:43:21.597116', '/myapp/index/thing/getWishThingList', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (899, '127.0.0.1', '2023-05-28 11:43:22.624016', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (900, '127.0.0.1', '2023-05-28 11:43:23.803945', '/myapp/index/thing/getWishThingList', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (901, '127.0.0.1', '2023-05-28 11:43:44.043138', '/myapp/index/comment/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (902, '127.0.0.1', '2023-05-28 11:43:44.044262', '/myapp/index/comment/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (903, '127.0.0.1', '2023-05-28 11:43:44.051180', '/myapp/index/comment/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (904, '127.0.0.1', '2023-05-28 11:43:44.055696', '/myapp/index/comment/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (905, '127.0.0.1', '2023-05-28 11:44:31.978572', '/myapp/index/thing/getWishThingList', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (906, '127.0.0.1', '2023-05-28 11:44:31.990032', '/myapp/index/thing/getWishThingList', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (907, '127.0.0.1', '2023-05-28 11:44:35.736876', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '40');
INSERT INTO `b_op_log` VALUES (908, '127.0.0.1', '2023-05-28 11:44:36.448877', '/myapp/index/comment/listMyComments', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (909, '127.0.0.1', '2023-05-28 11:44:41.609815', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (910, '127.0.0.1', '2023-05-28 11:44:42.139510', '/myapp/index/thing/getWishThingList', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (911, '127.0.0.1', '2023-05-28 11:44:54.761184', '/myapp/index/user/info', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (912, '127.0.0.1', '2023-05-28 11:44:58.126470', '/myapp/index/user/info', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (913, '127.0.0.1', '2023-05-28 11:45:00.442592', '/myapp/index/user/info', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (914, '127.0.0.1', '2023-05-28 11:45:01.037658', '/myapp/index/notice/list_api', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (915, '127.0.0.1', '2023-05-28 11:45:02.525314', '/myapp/index/user/info', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (916, '127.0.0.1', '2023-05-28 11:45:07.665728', '/myapp/admin/notice/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (917, '127.0.0.1', '2023-05-28 11:45:12.377644', '/myapp/admin/notice/create', 'POST', NULL, '44');
INSERT INTO `b_op_log` VALUES (918, '127.0.0.1', '2023-05-28 11:45:12.428940', '/myapp/admin/notice/list', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (919, '127.0.0.1', '2023-05-28 11:45:15.124331', '/myapp/index/notice/list_api', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (920, '127.0.0.1', '2023-05-28 11:45:25.970836', '/myapp/index/classification/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (921, '127.0.0.1', '2023-05-28 11:45:25.971793', '/myapp/index/classification/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (922, '127.0.0.1', '2023-05-28 11:45:25.995906', '/myapp/index/classification/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (923, '127.0.0.1', '2023-05-28 11:45:26.000902', '/myapp/index/classification/list', 'GET', NULL, '35');
INSERT INTO `b_op_log` VALUES (924, '127.0.0.1', '2023-05-28 11:45:31.592650', '/myapp/index/comment/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (925, '127.0.0.1', '2023-05-28 11:45:31.593650', '/myapp/index/comment/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (926, '127.0.0.1', '2023-05-28 11:45:31.602491', '/myapp/index/comment/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (927, '127.0.0.1', '2023-05-28 11:45:31.603734', '/myapp/index/comment/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (928, '127.0.0.1', '2023-05-28 11:45:31.613723', '/upload/raw/1685172485691.mp4', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (929, '127.0.0.1', '2023-05-28 11:45:36.169106', '/myapp/index/comment/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (930, '127.0.0.1', '2023-05-28 11:45:36.170105', '/myapp/index/comment/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (931, '127.0.0.1', '2023-05-28 11:45:36.180105', '/myapp/index/comment/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (932, '127.0.0.1', '2023-05-28 11:45:36.182113', '/myapp/index/comment/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (933, '127.0.0.1', '2023-05-28 11:45:41.427189', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (934, '127.0.0.1', '2023-05-28 11:45:41.434974', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (935, '127.0.0.1', '2023-05-28 11:45:41.436566', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (936, '127.0.0.1', '2023-05-28 11:45:41.448838', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (937, '127.0.0.1', '2023-05-28 11:45:44.974433', '/myapp/index/thing/getWishThingList', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (938, '127.0.0.1', '2023-05-28 11:45:45.756473', '/myapp/index/comment/listMyComments', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (939, '127.0.0.1', '2023-05-28 11:45:46.717662', '/myapp/index/user/info', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (940, '127.0.0.1', '2023-05-28 11:45:48.147513', '/myapp/index/thing/getWishThingList', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (941, '127.0.0.1', '2023-05-28 11:45:49.014956', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (942, '127.0.0.1', '2023-05-28 11:45:50.071060', '/myapp/index/comment/listMyComments', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (943, '127.0.0.1', '2023-05-28 11:45:50.559855', '/myapp/index/thing/getWishThingList', 'GET', NULL, '41');
INSERT INTO `b_op_log` VALUES (944, '127.0.0.1', '2023-05-28 11:45:51.068677', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (945, '127.0.0.1', '2023-05-28 11:46:07.983968', '/myapp/index/comment/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (946, '127.0.0.1', '2023-05-28 11:46:07.985931', '/myapp/index/comment/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (947, '127.0.0.1', '2023-05-28 11:46:07.994948', '/myapp/index/comment/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (948, '127.0.0.1', '2023-05-28 11:46:07.995943', '/myapp/index/comment/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (949, '127.0.0.1', '2023-05-28 11:46:39.981060', '/myapp/index/thing/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (950, '127.0.0.1', '2023-05-28 11:46:39.983061', '/myapp/index/thing/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (951, '127.0.0.1', '2023-05-28 11:46:39.989061', '/myapp/index/thing/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (952, '127.0.0.1', '2023-05-28 11:46:40.004301', '/myapp/index/thing/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (953, '127.0.0.1', '2023-05-28 11:46:42.372926', '/myapp/index/comment/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (954, '127.0.0.1', '2023-05-28 11:46:42.376076', '/myapp/index/comment/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (955, '127.0.0.1', '2023-05-28 11:46:42.379484', '/myapp/index/comment/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (956, '127.0.0.1', '2023-05-28 11:46:42.383008', '/myapp/index/comment/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (957, '127.0.0.1', '2023-05-28 11:46:42.400693', '/upload/raw/1685172485691.mp4', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (958, '127.0.0.1', '2023-05-28 11:47:15.329449', '/myapp/index/thing/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (959, '127.0.0.1', '2023-05-28 11:47:15.804131', '/myapp/index/thing/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (960, '127.0.0.1', '2023-05-28 11:47:16.618585', '/myapp/index/thing/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (961, '127.0.0.1', '2023-05-28 11:47:17.151787', '/myapp/index/thing/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (962, '127.0.0.1', '2023-05-28 11:47:17.696372', '/myapp/index/thing/list', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (963, '127.0.0.1', '2023-05-28 11:47:22.050804', '/myapp/index/thing/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (964, '127.0.0.1', '2023-05-28 11:47:22.054958', '/myapp/index/thing/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (965, '127.0.0.1', '2023-05-28 11:47:24.145355', '/myapp/index/comment/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (966, '127.0.0.1', '2023-05-28 11:47:24.158841', '/myapp/index/comment/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (967, '127.0.0.1', '2023-05-28 11:47:24.161853', '/myapp/index/comment/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (968, '127.0.0.1', '2023-05-28 11:47:24.162819', '/myapp/index/comment/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (969, '127.0.0.1', '2023-05-28 11:47:24.195370', '/upload/raw/1685171374586.mp4', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (970, '127.0.0.1', '2023-05-28 11:49:33.061634', '/myapp/index/thing/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (971, '127.0.0.1', '2023-05-28 11:49:33.069625', '/myapp/index/thing/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (972, '127.0.0.1', '2023-05-28 11:50:50.878781', '/myapp/index/thing/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (973, '127.0.0.1', '2023-05-28 11:51:00.210772', '/myapp/admin/classification/list', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (974, '127.0.0.1', '2023-05-28 11:51:00.212959', '/myapp/admin/classification/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (975, '127.0.0.1', '2023-05-28 11:51:00.230324', '/myapp/admin/classification/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (976, '127.0.0.1', '2023-05-28 11:51:05.698753', '/myapp/admin/thing/update', 'POST', NULL, '38');
INSERT INTO `b_op_log` VALUES (977, '127.0.0.1', '2023-05-28 11:51:05.782241', '/myapp/admin/thing/list', 'GET', NULL, '54');
INSERT INTO `b_op_log` VALUES (978, '127.0.0.1', '2023-05-28 11:51:06.767391', '/upload/cover/1685240191000.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (979, '127.0.0.1', '2023-05-28 11:51:08.766570', '/myapp/admin/thing/update', 'POST', NULL, '44');
INSERT INTO `b_op_log` VALUES (980, '127.0.0.1', '2023-05-28 11:51:08.822323', '/myapp/admin/thing/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (981, '127.0.0.1', '2023-05-28 11:51:12.716565', '/myapp/admin/thing/update', 'POST', NULL, '51');
INSERT INTO `b_op_log` VALUES (982, '127.0.0.1', '2023-05-28 11:51:12.797224', '/myapp/admin/thing/list', 'GET', NULL, '38');
INSERT INTO `b_op_log` VALUES (983, '127.0.0.1', '2023-05-28 11:51:16.914639', '/myapp/index/thing/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (984, '127.0.0.1', '2023-05-28 11:51:16.921299', '/myapp/index/thing/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (985, '127.0.0.1', '2023-05-28 11:51:16.937354', '/upload/cover/1685240184357.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (986, '127.0.0.1', '2023-05-28 11:52:34.525817', '/myapp/index/thing/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (987, '127.0.0.1', '2023-05-28 11:52:59.536450', '/myapp/index/thing/list', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (988, '127.0.0.1', '2023-05-28 11:52:59.544458', '/myapp/index/thing/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (989, '127.0.0.1', '2023-05-28 15:09:00.763487', '/myapp/admin/classification/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (990, '127.0.0.1', '2023-05-28 15:09:00.787229', '/myapp/admin/classification/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (991, '127.0.0.1', '2023-05-28 15:09:00.812779', '/myapp/admin/classification/list', 'GET', NULL, '53');
INSERT INTO `b_op_log` VALUES (992, '127.0.0.1', '2023-05-28 15:09:00.864674', '/myapp/index/notice/list_api', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (993, '127.0.0.1', '2023-05-28 15:09:00.880521', '/myapp/index/notice/list_api', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (994, '127.0.0.1', '2023-05-28 15:09:00.976487', '/upload/cover/1685170987684.jpeg', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (995, '127.0.0.1', '2023-05-28 15:09:00.983405', '/upload/cover/1685240184357.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (996, '127.0.0.1', '2023-05-28 15:09:00.988286', '/myapp/index/classification/list', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (997, '127.0.0.1', '2023-05-28 15:09:00.991328', '/myapp/index/thing/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (998, '127.0.0.1', '2023-05-28 15:09:00.992318', '/upload/cover/1685170987684.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (999, '127.0.0.1', '2023-05-28 15:09:01.003011', '/myapp/index/thing/list', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (1000, '127.0.0.1', '2023-05-28 15:09:01.016184', '/upload/cover/1685240191000.jpeg', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (1001, '127.0.0.1', '2023-05-28 15:09:01.035184', '/upload/cover/1685240191000.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (1002, '127.0.0.1', '2023-05-28 15:13:24.682139', '/myapp/index/thing/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (1003, '127.0.0.1', '2023-05-28 15:13:24.705355', '/upload/cover/1685240184357.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (1004, '127.0.0.1', '2023-05-28 15:13:24.710321', '/upload/cover/1685170107820.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (1005, '127.0.0.1', '2023-05-28 15:13:24.711391', '/upload/cover/1685170107820.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (1006, '127.0.0.1', '2023-05-28 15:13:24.711391', '/upload/cover/1685170107820.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (1007, '127.0.0.1', '2023-05-28 15:14:04.277677', '/myapp/index/thing/list', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (1008, '127.0.0.1', '2023-05-28 15:14:04.286318', '/myapp/index/thing/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (1009, '127.0.0.1', '2023-05-28 15:14:04.304551', '/upload/cover/1685170107820.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (1010, '127.0.0.1', '2023-05-28 15:14:04.304551', '/upload/cover/1685170107820.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (1011, '127.0.0.1', '2023-05-28 15:14:04.304551', '/upload/cover/1685170107820.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (1012, '127.0.0.1', '2023-05-28 15:14:04.305658', '/upload/cover/1685170107820.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (1013, '127.0.0.1', '2023-05-28 15:14:29.406514', '/myapp/index/notice/list_api', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (1014, '127.0.0.1', '2023-05-28 15:14:29.411952', '/myapp/index/notice/list_api', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (1015, '127.0.0.1', '2023-05-28 15:14:29.425003', '/upload/cover/1685170107820.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (1016, '127.0.0.1', '2023-05-28 15:14:29.425003', '/upload/cover/1685170107820.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (1017, '127.0.0.1', '2023-05-28 15:14:29.425003', '/upload/cover/1685170107820.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (1018, '127.0.0.1', '2023-05-28 15:14:29.425003', '/upload/cover/1685170107820.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (1019, '127.0.0.1', '2023-05-28 15:15:39.381466', '/myapp/index/notice/list_api', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (1020, '127.0.0.1', '2023-05-28 15:15:39.401433', '/myapp/index/thing/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (1021, '127.0.0.1', '2023-05-28 15:15:39.424152', '/upload/cover/1685170987684.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (1022, '127.0.0.1', '2023-05-28 15:15:39.424152', '/upload/cover/1685170987684.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (1023, '127.0.0.1', '2023-05-28 15:15:39.424152', '/upload/cover/1685170987684.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (1024, '127.0.0.1', '2023-05-28 15:15:39.425157', '/upload/cover/1685170987684.jpeg', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (1025, '127.0.0.1', '2023-05-28 15:16:56.464615', '/myapp/index/notice/list_api', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (1026, '127.0.0.1', '2023-05-28 15:16:56.478793', '/myapp/index/thing/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (1027, '127.0.0.1', '2023-05-28 15:16:56.495782', '/upload/cover/1685170107820.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (1028, '127.0.0.1', '2023-05-28 15:16:56.495782', '/upload/cover/1685170107820.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (1029, '127.0.0.1', '2023-05-28 15:16:56.495782', '/upload/cover/1685170107820.jpeg', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (1030, '127.0.0.1', '2023-05-28 15:16:56.502225', '/upload/cover/1685170107820.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (1031, '127.0.0.1', '2023-05-28 15:17:14.835678', '/myapp/index/notice/list_api', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (1032, '127.0.0.1', '2023-05-28 15:17:14.862834', '/myapp/index/notice/list_api', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (1033, '127.0.0.1', '2023-05-28 15:17:14.878234', '/upload/cover/1685170107820.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (1034, '127.0.0.1', '2023-05-28 15:17:14.878234', '/upload/cover/1685170107820.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (1035, '127.0.0.1', '2023-05-28 15:17:14.878234', '/upload/cover/1685170107820.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (1036, '127.0.0.1', '2023-05-28 15:17:14.878234', '/upload/cover/1685170107820.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (1037, '127.0.0.1', '2023-05-28 15:18:00.076880', '/myapp/index/thing/list', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (1038, '127.0.0.1', '2023-05-28 15:18:00.078502', '/myapp/index/thing/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (1039, '127.0.0.1', '2023-05-28 15:18:00.083538', '/myapp/index/thing/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (1040, '127.0.0.1', '2023-05-28 15:18:07.383321', '/myapp/index/tag/list', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (1041, '127.0.0.1', '2023-05-28 15:18:07.385521', '/myapp/index/tag/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (1042, '127.0.0.1', '2023-05-28 15:18:07.390901', '/myapp/index/thing/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (1043, '127.0.0.1', '2023-05-28 15:18:07.401112', '/myapp/index/thing/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (1044, '127.0.0.1', '2023-05-28 15:18:11.639074', '/myapp/index/classification/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (1045, '127.0.0.1', '2023-05-28 15:18:11.642636', '/myapp/index/classification/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (1046, '127.0.0.1', '2023-05-28 15:18:11.643650', '/myapp/index/classification/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (1047, '127.0.0.1', '2023-05-28 15:18:11.648208', '/myapp/index/classification/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (1048, '127.0.0.1', '2023-05-28 15:18:52.439691', '/myapp/index/thing/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (1049, '127.0.0.1', '2023-05-28 15:18:52.450153', '/myapp/index/thing/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (1050, '127.0.0.1', '2023-05-28 15:18:54.187299', '/myapp/index/thing/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (1051, '127.0.0.1', '2023-05-28 15:18:54.195146', '/myapp/index/thing/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (1052, '127.0.0.1', '2023-05-28 15:24:42.803941', '/myapp/index/thing/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (1053, '127.0.0.1', '2023-05-28 15:24:42.810850', '/myapp/index/thing/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (1054, '127.0.0.1', '2023-05-28 15:26:34.457308', '/myapp/index/thing/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (1055, '127.0.0.1', '2023-05-28 15:26:34.494511', '/myapp/index/thing/list', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (1056, '127.0.0.1', '2023-05-28 15:26:34.513179', '/upload/cover/1685170987684.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (1057, '127.0.0.1', '2023-05-28 15:26:34.513179', '/upload/cover/1685170987684.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (1058, '127.0.0.1', '2023-05-28 15:26:34.513179', '/upload/cover/1685170987684.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (1059, '127.0.0.1', '2023-05-28 15:26:34.515056', '/upload/cover/1685170107820.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (1060, '127.0.0.1', '2023-05-28 15:26:37.190897', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (1061, '127.0.0.1', '2023-05-28 15:26:37.210930', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (1062, '127.0.0.1', '2023-05-28 15:26:37.214155', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (1063, '127.0.0.1', '2023-05-28 15:26:37.218571', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (1064, '127.0.0.1', '2023-05-28 15:26:37.221633', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (1065, '127.0.0.1', '2023-05-28 15:26:37.231060', '/upload/cover/1685240184357.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (1066, '127.0.0.1', '2023-05-28 15:26:37.232088', '/upload/cover/1685240184357.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (1067, '127.0.0.1', '2023-05-28 15:26:39.441028', '/myapp/index/thing/getWishThingList', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (1068, '127.0.0.1', '2023-05-28 15:26:39.468462', '/upload/cover/1685240184357.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (1069, '127.0.0.1', '2023-05-28 15:26:41.482034', '/myapp/index/thing/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (1070, '127.0.0.1', '2023-05-28 15:26:41.482034', '/myapp/index/thing/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (1071, '127.0.0.1', '2023-05-28 15:26:41.483506', '/myapp/index/thing/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (1072, '127.0.0.1', '2023-05-28 15:26:41.493111', '/myapp/index/thing/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (1073, '127.0.0.1', '2023-05-28 15:26:41.505756', '/upload/cover/1685240184357.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (1074, '127.0.0.1', '2023-05-28 15:26:41.507077', '/upload/cover/1685170987684.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (1075, '127.0.0.1', '2023-05-28 15:26:41.508259', '/upload/cover/1685170107820.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (1076, '127.0.0.1', '2023-05-28 15:26:41.508259', '/upload/cover/1685170107820.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (1077, '127.0.0.1', '2023-05-28 15:26:44.582811', '/myapp/index/thing/getWishThingList', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (1078, '127.0.0.1', '2023-05-28 15:26:44.593588', '/myapp/index/thing/getWishThingList', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (1079, '127.0.0.1', '2023-05-28 15:26:44.595636', '/myapp/index/thing/getWishThingList', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (1080, '127.0.0.1', '2023-05-28 15:26:44.597870', '/myapp/index/thing/getWishThingList', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (1081, '127.0.0.1', '2023-05-28 15:26:44.630015', '/upload/cover/1685240184357.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (1082, '127.0.0.1', '2023-05-28 15:26:45.838566', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (1083, '127.0.0.1', '2023-05-28 15:26:45.857579', '/upload/cover/1685240184357.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (1084, '127.0.0.1', '2023-05-28 15:26:45.858563', '/upload/cover/1685240184357.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (1085, '127.0.0.1', '2023-05-28 15:26:46.935159', '/myapp/index/user/info', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (1086, '127.0.0.1', '2023-05-28 15:26:48.416694', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (1087, '127.0.0.1', '2023-05-28 15:26:48.438462', '/upload/cover/1685170987684.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (1088, '127.0.0.1', '2023-05-28 15:26:48.440435', '/upload/cover/1685240184357.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (1089, '127.0.0.1', '2023-05-28 15:26:49.210932', '/myapp/index/thing/getWishThingList', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (1090, '127.0.0.1', '2023-05-28 15:26:49.253935', '/upload/cover/1685240184357.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (1091, '127.0.0.1', '2023-05-28 15:26:50.086541', '/myapp/index/comment/listMyComments', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (1092, '127.0.0.1', '2023-05-28 15:26:50.637924', '/myapp/index/user/info', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (1093, '127.0.0.1', '2023-05-28 15:26:51.450682', '/myapp/index/thing/getWishThingList', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (1094, '127.0.0.1', '2023-05-28 15:26:51.471888', '/upload/cover/1685240184357.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (1095, '127.0.0.1', '2023-05-28 15:26:51.887121', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (1096, '127.0.0.1', '2023-05-28 15:26:51.911691', '/upload/cover/1685240184357.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (1097, '127.0.0.1', '2023-05-28 15:26:51.911691', '/upload/cover/1685240184357.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (1098, '127.0.0.1', '2023-05-28 15:26:53.149609', '/myapp/index/thing/getWishThingList', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (1099, '127.0.0.1', '2023-05-28 15:26:53.187356', '/upload/cover/1685240184357.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (1100, '127.0.0.1', '2023-05-28 15:26:53.828098', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (1101, '127.0.0.1', '2023-05-28 15:26:53.857839', '/upload/cover/1685170987684.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (1102, '127.0.0.1', '2023-05-28 15:26:53.858848', '/upload/cover/1685240184357.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (1103, '127.0.0.1', '2023-05-28 15:26:54.573894', '/myapp/index/thing/getWishThingList', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (1104, '127.0.0.1', '2023-05-28 15:26:54.617471', '/upload/cover/1685240184357.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (1105, '127.0.0.1', '2023-05-28 15:26:55.243569', '/myapp/index/comment/listMyComments', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (1106, '127.0.0.1', '2023-05-28 15:26:55.803709', '/myapp/index/thing/getWishThingList', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (1107, '127.0.0.1', '2023-05-28 15:26:55.826744', '/upload/cover/1685240184357.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (1108, '127.0.0.1', '2023-05-28 15:26:56.496245', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (1109, '127.0.0.1', '2023-05-28 15:26:56.519139', '/upload/cover/1685240184357.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (1110, '127.0.0.1', '2023-05-28 15:26:56.520129', '/upload/cover/1685240184357.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (1111, '127.0.0.1', '2023-05-28 15:26:57.280660', '/myapp/index/user/info', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (1112, '127.0.0.1', '2023-05-28 15:26:57.863597', '/myapp/index/comment/listMyComments', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (1113, '127.0.0.1', '2023-05-28 15:26:58.594891', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (1114, '127.0.0.1', '2023-05-28 15:26:58.637373', '/upload/cover/1685240184357.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (1115, '127.0.0.1', '2023-05-28 15:26:58.638399', '/upload/cover/1685240184357.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (1116, '127.0.0.1', '2023-05-28 15:27:05.761411', '/myapp/index/notice/list_api', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (1117, '127.0.0.1', '2023-05-28 15:27:05.764429', '/myapp/index/notice/list_api', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (1118, '127.0.0.1', '2023-05-28 15:27:05.767753', '/myapp/index/notice/list_api', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (1119, '127.0.0.1', '2023-05-28 15:27:05.774756', '/myapp/index/notice/list_api', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (1120, '127.0.0.1', '2023-05-28 15:27:05.788756', '/upload/cover/1685170987684.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (1121, '127.0.0.1', '2023-05-28 15:27:05.788756', '/upload/cover/1685170987684.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (1122, '127.0.0.1', '2023-05-28 15:27:05.788756', '/upload/cover/1685170987684.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (1123, '127.0.0.1', '2023-05-28 15:27:05.789757', '/upload/cover/1685170987684.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (1124, '127.0.0.1', '2023-05-28 15:31:59.955623', '/myapp/index/classification/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (1125, '127.0.0.1', '2023-05-28 15:31:59.957796', '/myapp/index/classification/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (1126, '127.0.0.1', '2023-05-28 15:31:59.974490', '/myapp/index/classification/list', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (1127, '127.0.0.1', '2023-05-28 15:31:59.976835', '/myapp/index/classification/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (1128, '127.0.0.1', '2023-05-28 15:32:00.005443', '/myapp/index/thing/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (1129, '127.0.0.1', '2023-05-28 15:38:22.994091', '/myapp/index/notice/list_api', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (1130, '127.0.0.1', '2023-05-28 15:38:28.321438', '/myapp/index/thing/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (1131, '127.0.0.1', '2023-05-28 15:38:28.328050', '/myapp/index/thing/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (1132, '127.0.0.1', '2023-05-28 15:38:28.331378', '/myapp/index/thing/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (1133, '127.0.0.1', '2023-05-28 15:38:28.349986', '/myapp/index/thing/list', 'GET', NULL, '35');
INSERT INTO `b_op_log` VALUES (1134, '127.0.0.1', '2023-05-28 15:38:38.524412', '/myapp/index/notice/list_api', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (1135, '127.0.0.1', '2023-05-28 15:38:41.198327', '/myapp/index/classification/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (1136, '127.0.0.1', '2023-05-28 15:38:41.201353', '/myapp/index/classification/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (1137, '127.0.0.1', '2023-05-28 15:38:41.207875', '/myapp/index/classification/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (1138, '127.0.0.1', '2023-05-28 15:38:41.222170', '/myapp/index/classification/list', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (1139, '127.0.0.1', '2023-05-28 15:38:41.529887', '/myapp/index/tag/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (1140, '127.0.0.1', '2023-05-28 15:38:41.532902', '/myapp/index/tag/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (1141, '127.0.0.1', '2023-05-28 15:38:41.539049', '/myapp/index/tag/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (1142, '127.0.0.1', '2023-05-28 15:38:41.553041', '/myapp/index/tag/list', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (1143, '127.0.0.1', '2023-05-28 15:39:03.629854', '/myapp/index/notice/list_api', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (1144, '127.0.0.1', '2023-05-28 15:39:11.387472', '/myapp/index/thing/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (1145, '127.0.0.1', '2023-05-28 15:39:12.664926', '/myapp/index/thing/list', 'GET', NULL, '47');
INSERT INTO `b_op_log` VALUES (1146, '127.0.0.1', '2023-05-28 15:40:15.631061', '/myapp/index/notice/list_api', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (1147, '127.0.0.1', '2023-05-28 15:40:20.466200', '/myapp/index/thing/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (1148, '127.0.0.1', '2023-05-28 15:40:20.468201', '/myapp/index/thing/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (1149, '127.0.0.1', '2023-05-28 15:40:20.472191', '/myapp/index/thing/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (1150, '127.0.0.1', '2023-05-28 15:40:20.491964', '/myapp/index/thing/list', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (1151, '127.0.0.1', '2023-05-28 15:40:27.887523', '/myapp/index/tag/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (1152, '127.0.0.1', '2023-05-28 15:40:27.889538', '/myapp/index/tag/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (1153, '127.0.0.1', '2023-05-28 15:40:27.895708', '/myapp/index/tag/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (1154, '127.0.0.1', '2023-05-28 15:40:27.909242', '/myapp/index/tag/list', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (1155, '127.0.0.1', '2023-05-28 15:40:27.938399', '/upload/cover/1685170987684.jpeg', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (1156, '127.0.0.1', '2023-05-28 15:40:27.939606', '/upload/cover/1685170987684.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (1157, '127.0.0.1', '2023-05-28 15:40:27.939606', '/upload/cover/1685240191000.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (1158, '127.0.0.1', '2023-05-28 15:40:27.940615', '/upload/cover/1685170987684.jpeg', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (1159, '127.0.0.1', '2023-05-28 15:41:00.568286', '/myapp/index/thing/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (1160, '127.0.0.1', '2023-05-28 15:41:01.288314', '/myapp/index/thing/list', 'GET', NULL, '51');
INSERT INTO `b_op_log` VALUES (1161, '127.0.0.1', '2023-05-28 15:41:02.377925', '/myapp/index/thing/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (1162, '127.0.0.1', '2023-05-28 15:41:02.409780', '/myapp/index/comment/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (1163, '127.0.0.1', '2023-05-28 15:41:02.416579', '/myapp/index/comment/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (1164, '127.0.0.1', '2023-05-28 15:41:02.423368', '/myapp/index/comment/list', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (1165, '127.0.0.1', '2023-05-28 15:41:02.429395', '/upload/raw/1685171374586.mp4', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (1166, '127.0.0.1', '2023-05-28 15:41:59.147714', '/myapp/index/notice/list_api', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (1167, '127.0.0.1', '2023-05-28 15:42:03.989651', '/myapp/index/classification/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (1168, '127.0.0.1', '2023-05-28 15:42:03.991924', '/myapp/index/classification/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (1169, '127.0.0.1', '2023-05-28 15:42:03.996398', '/myapp/index/classification/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (1170, '127.0.0.1', '2023-05-28 15:42:04.013757', '/myapp/index/classification/list', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (1171, '127.0.0.1', '2023-05-28 15:42:04.770129', '/myapp/index/tag/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (1172, '127.0.0.1', '2023-05-28 15:42:04.774505', '/myapp/index/tag/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (1173, '127.0.0.1', '2023-05-28 15:42:04.779077', '/myapp/index/tag/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (1174, '127.0.0.1', '2023-05-28 15:42:04.800028', '/myapp/index/tag/list', 'GET', NULL, '39');
INSERT INTO `b_op_log` VALUES (1175, '127.0.0.1', '2023-05-28 15:42:15.884137', '/myapp/index/notice/list_api', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (1176, '127.0.0.1', '2023-05-28 15:42:19.669145', '/myapp/index/tag/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (1177, '127.0.0.1', '2023-05-28 15:42:19.672204', '/myapp/index/tag/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (1178, '127.0.0.1', '2023-05-28 15:42:19.678619', '/myapp/index/tag/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (1179, '127.0.0.1', '2023-05-28 15:42:19.691758', '/myapp/index/tag/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (1180, '127.0.0.1', '2023-05-28 15:42:20.419018', '/myapp/index/thing/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (1181, '127.0.0.1', '2023-05-28 15:42:20.421952', '/myapp/index/thing/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (1182, '127.0.0.1', '2023-05-28 15:42:20.426342', '/myapp/index/thing/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (1183, '127.0.0.1', '2023-05-28 15:42:20.445055', '/myapp/index/thing/list', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (1184, '127.0.0.1', '2023-05-28 15:42:21.005976', '/myapp/index/classification/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (1185, '127.0.0.1', '2023-05-28 15:42:21.008469', '/myapp/index/classification/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (1186, '127.0.0.1', '2023-05-28 15:42:21.027318', '/myapp/index/classification/list', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (1187, '127.0.0.1', '2023-05-28 15:42:21.031701', '/myapp/index/classification/list', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (1188, '127.0.0.1', '2023-05-28 15:42:36.185788', '/myapp/index/thing/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (1189, '127.0.0.1', '2023-05-28 15:42:36.188064', '/myapp/index/thing/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (1190, '127.0.0.1', '2023-05-28 15:42:36.192105', '/myapp/index/thing/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (1191, '127.0.0.1', '2023-05-28 15:42:36.200639', '/myapp/index/thing/list', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (1192, '127.0.0.1', '2023-05-28 15:42:36.223149', '/upload/cover/1685170107820.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (1193, '127.0.0.1', '2023-05-28 15:42:36.223149', '/upload/cover/1685170107820.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (1194, '127.0.0.1', '2023-05-28 15:42:36.224603', '/upload/cover/1685170107820.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (1195, '127.0.0.1', '2023-05-28 15:42:36.224603', '/upload/cover/1685170107820.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (1196, '127.0.0.1', '2023-05-28 15:42:39.366204', '/myapp/index/classification/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (1197, '127.0.0.1', '2023-05-28 15:42:39.368204', '/myapp/index/classification/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (1198, '127.0.0.1', '2023-05-28 15:42:39.370650', '/myapp/index/classification/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (1199, '127.0.0.1', '2023-05-28 15:42:39.381918', '/myapp/index/classification/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (1200, '127.0.0.1', '2023-05-28 15:42:39.405779', '/upload/cover/1685240191000.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (1201, '127.0.0.1', '2023-05-28 15:42:39.406803', '/upload/cover/1685240191000.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (1202, '127.0.0.1', '2023-05-28 15:42:39.406803', '/upload/cover/1685170107820.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (1203, '127.0.0.1', '2023-05-28 15:42:39.407969', '/upload/cover/1685170107820.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (1204, '127.0.0.1', '2023-05-28 15:43:02.721331', '/myapp/index/thing/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (1205, '127.0.0.1', '2023-05-28 15:43:02.724322', '/myapp/index/thing/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (1206, '127.0.0.1', '2023-05-28 15:43:02.729864', '/myapp/index/thing/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (1207, '127.0.0.1', '2023-05-28 15:43:02.738980', '/myapp/index/thing/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (1208, '127.0.0.1', '2023-05-28 15:43:02.761340', '/upload/cover/1685170107820.jpeg', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (1209, '127.0.0.1', '2023-05-28 15:43:02.762345', '/upload/cover/1685170107820.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (1210, '127.0.0.1', '2023-05-28 15:43:02.762345', '/upload/cover/1685170107820.jpeg', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (1211, '127.0.0.1', '2023-05-28 15:43:02.762345', '/upload/cover/1685170107820.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (1212, '127.0.0.1', '2023-05-28 15:44:14.145830', '/myapp/index/user/login', 'POST', NULL, '31');
INSERT INTO `b_op_log` VALUES (1213, '127.0.0.1', '2023-05-28 15:44:14.879354', '/myapp/index/thing/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (1214, '127.0.0.1', '2023-05-28 15:44:14.881616', '/myapp/index/thing/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (1215, '127.0.0.1', '2023-05-28 15:44:14.885055', '/myapp/index/thing/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (1216, '127.0.0.1', '2023-05-28 15:44:14.903496', '/myapp/index/thing/list', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (1217, '127.0.0.1', '2023-05-28 15:44:14.930206', '/upload/cover/1685170107820.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (1218, '127.0.0.1', '2023-05-28 15:44:14.930206', '/upload/cover/1685170107820.jpeg', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (1219, '127.0.0.1', '2023-05-28 15:44:14.931198', '/upload/cover/1685170107820.jpeg', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (1220, '127.0.0.1', '2023-05-28 15:44:14.932207', '/upload/cover/1685170107820.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (1221, '127.0.0.1', '2023-05-28 15:44:23.303309', '/myapp/admin/thing/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (1222, '127.0.0.1', '2023-05-28 15:44:23.307310', '/myapp/admin/thing/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (1223, '127.0.0.1', '2023-05-28 15:44:23.344124', '/myapp/admin/thing/list', 'GET', NULL, '45');
INSERT INTO `b_op_log` VALUES (1224, '127.0.0.1', '2023-05-28 15:44:28.504787', '/myapp/admin/classification/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (1225, '127.0.0.1', '2023-05-28 15:44:29.107463', '/myapp/admin/thing/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (1226, '127.0.0.1', '2023-05-28 15:44:29.111329', '/myapp/admin/thing/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (1227, '127.0.0.1', '2023-05-28 15:44:29.152175', '/myapp/admin/thing/list', 'GET', NULL, '50');
INSERT INTO `b_op_log` VALUES (1228, '127.0.0.1', '2023-05-28 15:44:37.063101', '/myapp/admin/adminLogin', 'POST', NULL, '33');
INSERT INTO `b_op_log` VALUES (1229, '127.0.0.1', '2023-05-28 15:44:37.168435', '/myapp/admin/classification/list', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (1230, '127.0.0.1', '2023-05-28 15:44:37.171918', '/myapp/admin/classification/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (1231, '127.0.0.1', '2023-05-28 15:44:37.225002', '/myapp/admin/classification/list', 'GET', NULL, '59');
INSERT INTO `b_op_log` VALUES (1232, '127.0.0.1', '2023-05-28 15:44:41.219049', '/myapp/admin/classification/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (1233, '127.0.0.1', '2023-05-28 15:44:41.928881', '/myapp/admin/tag/list', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (1234, '127.0.0.1', '2023-05-28 15:44:42.886894', '/myapp/admin/classification/list', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (1235, '127.0.0.1', '2023-05-28 15:44:42.899483', '/myapp/admin/classification/list', 'GET', NULL, '39');
INSERT INTO `b_op_log` VALUES (1236, '127.0.0.1', '2023-05-28 15:44:42.916539', '/myapp/admin/classification/list', 'GET', NULL, '55');
INSERT INTO `b_op_log` VALUES (1237, '127.0.0.1', '2023-05-28 15:44:56.927919', '/myapp/admin/tag/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (1238, '127.0.0.1', '2023-05-28 15:44:56.952888', '/myapp/admin/tag/list', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (1239, '127.0.0.1', '2023-05-28 15:44:56.961928', '/myapp/admin/tag/list', 'GET', NULL, '38');
INSERT INTO `b_op_log` VALUES (1240, '127.0.0.1', '2023-05-28 15:46:03.375413', '/myapp/admin/classification/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (1241, '127.0.0.1', '2023-05-28 15:46:03.402850', '/myapp/admin/classification/list', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (1242, '127.0.0.1', '2023-05-28 15:46:03.415540', '/myapp/admin/classification/list', 'GET', NULL, '44');
INSERT INTO `b_op_log` VALUES (1243, '127.0.0.1', '2023-05-28 15:46:06.613074', '/myapp/admin/tag/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (1244, '127.0.0.1', '2023-05-28 15:46:06.616126', '/myapp/admin/tag/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (1245, '127.0.0.1', '2023-05-28 15:46:06.646879', '/myapp/admin/tag/list', 'GET', NULL, '38');
INSERT INTO `b_op_log` VALUES (1246, '127.0.0.1', '2023-05-28 15:46:31.069280', '/myapp/admin/tag/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (1247, '127.0.0.1', '2023-05-28 15:46:31.072610', '/myapp/admin/tag/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (1248, '127.0.0.1', '2023-05-28 15:46:31.101575', '/myapp/admin/tag/list', 'GET', NULL, '41');
INSERT INTO `b_op_log` VALUES (1249, '127.0.0.1', '2023-05-28 15:47:19.038092', '/myapp/admin/thing/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (1250, '127.0.0.1', '2023-05-28 15:47:19.063044', '/myapp/admin/thing/list', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (1251, '127.0.0.1', '2023-05-28 15:47:19.083117', '/myapp/admin/thing/list', 'GET', NULL, '48');
INSERT INTO `b_op_log` VALUES (1252, '127.0.0.1', '2023-05-28 15:47:59.423525', '/myapp/admin/tag/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (1253, '127.0.0.1', '2023-05-28 15:47:59.446991', '/myapp/admin/tag/list', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (1254, '127.0.0.1', '2023-05-28 15:47:59.457124', '/myapp/admin/tag/list', 'GET', NULL, '36');
INSERT INTO `b_op_log` VALUES (1255, '127.0.0.1', '2023-05-28 15:48:10.762355', '/myapp/index/thing/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (1256, '127.0.0.1', '2023-05-28 15:48:10.767565', '/myapp/index/thing/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (1257, '127.0.0.1', '2023-05-28 15:48:10.769573', '/myapp/index/thing/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (1258, '127.0.0.1', '2023-05-28 15:48:10.789882', '/myapp/index/thing/list', 'GET', NULL, '37');
INSERT INTO `b_op_log` VALUES (1259, '127.0.0.1', '2023-05-28 15:48:23.069568', '/myapp/index/thing/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (1260, '127.0.0.1', '2023-05-28 15:48:23.075681', '/myapp/index/thing/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (1261, '127.0.0.1', '2023-05-28 15:48:23.087925', '/myapp/index/thing/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (1262, '127.0.0.1', '2023-05-28 15:48:23.094980', '/myapp/index/thing/list', 'GET', NULL, '35');
INSERT INTO `b_op_log` VALUES (1263, '127.0.0.1', '2023-05-28 15:48:46.544176', '/myapp/index/classification/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (1264, '127.0.0.1', '2023-05-28 15:48:46.547175', '/myapp/index/classification/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (1265, '127.0.0.1', '2023-05-28 15:48:46.550176', '/myapp/index/classification/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (1266, '127.0.0.1', '2023-05-28 15:48:46.559304', '/myapp/index/classification/list', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (1267, '127.0.0.1', '2023-05-28 15:48:48.800789', '/myapp/admin/tag/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (1268, '127.0.0.1', '2023-05-28 15:48:48.821984', '/myapp/admin/tag/list', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (1269, '127.0.0.1', '2023-05-28 15:48:48.823147', '/myapp/admin/tag/list', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (1270, '127.0.0.1', '2023-05-28 15:48:52.553205', '/myapp/index/thing/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (1271, '127.0.0.1', '2023-05-28 15:48:52.556618', '/myapp/index/thing/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (1272, '127.0.0.1', '2023-05-28 15:48:52.559969', '/myapp/index/thing/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (1273, '127.0.0.1', '2023-05-28 15:48:52.583144', '/myapp/index/thing/list', 'GET', NULL, '36');
INSERT INTO `b_op_log` VALUES (1274, '127.0.0.1', '2023-05-28 15:49:58.362964', '/myapp/index/thing/list', 'GET', NULL, '53');
INSERT INTO `b_op_log` VALUES (1275, '127.0.0.1', '2023-05-28 15:49:59.239050', '/myapp/index/thing/list', 'GET', NULL, '41');
INSERT INTO `b_op_log` VALUES (1276, '127.0.0.1', '2023-05-28 15:50:00.180658', '/myapp/index/thing/list', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (1277, '127.0.0.1', '2023-05-28 15:50:01.241496', '/myapp/index/thing/list', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (1278, '127.0.0.1', '2023-05-28 15:50:02.173796', '/myapp/index/thing/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (1279, '127.0.0.1', '2023-05-28 15:50:03.242219', '/myapp/index/thing/list', 'GET', NULL, '40');
INSERT INTO `b_op_log` VALUES (1280, '127.0.0.1', '2023-05-28 15:50:05.004846', '/myapp/index/thing/list', 'GET', NULL, '43');
INSERT INTO `b_op_log` VALUES (1281, '127.0.0.1', '2023-05-28 15:50:29.530760', '/myapp/index/thing/list', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (1282, '127.0.0.1', '2023-05-28 15:50:30.181210', '/myapp/index/thing/list', 'GET', NULL, '37');
INSERT INTO `b_op_log` VALUES (1283, '127.0.0.1', '2023-05-28 15:50:30.755828', '/myapp/index/thing/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (1284, '127.0.0.1', '2023-05-28 15:50:33.801193', '/myapp/index/thing/list', 'GET', NULL, '43');
INSERT INTO `b_op_log` VALUES (1285, '127.0.0.1', '2023-05-28 15:50:34.971534', '/myapp/index/thing/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (1286, '127.0.0.1', '2023-05-28 15:50:39.634282', '/myapp/index/thing/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (1287, '127.0.0.1', '2023-05-28 15:50:40.751247', '/myapp/index/thing/list', 'GET', NULL, '45');
INSERT INTO `b_op_log` VALUES (1288, '127.0.0.1', '2023-05-28 15:50:41.810457', '/myapp/index/thing/list', 'GET', NULL, '38');
INSERT INTO `b_op_log` VALUES (1289, '127.0.0.1', '2023-05-28 15:50:42.665881', '/myapp/index/thing/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (1290, '127.0.0.1', '2023-05-28 15:50:44.809305', '/myapp/index/thing/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (1291, '127.0.0.1', '2023-05-28 15:50:45.304923', '/myapp/index/thing/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (1292, '127.0.0.1', '2023-05-28 15:50:47.159875', '/myapp/index/thing/list', 'GET', NULL, '37');
INSERT INTO `b_op_log` VALUES (1293, '127.0.0.1', '2023-05-28 15:50:52.929942', '/myapp/index/thing/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (1294, '127.0.0.1', '2023-05-28 15:50:52.941418', '/myapp/index/thing/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (1295, '127.0.0.1', '2023-05-28 15:51:13.144086', '/myapp/index/thing/detail', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (1296, '127.0.0.1', '2023-05-28 15:51:13.155554', '/myapp/index/thing/detail', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (1297, '127.0.0.1', '2023-05-28 15:51:13.171717', '/myapp/index/thing/detail', 'GET', NULL, '36');
INSERT INTO `b_op_log` VALUES (1298, '127.0.0.1', '2023-05-28 15:51:13.173753', '/myapp/index/thing/detail', 'GET', NULL, '38');
INSERT INTO `b_op_log` VALUES (1299, '127.0.0.1', '2023-05-28 15:51:13.190670', '/upload/raw/1685172485691.mp4', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (1300, '127.0.0.1', '2023-05-28 15:54:44.333194', '/myapp/index/comment/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (1301, '127.0.0.1', '2023-05-28 15:54:44.338485', '/myapp/index/comment/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (1302, '127.0.0.1', '2023-05-28 15:54:44.345756', '/myapp/index/comment/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (1303, '127.0.0.1', '2023-05-28 15:54:44.365180', '/myapp/index/comment/list', 'GET', NULL, '37');
INSERT INTO `b_op_log` VALUES (1304, '127.0.0.1', '2023-05-28 15:54:44.385776', '/upload/raw/1685172485691.mp4', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (1305, '127.0.0.1', '2023-05-28 15:59:12.665050', '/myapp/index/comment/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (1306, '127.0.0.1', '2023-05-28 15:59:12.694610', '/myapp/index/comment/list', 'GET', NULL, '35');
INSERT INTO `b_op_log` VALUES (1307, '127.0.0.1', '2023-05-28 15:59:12.704633', '/myapp/index/comment/list', 'GET', NULL, '46');
INSERT INTO `b_op_log` VALUES (1308, '127.0.0.1', '2023-05-28 15:59:12.715663', '/upload/raw/1685171374586.mp4', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (1309, '127.0.0.1', '2023-05-28 15:59:12.723586', '/upload/raw/1685171374586.mp4', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (1310, '127.0.0.1', '2023-05-28 16:01:41.606089', '/myapp/index/thing/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (1311, '127.0.0.1', '2023-05-28 16:01:41.622549', '/myapp/index/thing/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (1312, '127.0.0.1', '2023-05-28 16:01:41.627579', '/myapp/index/thing/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (1313, '127.0.0.1', '2023-05-28 16:01:41.628772', '/myapp/index/thing/list', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (1314, '127.0.0.1', '2023-05-28 16:01:41.637103', '/upload/raw/1685171374586.mp4', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (1315, '127.0.0.1', '2023-05-28 16:04:53.054757', '/myapp/index/thing/addWishUser', 'POST', NULL, '54');
INSERT INTO `b_op_log` VALUES (1316, '127.0.0.1', '2023-05-28 16:04:53.091117', '/myapp/index/thing/detail', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (1317, '127.0.0.1', '2023-05-28 16:04:53.733480', '/myapp/index/thing/addCollectUser', 'POST', NULL, '41');
INSERT INTO `b_op_log` VALUES (1318, '127.0.0.1', '2023-05-28 16:04:53.794938', '/myapp/index/thing/detail', 'GET', NULL, '45');
INSERT INTO `b_op_log` VALUES (1319, '127.0.0.1', '2023-05-28 16:04:54.980178', '/myapp/index/thing/addWishUser', 'POST', NULL, '37');
INSERT INTO `b_op_log` VALUES (1320, '127.0.0.1', '2023-05-28 16:04:55.026337', '/myapp/index/thing/detail', 'GET', NULL, '35');
INSERT INTO `b_op_log` VALUES (1321, '127.0.0.1', '2023-05-28 16:04:55.330156', '/myapp/index/thing/addCollectUser', 'POST', NULL, '37');
INSERT INTO `b_op_log` VALUES (1322, '127.0.0.1', '2023-05-28 16:04:55.384458', '/myapp/index/thing/detail', 'GET', NULL, '40');
INSERT INTO `b_op_log` VALUES (1323, '127.0.0.1', '2023-05-28 16:04:58.658932', '/upload/raw/1685171374586.mp4', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (1324, '127.0.0.1', '2023-05-28 16:05:09.006456', '/myapp/index/classification/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (1325, '127.0.0.1', '2023-05-28 16:05:09.010942', '/myapp/index/classification/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (1326, '127.0.0.1', '2023-05-28 16:05:09.011970', '/myapp/index/classification/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (1327, '127.0.0.1', '2023-05-28 16:05:09.031643', '/myapp/index/classification/list', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (1328, '127.0.0.1', '2023-05-28 16:05:21.711625', '/myapp/index/thing/list', 'GET', NULL, '36');
INSERT INTO `b_op_log` VALUES (1329, '127.0.0.1', '2023-05-28 16:05:22.572016', '/myapp/index/thing/list', 'GET', NULL, '43');
INSERT INTO `b_op_log` VALUES (1330, '127.0.0.1', '2023-05-28 16:05:23.247790', '/myapp/index/thing/list', 'GET', NULL, '52');
INSERT INTO `b_op_log` VALUES (1331, '127.0.0.1', '2023-05-28 16:05:33.059053', '/myapp/index/comment/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (1332, '127.0.0.1', '2023-05-28 16:05:33.095747', '/myapp/index/comment/list', 'GET', NULL, '51');
INSERT INTO `b_op_log` VALUES (1333, '127.0.0.1', '2023-05-28 16:05:33.104670', '/myapp/index/comment/list', 'GET', NULL, '60');
INSERT INTO `b_op_log` VALUES (1334, '127.0.0.1', '2023-05-28 16:05:33.113670', '/myapp/index/comment/list', 'GET', NULL, '69');
INSERT INTO `b_op_log` VALUES (1335, '127.0.0.1', '2023-05-28 16:05:33.126678', '/upload/raw/1685171374586.mp4', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (1336, '127.0.0.1', '2023-05-28 16:05:58.423375', '/myapp/index/comment/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (1337, '127.0.0.1', '2023-05-28 16:05:58.436180', '/myapp/index/comment/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (1338, '127.0.0.1', '2023-05-28 16:05:58.456258', '/myapp/index/comment/list', 'GET', NULL, '41');
INSERT INTO `b_op_log` VALUES (1339, '127.0.0.1', '2023-05-28 16:05:58.461422', '/myapp/index/comment/list', 'GET', NULL, '47');
INSERT INTO `b_op_log` VALUES (1340, '127.0.0.1', '2023-05-28 16:06:25.814011', '/myapp/index/thing/getWishThingList', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (1341, '127.0.0.1', '2023-05-28 16:06:25.816311', '/myapp/index/thing/getWishThingList', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (1342, '127.0.0.1', '2023-05-28 16:06:25.817382', '/myapp/index/thing/getWishThingList', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (1343, '127.0.0.1', '2023-05-28 16:06:25.841524', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (1344, '127.0.0.1', '2023-05-28 16:06:34.095899', '/myapp/index/thing/getWishThingList', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (1345, '127.0.0.1', '2023-05-28 16:06:34.928260', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '43');
INSERT INTO `b_op_log` VALUES (1346, '127.0.0.1', '2023-05-28 16:06:35.955769', '/myapp/index/comment/listMyComments', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (1347, '127.0.0.1', '2023-05-28 16:06:36.851735', '/myapp/index/user/info', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (1348, '127.0.0.1', '2023-05-28 16:06:37.852647', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (1349, '127.0.0.1', '2023-05-28 16:06:38.730374', '/myapp/index/comment/listMyComments', 'GET', NULL, '47');
INSERT INTO `b_op_log` VALUES (1350, '127.0.0.1', '2023-05-28 16:06:39.144129', '/myapp/index/thing/getWishThingList', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (1351, '127.0.0.1', '2023-05-28 16:06:39.672827', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (1352, '127.0.0.1', '2023-05-28 16:06:41.156593', '/myapp/index/user/info', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (1353, '127.0.0.1', '2023-05-28 16:06:43.327732', '/myapp/index/user/info', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (1354, '127.0.0.1', '2023-05-28 16:06:45.536903', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (1355, '127.0.0.1', '2023-05-28 16:06:46.141664', '/myapp/index/thing/getWishThingList', 'GET', NULL, '37');
INSERT INTO `b_op_log` VALUES (1356, '127.0.0.1', '2023-05-28 16:06:46.715873', '/myapp/index/comment/listMyComments', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (1357, '127.0.0.1', '2023-05-28 16:06:47.597207', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (1358, '127.0.0.1', '2023-05-28 16:06:50.279096', '/myapp/index/thing/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (1359, '127.0.0.1', '2023-05-28 16:06:50.282507', '/myapp/index/thing/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (1360, '127.0.0.1', '2023-05-28 16:06:50.284535', '/myapp/index/thing/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (1361, '127.0.0.1', '2023-05-28 16:06:50.308824', '/myapp/index/thing/list', 'GET', NULL, '36');
INSERT INTO `b_op_log` VALUES (1362, '127.0.0.1', '2023-05-28 16:07:00.963872', '/myapp/index/user/register', 'POST', NULL, '52');
INSERT INTO `b_op_log` VALUES (1363, '127.0.0.1', '2023-05-28 16:07:12.559564', '/myapp/index/user/login', 'POST', NULL, '33');
INSERT INTO `b_op_log` VALUES (1364, '127.0.0.1', '2023-05-28 16:07:12.613818', '/myapp/index/thing/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (1365, '127.0.0.1', '2023-05-28 16:07:12.616843', '/myapp/index/thing/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (1366, '127.0.0.1', '2023-05-28 16:07:12.619005', '/myapp/index/thing/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (1367, '127.0.0.1', '2023-05-28 16:07:12.647954', '/myapp/index/thing/list', 'GET', NULL, '36');
INSERT INTO `b_op_log` VALUES (1368, '127.0.0.1', '2023-05-28 16:07:17.215297', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (1369, '127.0.0.1', '2023-05-28 16:07:17.219669', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (1370, '127.0.0.1', '2023-05-28 16:07:17.229059', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (1371, '127.0.0.1', '2023-05-28 16:07:17.265099', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (1372, '127.0.0.1', '2023-05-28 16:07:18.309556', '/myapp/index/thing/getWishThingList', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (1373, '127.0.0.1', '2023-05-28 16:07:18.972858', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (1374, '127.0.0.1', '2023-05-28 16:07:19.613516', '/myapp/index/comment/listMyComments', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (1375, '127.0.0.1', '2023-05-28 16:07:20.282851', '/myapp/index/user/info', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (1376, '127.0.0.1', '2023-05-28 16:07:21.545280', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (1377, '127.0.0.1', '2023-05-28 16:07:22.152871', '/myapp/index/thing/getWishThingList', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (1378, '127.0.0.1', '2023-05-28 16:07:22.791096', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (1379, '127.0.0.1', '2023-05-28 16:07:23.415806', '/myapp/index/thing/getWishThingList', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (1380, '127.0.0.1', '2023-05-28 16:07:23.910472', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (1381, '127.0.0.1', '2023-05-28 16:07:26.673913', '/myapp/index/user/info', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (1382, '127.0.0.1', '2023-05-28 16:09:05.178263', '/myapp/index/thing/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (1383, '127.0.0.1', '2023-05-28 16:09:05.183265', '/myapp/index/thing/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (1384, '127.0.0.1', '2023-05-28 16:09:05.186264', '/myapp/index/thing/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (1385, '127.0.0.1', '2023-05-28 16:09:05.201327', '/myapp/index/thing/list', 'GET', NULL, '36');
INSERT INTO `b_op_log` VALUES (1386, '127.0.0.1', '2023-05-28 16:09:12.613196', '/myapp/index/user/login', 'POST', NULL, '45');
INSERT INTO `b_op_log` VALUES (1387, '127.0.0.1', '2023-05-28 16:09:12.682218', '/myapp/index/thing/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (1388, '127.0.0.1', '2023-05-28 16:09:12.685216', '/myapp/index/thing/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (1389, '127.0.0.1', '2023-05-28 16:09:12.688219', '/myapp/index/thing/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (1390, '127.0.0.1', '2023-05-28 16:09:12.712746', '/myapp/index/thing/list', 'GET', NULL, '38');
INSERT INTO `b_op_log` VALUES (1391, '127.0.0.1', '2023-05-28 16:09:18.888208', '/myapp/index/thing/getWishThingList', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (1392, '127.0.0.1', '2023-05-28 16:09:18.895208', '/myapp/index/thing/getWishThingList', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (1393, '127.0.0.1', '2023-05-28 16:09:18.897208', '/myapp/index/thing/getWishThingList', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (1394, '127.0.0.1', '2023-05-28 16:09:18.912275', '/myapp/index/thing/getWishThingList', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (1395, '127.0.0.1', '2023-05-28 16:09:19.890654', '/myapp/index/user/info', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (1396, '127.0.0.1', '2023-05-28 16:09:21.070755', '/myapp/index/comment/listMyComments', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (1397, '127.0.0.1', '2023-05-28 16:09:21.771807', '/myapp/index/user/info', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (1398, '127.0.0.1', '2023-05-28 16:09:22.583341', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (1399, '127.0.0.1', '2023-05-28 16:09:23.735778', '/myapp/index/thing/getWishThingList', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (1400, '127.0.0.1', '2023-05-28 16:09:24.315962', '/myapp/index/comment/listMyComments', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (1401, '127.0.0.1', '2023-05-28 16:09:24.917407', '/myapp/index/user/info', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (1402, '127.0.0.1', '2023-05-28 16:09:25.540958', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (1403, '127.0.0.1', '2023-05-28 16:09:26.210569', '/myapp/index/thing/getWishThingList', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (1404, '127.0.0.1', '2023-05-28 16:09:26.783948', '/myapp/index/comment/listMyComments', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (1405, '127.0.0.1', '2023-05-28 16:09:28.290149', '/myapp/index/user/info', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (1406, '127.0.0.1', '2023-05-28 16:09:29.473286', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (1407, '127.0.0.1', '2023-05-28 16:09:30.094412', '/myapp/index/thing/getWishThingList', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (1408, '127.0.0.1', '2023-05-28 16:09:30.726033', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (1409, '127.0.0.1', '2023-05-28 16:09:33.030757', '/myapp/index/user/info', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (1410, '127.0.0.1', '2023-05-28 16:09:33.952873', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (1411, '127.0.0.1', '2023-05-28 16:09:36.506129', '/myapp/index/user/info', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (1412, '127.0.0.1', '2023-05-28 16:09:38.906005', '/myapp/index/user/info', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (1413, '127.0.0.1', '2023-05-28 16:09:41.225910', '/myapp/index/notice/list_api', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (1414, '127.0.0.1', '2023-05-28 16:09:41.997490', '/myapp/index/user/info', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (1415, '127.0.0.1', '2023-05-28 16:09:42.873210', '/myapp/index/user/info', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (1416, '127.0.0.1', '2023-05-28 16:09:43.698328', '/myapp/index/tag/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (1417, '127.0.0.1', '2023-05-28 16:09:43.700449', '/myapp/index/tag/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (1418, '127.0.0.1', '2023-05-28 16:09:43.705290', '/myapp/index/tag/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (1419, '127.0.0.1', '2023-05-28 16:09:43.722267', '/myapp/index/tag/list', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (1420, '127.0.0.1', '2023-05-28 16:09:52.684744', '/myapp/admin/ad/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (1421, '127.0.0.1', '2023-05-28 16:10:02.098160', '/myapp/index/thing/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (1422, '127.0.0.1', '2023-05-28 16:10:02.115454', '/myapp/index/thing/detail', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (1423, '127.0.0.1', '2023-05-28 16:10:02.117452', '/myapp/index/thing/detail', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (1424, '127.0.0.1', '2023-05-28 16:10:02.125449', '/myapp/index/thing/detail', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (1425, '127.0.0.1', '2023-05-28 16:10:02.137616', '/upload/raw/1685172643495.mp4', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (1426, '127.0.0.1', '2023-05-28 16:18:55.571991', '/myapp/index/comment/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (1427, '127.0.0.1', '2023-05-28 16:18:55.581788', '/myapp/index/comment/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (1428, '127.0.0.1', '2023-05-28 16:18:55.596266', '/myapp/index/comment/list', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (1429, '127.0.0.1', '2023-05-28 16:18:55.603596', '/myapp/index/comment/list', 'GET', NULL, '39');
INSERT INTO `b_op_log` VALUES (1430, '127.0.0.1', '2023-05-28 16:18:55.616963', '/upload/cover/1685240184357.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (1431, '127.0.0.1', '2023-05-28 16:18:55.616963', '/upload/cover/1685240184357.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (1432, '127.0.0.1', '2023-05-28 16:19:13.209062', '/myapp/index/comment/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (1433, '127.0.0.1', '2023-05-28 16:19:13.216882', '/myapp/index/comment/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (1434, '127.0.0.1', '2023-05-28 16:19:13.232369', '/myapp/index/comment/list', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (1435, '127.0.0.1', '2023-05-28 16:19:13.234686', '/myapp/index/comment/list', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (1436, '127.0.0.1', '2023-05-28 16:25:10.813176', '/myapp/index/comment/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (1437, '127.0.0.1', '2023-05-28 16:25:10.829284', '/myapp/index/comment/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (1438, '127.0.0.1', '2023-05-28 16:25:10.832276', '/myapp/index/comment/list', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (1439, '127.0.0.1', '2023-05-28 16:25:10.839276', '/myapp/index/comment/list', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (1440, '127.0.0.1', '2023-05-28 16:25:11.008891', '/upload/cover/1685240184357.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (1441, '127.0.0.1', '2023-05-28 16:25:11.008891', '/upload/cover/1685240184357.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (1442, '127.0.0.1', '2023-05-28 16:25:11.008891', '/upload/cover/1685240184357.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (1443, '127.0.0.1', '2023-05-28 16:25:11.009891', '/upload/raw/1685172643495.mp4', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (1444, '127.0.0.1', '2023-05-28 16:25:11.009891', '/upload/raw/1685172643495.mp4', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (1445, '127.0.0.1', '2023-05-28 16:25:11.032785', '/myapp/index/tag/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (1446, '127.0.0.1', '2023-05-28 16:25:11.035788', '/myapp/index/tag/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (1447, '127.0.0.1', '2023-05-28 16:25:11.042116', '/myapp/index/tag/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (1448, '127.0.0.1', '2023-05-28 16:25:11.054628', '/myapp/index/tag/list', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (1449, '127.0.0.1', '2023-05-28 16:25:11.267440', '/myapp/admin/ad/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (1450, '127.0.0.1', '2023-05-28 16:25:16.688474', '/myapp/index/thing/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (1451, '127.0.0.1', '2023-05-28 16:25:16.690474', '/myapp/index/thing/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (1452, '127.0.0.1', '2023-05-28 16:25:16.717279', '/myapp/index/thing/list', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (1453, '127.0.0.1', '2023-05-28 16:25:16.723384', '/myapp/index/thing/list', 'GET', NULL, '41');
INSERT INTO `b_op_log` VALUES (1454, '127.0.0.1', '2023-05-28 16:25:16.759932', '/upload/raw/1685172643495.mp4', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (1455, '127.0.0.1', '2023-05-28 16:25:16.770320', '/upload/cover/1685240184357.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (1456, '127.0.0.1', '2023-05-28 16:25:16.771540', '/upload/cover/1685240191000.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (1457, '127.0.0.1', '2023-05-28 16:25:16.771540', '/upload/cover/1685240184357.jpeg', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (1458, '127.0.0.1', '2023-05-28 16:25:16.772547', '/upload/cover/1685240191000.jpeg', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (1459, '127.0.0.1', '2023-05-28 16:25:16.885029', '/myapp/index/tag/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (1460, '127.0.0.1', '2023-05-28 16:25:16.888559', '/myapp/index/tag/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (1461, '127.0.0.1', '2023-05-28 16:25:16.891586', '/myapp/index/tag/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (1462, '127.0.0.1', '2023-05-28 16:25:16.907617', '/myapp/index/tag/list', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (1463, '127.0.0.1', '2023-05-28 16:25:17.060059', '/myapp/admin/ad/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (1464, '127.0.0.1', '2023-05-28 16:25:19.059587', '/myapp/index/classification/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (1465, '127.0.0.1', '2023-05-28 16:25:19.066736', '/myapp/index/classification/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (1466, '127.0.0.1', '2023-05-28 16:25:19.062102', '/myapp/index/classification/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (1467, '127.0.0.1', '2023-05-28 16:25:19.088783', '/myapp/index/classification/list', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (1468, '127.0.0.1', '2023-05-28 16:25:23.778680', '/myapp/index/thing/list', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (1469, '127.0.0.1', '2023-05-28 16:25:24.267943', '/myapp/index/thing/list', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (1470, '127.0.0.1', '2023-05-28 16:25:24.878444', '/myapp/index/thing/list', 'GET', NULL, '37');
INSERT INTO `b_op_log` VALUES (1471, '127.0.0.1', '2023-05-28 16:25:25.559256', '/myapp/index/thing/list', 'GET', NULL, '50');
INSERT INTO `b_op_log` VALUES (1472, '127.0.0.1', '2023-05-28 16:25:25.918847', '/myapp/index/thing/list', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (1473, '127.0.0.1', '2023-05-28 16:25:26.359990', '/myapp/index/thing/list', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (1474, '127.0.0.1', '2023-05-28 16:25:26.795240', '/myapp/index/thing/list', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (1475, '127.0.0.1', '2023-05-28 16:25:32.485628', '/myapp/index/thing/list', 'GET', NULL, '46');
INSERT INTO `b_op_log` VALUES (1476, '127.0.0.1', '2023-05-28 16:25:39.177238', '/myapp/index/notice/list_api', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (1477, '127.0.0.1', '2023-05-28 16:25:39.187243', '/myapp/index/thing/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (1478, '127.0.0.1', '2023-05-28 16:25:43.470841', '/myapp/index/thing/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (1479, '127.0.0.1', '2023-05-28 16:25:43.493747', '/myapp/index/thing/list', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (1480, '127.0.0.1', '2023-05-28 16:25:52.196819', '/myapp/index/thing/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (1481, '127.0.0.1', '2023-05-28 16:25:52.750979', '/myapp/index/thing/list', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (1482, '127.0.0.1', '2023-05-28 16:25:55.555967', '/myapp/index/thing/getWishThingList', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (1483, '127.0.0.1', '2023-05-28 16:25:55.560963', '/myapp/index/thing/getWishThingList', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (1484, '127.0.0.1', '2023-05-28 16:25:55.580730', '/myapp/index/thing/getWishThingList', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (1485, '127.0.0.1', '2023-05-28 16:25:55.594841', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (1486, '127.0.0.1', '2023-05-28 16:25:57.534693', '/myapp/index/thing/getWishThingList', 'GET', NULL, '36');
INSERT INTO `b_op_log` VALUES (1487, '127.0.0.1', '2023-05-28 16:25:58.186450', '/myapp/index/comment/listMyComments', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (1488, '127.0.0.1', '2023-05-28 16:25:58.633006', '/myapp/index/user/info', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (1489, '127.0.0.1', '2023-05-28 16:25:59.979457', '/myapp/index/user/info', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (1490, '127.0.0.1', '2023-05-28 16:26:01.633267', '/myapp/index/user/info', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (1491, '127.0.0.1', '2023-05-28 16:26:02.709028', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (1492, '127.0.0.1', '2023-05-28 16:26:13.612779', '/myapp/index/thing/getWishThingList', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (1493, '127.0.0.1', '2023-05-28 16:26:14.168393', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (1494, '127.0.0.1', '2023-05-28 16:26:14.728119', '/myapp/index/thing/getWishThingList', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (1495, '127.0.0.1', '2023-05-28 16:26:15.129321', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (1496, '127.0.0.1', '2023-05-28 16:26:15.757207', '/myapp/index/thing/getWishThingList', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (1497, '127.0.0.1', '2023-05-28 16:26:16.282128', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (1498, '127.0.0.1', '2023-05-28 16:26:18.399569', '/myapp/index/tag/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (1499, '127.0.0.1', '2023-05-28 16:26:18.403216', '/myapp/index/tag/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (1500, '127.0.0.1', '2023-05-28 16:26:18.408373', '/myapp/index/tag/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (1501, '127.0.0.1', '2023-05-28 16:26:18.427652', '/myapp/index/tag/list', 'GET', NULL, '35');
INSERT INTO `b_op_log` VALUES (1502, '127.0.0.1', '2023-05-28 16:29:46.886864', '/myapp/admin/adminLogin', 'POST', NULL, '29');
INSERT INTO `b_op_log` VALUES (1503, '127.0.0.1', '2023-05-28 16:29:47.813183', '/myapp/admin/tag/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (1504, '127.0.0.1', '2023-05-28 16:29:47.820981', '/myapp/admin/tag/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (1505, '127.0.0.1', '2023-05-28 16:29:47.848986', '/myapp/admin/tag/list', 'GET', NULL, '38');
INSERT INTO `b_op_log` VALUES (1506, '127.0.0.1', '2023-05-28 16:29:56.034530', '/myapp/admin/classification/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (1507, '127.0.0.1', '2023-05-28 16:29:56.834574', '/myapp/admin/tag/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (1508, '127.0.0.1', '2023-05-28 16:29:57.601857', '/myapp/admin/tag/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (1509, '127.0.0.1', '2023-05-28 16:29:57.619323', '/myapp/admin/tag/list', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (1510, '127.0.0.1', '2023-05-28 16:29:57.642200', '/myapp/admin/tag/list', 'GET', NULL, '50');
INSERT INTO `b_op_log` VALUES (1511, '127.0.0.1', '2023-05-28 16:29:58.243391', '/myapp/admin/classification/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (1512, '127.0.0.1', '2023-05-28 16:29:58.780731', '/myapp/admin/tag/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (1513, '127.0.0.1', '2023-05-28 16:29:58.802794', '/myapp/admin/tag/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (1514, '127.0.0.1', '2023-05-28 16:29:58.805676', '/myapp/admin/tag/list', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (1515, '127.0.0.1', '2023-05-28 16:29:59.724571', '/myapp/admin/classification/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (1516, '127.0.0.1', '2023-05-28 16:30:00.574087', '/myapp/admin/tag/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (1517, '127.0.0.1', '2023-05-28 16:30:01.282530', '/myapp/admin/comment/list', 'GET', NULL, '40');
INSERT INTO `b_op_log` VALUES (1518, '127.0.0.1', '2023-05-28 16:30:01.812690', '/myapp/admin/user/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (1519, '127.0.0.1', '2023-05-28 16:30:03.125513', '/myapp/admin/overview/count', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (1520, '127.0.0.1', '2023-05-28 16:30:10.907276', '/myapp/admin/tag/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (1521, '127.0.0.1', '2023-05-28 16:30:10.931880', '/myapp/admin/tag/list', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (1522, '127.0.0.1', '2023-05-28 16:30:10.949647', '/myapp/admin/tag/list', 'GET', NULL, '50');
INSERT INTO `b_op_log` VALUES (1523, '127.0.0.1', '2023-05-28 16:30:12.959068', '/myapp/admin/classification/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (1524, '127.0.0.1', '2023-05-28 16:30:51.777899', '/myapp/admin/classification/create', 'POST', NULL, '20');
INSERT INTO `b_op_log` VALUES (1525, '127.0.0.1', '2023-05-28 16:30:51.837489', '/myapp/admin/classification/list', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (1526, '127.0.0.1', '2023-05-28 16:30:56.754781', '/myapp/admin/classification/create', 'POST', NULL, '41');
INSERT INTO `b_op_log` VALUES (1527, '127.0.0.1', '2023-05-28 16:30:56.801727', '/myapp/admin/classification/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (1528, '127.0.0.1', '2023-05-28 16:31:03.174296', '/myapp/admin/classification/create', 'POST', NULL, '32');
INSERT INTO `b_op_log` VALUES (1529, '127.0.0.1', '2023-05-28 16:31:03.215428', '/myapp/admin/classification/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (1530, '127.0.0.1', '2023-05-28 16:31:20.656231', '/myapp/index/thing/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (1531, '127.0.0.1', '2023-05-28 16:31:20.660251', '/myapp/index/thing/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (1532, '127.0.0.1', '2023-05-28 16:31:20.664759', '/myapp/index/thing/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (1533, '127.0.0.1', '2023-05-28 16:31:20.689993', '/myapp/index/thing/list', 'GET', NULL, '40');
INSERT INTO `b_op_log` VALUES (1534, '127.0.0.1', '2023-05-28 16:31:28.603606', '/myapp/index/thing/list', 'GET', NULL, '52');
INSERT INTO `b_op_log` VALUES (1535, '127.0.0.1', '2023-05-28 16:31:31.867142', '/myapp/index/thing/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (1536, '127.0.0.1', '2023-05-28 16:31:48.534081', '/myapp/admin/classification/create', 'POST', NULL, '22');
INSERT INTO `b_op_log` VALUES (1537, '127.0.0.1', '2023-05-28 16:31:48.594481', '/myapp/admin/classification/list', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (1538, '127.0.0.1', '2023-05-28 16:31:50.930703', '/myapp/admin/tag/list', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (1539, '127.0.0.1', '2023-05-28 16:31:57.007338', '/myapp/admin/tag/create', 'POST', NULL, '19');
INSERT INTO `b_op_log` VALUES (1540, '127.0.0.1', '2023-05-28 16:31:57.043901', '/myapp/admin/tag/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (1541, '127.0.0.1', '2023-05-28 16:32:05.627920', '/myapp/admin/tag/create', 'POST', NULL, '39');
INSERT INTO `b_op_log` VALUES (1542, '127.0.0.1', '2023-05-28 16:32:05.677363', '/myapp/admin/tag/list', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (1543, '127.0.0.1', '2023-05-28 16:32:14.989018', '/myapp/admin/tag/create', 'POST', NULL, '46');
INSERT INTO `b_op_log` VALUES (1544, '127.0.0.1', '2023-05-28 16:32:15.022338', '/myapp/admin/tag/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (1545, '127.0.0.1', '2023-05-28 16:32:32.316223', '/myapp/admin/tag/create', 'POST', NULL, '40');
INSERT INTO `b_op_log` VALUES (1546, '127.0.0.1', '2023-05-28 16:32:32.360512', '/myapp/admin/tag/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (1547, '127.0.0.1', '2023-05-28 16:32:38.152873', '/myapp/admin/tag/create', 'POST', NULL, '35');
INSERT INTO `b_op_log` VALUES (1548, '127.0.0.1', '2023-05-28 16:32:38.199094', '/myapp/admin/tag/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (1549, '127.0.0.1', '2023-05-28 16:32:47.844622', '/myapp/admin/tag/create', 'POST', NULL, '38');
INSERT INTO `b_op_log` VALUES (1550, '127.0.0.1', '2023-05-28 16:32:47.885187', '/myapp/admin/tag/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (1551, '127.0.0.1', '2023-05-28 16:32:50.622328', '/myapp/index/thing/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (1552, '127.0.0.1', '2023-05-28 16:32:50.625376', '/myapp/index/thing/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (1553, '127.0.0.1', '2023-05-28 16:32:50.624366', '/myapp/index/thing/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (1554, '127.0.0.1', '2023-05-28 16:32:50.636194', '/myapp/index/thing/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (1555, '127.0.0.1', '2023-05-28 16:33:17.909921', '/myapp/admin/tag/create', 'POST', NULL, '21');
INSERT INTO `b_op_log` VALUES (1556, '127.0.0.1', '2023-05-28 16:33:17.954625', '/myapp/admin/tag/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (1557, '127.0.0.1', '2023-05-28 16:33:20.466167', '/myapp/index/tag/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (1558, '127.0.0.1', '2023-05-28 16:33:20.463161', '/myapp/index/tag/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (1559, '127.0.0.1', '2023-05-28 16:33:20.480170', '/myapp/index/tag/list', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (1560, '127.0.0.1', '2023-05-28 16:33:20.488171', '/myapp/index/tag/list', 'GET', NULL, '38');
INSERT INTO `b_op_log` VALUES (1561, '127.0.0.1', '2023-05-28 16:33:23.282557', '/myapp/index/tag/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (1562, '127.0.0.1', '2023-05-28 16:33:23.292352', '/myapp/index/tag/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (1563, '127.0.0.1', '2023-05-28 16:33:23.296872', '/myapp/index/tag/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (1564, '127.0.0.1', '2023-05-28 16:33:23.309879', '/myapp/index/tag/list', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (1565, '127.0.0.1', '2023-05-28 16:33:47.618864', '/myapp/admin/tag/delete', 'POST', NULL, '30');
INSERT INTO `b_op_log` VALUES (1566, '127.0.0.1', '2023-05-28 16:33:47.669842', '/myapp/admin/tag/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (1567, '127.0.0.1', '2023-05-28 16:33:49.955180', '/myapp/index/thing/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (1568, '127.0.0.1', '2023-05-28 16:33:49.959172', '/myapp/index/thing/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (1569, '127.0.0.1', '2023-05-28 16:33:49.961724', '/myapp/index/thing/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (1570, '127.0.0.1', '2023-05-28 16:33:49.978719', '/myapp/index/thing/list', 'GET', NULL, '35');
INSERT INTO `b_op_log` VALUES (1571, '127.0.0.1', '2023-05-28 16:34:03.300977', '/myapp/index/thing/list', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (1572, '127.0.0.1', '2023-05-28 16:34:03.984805', '/myapp/index/thing/list', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (1573, '127.0.0.1', '2023-05-28 16:34:04.518014', '/myapp/index/thing/list', 'GET', NULL, '37');
INSERT INTO `b_op_log` VALUES (1574, '127.0.0.1', '2023-05-28 16:34:05.045652', '/myapp/index/thing/list', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (1575, '127.0.0.1', '2023-05-28 16:34:05.571376', '/myapp/index/thing/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (1576, '127.0.0.1', '2023-05-28 16:34:05.983227', '/myapp/index/thing/list', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (1577, '127.0.0.1', '2023-05-28 16:34:06.635228', '/myapp/index/thing/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (1578, '127.0.0.1', '2023-05-28 16:34:07.134060', '/myapp/index/thing/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (1579, '127.0.0.1', '2023-05-28 16:34:07.641169', '/myapp/index/thing/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (1580, '127.0.0.1', '2023-05-28 16:34:08.490457', '/myapp/index/thing/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (1581, '127.0.0.1', '2023-05-28 16:34:08.912381', '/myapp/index/thing/list', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (1582, '127.0.0.1', '2023-05-28 16:34:16.096489', '/myapp/admin/classification/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (1583, '127.0.0.1', '2023-05-28 16:34:22.798274', '/myapp/admin/tag/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (1584, '127.0.0.1', '2023-05-28 16:34:22.819820', '/myapp/admin/tag/list', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (1585, '127.0.0.1', '2023-05-28 16:34:22.848777', '/myapp/admin/tag/list', 'GET', NULL, '61');
INSERT INTO `b_op_log` VALUES (1586, '127.0.0.1', '2023-05-28 16:35:53.423927', '/myapp/admin/thing/update', 'POST', NULL, '58');
INSERT INTO `b_op_log` VALUES (1587, '127.0.0.1', '2023-05-28 16:35:53.486811', '/myapp/admin/thing/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (1588, '127.0.0.1', '2023-05-28 16:35:57.848551', '/myapp/admin/thing/update', 'POST', NULL, '46');
INSERT INTO `b_op_log` VALUES (1589, '127.0.0.1', '2023-05-28 16:35:57.911354', '/myapp/admin/thing/list', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (1590, '127.0.0.1', '2023-05-28 16:36:02.150966', '/myapp/admin/thing/update', 'POST', NULL, '58');
INSERT INTO `b_op_log` VALUES (1591, '127.0.0.1', '2023-05-28 16:36:02.216935', '/myapp/admin/thing/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (1592, '127.0.0.1', '2023-05-28 16:36:52.794659', '/myapp/admin/tag/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (1593, '127.0.0.1', '2023-05-28 16:36:52.825095', '/myapp/admin/tag/list', 'GET', NULL, '36');
INSERT INTO `b_op_log` VALUES (1594, '127.0.0.1', '2023-05-28 16:36:52.834580', '/myapp/admin/tag/list', 'GET', NULL, '45');
INSERT INTO `b_op_log` VALUES (1595, '127.0.0.1', '2023-05-28 16:37:02.435874', '/myapp/admin/classification/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (1596, '127.0.0.1', '2023-05-28 16:37:02.456606', '/myapp/admin/classification/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (1597, '127.0.0.1', '2023-05-28 16:37:02.467693', '/myapp/admin/classification/list', 'GET', NULL, '36');
INSERT INTO `b_op_log` VALUES (1598, '127.0.0.1', '2023-05-28 16:37:04.230104', '/myapp/admin/tag/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (1599, '127.0.0.1', '2023-05-28 16:37:04.231103', '/myapp/admin/tag/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (1600, '127.0.0.1', '2023-05-28 16:37:04.252109', '/myapp/admin/tag/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (1601, '127.0.0.1', '2023-05-28 16:37:11.819721', '/myapp/admin/tag/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (1602, '127.0.0.1', '2023-05-28 16:37:11.821949', '/myapp/admin/tag/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (1603, '127.0.0.1', '2023-05-28 16:37:11.842717', '/myapp/admin/tag/list', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (1604, '127.0.0.1', '2023-05-28 16:37:21.368845', '/myapp/admin/tag/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (1605, '127.0.0.1', '2023-05-28 16:37:21.379003', '/myapp/admin/tag/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (1606, '127.0.0.1', '2023-05-28 16:37:21.395381', '/myapp/admin/tag/list', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (1607, '127.0.0.1', '2023-05-28 16:37:42.305830', '/myapp/admin/thing/update', 'POST', NULL, '50');
INSERT INTO `b_op_log` VALUES (1608, '127.0.0.1', '2023-05-28 16:37:42.405350', '/myapp/admin/thing/list', 'GET', NULL, '65');
INSERT INTO `b_op_log` VALUES (1609, '127.0.0.1', '2023-05-28 16:37:46.835789', '/myapp/index/tag/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (1610, '127.0.0.1', '2023-05-28 16:37:46.839808', '/myapp/index/tag/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (1611, '127.0.0.1', '2023-05-28 16:37:46.847998', '/myapp/index/tag/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (1612, '127.0.0.1', '2023-05-28 16:37:46.874261', '/myapp/index/tag/list', 'GET', NULL, '42');
INSERT INTO `b_op_log` VALUES (1613, '127.0.0.1', '2023-05-28 16:37:47.630779', '/myapp/index/comment/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (1614, '127.0.0.1', '2023-05-28 16:37:47.638887', '/myapp/index/comment/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (1615, '127.0.0.1', '2023-05-28 16:37:47.656710', '/myapp/index/comment/list', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (1616, '127.0.0.1', '2023-05-28 16:37:47.662793', '/myapp/index/comment/list', 'GET', NULL, '38');
INSERT INTO `b_op_log` VALUES (1617, '127.0.0.1', '2023-05-28 16:38:16.039493', '/upload/raw/1685172643495.mp4', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (1618, '127.0.0.1', '2023-05-28 16:43:18.853238', '/myapp/index/thing/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (1619, '127.0.0.1', '2023-05-28 16:43:18.858942', '/myapp/index/thing/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (1620, '127.0.0.1', '2023-05-28 16:43:18.862010', '/myapp/index/thing/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (1621, '127.0.0.1', '2023-05-28 16:43:18.885648', '/myapp/index/thing/list', 'GET', NULL, '36');
INSERT INTO `b_op_log` VALUES (1622, '127.0.0.1', '2023-05-28 16:46:17.079442', '/myapp/admin/classification/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (1623, '127.0.0.1', '2023-05-28 16:46:17.090699', '/myapp/admin/classification/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (1624, '127.0.0.1', '2023-05-28 16:46:17.107521', '/myapp/admin/classification/list', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (1625, '127.0.0.1', '2023-05-28 16:46:58.152403', '/myapp/admin/thing/update', 'POST', NULL, '265');
INSERT INTO `b_op_log` VALUES (1626, '127.0.0.1', '2023-05-28 16:46:58.213826', '/myapp/admin/thing/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (1627, '127.0.0.1', '2023-05-28 16:47:25.083794', '/myapp/admin/thing/update', 'POST', NULL, '46');
INSERT INTO `b_op_log` VALUES (1628, '127.0.0.1', '2023-05-28 16:47:25.168464', '/myapp/admin/thing/list', 'GET', NULL, '52');
INSERT INTO `b_op_log` VALUES (1629, '127.0.0.1', '2023-05-28 16:47:26.683256', '/upload/cover/1685263639285.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (1630, '127.0.0.1', '2023-05-28 16:47:30.534700', '/myapp/index/tag/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (1631, '127.0.0.1', '2023-05-28 16:47:30.538517', '/myapp/index/tag/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (1632, '127.0.0.1', '2023-05-28 16:47:30.542241', '/myapp/index/tag/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (1633, '127.0.0.1', '2023-05-28 16:47:30.569071', '/myapp/index/tag/list', 'GET', NULL, '44');
INSERT INTO `b_op_log` VALUES (1634, '127.0.0.1', '2023-05-28 16:47:30.601073', '/upload/cover/1685263639285.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (1635, '127.0.0.1', '2023-05-28 16:47:30.618754', '/upload/cover/1685263611250.jpeg', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (1636, '127.0.0.1', '2023-05-28 16:47:59.668187', '/myapp/admin/thing/update', 'POST', NULL, '63');
INSERT INTO `b_op_log` VALUES (1637, '127.0.0.1', '2023-05-28 16:47:59.751311', '/myapp/admin/thing/list', 'GET', NULL, '38');
INSERT INTO `b_op_log` VALUES (1638, '127.0.0.1', '2023-05-28 16:48:23.922175', '/myapp/admin/thing/update', 'POST', NULL, '71');
INSERT INTO `b_op_log` VALUES (1639, '127.0.0.1', '2023-05-28 16:48:24.020162', '/myapp/admin/thing/list', 'GET', NULL, '49');
INSERT INTO `b_op_log` VALUES (1640, '127.0.0.1', '2023-05-28 16:48:27.104855', '/myapp/index/thing/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (1641, '127.0.0.1', '2023-05-28 16:48:27.107982', '/myapp/index/thing/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (1642, '127.0.0.1', '2023-05-28 16:48:27.110044', '/myapp/index/thing/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (1643, '127.0.0.1', '2023-05-28 16:48:27.134657', '/myapp/index/thing/list', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (1644, '127.0.0.1', '2023-05-28 16:48:27.162658', '/upload/cover/1685263674742.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (1645, '127.0.0.1', '2023-05-28 16:48:27.163659', '/upload/cover/1685263674742.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (1646, '127.0.0.1', '2023-05-28 16:48:27.167649', '/upload/cover/1685263699773.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (1647, '127.0.0.1', '2023-05-28 16:48:27.169650', '/upload/cover/1685263699773.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (1648, '127.0.0.1', '2023-05-28 16:48:31.607586', '/myapp/index/thing/list', 'GET', NULL, '43');
INSERT INTO `b_op_log` VALUES (1649, '127.0.0.1', '2023-05-28 16:48:33.114269', '/myapp/index/thing/list', 'GET', NULL, '48');
INSERT INTO `b_op_log` VALUES (1650, '127.0.0.1', '2023-05-28 16:48:47.466246', '/myapp/index/comment/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (1651, '127.0.0.1', '2023-05-28 16:48:47.481009', '/myapp/index/comment/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (1652, '127.0.0.1', '2023-05-28 16:48:47.483017', '/myapp/index/comment/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (1653, '127.0.0.1', '2023-05-28 16:48:47.486038', '/myapp/index/comment/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (1654, '127.0.0.1', '2023-05-28 16:48:47.495976', '/upload/cover/1685263639285.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (1655, '127.0.0.1', '2023-05-28 16:48:47.497989', '/upload/raw/1685263642109.mp4', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (1656, '127.0.0.1', '2023-05-28 16:48:47.499025', '/upload/cover/1685263639285.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (1657, '127.0.0.1', '2023-05-28 16:48:47.500057', '/upload/cover/1685263639285.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (1658, '127.0.0.1', '2023-05-28 16:48:47.504080', '/upload/cover/1685263611250.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (1659, '127.0.0.1', '2023-05-28 16:49:44.925070', '/myapp/index/comment/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (1660, '127.0.0.1', '2023-05-28 16:49:44.931609', '/myapp/index/comment/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (1661, '127.0.0.1', '2023-05-28 16:49:44.935623', '/myapp/index/comment/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (1662, '127.0.0.1', '2023-05-28 16:49:44.947626', '/upload/raw/1685263642109.mp4', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (1663, '127.0.0.1', '2023-05-28 16:49:44.964199', '/upload/raw/1685263642109.mp4', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (1664, '127.0.0.1', '2023-05-28 16:49:44.981564', '/upload/cover/1685263611250.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (1665, '127.0.0.1', '2023-05-28 16:49:44.983573', '/upload/cover/1685263611250.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (1666, '127.0.0.1', '2023-05-28 16:49:44.985573', '/upload/cover/1685263639285.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (1667, '127.0.0.1', '2023-05-28 16:49:44.993274', '/upload/cover/1685263674742.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (1668, '127.0.0.1', '2023-05-28 16:50:43.088765', '/myapp/index/thing/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (1669, '127.0.0.1', '2023-05-28 16:50:43.090585', '/myapp/index/thing/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (1670, '127.0.0.1', '2023-05-28 16:50:43.105542', '/myapp/index/thing/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (1671, '127.0.0.1', '2023-05-28 16:50:43.110678', '/myapp/index/thing/list', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (1672, '127.0.0.1', '2023-05-28 16:50:43.129188', '/upload/cover/1685263674742.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (1673, '127.0.0.1', '2023-05-28 16:50:43.130204', '/upload/cover/1685263611250.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (1674, '127.0.0.1', '2023-05-28 16:50:43.133295', '/upload/cover/1685263611250.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (1675, '127.0.0.1', '2023-05-28 16:50:43.135304', '/upload/cover/1685263611250.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (1676, '127.0.0.1', '2023-05-28 16:50:43.137319', '/upload/raw/1685263642109.mp4', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (1677, '127.0.0.1', '2023-05-28 16:50:44.213534', '/myapp/index/thing/list', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (1678, '127.0.0.1', '2023-05-28 16:50:44.231421', '/myapp/index/thing/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (1679, '127.0.0.1', '2023-05-28 16:50:44.237034', '/myapp/index/thing/list', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (1680, '127.0.0.1', '2023-05-28 16:50:44.245549', '/myapp/index/thing/list', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (1681, '127.0.0.1', '2023-05-28 16:50:45.219663', '/myapp/index/comment/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (1682, '127.0.0.1', '2023-05-28 16:50:45.222006', '/myapp/index/comment/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (1683, '127.0.0.1', '2023-05-28 16:50:45.229980', '/myapp/index/comment/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (1684, '127.0.0.1', '2023-05-28 16:50:45.247064', '/myapp/index/comment/list', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (1685, '127.0.0.1', '2023-05-28 16:52:59.213071', '/myapp/admin/thing/create', 'POST', NULL, '307');
INSERT INTO `b_op_log` VALUES (1686, '127.0.0.1', '2023-05-28 16:52:59.309295', '/myapp/admin/thing/list', 'GET', NULL, '54');
INSERT INTO `b_op_log` VALUES (1687, '127.0.0.1', '2023-05-28 16:53:25.214518', '/myapp/admin/thing/create', 'POST', NULL, '73');
INSERT INTO `b_op_log` VALUES (1688, '127.0.0.1', '2023-05-28 16:53:25.331500', '/myapp/admin/thing/list', 'GET', NULL, '68');
INSERT INTO `b_op_log` VALUES (1689, '127.0.0.1', '2023-05-28 16:53:53.417844', '/myapp/admin/thing/create', 'POST', NULL, '46');
INSERT INTO `b_op_log` VALUES (1690, '127.0.0.1', '2023-05-28 16:53:53.513366', '/myapp/admin/thing/list', 'GET', NULL, '46');
INSERT INTO `b_op_log` VALUES (1691, '127.0.0.1', '2023-05-28 16:53:57.151341', '/myapp/index/thing/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (1692, '127.0.0.1', '2023-05-28 16:53:57.155570', '/myapp/index/thing/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (1693, '127.0.0.1', '2023-05-28 16:53:57.176546', '/myapp/index/thing/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (1694, '127.0.0.1', '2023-05-28 16:53:57.186880', '/myapp/index/thing/list', 'GET', NULL, '40');
INSERT INTO `b_op_log` VALUES (1695, '127.0.0.1', '2023-05-28 16:53:57.225050', '/upload/cover/1685263639285.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (1696, '127.0.0.1', '2023-05-28 16:53:57.226066', '/upload/cover/1685263611250.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (1697, '127.0.0.1', '2023-05-28 16:53:57.227082', '/upload/cover/1685263611250.jpeg', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (1698, '127.0.0.1', '2023-05-28 16:53:57.227082', '/upload/cover/1685263611250.jpeg', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (1699, '127.0.0.1', '2023-05-28 16:53:57.236518', '/upload/cover/1685263611250.jpeg', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (1700, '127.0.0.1', '2023-05-28 16:53:57.251732', '/upload/cover/1685263674742.jpeg', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (1701, '127.0.0.1', '2023-05-28 16:53:57.258806', '/upload/cover/1685263699773.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (1702, '127.0.0.1', '2023-05-28 16:54:06.280836', '/myapp/index/thing/list', 'GET', NULL, '43');
INSERT INTO `b_op_log` VALUES (1703, '127.0.0.1', '2023-05-28 16:54:09.275407', '/myapp/index/thing/list', 'GET', NULL, '35');
INSERT INTO `b_op_log` VALUES (1704, '127.0.0.1', '2023-05-28 16:54:12.048494', '/myapp/index/thing/list', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (1705, '127.0.0.1', '2023-05-28 16:54:12.761146', '/myapp/index/thing/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (1706, '127.0.0.1', '2023-05-28 16:54:13.556722', '/myapp/index/thing/list', 'GET', NULL, '40');
INSERT INTO `b_op_log` VALUES (1707, '127.0.0.1', '2023-05-28 16:54:14.520857', '/myapp/index/thing/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (1708, '127.0.0.1', '2023-05-28 16:55:20.687544', '/myapp/admin/thing/create', 'POST', NULL, '82');
INSERT INTO `b_op_log` VALUES (1709, '127.0.0.1', '2023-05-28 16:55:20.773107', '/myapp/admin/thing/list', 'GET', NULL, '43');
INSERT INTO `b_op_log` VALUES (1710, '127.0.0.1', '2023-05-28 16:55:42.486679', '/myapp/admin/thing/create', 'POST', NULL, '65');
INSERT INTO `b_op_log` VALUES (1711, '127.0.0.1', '2023-05-28 16:55:42.660169', '/myapp/admin/thing/list', 'GET', NULL, '124');
INSERT INTO `b_op_log` VALUES (1712, '127.0.0.1', '2023-05-28 16:55:45.697945', '/myapp/index/thing/list', 'GET', NULL, '41');
INSERT INTO `b_op_log` VALUES (1713, '127.0.0.1', '2023-05-28 16:55:45.728584', '/upload/cover/1685263639285.jpeg', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (1714, '127.0.0.1', '2023-05-28 16:55:45.729582', '/upload/cover/1685263639285.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (1715, '127.0.0.1', '2023-05-28 16:55:45.729582', '/upload/cover/1685263639285.jpeg', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (1716, '127.0.0.1', '2023-05-28 16:55:45.729582', '/upload/cover/1685263639285.jpeg', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (1717, '127.0.0.1', '2023-05-28 16:55:46.194374', '/myapp/index/thing/list', 'GET', NULL, '50');
INSERT INTO `b_op_log` VALUES (1718, '127.0.0.1', '2023-05-28 16:55:46.238438', '/upload/cover/1685264135851.jpeg', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (1719, '127.0.0.1', '2023-05-28 16:55:46.239438', '/upload/cover/1685264135851.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (1720, '127.0.0.1', '2023-05-28 16:56:10.605565', '/myapp/admin/thing/create', 'POST', NULL, '82');
INSERT INTO `b_op_log` VALUES (1721, '127.0.0.1', '2023-05-28 16:56:10.791956', '/myapp/admin/thing/list', 'GET', NULL, '121');
INSERT INTO `b_op_log` VALUES (1722, '127.0.0.1', '2023-05-28 16:56:12.849263', '/myapp/index/thing/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (1723, '127.0.0.1', '2023-05-28 16:56:13.363716', '/myapp/index/thing/list', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (1724, '127.0.0.1', '2023-05-28 16:56:13.411326', '/upload/cover/1685264163148.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (1725, '127.0.0.1', '2023-05-28 16:56:17.091354', '/myapp/index/thing/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (1726, '127.0.0.1', '2023-05-28 16:57:36.183329', '/myapp/admin/thing/create', 'POST', NULL, '63');
INSERT INTO `b_op_log` VALUES (1727, '127.0.0.1', '2023-05-28 16:57:36.300559', '/myapp/admin/thing/list', 'GET', NULL, '77');
INSERT INTO `b_op_log` VALUES (1728, '127.0.0.1', '2023-05-28 16:57:56.708721', '/myapp/admin/thing/create', 'POST', NULL, '46');
INSERT INTO `b_op_log` VALUES (1729, '127.0.0.1', '2023-05-28 16:57:56.914873', '/myapp/admin/thing/list', 'GET', NULL, '158');
INSERT INTO `b_op_log` VALUES (1730, '127.0.0.1', '2023-05-28 16:58:21.235679', '/myapp/admin/thing/create', 'POST', NULL, '70');
INSERT INTO `b_op_log` VALUES (1731, '127.0.0.1', '2023-05-28 16:58:21.397673', '/myapp/admin/thing/list', 'GET', NULL, '103');
INSERT INTO `b_op_log` VALUES (1732, '127.0.0.1', '2023-05-28 16:58:23.653119', '/myapp/index/thing/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (1733, '127.0.0.1', '2023-05-28 16:58:24.133167', '/myapp/index/thing/list', 'GET', NULL, '36');
INSERT INTO `b_op_log` VALUES (1734, '127.0.0.1', '2023-05-28 16:58:24.162401', '/upload/cover/1685264250423.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (1735, '127.0.0.1', '2023-05-28 16:58:24.162401', '/upload/cover/1685264250423.jpeg', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (1736, '127.0.0.1', '2023-05-28 16:58:24.180095', '/upload/cover/1685264250423.jpeg', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (1737, '127.0.0.1', '2023-05-28 17:00:00.908871', '/myapp/admin/thing/create', 'POST', NULL, '77');
INSERT INTO `b_op_log` VALUES (1738, '127.0.0.1', '2023-05-28 17:00:01.070361', '/myapp/admin/thing/list', 'GET', NULL, '115');
INSERT INTO `b_op_log` VALUES (1739, '127.0.0.1', '2023-05-28 17:00:25.297640', '/myapp/admin/thing/create', 'POST', NULL, '63');
INSERT INTO `b_op_log` VALUES (1740, '127.0.0.1', '2023-05-28 17:00:25.452817', '/myapp/admin/thing/list', 'GET', NULL, '113');
INSERT INTO `b_op_log` VALUES (1741, '127.0.0.1', '2023-05-28 17:00:50.468920', '/myapp/admin/thing/create', 'POST', NULL, '63');
INSERT INTO `b_op_log` VALUES (1742, '127.0.0.1', '2023-05-28 17:00:50.714906', '/myapp/admin/thing/list', 'GET', NULL, '194');
INSERT INTO `b_op_log` VALUES (1743, '127.0.0.1', '2023-05-28 17:00:52.800260', '/myapp/index/thing/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (1744, '127.0.0.1', '2023-05-28 17:00:52.822424', '/upload/cover/1685264443807.jpeg', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (1745, '127.0.0.1', '2023-05-28 17:00:52.823424', '/upload/cover/1685264443807.jpeg', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (1746, '127.0.0.1', '2023-05-28 17:00:52.824424', '/upload/cover/1685264443807.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (1747, '127.0.0.1', '2023-05-28 17:02:22.400750', '/myapp/admin/thing/create', 'POST', NULL, '67');
INSERT INTO `b_op_log` VALUES (1748, '127.0.0.1', '2023-05-28 17:02:22.569219', '/myapp/admin/thing/list', 'GET', NULL, '124');
INSERT INTO `b_op_log` VALUES (1749, '127.0.0.1', '2023-05-28 17:02:49.414222', '/myapp/admin/thing/create', 'POST', NULL, '50');
INSERT INTO `b_op_log` VALUES (1750, '127.0.0.1', '2023-05-28 17:02:49.635985', '/myapp/admin/thing/list', 'GET', NULL, '170');
INSERT INTO `b_op_log` VALUES (1751, '127.0.0.1', '2023-05-28 17:03:21.147819', '/myapp/admin/thing/create', 'POST', NULL, '67');
INSERT INTO `b_op_log` VALUES (1752, '127.0.0.1', '2023-05-28 17:03:21.351182', '/myapp/admin/thing/list', 'GET', NULL, '143');
INSERT INTO `b_op_log` VALUES (1753, '127.0.0.1', '2023-05-28 17:03:58.019155', '/myapp/index/thing/list', 'GET', NULL, '44');
INSERT INTO `b_op_log` VALUES (1754, '127.0.0.1', '2023-05-28 17:03:58.051705', '/upload/cover/1685264586283.jpeg', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (1755, '127.0.0.1', '2023-05-28 17:03:58.053711', '/upload/cover/1685264586283.jpeg', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (1756, '127.0.0.1', '2023-05-28 17:03:58.053711', '/upload/cover/1685264586283.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (1757, '127.0.0.1', '2023-05-28 17:04:23.308541', '/myapp/index/thing/list', 'GET', NULL, '41');
INSERT INTO `b_op_log` VALUES (1758, '127.0.0.1', '2023-05-28 17:04:23.341204', '/upload/cover/1685264026586.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (1759, '127.0.0.1', '2023-05-28 17:04:23.342205', '/upload/cover/1685264026586.jpeg', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (1760, '127.0.0.1', '2023-05-28 17:04:23.343203', '/upload/cover/1685264026586.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (1761, '127.0.0.1', '2023-05-28 17:04:24.162900', '/myapp/index/thing/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (1762, '127.0.0.1', '2023-05-28 17:06:24.897863', '/myapp/admin/thing/create', 'POST', NULL, '83');
INSERT INTO `b_op_log` VALUES (1763, '127.0.0.1', '2023-05-28 17:06:25.145336', '/myapp/admin/thing/list', 'GET', NULL, '187');
INSERT INTO `b_op_log` VALUES (1764, '127.0.0.1', '2023-05-28 17:06:46.217335', '/myapp/admin/thing/create', 'POST', NULL, '78');
INSERT INTO `b_op_log` VALUES (1765, '127.0.0.1', '2023-05-28 17:06:46.386302', '/myapp/admin/thing/list', 'GET', NULL, '117');
INSERT INTO `b_op_log` VALUES (1766, '127.0.0.1', '2023-05-28 17:07:17.557593', '/myapp/admin/thing/create', 'POST', NULL, '81');
INSERT INTO `b_op_log` VALUES (1767, '127.0.0.1', '2023-05-28 17:07:17.893541', '/myapp/admin/thing/list', 'GET', NULL, '274');
INSERT INTO `b_op_log` VALUES (1768, '127.0.0.1', '2023-05-28 17:07:20.503386', '/myapp/index/thing/list', 'GET', NULL, '36');
INSERT INTO `b_op_log` VALUES (1769, '127.0.0.1', '2023-05-28 17:07:20.529997', '/upload/cover/1685263937295.jpeg', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (1770, '127.0.0.1', '2023-05-28 17:07:20.531003', '/upload/cover/1685263937295.jpeg', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (1771, '127.0.0.1', '2023-05-28 17:07:20.531998', '/upload/cover/1685263937295.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (1772, '127.0.0.1', '2023-05-28 17:07:20.957120', '/myapp/index/thing/list', 'GET', NULL, '40');
INSERT INTO `b_op_log` VALUES (1773, '127.0.0.1', '2023-05-28 17:07:20.995430', '/upload/cover/1685264830789.jpeg', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (1774, '127.0.0.1', '2023-05-28 17:07:20.996429', '/upload/cover/1685264830789.jpeg', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (1775, '127.0.0.1', '2023-05-28 17:07:21.020229', '/upload/cover/1685264830789.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (1776, '127.0.0.1', '2023-05-28 17:07:22.414136', '/myapp/index/thing/list', 'GET', NULL, '118');
INSERT INTO `b_op_log` VALUES (1777, '127.0.0.1', '2023-05-28 17:07:22.435127', '/upload/cover/1685264586283.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (1778, '127.0.0.1', '2023-05-28 17:07:22.435127', '/upload/cover/1685264535734.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (1779, '127.0.0.1', '2023-05-28 17:07:22.435127', '/upload/cover/1685264535734.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (1780, '127.0.0.1', '2023-05-28 17:07:22.460148', '/upload/cover/1685264443807.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (1781, '127.0.0.1', '2023-05-28 17:07:22.468222', '/upload/cover/1685264420316.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (1782, '127.0.0.1', '2023-05-28 17:07:22.478222', '/upload/cover/1685264250423.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (1783, '127.0.0.1', '2023-05-28 17:07:22.491211', '/upload/cover/1685264250423.jpeg', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (1784, '127.0.0.1', '2023-05-28 17:07:22.504221', '/upload/cover/1685264270509.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (1785, '127.0.0.1', '2023-05-28 17:07:22.510212', '/upload/cover/1685264295265.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (1786, '127.0.0.1', '2023-05-28 17:07:23.003568', '/myapp/index/thing/list', 'GET', NULL, '45');
INSERT INTO `b_op_log` VALUES (1787, '127.0.0.1', '2023-05-28 17:07:23.048031', '/upload/cover/1685263611250.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (1788, '127.0.0.1', '2023-05-28 17:07:23.049037', '/upload/cover/1685263611250.jpeg', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (1789, '127.0.0.1', '2023-05-28 17:07:23.050039', '/upload/cover/1685263611250.jpeg', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (1790, '127.0.0.1', '2023-05-28 17:07:23.051109', '/upload/cover/1685263611250.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (1791, '127.0.0.1', '2023-05-28 17:07:27.410025', '/myapp/index/thing/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (1792, '127.0.0.1', '2023-05-28 17:07:27.447421', '/upload/cover/1685264163148.jpeg', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (1793, '127.0.0.1', '2023-05-28 17:07:27.448442', '/upload/cover/1685264163148.jpeg', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (1794, '127.0.0.1', '2023-05-28 17:07:27.457021', '/upload/cover/1685264163148.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (1795, '127.0.0.1', '2023-05-28 17:07:28.540173', '/myapp/index/thing/list', 'GET', NULL, '55');
INSERT INTO `b_op_log` VALUES (1796, '127.0.0.1', '2023-05-28 17:08:27.669250', '/myapp/admin/thing/create', 'POST', NULL, '59');
INSERT INTO `b_op_log` VALUES (1797, '127.0.0.1', '2023-05-28 17:08:27.942382', '/myapp/admin/thing/list', 'GET', NULL, '240');
INSERT INTO `b_op_log` VALUES (1798, '127.0.0.1', '2023-05-28 17:08:30.340184', '/myapp/index/thing/list', 'GET', NULL, '112');
INSERT INTO `b_op_log` VALUES (1799, '127.0.0.1', '2023-05-28 17:08:30.367177', '/upload/cover/1685264355503.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (1800, '127.0.0.1', '2023-05-28 17:08:30.368176', '/upload/cover/1685264443807.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (1801, '127.0.0.1', '2023-05-28 17:08:30.369174', '/upload/cover/1685264443807.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (1802, '127.0.0.1', '2023-05-28 17:08:30.369174', '/upload/cover/1685264443807.jpeg', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (1803, '127.0.0.1', '2023-05-28 17:08:30.370174', '/upload/cover/1685264535734.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (1804, '127.0.0.1', '2023-05-28 17:08:30.386175', '/upload/cover/1685264443807.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (1805, '127.0.0.1', '2023-05-28 17:08:30.404181', '/upload/cover/1685264878356.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (1806, '127.0.0.1', '2023-05-28 17:08:30.410706', '/upload/cover/1685264830789.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (1807, '127.0.0.1', '2023-05-28 17:08:30.446705', '/upload/cover/1685264562903.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (1808, '127.0.0.1', '2023-05-28 17:08:30.455731', '/upload/cover/1685264586283.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (1809, '127.0.0.1', '2023-05-28 17:08:30.462704', '/upload/cover/1685264800237.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (1810, '127.0.0.1', '2023-05-28 17:08:30.463704', '/upload/cover/1685264771439.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (1811, '127.0.0.1', '2023-05-28 17:08:37.552847', '/myapp/index/thing/list', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (1812, '127.0.0.1', '2023-05-28 17:08:38.586739', '/myapp/index/thing/list', 'GET', NULL, '126');
INSERT INTO `b_op_log` VALUES (1813, '127.0.0.1', '2023-05-28 17:09:52.041475', '/myapp/index/thing/list', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (1814, '127.0.0.1', '2023-05-28 17:09:53.140034', '/myapp/index/thing/list', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (1815, '127.0.0.1', '2023-05-28 17:09:54.982905', '/myapp/index/thing/list', 'GET', NULL, '65');
INSERT INTO `b_op_log` VALUES (1816, '127.0.0.1', '2023-05-28 17:09:55.012875', '/upload/cover/1685264163148.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (1817, '127.0.0.1', '2023-05-28 17:09:55.012875', '/upload/cover/1685264163148.jpeg', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (1818, '127.0.0.1', '2023-05-28 17:09:55.013872', '/upload/cover/1685264163148.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (1819, '127.0.0.1', '2023-05-28 17:09:55.656145', '/myapp/index/thing/list', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (1820, '127.0.0.1', '2023-05-28 17:09:56.166715', '/myapp/index/thing/list', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (1821, '127.0.0.1', '2023-05-28 17:09:57.034963', '/myapp/index/thing/list', 'GET', NULL, '81');
INSERT INTO `b_op_log` VALUES (1822, '127.0.0.1', '2023-05-28 17:09:57.063771', '/upload/cover/1685264250423.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (1823, '127.0.0.1', '2023-05-28 17:09:57.063771', '/upload/cover/1685264250423.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (1824, '127.0.0.1', '2023-05-28 17:09:57.521918', '/myapp/index/thing/list', 'GET', NULL, '84');
INSERT INTO `b_op_log` VALUES (1825, '127.0.0.1', '2023-05-28 17:09:57.949535', '/myapp/index/thing/list', 'GET', NULL, '45');
INSERT INTO `b_op_log` VALUES (1826, '127.0.0.1', '2023-05-28 17:09:57.998392', '/upload/cover/1685264135851.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (1827, '127.0.0.1', '2023-05-28 17:09:58.355329', '/myapp/index/thing/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (1828, '127.0.0.1', '2023-05-28 17:09:58.401141', '/upload/cover/1685263997721.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (1829, '127.0.0.1', '2023-05-28 17:09:58.878379', '/myapp/index/thing/list', 'GET', NULL, '68');
INSERT INTO `b_op_log` VALUES (1830, '127.0.0.1', '2023-05-28 17:09:59.438103', '/myapp/index/thing/list', 'GET', NULL, '51');
INSERT INTO `b_op_log` VALUES (1831, '127.0.0.1', '2023-05-28 17:10:00.206796', '/myapp/index/thing/list', 'GET', NULL, '63');
INSERT INTO `b_op_log` VALUES (1832, '127.0.0.1', '2023-05-28 17:10:00.674661', '/myapp/index/thing/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (1833, '127.0.0.1', '2023-05-28 17:10:01.858312', '/myapp/index/thing/list', 'GET', NULL, '36');
INSERT INTO `b_op_log` VALUES (1834, '127.0.0.1', '2023-05-28 17:10:02.666113', '/myapp/index/thing/list', 'GET', NULL, '84');
INSERT INTO `b_op_log` VALUES (1835, '127.0.0.1', '2023-05-28 17:10:18.537364', '/myapp/admin/thing/update', 'POST', NULL, '28');
INSERT INTO `b_op_log` VALUES (1836, '127.0.0.1', '2023-05-28 17:10:18.738561', '/myapp/admin/thing/list', 'GET', NULL, '170');
INSERT INTO `b_op_log` VALUES (1837, '127.0.0.1', '2023-05-28 17:10:22.139406', '/myapp/index/thing/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (1838, '127.0.0.1', '2023-05-28 17:10:23.411232', '/myapp/index/thing/list', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (1839, '127.0.0.1', '2023-05-28 17:10:24.369263', '/myapp/index/thing/list', 'GET', NULL, '73');
INSERT INTO `b_op_log` VALUES (1840, '127.0.0.1', '2023-05-28 17:10:25.164367', '/myapp/index/thing/list', 'GET', NULL, '58');
INSERT INTO `b_op_log` VALUES (1841, '127.0.0.1', '2023-05-28 17:10:25.203550', '/upload/cover/1685264771439.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (1842, '127.0.0.1', '2023-05-28 17:10:25.203550', '/upload/cover/1685264771439.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (1843, '127.0.0.1', '2023-05-28 17:10:25.218024', '/upload/cover/1685264771439.jpeg', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (1844, '127.0.0.1', '2023-05-28 17:10:25.757461', '/myapp/index/thing/list', 'GET', NULL, '70');
INSERT INTO `b_op_log` VALUES (1845, '127.0.0.1', '2023-05-28 17:10:25.793866', '/upload/cover/1685264800237.jpeg', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (1846, '127.0.0.1', '2023-05-28 17:10:25.793866', '/upload/cover/1685264800237.jpeg', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (1847, '127.0.0.1', '2023-05-28 17:10:25.794865', '/upload/cover/1685264800237.jpeg', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (1848, '127.0.0.1', '2023-05-28 17:10:25.795865', '/upload/cover/1685264800237.jpeg', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (1849, '127.0.0.1', '2023-05-28 17:10:26.421309', '/myapp/index/thing/list', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (1850, '127.0.0.1', '2023-05-28 17:10:26.469123', '/upload/cover/1685264420316.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (1851, '127.0.0.1', '2023-05-28 17:10:27.035948', '/myapp/index/thing/list', 'GET', NULL, '63');
INSERT INTO `b_op_log` VALUES (1852, '127.0.0.1', '2023-05-28 17:10:27.066203', '/upload/cover/1685264830789.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (1853, '127.0.0.1', '2023-05-28 17:10:27.564657', '/myapp/index/thing/list', 'GET', NULL, '82');
INSERT INTO `b_op_log` VALUES (1854, '127.0.0.1', '2023-05-28 17:10:28.606237', '/myapp/index/thing/list', 'GET', NULL, '43');
INSERT INTO `b_op_log` VALUES (1855, '127.0.0.1', '2023-05-28 17:10:30.050378', '/myapp/index/thing/list', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (1856, '127.0.0.1', '2023-05-28 17:10:31.057633', '/myapp/index/thing/list', 'GET', NULL, '57');
INSERT INTO `b_op_log` VALUES (1857, '127.0.0.1', '2023-05-28 17:10:32.576401', '/myapp/index/thing/list', 'GET', NULL, '121');
INSERT INTO `b_op_log` VALUES (1858, '127.0.0.1', '2023-05-28 17:10:35.608230', '/myapp/index/thing/list', 'GET', NULL, '69');
INSERT INTO `b_op_log` VALUES (1859, '127.0.0.1', '2023-05-28 17:10:36.111940', '/myapp/index/thing/list', 'GET', NULL, '63');
INSERT INTO `b_op_log` VALUES (1860, '127.0.0.1', '2023-05-28 17:10:36.921365', '/myapp/index/thing/list', 'GET', NULL, '84');
INSERT INTO `b_op_log` VALUES (1861, '127.0.0.1', '2023-05-28 17:10:37.862772', '/myapp/index/thing/list', 'GET', NULL, '133');
INSERT INTO `b_op_log` VALUES (1862, '127.0.0.1', '2023-05-28 17:10:57.981311', '/myapp/index/tag/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (1863, '127.0.0.1', '2023-05-28 17:10:57.989894', '/myapp/index/thing/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (1864, '127.0.0.1', '2023-05-28 17:10:57.996736', '/myapp/index/thing/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (1865, '127.0.0.1', '2023-05-28 17:10:58.099915', '/myapp/index/thing/list', 'GET', NULL, '115');
INSERT INTO `b_op_log` VALUES (1866, '127.0.0.1', '2023-05-28 17:10:58.139148', '/upload/cover/1685264535734.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (1867, '127.0.0.1', '2023-05-28 17:10:58.140254', '/upload/cover/1685264800237.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (1868, '127.0.0.1', '2023-05-28 17:10:58.143307', '/upload/cover/1685264535734.jpeg', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (1869, '127.0.0.1', '2023-05-28 17:10:58.143307', '/upload/cover/1685264562903.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (1870, '127.0.0.1', '2023-05-28 17:10:58.145491', '/upload/cover/1685264562903.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (1871, '127.0.0.1', '2023-05-28 17:10:58.159694', '/upload/cover/1685264355503.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (1872, '127.0.0.1', '2023-05-28 17:10:58.161964', '/upload/cover/1685264562903.jpeg', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (1873, '127.0.0.1', '2023-05-28 17:10:58.193242', '/upload/cover/1685264443807.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (1874, '127.0.0.1', '2023-05-28 17:13:05.397404', '/myapp/admin/thing/create', 'POST', NULL, '67');
INSERT INTO `b_op_log` VALUES (1875, '127.0.0.1', '2023-05-28 17:13:05.702179', '/myapp/admin/thing/list', 'GET', NULL, '252');
INSERT INTO `b_op_log` VALUES (1876, '127.0.0.1', '2023-05-28 17:13:09.353378', '/myapp/index/thing/list', 'GET', NULL, '43');
INSERT INTO `b_op_log` VALUES (1877, '127.0.0.1', '2023-05-28 17:13:09.403136', '/upload/cover/1685263611250.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (1878, '127.0.0.1', '2023-05-28 17:13:09.404143', '/upload/cover/1685263611250.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (1879, '127.0.0.1', '2023-05-28 17:13:09.405143', '/upload/cover/1685263611250.jpeg', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (1880, '127.0.0.1', '2023-05-28 17:13:09.406142', '/upload/cover/1685263611250.jpeg', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (1881, '127.0.0.1', '2023-05-28 17:13:09.981922', '/myapp/index/thing/list', 'GET', NULL, '111');
INSERT INTO `b_op_log` VALUES (1882, '127.0.0.1', '2023-05-28 17:13:10.035192', '/upload/cover/1685264800237.jpeg', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (1883, '127.0.0.1', '2023-05-28 17:13:10.036206', '/upload/cover/1685264800237.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (1884, '127.0.0.1', '2023-05-28 17:13:10.037194', '/upload/cover/1685264800237.jpeg', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (1885, '127.0.0.1', '2023-05-28 17:13:10.037194', '/upload/cover/1685264800237.jpeg', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (1886, '127.0.0.1', '2023-05-28 17:13:10.038190', '/upload/cover/1685264800237.jpeg', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (1887, '127.0.0.1', '2023-05-28 17:13:10.057564', '/upload/cover/1685264800237.jpeg', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (1888, '127.0.0.1', '2023-05-28 17:13:10.060918', '/upload/cover/1685264830789.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (1889, '127.0.0.1', '2023-05-28 17:13:10.061978', '/upload/cover/1685264830789.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (1890, '127.0.0.1', '2023-05-28 17:13:20.661941', '/myapp/index/thing/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (1891, '127.0.0.1', '2023-05-28 17:13:20.702930', '/upload/cover/1685264114074.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (1892, '127.0.0.1', '2023-05-28 17:13:21.751418', '/myapp/index/thing/list', 'GET', NULL, '45');
INSERT INTO `b_op_log` VALUES (1893, '127.0.0.1', '2023-05-28 17:13:24.667175', '/myapp/index/thing/list', 'GET', NULL, '133');
INSERT INTO `b_op_log` VALUES (1894, '127.0.0.1', '2023-05-28 17:13:24.686577', '/upload/cover/1685264878356.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (1895, '127.0.0.1', '2023-05-28 17:13:25.368391', '/myapp/index/thing/list', 'GET', NULL, '53');
INSERT INTO `b_op_log` VALUES (1896, '127.0.0.1', '2023-05-28 17:13:26.102237', '/myapp/index/thing/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (1897, '127.0.0.1', '2023-05-28 17:13:26.150429', '/upload/cover/1685264250423.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (1898, '127.0.0.1', '2023-05-28 17:13:27.476729', '/myapp/index/thing/list', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (1899, '127.0.0.1', '2023-05-28 17:13:28.489378', '/myapp/index/thing/list', 'GET', NULL, '98');
INSERT INTO `b_op_log` VALUES (1900, '127.0.0.1', '2023-05-28 17:13:31.472364', '/upload/cover/1685264163148.jpeg', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (1901, '127.0.0.1', '2023-05-28 17:13:31.472364', '/upload/cover/1685264163148.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (1902, '127.0.0.1', '2023-05-28 17:13:31.473368', '/upload/cover/1685264163148.jpeg', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (1903, '127.0.0.1', '2023-05-28 17:13:31.473368', '/upload/cover/1685264163148.jpeg', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (1904, '127.0.0.1', '2023-05-28 17:13:31.474166', '/upload/cover/1685264163148.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (1905, '127.0.0.1', '2023-05-28 17:13:35.049216', '/myapp/index/thing/list', 'GET', NULL, '131');
INSERT INTO `b_op_log` VALUES (1906, '127.0.0.1', '2023-05-28 17:13:36.292174', '/myapp/index/thing/list', 'GET', NULL, '129');
INSERT INTO `b_op_log` VALUES (1907, '127.0.0.1', '2023-05-28 17:13:37.274462', '/myapp/index/thing/list', 'GET', NULL, '137');
INSERT INTO `b_op_log` VALUES (1908, '127.0.0.1', '2023-05-28 17:13:38.194801', '/myapp/index/thing/list', 'GET', NULL, '111');
INSERT INTO `b_op_log` VALUES (1909, '127.0.0.1', '2023-05-28 17:13:38.242428', '/upload/cover/1685265162834.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (1910, '127.0.0.1', '2023-05-28 17:13:38.243428', '/upload/cover/1685264420316.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (1911, '127.0.0.1', '2023-05-28 17:13:38.244428', '/upload/cover/1685265162834.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (1912, '127.0.0.1', '2023-05-28 17:13:38.245430', '/upload/cover/1685265162834.jpeg', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (1913, '127.0.0.1', '2023-05-28 17:13:41.382719', '/myapp/index/comment/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (1914, '127.0.0.1', '2023-05-28 17:13:41.396058', '/myapp/index/thing/detail', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (1915, '127.0.0.1', '2023-05-28 17:13:41.421088', '/myapp/index/thing/detail', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (1916, '127.0.0.1', '2023-05-28 17:13:41.452525', '/upload/raw/1685264881003.mp4', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (1917, '127.0.0.1', '2023-05-28 17:13:41.503811', '/upload/raw/1685264881003.mp4', 'GET', NULL, '65');
INSERT INTO `b_op_log` VALUES (1918, '127.0.0.1', '2023-05-28 17:13:43.195034', '/myapp/index/thing/detail', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (1919, '127.0.0.1', '2023-05-28 17:13:43.202907', '/myapp/index/thing/detail', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (1920, '127.0.0.1', '2023-05-28 17:13:43.233499', '/myapp/index/thing/detail', 'GET', NULL, '43');
INSERT INTO `b_op_log` VALUES (1921, '127.0.0.1', '2023-05-28 17:13:43.259206', '/upload/raw/1685265165260.mp4', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (1922, '127.0.0.1', '2023-05-28 17:13:43.341454', '/upload/raw/1685265165260.mp4', 'GET', NULL, '96');
INSERT INTO `b_op_log` VALUES (1923, '127.0.0.1', '2023-05-28 17:13:43.353666', '/upload/cover/1685265162834.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (1924, '127.0.0.1', '2023-05-28 17:14:03.101379', '/myapp/index/thing/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (1925, '127.0.0.1', '2023-05-28 17:14:03.104871', '/myapp/index/thing/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (1926, '127.0.0.1', '2023-05-28 17:14:03.117278', '/myapp/index/thing/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (1927, '127.0.0.1', '2023-05-28 17:14:03.181085', '/myapp/index/thing/list', 'GET', NULL, '84');
INSERT INTO `b_op_log` VALUES (1928, '127.0.0.1', '2023-05-28 17:14:03.202314', '/upload/cover/1685264800237.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (1929, '127.0.0.1', '2023-05-28 17:14:03.203272', '/upload/cover/1685265162834.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (1930, '127.0.0.1', '2023-05-28 17:14:03.203272', '/upload/cover/1685264800237.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (1931, '127.0.0.1', '2023-05-28 17:14:03.204277', '/upload/cover/1685264878356.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (1932, '127.0.0.1', '2023-05-28 17:14:03.204277', '/upload/cover/1685264830789.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (1933, '127.0.0.1', '2023-05-28 17:15:11.427388', '/myapp/index/thing/list', 'GET', NULL, '124');
INSERT INTO `b_op_log` VALUES (1934, '127.0.0.1', '2023-05-28 17:15:11.483268', '/upload/cover/1685264114074.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (1935, '127.0.0.1', '2023-05-28 17:15:15.237316', '/myapp/index/thing/list', 'GET', NULL, '138');
INSERT INTO `b_op_log` VALUES (1936, '127.0.0.1', '2023-05-28 17:15:18.585865', '/myapp/index/thing/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (1937, '127.0.0.1', '2023-05-28 17:15:18.630639', '/myapp/index/thing/detail', 'GET', NULL, '36');
INSERT INTO `b_op_log` VALUES (1938, '127.0.0.1', '2023-05-28 17:15:18.643246', '/upload/raw/1685264833173.mp4', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (1939, '127.0.0.1', '2023-05-28 17:15:18.649234', '/upload/raw/1685264833173.mp4', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (1940, '127.0.0.1', '2023-05-28 17:15:18.680293', '/upload/raw/1685264833173.mp4', 'GET', NULL, '42');
INSERT INTO `b_op_log` VALUES (1941, '127.0.0.1', '2023-05-28 17:15:18.691976', '/upload/cover/1685264878356.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (1942, '127.0.0.1', '2023-05-28 17:22:00.370566', '/myapp/admin/tag/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (1943, '127.0.0.1', '2023-05-28 17:22:00.388598', '/myapp/admin/tag/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (1944, '127.0.0.1', '2023-05-28 17:22:00.572659', '/myapp/admin/tag/list', 'GET', NULL, '206');
INSERT INTO `b_op_log` VALUES (1945, '127.0.0.1', '2023-05-28 17:22:02.997698', '/myapp/admin/classification/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (1946, '127.0.0.1', '2023-05-28 17:22:03.725229', '/myapp/admin/tag/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (1947, '127.0.0.1', '2023-05-28 17:22:03.726921', '/myapp/admin/tag/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (1948, '127.0.0.1', '2023-05-28 17:22:03.853792', '/myapp/admin/tag/list', 'GET', NULL, '132');
INSERT INTO `b_op_log` VALUES (1949, '127.0.0.1', '2023-05-28 17:22:10.027063', '/myapp/index/thing/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (1950, '127.0.0.1', '2023-05-28 17:22:10.029081', '/myapp/index/thing/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (1951, '127.0.0.1', '2023-05-28 17:22:10.033132', '/myapp/index/thing/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (1952, '127.0.0.1', '2023-05-28 17:22:10.135861', '/myapp/index/thing/list', 'GET', NULL, '115');
INSERT INTO `b_op_log` VALUES (1953, '127.0.0.1', '2023-05-28 17:22:10.171632', '/upload/cover/1685265162834.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (1954, '127.0.0.1', '2023-05-28 17:22:10.200631', '/upload/cover/1685264586283.jpeg', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (1955, '127.0.0.1', '2023-05-28 17:22:10.201635', '/upload/cover/1685264830789.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (1956, '127.0.0.1', '2023-05-28 17:22:10.202626', '/upload/cover/1685264586283.jpeg', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (1957, '127.0.0.1', '2023-05-28 17:22:10.203628', '/upload/cover/1685264586283.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (1958, '127.0.0.1', '2023-05-28 17:22:10.209628', '/upload/cover/1685264878356.jpeg', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (1959, '127.0.0.1', '2023-05-28 17:22:10.230625', '/upload/cover/1685264878356.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (1960, '127.0.0.1', '2023-05-28 17:22:10.246643', '/upload/cover/1685264295265.jpeg', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (1961, '127.0.0.1', '2023-05-28 17:22:10.248637', '/upload/cover/1685264295265.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (1962, '127.0.0.1', '2023-05-28 17:22:10.253637', '/upload/cover/1685264295265.jpeg', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (1963, '127.0.0.1', '2023-05-28 17:22:10.260149', '/upload/cover/1685264420316.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (1964, '127.0.0.1', '2023-05-28 17:22:10.263152', '/upload/cover/1685264443807.jpeg', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (1965, '127.0.0.1', '2023-05-28 17:22:39.999117', '/myapp/index/comment/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (1966, '127.0.0.1', '2023-05-28 17:22:40.001129', '/myapp/index/comment/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (1967, '127.0.0.1', '2023-05-28 17:22:40.037387', '/myapp/index/comment/list', 'GET', NULL, '43');
INSERT INTO `b_op_log` VALUES (1968, '127.0.0.1', '2023-05-28 17:22:40.067186', '/upload/raw/1685264833173.mp4', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (1969, '127.0.0.1', '2023-05-28 17:22:40.113916', '/upload/raw/1685264833173.mp4', 'GET', NULL, '60');
INSERT INTO `b_op_log` VALUES (1970, '127.0.0.1', '2023-05-28 17:22:40.141898', '/upload/cover/1685263937295.jpeg', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (1971, '127.0.0.1', '2023-05-28 17:22:40.142936', '/upload/cover/1685263937295.jpeg', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (1972, '127.0.0.1', '2023-05-28 17:22:40.143941', '/upload/cover/1685263937295.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (1973, '127.0.0.1', '2023-05-28 17:22:40.146018', '/upload/cover/1685263937295.jpeg', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (1974, '127.0.0.1', '2023-05-28 17:22:40.148048', '/upload/cover/1685263937295.jpeg', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (1975, '127.0.0.1', '2023-05-28 17:22:41.554185', '/myapp/index/comment/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (1976, '127.0.0.1', '2023-05-28 17:22:41.564314', '/myapp/index/comment/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (1977, '127.0.0.1', '2023-05-28 17:22:41.597587', '/myapp/index/comment/list', 'GET', NULL, '54');
INSERT INTO `b_op_log` VALUES (1978, '127.0.0.1', '2023-05-28 17:22:41.648458', '/myapp/index/comment/list', 'GET', NULL, '105');
INSERT INTO `b_op_log` VALUES (1979, '127.0.0.1', '2023-05-28 17:22:42.336642', '/myapp/index/comment/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (1980, '127.0.0.1', '2023-05-28 17:22:42.341776', '/myapp/index/comment/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (1981, '127.0.0.1', '2023-05-28 17:22:42.375796', '/myapp/index/comment/list', 'GET', NULL, '44');
INSERT INTO `b_op_log` VALUES (1982, '127.0.0.1', '2023-05-28 17:22:42.443943', '/myapp/index/comment/list', 'GET', NULL, '113');
INSERT INTO `b_op_log` VALUES (1983, '127.0.0.1', '2023-05-28 17:22:42.868293', '/myapp/index/thing/detail', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (1984, '127.0.0.1', '2023-05-28 17:22:42.905295', '/myapp/index/thing/detail', 'GET', NULL, '41');
INSERT INTO `b_op_log` VALUES (1985, '127.0.0.1', '2023-05-28 17:22:42.917282', '/myapp/index/thing/detail', 'GET', NULL, '54');
INSERT INTO `b_op_log` VALUES (1986, '127.0.0.1', '2023-05-28 17:22:42.978235', '/myapp/index/thing/detail', 'GET', NULL, '116');
INSERT INTO `b_op_log` VALUES (1987, '127.0.0.1', '2023-05-28 17:22:43.083551', '/myapp/index/comment/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (1988, '127.0.0.1', '2023-05-28 17:22:43.108317', '/myapp/index/comment/list', 'GET', NULL, '44');
INSERT INTO `b_op_log` VALUES (1989, '127.0.0.1', '2023-05-28 17:22:43.122563', '/myapp/index/comment/list', 'GET', NULL, '58');
INSERT INTO `b_op_log` VALUES (1990, '127.0.0.1', '2023-05-28 17:22:43.193668', '/myapp/index/comment/list', 'GET', NULL, '131');
INSERT INTO `b_op_log` VALUES (1991, '127.0.0.1', '2023-05-28 17:22:43.347720', '/myapp/index/comment/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (1992, '127.0.0.1', '2023-05-28 17:22:43.353133', '/myapp/index/comment/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (1993, '127.0.0.1', '2023-05-28 17:22:43.376680', '/myapp/index/comment/list', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (1994, '127.0.0.1', '2023-05-28 17:22:43.466903', '/myapp/index/comment/list', 'GET', NULL, '124');
INSERT INTO `b_op_log` VALUES (1995, '127.0.0.1', '2023-05-28 17:22:43.701542', '/myapp/index/comment/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (1996, '127.0.0.1', '2023-05-28 17:22:43.708838', '/myapp/index/comment/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (1997, '127.0.0.1', '2023-05-28 17:22:43.733573', '/myapp/index/comment/list', 'GET', NULL, '39');
INSERT INTO `b_op_log` VALUES (1998, '127.0.0.1', '2023-05-28 17:22:43.827575', '/myapp/index/comment/list', 'GET', NULL, '135');
INSERT INTO `b_op_log` VALUES (1999, '127.0.0.1', '2023-05-28 17:22:43.873475', '/myapp/index/comment/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (2000, '127.0.0.1', '2023-05-28 17:22:43.890585', '/myapp/index/comment/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (2001, '127.0.0.1', '2023-05-28 17:22:43.906552', '/myapp/index/comment/list', 'GET', NULL, '39');
INSERT INTO `b_op_log` VALUES (2002, '127.0.0.1', '2023-05-28 17:22:43.972702', '/myapp/index/comment/list', 'GET', NULL, '106');
INSERT INTO `b_op_log` VALUES (2003, '127.0.0.1', '2023-05-28 17:22:44.017238', '/myapp/index/comment/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (2004, '127.0.0.1', '2023-05-28 17:22:44.023184', '/myapp/index/comment/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (2005, '127.0.0.1', '2023-05-28 17:22:44.042666', '/myapp/index/comment/list', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (2006, '127.0.0.1', '2023-05-28 17:22:44.099314', '/myapp/index/comment/list', 'GET', NULL, '87');
INSERT INTO `b_op_log` VALUES (2007, '127.0.0.1', '2023-05-28 17:22:44.170703', '/myapp/index/comment/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (2008, '127.0.0.1', '2023-05-28 17:22:44.187595', '/myapp/index/comment/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (2009, '127.0.0.1', '2023-05-28 17:22:44.194809', '/myapp/index/comment/list', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (2010, '127.0.0.1', '2023-05-28 17:22:44.236581', '/myapp/index/comment/list', 'GET', NULL, '71');
INSERT INTO `b_op_log` VALUES (2011, '127.0.0.1', '2023-05-28 17:22:44.352800', '/myapp/index/comment/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (2012, '127.0.0.1', '2023-05-28 17:22:44.378586', '/myapp/index/comment/list', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (2013, '127.0.0.1', '2023-05-28 17:22:44.387269', '/myapp/index/comment/list', 'GET', NULL, '41');
INSERT INTO `b_op_log` VALUES (2014, '127.0.0.1', '2023-05-28 17:22:44.457959', '/myapp/index/comment/list', 'GET', NULL, '112');
INSERT INTO `b_op_log` VALUES (2015, '127.0.0.1', '2023-05-28 17:22:44.622360', '/myapp/index/comment/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (2016, '127.0.0.1', '2023-05-28 17:22:44.629466', '/myapp/index/comment/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (2017, '127.0.0.1', '2023-05-28 17:22:44.653181', '/myapp/index/comment/list', 'GET', NULL, '39');
INSERT INTO `b_op_log` VALUES (2018, '127.0.0.1', '2023-05-28 17:22:44.728657', '/myapp/index/comment/list', 'GET', NULL, '113');
INSERT INTO `b_op_log` VALUES (2019, '127.0.0.1', '2023-05-28 17:22:44.804480', '/myapp/index/comment/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (2020, '127.0.0.1', '2023-05-28 17:22:44.820613', '/myapp/index/comment/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (2021, '127.0.0.1', '2023-05-28 17:22:44.834622', '/myapp/index/comment/list', 'GET', NULL, '36');
INSERT INTO `b_op_log` VALUES (2022, '127.0.0.1', '2023-05-28 17:22:44.889365', '/myapp/index/comment/list', 'GET', NULL, '92');
INSERT INTO `b_op_log` VALUES (2023, '127.0.0.1', '2023-05-28 17:22:44.955112', '/myapp/index/comment/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (2024, '127.0.0.1', '2023-05-28 17:22:44.967111', '/myapp/index/comment/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (2025, '127.0.0.1', '2023-05-28 17:22:44.989111', '/myapp/index/comment/list', 'GET', NULL, '42');
INSERT INTO `b_op_log` VALUES (2026, '127.0.0.1', '2023-05-28 17:22:45.059127', '/myapp/index/comment/list', 'GET', NULL, '111');
INSERT INTO `b_op_log` VALUES (2027, '127.0.0.1', '2023-05-28 17:22:45.145917', '/myapp/index/comment/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (2028, '127.0.0.1', '2023-05-28 17:22:45.158224', '/myapp/index/comment/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (2029, '127.0.0.1', '2023-05-28 17:22:45.189355', '/myapp/index/comment/list', 'GET', NULL, '47');
INSERT INTO `b_op_log` VALUES (2030, '127.0.0.1', '2023-05-28 17:22:45.224333', '/myapp/index/comment/list', 'GET', NULL, '83');
INSERT INTO `b_op_log` VALUES (2031, '127.0.0.1', '2023-05-28 17:22:45.296906', '/myapp/index/comment/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (2032, '127.0.0.1', '2023-05-28 17:22:45.312868', '/myapp/index/comment/list', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (2033, '127.0.0.1', '2023-05-28 17:22:45.333112', '/myapp/index/comment/list', 'GET', NULL, '48');
INSERT INTO `b_op_log` VALUES (2034, '127.0.0.1', '2023-05-28 17:22:45.388158', '/myapp/index/comment/list', 'GET', NULL, '102');
INSERT INTO `b_op_log` VALUES (2035, '127.0.0.1', '2023-05-28 17:22:45.515063', '/myapp/index/comment/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (2036, '127.0.0.1', '2023-05-28 17:22:45.528070', '/myapp/index/comment/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (2037, '127.0.0.1', '2023-05-28 17:22:45.540382', '/myapp/index/comment/list', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (2038, '127.0.0.1', '2023-05-28 17:22:45.614478', '/myapp/index/comment/list', 'GET', NULL, '103');
INSERT INTO `b_op_log` VALUES (2039, '127.0.0.1', '2023-05-28 17:22:45.729427', '/myapp/index/comment/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (2040, '127.0.0.1', '2023-05-28 17:22:45.741487', '/myapp/index/comment/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (2041, '127.0.0.1', '2023-05-28 17:22:45.775623', '/myapp/index/comment/list', 'GET', NULL, '52');
INSERT INTO `b_op_log` VALUES (2042, '127.0.0.1', '2023-05-28 17:22:45.859276', '/myapp/index/comment/list', 'GET', NULL, '136');
INSERT INTO `b_op_log` VALUES (2043, '127.0.0.1', '2023-05-28 17:22:46.072555', '/myapp/index/comment/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (2044, '127.0.0.1', '2023-05-28 17:22:46.082558', '/myapp/index/comment/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (2045, '127.0.0.1', '2023-05-28 17:22:46.122273', '/myapp/index/comment/list', 'GET', NULL, '56');
INSERT INTO `b_op_log` VALUES (2046, '127.0.0.1', '2023-05-28 17:22:46.177586', '/myapp/index/comment/list', 'GET', NULL, '112');
INSERT INTO `b_op_log` VALUES (2047, '127.0.0.1', '2023-05-28 17:22:46.244979', '/myapp/index/comment/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (2048, '127.0.0.1', '2023-05-28 17:22:46.271969', '/myapp/index/comment/list', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (2049, '127.0.0.1', '2023-05-28 17:22:46.284675', '/myapp/index/comment/list', 'GET', NULL, '44');
INSERT INTO `b_op_log` VALUES (2050, '127.0.0.1', '2023-05-28 17:22:46.354378', '/myapp/index/comment/list', 'GET', NULL, '115');
INSERT INTO `b_op_log` VALUES (2051, '127.0.0.1', '2023-05-28 17:22:46.403776', '/myapp/index/comment/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (2052, '127.0.0.1', '2023-05-28 17:22:46.407826', '/myapp/index/comment/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (2053, '127.0.0.1', '2023-05-28 17:22:46.427665', '/myapp/index/comment/list', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (2054, '127.0.0.1', '2023-05-28 17:22:46.493093', '/myapp/index/comment/list', 'GET', NULL, '100');
INSERT INTO `b_op_log` VALUES (2055, '127.0.0.1', '2023-05-28 17:22:46.584361', '/myapp/index/comment/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (2056, '127.0.0.1', '2023-05-28 17:22:46.610359', '/myapp/index/comment/list', 'GET', NULL, '35');
INSERT INTO `b_op_log` VALUES (2057, '127.0.0.1', '2023-05-28 17:22:46.622429', '/myapp/index/comment/list', 'GET', NULL, '47');
INSERT INTO `b_op_log` VALUES (2058, '127.0.0.1', '2023-05-28 17:22:46.674993', '/myapp/index/comment/list', 'GET', NULL, '101');
INSERT INTO `b_op_log` VALUES (2059, '127.0.0.1', '2023-05-28 17:22:49.882476', '/myapp/index/thing/addCollectUser', 'POST', NULL, '45');
INSERT INTO `b_op_log` VALUES (2060, '127.0.0.1', '2023-05-28 17:22:49.938798', '/myapp/index/thing/detail', 'GET', NULL, '35');
INSERT INTO `b_op_log` VALUES (2061, '127.0.0.1', '2023-05-28 17:22:50.258842', '/myapp/index/thing/addWishUser', 'POST', NULL, '47');
INSERT INTO `b_op_log` VALUES (2062, '127.0.0.1', '2023-05-28 17:22:50.319071', '/myapp/index/thing/detail', 'GET', NULL, '50');
INSERT INTO `b_op_log` VALUES (2063, '127.0.0.1', '2023-05-28 17:23:03.661457', '/myapp/index/comment/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (2064, '127.0.0.1', '2023-05-28 17:23:03.681704', '/myapp/index/comment/list', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (2065, '127.0.0.1', '2023-05-28 17:23:03.709152', '/myapp/index/comment/list', 'GET', NULL, '58');
INSERT INTO `b_op_log` VALUES (2066, '127.0.0.1', '2023-05-28 17:23:03.735315', '/upload/raw/1685265165260.mp4', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (2067, '127.0.0.1', '2023-05-28 17:23:03.819511', '/upload/raw/1685265165260.mp4', 'GET', NULL, '93');
INSERT INTO `b_op_log` VALUES (2068, '127.0.0.1', '2023-05-28 17:23:12.378368', '/myapp/index/comment/create', 'POST', NULL, '46');
INSERT INTO `b_op_log` VALUES (2069, '127.0.0.1', '2023-05-28 17:23:12.414142', '/myapp/index/comment/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (2070, '127.0.0.1', '2023-05-28 17:23:15.639591', '/myapp/index/comment/create', 'POST', NULL, '47');
INSERT INTO `b_op_log` VALUES (2071, '127.0.0.1', '2023-05-28 17:23:15.680000', '/myapp/index/comment/list', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (2072, '127.0.0.1', '2023-05-28 17:23:17.983209', '/myapp/index/comment/create', 'POST', NULL, '28');
INSERT INTO `b_op_log` VALUES (2073, '127.0.0.1', '2023-05-28 17:23:18.007845', '/myapp/index/comment/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (2074, '127.0.0.1', '2023-05-28 17:23:21.889171', '/myapp/index/comment/create', 'POST', NULL, '34');
INSERT INTO `b_op_log` VALUES (2075, '127.0.0.1', '2023-05-28 17:23:21.931445', '/myapp/index/comment/list', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (2076, '127.0.0.1', '2023-05-28 17:23:27.033212', '/myapp/index/comment/create', 'POST', NULL, '34');
INSERT INTO `b_op_log` VALUES (2077, '127.0.0.1', '2023-05-28 17:23:27.088086', '/myapp/index/comment/list', 'GET', NULL, '44');
INSERT INTO `b_op_log` VALUES (2078, '127.0.0.1', '2023-05-28 17:23:30.056941', '/myapp/index/comment/create', 'POST', NULL, '35');
INSERT INTO `b_op_log` VALUES (2079, '127.0.0.1', '2023-05-28 17:23:30.111885', '/myapp/index/comment/list', 'GET', NULL, '45');
INSERT INTO `b_op_log` VALUES (2080, '127.0.0.1', '2023-05-28 17:23:43.544704', '/myapp/index/comment/create', 'POST', NULL, '44');
INSERT INTO `b_op_log` VALUES (2081, '127.0.0.1', '2023-05-28 17:23:43.612070', '/myapp/index/comment/list', 'GET', NULL, '56');
INSERT INTO `b_op_log` VALUES (2082, '127.0.0.1', '2023-05-28 17:23:58.941158', '/myapp/index/comment/create', 'POST', NULL, '50');
INSERT INTO `b_op_log` VALUES (2083, '127.0.0.1', '2023-05-28 17:23:59.002683', '/myapp/index/comment/list', 'GET', NULL, '49');
INSERT INTO `b_op_log` VALUES (2084, '127.0.0.1', '2023-05-28 17:24:02.967350', '/myapp/index/comment/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (2085, '127.0.0.1', '2023-05-28 17:24:03.812568', '/myapp/index/comment/like', 'POST', NULL, '18');
INSERT INTO `b_op_log` VALUES (2086, '127.0.0.1', '2023-05-28 17:24:03.863026', '/myapp/index/comment/list', 'GET', NULL, '42');
INSERT INTO `b_op_log` VALUES (2087, '127.0.0.1', '2023-05-28 17:24:04.617037', '/myapp/index/comment/like', 'POST', NULL, '32');
INSERT INTO `b_op_log` VALUES (2088, '127.0.0.1', '2023-05-28 17:24:04.674496', '/myapp/index/comment/list', 'GET', NULL, '47');
INSERT INTO `b_op_log` VALUES (2089, '127.0.0.1', '2023-05-28 17:24:05.499651', '/myapp/index/comment/list', 'GET', NULL, '53');
INSERT INTO `b_op_log` VALUES (2090, '127.0.0.1', '2023-05-28 17:24:06.475659', '/myapp/index/comment/like', 'POST', NULL, '8');
INSERT INTO `b_op_log` VALUES (2091, '127.0.0.1', '2023-05-28 17:24:06.528570', '/myapp/index/comment/list', 'GET', NULL, '43');
INSERT INTO `b_op_log` VALUES (2092, '127.0.0.1', '2023-05-28 17:24:09.859942', '/myapp/index/thing/addCollectUser', 'POST', NULL, '25');
INSERT INTO `b_op_log` VALUES (2093, '127.0.0.1', '2023-05-28 17:24:09.933714', '/myapp/index/thing/detail', 'GET', NULL, '47');
INSERT INTO `b_op_log` VALUES (2094, '127.0.0.1', '2023-05-28 17:24:10.214153', '/myapp/index/thing/addWishUser', 'POST', NULL, '56');
INSERT INTO `b_op_log` VALUES (2095, '127.0.0.1', '2023-05-28 17:24:10.274637', '/myapp/index/thing/detail', 'GET', NULL, '47');
INSERT INTO `b_op_log` VALUES (2096, '127.0.0.1', '2023-05-28 17:25:11.685183', '/myapp/index/thing/list', 'GET', NULL, '39');
INSERT INTO `b_op_log` VALUES (2097, '127.0.0.1', '2023-05-28 17:25:12.884949', '/myapp/index/thing/list', 'GET', NULL, '133');
INSERT INTO `b_op_log` VALUES (2098, '127.0.0.1', '2023-05-28 17:25:14.319567', '/myapp/index/thing/list', 'GET', NULL, '45');
INSERT INTO `b_op_log` VALUES (2099, '127.0.0.1', '2023-05-28 17:25:15.424479', '/myapp/index/thing/list', 'GET', NULL, '123');
INSERT INTO `b_op_log` VALUES (2100, '127.0.0.1', '2023-05-28 17:25:16.729295', '/myapp/index/thing/list', 'GET', NULL, '41');
INSERT INTO `b_op_log` VALUES (2101, '127.0.0.1', '2023-05-28 17:25:16.756043', '/upload/cover/1685264163148.jpeg', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (2102, '127.0.0.1', '2023-05-28 17:25:16.756043', '/upload/cover/1685264163148.jpeg', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (2103, '127.0.0.1', '2023-05-28 17:25:16.757041', '/upload/cover/1685264163148.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (2104, '127.0.0.1', '2023-05-28 17:25:17.839934', '/myapp/index/thing/list', 'GET', NULL, '132');
INSERT INTO `b_op_log` VALUES (2105, '127.0.0.1', '2023-05-28 17:26:37.202177', '/myapp/index/thing/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (2106, '127.0.0.1', '2023-05-28 17:26:37.204680', '/myapp/index/thing/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (2107, '127.0.0.1', '2023-05-28 17:26:37.210730', '/myapp/index/thing/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (2108, '127.0.0.1', '2023-05-28 17:26:37.296729', '/myapp/index/thing/list', 'GET', NULL, '99');
INSERT INTO `b_op_log` VALUES (2109, '127.0.0.1', '2023-05-28 17:26:37.361523', '/upload/cover/1685264586283.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (2110, '127.0.0.1', '2023-05-28 17:26:37.363521', '/upload/cover/1685264586283.jpeg', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (2111, '127.0.0.1', '2023-05-28 17:26:37.364521', '/upload/cover/1685264586283.jpeg', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (2112, '127.0.0.1', '2023-05-28 17:26:37.365519', '/upload/cover/1685264586283.jpeg', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (2113, '127.0.0.1', '2023-05-28 17:26:37.365519', '/upload/cover/1685264586283.jpeg', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (2114, '127.0.0.1', '2023-05-28 17:26:37.379992', '/upload/cover/1685264586283.jpeg', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (2115, '127.0.0.1', '2023-05-28 17:26:37.380998', '/upload/cover/1685264562903.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (2116, '127.0.0.1', '2023-05-28 17:26:37.395922', '/upload/cover/1685264420316.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (2117, '127.0.0.1', '2023-05-28 17:26:37.397174', '/upload/cover/1685264535734.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (2118, '127.0.0.1', '2023-05-28 17:26:37.401180', '/upload/cover/1685264443807.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (2119, '127.0.0.1', '2023-05-28 17:26:37.403607', '/upload/cover/1685264443807.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (2120, '127.0.0.1', '2023-05-28 17:26:37.406967', '/upload/cover/1685264295265.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (2121, '127.0.0.1', '2023-05-28 17:26:41.888202', '/myapp/index/thing/list', 'GET', NULL, '149');
INSERT INTO `b_op_log` VALUES (2122, '127.0.0.1', '2023-05-28 17:26:42.380719', '/upload/cover/1685263937295.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (2123, '127.0.0.1', '2023-05-28 17:26:42.380719', '/upload/cover/1685263937295.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (2124, '127.0.0.1', '2023-05-28 17:26:42.380719', '/upload/cover/1685263937295.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (2125, '127.0.0.1', '2023-05-28 17:26:42.381754', '/upload/cover/1685263937295.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (2126, '127.0.0.1', '2023-05-28 17:26:42.382742', '/upload/cover/1685263937295.jpeg', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (2127, '127.0.0.1', '2023-05-28 17:26:42.382742', '/upload/cover/1685263937295.jpeg', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (2128, '127.0.0.1', '2023-05-28 17:26:43.451295', '/upload/cover/1685263639285.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (2129, '127.0.0.1', '2023-05-28 17:26:43.559776', '/upload/cover/1685263674742.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (2130, '127.0.0.1', '2023-05-28 17:26:43.681875', '/upload/cover/1685263699773.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (2131, '127.0.0.1', '2023-05-28 17:26:46.629429', '/myapp/index/thing/list', 'GET', NULL, '106');
INSERT INTO `b_op_log` VALUES (2132, '127.0.0.1', '2023-05-28 17:26:47.168500', '/upload/cover/1685264535734.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (2133, '127.0.0.1', '2023-05-28 17:26:47.169499', '/upload/cover/1685264586283.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (2134, '127.0.0.1', '2023-05-28 17:26:47.170500', '/upload/cover/1685264562903.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (2135, '127.0.0.1', '2023-05-28 17:26:47.170500', '/upload/cover/1685264586283.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (2136, '127.0.0.1', '2023-05-28 17:26:47.171511', '/upload/cover/1685264562903.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (2137, '127.0.0.1', '2023-05-28 17:26:47.173500', '/upload/cover/1685264586283.jpeg', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (2138, '127.0.0.1', '2023-05-28 17:26:48.287753', '/upload/cover/1685265162834.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (2139, '127.0.0.1', '2023-05-28 17:26:48.318035', '/upload/cover/1685264800237.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (2140, '127.0.0.1', '2023-05-28 17:26:48.365999', '/upload/cover/1685264771439.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (2141, '127.0.0.1', '2023-05-28 17:26:53.179380', '/myapp/index/thing/list', 'GET', NULL, '131');
INSERT INTO `b_op_log` VALUES (2142, '127.0.0.1', '2023-05-28 17:26:53.703683', '/upload/cover/1685264114074.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (2143, '127.0.0.1', '2023-05-28 17:26:53.706610', '/upload/cover/1685264026586.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (2144, '127.0.0.1', '2023-05-28 17:26:53.707617', '/upload/cover/1685263997721.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (2145, '127.0.0.1', '2023-05-28 17:26:53.707617', '/upload/cover/1685263937295.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (2146, '127.0.0.1', '2023-05-28 17:26:53.707617', '/upload/cover/1685263611250.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (2147, '127.0.0.1', '2023-05-28 17:26:53.707617', '/upload/cover/1685264026586.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (2148, '127.0.0.1', '2023-05-28 17:26:54.752856', '/upload/cover/1685263699773.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (2149, '127.0.0.1', '2023-05-28 17:26:54.883441', '/upload/cover/1685263674742.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (2150, '127.0.0.1', '2023-05-28 17:26:55.007063', '/upload/cover/1685263639285.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (2151, '127.0.0.1', '2023-05-28 17:26:56.886915', '/myapp/index/thing/list', 'GET', NULL, '119');
INSERT INTO `b_op_log` VALUES (2152, '127.0.0.1', '2023-05-28 17:26:57.418907', '/upload/cover/1685264443807.jpeg', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (2153, '127.0.0.1', '2023-05-28 17:26:57.420059', '/upload/cover/1685264443807.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (2154, '127.0.0.1', '2023-05-28 17:26:57.420059', '/upload/cover/1685264443807.jpeg', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (2155, '127.0.0.1', '2023-05-28 17:26:57.420059', '/upload/cover/1685264355503.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (2156, '127.0.0.1', '2023-05-28 17:26:57.420059', '/upload/cover/1685264443807.jpeg', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (2157, '127.0.0.1', '2023-05-28 17:26:57.432718', '/upload/cover/1685264443807.jpeg', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (2158, '127.0.0.1', '2023-05-28 17:26:58.535289', '/upload/cover/1685264771439.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (2159, '127.0.0.1', '2023-05-28 17:26:58.544235', '/upload/cover/1685265162834.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (2160, '127.0.0.1', '2023-05-28 17:26:58.569807', '/upload/cover/1685264800237.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (2161, '127.0.0.1', '2023-05-28 17:27:00.401971', '/myapp/index/thing/list', 'GET', NULL, '93');
INSERT INTO `b_op_log` VALUES (2162, '127.0.0.1', '2023-05-28 17:27:00.936264', '/upload/cover/1685264163148.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (2163, '127.0.0.1', '2023-05-28 17:27:00.949486', '/upload/cover/1685263611250.jpeg', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (2164, '127.0.0.1', '2023-05-28 17:27:00.949486', '/upload/cover/1685264026586.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (2165, '127.0.0.1', '2023-05-28 17:27:00.950623', '/upload/cover/1685263611250.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (2166, '127.0.0.1', '2023-05-28 17:27:00.951628', '/upload/cover/1685263611250.jpeg', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (2167, '127.0.0.1', '2023-05-28 17:27:00.952640', '/upload/cover/1685263611250.jpeg', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (2168, '127.0.0.1', '2023-05-28 17:27:02.027678', '/upload/cover/1685263699773.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (2169, '127.0.0.1', '2023-05-28 17:27:02.140712', '/upload/cover/1685263639285.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (2170, '127.0.0.1', '2023-05-28 17:27:02.266544', '/upload/cover/1685263674742.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (2171, '127.0.0.1', '2023-05-28 17:27:04.196942', '/myapp/index/thing/list', 'GET', NULL, '127');
INSERT INTO `b_op_log` VALUES (2172, '127.0.0.1', '2023-05-28 17:27:06.174569', '/myapp/index/thing/list', 'GET', NULL, '128');
INSERT INTO `b_op_log` VALUES (2173, '127.0.0.1', '2023-05-28 17:27:06.698914', '/upload/cover/1685264586283.jpeg', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (2174, '127.0.0.1', '2023-05-28 17:27:06.699914', '/upload/cover/1685264586283.jpeg', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (2175, '127.0.0.1', '2023-05-28 17:27:06.699914', '/upload/cover/1685264355503.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (2176, '127.0.0.1', '2023-05-28 17:27:06.700720', '/upload/cover/1685264586283.jpeg', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (2177, '127.0.0.1', '2023-05-28 17:27:06.717382', '/upload/cover/1685264586283.jpeg', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (2178, '127.0.0.1', '2023-05-28 17:27:06.719372', '/upload/cover/1685264586283.jpeg', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (2179, '127.0.0.1', '2023-05-28 17:27:07.805016', '/upload/cover/1685264800237.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (2180, '127.0.0.1', '2023-05-28 17:27:07.859416', '/upload/cover/1685265162834.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (2181, '127.0.0.1', '2023-05-28 17:27:07.863416', '/upload/cover/1685264771439.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (2182, '127.0.0.1', '2023-05-28 17:27:10.776535', '/myapp/index/thing/list', 'GET', NULL, '139');
INSERT INTO `b_op_log` VALUES (2183, '127.0.0.1', '2023-05-28 17:27:11.281576', '/upload/cover/1685263997721.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (2184, '127.0.0.1', '2023-05-28 17:27:11.281576', '/upload/cover/1685263997721.jpeg', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (2185, '127.0.0.1', '2023-05-28 17:27:11.281576', '/upload/cover/1685263997721.jpeg', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (2186, '127.0.0.1', '2023-05-28 17:27:11.281576', '/upload/cover/1685263997721.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (2187, '127.0.0.1', '2023-05-28 17:27:11.283221', '/upload/cover/1685263611250.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (2188, '127.0.0.1', '2023-05-28 17:27:11.288646', '/upload/cover/1685264163148.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (2189, '127.0.0.1', '2023-05-28 17:27:12.367777', '/upload/cover/1685263674742.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (2190, '127.0.0.1', '2023-05-28 17:27:12.476382', '/upload/cover/1685263639285.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (2191, '127.0.0.1', '2023-05-28 17:27:12.577697', '/upload/cover/1685263699773.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (2192, '127.0.0.1', '2023-05-28 17:27:25.285404', '/myapp/index/thing/list', 'GET', NULL, '98');
INSERT INTO `b_op_log` VALUES (2193, '127.0.0.1', '2023-05-28 17:27:35.961891', '/myapp/index/thing/list', 'GET', NULL, '88');
INSERT INTO `b_op_log` VALUES (2194, '127.0.0.1', '2023-05-28 17:27:36.508862', '/upload/cover/1685264443807.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (2195, '127.0.0.1', '2023-05-28 17:27:36.508862', '/upload/cover/1685264420316.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (2196, '127.0.0.1', '2023-05-28 17:27:36.510981', '/upload/cover/1685264562903.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (2197, '127.0.0.1', '2023-05-28 17:27:36.513144', '/upload/cover/1685264535734.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (2198, '127.0.0.1', '2023-05-28 17:27:36.515152', '/upload/cover/1685264586283.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (2199, '127.0.0.1', '2023-05-28 17:27:36.516266', '/upload/cover/1685264586283.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (2200, '127.0.0.1', '2023-05-28 17:27:37.652993', '/upload/cover/1685264800237.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (2201, '127.0.0.1', '2023-05-28 17:27:37.668215', '/upload/cover/1685265162834.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (2202, '127.0.0.1', '2023-05-28 17:27:37.686065', '/upload/cover/1685264771439.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (2203, '127.0.0.1', '2023-05-28 17:27:47.422960', '/myapp/index/thing/list', 'GET', NULL, '150');
INSERT INTO `b_op_log` VALUES (2204, '127.0.0.1', '2023-05-28 17:27:48.145989', '/myapp/index/thing/list', 'GET', NULL, '146');
INSERT INTO `b_op_log` VALUES (2205, '127.0.0.1', '2023-05-28 17:27:51.282737', '/myapp/index/thing/list', 'GET', NULL, '133');
INSERT INTO `b_op_log` VALUES (2206, '127.0.0.1', '2023-05-28 17:32:17.942175', '/myapp/admin/classification/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (2207, '127.0.0.1', '2023-05-28 17:32:19.047947', '/myapp/admin/tag/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (2208, '127.0.0.1', '2023-05-28 17:32:19.045937', '/myapp/admin/tag/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (2209, '127.0.0.1', '2023-05-28 17:32:19.174004', '/myapp/admin/tag/list', 'GET', NULL, '135');
INSERT INTO `b_op_log` VALUES (2210, '127.0.0.1', '2023-05-28 17:33:59.952055', '/myapp/admin/user/list', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (2211, '127.0.0.1', '2023-05-28 17:34:16.085870', '/myapp/admin/adminLogin', 'POST', NULL, '59');
INSERT INTO `b_op_log` VALUES (2212, '127.0.0.1', '2023-05-28 17:34:16.259855', '/myapp/admin/tag/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (2213, '127.0.0.1', '2023-05-28 17:34:16.265411', '/myapp/admin/tag/list', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (2214, '127.0.0.1', '2023-05-28 17:34:16.511432', '/myapp/admin/tag/list', 'GET', NULL, '276');
INSERT INTO `b_op_log` VALUES (2215, '127.0.0.1', '2023-05-28 17:34:20.204160', '/myapp/admin/classification/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (2216, '127.0.0.1', '2023-05-28 17:34:20.691453', '/myapp/admin/tag/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (2217, '127.0.0.1', '2023-05-28 17:34:20.695030', '/myapp/admin/tag/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (2218, '127.0.0.1', '2023-05-28 17:34:20.842055', '/myapp/admin/tag/list', 'GET', NULL, '158');
INSERT INTO `b_op_log` VALUES (2219, '127.0.0.1', '2023-05-28 17:34:22.251629', '/upload/cover/1685265162834.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (2220, '127.0.0.1', '2023-05-28 17:34:23.465580', '/myapp/admin/thing/update', 'POST', NULL, '33');
INSERT INTO `b_op_log` VALUES (2221, '127.0.0.1', '2023-05-28 17:34:38.229987', '/myapp/admin/thing/create', 'POST', NULL, '22');
INSERT INTO `b_op_log` VALUES (2222, '127.0.0.1', '2023-05-28 17:34:45.311984', '/myapp/admin/thing/delete', 'POST', NULL, '29');
INSERT INTO `b_op_log` VALUES (2223, '127.0.0.1', '2023-05-28 17:34:46.942228', '/myapp/admin/classification/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (2224, '127.0.0.1', '2023-05-28 17:34:48.029991', '/myapp/admin/tag/list', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (2225, '127.0.0.1', '2023-05-28 17:34:49.300177', '/myapp/admin/comment/list', 'GET', NULL, '59');
INSERT INTO `b_op_log` VALUES (2226, '127.0.0.1', '2023-05-28 17:34:50.341315', '/myapp/admin/user/list', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (2227, '127.0.0.1', '2023-05-28 17:34:52.800626', '/myapp/admin/tag/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (2228, '127.0.0.1', '2023-05-28 17:34:52.802653', '/myapp/admin/tag/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (2229, '127.0.0.1', '2023-05-28 17:34:52.996929', '/myapp/admin/tag/list', 'GET', NULL, '199');
INSERT INTO `b_op_log` VALUES (2230, '127.0.0.1', '2023-05-28 17:34:54.316998', '/myapp/admin/overview/count', 'GET', NULL, '51');
INSERT INTO `b_op_log` VALUES (2231, '127.0.0.1', '2023-05-28 17:35:01.168268', '/myapp/admin/overview/sysInfo', 'GET', NULL, '1077');
INSERT INTO `b_op_log` VALUES (2232, '127.0.0.1', '2023-05-28 17:35:06.792040', '/myapp/admin/tag/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (2233, '127.0.0.1', '2023-05-28 17:35:06.819688', '/myapp/admin/tag/list', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (2234, '127.0.0.1', '2023-05-28 17:35:07.038240', '/myapp/admin/tag/list', 'GET', NULL, '252');
INSERT INTO `b_op_log` VALUES (2235, '127.0.0.1', '2023-05-28 17:35:14.183497', '/myapp/admin/classification/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (2236, '127.0.0.1', '2023-05-28 17:35:16.055790', '/myapp/admin/tag/list', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (2237, '127.0.0.1', '2023-05-28 17:35:17.999440', '/myapp/admin/classification/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (2238, '127.0.0.1', '2023-05-28 17:35:18.702884', '/myapp/admin/tag/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (2239, '127.0.0.1', '2023-05-28 17:35:20.145249', '/myapp/admin/classification/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (2240, '127.0.0.1', '2023-05-28 17:35:20.850242', '/myapp/admin/tag/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (2241, '127.0.0.1', '2023-05-28 17:35:21.867269', '/myapp/admin/comment/list', 'GET', NULL, '55');
INSERT INTO `b_op_log` VALUES (2242, '127.0.0.1', '2023-05-28 17:35:22.461072', '/myapp/admin/tag/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (2243, '127.0.0.1', '2023-05-28 17:35:23.299016', '/myapp/admin/classification/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (2244, '127.0.0.1', '2023-05-28 17:35:24.001067', '/myapp/admin/tag/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (2245, '127.0.0.1', '2023-05-28 17:35:24.863165', '/myapp/admin/tag/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (2246, '127.0.0.1', '2023-05-28 17:35:24.866408', '/myapp/admin/tag/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (2247, '127.0.0.1', '2023-05-28 17:35:25.095169', '/myapp/admin/tag/list', 'GET', NULL, '237');
INSERT INTO `b_op_log` VALUES (2248, '127.0.0.1', '2023-05-28 17:35:25.371564', '/myapp/admin/classification/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (2249, '127.0.0.1', '2023-05-28 17:35:26.117513', '/myapp/admin/tag/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (2250, '127.0.0.1', '2023-05-28 17:35:26.128234', '/myapp/admin/tag/list', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (2251, '127.0.0.1', '2023-05-28 17:35:26.330373', '/myapp/admin/tag/list', 'GET', NULL, '230');
INSERT INTO `b_op_log` VALUES (2252, '127.0.0.1', '2023-05-28 17:35:31.470607', '/myapp/admin/classification/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (2253, '127.0.0.1', '2023-05-28 17:35:48.661477', '/myapp/admin/classification/delete', 'POST', NULL, '18');
INSERT INTO `b_op_log` VALUES (2254, '127.0.0.1', '2023-05-28 17:35:53.545790', '/myapp/admin/tag/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (2255, '127.0.0.1', '2023-05-28 17:35:55.888085', '/myapp/admin/tag/delete', 'POST', NULL, '28');
INSERT INTO `b_op_log` VALUES (2256, '127.0.0.1', '2023-05-28 17:35:57.727414', '/myapp/admin/comment/list', 'GET', NULL, '55');
INSERT INTO `b_op_log` VALUES (2257, '127.0.0.1', '2023-05-28 17:36:01.599908', '/myapp/admin/comment/delete', 'POST', NULL, '24');
INSERT INTO `b_op_log` VALUES (2258, '127.0.0.1', '2023-05-28 17:36:22.076582', '/myapp/admin/user/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (2259, '127.0.0.1', '2023-05-28 17:36:39.925655', '/myapp/admin/user/create', 'POST', NULL, '30');
INSERT INTO `b_op_log` VALUES (2260, '127.0.0.1', '2023-05-28 17:36:44.494457', '/myapp/admin/overview/count', 'GET', NULL, '58');
INSERT INTO `b_op_log` VALUES (2261, '127.0.0.1', '2023-05-28 17:36:48.372468', '/myapp/admin/tag/list', 'GET', NULL, '37');
INSERT INTO `b_op_log` VALUES (2262, '127.0.0.1', '2023-05-28 17:36:48.373468', '/myapp/admin/tag/list', 'GET', NULL, '37');
INSERT INTO `b_op_log` VALUES (2263, '127.0.0.1', '2023-05-28 17:36:48.565523', '/myapp/admin/tag/list', 'GET', NULL, '230');
INSERT INTO `b_op_log` VALUES (2264, '127.0.0.1', '2023-05-28 17:37:33.756461', '/myapp/admin/adminLogin', 'POST', NULL, '50');
INSERT INTO `b_op_log` VALUES (2265, '127.0.0.1', '2023-05-28 17:37:33.903764', '/myapp/admin/tag/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (2266, '127.0.0.1', '2023-05-28 17:37:33.906110', '/myapp/admin/tag/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (2267, '127.0.0.1', '2023-05-28 17:37:34.111493', '/myapp/admin/tag/list', 'GET', NULL, '213');
INSERT INTO `b_op_log` VALUES (2268, '127.0.0.1', '2023-05-28 17:37:44.643971', '/myapp/admin/classification/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (2269, '127.0.0.1', '2023-05-28 17:37:45.537738', '/myapp/admin/tag/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (2270, '127.0.0.1', '2023-05-28 17:37:45.555905', '/myapp/admin/tag/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (2271, '127.0.0.1', '2023-05-28 17:37:45.683345', '/myapp/admin/tag/list', 'GET', NULL, '151');
INSERT INTO `b_op_log` VALUES (2272, '127.0.0.1', '2023-05-28 17:38:25.990097', '/myapp/admin/classification/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (2273, '127.0.0.1', '2023-05-28 17:38:27.114931', '/myapp/admin/tag/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (2274, '127.0.0.1', '2023-05-28 17:38:28.377909', '/myapp/admin/tag/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (2275, '127.0.0.1', '2023-05-28 17:38:28.382911', '/myapp/admin/tag/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (2276, '127.0.0.1', '2023-05-28 17:38:28.634956', '/myapp/admin/tag/list', 'GET', NULL, '265');
INSERT INTO `b_op_log` VALUES (2277, '127.0.0.1', '2023-05-28 17:38:58.466851', '/myapp/index/thing/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (2278, '127.0.0.1', '2023-05-28 17:38:58.470913', '/myapp/index/thing/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (2279, '127.0.0.1', '2023-05-28 17:38:58.473734', '/myapp/index/thing/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (2280, '127.0.0.1', '2023-05-28 17:38:58.571320', '/myapp/index/thing/list', 'GET', NULL, '109');
INSERT INTO `b_op_log` VALUES (2281, '127.0.0.1', '2023-05-28 17:38:58.615446', '/upload/cover/1685265162834.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (2282, '127.0.0.1', '2023-05-28 17:38:58.640824', '/upload/cover/1685264830789.jpeg', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (2283, '127.0.0.1', '2023-05-28 17:38:58.640824', '/upload/cover/1685264830789.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (2284, '127.0.0.1', '2023-05-28 17:38:58.646830', '/upload/cover/1685264800237.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (2285, '127.0.0.1', '2023-05-28 17:38:58.651831', '/upload/cover/1685264586283.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (2286, '127.0.0.1', '2023-05-28 17:38:58.654841', '/upload/cover/1685264586283.jpeg', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (2287, '127.0.0.1', '2023-05-28 17:38:58.660837', '/upload/cover/1685264562903.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (2288, '127.0.0.1', '2023-05-28 17:38:58.673055', '/upload/cover/1685264535734.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (2289, '127.0.0.1', '2023-05-28 17:38:58.701178', '/upload/cover/1685264443807.jpeg', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (2290, '127.0.0.1', '2023-05-28 17:38:58.703243', '/upload/cover/1685264420316.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (2291, '127.0.0.1', '2023-05-28 17:38:58.705365', '/upload/cover/1685264355503.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (2292, '127.0.0.1', '2023-05-28 17:38:58.706374', '/upload/cover/1685264295265.jpeg', 'GET', NULL, '1');

-- ----------------------------
-- Table structure for b_record
-- ----------------------------
DROP TABLE IF EXISTS `b_record`;
CREATE TABLE `b_record`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `record_time` datetime(6) NULL DEFAULT NULL,
  `classification_id` bigint(20) NULL DEFAULT NULL,
  `thing_id` bigint(20) NULL DEFAULT NULL,
  `user_id` bigint(20) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `b_record_classification_id_52591cc9_fk_b_classification_id`(`classification_id`) USING BTREE,
  INDEX `b_record_thing_id_d8e773c0_fk_b_thing_id`(`thing_id`) USING BTREE,
  INDEX `b_record_user_id_7e5958b0_fk_b_user_id`(`user_id`) USING BTREE,
  CONSTRAINT `b_record_classification_id_52591cc9_fk_b_classification_id` FOREIGN KEY (`classification_id`) REFERENCES `b_classification` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `b_record_thing_id_d8e773c0_fk_b_thing_id` FOREIGN KEY (`thing_id`) REFERENCES `b_thing` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `b_record_user_id_7e5958b0_fk_b_user_id` FOREIGN KEY (`user_id`) REFERENCES `b_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_record
-- ----------------------------

-- ----------------------------
-- Table structure for b_tag
-- ----------------------------
DROP TABLE IF EXISTS `b_tag`;
CREATE TABLE `b_tag`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime(6) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_tag
-- ----------------------------
INSERT INTO `b_tag` VALUES (2, '乒乓球', '2023-05-27 14:32:40.845517');
INSERT INTO `b_tag` VALUES (3, '篮球', '2023-05-27 14:32:47.117504');
INSERT INTO `b_tag` VALUES (4, '烧烤', '2023-05-28 16:31:56.994168');
INSERT INTO `b_tag` VALUES (5, '直播带货', '2023-05-28 16:32:05.615108');
INSERT INTO `b_tag` VALUES (6, '青岛', '2023-05-28 16:32:14.975561');
INSERT INTO `b_tag` VALUES (7, '特斯拉', '2023-05-28 16:32:32.301971');
INSERT INTO `b_tag` VALUES (8, '梅西', '2023-05-28 16:32:38.140237');
INSERT INTO `b_tag` VALUES (9, '哈登', '2023-05-28 16:32:47.838861');
INSERT INTO `b_tag` VALUES (10, '水浒传', '2023-05-28 16:33:17.896233');

-- ----------------------------
-- Table structure for b_thing
-- ----------------------------
DROP TABLE IF EXISTS `b_thing`;
CREATE TABLE `b_thing`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `cover` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `status` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `create_time` datetime(6) NULL DEFAULT NULL,
  `pv` int(11) NOT NULL,
  `recommend_count` int(11) NOT NULL,
  `wish_count` int(11) NOT NULL,
  `collect_count` int(11) NOT NULL,
  `classification_id` bigint(20) NULL DEFAULT NULL,
  `raw` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `b_thing_classification_id_47675ac4_fk_b_classification_id`(`classification_id`) USING BTREE,
  CONSTRAINT `b_thing_classification_id_47675ac4_fk_b_classification_id` FOREIGN KEY (`classification_id`) REFERENCES `b_classification` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 32 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_thing
-- ----------------------------
INSERT INTO `b_thing` VALUES (2, '当今世界尖端科技', 'cover/1685263699773.jpeg', '视频点播是集音视频上传、自动化转码处理、媒体资源管理、分发加速于一体的全链路音视频点播服务。借助灵活、可伸缩的存储、处理及内容分发服务，帮助企业和开发者快速搭建安全、弹性、高可定制的点播平台和应用，提供端到端的完整解决方案', '0', '2023-05-27 14:18:43.405289', 10, 0, 0, 0, 7, 'raw/1685263702574.mp4');
INSERT INTO `b_thing` VALUES (3, '马斯克科技视频', 'cover/1685263674742.jpeg', '视频点播是集音视频上传、自动化转码处理、媒体资源管理、分发加速于一体的全链路音视频点播服务。借助灵活、可伸缩的存储、处理及内容分发服务，帮助企业和开发者快速搭建安全、弹性、高可定制的点播平台和应用，提供端到端的完整解决方案', '0', '2023-05-27 15:03:22.007917', 12, 0, 1, 1, 7, 'raw/1685263677974.mp4');
INSERT INTO `b_thing` VALUES (6, '科技视频2', 'cover/1685263639285.jpeg', '视频点播是集音视频上传、自动化转码处理、媒体资源管理、分发加速于一体的全链路音视频点播服务。借助灵活、可伸缩的存储、处理及内容分发服务，帮助企业和开发者快速搭建安全、弹性、高可定制的点播平台和应用，提供端到端的完整解决方案', '0', '2023-05-27 15:28:17.122001', 30, 0, 0, 0, 7, 'raw/1685263642109.mp4');
INSERT INTO `b_thing` VALUES (7, '科技馆儿童乐园', 'cover/1685263611250.jpeg', '视频点播是集音视频上传、自动化转码处理、媒体资源管理、分发加速于一体的全链路音视频点播服务。借助灵活、可伸缩的存储、处理及内容分发服务，帮助企业和开发者快速搭建安全、弹性、高可定制的点播平台和应用，提供端到端的完整解决方案', '0', '2023-05-27 15:30:48.553394', 10, 0, 1, 1, 7, 'raw/1685263615875.mp4');
INSERT INTO `b_thing` VALUES (12, '梅西的真正实力', 'cover/1685263937295.jpeg', '国际足联的第一任主席法国人罗贝尔·盖兰，第一次向各国足坛领导人提出了这种想法，并责成其秘书长荷兰人希尔施曼为此起草一份文件。', '0', '2023-05-28 16:52:59.178036', 10, 0, 0, 0, 2, 'raw/1685263939638.mp4');
INSERT INTO `b_thing` VALUES (13, '梅西与c罗谁更厉害', 'cover/1685263997721.jpeg', '国际足联的第一任主席法国人罗贝尔·盖兰，第一次向各国足坛领导人提出了这种想法，并责成其秘书长荷兰人希尔施曼为此起草一份文件。', '0', '2023-05-28 16:53:25.182051', 10, 0, 0, 0, 2, 'raw/1685264000357.mp4');
INSERT INTO `b_thing` VALUES (14, '梅西与姆巴佩的比赛', 'cover/1685264026586.jpeg', '国际足联的第一任主席法国人罗贝尔·盖兰，第一次向各国足坛领导人提出了这种想法，并责成其秘书长荷兰人希尔施曼为此起草一份文件。', '0', '2023-05-28 16:53:53.393385', 10, 0, 0, 0, 2, 'raw/1685264028939.mp4');
INSERT INTO `b_thing` VALUES (15, '我国的文化历史', 'cover/1685264114074.jpeg', '国际足联的第一任主席法国人罗贝尔·盖兰，第一次向各国足坛领导人提出了这种想法，并责成其秘书长荷兰人希尔施曼为此起草一份文件。', '0', '2023-05-28 16:55:20.650314', 10, 0, 0, 0, 6, 'raw/1685264116148.mp4');
INSERT INTO `b_thing` VALUES (16, '文化视频333', 'cover/1685264135851.jpeg', '国际足联的第一任主席法国人罗贝尔·盖兰，第一次向各国足坛领导人提出了这种想法，并责成其秘书长荷兰人希尔施曼为此起草一份文件。', '0', '2023-05-28 16:55:42.450788', 0, 0, 0, 0, 6, 'raw/1685264138357.mp4');
INSERT INTO `b_thing` VALUES (17, '东方文化的美丽', 'cover/1685264163148.jpeg', '国际足联的第一任主席法国人罗贝尔·盖兰，第一次向各国足坛领导人提出了这种想法，并责成其秘书长荷兰人希尔施曼为此起草一份文件。', '0', '2023-05-28 16:56:10.561605', 10, 0, 0, 0, 6, 'raw/1685264165994.mp4');
INSERT INTO `b_thing` VALUES (18, '全球c919飞机', 'cover/1685264250423.jpeg', '中国东方航空使用中国商飞交付的全球首架C919大型客机，执行MU9191航班，从上海虹桥机场顺利起飞，到达地为北京首都机场', '0', '2023-05-28 16:57:36.154306', 0, 0, 0, 0, 5, 'raw/1685264252420.mp4');
INSERT INTO `b_thing` VALUES (19, '飞机的动力来源', 'cover/1685264270509.jpeg', '中国东方航空使用中国商飞交付的全球首架C919大型客机，执行MU9191航班，从上海虹桥机场顺利起飞，到达地为北京首都机场', '0', '2023-05-28 16:57:56.679722', 0, 0, 0, 0, 5, 'raw/1685264272561.mp4');
INSERT INTO `b_thing` VALUES (20, '飞机的高度', 'cover/1685264295265.jpeg', '中国东方航空使用中国商飞交付的全球首架C919大型客机，执行MU9191航班，从上海虹桥机场顺利起飞，到达地为北京首都机场', '0', '2023-05-28 16:58:21.201226', 10, 0, 0, 0, 5, 'raw/1685264297107.mp4');
INSERT INTO `b_thing` VALUES (21, '青岛旅游的收入', 'cover/1685264355503.jpeg', '全域旅游是旅游发展的新形式、新概念和新模式，也是世界旅游发展的共同规律和总趋势，代表了现代旅游发展的新方向。加快发展全域旅游对我市推进经济发展方式转变，实现转型跨越发展具有重要意义。', '0', '2023-05-28 17:00:00.872845', 0, 0, 0, 0, 4, 'raw/1685264357892.mp4');
INSERT INTO `b_thing` VALUES (22, '济南旅游的美丽', 'cover/1685264420316.jpeg', '全域旅游是旅游发展的新形式、新概念和新模式，也是世界旅游发展的共同规律和总趋势，代表了现代旅游发展的新方向。加快发展全域旅游对我市推进经济发展方式转变，实现转型跨越发展具有重要意义。', '0', '2023-05-28 17:00:25.263893', 0, 0, 0, 0, 4, 'raw/1685264422145.mp4');
INSERT INTO `b_thing` VALUES (23, '出国旅游大热', 'cover/1685264443807.jpeg', '全域旅游是旅游发展的新形式、新概念和新模式，也是世界旅游发展的共同规律和总趋势，代表了现代旅游发展的新方向。加快发展全域旅游对我市推进经济发展方式转变，实现转型跨越发展具有重要意义。', '0', '2023-05-28 17:00:50.440395', 10, 0, 0, 0, 4, 'raw/1685264445705.mp4');
INSERT INTO `b_thing` VALUES (24, '财经学习的步骤', 'cover/1685264535734.jpeg', '私募行业19年,拥有海量数据及实力投研团队,为投资者解决私募投资痛点提供基金净值/基金排名/投资路演/理财资讯/投教学堂等全方位服务', '0', '2023-05-28 17:02:22.365877', 0, 0, 0, 0, 3, 'raw/1685264537455.mp4');
INSERT INTO `b_thing` VALUES (25, '股票财经学习动力', 'cover/1685264562903.jpeg', '私募行业19年,拥有海量数据及实力投研团队,为投资者解决私募投资痛点提供基金净值/基金排名/投资路演/理财资讯/投教学堂等全方位服务', '0', '2023-05-28 17:02:49.389628', 10, 0, 0, 0, 3, 'raw/1685264564960.mp4');
INSERT INTO `b_thing` VALUES (26, '香港股市明年趋势', 'cover/1685264586283.jpeg', '私募行业19年,拥有海量数据及实力投研团队,为投资者解决私募投资痛点提供基金净值/基金排名/投资路演/理财资讯/投教学堂等全方位服务', '0', '2023-05-28 17:03:21.114740', 0, 0, 0, 0, 3, 'raw/1685264588113.mp4');
INSERT INTO `b_thing` VALUES (27, '东方美女的特点', 'cover/1685264771439.jpeg', '最近斩获金马影后的周冬雨，五官长相虽然不是我们传统意义上的标准美女，但是她除了五官比例和谐之外，最突出的优点就是面部表情', '0', '2023-05-28 17:06:24.862521', 10, 0, 0, 0, 1, 'raw/1685264773310.mp4');
INSERT INTO `b_thing` VALUES (28, '东方美女韩国美女', 'cover/1685264800237.jpeg', '最近斩获金马影后的周冬雨，五官长相虽然不是我们传统意义上的标准美女，但是她除了五官比例和谐之外，最突出的优点就是面部表情', '0', '2023-05-28 17:06:46.189997', 0, 0, 0, 0, 1, 'raw/1685264802013.mp4');
INSERT INTO `b_thing` VALUES (29, '上海与香港美女比较', 'cover/1685264830789.jpeg', '最近斩获金马影后的周冬雨，五官长相虽然不是我们传统意义上的标准美女，但是她除了五官比例和谐之外，最突出的优点就是面部表情', '0', '2023-05-28 17:07:17.519961', 25, 0, 1, 1, 1, 'raw/1685264833173.mp4');
INSERT INTO `b_thing` VALUES (30, '美国股市上涨', 'cover/1685264878356.jpeg', '最近美国股市再次上涨，尤其是互联网公司为代表的龙头企业。', '0', '2023-05-28 17:08:27.646584', 22, 0, 0, 0, 7, 'raw/1685264881003.mp4');
INSERT INTO `b_thing` VALUES (31, '皮肤白皙的美女', 'cover/1685265162834.jpeg', '美女与美女的区别的什么，就是哈哈哈哈哈哈来自我们的测试软件。', '0', '2023-05-28 17:13:05.359145', 4, 0, 1, 1, 1, 'raw/1685265165260.mp4');

-- ----------------------------
-- Table structure for b_thing_collect
-- ----------------------------
DROP TABLE IF EXISTS `b_thing_collect`;
CREATE TABLE `b_thing_collect`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `thing_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `b_thing_collect_thing_id_user_id_45b9f252_uniq`(`thing_id`, `user_id`) USING BTREE,
  INDEX `b_thing_collect_user_id_e5d69968_fk_b_user_id`(`user_id`) USING BTREE,
  CONSTRAINT `b_thing_collect_thing_id_8edce8b3_fk_b_thing_id` FOREIGN KEY (`thing_id`) REFERENCES `b_thing` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `b_thing_collect_user_id_e5d69968_fk_b_user_id` FOREIGN KEY (`user_id`) REFERENCES `b_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_thing_collect
-- ----------------------------
INSERT INTO `b_thing_collect` VALUES (1, 3, 3);
INSERT INTO `b_thing_collect` VALUES (2, 7, 3);
INSERT INTO `b_thing_collect` VALUES (3, 29, 5);
INSERT INTO `b_thing_collect` VALUES (4, 31, 5);

-- ----------------------------
-- Table structure for b_thing_tag
-- ----------------------------
DROP TABLE IF EXISTS `b_thing_tag`;
CREATE TABLE `b_thing_tag`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `thing_id` bigint(20) NOT NULL,
  `tag_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `b_thing_tag_thing_id_tag_id_a5d426b2_uniq`(`thing_id`, `tag_id`) USING BTREE,
  INDEX `b_thing_tag_tag_id_d02b28a1_fk_b_tag_id`(`tag_id`) USING BTREE,
  CONSTRAINT `b_thing_tag_tag_id_d02b28a1_fk_b_tag_id` FOREIGN KEY (`tag_id`) REFERENCES `b_tag` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `b_thing_tag_thing_id_fb8ecf3f_fk_b_thing_id` FOREIGN KEY (`thing_id`) REFERENCES `b_thing` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 71 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_thing_tag
-- ----------------------------
INSERT INTO `b_thing_tag` VALUES (1, 2, 3);
INSERT INTO `b_thing_tag` VALUES (12, 2, 4);
INSERT INTO `b_thing_tag` VALUES (13, 2, 5);
INSERT INTO `b_thing_tag` VALUES (2, 3, 3);
INSERT INTO `b_thing_tag` VALUES (10, 3, 6);
INSERT INTO `b_thing_tag` VALUES (11, 3, 7);
INSERT INTO `b_thing_tag` VALUES (9, 6, 7);
INSERT INTO `b_thing_tag` VALUES (7, 6, 8);
INSERT INTO `b_thing_tag` VALUES (8, 6, 9);
INSERT INTO `b_thing_tag` VALUES (6, 7, 6);
INSERT INTO `b_thing_tag` VALUES (4, 7, 8);
INSERT INTO `b_thing_tag` VALUES (5, 7, 10);
INSERT INTO `b_thing_tag` VALUES (16, 12, 7);
INSERT INTO `b_thing_tag` VALUES (14, 12, 8);
INSERT INTO `b_thing_tag` VALUES (15, 12, 9);
INSERT INTO `b_thing_tag` VALUES (17, 13, 2);
INSERT INTO `b_thing_tag` VALUES (18, 13, 3);
INSERT INTO `b_thing_tag` VALUES (19, 13, 4);
INSERT INTO `b_thing_tag` VALUES (20, 14, 4);
INSERT INTO `b_thing_tag` VALUES (21, 14, 6);
INSERT INTO `b_thing_tag` VALUES (22, 14, 7);
INSERT INTO `b_thing_tag` VALUES (24, 15, 6);
INSERT INTO `b_thing_tag` VALUES (66, 15, 10);
INSERT INTO `b_thing_tag` VALUES (26, 16, 3);
INSERT INTO `b_thing_tag` VALUES (27, 16, 4);
INSERT INTO `b_thing_tag` VALUES (28, 16, 5);
INSERT INTO `b_thing_tag` VALUES (30, 17, 3);
INSERT INTO `b_thing_tag` VALUES (31, 17, 4);
INSERT INTO `b_thing_tag` VALUES (29, 17, 8);
INSERT INTO `b_thing_tag` VALUES (32, 18, 5);
INSERT INTO `b_thing_tag` VALUES (33, 18, 7);
INSERT INTO `b_thing_tag` VALUES (34, 19, 3);
INSERT INTO `b_thing_tag` VALUES (35, 19, 4);
INSERT INTO `b_thing_tag` VALUES (36, 19, 5);
INSERT INTO `b_thing_tag` VALUES (37, 20, 3);
INSERT INTO `b_thing_tag` VALUES (38, 20, 6);
INSERT INTO `b_thing_tag` VALUES (39, 20, 7);
INSERT INTO `b_thing_tag` VALUES (41, 21, 6);
INSERT INTO `b_thing_tag` VALUES (42, 21, 7);
INSERT INTO `b_thing_tag` VALUES (40, 21, 8);
INSERT INTO `b_thing_tag` VALUES (43, 22, 2);
INSERT INTO `b_thing_tag` VALUES (44, 22, 4);
INSERT INTO `b_thing_tag` VALUES (45, 22, 7);
INSERT INTO `b_thing_tag` VALUES (47, 23, 4);
INSERT INTO `b_thing_tag` VALUES (48, 23, 6);
INSERT INTO `b_thing_tag` VALUES (46, 23, 8);
INSERT INTO `b_thing_tag` VALUES (50, 24, 5);
INSERT INTO `b_thing_tag` VALUES (51, 24, 6);
INSERT INTO `b_thing_tag` VALUES (49, 24, 8);
INSERT INTO `b_thing_tag` VALUES (53, 25, 5);
INSERT INTO `b_thing_tag` VALUES (54, 25, 7);
INSERT INTO `b_thing_tag` VALUES (52, 25, 8);
INSERT INTO `b_thing_tag` VALUES (55, 26, 5);
INSERT INTO `b_thing_tag` VALUES (56, 26, 7);
INSERT INTO `b_thing_tag` VALUES (57, 27, 4);
INSERT INTO `b_thing_tag` VALUES (58, 27, 6);
INSERT INTO `b_thing_tag` VALUES (59, 28, 5);
INSERT INTO `b_thing_tag` VALUES (60, 28, 7);
INSERT INTO `b_thing_tag` VALUES (61, 29, 3);
INSERT INTO `b_thing_tag` VALUES (62, 29, 4);
INSERT INTO `b_thing_tag` VALUES (63, 29, 7);
INSERT INTO `b_thing_tag` VALUES (65, 30, 6);
INSERT INTO `b_thing_tag` VALUES (64, 30, 8);
INSERT INTO `b_thing_tag` VALUES (69, 31, 5);
INSERT INTO `b_thing_tag` VALUES (70, 31, 6);
INSERT INTO `b_thing_tag` VALUES (67, 31, 8);
INSERT INTO `b_thing_tag` VALUES (68, 31, 9);

-- ----------------------------
-- Table structure for b_thing_wish
-- ----------------------------
DROP TABLE IF EXISTS `b_thing_wish`;
CREATE TABLE `b_thing_wish`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `thing_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `b_thing_wish_thing_id_user_id_9d647bbb_uniq`(`thing_id`, `user_id`) USING BTREE,
  INDEX `b_thing_wish_user_id_e2d94f6c_fk_b_user_id`(`user_id`) USING BTREE,
  CONSTRAINT `b_thing_wish_thing_id_f0864b16_fk_b_thing_id` FOREIGN KEY (`thing_id`) REFERENCES `b_thing` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `b_thing_wish_user_id_e2d94f6c_fk_b_user_id` FOREIGN KEY (`user_id`) REFERENCES `b_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_thing_wish
-- ----------------------------
INSERT INTO `b_thing_wish` VALUES (3, 3, 3);
INSERT INTO `b_thing_wish` VALUES (2, 7, 3);
INSERT INTO `b_thing_wish` VALUES (4, 29, 5);
INSERT INTO `b_thing_wish` VALUES (5, 31, 5);

-- ----------------------------
-- Table structure for b_user
-- ----------------------------
DROP TABLE IF EXISTS `b_user`;
CREATE TABLE `b_user`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `password` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `role` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `status` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `nickname` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `avatar` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `mobile` varchar(13) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `gender` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `create_time` datetime(6) NULL DEFAULT NULL,
  `score` int(11) NULL DEFAULT NULL,
  `push_email` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `push_switch` tinyint(1) NULL DEFAULT NULL,
  `admin_token` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `token` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_user
-- ----------------------------
INSERT INTO `b_user` VALUES (1, 'admin', '78aafd3207ec4ef6d16f9fc07e95ebc3', '1', '0', NULL, '', NULL, NULL, NULL, NULL, '2023-05-27 14:30:41.745931', 0, NULL, 0, NULL, NULL);
INSERT INTO `b_user` VALUES (2, 'admin111', 'bbad8d72c1fac1d081727158807a8798', '1', '0', NULL, '', NULL, NULL, NULL, NULL, '2023-05-27 14:31:00.453475', 0, NULL, 0, 'bbad8d72c1fac1d081727158807a8798', NULL);
INSERT INTO `b_user` VALUES (3, 'test', '098f6bcd4621d373cade4e832627b4f6', '2', '0', 'ddd', '', 'fff', 'ddd22', NULL, '23rfgggggg', '2023-05-27 14:31:20.609195', 0, NULL, 0, NULL, '098f6bcd4621d373cade4e832627b4f6');
INSERT INTO `b_user` VALUES (4, 'admin123', '0192023a7bbd73250516f069df18b500', '3', '0', NULL, '', NULL, NULL, NULL, NULL, '2023-05-27 14:31:40.092187', 0, NULL, 0, '0192023a7bbd73250516f069df18b500', NULL);
INSERT INTO `b_user` VALUES (5, 'testa', '7a68f09bd992671bb3b19a5e70b7827e', '2', '0', NULL, '', NULL, NULL, NULL, NULL, '2023-05-28 16:07:00.957872', 10, NULL, 0, NULL, '7a68f09bd992671bb3b19a5e70b7827e');

-- ----------------------------
-- Table structure for django_admin_log
-- ----------------------------
DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE `django_admin_log`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `object_repr` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `content_type_id` int(11) NULL DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `django_admin_log_content_type_id_c4bce8eb_fk_django_co`(`content_type_id`) USING BTREE,
  INDEX `django_admin_log_user_id_c564eba6_fk_auth_user_id`(`user_id`) USING BTREE,
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_admin_log
-- ----------------------------

-- ----------------------------
-- Table structure for django_content_type
-- ----------------------------
DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE `django_content_type`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `model` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `django_content_type_app_label_model_76bd3d3b_uniq`(`app_label`, `model`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 22 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_content_type
-- ----------------------------
INSERT INTO `django_content_type` VALUES (1, 'admin', 'logentry');
INSERT INTO `django_content_type` VALUES (3, 'auth', 'group');
INSERT INTO `django_content_type` VALUES (2, 'auth', 'permission');
INSERT INTO `django_content_type` VALUES (4, 'auth', 'user');
INSERT INTO `django_content_type` VALUES (5, 'contenttypes', 'contenttype');
INSERT INTO `django_content_type` VALUES (19, 'myapp', 'ad');
INSERT INTO `django_content_type` VALUES (21, 'myapp', 'address');
INSERT INTO `django_content_type` VALUES (18, 'myapp', 'banner');
INSERT INTO `django_content_type` VALUES (9, 'myapp', 'classification');
INSERT INTO `django_content_type` VALUES (11, 'myapp', 'comment');
INSERT INTO `django_content_type` VALUES (15, 'myapp', 'errorlog');
INSERT INTO `django_content_type` VALUES (13, 'myapp', 'loginlog');
INSERT INTO `django_content_type` VALUES (20, 'myapp', 'notice');
INSERT INTO `django_content_type` VALUES (14, 'myapp', 'oplog');
INSERT INTO `django_content_type` VALUES (16, 'myapp', 'order');
INSERT INTO `django_content_type` VALUES (17, 'myapp', 'orderlog');
INSERT INTO `django_content_type` VALUES (12, 'myapp', 'record');
INSERT INTO `django_content_type` VALUES (8, 'myapp', 'tag');
INSERT INTO `django_content_type` VALUES (10, 'myapp', 'thing');
INSERT INTO `django_content_type` VALUES (7, 'myapp', 'user');
INSERT INTO `django_content_type` VALUES (6, 'sessions', 'session');

-- ----------------------------
-- Table structure for django_migrations
-- ----------------------------
DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE `django_migrations`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 23 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_migrations
-- ----------------------------
INSERT INTO `django_migrations` VALUES (1, 'contenttypes', '0001_initial', '2023-05-26 22:43:47.103398');
INSERT INTO `django_migrations` VALUES (2, 'auth', '0001_initial', '2023-05-26 22:43:47.416139');
INSERT INTO `django_migrations` VALUES (3, 'admin', '0001_initial', '2023-05-26 22:43:47.480589');
INSERT INTO `django_migrations` VALUES (4, 'admin', '0002_logentry_remove_auto_add', '2023-05-26 22:43:47.488415');
INSERT INTO `django_migrations` VALUES (5, 'admin', '0003_logentry_add_action_flag_choices', '2023-05-26 22:43:47.495027');
INSERT INTO `django_migrations` VALUES (6, 'contenttypes', '0002_remove_content_type_name', '2023-05-26 22:43:47.571848');
INSERT INTO `django_migrations` VALUES (7, 'auth', '0002_alter_permission_name_max_length', '2023-05-26 22:43:47.619807');
INSERT INTO `django_migrations` VALUES (8, 'auth', '0003_alter_user_email_max_length', '2023-05-26 22:43:47.672516');
INSERT INTO `django_migrations` VALUES (9, 'auth', '0004_alter_user_username_opts', '2023-05-26 22:43:47.680223');
INSERT INTO `django_migrations` VALUES (10, 'auth', '0005_alter_user_last_login_null', '2023-05-26 22:43:47.722393');
INSERT INTO `django_migrations` VALUES (11, 'auth', '0006_require_contenttypes_0002', '2023-05-26 22:43:47.727287');
INSERT INTO `django_migrations` VALUES (12, 'auth', '0007_alter_validators_add_error_messages', '2023-05-26 22:43:47.735354');
INSERT INTO `django_migrations` VALUES (13, 'auth', '0008_alter_user_username_max_length', '2023-05-26 22:43:47.782447');
INSERT INTO `django_migrations` VALUES (14, 'auth', '0009_alter_user_last_name_max_length', '2023-05-26 22:43:47.834180');
INSERT INTO `django_migrations` VALUES (15, 'auth', '0010_alter_group_name_max_length', '2023-05-26 22:43:47.882997');
INSERT INTO `django_migrations` VALUES (16, 'auth', '0011_update_proxy_permissions', '2023-05-26 22:43:47.897340');
INSERT INTO `django_migrations` VALUES (17, 'auth', '0012_alter_user_first_name_max_length', '2023-05-26 22:43:47.942230');
INSERT INTO `django_migrations` VALUES (18, 'sessions', '0001_initial', '2023-05-26 22:43:47.986671');
INSERT INTO `django_migrations` VALUES (19, 'myapp', '0001_initial', '2023-05-26 22:44:22.682559');
INSERT INTO `django_migrations` VALUES (20, 'myapp', '0002_auto_20230526_2255', '2023-05-26 22:55:29.870726');
INSERT INTO `django_migrations` VALUES (21, 'myapp', '0003_auto_20230527_1411', '2023-05-27 14:11:58.125099');
INSERT INTO `django_migrations` VALUES (22, 'myapp', '0004_thing_raw', '2023-05-27 14:57:22.783788');

-- ----------------------------
-- Table structure for django_session
-- ----------------------------
DROP TABLE IF EXISTS `django_session`;
CREATE TABLE `django_session`  (
  `session_key` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `session_data` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`) USING BTREE,
  INDEX `django_session_expire_date_a5c62663`(`expire_date`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_session
-- ----------------------------

SET FOREIGN_KEY_CHECKS = 1;
