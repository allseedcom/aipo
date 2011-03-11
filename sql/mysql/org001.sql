--
-- Aipo is a groupware program developed by Aimluck,Inc.
-- Copyright (C) 2004-2011 Aimluck,Inc.
-- http://www.aipo.com
--
-- This program is free software: you can redistribute it and/or modify
-- it under the terms of the GNU Affero General Public License as
-- published by the Free Software Foundation, either version 3 of the
-- License, or (at your option) any later version.
--
-- This program is distributed in the hope that it will be useful,
-- but WITHOUT ANY WARRANTY; without even the implied warranty of
-- MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-- GNU Affero General Public License for more details.
--
-- You should have received a copy of the GNU Affero General Public License
-- along with this program.  If not, see <http://www.gnu.org/licenses/>.
--

CREATE TABLE `activity` (
  `app_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `body` text COLLATE utf8_unicode_ci,
  `external_id` varchar(99) COLLATE utf8_unicode_ci DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `login_name` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `portlet_params` varchar(99) COLLATE utf8_unicode_ci DEFAULT NULL,
  `priority` double DEFAULT NULL,
  `title` varchar(99) COLLATE utf8_unicode_ci NOT NULL,
  `update_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `activity_map` (
  `activity_id` int(11) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `is_read` int(11) DEFAULT NULL,
  `login_name` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `aipo_license` (
  `license_id` int(11) NOT NULL AUTO_INCREMENT,
  `license` varchar(99) COLLATE utf8_unicode_ci NOT NULL,
  `limit_users` int(11) DEFAULT NULL,
  PRIMARY KEY (`license_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `app_data` (
  `app_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(99) COLLATE utf8_unicode_ci NOT NULL,
  `login_name` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `value` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `application` (
  `app_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `consumer_key` varchar(99) COLLATE utf8_unicode_ci DEFAULT NULL,
  `consumer_secret` varchar(99) COLLATE utf8_unicode_ci DEFAULT NULL,
  `create_date` date DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `icon` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `icon64` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `status` int(11) DEFAULT NULL,
  `summary` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title` varchar(99) COLLATE utf8_unicode_ci DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `container_config` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `eip_facility_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `facility_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `eip_m_address_group` (
  `group_id` int(11) NOT NULL AUTO_INCREMENT,
  `group_name` varchar(99) COLLATE utf8_unicode_ci NOT NULL,
  `owner_id` int(11) DEFAULT NULL,
  `public_flag` varchar(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `create_date` date DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  PRIMARY KEY (`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `eip_m_addressbook` (
  `address_id` int(11) NOT NULL AUTO_INCREMENT,
  `owner_id` int(11) DEFAULT NULL,
  `first_name` varchar(99) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_name` varchar(99) COLLATE utf8_unicode_ci DEFAULT NULL,
  `first_name_kana` varchar(99) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_name_kana` varchar(99) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(99) COLLATE utf8_unicode_ci DEFAULT NULL,
  `telephone` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cellular_phone` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cellular_mail` varchar(99) COLLATE utf8_unicode_ci DEFAULT NULL,
  `company_id` int(11) DEFAULT NULL,
  `position_name` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `public_flag` varchar(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `note` text COLLATE utf8_unicode_ci,
  `create_user_id` int(11) DEFAULT NULL,
  `update_user_id` int(11) DEFAULT NULL,
  `create_date` date DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  PRIMARY KEY (`address_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `eip_m_addressbook_company` (
  `company_id` int(11) NOT NULL AUTO_INCREMENT,
  `company_name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `company_name_kana` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `post_name` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `zipcode` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `telephone` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fax_number` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `url` varchar(99) COLLATE utf8_unicode_ci DEFAULT NULL,
  `create_user_id` int(11) DEFAULT NULL,
  `update_user_id` int(11) DEFAULT NULL,
  `create_date` date DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  PRIMARY KEY (`company_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `eip_m_addressbook_company` VALUES (1,'未分類','ミブンルイ','','','','','','',1,1,NULL,NULL);

CREATE TABLE `eip_m_company` (
  `company_id` int(11) NOT NULL AUTO_INCREMENT,
  `company_name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `company_name_kana` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `zipcode` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `telephone` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fax_number` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `url` varchar(99) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ipaddress` varchar(99) COLLATE utf8_unicode_ci DEFAULT NULL,
  `port` int(11) DEFAULT NULL,
  `ipaddress_internal` varchar(99) COLLATE utf8_unicode_ci DEFAULT NULL,
  `port_internal` int(11) DEFAULT NULL,
  `create_date` date DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  PRIMARY KEY (`company_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `eip_m_company` VALUES (1, '', '', '', '', '', '', '', '', 80, '', 80, now(), now());

CREATE TABLE `eip_m_config` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `eip_m_facility` (
  `facility_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `facility_name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `note` text COLLATE utf8_unicode_ci,
  `create_date` date DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  PRIMARY KEY (`facility_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `eip_m_mail_account` (
  `account_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `account_name` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `account_type` varchar(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `smtpserver_name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `pop3server_name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `pop3user_name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `pop3password` blob NOT NULL,
  `mail_user_name` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mail_address` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `smtp_port` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `smtp_encryption_flg` int(11) DEFAULT NULL,
  `pop3_port` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `pop3_encryption_flg` int(11) DEFAULT NULL,
  `auth_send_flg` int(11) DEFAULT NULL,
  `auth_send_user_id` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `auth_send_user_passwd` blob,
  `auth_receive_flg` int(11) DEFAULT NULL,
  `del_at_pop3_flg` varchar(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `del_at_pop3_before_days_flg` varchar(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `del_at_pop3_before_days` int(11) DEFAULT NULL,
  `non_received_flg` varchar(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `default_folder_id` int(11) DEFAULT NULL,
  `last_received_date` datetime DEFAULT NULL,
  `signature` text COLLATE utf8_unicode_ci,
  `create_date` date DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  PRIMARY KEY (`account_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `eip_m_mail_notify_conf` (
  `notify_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `notify_type` int(11) NOT NULL,
  `notify_flg` int(11) NOT NULL,
  `notify_time` time DEFAULT NULL,
  `create_date` date DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  PRIMARY KEY (`notify_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `eip_m_mail_notify_conf` VALUES (1,1,1,3,'07:00:00',now(),now()),(2,1,21,3,NULL,'2011-03-02','2011-03-02 18:31:47'),(3,1,22,3,NULL,now(),now()),(4,1,23,3,NULL,now(),now()),(5,1,24,3,NULL,now(),now());

CREATE TABLE `eip_m_mybox` (
  `mybox_id` int(11) NOT NULL AUTO_INCREMENT,
  `company_id` int(11) NOT NULL,
  `aipo_id` varchar(99) COLLATE utf8_unicode_ci DEFAULT NULL,
  `aipo_passwd` varchar(99) COLLATE utf8_unicode_ci DEFAULT NULL,
  `create_date` date DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  PRIMARY KEY (`mybox_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `eip_m_position` (
  `position_id` int(11) NOT NULL AUTO_INCREMENT,
  `position_name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `create_date` date DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  PRIMARY KEY (`position_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `eip_m_post` (
  `post_id` int(11) NOT NULL AUTO_INCREMENT,
  `company_id` int(11) NOT NULL,
  `post_name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `zipcode` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `in_telephone` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `out_telephone` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fax_number` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `group_name` varchar(99) COLLATE utf8_unicode_ci DEFAULT NULL,
  `create_date` date DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  PRIMARY KEY (`post_id`),
  UNIQUE KEY `eip_m_post_group_name_key` (`group_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `eip_m_user_position` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `eip_t_acl_portlet_feature` (
  `feature_id` int(11) NOT NULL AUTO_INCREMENT,
  `feature_name` varchar(99) COLLATE utf8_unicode_ci DEFAULT NULL,
  `feature_alias_name` varchar(99) COLLATE utf8_unicode_ci DEFAULT NULL,
  `acl_type` int(11) DEFAULT NULL,
  PRIMARY KEY (`feature_id`)
) ENGINE=InnoDB AUTO_INCREMENT=202 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `eip_t_acl_portlet_feature` VALUES (111,'schedule_self','スケジュール（自分の予定）操作',31),(112,'schedule_other','スケジュール（他ユーザーの予定）操作',31),(113,'schedule_facility','スケジュール（施設の予約）操作',12),(121,'blog_entry_self','ブログ（自分の記事）操作',31),(122,'blog_entry_other','ブログ（他ユーザーの記事）操作',3),(123,'blog_entry_reply','ブログ（記事へのコメント）操作',20),(124,'blog_theme','ブログ（テーマ）操作',31),(131,'msgboard_topic','掲示板（トピック）操作',31),(132,'msgboard_topic_reply','掲示板（トピック返信）操作',20),(133,'msgboard_category','掲示板（自分のカテゴリ）操作',31),(134,'msgboard_category_other','掲示板（他ユーザーのカテゴリ）操作',27),(135,'msgboard_topic_other','掲示板（他ユーザーのトピック）操作',24),(141,'todo_todo_self','ToDo（自分のToDo）操作',31),(142,'todo_todo_other','ToDo（他ユーザーのToDo）操作',3),(143,'todo_category_self','ToDo（カテゴリ）操作',31),(151,'workflow_request_self','ワークフロー（自分の依頼）操作',31),(152,'workflow_request_other','ワークフロー（他ユーザーの依頼）操作',3),(161,'addressbook_address_inside','アドレス帳（社内アドレス）操作',3),(162,'addressbook_address_outside','アドレス帳（社外アドレス）操作',31),(163,'addressbook_company','アドレス帳（会社情報）操作',31),(164,'addressbook_company_group','アドレス帳（社外グループ）操作',31),(171,'timecard_timecard_self','タイムカード（自分のタイムカード）操作',47),(172,'timecard_timecard_other','タイムカード（他人のタイムカード）操作',33),(181,'cabinet_file','共有フォルダ（ファイル）操作',31),(182,'cabinet_folder','共有フォルダ（フォルダ）操作',30),(191,'manhour_summary_self','プロジェクト管理（自分の工数）操作',1),(192,'manhour_summary_other','プロジェクト管理（他ユーザーの工数）操作',1),(193,'manhour_common_category','プロジェクト管理（自分の共有カテゴリ）操作',31),(194,'manhour_common_category_other','プロジェクト管理（他ユーザーの共有カテゴリ）操作',27),(201,'portlet_customize','ポートレット操作',29);

CREATE TABLE `eip_t_acl_role` (
  `role_id` int(11) NOT NULL AUTO_INCREMENT,
  `role_name` varchar(99) COLLATE utf8_unicode_ci NOT NULL,
  `feature_id` int(11) NOT NULL,
  `acl_type` int(11) DEFAULT NULL,
  `note` text COLLATE utf8_unicode_ci,
  `create_date` date DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `eip_t_acl_role` VALUES (1,'スケジュール（自分の予定）管理者',111,31,'＊追加、編集、削除は一覧表示と詳細表示の権限を持っていないと使用できません',NULL,NULL),(2,'スケジュール（他ユーザーの予定）',112,3,NULL,NULL,NULL),(3,'スケジュール（施設の予約）管理者',113,12,NULL,NULL,NULL),(4,'ブログ（自分の記事）管理者',121,31,'＊追加、編集、削除は一覧表示と詳細表示の権限を持っていないと使用できません',NULL,NULL),(5,'ブログ（他ユーザーの記事）管理者',122,3,'＊詳細表示は一覧表示の権限を持っていないと使用できません',NULL,NULL),(6,'ブログ（記事へのコメント）管理者',123,20,NULL,NULL,NULL),(7,'ブログ（テーマ）管理者',124,31,'＊詳細表示、追加、編集、削除は一覧表示の権限を持っていないと使用できません',NULL,NULL),(8,'掲示板（トピック）管理者',131,31,'＊詳細表示、追加、削除は一覧表示の権限を持っていないと使用できません',NULL,NULL),(9,'掲示板（トピック返信）管理者',132,20,NULL,NULL,NULL),(10,'掲示板（自分のカテゴリ）管理者',133,31,'＊追加、編集、削除は一覧表示と詳細表示の権限を持っていないと使用できません',NULL,NULL),(12,'ToDo（自分のToDo）管理者',141,31,'＊詳細表示、追加、削除は一覧表示の権限を持っていないと使用できません',NULL,NULL),(13,'ToDo（他ユーザーのToDo）管理者',142,3,'＊詳細表示は一覧表示の権限を持っていないと使用できません',NULL,NULL),(14,'ToDo（カテゴリ）管理者',143,31,'＊詳細表示、追加、削除は一覧表示の権限を持っていないと使用できません',NULL,NULL),(15,'ワークフロー（自分の依頼）管理者',151,31,'＊詳細表示、追加、削除は一覧表示の権限を持っていないと使用できません ＊承認、再申請や差し戻しは編集の権限が必要です',NULL,NULL),(16,'ワークフロー（他ユーザーの依頼）管理者',152,3,'＊詳細表示は一覧表示の権限を持っていないと使用できません',NULL,NULL),(17,'アドレス帳（社内アドレス）管理者',161,3,'＊詳細表示は一覧表示の権限を持っていないと使用できません',NULL,NULL),(18,'アドレス帳（社外アドレス）管理者',162,31,'＊詳細表示、追加、編集、削除は一覧表示の権限を持っていないと使用できません',NULL,NULL),(19,'アドレス帳（会社情報）管理者',163,31,'＊詳細表示、追加、編集、削除は一覧表示の権限を持っていないと使用できません',NULL,NULL),(20,'アドレス帳（社外グループ）管理者',164,31,'＊詳細表示、追加、編集、削除は一覧表示の権限を持っていないと使用できません',NULL,NULL),(21,'タイムカード（自分のタイムカード）管理者',171,47,'＊追加、編集、外部出力は一覧表示の権限を持っていないと使用できません',NULL,NULL),(22,'タイムカード（他人のタイムカード）管理者',172,33,'＊自分のタイムカード一覧表示の権限を持っていないと使用できません\n＊外部出力は一覧表示の権限を持っていないと使用できません',NULL,NULL),(23,'共有フォルダ（ファイル）管理者',181,31,'＊詳細表示、追加、編集、削除は一覧表示の権限を持っていないと使用できません',NULL,NULL),(24,'共有フォルダ（フォルダ）管理者',182,30,'＊編集、削除は詳細表示の権限を持っていないと使用できません',NULL,NULL),(25,'プロジェクト管理（自分の工数）管理者',191,1,NULL,NULL,NULL),(26,'プロジェクト管理（他ユーザーの工数）管理者',192,1,NULL,NULL,NULL),(27,'プロジェクト管理（自分の共有カテゴリ）管理者',193,31,NULL,NULL,NULL),(28,'プロジェクト管理（他ユーザーの共有カテゴリ）管理者',194,3,NULL,NULL,NULL),(29,'ポートレット管理者',201,29,NULL,NULL,NULL);

CREATE TABLE `eip_t_acl_user_role_map` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `eip_t_addressbook_group_map` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `address_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `eip_t_blog` (
  `blog_id` int(11) NOT NULL AUTO_INCREMENT,
  `owner_id` int(11) NOT NULL,
  `create_date` date DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  PRIMARY KEY (`blog_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `eip_t_blog_comment` (
  `comment_id` int(11) NOT NULL AUTO_INCREMENT,
  `owner_id` int(11) NOT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `entry_id` int(11) NOT NULL,
  `create_date` date DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  PRIMARY KEY (`comment_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `eip_t_blog_entry` (
  `entry_id` int(11) NOT NULL AUTO_INCREMENT,
  `owner_id` int(11) NOT NULL,
  `title` varchar(99) COLLATE utf8_unicode_ci NOT NULL,
  `note` text COLLATE utf8_unicode_ci,
  `blog_id` int(11) NOT NULL,
  `thema_id` int(11) DEFAULT NULL,
  `allow_comments` varchar(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  PRIMARY KEY (`entry_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `eip_t_blog_file` (
  `file_id` int(11) NOT NULL AUTO_INCREMENT,
  `owner_id` int(11) NOT NULL,
  `title` varchar(99) COLLATE utf8_unicode_ci NOT NULL,
  `file_path` text COLLATE utf8_unicode_ci NOT NULL,
  `file_thumbnail` blob,
  `entry_id` int(11) NOT NULL,
  `create_date` date DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  PRIMARY KEY (`file_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `eip_t_blog_footmark_map` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `blog_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `create_date` date NOT NULL,
  `update_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `eip_t_blog_thema` (
  `thema_id` int(11) NOT NULL AUTO_INCREMENT,
  `thema_name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `create_user_id` int(11) NOT NULL,
  `update_user_id` int(11) NOT NULL,
  `create_date` date DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  PRIMARY KEY (`thema_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `eip_t_blog_thema` VALUES (1,'未分類','',0,0,NULL,NULL);

CREATE TABLE `eip_t_cabinet_file` (
  `file_id` int(11) NOT NULL AUTO_INCREMENT,
  `folder_id` int(11) NOT NULL,
  `file_title` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `file_name` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `file_size` bigint(20) DEFAULT NULL,
  `file_path` text COLLATE utf8_unicode_ci NOT NULL,
  `note` text COLLATE utf8_unicode_ci,
  `create_user_id` int(11) DEFAULT NULL,
  `update_user_id` int(11) DEFAULT NULL,
  `create_date` date DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  PRIMARY KEY (`file_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `eip_t_cabinet_folder` (
  `folder_id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) NOT NULL,
  `folder_name` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `note` text COLLATE utf8_unicode_ci,
  `create_user_id` int(11) DEFAULT NULL,
  `update_user_id` int(11) DEFAULT NULL,
  `public_flag` varchar(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `create_date` date DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  PRIMARY KEY (`folder_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `eip_t_cabinet_folder` VALUES (1,0,'ルートフォルダ','',0,0,'0',NULL,NULL);

CREATE TABLE `eip_t_cabinet_folder_map` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `folder_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `status` varchar(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `eip_t_common_category` (
  `common_category_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `note` text COLLATE utf8_unicode_ci,
  `create_user_id` int(11) NOT NULL,
  `update_user_id` int(11) NOT NULL,
  `create_date` date DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  PRIMARY KEY (`common_category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `eip_t_common_category` VALUES (1,'未分類','',0,0,NULL,NULL);

CREATE TABLE `eip_t_eventlog` (
  `eventlog_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `event_date` datetime DEFAULT NULL,
  `event_type` int(11) DEFAULT NULL,
  `portlet_type` int(11) DEFAULT NULL,
  `entity_id` int(11) DEFAULT NULL,
  `ip_addr` text COLLATE utf8_unicode_ci,
  `note` text COLLATE utf8_unicode_ci,
  `create_date` datetime DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  PRIMARY KEY (`eventlog_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `eip_t_ext_timecard` (
  `timecard_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `punch_date` date DEFAULT NULL,
  `type` varchar(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `clock_in_time` datetime DEFAULT NULL,
  `clock_out_time` datetime DEFAULT NULL,
  `reason` text COLLATE utf8_unicode_ci,
  `outgoing_time1` datetime DEFAULT NULL,
  `comeback_time1` datetime DEFAULT NULL,
  `outgoing_time2` datetime DEFAULT NULL,
  `comeback_time2` datetime DEFAULT NULL,
  `outgoing_time3` datetime DEFAULT NULL,
  `comeback_time3` datetime DEFAULT NULL,
  `outgoing_time4` datetime DEFAULT NULL,
  `comeback_time4` datetime DEFAULT NULL,
  `outgoing_time5` datetime DEFAULT NULL,
  `comeback_time5` datetime DEFAULT NULL,
  `remarks` text COLLATE utf8_unicode_ci,
  `create_date` date DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  PRIMARY KEY (`timecard_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `eip_t_ext_timecard_system` (
  `system_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `system_name` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `start_hour` int(11) DEFAULT NULL,
  `start_minute` int(11) DEFAULT NULL,
  `end_hour` int(11) DEFAULT NULL,
  `end_minute` int(11) DEFAULT NULL,
  `worktime_in` int(11) DEFAULT NULL,
  `resttime_in` int(11) DEFAULT NULL,
  `worktime_out` int(11) DEFAULT NULL,
  `resttime_out` int(11) DEFAULT NULL,
  `change_hour` int(11) DEFAULT NULL,
  `outgoing_add_flag` varchar(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `create_date` date DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  PRIMARY KEY (`system_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `eip_t_ext_timecard_system` VALUES (1,0,'通常',9,0,18,0,360,60,360,60,4,'T',now(),now());

CREATE TABLE `eip_t_ext_timecard_system_map` (
  `system_map_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `system_id` int(11) NOT NULL,
  `create_date` date DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  PRIMARY KEY (`system_map_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `eip_t_mail` (
  `mail_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `account_id` int(11) NOT NULL,
  `folder_id` int(11) NOT NULL,
  `type` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `read_flg` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `subject` text COLLATE utf8_unicode_ci,
  `person` text COLLATE utf8_unicode_ci,
  `event_date` datetime DEFAULT NULL,
  `file_volume` int(11) DEFAULT NULL,
  `has_files` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `file_path` text COLLATE utf8_unicode_ci,
  `mail` blob,
  `create_date` date DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  PRIMARY KEY (`mail_id`),
  KEY `eip_t_mail_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `eip_t_mail_filter` (
  `filter_id` int(11) NOT NULL AUTO_INCREMENT,
  `account_id` int(11) DEFAULT NULL,
  `dst_folder_id` int(11) DEFAULT NULL,
  `filter_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `filter_string` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `filter_type` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `create_date` date DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  PRIMARY KEY (`filter_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `eip_t_mail_folder` (
  `folder_id` int(11) NOT NULL AUTO_INCREMENT,
  `account_id` int(11) DEFAULT NULL,
  `folder_name` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `create_date` date DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  PRIMARY KEY (`folder_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `eip_t_memo` (
  `memo_id` int(11) NOT NULL AUTO_INCREMENT,
  `owner_id` int(11) NOT NULL,
  `memo_name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `note` text COLLATE utf8_unicode_ci,
  `create_date` date DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  PRIMARY KEY (`memo_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `eip_t_msgboard_category` (
  `category_id` int(11) NOT NULL AUTO_INCREMENT,
  `owner_id` int(11) DEFAULT NULL,
  `category_name` varchar(99) COLLATE utf8_unicode_ci DEFAULT NULL,
  `note` text COLLATE utf8_unicode_ci,
  `public_flag` varchar(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `create_date` date DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  PRIMARY KEY (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `eip_t_msgboard_category` VALUES (1,0,'その他','','T',NULL,NULL);

CREATE TABLE `eip_t_msgboard_category_map` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `status` varchar(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `eip_t_msgboard_category_map` VALUES (1,1,0,'A');

CREATE TABLE `eip_t_msgboard_file` (
  `file_id` int(11) NOT NULL AUTO_INCREMENT,
  `owner_id` int(11) DEFAULT NULL,
  `topic_id` int(11) DEFAULT NULL,
  `file_name` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `file_path` text COLLATE utf8_unicode_ci NOT NULL,
  `file_thumbnail` blob,
  `create_date` date DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  PRIMARY KEY (`file_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `eip_t_msgboard_topic` (
  `topic_id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) DEFAULT NULL,
  `owner_id` int(11) DEFAULT NULL,
  `topic_name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `note` text COLLATE utf8_unicode_ci,
  `category_id` int(11) DEFAULT NULL,
  `create_user_id` int(11) DEFAULT NULL,
  `update_user_id` int(11) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  PRIMARY KEY (`topic_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `eip_t_note` (
  `note_id` int(11) NOT NULL AUTO_INCREMENT,
  `owner_id` varchar(99) COLLATE utf8_unicode_ci DEFAULT NULL,
  `client_name` varchar(99) COLLATE utf8_unicode_ci DEFAULT NULL,
  `company_name` varchar(99) COLLATE utf8_unicode_ci DEFAULT NULL,
  `telephone` varchar(24) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email_address` varchar(99) COLLATE utf8_unicode_ci DEFAULT NULL,
  `add_dest_type` varchar(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `subject_type` varchar(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_subject` varchar(99) COLLATE utf8_unicode_ci DEFAULT NULL,
  `message` text COLLATE utf8_unicode_ci,
  `accept_date` datetime DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  PRIMARY KEY (`note_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `eip_t_note_map` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `note_id` int(11) NOT NULL,
  `user_id` varchar(99) COLLATE utf8_unicode_ci NOT NULL,
  `del_flg` varchar(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `note_stat` varchar(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `confirm_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `eip_t_schedule` (
  `schedule_id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) DEFAULT NULL,
  `owner_id` int(11) DEFAULT NULL,
  `repeat_pattern` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `start_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `name` varchar(99) COLLATE utf8_unicode_ci DEFAULT NULL,
  `place` varchar(99) COLLATE utf8_unicode_ci DEFAULT NULL,
  `note` text COLLATE utf8_unicode_ci,
  `public_flag` varchar(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `edit_flag` varchar(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `create_user_id` int(11) DEFAULT NULL,
  `update_user_id` int(11) DEFAULT NULL,
  `create_date` date DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  PRIMARY KEY (`schedule_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `eip_t_schedule_map` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `schedule_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `status` varchar(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` varchar(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `common_category_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `eip_t_timecard` (
  `timecard_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `work_date` datetime DEFAULT NULL,
  `work_flag` varchar(1) COLLATE utf8_unicode_ci NOT NULL,
  `reason` text COLLATE utf8_unicode_ci,
  `create_date` datetime DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  PRIMARY KEY (`timecard_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `eip_t_timecard_settings` (
  `timecard_settings_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `start_hour` int(11) DEFAULT NULL,
  `start_minute` int(11) DEFAULT NULL,
  `end_hour` int(11) DEFAULT NULL,
  `end_minute` int(11) DEFAULT NULL,
  `worktime_in` int(11) DEFAULT NULL,
  `resttime_in` int(11) DEFAULT NULL,
  `worktime_out` int(11) DEFAULT NULL,
  `resttime_out` int(11) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  PRIMARY KEY (`timecard_settings_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `eip_t_timecard_settings` VALUES (1,1,9,0,18,0,360,60,360,60,NULL,NULL);

CREATE TABLE `eip_t_todo` (
  `todo_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `todo_name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `priority` int(11) DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  `note` text COLLATE utf8_unicode_ci,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `public_flag` varchar(1) COLLATE utf8_unicode_ci NOT NULL,
  `addon_schedule_flg` varchar(1) COLLATE utf8_unicode_ci NOT NULL,
  `create_date` date DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  PRIMARY KEY (`todo_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `eip_t_todo_category` (
  `category_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `category_name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `note` text COLLATE utf8_unicode_ci,
  `create_date` date DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  PRIMARY KEY (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `eip_t_todo_category` VALUES (1,0,'未分類','',NULL,NULL);

CREATE TABLE `eip_t_whatsnew` (
  `whatsnew_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `portlet_type` int(11) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `entity_id` int(11) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  PRIMARY KEY (`whatsnew_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `eip_t_workflow_category` (
  `category_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `category_name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `note` text COLLATE utf8_unicode_ci,
  `create_date` date DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  `template` text COLLATE utf8_unicode_ci,
  `route_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `eip_t_workflow_category` VALUES (1,0,'未分類','',NULL,NULL,NULL,NULL),(2,0,'有給休暇届','',NULL,NULL,NULL,NULL),(3,0,'稟議書','',NULL,NULL,NULL,NULL),(4,0,'結婚休暇届','',NULL,NULL,NULL,NULL),(5,0,'産前産後休暇届','',NULL,NULL,NULL,NULL),(6,0,'育児休暇届','',NULL,NULL,NULL,NULL),(7,0,'育児時間届','',NULL,NULL,NULL,NULL),(8,0,'特別有給休暇届（業務上負傷等）','',NULL,NULL,NULL,NULL),(9,0,'忌引き休暇届','',NULL,NULL,NULL,NULL);

CREATE TABLE `eip_t_workflow_file` (
  `file_id` int(11) NOT NULL AUTO_INCREMENT,
  `owner_id` int(11) DEFAULT NULL,
  `request_id` int(11) DEFAULT NULL,
  `file_name` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `file_path` text COLLATE utf8_unicode_ci NOT NULL,
  `file_thumbnail` blob,
  `create_date` date DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  PRIMARY KEY (`file_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `eip_t_workflow_request` (
  `request_id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `request_name` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `priority` int(11) DEFAULT NULL,
  `progress` varchar(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `note` text COLLATE utf8_unicode_ci,
  `price` bigint(20) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  `route_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`request_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `eip_t_workflow_request_map` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `request_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `status` varchar(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `order_index` int(11) NOT NULL,
  `note` text COLLATE utf8_unicode_ci,
  `create_date` date DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `eip_t_workflow_route` (
  `route_id` int(11) NOT NULL AUTO_INCREMENT,
  `route_name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `note` text COLLATE utf8_unicode_ci,
  `create_date` date DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  `route` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`route_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `jetspeed_group_profile` (
  `country` varchar(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `group_name` varchar(99) COLLATE utf8_unicode_ci DEFAULT NULL,
  `language` varchar(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `media_type` varchar(99) COLLATE utf8_unicode_ci DEFAULT NULL,
  `page` varchar(99) COLLATE utf8_unicode_ci DEFAULT NULL,
  `profile` blob,
  `psml_id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`psml_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `jetspeed_role_profile` (
  `country` varchar(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `language` varchar(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `media_type` varchar(99) COLLATE utf8_unicode_ci DEFAULT NULL,
  `page` varchar(99) COLLATE utf8_unicode_ci DEFAULT NULL,
  `profile` blob,
  `psml_id` int(11) NOT NULL AUTO_INCREMENT,
  `role_name` varchar(99) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`psml_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `jetspeed_user_profile` (
  `country` varchar(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `language` varchar(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `media_type` varchar(99) COLLATE utf8_unicode_ci DEFAULT NULL,
  `page` varchar(99) COLLATE utf8_unicode_ci DEFAULT NULL,
  `profile` blob,
  `psml_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`psml_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `module_id` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `oauth_consumer` (
  `app_id` int(11) DEFAULT NULL,
  `consumer_key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `consumer_secret` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `create_date` date DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(99) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` varchar(99) COLLATE utf8_unicode_ci DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `oauth_token` (
  `access_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `session_handle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `token_expire_milis` int(11) DEFAULT NULL,
  `token_secret` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `oauth_entry` (
  `app_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `authorized` int(11) NULL,
  `callback_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `callback_token_attempts` int(11) DEFAULT NULL,
  `callback_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `callback_url_signed` int(11) COLLATE utf8_unicode_ci DEFAULT NULL,
  `consumer_key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `container` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `domain` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `issue_time` datetime DEFAULT NULL,
  `oauth_version` varchar(16) COLLATE utf8_unicode_ci DEFAULT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `token_secret` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_id` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `turbine_group` (
  `group_id` int(11) NOT NULL AUTO_INCREMENT,
  `group_name` varchar(99) COLLATE utf8_unicode_ci NOT NULL,
  `objectdata` blob,
  `owner_id` int(11) DEFAULT NULL,
  `group_alias_name` varchar(99) COLLATE utf8_unicode_ci DEFAULT NULL,
  `public_flag` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`group_id`),
  UNIQUE KEY `turbine_group_group_name_key` (`group_name`),
  UNIQUE KEY `turbine_group_owner_id_key` (`owner_id`,`group_alias_name`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `turbine_group` VALUES (1,'Jetspeed',NULL,NULL,NULL,NULL),(2,'LoginUser',NULL,NULL,NULL,NULL),(3,'Facility',NULL,NULL,NULL,NULL);

CREATE TABLE `turbine_permission` (
  `permission_id` int(11) NOT NULL AUTO_INCREMENT,
  `permission_name` varchar(99) COLLATE utf8_unicode_ci NOT NULL,
  `objectdata` blob,
  PRIMARY KEY (`permission_id`),
  UNIQUE KEY `turbine_permission_permission_name_key` (`permission_name`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `turbine_permission` VALUES (1,'view',NULL),(2,'customize',NULL),(3,'maximize',NULL),(4,'minimize',NULL),(5,'personalize',NULL),(6,'info',NULL),(7,'close',NULL),(8,'detach',NULL);

CREATE TABLE `turbine_role` (
  `role_id` int(11) NOT NULL AUTO_INCREMENT,
  `role_name` varchar(99) COLLATE utf8_unicode_ci NOT NULL,
  `objectdata` blob,
  PRIMARY KEY (`role_id`),
  UNIQUE KEY `turbine_role_role_name_key` (`role_name`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `turbine_role` VALUES (1,'user',NULL),(2,'admin',NULL),(3,'guest',NULL);

CREATE TABLE `turbine_role_permission` (
  `role_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`role_id`,`permission_id`),
  UNIQUE KEY `role_permission_index` (`role_id`,`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `turbine_role_permission` VALUES (1,1),(1,2),(1,3),(1,4),(1,5),(1,6),(2,1),(2,2),(2,3),(2,4),(2,5),(2,6),(2,7),(3,1),(3,6);

CREATE TABLE `turbine_user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `login_name` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `password_value` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `first_name` varchar(99) COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(99) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(99) COLLATE utf8_unicode_ci DEFAULT NULL,
  `confirm_value` varchar(99) COLLATE utf8_unicode_ci DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `disabled` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `objectdata` blob,
  `password_changed` datetime DEFAULT NULL,
  `company_id` int(11) DEFAULT NULL,
  `position_id` int(11) DEFAULT NULL,
  `in_telephone` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `out_telephone` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cellular_phone` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cellular_mail` varchar(99) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cellular_uid` varchar(99) COLLATE utf8_unicode_ci DEFAULT NULL,
  `first_name_kana` varchar(99) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_name_kana` varchar(99) COLLATE utf8_unicode_ci DEFAULT NULL,
  `photo` blob,
  `created_user_id` int(11) DEFAULT NULL,
  `updated_user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `turbine_user_login_name_key` (`login_name`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `turbine_user` VALUES (1,'admin','0DPiKuNIrrVmD8IUCuw1hQxNqZc=',' ','Admin','','CONFIRMED',now(),now(),now(),'F',NULL,now(),0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2,'template','MibsvmUCE6Sc0DrmcUB1Dk80AIM=','Aimluck','Template','','CONFIRMED',now(),now(),now(),'T',NULL,now(),NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3,'anon','YVGPsXFatNaYrKMqeECsey5QfT4=','Anonymous','User','','CONFIRMED',now(),now(),now(),'F',NULL,now(),NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);

CREATE TABLE `turbine_user_group_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `turbine_user_group_role` VALUES (1,2,1,1),(2,1,1,1),(3,1,1,2),(4,3,1,3);

ALTER TABLE `oauth_consumer` ADD FOREIGN KEY (  `app_id` ) REFERENCES  `application` (`id`) ON DELETE CASCADE ;

ALTER TABLE `turbine_role_permission` ADD FOREIGN KEY (  `role_id` ) REFERENCES  `turbine_role` (`role_id`);

ALTER TABLE `turbine_role_permission` ADD FOREIGN KEY (  `permission_id` ) REFERENCES  `turbine_permission` (`permission_id`);

ALTER TABLE `turbine_user_group_role` ADD FOREIGN KEY (  `user_id` ) REFERENCES  `turbine_user` (`user_id`);

ALTER TABLE `turbine_user_group_role` ADD FOREIGN KEY (  `group_id` ) REFERENCES  `turbine_group` (`group_id`);

ALTER TABLE `turbine_user_group_role` ADD FOREIGN KEY (  `role_id` ) REFERENCES  `turbine_role` (`role_id`);

ALTER TABLE `eip_t_schedule_map` ADD FOREIGN KEY (  `schedule_id` ) REFERENCES  `eip_t_schedule` (`schedule_id`) ON DELETE CASCADE ;

ALTER TABLE `eip_t_schedule_map` ADD FOREIGN KEY (  `common_category_id` ) REFERENCES  `eip_t_common_category` (`common_category_id`) ON DELETE CASCADE ;

ALTER TABLE `eip_t_todo` ADD FOREIGN KEY (  `category_id` ) REFERENCES  `eip_t_todo_category` (`category_id`) ON DELETE CASCADE ;

ALTER TABLE `eip_t_note_map` ADD FOREIGN KEY (  `note_id` ) REFERENCES  `eip_t_note` (`note_id`) ON DELETE CASCADE ;

ALTER TABLE `eip_t_msgboard_category_map` ADD FOREIGN KEY (  `category_id` ) REFERENCES  `eip_t_msgboard_category` (`category_id`) ON DELETE CASCADE ;

ALTER TABLE `eip_t_msgboard_topic` ADD FOREIGN KEY (  `category_id` ) REFERENCES  `eip_t_msgboard_category` (`category_id`) ON DELETE CASCADE ;

ALTER TABLE `eip_t_msgboard_file` ADD FOREIGN KEY (  `topic_id` ) REFERENCES  `eip_t_msgboard_topic` (`topic_id`) ON DELETE CASCADE ;

ALTER TABLE `eip_t_blog_entry` ADD FOREIGN KEY (  `blog_id` ) REFERENCES  `eip_t_blog` (`blog_id`) ON DELETE CASCADE ;

ALTER TABLE `eip_t_blog_entry` ADD FOREIGN KEY (  `thema_id` ) REFERENCES  `eip_t_blog_thema` (`thema_id`);

ALTER TABLE `eip_t_blog_file` ADD FOREIGN KEY (  `entry_id` ) REFERENCES  `eip_t_blog_entry` (`entry_id`) ON DELETE CASCADE ;

ALTER TABLE `eip_t_blog_comment` ADD FOREIGN KEY (  `entry_id` ) REFERENCES  `eip_t_blog_entry` (`entry_id`) ON DELETE CASCADE ;

ALTER TABLE `eip_t_blog_footmark_map` ADD FOREIGN KEY (  `blog_id` ) REFERENCES  `eip_t_blog` (`blog_id`) ON DELETE CASCADE ;

ALTER TABLE `eip_t_cabinet_folder_map` ADD FOREIGN KEY (  `folder_id` ) REFERENCES  `eip_t_cabinet_folder` (`folder_id`) ON DELETE CASCADE ;

ALTER TABLE `eip_t_cabinet_file` ADD FOREIGN KEY (  `folder_id` ) REFERENCES  `eip_t_cabinet_folder` (`folder_id`) ON DELETE CASCADE ;

ALTER TABLE `eip_facility_group` ADD FOREIGN KEY (  `facility_id` ) REFERENCES  `eip_m_facility` (`facility_id`) ON DELETE CASCADE ;

ALTER TABLE `eip_facility_group` ADD FOREIGN KEY (  `group_id` ) REFERENCES  `turbine_group` (`group_id`);

ALTER TABLE `eip_t_ext_timecard_system_map` ADD FOREIGN KEY (  `system_id` ) REFERENCES  `eip_t_ext_timecard_system` (`system_id`) ON DELETE CASCADE ;

ALTER TABLE `eip_t_workflow_category` ADD FOREIGN KEY (  `route_id` ) REFERENCES  `eip_t_workflow_route` (`route_id`) ;

ALTER TABLE `eip_t_workflow_request` ADD FOREIGN KEY (  `category_id` ) REFERENCES  `eip_t_workflow_category` (`category_id`) ON DELETE CASCADE ;

ALTER TABLE `eip_t_workflow_request` ADD FOREIGN KEY (  `route_id` ) REFERENCES  `eip_t_workflow_route` (`route_id`);

ALTER TABLE `eip_t_workflow_file` ADD FOREIGN KEY (  `request_id` ) REFERENCES  `eip_t_workflow_request` (`request_id`) ON DELETE CASCADE ;

ALTER TABLE `eip_t_workflow_request_map` ADD FOREIGN KEY (  `request_id` ) REFERENCES  `eip_t_workflow_request` (`request_id`) ON DELETE CASCADE ;


