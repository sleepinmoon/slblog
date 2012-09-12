/*
Navicat MySQL Data Transfer

Source Server         : root
Source Server Version : 50022
Source Host           : localhost:3306
Source Database       : slblog

Target Server Type    : MYSQL
Target Server Version : 50022
File Encoding         : 65001

Date: 2012-09-11 23:15:08
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `auth_group`
-- ----------------------------
DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_group
-- ----------------------------

-- ----------------------------
-- Table structure for `auth_group_permissions`
-- ----------------------------
DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL auto_increment,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `group_id` (`group_id`,`permission_id`),
  KEY `auth_group_permissions_425ae3c4` (`group_id`),
  KEY `auth_group_permissions_1e014c8f` (`permission_id`),
  CONSTRAINT `group_id_refs_id_3cea63fe` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `permission_id_refs_id_5886d21f` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_group_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for `auth_permission`
-- ----------------------------
DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(50) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `content_type_id` (`content_type_id`,`codename`),
  KEY `auth_permission_1bb8f392` (`content_type_id`),
  CONSTRAINT `content_type_id_refs_id_728de91f` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_permission
-- ----------------------------
INSERT INTO `auth_permission` VALUES ('1', 'Can add log entry', '1', 'add_logentry');
INSERT INTO `auth_permission` VALUES ('2', 'Can change log entry', '1', 'change_logentry');
INSERT INTO `auth_permission` VALUES ('3', 'Can delete log entry', '1', 'delete_logentry');
INSERT INTO `auth_permission` VALUES ('4', 'Can add permission', '2', 'add_permission');
INSERT INTO `auth_permission` VALUES ('5', 'Can change permission', '2', 'change_permission');
INSERT INTO `auth_permission` VALUES ('6', 'Can delete permission', '2', 'delete_permission');
INSERT INTO `auth_permission` VALUES ('7', 'Can add group', '3', 'add_group');
INSERT INTO `auth_permission` VALUES ('8', 'Can change group', '3', 'change_group');
INSERT INTO `auth_permission` VALUES ('9', 'Can delete group', '3', 'delete_group');
INSERT INTO `auth_permission` VALUES ('10', 'Can add user', '4', 'add_user');
INSERT INTO `auth_permission` VALUES ('11', 'Can change user', '4', 'change_user');
INSERT INTO `auth_permission` VALUES ('12', 'Can delete user', '4', 'delete_user');
INSERT INTO `auth_permission` VALUES ('13', 'Can add content type', '5', 'add_contenttype');
INSERT INTO `auth_permission` VALUES ('14', 'Can change content type', '5', 'change_contenttype');
INSERT INTO `auth_permission` VALUES ('15', 'Can delete content type', '5', 'delete_contenttype');
INSERT INTO `auth_permission` VALUES ('16', 'Can add session', '6', 'add_session');
INSERT INTO `auth_permission` VALUES ('17', 'Can change session', '6', 'change_session');
INSERT INTO `auth_permission` VALUES ('18', 'Can delete session', '6', 'delete_session');
INSERT INTO `auth_permission` VALUES ('19', 'Can add comment', '7', 'add_comment');
INSERT INTO `auth_permission` VALUES ('20', 'Can change comment', '7', 'change_comment');
INSERT INTO `auth_permission` VALUES ('21', 'Can delete comment', '7', 'delete_comment');
INSERT INTO `auth_permission` VALUES ('22', 'Can moderate comments', '7', 'can_moderate');
INSERT INTO `auth_permission` VALUES ('23', 'Can add comment flag', '8', 'add_commentflag');
INSERT INTO `auth_permission` VALUES ('24', 'Can change comment flag', '8', 'change_commentflag');
INSERT INTO `auth_permission` VALUES ('25', 'Can delete comment flag', '8', 'delete_commentflag');
INSERT INTO `auth_permission` VALUES ('26', 'Can add site', '9', 'add_site');
INSERT INTO `auth_permission` VALUES ('27', 'Can change site', '9', 'change_site');
INSERT INTO `auth_permission` VALUES ('28', 'Can delete site', '9', 'delete_site');
INSERT INTO `auth_permission` VALUES ('29', 'Can add 文章类名', '10', 'add_label');
INSERT INTO `auth_permission` VALUES ('30', 'Can change 文章类名', '10', 'change_label');
INSERT INTO `auth_permission` VALUES ('31', 'Can delete 文章类名', '10', 'delete_label');
INSERT INTO `auth_permission` VALUES ('32', 'Can add 文章', '11', 'add_essay');
INSERT INTO `auth_permission` VALUES ('33', 'Can change 文章', '11', 'change_essay');
INSERT INTO `auth_permission` VALUES ('34', 'Can delete 文章', '11', 'delete_essay');
INSERT INTO `auth_permission` VALUES ('35', 'Can add 评论', '12', 'add_comment');
INSERT INTO `auth_permission` VALUES ('36', 'Can change 评论', '12', 'change_comment');
INSERT INTO `auth_permission` VALUES ('37', 'Can delete 评论', '12', 'delete_comment');

-- ----------------------------
-- Table structure for `auth_user`
-- ----------------------------
DROP TABLE IF EXISTS `auth_user`;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL auto_increment,
  `username` varchar(30) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(75) NOT NULL,
  `password` varchar(128) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `last_login` datetime NOT NULL,
  `date_joined` datetime NOT NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_user
-- ----------------------------
INSERT INTO `auth_user` VALUES ('1', 'root', '', '', '1234@163.com', 'pbkdf2_sha256$10000$MJ6n3oYrvURq$EGCpB1VbmfaIlrkR+Hj6tOX2DWlGum4LMvr5qT6fPQU=', '1', '1', '1', '2012-09-11 23:14:42', '2012-09-11 23:14:42');

-- ----------------------------
-- Table structure for `auth_user_groups`
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_groups`;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL auto_increment,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `user_id` (`user_id`,`group_id`),
  KEY `auth_user_groups_403f60f` (`user_id`),
  KEY `auth_user_groups_425ae3c4` (`group_id`),
  CONSTRAINT `group_id_refs_id_f116770` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `user_id_refs_id_7ceef80f` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_user_groups
-- ----------------------------

-- ----------------------------
-- Table structure for `auth_user_user_permissions`
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_user_permissions`;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL auto_increment,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `user_id` (`user_id`,`permission_id`),
  KEY `auth_user_user_permissions_403f60f` (`user_id`),
  KEY `auth_user_user_permissions_1e014c8f` (`permission_id`),
  CONSTRAINT `permission_id_refs_id_67e79cb` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `user_id_refs_id_dfbab7d` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_user_user_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for `blog_comment`
-- ----------------------------
DROP TABLE IF EXISTS `blog_comment`;
CREATE TABLE `blog_comment` (
  `id` int(11) NOT NULL auto_increment,
  `essay_id_id` int(11) NOT NULL,
  `content` longtext NOT NULL,
  `pub_time` date NOT NULL,
  `name` varchar(32) NOT NULL,
  `email` varchar(32) NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `blog_comment_27b047a7` (`essay_id_id`),
  CONSTRAINT `essay_id_id_refs_id_37d67b2f` FOREIGN KEY (`essay_id_id`) REFERENCES `blog_essay` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of blog_comment
-- ----------------------------

-- ----------------------------
-- Table structure for `blog_essay`
-- ----------------------------
DROP TABLE IF EXISTS `blog_essay`;
CREATE TABLE `blog_essay` (
  `id` int(11) NOT NULL auto_increment,
  `title` varchar(64) NOT NULL,
  `pub_time` date NOT NULL,
  `edit_time` date NOT NULL,
  `label_id_id` int(11) NOT NULL,
  `content` longtext NOT NULL,
  `summary` longtext NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `blog_essay_2c255da` (`label_id_id`),
  CONSTRAINT `label_id_id_refs_id_3f640976` FOREIGN KEY (`label_id_id`) REFERENCES `blog_label` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of blog_essay
-- ----------------------------

-- ----------------------------
-- Table structure for `blog_label`
-- ----------------------------
DROP TABLE IF EXISTS `blog_label`;
CREATE TABLE `blog_label` (
  `id` int(11) NOT NULL auto_increment,
  `lname` varchar(25) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of blog_label
-- ----------------------------

-- ----------------------------
-- Table structure for `django_admin_log`
-- ----------------------------
DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL auto_increment,
  `action_time` datetime NOT NULL,
  `user_id` int(11) NOT NULL,
  `content_type_id` int(11) default NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `django_admin_log_403f60f` (`user_id`),
  KEY `django_admin_log_1bb8f392` (`content_type_id`),
  CONSTRAINT `content_type_id_refs_id_288599e6` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `user_id_refs_id_c8665aa` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_admin_log
-- ----------------------------

-- ----------------------------
-- Table structure for `django_comments`
-- ----------------------------
DROP TABLE IF EXISTS `django_comments`;
CREATE TABLE `django_comments` (
  `id` int(11) NOT NULL auto_increment,
  `content_type_id` int(11) NOT NULL,
  `object_pk` longtext NOT NULL,
  `site_id` int(11) NOT NULL,
  `user_id` int(11) default NULL,
  `user_name` varchar(50) NOT NULL,
  `user_email` varchar(75) NOT NULL,
  `user_url` varchar(200) NOT NULL,
  `comment` longtext NOT NULL,
  `submit_date` datetime NOT NULL,
  `ip_address` char(15) default NULL,
  `is_public` tinyint(1) NOT NULL,
  `is_removed` tinyint(1) NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `django_comments_1bb8f392` (`content_type_id`),
  KEY `django_comments_6223029` (`site_id`),
  KEY `django_comments_403f60f` (`user_id`),
  CONSTRAINT `content_type_id_refs_id_d5868a5` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `site_id_refs_id_7248df08` FOREIGN KEY (`site_id`) REFERENCES `django_site` (`id`),
  CONSTRAINT `user_id_refs_id_7e9ddfef` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_comments
-- ----------------------------

-- ----------------------------
-- Table structure for `django_comment_flags`
-- ----------------------------
DROP TABLE IF EXISTS `django_comment_flags`;
CREATE TABLE `django_comment_flags` (
  `id` int(11) NOT NULL auto_increment,
  `user_id` int(11) NOT NULL,
  `comment_id` int(11) NOT NULL,
  `flag` varchar(30) NOT NULL,
  `flag_date` datetime NOT NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `user_id` (`user_id`,`comment_id`,`flag`),
  KEY `django_comment_flags_403f60f` (`user_id`),
  KEY `django_comment_flags_64c238ac` (`comment_id`),
  KEY `django_comment_flags_111c90f9` (`flag`),
  CONSTRAINT `comment_id_refs_id_373a05f7` FOREIGN KEY (`comment_id`) REFERENCES `django_comments` (`id`),
  CONSTRAINT `user_id_refs_id_603c4dcb` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_comment_flags
-- ----------------------------

-- ----------------------------
-- Table structure for `django_content_type`
-- ----------------------------
DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(100) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `app_label` (`app_label`,`model`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_content_type
-- ----------------------------
INSERT INTO `django_content_type` VALUES ('1', 'log entry', 'admin', 'logentry');
INSERT INTO `django_content_type` VALUES ('2', 'permission', 'auth', 'permission');
INSERT INTO `django_content_type` VALUES ('3', 'group', 'auth', 'group');
INSERT INTO `django_content_type` VALUES ('4', 'user', 'auth', 'user');
INSERT INTO `django_content_type` VALUES ('5', 'content type', 'contenttypes', 'contenttype');
INSERT INTO `django_content_type` VALUES ('6', 'session', 'sessions', 'session');
INSERT INTO `django_content_type` VALUES ('7', 'comment', 'comments', 'comment');
INSERT INTO `django_content_type` VALUES ('8', 'comment flag', 'comments', 'commentflag');
INSERT INTO `django_content_type` VALUES ('9', 'site', 'sites', 'site');
INSERT INTO `django_content_type` VALUES ('10', '文章类名', 'blog', 'label');
INSERT INTO `django_content_type` VALUES ('11', '文章', 'blog', 'essay');
INSERT INTO `django_content_type` VALUES ('12', '评论', 'blog', 'comment');

-- ----------------------------
-- Table structure for `django_session`
-- ----------------------------
DROP TABLE IF EXISTS `django_session`;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime NOT NULL,
  PRIMARY KEY  (`session_key`),
  KEY `django_session_3da3d3d8` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_session
-- ----------------------------

-- ----------------------------
-- Table structure for `django_site`
-- ----------------------------
DROP TABLE IF EXISTS `django_site`;
CREATE TABLE `django_site` (
  `id` int(11) NOT NULL auto_increment,
  `domain` varchar(100) NOT NULL,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_site
-- ----------------------------
INSERT INTO `django_site` VALUES ('1', 'example.com', 'example.com');
