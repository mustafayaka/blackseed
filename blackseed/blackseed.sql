/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 50542
 Source Host           : localhost
 Source Database       : blackseed

 Target Server Type    : MySQL
 Target Server Version : 50542
 File Encoding         : utf-8

 Date: 03/24/2018 01:20:04 AM
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
--  Table structure for `ads`
-- ----------------------------
DROP TABLE IF EXISTS `ads`;
CREATE TABLE `ads` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `link` text NOT NULL,
  `image` text NOT NULL,
  `start_at` int(11) NOT NULL,
  `end_at` int(11) NOT NULL,
  `page` varchar(20) NOT NULL DEFAULT '',
  `status` varchar(20) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `categories`
-- ----------------------------
DROP TABLE IF EXISTS `categories`;
CREATE TABLE `categories` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) NOT NULL,
  `name` varchar(40) NOT NULL DEFAULT '',
  `status` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `categories`
-- ----------------------------
BEGIN;
INSERT INTO `categories` VALUES ('1', '0', 'Deneme', 'disabled'), ('2', '0', 'Sport', 'enabled');
COMMIT;

-- ----------------------------
--  Table structure for `comments`
-- ----------------------------
DROP TABLE IF EXISTS `comments`;
CREATE TABLE `comments` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `comment` text NOT NULL,
  `created` int(11) NOT NULL,
  `status` varchar(20) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `comments`
-- ----------------------------
BEGIN;
INSERT INTO `comments` VALUES ('1', '4', '1', 'deneme post comment', '1498474412', 'enabled');
COMMIT;

-- ----------------------------
--  Table structure for `contacts`
-- ----------------------------
DROP TABLE IF EXISTS `contacts`;
CREATE TABLE `contacts` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL DEFAULT '',
  `email` varchar(96) NOT NULL DEFAULT '',
  `phone` varchar(40) NOT NULL DEFAULT '',
  `subject` varchar(255) NOT NULL DEFAULT '',
  `message` text NOT NULL,
  `created` int(11) NOT NULL,
  `status` varchar(20) NOT NULL DEFAULT '',
  `reply` text NOT NULL,
  `replied_by` int(11) NOT NULL,
  `replied_at` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `online_users`
-- ----------------------------
DROP TABLE IF EXISTS `online_users`;
CREATE TABLE `online_users` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `last_activity` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `posts`
-- ----------------------------
DROP TABLE IF EXISTS `posts`;
CREATE TABLE `posts` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL DEFAULT '',
  `details` text NOT NULL,
  `image` tinyint(4) NOT NULL,
  `tags` text NOT NULL,
  `related_posts` text NOT NULL,
  `views` int(11) NOT NULL,
  `created` int(11) NOT NULL,
  `status` varchar(20) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `posts`
-- ----------------------------
BEGIN;
INSERT INTO `posts` VALUES ('1', '4', '1', 'Deneme Post', '&lt;p&gt;Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.&lt;/p&gt;', '127', 'deneme,post', '', '0', '1498474308', 'enabled'), ('2', '4', '2', 'Sport Yapalim Saglikli Kalalim', '&lt;p&gt;Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.&lt;/p&gt;', '127', 'Sport,spor', '', '0', '1498474638', 'enabled'), ('3', '4', '1', 'Black Seed Oil', '&lt;p&gt;Black Sedd Oil helpful for body&lt;/p&gt;', '127', 'black seed, black seed oil', '', '0', '1502637691', 'enabled');
COMMIT;

-- ----------------------------
--  Table structure for `settings`
-- ----------------------------
DROP TABLE IF EXISTS `settings`;
CREATE TABLE `settings` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(100) NOT NULL DEFAULT '',
  `value` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `settings`
-- ----------------------------
BEGIN;
INSERT INTO `settings` VALUES ('17', 'site_name', 'Deneme'), ('18', 'site_email', 'admin@kskdf.com'), ('19', 'site_status', 'enabled'), ('20', 'site_close_msg', '&lt;p&gt;sdfasdfsf&lt;/p&gt;\r\n\r\n&lt;p&gt;sdfsdfsdfs&lt;/p&gt;\r\n\r\n&lt;p&gt;sdfsdfsdfs&lt;/p&gt;');
COMMIT;

-- ----------------------------
--  Table structure for `users`
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `users_group_id` int(11) unsigned NOT NULL,
  `first_name` varchar(40) NOT NULL DEFAULT '',
  `last_name` varchar(40) NOT NULL DEFAULT '',
  `email` varchar(96) NOT NULL DEFAULT '',
  `password` varchar(128) NOT NULL DEFAULT '',
  `image` varchar(50) NOT NULL DEFAULT '',
  `gender` varchar(6) NOT NULL DEFAULT '',
  `birthday` int(11) NOT NULL,
  `created` int(11) NOT NULL,
  `status` varchar(20) NOT NULL DEFAULT '',
  `ip` varchar(32) NOT NULL DEFAULT '',
  `code` varchar(40) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `users`
-- ----------------------------
BEGIN;
INSERT INTO `users` VALUES ('4', '1', 'Mustafa', 'Yaka', 'mustafayaka7@gmail.com', '$2y$10$87xqn2viEH.2JhOdGBfB0uo.1jKckfWEvOPd79aIRw417sF6LC64m', '', '', '0', '1498338219', 'enabled', '', '57642f234682319fabe290de63be42c92fac2656'), ('5', '2', 'Alp Deniz', 'Yaka', 'admin@admin.com', '$2y$10$KgFnCAy5Yl6fHfMRCf7/BOONqpYdfGrjEPEPrff0bXJfwCqyYhcpO', 'cdd9a9cc70cef75891a8fec8e187bade349f981c_cdda6f71c', 'male', '1188079200', '1498438254', 'enabled', '::1', 'ebbd3ff8955a2cdc6bc789f4c2fe0b9bc3c92c56');
COMMIT;

-- ----------------------------
--  Table structure for `users_group_permissions`
-- ----------------------------
DROP TABLE IF EXISTS `users_group_permissions`;
CREATE TABLE `users_group_permissions` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `users_group_id` int(11) NOT NULL,
  `page` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=153 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `users_group_permissions`
-- ----------------------------
BEGIN;
INSERT INTO `users_group_permissions` VALUES ('87', '1', '/admin/login'), ('88', '1', '/admin/login/submit'), ('89', '1', '/admin'), ('90', '1', '/admin/dashboard'), ('91', '1', '/admin/submit'), ('92', '1', '/admin/users'), ('93', '1', '/admin/users/add'), ('94', '1', '/admin/users/submit'), ('95', '1', '/admin/users/edit/:id'), ('96', '1', '/admin/users/save/:id'), ('97', '1', '/admin/users/delete/:id'), ('98', '1', '/admin/profile/update'), ('99', '1', '/admin/users-groups'), ('100', '1', '/admin/users-groups/add'), ('101', '1', '/admin/users-groups/submit'), ('102', '1', '/admin/users-groups/edit/:id'), ('103', '1', '/admin/users-groups/save/:id'), ('104', '1', '/admin/users-groups/delete/:id'), ('105', '1', '/admin/posts'), ('106', '1', '/admin/posts/add'), ('107', '1', '/admin/posts/submit'), ('108', '1', '/admin/posts/edit/:id'), ('109', '1', '/admin/posts/save/:id'), ('110', '1', '/admin/posts/delete/:id'), ('111', '1', '/admin/posts/:id/comments'), ('112', '1', '/admin/comments/edit/:id'), ('113', '1', '/admin/comments/save/:id'), ('114', '1', '/admin/comments/delete/:id'), ('115', '1', '/admin/categories'), ('116', '1', '/admin/categories/add'), ('117', '1', '/admin/categories/submit'), ('118', '1', '/admin/categories/edit/:id'), ('119', '1', '/admin/categories/save/:id'), ('120', '1', '/admin/categories/delete/:id'), ('121', '1', '/admin/settings'), ('122', '1', '/admin/settings/save'), ('123', '1', '/admin/contacts'), ('124', '1', '/admin/contacts/reply/:id'), ('125', '1', '/admin/contacts/send/:id'), ('126', '1', '/admin/ads'), ('127', '1', '/admin/ads/add'), ('128', '1', '/admin/ads/submit'), ('129', '1', '/admin/ads/edit/:id'), ('130', '1', '/admin/ads/save/:id'), ('131', '1', '/admin/ads/delete/:id'), ('132', '1', '/admin/logout'), ('133', '2', '/admin/dashboard'), ('134', '2', '/admin/submit'), ('135', '2', '/admin/profile/update'), ('136', '2', '/admin/posts'), ('137', '2', '/admin/posts/add'), ('138', '2', '/admin/posts/submit'), ('139', '2', '/admin/posts/edit/:id'), ('140', '2', '/admin/posts/save/:id'), ('141', '2', '/admin/posts/delete/:id'), ('142', '2', '/admin/posts/:id/comments'), ('143', '2', '/admin/comments/edit/:id'), ('144', '2', '/admin/comments/save/:id'), ('145', '2', '/admin/comments/delete/:id'), ('146', '2', '/admin/categories'), ('147', '2', '/admin/categories/add'), ('148', '2', '/admin/categories/submit'), ('149', '2', '/admin/categories/edit/:id'), ('150', '2', '/admin/categories/save/:id'), ('151', '2', '/admin/categories/delete/:id'), ('152', '2', '/admin/logout');
COMMIT;

-- ----------------------------
--  Table structure for `users_groups`
-- ----------------------------
DROP TABLE IF EXISTS `users_groups`;
CREATE TABLE `users_groups` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(40) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `users_groups`
-- ----------------------------
BEGIN;
INSERT INTO `users_groups` VALUES ('1', 'Super Administrators'), ('2', 'Users');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
