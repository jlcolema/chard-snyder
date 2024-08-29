# ************************************************************
# Sequel Pro SQL dump
# Version 4096
#
# http://www.sequelpro.com/
# http://code.google.com/p/sequel-pro/
#
# Host: localhost (MySQL 5.6.35)
# Database: chardsnyder
# Generation Time: 2017-02-25 01:26:49 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table exp_accessories
# ------------------------------------------------------------

DROP TABLE IF EXISTS `exp_accessories`;

CREATE TABLE `exp_accessories` (
  `accessory_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `class` varchar(75) NOT NULL DEFAULT '',
  `member_groups` varchar(255) NOT NULL DEFAULT 'all',
  `controllers` text,
  `accessory_version` varchar(12) NOT NULL,
  PRIMARY KEY (`accessory_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `exp_accessories` WRITE;
/*!40000 ALTER TABLE `exp_accessories` DISABLE KEYS */;

INSERT INTO `exp_accessories` (`accessory_id`, `class`, `member_groups`, `controllers`, `accessory_version`)
VALUES
	(1,'Expressionengine_info_acc','1|5','addons|addons_accessories|addons_extensions|addons_fieldtypes|addons_modules|addons_plugins|admin_content|admin_system|content|content_edit|content_files|content_files_modal|content_publish|design|homepage|members|myaccount|tools|tools_communicate|tools_data|tools_logs|tools_utilities','1.0'),
	(2,'Freeform_acc','1|5','addons|addons_accessories|addons_extensions|addons_fieldtypes|addons_modules|addons_plugins|admin_content|admin_system|content|content_edit|content_files|content_files_modal|content_publish|design|homepage|members|myaccount|tools|tools_communicate|tools_data|tools_logs|tools_utilities','4.2.4'),
	(3,'Structure_acc','1|5','addons|addons_accessories|addons_extensions|addons_fieldtypes|addons_modules|addons_plugins|admin_content|admin_system|content|content_edit|content_files|content_files_modal|content_publish|design|homepage|members|myaccount|tools|tools_communicate|tools_data|tools_logs|tools_utilities','3.3.17');

/*!40000 ALTER TABLE `exp_accessories` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table exp_actions
# ------------------------------------------------------------

DROP TABLE IF EXISTS `exp_actions`;

CREATE TABLE `exp_actions` (
  `action_id` int(4) unsigned NOT NULL AUTO_INCREMENT,
  `class` varchar(50) NOT NULL,
  `method` varchar(50) NOT NULL,
  `csrf_exempt` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`action_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `exp_actions` WRITE;
/*!40000 ALTER TABLE `exp_actions` DISABLE KEYS */;

INSERT INTO `exp_actions` (`action_id`, `class`, `method`, `csrf_exempt`)
VALUES
	(25,'Structure','ajax_move_set_data',0),
	(23,'Freeform','save_form',0),
	(5,'Email','send_email',0),
	(6,'Search','do_search',1),
	(7,'Channel','submit_entry',0),
	(8,'Channel','filemanager_endpoint',0),
	(9,'Channel','smiley_pop',0),
	(10,'Channel','combo_loader',0),
	(11,'Member','registration_form',0),
	(12,'Member','register_member',0),
	(13,'Member','activate_member',0),
	(14,'Member','member_login',0),
	(15,'Member','member_logout',0),
	(16,'Member','send_reset_token',0),
	(17,'Member','process_reset_password',0),
	(18,'Member','send_member_email',0),
	(19,'Member','update_un_pw',0),
	(20,'Member','member_search',0),
	(21,'Member','member_delete',0),
	(24,'Safeharbor_lite','communicate',0);

/*!40000 ALTER TABLE `exp_actions` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table exp_captcha
# ------------------------------------------------------------

DROP TABLE IF EXISTS `exp_captcha`;

CREATE TABLE `exp_captcha` (
  `captcha_id` bigint(13) unsigned NOT NULL AUTO_INCREMENT,
  `date` int(10) unsigned NOT NULL,
  `ip_address` varchar(45) NOT NULL DEFAULT '0',
  `word` varchar(20) NOT NULL,
  PRIMARY KEY (`captcha_id`),
  KEY `word` (`word`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table exp_categories
# ------------------------------------------------------------

DROP TABLE IF EXISTS `exp_categories`;

CREATE TABLE `exp_categories` (
  `cat_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `site_id` int(4) unsigned NOT NULL DEFAULT '1',
  `group_id` int(6) unsigned NOT NULL,
  `parent_id` int(4) unsigned NOT NULL,
  `cat_name` varchar(100) NOT NULL,
  `cat_url_title` varchar(75) NOT NULL,
  `cat_description` text,
  `cat_image` varchar(120) DEFAULT NULL,
  `cat_order` int(4) unsigned NOT NULL,
  PRIMARY KEY (`cat_id`),
  KEY `group_id` (`group_id`),
  KEY `cat_name` (`cat_name`),
  KEY `site_id` (`site_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `exp_categories` WRITE;
/*!40000 ALTER TABLE `exp_categories` DISABLE KEYS */;

INSERT INTO `exp_categories` (`cat_id`, `site_id`, `group_id`, `parent_id`, `cat_name`, `cat_url_title`, `cat_description`, `cat_image`, `cat_order`)
VALUES
	(1,1,1,0,'FAQ Category One','faq-category-one','','',1),
	(2,1,1,0,'FAQ Category Two','faq-category-two','','',3),
	(3,1,1,0,'FAQ Category Three','faq-category-three','','',2),
	(4,1,5,0,'Compliance Watch Category One','compliance-watch-category-one','','',1),
	(5,1,5,0,'Compliance Watch Category Two','compliance-watch-category-two','','',3),
	(6,1,5,0,'Compliance Watch Category Three','compliance-watch-category-three','','',2),
	(7,1,3,0,'Forms & Resources Category One','forms-and-resources-category-one','','',1),
	(8,1,3,0,'Forms & Resources Category Two','forms-and-resources-category-two','','',3),
	(9,1,3,0,'Forms & Resources Category Three','forms-and-resources-category-three','','',2),
	(10,1,4,0,'Tools & Apps Category One','tools-and-apps-category-one','','',1),
	(11,1,4,0,'Tools & Apps Category Two','tools-and-apps-category-two','','',3),
	(12,1,4,0,'Tools & Apps Category Three','tools-and-apps-category-three','','',2),
	(13,1,2,0,'Videos Category One','videos-category-one','','',1),
	(14,1,2,0,'Videos Category Two','videos-category-two','','',3),
	(15,1,2,0,'Videos Category Three','videos-category-three','','',2);

/*!40000 ALTER TABLE `exp_categories` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table exp_category_field_data
# ------------------------------------------------------------

DROP TABLE IF EXISTS `exp_category_field_data`;

CREATE TABLE `exp_category_field_data` (
  `cat_id` int(4) unsigned NOT NULL,
  `site_id` int(4) unsigned NOT NULL DEFAULT '1',
  `group_id` int(4) unsigned NOT NULL,
  PRIMARY KEY (`cat_id`),
  KEY `site_id` (`site_id`),
  KEY `group_id` (`group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `exp_category_field_data` WRITE;
/*!40000 ALTER TABLE `exp_category_field_data` DISABLE KEYS */;

INSERT INTO `exp_category_field_data` (`cat_id`, `site_id`, `group_id`)
VALUES
	(1,1,1),
	(2,1,1),
	(3,1,1),
	(4,1,5),
	(5,1,5),
	(6,1,5),
	(7,1,3),
	(8,1,3),
	(9,1,3),
	(10,1,4),
	(11,1,4),
	(12,1,4),
	(13,1,2),
	(14,1,2),
	(15,1,2);

/*!40000 ALTER TABLE `exp_category_field_data` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table exp_category_fields
# ------------------------------------------------------------

DROP TABLE IF EXISTS `exp_category_fields`;

CREATE TABLE `exp_category_fields` (
  `field_id` int(6) unsigned NOT NULL AUTO_INCREMENT,
  `site_id` int(4) unsigned NOT NULL DEFAULT '1',
  `group_id` int(4) unsigned NOT NULL,
  `field_name` varchar(32) NOT NULL DEFAULT '',
  `field_label` varchar(50) NOT NULL DEFAULT '',
  `field_type` varchar(12) NOT NULL DEFAULT 'text',
  `field_list_items` text NOT NULL,
  `field_maxl` smallint(3) NOT NULL DEFAULT '128',
  `field_ta_rows` tinyint(2) NOT NULL DEFAULT '8',
  `field_default_fmt` varchar(40) NOT NULL DEFAULT 'none',
  `field_show_fmt` char(1) NOT NULL DEFAULT 'y',
  `field_text_direction` char(3) NOT NULL DEFAULT 'ltr',
  `field_required` char(1) NOT NULL DEFAULT 'n',
  `field_order` int(3) unsigned NOT NULL,
  PRIMARY KEY (`field_id`),
  KEY `site_id` (`site_id`),
  KEY `group_id` (`group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table exp_category_groups
# ------------------------------------------------------------

DROP TABLE IF EXISTS `exp_category_groups`;

CREATE TABLE `exp_category_groups` (
  `group_id` int(6) unsigned NOT NULL AUTO_INCREMENT,
  `site_id` int(4) unsigned NOT NULL DEFAULT '1',
  `group_name` varchar(50) NOT NULL,
  `sort_order` char(1) NOT NULL DEFAULT 'a',
  `exclude_group` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `field_html_formatting` char(4) NOT NULL DEFAULT 'all',
  `can_edit_categories` text,
  `can_delete_categories` text,
  PRIMARY KEY (`group_id`),
  KEY `site_id` (`site_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `exp_category_groups` WRITE;
/*!40000 ALTER TABLE `exp_category_groups` DISABLE KEYS */;

INSERT INTO `exp_category_groups` (`group_id`, `site_id`, `group_name`, `sort_order`, `exclude_group`, `field_html_formatting`, `can_edit_categories`, `can_delete_categories`)
VALUES
	(1,1,'FAQs','a',0,'all','',''),
	(2,1,'Videos','a',0,'all','',''),
	(3,1,'Forms and Resources','a',0,'all','',''),
	(4,1,'Tools and Apps','a',0,'all','',''),
	(5,1,'Compliance Watch','a',0,'all','',''),
	(6,1,'News and Events','a',0,'all','',''),
	(7,1,'Support Center','a',0,'all','','');

/*!40000 ALTER TABLE `exp_category_groups` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table exp_category_posts
# ------------------------------------------------------------

DROP TABLE IF EXISTS `exp_category_posts`;

CREATE TABLE `exp_category_posts` (
  `entry_id` int(10) unsigned NOT NULL,
  `cat_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`entry_id`,`cat_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `exp_category_posts` WRITE;
/*!40000 ALTER TABLE `exp_category_posts` DISABLE KEYS */;

INSERT INTO `exp_category_posts` (`entry_id`, `cat_id`)
VALUES
	(46,1),
	(47,2),
	(49,13),
	(50,14),
	(51,15),
	(52,7),
	(53,8),
	(54,9),
	(55,10),
	(56,11),
	(57,12),
	(58,4),
	(59,5),
	(60,6);

/*!40000 ALTER TABLE `exp_category_posts` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table exp_channel_data
# ------------------------------------------------------------

DROP TABLE IF EXISTS `exp_channel_data`;

CREATE TABLE `exp_channel_data` (
  `entry_id` int(10) unsigned NOT NULL,
  `site_id` int(4) unsigned NOT NULL DEFAULT '1',
  `channel_id` int(4) unsigned NOT NULL,
  `field_id_1` text,
  `field_ft_1` tinytext,
  `field_id_2` text,
  `field_ft_2` tinytext,
  `field_id_3` text,
  `field_ft_3` tinytext,
  `field_id_4` text,
  `field_ft_4` tinytext,
  `field_id_5` text,
  `field_ft_5` tinytext,
  `field_id_6` text,
  `field_ft_6` tinytext,
  `field_id_7` text,
  `field_ft_7` tinytext,
  `field_id_8` text,
  `field_ft_8` tinytext,
  `field_id_9` text,
  `field_ft_9` tinytext,
  `field_id_10` text,
  `field_ft_10` tinytext,
  `field_id_11` text,
  `field_ft_11` tinytext,
  `field_id_12` text,
  `field_ft_12` tinytext,
  `field_id_13` text,
  `field_ft_13` tinytext,
  `field_id_14` text,
  `field_ft_14` tinytext,
  `field_id_15` text,
  `field_ft_15` tinytext,
  `field_id_16` text,
  `field_ft_16` tinytext,
  `field_id_17` varchar(8) DEFAULT NULL,
  `field_ft_17` tinytext,
  `field_id_18` varchar(8) DEFAULT NULL,
  `field_ft_18` tinytext,
  `field_id_19` text,
  `field_ft_19` tinytext,
  `field_id_20` text,
  `field_ft_20` tinytext,
  `field_id_21` text,
  `field_ft_21` tinytext,
  `field_id_22` varchar(8) DEFAULT NULL,
  `field_ft_22` tinytext,
  `field_id_23` text,
  `field_ft_23` tinytext,
  `field_id_24` text,
  `field_ft_24` tinytext,
  `field_id_30` text,
  `field_ft_30` tinytext,
  `field_id_31` text,
  `field_ft_31` tinytext,
  `field_id_32` text,
  `field_ft_32` tinytext,
  `field_id_33` text,
  `field_ft_33` tinytext,
  `field_id_34` text,
  `field_ft_34` tinytext,
  `field_id_35` text,
  `field_ft_35` tinytext,
  `field_id_36` text,
  `field_ft_36` tinytext,
  `field_id_37` text,
  `field_ft_37` tinytext,
  `field_id_38` text,
  `field_ft_38` tinytext,
  `field_id_39` text,
  `field_ft_39` tinytext,
  `field_id_40` text,
  `field_ft_40` tinytext,
  `field_id_41` text,
  `field_ft_41` tinytext,
  `field_id_42` text,
  `field_ft_42` tinytext,
  `field_id_43` text,
  `field_ft_43` tinytext,
  `field_id_44` text,
  `field_ft_44` tinytext,
  `field_id_45` text,
  `field_ft_45` tinytext,
  `field_id_46` text,
  `field_ft_46` tinytext,
  `field_id_47` text,
  `field_ft_47` tinytext,
  `field_id_48` text,
  `field_ft_48` tinytext,
  `field_id_49` text,
  `field_ft_49` tinytext,
  `field_id_50` text,
  `field_ft_50` tinytext,
  `field_id_51` text,
  `field_ft_51` tinytext,
  `field_id_52` text,
  `field_ft_52` tinytext,
  `field_id_53` text,
  `field_ft_53` tinytext,
  `field_id_55` text,
  `field_ft_55` tinytext,
  `field_id_56` text,
  `field_ft_56` tinytext,
  `field_id_57` varchar(8) DEFAULT NULL,
  `field_ft_57` tinytext,
  `field_id_58` text,
  `field_ft_58` tinytext,
  `field_id_59` text,
  `field_ft_59` tinytext,
  `field_id_60` text,
  `field_ft_60` tinytext,
  `field_id_61` text,
  `field_ft_61` tinytext,
  `field_id_62` text,
  `field_ft_62` tinytext,
  `field_id_63` text,
  `field_ft_63` tinytext,
  `field_id_66` text,
  `field_ft_66` tinytext,
  `field_id_67` text,
  `field_ft_67` tinytext,
  `field_id_68` text,
  `field_ft_68` tinytext,
  `field_id_70` text,
  `field_ft_70` tinytext,
  `field_id_71` text,
  `field_ft_71` tinytext,
  `field_id_72` text,
  `field_ft_72` tinytext,
  `field_id_73` text,
  `field_ft_73` tinytext,
  `field_id_74` text,
  `field_ft_74` tinytext,
  `field_id_75` text,
  `field_ft_75` tinytext,
  `field_id_76` text,
  `field_ft_76` tinytext,
  `field_id_77` text,
  `field_ft_77` tinytext,
  `field_id_78` text,
  `field_ft_78` tinytext,
  `field_id_79` text,
  `field_ft_79` tinytext,
  `field_id_80` text,
  `field_ft_80` tinytext,
  `field_id_81` varchar(8) DEFAULT NULL,
  `field_ft_81` tinytext,
  `field_id_82` varchar(8) DEFAULT NULL,
  `field_ft_82` tinytext,
  `field_id_83` text,
  `field_ft_83` tinytext,
  `field_id_84` text,
  `field_ft_84` tinytext,
  `field_id_85` text,
  `field_ft_85` tinytext,
  `field_id_86` text,
  `field_ft_86` tinytext,
  `field_id_87` text,
  `field_ft_87` tinytext,
  PRIMARY KEY (`entry_id`),
  KEY `channel_id` (`channel_id`),
  KEY `site_id` (`site_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `exp_channel_data` WRITE;
/*!40000 ALTER TABLE `exp_channel_data` DISABLE KEYS */;

INSERT INTO `exp_channel_data` (`entry_id`, `site_id`, `channel_id`, `field_id_1`, `field_ft_1`, `field_id_2`, `field_ft_2`, `field_id_3`, `field_ft_3`, `field_id_4`, `field_ft_4`, `field_id_5`, `field_ft_5`, `field_id_6`, `field_ft_6`, `field_id_7`, `field_ft_7`, `field_id_8`, `field_ft_8`, `field_id_9`, `field_ft_9`, `field_id_10`, `field_ft_10`, `field_id_11`, `field_ft_11`, `field_id_12`, `field_ft_12`, `field_id_13`, `field_ft_13`, `field_id_14`, `field_ft_14`, `field_id_15`, `field_ft_15`, `field_id_16`, `field_ft_16`, `field_id_17`, `field_ft_17`, `field_id_18`, `field_ft_18`, `field_id_19`, `field_ft_19`, `field_id_20`, `field_ft_20`, `field_id_21`, `field_ft_21`, `field_id_22`, `field_ft_22`, `field_id_23`, `field_ft_23`, `field_id_24`, `field_ft_24`, `field_id_30`, `field_ft_30`, `field_id_31`, `field_ft_31`, `field_id_32`, `field_ft_32`, `field_id_33`, `field_ft_33`, `field_id_34`, `field_ft_34`, `field_id_35`, `field_ft_35`, `field_id_36`, `field_ft_36`, `field_id_37`, `field_ft_37`, `field_id_38`, `field_ft_38`, `field_id_39`, `field_ft_39`, `field_id_40`, `field_ft_40`, `field_id_41`, `field_ft_41`, `field_id_42`, `field_ft_42`, `field_id_43`, `field_ft_43`, `field_id_44`, `field_ft_44`, `field_id_45`, `field_ft_45`, `field_id_46`, `field_ft_46`, `field_id_47`, `field_ft_47`, `field_id_48`, `field_ft_48`, `field_id_49`, `field_ft_49`, `field_id_50`, `field_ft_50`, `field_id_51`, `field_ft_51`, `field_id_52`, `field_ft_52`, `field_id_53`, `field_ft_53`, `field_id_55`, `field_ft_55`, `field_id_56`, `field_ft_56`, `field_id_57`, `field_ft_57`, `field_id_58`, `field_ft_58`, `field_id_59`, `field_ft_59`, `field_id_60`, `field_ft_60`, `field_id_61`, `field_ft_61`, `field_id_62`, `field_ft_62`, `field_id_63`, `field_ft_63`, `field_id_66`, `field_ft_66`, `field_id_67`, `field_ft_67`, `field_id_68`, `field_ft_68`, `field_id_70`, `field_ft_70`, `field_id_71`, `field_ft_71`, `field_id_72`, `field_ft_72`, `field_id_73`, `field_ft_73`, `field_id_74`, `field_ft_74`, `field_id_75`, `field_ft_75`, `field_id_76`, `field_ft_76`, `field_id_77`, `field_ft_77`, `field_id_78`, `field_ft_78`, `field_id_79`, `field_ft_79`, `field_id_80`, `field_ft_80`, `field_id_81`, `field_ft_81`, `field_id_82`, `field_ft_82`, `field_id_83`, `field_ft_83`, `field_id_84`, `field_ft_84`, `field_id_85`, `field_ft_85`, `field_id_86`, `field_ft_86`, `field_id_87`, `field_ft_87`)
VALUES
	(1,1,3,'','xhtml','','xhtml','','xhtml','','none','','none','','xhtml','','none','','none','','xhtml','','xhtml','','none','','none','','xhtml','','xhtml','','none','','none','','xhtml','','xhtml','','none','','none','<h2>h2 Headline</h2>\n\n<h3>h3 headline</h3>\n\n<h4>h4 headline</h4>\n\n<h5>h5 headline</h5>\n\n<h6>h6 headline</h6>','none','','xhtml','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','xhtml','','none','','none','','none','','none','','none','','xhtml','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','xhtml','','xhtml','','none','','none','','none','','xhtml','','xhtml'),
	(2,1,3,'','xhtml','','xhtml','','xhtml','','none','','none','','xhtml','','none','','none','','xhtml','','xhtml','','none','','none','','xhtml','','xhtml','','none','','none','','xhtml','','xhtml','','none','<p>This is an overview of what this page is all about. Chard Snyder is nist ut parchil laccusantem fugit es inimusam acia vello maximus. Atibus ad quam, quo idus, sit que nus ipsapi dusda vid que labore vent.</p>','none','<div><img alt=\"\" src=\"http://chard-snyder.asddev.com/uploads/pages/image-example.jpg\" /></div>\n\n<h2>Second Level Headline</h2>\n\n<p>Flexible Spending Accounts (FSAs) are part of an IRS regulated, employer-sponsored benefit plan that allows participants to voluntarily convert part of their compensation into tax-free benefits. Contributions made through FSAs are normally free of federal, state and Social Security taxes. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Etiam porta sem malesuada magna mollis sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vestibulum id ligula porta felis euismod semper. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Donec ullamcorper nulla non metus auctor fringilla.</p>\n\n<div><img alt=\"\" class=\"float-right\" src=\"http://chard-snyder.asddev.com/uploads/slides/home-highlight-slide-example.jpg\" /></div>\n\n<div>Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Cras justo odio, dapibus ac facilisis in, egestas sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Nulla vitae elit libero, a pharetra augue. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Flexible Spending Accounts (FSAs) are part of an IRS regulated, employer-sponsored benefit plan that allows participants to voluntarily convert part of their compensation into tax-free benefits. Contributions made through FSAs are normally free of federal, state and Social Security taxes. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Etiam porta sem malesuada magna mollis sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vestibulum id ligula porta felis euismod semper. Praesent commodo cursus magna, vel scelerisque nisl consectetur et.</div>\n\n<p>Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Cras justo odio, dapibus ac facilisis in, egestas sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Nulla vitae elit libero, a pharetra augue.</p>','none','','xhtml','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','xhtml','','none','','none','','none','','none','','none','','xhtml','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','xhtml','','xhtml','','none','','none','','none','','xhtml','','xhtml'),
	(3,1,3,'','xhtml','','xhtml','','xhtml','','none','','none','','xhtml','','none','','none','','xhtml','','xhtml','','none','','none','','xhtml','','xhtml','','none','','none','','xhtml','','xhtml','','none','','none','<p>Donec ullamcorper nulla non metus auctor fringilla. Maecenas sed diam eget risus varius blandit sit amet non magna. Nullam quis risus eget urna mollis ornare vel eu leo.</p>\n\n<p><a class=\"button\" href=\"#\">test button</a></p>','none','','xhtml','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','xhtml','','none','','none','','none','','none','','none','','xhtml','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','xhtml','','xhtml','','none','','none','','none','','xhtml','','xhtml'),
	(4,1,3,'','xhtml','','xhtml','','xhtml','','none','','none','','xhtml','','none','','none','','xhtml','','xhtml','','none','','none','','xhtml','','xhtml','','none','','none','','xhtml','','xhtml','','none','','none','','none','','xhtml','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','xhtml','','none','','none','','none','','none','','none','','xhtml','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','xhtml','','xhtml','','none','','none','','none','','xhtml','','xhtml'),
	(5,1,3,'','xhtml','','xhtml','','xhtml','','none','','none','','xhtml','','none','','none','','xhtml','','xhtml','','none','','none','','xhtml','','xhtml','','none','','none','','xhtml','','xhtml','','none','','none','','none','','xhtml','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','xhtml','','none','','none','','none','','none','','none','','xhtml','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','xhtml','','xhtml','','none','','none','','none','','xhtml','','xhtml'),
	(6,1,4,'','xhtml','','xhtml','','xhtml','','none','','none','','xhtml','','none','','none','','xhtml','','xhtml','','none','','none','','xhtml','','xhtml','','none','','none','','xhtml','','xhtml','','none','','none','','none','','xhtml','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','xhtml','','none','','none','','none','','none','','none','','xhtml','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','xhtml','','xhtml','','none','','none','','none','','xhtml','','xhtml'),
	(7,1,3,'','xhtml','','xhtml','','xhtml','','none','','none','','xhtml','','none','','none','','xhtml','','xhtml','','none','','none','','xhtml','','xhtml','','none','','none','','xhtml','','xhtml','','none','','none','','none','','xhtml','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','xhtml','','none','','none','','none','','none','','none','','xhtml','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','xhtml','','xhtml','','none','','none','','none','','xhtml','','xhtml'),
	(8,1,3,'','xhtml','','xhtml','','xhtml','','none','','none','','xhtml','','none','','none','','xhtml','','xhtml','','none','','none','','xhtml','','xhtml','','none','','none','','xhtml','','xhtml','','none','','none','','none','','xhtml','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','xhtml','','none','','none','','none','','none','','none','','xhtml','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','xhtml','','xhtml','','none','','none','','none','','xhtml','','xhtml'),
	(9,1,3,'','xhtml','','xhtml','','xhtml','','none','','none','','xhtml','','none','','none','','xhtml','','xhtml','','none','','none','','xhtml','','xhtml','','none','','none','','xhtml','','xhtml','','none','','none','','none','','xhtml','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','xhtml','','none','','none','','none','','none','','none','','xhtml','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','xhtml','','xhtml','','none','','none','','none','','xhtml','','xhtml'),
	(10,1,3,'','xhtml','','xhtml','','xhtml','','none','','none','','xhtml','','none','','none','','xhtml','','xhtml','','none','','none','','xhtml','','xhtml','','none','','none','','xhtml','','xhtml','','none','','none','','none','','xhtml','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','xhtml','','none','','none','','none','','none','','none','','xhtml','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','xhtml','','xhtml','','none','','none','','none','','xhtml','','xhtml'),
	(11,1,3,'','xhtml','','xhtml','','xhtml','','none','','none','','xhtml','','none','','none','','xhtml','','xhtml','','none','','none','','xhtml','','xhtml','','none','','none','','xhtml','','xhtml','','none','','none','','none','','xhtml','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','xhtml','','none','','none','','none','','none','','none','','xhtml','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','xhtml','','xhtml','','none','','none','','none','','xhtml','','xhtml'),
	(12,1,3,'','xhtml','','xhtml','','xhtml','','none','','none','','xhtml','','none','','none','','xhtml','','xhtml','','none','','none','','xhtml','','xhtml','','none','','none','','xhtml','','xhtml','','none','','none','','none','','xhtml','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','xhtml','','none','','none','','none','','none','','none','','xhtml','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','xhtml','','xhtml','','none','','none','','none','','xhtml','','xhtml'),
	(13,1,4,'','xhtml','','xhtml','','xhtml','','none','','none','','xhtml','','none','','none','','xhtml','','xhtml','','none','','none','','xhtml','','xhtml','','none','','none','','xhtml','','xhtml','','none','','none','','none','','xhtml','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','xhtml','','none','','none','','none','','none','','none','','xhtml','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','xhtml','','xhtml','','none','','none','','none','','xhtml','','xhtml'),
	(14,1,3,'','xhtml','','xhtml','','xhtml','','none','','none','','xhtml','','none','','none','','xhtml','','xhtml','','none','','none','','xhtml','','xhtml','','none','','none','','xhtml','','xhtml','','none','','none','','none','','xhtml','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','xhtml','','none','','none','','none','','none','','none','','xhtml','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','xhtml','','xhtml','','none','','none','','none','','xhtml','','xhtml'),
	(15,1,3,'','xhtml','','xhtml','','xhtml','','none','','none','','xhtml','','none','','none','','xhtml','','xhtml','','none','','none','','xhtml','','xhtml','','none','','none','','xhtml','','xhtml','','none','','none','','none','','xhtml','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','xhtml','','none','','none','','none','','none','','none','','xhtml','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','xhtml','','xhtml','','none','','none','','none','','xhtml','','xhtml'),
	(16,1,3,'','xhtml','','xhtml','','xhtml','','none','','none','','xhtml','','none','','none','','xhtml','','xhtml','','none','','none','','xhtml','','xhtml','','none','','none','','xhtml','','xhtml','','none','','none','','none','','xhtml','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','xhtml','','none','','none','','none','','none','','none','','xhtml','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','xhtml','','xhtml','','none','','none','','none','','xhtml','','xhtml'),
	(17,1,3,'','xhtml','','xhtml','','xhtml','','none','','none','','xhtml','','none','','none','','xhtml','','xhtml','','none','','none','','xhtml','','xhtml','','none','','none','','xhtml','','xhtml','','none','','none','','none','','xhtml','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','xhtml','','none','','none','','none','','none','','none','','xhtml','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','xhtml','','xhtml','','none','','none','','none','','xhtml','','xhtml'),
	(18,1,3,'','xhtml','','xhtml','','xhtml','','none','','none','','xhtml','','none','','none','','xhtml','','xhtml','','none','','none','','xhtml','','xhtml','','none','','none','','xhtml','','xhtml','','none','','none','','none','','xhtml','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','xhtml','','none','','none','','none','','none','','none','','xhtml','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','xhtml','','xhtml','','none','','none','','none','','xhtml','','xhtml'),
	(19,1,3,'','xhtml','','xhtml','','xhtml','','none','','none','','xhtml','','none','','none','','xhtml','','xhtml','','none','','none','','xhtml','','xhtml','','none','','none','','xhtml','','xhtml','','none','','none','','none','','xhtml','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','xhtml','','none','','none','','none','','none','','none','','xhtml','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','xhtml','','xhtml','','none','','none','','none','','xhtml','','xhtml'),
	(20,1,3,'','xhtml','','xhtml','','xhtml','','none','','none','','xhtml','','none','','none','','xhtml','','xhtml','','none','','none','','xhtml','','xhtml','','none','','none','','xhtml','','xhtml','','none','','none','','none','','xhtml','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','xhtml','','none','','none','','none','','none','','none','','xhtml','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','xhtml','','xhtml','','none','','none','','none','','xhtml','','xhtml'),
	(21,1,3,'','xhtml','','xhtml','','xhtml','','none','','none','','xhtml','','none','','none','','xhtml','','xhtml','','none','','none','','xhtml','','xhtml','','none','','none','','xhtml','','xhtml','','none','','none','','none','','xhtml','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','xhtml','','none','','none','','none','','none','','none','','xhtml','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','xhtml','','xhtml','','none','','none','','none','','xhtml','','xhtml'),
	(22,1,3,'','xhtml','','xhtml','','xhtml','','none','','none','','xhtml','','none','','none','','xhtml','','xhtml','','none','','none','','xhtml','','xhtml','','none','','none','','xhtml','','xhtml','','none','','none','','none','','xhtml','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','xhtml','','none','','none','','none','','none','','none','','xhtml','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','xhtml','','xhtml','','none','','none','','none','','xhtml','','xhtml'),
	(23,1,3,'','xhtml','','xhtml','','xhtml','','none','','none','','xhtml','','none','','none','','xhtml','','xhtml','','none','','none','','xhtml','','xhtml','','none','','none','','xhtml','','xhtml','','none','','none','','none','','xhtml','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','xhtml','','none','','none','','none','','none','','none','','xhtml','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','xhtml','','xhtml','','none','','none','','none','','xhtml','','xhtml'),
	(24,1,3,'','xhtml','','xhtml','','xhtml','','none','','none','','xhtml','','none','','none','','xhtml','','xhtml','','none','','none','','xhtml','','xhtml','','none','','none','','xhtml','','xhtml','','none','','none','','none','','xhtml','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','xhtml','','none','','none','','none','','none','','none','','xhtml','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','xhtml','','xhtml','','none','','none','','none','','xhtml','','xhtml'),
	(25,1,3,'','xhtml','','xhtml','','xhtml','','none','','none','','xhtml','','none','','none','','xhtml','','xhtml','','none','','none','','xhtml','','xhtml','','none','','none','','xhtml','','xhtml','','none','','none','','none','','xhtml','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','xhtml','','none','','none','','none','','none','','none','','xhtml','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','xhtml','','xhtml','','none','','none','','none','','xhtml','','xhtml'),
	(26,1,3,'','xhtml','','xhtml','','xhtml','','none','','none','','xhtml','','none','','none','','xhtml','','xhtml','','none','','none','','xhtml','','xhtml','','none','','none','','xhtml','','xhtml','','none','','none','','none','','xhtml','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','xhtml','','none','','none','','none','','none','','none','','xhtml','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','xhtml','','xhtml','','none','','none','','none','','xhtml','','xhtml'),
	(27,1,3,'','xhtml','','xhtml','','xhtml','','none','','none','','xhtml','','none','','none','','xhtml','','xhtml','','none','','none','','xhtml','','xhtml','','none','','none','','xhtml','','xhtml','','none','','none','','none','','xhtml','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','xhtml','','none','','none','','none','','none','','none','','xhtml','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','xhtml','','xhtml','','none','','none','','none','','xhtml','','xhtml'),
	(28,1,3,'','xhtml','','xhtml','','xhtml','','none','','none','','xhtml','','none','','none','','xhtml','','xhtml','','none','','none','','xhtml','','xhtml','','none','','none','','xhtml','','xhtml','','none','','none','','none','','xhtml','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','xhtml','','none','','none','','none','','none','','none','','xhtml','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','xhtml','','xhtml','','none','','none','','none','','xhtml','','xhtml'),
	(29,1,3,'','xhtml','','xhtml','','xhtml','','none','','none','','xhtml','','none','','none','','xhtml','','xhtml','','none','','none','','xhtml','','xhtml','','none','','none','','xhtml','','xhtml','','none','','none','','none','','xhtml','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','xhtml','','none','','none','','none','','none','','none','','xhtml','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','xhtml','','xhtml','','none','','none','','none','','xhtml','','xhtml'),
	(30,1,3,'','xhtml','','xhtml','','xhtml','','none','','none','','xhtml','','none','','none','','xhtml','','xhtml','','none','','none','','xhtml','','xhtml','','none','','none','','xhtml','','xhtml','','none','','none','','none','','xhtml','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','xhtml','','none','','none','','none','','none','','none','','xhtml','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','xhtml','','xhtml','','none','','none','','none','','xhtml','','xhtml'),
	(31,1,5,'','xhtml','','xhtml','','xhtml','','none','','none','','xhtml','','none','','none','','xhtml','','xhtml','','none','','none','','xhtml','','xhtml','','none','','none','','xhtml','','xhtml','','none','','none','','none','','xhtml','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','xhtml','','none','','none','','none','','none','','none','','xhtml','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','xhtml','','xhtml','','none','','none','','none','','xhtml','','xhtml'),
	(37,1,3,'','xhtml','','xhtml','','xhtml','','none','','none','','xhtml','','none','','none','','xhtml','','xhtml','','none','','none','','xhtml','','xhtml','','none','','none','','xhtml','','xhtml','','none','','none','','none','','xhtml','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','xhtml','','none','','none','','none','','none','','none','','xhtml','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','xhtml','','xhtml','','none','','none','','none','','xhtml','','xhtml'),
	(38,1,16,'','xhtml','','xhtml','','xhtml','','none','','none','','xhtml','','none','','none','','xhtml','','xhtml','','none','','none','','xhtml','','xhtml','','none','','none','','xhtml','','xhtml','','none','','none','','none','','xhtml','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','xhtml','','none','','none','','none','','none','','none','','xhtml','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','xhtml','','xhtml','','none','','none','','none','','xhtml','','xhtml'),
	(39,1,18,'','xhtml','','xhtml','','xhtml','','none','','none','','xhtml','','none','','none','','xhtml','','xhtml','','none','','none','','xhtml','','xhtml','','none','','none','','xhtml','','xhtml','','none','','none','','none','','xhtml','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','<p>This is an overview of what this page is all about. Chard Snyder is nist ut parchil laccusantem fugit es inimusam acia vello maximus. Atibus ad quam, quo idus, sit que nus ipsapi dusda vid que labore vent.</p>','none','','none','','none','','none','','none','','none','','none','','none','','none','','xhtml','','none','','none','','none','','none','','none','','xhtml','','none','','none','','none','Title Override','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','xhtml','','xhtml','','none','','none','','none','','xhtml','','xhtml'),
	(40,1,20,'','xhtml','','xhtml','','xhtml','','none','','none','','xhtml','','none','','none','','xhtml','','xhtml','','none','','none','','xhtml','','xhtml','','none','','none','','xhtml','','xhtml','','none','','none','','none','','xhtml','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','xhtml','','none','','none','','none','','none','','none','','xhtml','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','xhtml','','xhtml','','none','','none','','none','','xhtml','','xhtml'),
	(88,1,17,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,NULL,NULL,NULL,NULL,'',NULL,'',NULL,'',NULL,NULL,NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'','none','{filedir_6}bio-photo-example.jpg','none','','none','',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,NULL,NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','xhtml','','xhtml','','none','','none','','none','','xhtml','','xhtml'),
	(42,1,3,'','xhtml','','xhtml','','xhtml','','none','','none','','xhtml','','none','','none','','xhtml','','xhtml','','none','','none','','xhtml','','xhtml','','none','','none','','xhtml','','xhtml','','none','','none','','none','','xhtml','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','xhtml','','none','','none','','none','','none','','none','','xhtml','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','xhtml','','xhtml','','none','','none','','none','','xhtml','','xhtml'),
	(43,1,23,'','xhtml','','xhtml','','xhtml','','none','','none','','xhtml','','none','','none','','xhtml','','xhtml','','none','','none','','xhtml','','xhtml','','none','','none','','xhtml','','xhtml','','none','','none','','none','','xhtml','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','xhtml','','none','','none','','none','','none','','none','','xhtml','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','xhtml','','xhtml','','none','','none','','none','','xhtml','','xhtml'),
	(44,1,25,'','xhtml','','xhtml','','xhtml','','none','','none','','xhtml','','none','','none','','xhtml','','xhtml','','none','','none','','xhtml','','xhtml','','none','','none','','xhtml','','xhtml','','none','','none','','none','','xhtml','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','xhtml','','none','','none','','none','<p>This is an overview of what this page is all about. Chard Snyder is nist ut parchil laccusantem fugit es inimusam acia vello maximus. Atibus ad quam, quo idus, sit que nus ipsapi dusda vid que labore vent.</p>','none','<p>Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Cras justo odio, dapibus ac facilisis in, egestas sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Nulla vitae elit libero, a pharetra augue. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Cras justo odio, dapibus ac facilisis in, egestas eget quam.</p>','none',' ','xhtml','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','xhtml','','xhtml','','none','','none','','none','','xhtml','','xhtml'),
	(45,1,3,'','xhtml','','xhtml','','xhtml','','none','','none','','xhtml','','none','','none','','xhtml','','xhtml','','none','','none','','xhtml','','xhtml','','none','','none','','xhtml','','xhtml','','none','','none','','none','','xhtml','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','xhtml','','none','','none','','none','','none','','none','','xhtml','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','xhtml','','xhtml','','none','','none','','none','','xhtml','','xhtml'),
	(46,1,7,'','xhtml','','xhtml','','xhtml','','none','','none','','xhtml','','none','','none','','xhtml','','xhtml','','none','','none','','xhtml','','xhtml','','none','','none','','xhtml','','xhtml','','none','','none','','none','','xhtml','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','xhtml','','none','','none','','none','','none','','none','','xhtml','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','xhtml','','xhtml','','none','','none','','none','','xhtml','','xhtml'),
	(47,1,7,'','xhtml','','xhtml','','xhtml','','none','','none','','xhtml','','none','','none','','xhtml','','xhtml','','none','','none','','xhtml','','xhtml','','none','','none','','xhtml','','xhtml','','none','','none','','none','','xhtml','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','xhtml','','none','','none','','none','','none','','none','','xhtml','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','xhtml','','xhtml','','none','','none','','none','','xhtml','','xhtml'),
	(48,1,7,'','xhtml','','xhtml','','xhtml','','none','','none','','xhtml','','none','','none','','xhtml','','xhtml','','none','','none','','xhtml','','xhtml','','none','','none','','xhtml','','xhtml','','none','','none','','none','','xhtml','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','xhtml','','none','','none','','none','','none','','none','','xhtml','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','xhtml','','xhtml','','none','','none','','none','','xhtml','','xhtml'),
	(49,1,9,'','xhtml','','xhtml','','xhtml','','none','','none','','xhtml','','none','','none','','xhtml','','xhtml','','none','','none','','xhtml','','xhtml','','none','','none','','xhtml','','xhtml','','none','','none','','none','','xhtml','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','xhtml','','none','','none','','none','','none','','none','','xhtml','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','xhtml','','xhtml','','none','','none','','none','','xhtml','','xhtml'),
	(50,1,9,'','xhtml','','xhtml','','xhtml','','none','','none','','xhtml','','none','','none','','xhtml','','xhtml','','none','','none','','xhtml','','xhtml','','none','','none','','xhtml','','xhtml','','none','','none','','none','','xhtml','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','xhtml','','none','','none','','none','','none','','none','','xhtml','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','xhtml','','xhtml','','none','','none','','none','','xhtml','','xhtml'),
	(51,1,9,'','xhtml','','xhtml','','xhtml','','none','','none','','xhtml','','none','','none','','xhtml','','xhtml','','none','','none','','xhtml','','xhtml','','none','','none','','xhtml','','xhtml','','none','','none','','none','','xhtml','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','xhtml','','none','','none','','none','','none','','none','','xhtml','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','xhtml','','xhtml','','none','','none','','none','','xhtml','','xhtml'),
	(52,1,11,'','xhtml','','xhtml','','xhtml','','none','','none','','xhtml','','none','','none','','xhtml','','xhtml','','none','','none','','xhtml','','xhtml','','none','','none','','xhtml','','xhtml','','none','','none','','none','','xhtml','','none','','none','','none','','none','','none','','none','','none','{filedir_3}download.pdf','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','xhtml','','none','','none','','none','','none','','none','','xhtml','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','xhtml','','xhtml','','none','','none','','none','','xhtml','','xhtml'),
	(53,1,11,'','xhtml','','xhtml','','xhtml','','none','','none','','xhtml','','none','','none','','xhtml','','xhtml','','none','','none','','xhtml','','xhtml','','none','','none','','xhtml','','xhtml','','none','','none','','none','','xhtml','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','xhtml','','none','','none','','none','','none','','none','','xhtml','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','xhtml','','xhtml','','none','','none','','none','','xhtml','','xhtml'),
	(54,1,11,'','xhtml','','xhtml','','xhtml','','none','','none','','xhtml','','none','','none','','xhtml','','xhtml','','none','','none','','xhtml','','xhtml','','none','','none','','xhtml','','xhtml','','none','','none','','none','','xhtml','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','xhtml','','none','','none','','none','','none','','none','','xhtml','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','xhtml','','xhtml','','none','','none','','none','','xhtml','','xhtml'),
	(55,1,13,'','xhtml','','xhtml','','xhtml','','none','','none','','xhtml','','none','','none','','xhtml','','xhtml','','none','','none','','xhtml','','xhtml','','none','','none','','xhtml','','xhtml','','none','','none','','none','','xhtml','','none','','none','','none','','none','','none','','none','','none','','none','<p>This is an overview of what this page is all about. Chard Snyder is nist ut parchil laccusantem fugit es inimusam acia vello maximus. Atibus ad quam, quo idus, sit que nus ipsapi dusda vid que labore vent.</p>','none','<p>The Tax Savings Calculator is designed to help you determine how much your Flexible Benefit Plan will save you on your taxes. Please complete the applicable information below, and then click on \"Calculate Tax Savings,\" to view your results.</p>\n\n<div class=\"form\">\n\n	<form name=\"TaxSavingsCalcForm\" action=\"/support-center/taxcalc_function?function=CalculateTaxSavings\" method=\"post\">\n\n		<fieldset>\n\n			<legend>Annual Income</legend>\n\n			<ul>\n\n				<li>\n\n					<label for=\"AnnualSalary\">1. Enter your annual salary BEFORE taxes.</label>\n\n					<input type=\"text\" name=\"AnnualSalary\" id=\"AnnualSalary\" />\n\n				</li>\n\n				<li>\n\n					<label for=\"SpouseSalary\">2. Enter your spouse\'s annual salary BEFORE taxes (if filing jointly).</label>\n\n					<input type=\"text\" name=\"SpouseSalary\" id=\"SpouseSalary\" value=\"0\" />\n\n				</li>\n\n				<li>\n\n					<fieldset>\n\n						<legend>3. Select your tax filing status:</legend>\n\n						<ul>\n\n							<li>\n\n								<label for=\"Single\">\n\n									<input type=\"radio\" name=\"FilingStatus\" id=\"Single\" value=\"Single\" /> Single\n\n								</label>\n\n							</li>\n\n							<li>\n\n								<label for=\"MarriedFilingJointly\">\n\n									<input type=\"radio\" name=\"FilingStatus\" id=\"MarriedFilingJointly\" value=\"MarriedFilingJointly\" /> Filing Jointly or Qualifying Widow(er)\n\n								</label>\n\n							</li>\n\n							<li>\n\n								<label for=\"MarriedFilingSeparately\">\n\n									<input type=\"radio\" name=\"FilingStatus\" id=\"MarriedFilingSeparately\" value=\"MarriedFilingSeparately\" /> Married, Filing Separately\n\n								</label>\n\n							</li>\n\n							<li>\n\n								<label for=\"HeadOfHousehold\">\n\n									<input type=\"radio\" name=\"FilingStatus\" id=\"HeadOfHousehold\" value=\"HeadOfHousehold\" /> Head of Household\n\n								</label>\n\n							</li>\n\n						</ul>\n\n					</fieldset>\n\n				</li>\n\n				<li>\n\n					<label for=\"StateTaxPercent\">4. Enter your state income tax percentage</label>\n\n					<input type=\"text\" name=\"StateTaxPercent\" id=\"StateTaxPercent\" onBlur=\"document.forms[0].AnnualInsurancePremium.focus();\" />\n\n				</li>\n\n			</ul>\n\n		</fieldset>\n\n		<fieldset>\n\n			<legend>Annual Benefit Contributions</legend>\n\n			<ul>\n\n				<li>\n\n					<label for=\"AnnualInsurancePremium\">1. Enter the annual amount you will spend on your payroll deducted insurance premiums. These are qualified insurance premiums that can be pre-taxed through the Flexible Benefit Plan (i.e. health insurance, dental insurance, and group term life of up to $50,000 coverage).</label>\n\n					<div class=\"with-label\">\n\n						<span class=\"label\">$</span> <input type=\"text\" name=\"AnnualInsurancePremium\" id=\"AnnualInsurancePremium\" value=\"0\" />\n\n					</div>\n\n				</li>\n\n				<li>\n\n					<label for=\"AnnualMedicalSpending\">2. Enter the annual amount you wish to contribute to your Healthcare Flexible Spending Account (FSA). These funds are used for reimbursing your qualified out-of-pocket healthcare expenses.</label>\n\n					<div class=\"with-label\">\n\n						<span class=\"label\">$</span> <input type=\"text\" name=\"AnnualMedicalSpending\" id=\"AnnualMedicalSpending\" value=\"0\" />\n\n					</div>\n\n				</li>\n\n				<li>\n\n					<label for=\"AnnualDependentCareSpending\">3. Enter the annual amount you wish to contribute to your Dependent Care Flexible Spending Account (FSA). These funds are used for reimbursing your qualified child and/or adult dependent daycare expenses.&nbsp; The IRS maximum is currently $5,000 if married filing jointly and $2,500 if filing separately.</label>\n\n					<div class=\"with-label\">\n\n						<span class=\"label\">$</span> <input type=\"text\" name=\"AnnualDependentCareSpending\" id=\"AnnualDependentCareSpending\" value=\"0\" />\n\n					</div>\n\n				</li>\n\n				<li>\n\n					<label for=\"AnnualTransportationSpending\">4. Enter the annual amount you wish to contribute to your Health Savings Account (HSA). These funds are used for reimbursing your qualified out-of-pocket healthcare expenses. The maximum allowable contribution is limited to the lesser of the insurance plan deductible or the IRS maximum. Indexed annually, for 2015 the maximum amount is $3,350 for an individual or $6,650 for a family.</label>\n\n					<div class=\"with-label\">\n\n						<span class=\"label\">$</span> <input type=\"text\" name=\"AnnualTransportationSpending\" id=\"AnnualTransportationSpending\" value=\"0\" />\n\n					</div>\n\n				</li>\n\n				<li>\n\n					<label for=\"AnnualRetirementContribution\">5. Enter the annual amount you wish to contribute to your Transportation and Parking plan. These funds are used for reimbursing your qualified parking fees and/or mass transit expenses. The maximum allowable contribution is determined by your employer.</label>\n\n					<div class=\"with-label\">\n\n						<span class=\"label\">$</span> <input type=\"text\" name=\"AnnualRetirementContribution\" id=\"AnnualRetirementContribution\" value=\"0\" />\n\n					</div>\n\n				</li>\n\n			</ul>\n\n		</fieldset>\n\n		<input type=\"button\" name=\"Submit2\" value=\"Calculate Tax Savings\" onClick=\"checkForm(this);\" />\n\n		<input type=\"reset\" value=\"Reset\" name=\"reset2\" />\n\n	</form>\n\n</div>','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','xhtml','','none','','none','','none','','none','','none','','xhtml','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','xhtml','','xhtml','','none','','none','','none','','xhtml','','xhtml'),
	(56,1,13,'','xhtml','','xhtml','','xhtml','','none','','none','','xhtml','','none','','none','','xhtml','','xhtml','','none','','none','','xhtml','','xhtml','','none','','none','','xhtml','','xhtml','','none','','none','','none','','xhtml','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','xhtml','','none','','none','','none','','none','','none','','xhtml','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','xhtml','','xhtml','','none','','none','','none','','xhtml','','xhtml'),
	(57,1,13,'','xhtml','','xhtml','','xhtml','','none','','none','','xhtml','','none','','none','','xhtml','','xhtml','','none','','none','','xhtml','','xhtml','','none','','none','','xhtml','','xhtml','','none','','none','','none','','xhtml','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','xhtml','','none','','none','','none','','none','','none','','xhtml','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','xhtml','','xhtml','','none','','none','','none','','xhtml','','xhtml'),
	(58,1,15,'','xhtml','','xhtml','','xhtml','','none','','none','','xhtml','','none','','none','','xhtml','','xhtml','','none','','none','','xhtml','','xhtml','','none','','none','','xhtml','','xhtml','','none','','none','','none','','xhtml','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','<table border=\"1px\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\">\n	<tbody>\n		<tr>\n			<td>Individual</td>\n			<td>$3,350 (no change)</td>\n		</tr>\n		<tr>\n			<td>Family</td>\n			<td>$6,750 (increase of $100)</td>\n		</tr>\n		<tr>\n			<td>Catch-up for Age 55+</td>\n			<td>$1,000 (no change)</td>\n		</tr>\n	</tbody>\n</table>','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','xhtml','','none','','none','','none','','none','','none','','xhtml','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','xhtml','','xhtml','','none','','none','','none','','xhtml','','xhtml'),
	(59,1,15,'','xhtml','','xhtml','','xhtml','','none','','none','','xhtml','','none','','none','','xhtml','','xhtml','','none','','none','','xhtml','','xhtml','','none','','none','','xhtml','','xhtml','','none','','none','','none','','xhtml','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','xhtml','','none','','none','','none','','none','','none','','xhtml','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','xhtml','','xhtml','','none','','none','','none','','xhtml','','xhtml'),
	(60,1,15,'','xhtml','','xhtml','','xhtml','','none','','none','','xhtml','','none','','none','','xhtml','','xhtml','','none','','none','','xhtml','','xhtml','','none','','none','','xhtml','','xhtml','','none','','none','','none','','xhtml','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','xhtml','','none','','none','','none','','none','','none','','xhtml','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','xhtml','','xhtml','','none','','none','','none','','xhtml','','xhtml'),
	(61,1,17,'','xhtml','','xhtml','','xhtml','','none','','none','','xhtml','','none','','none','','xhtml','','xhtml','','none','','none','','xhtml','','xhtml','','none','','none','','xhtml','','xhtml','','none','','none','','none','','xhtml','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','{filedir_6}bio-photo-example.jpg','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','xhtml','','none','','none','','none','','none','','none','','xhtml','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','xhtml','','xhtml','','none','','none','','none','','xhtml','','xhtml'),
	(62,1,17,'','xhtml','','xhtml','','xhtml','','none','','none','','xhtml','','none','','none','','xhtml','','xhtml','','none','','none','','xhtml','','xhtml','','none','','none','','xhtml','','xhtml','','none','','none','','none','','xhtml','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','{filedir_6}bio-photo-example.jpg','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','xhtml','','none','','none','','none','','none','','none','','xhtml','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','xhtml','','xhtml','','none','','none','','none','','xhtml','','xhtml'),
	(63,1,17,'','xhtml','','xhtml','','xhtml','','none','','none','','xhtml','','none','','none','','xhtml','','xhtml','','none','','none','','xhtml','','xhtml','','none','','none','','xhtml','','xhtml','','none','','none','','none','','xhtml','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','{filedir_6}bio-photo-example.jpg','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','xhtml','','none','','none','','none','','none','','none','','xhtml','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','xhtml','','xhtml','','none','','none','','none','','xhtml','','xhtml'),
	(64,1,19,'','xhtml','','xhtml','','xhtml','','none','','none','','xhtml','','none','','none','','xhtml','','xhtml','','none','','none','','xhtml','','xhtml','','none','','none','','xhtml','','xhtml','','none','','none','','none','','xhtml','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','{filedir_2}application.pdf','none','','none','','none','','none','','none','','none','','xhtml','','none','','none','','none','','none','','none','','xhtml','','none','<p>This is an overview of what this page is all about. Chard Snyder is nist ut parchil laccusantem fugit es inimusam acia vello maximus. Atibus ad quam, quo idus, sit que nus ipsapi dusda vid que labore vent.</p>','none','This is an Example of a Title Override','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','xhtml','','xhtml','','none','','none','','none','','xhtml','','xhtml'),
	(65,1,19,'','xhtml','','xhtml','','xhtml','','none','','none','','xhtml','','none','','none','','xhtml','','xhtml','','none','','none','','xhtml','','xhtml','','none','','none','','xhtml','','xhtml','','none','','none','','none','','xhtml','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','xhtml','','none','','none','','none','','none','','none','','xhtml','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','xhtml','','xhtml','','none','','none','','none','','xhtml','','xhtml'),
	(66,1,19,'','xhtml','','xhtml','','xhtml','','none','','none','','xhtml','','none','','none','','xhtml','','xhtml','','none','','none','','xhtml','','xhtml','','none','','none','','xhtml','','xhtml','','none','','none','','none','','xhtml','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','{filedir_2}application.pdf','none','','none','','none','','none','','none','','none','','xhtml','','none','','none','','none','','none','','none','','xhtml','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','xhtml','','xhtml','','none','','none','','none','','xhtml','','xhtml'),
	(67,1,21,'','xhtml','','xhtml','','xhtml','','none','','none','','xhtml','','none','','none','','xhtml','','xhtml','','none','','none','','xhtml','','xhtml','','none','','none','','xhtml','','xhtml','','none','','none','','none','','xhtml','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','<p><img alt=\"\" class=\"float-right\" src=\"{filedir_1}advertisement-example.jpg\" style=\"width: 728px; height: 87px;\" /></p>','none','','none','','none','','xhtml','','none','','none','','none','','none','','none','','xhtml','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','xhtml','','xhtml','','none','','none','','none','','xhtml','','xhtml'),
	(68,1,21,'','xhtml','','xhtml','','xhtml','','none','','none','','xhtml','','none','','none','','xhtml','','xhtml','','none','','none','','xhtml','','xhtml','','none','','none','','xhtml','','xhtml','','none','','none','','none','','xhtml','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','xhtml','','none','','none','','none','','none','','none','','xhtml','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','xhtml','','xhtml','','none','','none','','none','','xhtml','','xhtml'),
	(69,1,21,'','xhtml','','xhtml','','xhtml','','none','','none','','xhtml','','none','','none','','xhtml','','xhtml','','none','','none','','xhtml','','xhtml','','none','','none','','xhtml','','xhtml','','none','','none','','none','','xhtml','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','xhtml','','none','','none','','none','','none','','none','','xhtml','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','xhtml','','xhtml','','none','','none','','none','','xhtml','','xhtml'),
	(70,1,24,'','xhtml','','xhtml','','xhtml','','none','','none','','xhtml','','none','','none','','xhtml','','xhtml','','none','','none','','xhtml','','xhtml','','none','','none','','xhtml','','xhtml','','none','','none','','none','','xhtml','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','<p>Chard Snyder is nist, ut parchil laccusantem fugit es inimusam acia vello maximus. Atibus ad quam, quo idus, sit que nus ipsapi dusda vid que labore vent. Namentiam et volorrovid quia culluptatur aut aut est quiate pedicabo.</p>','none','','xhtml','','none','AL','none','{filedir_11}testimonial-image-example.jpg','none','','none','','none','','xhtml','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','xhtml','','xhtml','','none','','none','','none','','xhtml','','xhtml'),
	(71,1,24,'','xhtml','','xhtml','','xhtml','','none','','none','','xhtml','','none','','none','','xhtml','','xhtml','','none','','none','','xhtml','','xhtml','','none','','none','','xhtml','','xhtml','','none','','none','','none','','xhtml','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','<p>Chard Snyder is nist, ut parchil laccusantem fugit es inimusam acia vello maximus. Atibus ad quam, quo idus, sit que nus ipsapi dusda vid que labore vent. Namentiam et volorrovid quia culluptatur aut aut est quiate pedicabo.</p>','none','','xhtml','Indianapolis','none','AL','none','','none','','none','','none','','xhtml','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','xhtml','','xhtml','','none','','none','','none','','xhtml','','xhtml'),
	(72,1,24,'','xhtml','','xhtml','','xhtml','','none','','none','','xhtml','','none','','none','','xhtml','','xhtml','','none','','none','','xhtml','','xhtml','','none','','none','','xhtml','','xhtml','','none','','none','','none','','xhtml','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','xhtml','','none','','none','','none','','none','','none','','xhtml','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','xhtml','','xhtml','','none','','none','','none','','xhtml','','xhtml'),
	(73,1,24,'','xhtml','','xhtml','','xhtml','','none','','none','','xhtml','','none','','none','','xhtml','','xhtml','','none','','none','','xhtml','','xhtml','','none','','none','','xhtml','','xhtml','','none','','none','','none','','xhtml','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','xhtml','','none','','none','','none','','none','','none','','xhtml','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','xhtml','','xhtml','','none','','none','','none','','xhtml','','xhtml'),
	(74,1,24,'','xhtml','','xhtml','','xhtml','','none','','none','','xhtml','','none','','none','','xhtml','','xhtml','','none','','none','','xhtml','','xhtml','','none','','none','','xhtml','','xhtml','','none','','none','','none','','xhtml','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','xhtml','','none','','none','','none','','none','','none','','xhtml','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','xhtml','','xhtml','','none','','none','','none','','xhtml','','xhtml'),
	(75,1,24,'','xhtml','','xhtml','','xhtml','','none','','none','','xhtml','','none','','none','','xhtml','','xhtml','','none','','none','','xhtml','','xhtml','','none','','none','','xhtml','','xhtml','','none','','none','','none','','xhtml','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','xhtml','','none','','none','','none','','none','','none','','xhtml','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','xhtml','','xhtml','','none','','none','','none','','xhtml','','xhtml'),
	(76,1,24,'','xhtml','','xhtml','','xhtml','','none','','none','','xhtml','','none','','none','','xhtml','','xhtml','','none','','none','','xhtml','','xhtml','','none','','none','','xhtml','','xhtml','','none','','none','','none','','xhtml','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','xhtml','','none','','none','','none','','none','','none','','xhtml','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','xhtml','','xhtml','','none','','none','','none','','xhtml','','xhtml'),
	(77,1,24,'','xhtml','','xhtml','','xhtml','','none','','none','','xhtml','','none','','none','','xhtml','','xhtml','','none','','none','','xhtml','','xhtml','','none','','none','','xhtml','','xhtml','','none','','none','','none','','xhtml','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','xhtml','','none','','none','','none','','none','','none','','xhtml','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','xhtml','','xhtml','','none','','none','','none','','xhtml','','xhtml'),
	(78,1,24,'','xhtml','','xhtml','','xhtml','','none','','none','','xhtml','','none','','none','','xhtml','','xhtml','','none','','none','','xhtml','','xhtml','','none','','none','','xhtml','','xhtml','','none','','none','','none','','xhtml','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','xhtml','','none','','none','','none','','none','','none','','xhtml','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','xhtml','','xhtml','','none','','none','','none','','xhtml','','xhtml'),
	(79,1,24,'','xhtml','','xhtml','','xhtml','','none','','none','','xhtml','','none','','none','','xhtml','','xhtml','','none','','none','','xhtml','','xhtml','','none','','none','','xhtml','','xhtml','','none','','none','','none','','xhtml','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','xhtml','','none','','none','','none','','none','','none','','xhtml','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','xhtml','','xhtml','','none','','none','','none','','xhtml','','xhtml'),
	(80,1,2,'','xhtml','','xhtml',' ','xhtml','Your tomorrow, today.','none','<p>Chard Snyder is a leading third party administrator (TPA) of employee benefits plans. Founded in 1988, we provide customized benefit solutions that meet the needs of organizations nationwide in an increasingly complex environment. Our remarkable team of dedicated individuals is passionate, personal, reliable and committed to great customer service.</p>','none',' ','xhtml','Employeesz','none','<p>zYo. Employees tab description will display here. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla vitae elit libero, a pharetra augue. Morbi leo risus, porta ac consectetur ac, vestibulum at eros. Donec sed odio dui. Sed posuere consectetur est at lobortis. interdum.</p>','none',' ','xhtml',' ','xhtml','Employers & Advisorsz','none','<p>zHello. Employers &amp; Advisors tab description will display here. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla vitae elit libero, a pharetra augue. Morbi leo risus, porta ac consectetur ac, vestibulum at eros. Donec sed odio dui. Sed posuere consectetur est at lobortis. interdum.</p>','none',' ','xhtml',' ','xhtml','Industries','none','<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla vitae elit libero, a pharetra augue.</p>','none','','xhtml','','xhtml','{filedir_11}testimonial-image-override-example.jpg','none','','none','','none','','xhtml','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','xhtml','','none','','none','','none','','none','','none','','xhtml','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','xhtml','','xhtml','','none','','none','','none','','xhtml','','xhtml'),
	(81,1,1,' ','xhtml',' ','xhtml','','xhtml','','none','','none','','xhtml','','none','','none','','xhtml','','xhtml','','none','','none','','xhtml','','xhtml','','none','','none','','xhtml','','xhtml','','none','','none','','none','','xhtml','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','xhtml','','none','','none','','none','','none','','none','','xhtml','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','xhtml','','xhtml','','none','','none','','none','','xhtml','','xhtml'),
	(82,1,28,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,NULL,NULL,NULL,NULL,'',NULL,'','none','','none','','xhtml','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','xhtml','','none','','none','','none','','none','','none','','xhtml','{filedir_5}colleges-and-universities.png','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','xhtml','','xhtml','','none','','none','','none','','xhtml','','xhtml'),
	(83,1,28,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,NULL,NULL,NULL,NULL,'',NULL,'','none','','none','','xhtml','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','xhtml','','none','','none','','none','','none','','none','','xhtml','{filedir_5}healthcare.png','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','xhtml','','xhtml','','none','','none','','none','','xhtml','','xhtml'),
	(84,1,28,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,NULL,NULL,NULL,NULL,'',NULL,'','none','','none','','xhtml','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','xhtml','','none','','none','','none','','none','','none','','xhtml','{filedir_5}bank-and-financial.png','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','xhtml','','xhtml','','none','','none','','none','','xhtml','','xhtml'),
	(85,1,28,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,NULL,NULL,NULL,NULL,'',NULL,'','none','','none','','xhtml','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','xhtml','','none','','none','','none','','none','','none','','xhtml','{filedir_5}government.png','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','xhtml','','xhtml','','none','','none','','none','','xhtml','','xhtml'),
	(86,1,28,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,NULL,NULL,NULL,NULL,'',NULL,'','none','','none','','xhtml','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','xhtml','','none','','none','','none','','none','','none','','xhtml','{filedir_5}manufacturing.png','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','xhtml','','xhtml','','none','','none','','none','','xhtml','','xhtml'),
	(87,1,3,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,NULL,NULL,NULL,NULL,'',NULL,'','none','','none','','xhtml','',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,NULL,NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','xhtml','','xhtml','','none','','none','','none','','xhtml','','xhtml'),
	(89,1,29,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,NULL,NULL,NULL,NULL,'',NULL,'',NULL,'',NULL,NULL,NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,NULL,NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'','none','','none','','none','','none','','none','','none','','none','','none','','none','<p>Short description will display here. Lorem ipsum dolor sit amet, consectetur adipiscing vitae elit libero, a pharetra augue.</p>','none','{filedir_15}faqs.png','none','','none','','xhtml','','xhtml','','none','','none','','none','','xhtml','','xhtml'),
	(90,1,29,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,NULL,NULL,NULL,NULL,'',NULL,'',NULL,'',NULL,NULL,NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,NULL,NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'','none','','none','','none','','none','','none','','none','','none','','none','','none','<p>Short description will display here. Lorem ipsum dolor sit amet, consectetur adipiscing vitae elit libero, a pharetra augue.</p>','none','{filedir_15}videos.png','none','','none','','xhtml','','xhtml','','none','','none','','none','','xhtml','','xhtml'),
	(91,1,29,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,NULL,NULL,NULL,NULL,'',NULL,'',NULL,'',NULL,NULL,NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,NULL,NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'','none','','none','','none','','none','','none','','none','','none','','none','','none','<p>Short description will display here. Lorem ipsum dolor sit amet, consectetur adipiscing vitae elit libero, a pharetra augue.</p>','none','{filedir_15}forms-and-resources.png','none','','none','','xhtml','','xhtml','','none','','none','','none','','xhtml','','xhtml'),
	(92,1,29,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,NULL,NULL,NULL,NULL,'',NULL,'',NULL,'',NULL,NULL,NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,NULL,NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'','none','','none','','none','','none','','none','','none','','none','','none','','none','<p>Short description will display here. Lorem ipsum dolor sit amet, consectetur adipiscing vitae elit libero, a pharetra augue.</p>','none','{filedir_15}tools-and-apps.png','none','','none','','xhtml','','xhtml','','none','','none','','none','','xhtml','','xhtml'),
	(93,1,29,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,NULL,NULL,NULL,NULL,'',NULL,'',NULL,'',NULL,NULL,NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,NULL,NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'','none','','none','','none','','none','','none','','none','','none','','none','','none','<p>Short description will display here. Lorem ipsum dolor sit amet, consectetur adipiscing vitae elit libero, a pharetra augue.</p>','none','{filedir_15}compliance-watch.png','none','','none','','xhtml','','xhtml','','none','','none','','none','','xhtml','','xhtml'),
	(94,1,26,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,NULL,NULL,NULL,NULL,'',NULL,'',NULL,'',NULL,NULL,NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,NULL,NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'','none','','none','<div style=\"text-align:center\"><a rel=\"nofollow\" target=\"_blank\" href=\"https://fsastore.com/?a_aid=cs&amp;a_bid=1f1dd01f&amp;utm_source=Chard Snyder&amp;utm_medium=TPA+Banner&amp;utm_campaign=TPA+Partner\"><img src=\"https://b92abdad54680b935655-772b36f7a2e141a4f58f1ca4fff5846b.ssl.cf2.rackcdn.com/HorizontalSeasonal-728x90-v1.gif\" alt=\"FSA Eligible Expenses and Items\" style=\"border:0\" title=\"Flexible Spending Account Eligible Items and Expenses\" height=\"90\" width=\"599\" /></a><img src=\"https://dis.us.criteo.com/dis/dis.aspx?p1=v%3d2%26wi%3d7729362%26pt1%3d0%26pt2%3d1%26affid%3Dcs&amp;t1=sendEvent&amp;p=10280&amp;c=2&amp;resptype=gif\" height=\"1\" width=\"1\" /></div>','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','xhtml','','xhtml','','none','','none','','none','','xhtml','','xhtml'),
	(95,1,3,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,NULL,NULL,NULL,NULL,'',NULL,'','none','','none','','xhtml','',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,NULL,NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','xhtml','','xhtml','','none','','none','','none','','xhtml','','xhtml'),
	(96,1,26,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,NULL,NULL,NULL,NULL,'',NULL,'',NULL,'',NULL,NULL,NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,NULL,NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'<div style=\"text-align:center\"><a rel=\"nofollow\" target=\"_blank\" href=\"https://hsastore.com/?a_aid=cs&a_bid=4691f394&utm_source=Chard Snyder&utm_medium=TPA+Banner&utm_campaign=TPA+Partner\"><img src=\"http://466d77d88d63e87003b7-772b36f7a2e141a4f58f1ca4fff5846b.r63.cf2.rackcdn.com/HSA_Store/default-728x90.jpg\" alt=\"HSA Store Introduction\" style=\"border:0\" title=\"HSA Store Introduction\" height=\"90\" width=\"728\" /></a><img src=\"https://dis.us.criteo.com/dis/dis.aspx?p1=v=2&wi=7750329&pt1=0&pt2=1&affid=cs&t1=sendEvent&p=20615&c=2&resptype=gif\" height=\"1\" width=\"1\" /><img src=\"http://d.adroll.com/ipixel/RIK5OAAZTRDZNIMRWXWDCK/LFBXA65VANGF5LKRM4LRIQ?name=0337787b\" height=\"1\" width=\"1\" /></div>','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','xhtml','','xhtml','','none','','none','','none','','xhtml','','xhtml'),
	(97,1,30,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,NULL,NULL,NULL,NULL,'',NULL,'',NULL,'',NULL,NULL,NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,NULL,NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'<p>Customer Service<br />\nSavings &amp; Spending Accounts<br />\n8am &ndash; 9pm ET<br />\n800-982-7715</p>','none','<p>Customer Service<br />\nBenefit Continuation Services<br />\n8am &ndash; 8pm ET<br />\n888-993-4646</p>','none','http://www.linkedin.com/company/chard-snyder','none','https://www.facebook.com/chardsnyder','none','','none','','none','','none','','none','','none','','xhtml','','xhtml','','none','','none','','none','','xhtml','','xhtml'),
	(98,1,3,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,NULL,NULL,NULL,NULL,'',NULL,'','none','','none','','xhtml','',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,NULL,NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'','xhtml','','xhtml','','none','','none','','none','','xhtml','','xhtml'),
	(99,1,3,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,NULL,NULL,NULL,NULL,'',NULL,'','none','','none','','xhtml','',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,NULL,NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'','xhtml','','xhtml','','none','','none','','none','','xhtml','','xhtml'),
	(101,1,31,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,NULL,NULL,NULL,NULL,'',NULL,'',NULL,'',NULL,NULL,NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,NULL,NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,NULL,NULL,NULL,NULL,'The portal system is currently down for maintenance and will be live Monday, March 1.','none','/benefits/','none','','none','','xhtml','','xhtml'),
	(102,1,3,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,NULL,NULL,NULL,NULL,'',NULL,'','none','','none','','xhtml','',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,NULL,NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'','xhtml','','xhtml','',NULL,'',NULL,'','none','','xhtml','','xhtml'),
	(103,1,32,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,NULL,NULL,NULL,NULL,'',NULL,'',NULL,'',NULL,NULL,NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,NULL,NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,NULL,NULL,NULL,NULL,'',NULL,'',NULL,'{filedir_16}boston-scientific.png','none',' ','xhtml',' ','xhtml'),
	(104,1,33,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,NULL,NULL,NULL,NULL,'',NULL,'',NULL,'',NULL,NULL,NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,NULL,NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,NULL,NULL,NULL,NULL,'',NULL,'',NULL,'','none','','xhtml','','xhtml');

/*!40000 ALTER TABLE `exp_channel_data` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table exp_channel_entries_autosave
# ------------------------------------------------------------

DROP TABLE IF EXISTS `exp_channel_entries_autosave`;

CREATE TABLE `exp_channel_entries_autosave` (
  `entry_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `original_entry_id` int(10) unsigned NOT NULL,
  `site_id` int(4) unsigned NOT NULL DEFAULT '1',
  `channel_id` int(4) unsigned NOT NULL,
  `author_id` int(10) unsigned NOT NULL DEFAULT '0',
  `forum_topic_id` int(10) unsigned DEFAULT NULL,
  `ip_address` varchar(45) NOT NULL DEFAULT '0',
  `title` varchar(100) NOT NULL,
  `url_title` varchar(75) NOT NULL,
  `status` varchar(50) NOT NULL,
  `versioning_enabled` char(1) NOT NULL DEFAULT 'n',
  `view_count_one` int(10) unsigned NOT NULL DEFAULT '0',
  `view_count_two` int(10) unsigned NOT NULL DEFAULT '0',
  `view_count_three` int(10) unsigned NOT NULL DEFAULT '0',
  `view_count_four` int(10) unsigned NOT NULL DEFAULT '0',
  `allow_comments` varchar(1) NOT NULL DEFAULT 'y',
  `sticky` varchar(1) NOT NULL DEFAULT 'n',
  `entry_date` int(10) NOT NULL,
  `year` char(4) NOT NULL,
  `month` char(2) NOT NULL,
  `day` char(3) NOT NULL,
  `expiration_date` int(10) NOT NULL DEFAULT '0',
  `comment_expiration_date` int(10) NOT NULL DEFAULT '0',
  `edit_date` bigint(14) DEFAULT NULL,
  `recent_comment_date` int(10) DEFAULT NULL,
  `comment_total` int(4) unsigned NOT NULL DEFAULT '0',
  `entry_data` text,
  PRIMARY KEY (`entry_id`),
  KEY `channel_id` (`channel_id`),
  KEY `author_id` (`author_id`),
  KEY `url_title` (`url_title`),
  KEY `status` (`status`),
  KEY `entry_date` (`entry_date`),
  KEY `expiration_date` (`expiration_date`),
  KEY `site_id` (`site_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table exp_channel_fields
# ------------------------------------------------------------

DROP TABLE IF EXISTS `exp_channel_fields`;

CREATE TABLE `exp_channel_fields` (
  `field_id` int(6) unsigned NOT NULL AUTO_INCREMENT,
  `site_id` int(4) unsigned NOT NULL DEFAULT '1',
  `group_id` int(4) unsigned NOT NULL,
  `field_name` varchar(32) NOT NULL,
  `field_label` varchar(50) NOT NULL,
  `field_instructions` text,
  `field_type` varchar(50) NOT NULL DEFAULT 'text',
  `field_list_items` text NOT NULL,
  `field_pre_populate` char(1) NOT NULL DEFAULT 'n',
  `field_pre_channel_id` int(6) unsigned DEFAULT NULL,
  `field_pre_field_id` int(6) unsigned DEFAULT NULL,
  `field_ta_rows` tinyint(2) DEFAULT '8',
  `field_maxl` smallint(3) DEFAULT NULL,
  `field_required` char(1) NOT NULL DEFAULT 'n',
  `field_text_direction` char(3) NOT NULL DEFAULT 'ltr',
  `field_search` char(1) NOT NULL DEFAULT 'n',
  `field_is_hidden` char(1) NOT NULL DEFAULT 'n',
  `field_fmt` varchar(40) NOT NULL DEFAULT 'xhtml',
  `field_show_fmt` char(1) NOT NULL DEFAULT 'y',
  `field_order` int(3) unsigned NOT NULL,
  `field_content_type` varchar(20) NOT NULL DEFAULT 'any',
  `field_settings` text,
  PRIMARY KEY (`field_id`),
  KEY `group_id` (`group_id`),
  KEY `field_type` (`field_type`),
  KEY `site_id` (`site_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `exp_channel_fields` WRITE;
/*!40000 ALTER TABLE `exp_channel_fields` DISABLE KEYS */;

INSERT INTO `exp_channel_fields` (`field_id`, `site_id`, `group_id`, `field_name`, `field_label`, `field_instructions`, `field_type`, `field_list_items`, `field_pre_populate`, `field_pre_channel_id`, `field_pre_field_id`, `field_ta_rows`, `field_maxl`, `field_required`, `field_text_direction`, `field_search`, `field_is_hidden`, `field_fmt`, `field_show_fmt`, `field_order`, `field_content_type`, `field_settings`)
VALUES
	(1,1,1,'login_employees','Employees','','grid','','0',0,0,6,128,'n','ltr','n','n','xhtml','n',1,'any','YTo4OntzOjEzOiJncmlkX21pbl9yb3dzIjtpOjA7czoxMzoiZ3JpZF9tYXhfcm93cyI7czowOiIiO3M6MTg6ImZpZWxkX3Nob3dfc21pbGV5cyI7czoxOiJuIjtzOjE5OiJmaWVsZF9zaG93X2dsb3NzYXJ5IjtzOjE6Im4iO3M6MjE6ImZpZWxkX3Nob3dfc3BlbGxjaGVjayI7czoxOiJuIjtzOjI2OiJmaWVsZF9zaG93X2Zvcm1hdHRpbmdfYnRucyI7czoxOiJuIjtzOjI0OiJmaWVsZF9zaG93X2ZpbGVfc2VsZWN0b3IiO3M6MToibiI7czoyMDoiZmllbGRfc2hvd193cml0ZW1vZGUiO3M6MToibiI7fQ=='),
	(2,1,1,'login_employers','Employers','','grid','','0',0,0,6,128,'n','ltr','n','n','xhtml','n',2,'any','YTo4OntzOjEzOiJncmlkX21pbl9yb3dzIjtpOjA7czoxMzoiZ3JpZF9tYXhfcm93cyI7czowOiIiO3M6MTg6ImZpZWxkX3Nob3dfc21pbGV5cyI7czoxOiJuIjtzOjE5OiJmaWVsZF9zaG93X2dsb3NzYXJ5IjtzOjE6Im4iO3M6MjE6ImZpZWxkX3Nob3dfc3BlbGxjaGVjayI7czoxOiJuIjtzOjI2OiJmaWVsZF9zaG93X2Zvcm1hdHRpbmdfYnRucyI7czoxOiJuIjtzOjI0OiJmaWVsZF9zaG93X2ZpbGVfc2VsZWN0b3IiO3M6MToibiI7czoyMDoiZmllbGRfc2hvd193cml0ZW1vZGUiO3M6MToibiI7fQ=='),
	(3,1,2,'home_hero','Hero','','grid','','0',0,0,6,128,'n','ltr','n','n','xhtml','n',1,'any','YTo4OntzOjEzOiJncmlkX21pbl9yb3dzIjtpOjA7czoxMzoiZ3JpZF9tYXhfcm93cyI7czowOiIiO3M6MTg6ImZpZWxkX3Nob3dfc21pbGV5cyI7czoxOiJuIjtzOjE5OiJmaWVsZF9zaG93X2dsb3NzYXJ5IjtzOjE6Im4iO3M6MjE6ImZpZWxkX3Nob3dfc3BlbGxjaGVjayI7czoxOiJuIjtzOjI2OiJmaWVsZF9zaG93X2Zvcm1hdHRpbmdfYnRucyI7czoxOiJuIjtzOjI0OiJmaWVsZF9zaG93X2ZpbGVfc2VsZWN0b3IiO3M6MToibiI7czoyMDoiZmllbGRfc2hvd193cml0ZW1vZGUiO3M6MToibiI7fQ=='),
	(4,1,2,'home_mission_headline','Mission Headline','','text','','0',0,0,6,128,'n','ltr','n','n','none','n',2,'any','YTo3OntzOjE4OiJmaWVsZF9jb250ZW50X3R5cGUiO3M6MzoiYWxsIjtzOjE4OiJmaWVsZF9zaG93X3NtaWxleXMiO3M6MToibiI7czoxOToiZmllbGRfc2hvd19nbG9zc2FyeSI7czoxOiJuIjtzOjIxOiJmaWVsZF9zaG93X3NwZWxsY2hlY2siO3M6MToibiI7czoyNjoiZmllbGRfc2hvd19mb3JtYXR0aW5nX2J0bnMiO3M6MToibiI7czoyNDoiZmllbGRfc2hvd19maWxlX3NlbGVjdG9yIjtzOjE6Im4iO3M6MjA6ImZpZWxkX3Nob3dfd3JpdGVtb2RlIjtzOjE6Im4iO30='),
	(5,1,2,'home_mission_statement','Mission Statement','','wygwam','','0',0,0,6,128,'n','ltr','n','n','none','n',3,'any','YTo4OntzOjY6ImNvbmZpZyI7czoxOiIxIjtzOjU6ImRlZmVyIjtzOjE6Im4iO3M6MTg6ImZpZWxkX3Nob3dfc21pbGV5cyI7czoxOiJuIjtzOjE5OiJmaWVsZF9zaG93X2dsb3NzYXJ5IjtzOjE6Im4iO3M6MjE6ImZpZWxkX3Nob3dfc3BlbGxjaGVjayI7czoxOiJuIjtzOjI2OiJmaWVsZF9zaG93X2Zvcm1hdHRpbmdfYnRucyI7czoxOiJuIjtzOjI0OiJmaWVsZF9zaG93X2ZpbGVfc2VsZWN0b3IiO3M6MToibiI7czoyMDoiZmllbGRfc2hvd193cml0ZW1vZGUiO3M6MToibiI7fQ=='),
	(6,1,2,'home_slides','Slides','','grid','','0',0,0,6,128,'n','ltr','n','n','xhtml','n',4,'any','YTo4OntzOjEzOiJncmlkX21pbl9yb3dzIjtpOjA7czoxMzoiZ3JpZF9tYXhfcm93cyI7czowOiIiO3M6MTg6ImZpZWxkX3Nob3dfc21pbGV5cyI7czoxOiJuIjtzOjE5OiJmaWVsZF9zaG93X2dsb3NzYXJ5IjtzOjE6Im4iO3M6MjE6ImZpZWxkX3Nob3dfc3BlbGxjaGVjayI7czoxOiJuIjtzOjI2OiJmaWVsZF9zaG93X2Zvcm1hdHRpbmdfYnRucyI7czoxOiJuIjtzOjI0OiJmaWVsZF9zaG93X2ZpbGVfc2VsZWN0b3IiO3M6MToibiI7czoyMDoiZmllbGRfc2hvd193cml0ZW1vZGUiO3M6MToibiI7fQ=='),
	(7,1,2,'home_employees_tab_title','Employees Tab Title','','text','','0',0,0,6,128,'n','ltr','n','n','none','n',5,'any','YTo3OntzOjE4OiJmaWVsZF9jb250ZW50X3R5cGUiO3M6MzoiYWxsIjtzOjE4OiJmaWVsZF9zaG93X3NtaWxleXMiO3M6MToibiI7czoxOToiZmllbGRfc2hvd19nbG9zc2FyeSI7czoxOiJuIjtzOjIxOiJmaWVsZF9zaG93X3NwZWxsY2hlY2siO3M6MToibiI7czoyNjoiZmllbGRfc2hvd19mb3JtYXR0aW5nX2J0bnMiO3M6MToibiI7czoyNDoiZmllbGRfc2hvd19maWxlX3NlbGVjdG9yIjtzOjE6Im4iO3M6MjA6ImZpZWxkX3Nob3dfd3JpdGVtb2RlIjtzOjE6Im4iO30='),
	(8,1,2,'home_employees_tab_description','Employees Tab Description','','wygwam','','0',0,0,6,128,'n','ltr','n','n','none','n',6,'any','YTo4OntzOjY6ImNvbmZpZyI7czoxOiIxIjtzOjU6ImRlZmVyIjtzOjE6Im4iO3M6MTg6ImZpZWxkX3Nob3dfc21pbGV5cyI7czoxOiJuIjtzOjE5OiJmaWVsZF9zaG93X2dsb3NzYXJ5IjtzOjE6Im4iO3M6MjE6ImZpZWxkX3Nob3dfc3BlbGxjaGVjayI7czoxOiJuIjtzOjI2OiJmaWVsZF9zaG93X2Zvcm1hdHRpbmdfYnRucyI7czoxOiJuIjtzOjI0OiJmaWVsZF9zaG93X2ZpbGVfc2VsZWN0b3IiO3M6MToibiI7czoyMDoiZmllbGRfc2hvd193cml0ZW1vZGUiO3M6MToibiI7fQ=='),
	(9,1,2,'home_employees_tab_buttons','Employees Tab Buttons','','grid','','0',0,0,6,128,'n','ltr','n','n','xhtml','n',7,'any','YTo4OntzOjEzOiJncmlkX21pbl9yb3dzIjtpOjA7czoxMzoiZ3JpZF9tYXhfcm93cyI7czowOiIiO3M6MTg6ImZpZWxkX3Nob3dfc21pbGV5cyI7czoxOiJuIjtzOjE5OiJmaWVsZF9zaG93X2dsb3NzYXJ5IjtzOjE6Im4iO3M6MjE6ImZpZWxkX3Nob3dfc3BlbGxjaGVjayI7czoxOiJuIjtzOjI2OiJmaWVsZF9zaG93X2Zvcm1hdHRpbmdfYnRucyI7czoxOiJuIjtzOjI0OiJmaWVsZF9zaG93X2ZpbGVfc2VsZWN0b3IiO3M6MToibiI7czoyMDoiZmllbGRfc2hvd193cml0ZW1vZGUiO3M6MToibiI7fQ=='),
	(10,1,2,'home_employees_tab_contacts','Employees Tab Contacts','','grid','','0',0,0,6,128,'n','ltr','n','n','xhtml','n',8,'any','YTo4OntzOjEzOiJncmlkX21pbl9yb3dzIjtpOjA7czoxMzoiZ3JpZF9tYXhfcm93cyI7czowOiIiO3M6MTg6ImZpZWxkX3Nob3dfc21pbGV5cyI7czoxOiJuIjtzOjE5OiJmaWVsZF9zaG93X2dsb3NzYXJ5IjtzOjE6Im4iO3M6MjE6ImZpZWxkX3Nob3dfc3BlbGxjaGVjayI7czoxOiJuIjtzOjI2OiJmaWVsZF9zaG93X2Zvcm1hdHRpbmdfYnRucyI7czoxOiJuIjtzOjI0OiJmaWVsZF9zaG93X2ZpbGVfc2VsZWN0b3IiO3M6MToibiI7czoyMDoiZmllbGRfc2hvd193cml0ZW1vZGUiO3M6MToibiI7fQ=='),
	(11,1,2,'home_employers_tab_title','Employers & Advisors Tab Title','','text','','0',0,0,6,128,'n','ltr','n','n','none','n',9,'any','YTo3OntzOjE4OiJmaWVsZF9jb250ZW50X3R5cGUiO3M6MzoiYWxsIjtzOjE4OiJmaWVsZF9zaG93X3NtaWxleXMiO3M6MToibiI7czoxOToiZmllbGRfc2hvd19nbG9zc2FyeSI7czoxOiJuIjtzOjIxOiJmaWVsZF9zaG93X3NwZWxsY2hlY2siO3M6MToibiI7czoyNjoiZmllbGRfc2hvd19mb3JtYXR0aW5nX2J0bnMiO3M6MToibiI7czoyNDoiZmllbGRfc2hvd19maWxlX3NlbGVjdG9yIjtzOjE6Im4iO3M6MjA6ImZpZWxkX3Nob3dfd3JpdGVtb2RlIjtzOjE6Im4iO30='),
	(12,1,2,'home_employers_tab_description','Employers & Advisors Tab Description','','wygwam','','0',0,0,6,128,'n','ltr','n','n','none','n',10,'any','YTo4OntzOjY6ImNvbmZpZyI7czoxOiIxIjtzOjU6ImRlZmVyIjtzOjE6Im4iO3M6MTg6ImZpZWxkX3Nob3dfc21pbGV5cyI7czoxOiJuIjtzOjE5OiJmaWVsZF9zaG93X2dsb3NzYXJ5IjtzOjE6Im4iO3M6MjE6ImZpZWxkX3Nob3dfc3BlbGxjaGVjayI7czoxOiJuIjtzOjI2OiJmaWVsZF9zaG93X2Zvcm1hdHRpbmdfYnRucyI7czoxOiJuIjtzOjI0OiJmaWVsZF9zaG93X2ZpbGVfc2VsZWN0b3IiO3M6MToibiI7czoyMDoiZmllbGRfc2hvd193cml0ZW1vZGUiO3M6MToibiI7fQ=='),
	(13,1,2,'home_employers_tab_buttons','Employers & Advisors Tab Buttons','','grid','','0',0,0,6,128,'n','ltr','n','n','xhtml','n',11,'any','YTo4OntzOjEzOiJncmlkX21pbl9yb3dzIjtpOjA7czoxMzoiZ3JpZF9tYXhfcm93cyI7czowOiIiO3M6MTg6ImZpZWxkX3Nob3dfc21pbGV5cyI7czoxOiJuIjtzOjE5OiJmaWVsZF9zaG93X2dsb3NzYXJ5IjtzOjE6Im4iO3M6MjE6ImZpZWxkX3Nob3dfc3BlbGxjaGVjayI7czoxOiJuIjtzOjI2OiJmaWVsZF9zaG93X2Zvcm1hdHRpbmdfYnRucyI7czoxOiJuIjtzOjI0OiJmaWVsZF9zaG93X2ZpbGVfc2VsZWN0b3IiO3M6MToibiI7czoyMDoiZmllbGRfc2hvd193cml0ZW1vZGUiO3M6MToibiI7fQ=='),
	(14,1,2,'home_employers_tab_contacts','Employers & Advisors Tab Contacts','','grid','','0',0,0,6,128,'n','ltr','n','n','xhtml','n',12,'any','YTo4OntzOjEzOiJncmlkX21pbl9yb3dzIjtpOjA7czoxMzoiZ3JpZF9tYXhfcm93cyI7czowOiIiO3M6MTg6ImZpZWxkX3Nob3dfc21pbGV5cyI7czoxOiJuIjtzOjE5OiJmaWVsZF9zaG93X2dsb3NzYXJ5IjtzOjE6Im4iO3M6MjE6ImZpZWxkX3Nob3dfc3BlbGxjaGVjayI7czoxOiJuIjtzOjI2OiJmaWVsZF9zaG93X2Zvcm1hdHRpbmdfYnRucyI7czoxOiJuIjtzOjI0OiJmaWVsZF9zaG93X2ZpbGVfc2VsZWN0b3IiO3M6MToibiI7czoyMDoiZmllbGRfc2hvd193cml0ZW1vZGUiO3M6MToibiI7fQ=='),
	(15,1,2,'home_industries_headline','Industries Headline','','text','','0',0,0,6,128,'n','ltr','n','n','none','n',13,'any','YTo3OntzOjE4OiJmaWVsZF9jb250ZW50X3R5cGUiO3M6MzoiYWxsIjtzOjE4OiJmaWVsZF9zaG93X3NtaWxleXMiO3M6MToibiI7czoxOToiZmllbGRfc2hvd19nbG9zc2FyeSI7czoxOiJuIjtzOjIxOiJmaWVsZF9zaG93X3NwZWxsY2hlY2siO3M6MToibiI7czoyNjoiZmllbGRfc2hvd19mb3JtYXR0aW5nX2J0bnMiO3M6MToibiI7czoyNDoiZmllbGRfc2hvd19maWxlX3NlbGVjdG9yIjtzOjE6Im4iO3M6MjA6ImZpZWxkX3Nob3dfd3JpdGVtb2RlIjtzOjE6Im4iO30='),
	(16,1,2,'home_industries_description','Industries Description','','wygwam','','0',0,0,6,128,'n','ltr','n','n','none','n',14,'any','YTo4OntzOjY6ImNvbmZpZyI7czoxOiIxIjtzOjU6ImRlZmVyIjtzOjE6Im4iO3M6MTg6ImZpZWxkX3Nob3dfc21pbGV5cyI7czoxOiJuIjtzOjE5OiJmaWVsZF9zaG93X2dsb3NzYXJ5IjtzOjE6Im4iO3M6MjE6ImZpZWxkX3Nob3dfc3BlbGxjaGVjayI7czoxOiJuIjtzOjI2OiJmaWVsZF9zaG93X2Zvcm1hdHRpbmdfYnRucyI7czoxOiJuIjtzOjI0OiJmaWVsZF9zaG93X2ZpbGVfc2VsZWN0b3IiO3M6MToibiI7czoyMDoiZmllbGRfc2hvd193cml0ZW1vZGUiO3M6MToibiI7fQ=='),
	(17,1,2,'home_industries_listing','Industries Listing','','relationship','','0',0,0,6,128,'n','ltr','n','n','xhtml','n',15,'any','YToxNjp7czo4OiJjaGFubmVscyI7YToxOntpOjA7czoyOiIyOCI7fXM6NzoiZXhwaXJlZCI7aTowO3M6NjoiZnV0dXJlIjtpOjA7czoxMDoiY2F0ZWdvcmllcyI7YTowOnt9czo3OiJhdXRob3JzIjthOjA6e31zOjg6InN0YXR1c2VzIjthOjA6e31zOjU6ImxpbWl0IjtzOjM6IjEwMCI7czoxMToib3JkZXJfZmllbGQiO3M6NToidGl0bGUiO3M6OToib3JkZXJfZGlyIjtzOjM6ImFzYyI7czoxNDoiYWxsb3dfbXVsdGlwbGUiO3M6MToiMSI7czoxODoiZmllbGRfc2hvd19zbWlsZXlzIjtzOjE6Im4iO3M6MTk6ImZpZWxkX3Nob3dfZ2xvc3NhcnkiO3M6MToibiI7czoyMToiZmllbGRfc2hvd19zcGVsbGNoZWNrIjtzOjE6Im4iO3M6MjY6ImZpZWxkX3Nob3dfZm9ybWF0dGluZ19idG5zIjtzOjE6Im4iO3M6MjQ6ImZpZWxkX3Nob3dfZmlsZV9zZWxlY3RvciI7czoxOiJuIjtzOjIwOiJmaWVsZF9zaG93X3dyaXRlbW9kZSI7czoxOiJuIjt9'),
	(18,1,2,'home_testimonial','Testimonial','','relationship','','0',0,0,6,128,'n','ltr','n','n','xhtml','n',16,'any','YToxNjp7czo4OiJjaGFubmVscyI7YToxOntpOjA7czoyOiIyNCI7fXM6NzoiZXhwaXJlZCI7aTowO3M6NjoiZnV0dXJlIjtpOjA7czoxMDoiY2F0ZWdvcmllcyI7YTowOnt9czo3OiJhdXRob3JzIjthOjA6e31zOjg6InN0YXR1c2VzIjthOjA6e31zOjU6ImxpbWl0IjtzOjM6IjEwMCI7czoxMToib3JkZXJfZmllbGQiO3M6NToidGl0bGUiO3M6OToib3JkZXJfZGlyIjtzOjM6ImFzYyI7czoxNDoiYWxsb3dfbXVsdGlwbGUiO3M6MToiMSI7czoxODoiZmllbGRfc2hvd19zbWlsZXlzIjtzOjE6Im4iO3M6MTk6ImZpZWxkX3Nob3dfZ2xvc3NhcnkiO3M6MToibiI7czoyMToiZmllbGRfc2hvd19zcGVsbGNoZWNrIjtzOjE6Im4iO3M6MjY6ImZpZWxkX3Nob3dfZm9ybWF0dGluZ19idG5zIjtzOjE6Im4iO3M6MjQ6ImZpZWxkX3Nob3dfZmlsZV9zZWxlY3RvciI7czoxOiJuIjtzOjIwOiJmaWVsZF9zaG93X3dyaXRlbW9kZSI7czoxOiJuIjt9'),
	(19,1,2,'home_testimonial_image','Testimonial Image','A size of XXpx W &times; XXpx H is recommended.','file','','0',0,0,6,128,'n','ltr','n','n','none','n',17,'any','YToxMDp7czoxODoiZmllbGRfY29udGVudF90eXBlIjtzOjU6ImltYWdlIjtzOjE5OiJhbGxvd2VkX2RpcmVjdG9yaWVzIjtzOjI6IjExIjtzOjEzOiJzaG93X2V4aXN0aW5nIjtzOjE6InkiO3M6MTI6Im51bV9leGlzdGluZyI7czoyOiI1MCI7czoxODoiZmllbGRfc2hvd19zbWlsZXlzIjtzOjE6Im4iO3M6MTk6ImZpZWxkX3Nob3dfZ2xvc3NhcnkiO3M6MToibiI7czoyMToiZmllbGRfc2hvd19zcGVsbGNoZWNrIjtzOjE6Im4iO3M6MjY6ImZpZWxkX3Nob3dfZm9ybWF0dGluZ19idG5zIjtzOjE6Im4iO3M6MjQ6ImZpZWxkX3Nob3dfZmlsZV9zZWxlY3RvciI7czoxOiJuIjtzOjIwOiJmaWVsZF9zaG93X3dyaXRlbW9kZSI7czoxOiJuIjt9'),
	(20,1,3,'page_overview','Overview','','wygwam','','0',0,0,6,128,'n','ltr','n','n','none','n',1,'any','YTo4OntzOjY6ImNvbmZpZyI7czoxOiIxIjtzOjU6ImRlZmVyIjtzOjE6Im4iO3M6MTg6ImZpZWxkX3Nob3dfc21pbGV5cyI7czoxOiJuIjtzOjE5OiJmaWVsZF9zaG93X2dsb3NzYXJ5IjtzOjE6Im4iO3M6MjE6ImZpZWxkX3Nob3dfc3BlbGxjaGVjayI7czoxOiJuIjtzOjI2OiJmaWVsZF9zaG93X2Zvcm1hdHRpbmdfYnRucyI7czoxOiJuIjtzOjI0OiJmaWVsZF9zaG93X2ZpbGVfc2VsZWN0b3IiO3M6MToibiI7czoyMDoiZmllbGRfc2hvd193cml0ZW1vZGUiO3M6MToibiI7fQ=='),
	(21,1,3,'page_content','Content','','wygwam','','0',0,0,6,128,'n','ltr','n','n','none','n',2,'any','YTo4OntzOjY6ImNvbmZpZyI7czoxOiIyIjtzOjU6ImRlZmVyIjtzOjE6Im4iO3M6MTg6ImZpZWxkX3Nob3dfc21pbGV5cyI7czoxOiJuIjtzOjE5OiJmaWVsZF9zaG93X2dsb3NzYXJ5IjtzOjE6Im4iO3M6MjE6ImZpZWxkX3Nob3dfc3BlbGxjaGVjayI7czoxOiJuIjtzOjI2OiJmaWVsZF9zaG93X2Zvcm1hdHRpbmdfYnRucyI7czoxOiJuIjtzOjI0OiJmaWVsZF9zaG93X2ZpbGVfc2VsZWN0b3IiO3M6MToibiI7czoyMDoiZmllbGRfc2hvd193cml0ZW1vZGUiO3M6MToibiI7fQ=='),
	(22,1,3,'page_advertisement','Advertisement','','relationship','','0',0,0,6,128,'n','ltr','n','n','xhtml','n',3,'any','YToxNjp7czo4OiJjaGFubmVscyI7YToxOntpOjA7czoyOiIyNiI7fXM6NzoiZXhwaXJlZCI7aTowO3M6NjoiZnV0dXJlIjtpOjA7czoxMDoiY2F0ZWdvcmllcyI7YTowOnt9czo3OiJhdXRob3JzIjthOjA6e31zOjg6InN0YXR1c2VzIjthOjA6e31zOjU6ImxpbWl0IjtzOjM6IjEwMCI7czoxMToib3JkZXJfZmllbGQiO3M6NToidGl0bGUiO3M6OToib3JkZXJfZGlyIjtzOjM6ImFzYyI7czoxNDoiYWxsb3dfbXVsdGlwbGUiO2k6MDtzOjE4OiJmaWVsZF9zaG93X3NtaWxleXMiO3M6MToibiI7czoxOToiZmllbGRfc2hvd19nbG9zc2FyeSI7czoxOiJuIjtzOjIxOiJmaWVsZF9zaG93X3NwZWxsY2hlY2siO3M6MToibiI7czoyNjoiZmllbGRfc2hvd19mb3JtYXR0aW5nX2J0bnMiO3M6MToibiI7czoyNDoiZmllbGRfc2hvd19maWxlX3NlbGVjdG9yIjtzOjE6Im4iO3M6MjA6ImZpZWxkX3Nob3dfd3JpdGVtb2RlIjtzOjE6Im4iO30='),
	(23,1,4,'external_url_url','URL','','text','','0',0,0,6,128,'n','ltr','n','n','none','n',1,'any','YTo3OntzOjE4OiJmaWVsZF9jb250ZW50X3R5cGUiO3M6MzoiYWxsIjtzOjE4OiJmaWVsZF9zaG93X3NtaWxleXMiO3M6MToibiI7czoxOToiZmllbGRfc2hvd19nbG9zc2FyeSI7czoxOiJuIjtzOjIxOiJmaWVsZF9zaG93X3NwZWxsY2hlY2siO3M6MToibiI7czoyNjoiZmllbGRfc2hvd19mb3JtYXR0aW5nX2J0bnMiO3M6MToibiI7czoyNDoiZmllbGRfc2hvd19maWxlX3NlbGVjdG9yIjtzOjE6Im4iO3M6MjA6ImZpZWxkX3Nob3dfd3JpdGVtb2RlIjtzOjE6Im4iO30='),
	(24,1,5,'support_center_overview','Overview','','wygwam','','0',0,0,6,128,'n','ltr','n','n','none','n',1,'any','YTo4OntzOjY6ImNvbmZpZyI7czoxOiIxIjtzOjU6ImRlZmVyIjtzOjE6Im4iO3M6MTg6ImZpZWxkX3Nob3dfc21pbGV5cyI7czoxOiJuIjtzOjE5OiJmaWVsZF9zaG93X2dsb3NzYXJ5IjtzOjE6Im4iO3M6MjE6ImZpZWxkX3Nob3dfc3BlbGxjaGVjayI7czoxOiJuIjtzOjI2OiJmaWVsZF9zaG93X2Zvcm1hdHRpbmdfYnRucyI7czoxOiJuIjtzOjI0OiJmaWVsZF9zaG93X2ZpbGVfc2VsZWN0b3IiO3M6MToibiI7czoyMDoiZmllbGRfc2hvd193cml0ZW1vZGUiO3M6MToibiI7fQ=='),
	(83,1,31,'alert_description','Description','','textarea','','0',0,0,5,128,'n','ltr','n','n','none','n',1,'any','YTo2OntzOjE4OiJmaWVsZF9zaG93X3NtaWxleXMiO3M6MToibiI7czoxOToiZmllbGRfc2hvd19nbG9zc2FyeSI7czoxOiJuIjtzOjIxOiJmaWVsZF9zaG93X3NwZWxsY2hlY2siO3M6MToibiI7czoyNjoiZmllbGRfc2hvd19mb3JtYXR0aW5nX2J0bnMiO3M6MToibiI7czoyNDoiZmllbGRfc2hvd19maWxlX3NlbGVjdG9yIjtzOjE6Im4iO3M6MjA6ImZpZWxkX3Nob3dfd3JpdGVtb2RlIjtzOjE6Im4iO30='),
	(80,1,5,'support_center_title','Title Override','Override the title displayed on the entry page. This allows for longer, keyword rich titles.','text','','0',0,0,6,128,'n','ltr','n','n','none','n',2,'any','YTo3OntzOjE4OiJmaWVsZF9jb250ZW50X3R5cGUiO3M6MzoiYWxsIjtzOjE4OiJmaWVsZF9zaG93X3NtaWxleXMiO3M6MToibiI7czoxOToiZmllbGRfc2hvd19nbG9zc2FyeSI7czoxOiJuIjtzOjIxOiJmaWVsZF9zaG93X3NwZWxsY2hlY2siO3M6MToibiI7czoyNjoiZmllbGRfc2hvd19mb3JtYXR0aW5nX2J0bnMiO3M6MToibiI7czoyNDoiZmllbGRfc2hvd19maWxlX3NlbGVjdG9yIjtzOjE6Im4iO3M6MjA6ImZpZWxkX3Nob3dfd3JpdGVtb2RlIjtzOjE6Im4iO30='),
	(81,1,3,'page_common_questions','Common Questions','A description is needed...','relationship','','0',0,0,6,128,'n','ltr','n','n','xhtml','n',4,'any','YToxNjp7czo4OiJjaGFubmVscyI7YToxOntpOjA7czoxOiI3Ijt9czo3OiJleHBpcmVkIjtpOjA7czo2OiJmdXR1cmUiO2k6MDtzOjEwOiJjYXRlZ29yaWVzIjthOjA6e31zOjc6ImF1dGhvcnMiO2E6MDp7fXM6ODoic3RhdHVzZXMiO2E6MDp7fXM6NToibGltaXQiO3M6MzoiMTAwIjtzOjExOiJvcmRlcl9maWVsZCI7czo1OiJ0aXRsZSI7czo5OiJvcmRlcl9kaXIiO3M6MzoiYXNjIjtzOjE0OiJhbGxvd19tdWx0aXBsZSI7czoxOiIxIjtzOjE4OiJmaWVsZF9zaG93X3NtaWxleXMiO3M6MToibiI7czoxOToiZmllbGRfc2hvd19nbG9zc2FyeSI7czoxOiJuIjtzOjIxOiJmaWVsZF9zaG93X3NwZWxsY2hlY2siO3M6MToibiI7czoyNjoiZmllbGRfc2hvd19mb3JtYXR0aW5nX2J0bnMiO3M6MToibiI7czoyNDoiZmllbGRfc2hvd19maWxlX3NlbGVjdG9yIjtzOjE6Im4iO3M6MjA6ImZpZWxkX3Nob3dfd3JpdGVtb2RlIjtzOjE6Im4iO30='),
	(82,1,3,'page_fsa_forms','FSA Forms','A description is needed...','relationship','','0',0,0,6,128,'n','ltr','n','n','xhtml','n',5,'any','YToxNjp7czo4OiJjaGFubmVscyI7YToxOntpOjA7czoyOiIxMSI7fXM6NzoiZXhwaXJlZCI7aTowO3M6NjoiZnV0dXJlIjtpOjA7czoxMDoiY2F0ZWdvcmllcyI7YTowOnt9czo3OiJhdXRob3JzIjthOjA6e31zOjg6InN0YXR1c2VzIjthOjA6e31zOjU6ImxpbWl0IjtzOjM6IjEwMCI7czoxMToib3JkZXJfZmllbGQiO3M6NToidGl0bGUiO3M6OToib3JkZXJfZGlyIjtzOjM6ImFzYyI7czoxNDoiYWxsb3dfbXVsdGlwbGUiO3M6MToiMSI7czoxODoiZmllbGRfc2hvd19zbWlsZXlzIjtzOjE6Im4iO3M6MTk6ImZpZWxkX3Nob3dfZ2xvc3NhcnkiO3M6MToibiI7czoyMToiZmllbGRfc2hvd19zcGVsbGNoZWNrIjtzOjE6Im4iO3M6MjY6ImZpZWxkX3Nob3dfZm9ybWF0dGluZ19idG5zIjtzOjE6Im4iO3M6MjQ6ImZpZWxkX3Nob3dfZmlsZV9zZWxlY3RvciI7czoxOiJuIjtzOjIwOiJmaWVsZF9zaG93X3dyaXRlbW9kZSI7czoxOiJuIjt9'),
	(30,1,7,'faq_question','Question','','wygwam','','0',0,0,6,128,'n','ltr','n','n','none','n',1,'any','YTo4OntzOjY6ImNvbmZpZyI7czoxOiIxIjtzOjU6ImRlZmVyIjtzOjE6Im4iO3M6MTg6ImZpZWxkX3Nob3dfc21pbGV5cyI7czoxOiJuIjtzOjE5OiJmaWVsZF9zaG93X2dsb3NzYXJ5IjtzOjE6Im4iO3M6MjE6ImZpZWxkX3Nob3dfc3BlbGxjaGVjayI7czoxOiJuIjtzOjI2OiJmaWVsZF9zaG93X2Zvcm1hdHRpbmdfYnRucyI7czoxOiJuIjtzOjI0OiJmaWVsZF9zaG93X2ZpbGVfc2VsZWN0b3IiO3M6MToibiI7czoyMDoiZmllbGRfc2hvd193cml0ZW1vZGUiO3M6MToibiI7fQ=='),
	(31,1,7,'faq_answer','Answer','','wygwam','','0',0,0,6,128,'n','ltr','n','n','none','n',3,'any','YTo4OntzOjY6ImNvbmZpZyI7czoxOiIyIjtzOjU6ImRlZmVyIjtzOjE6Im4iO3M6MTg6ImZpZWxkX3Nob3dfc21pbGV5cyI7czoxOiJuIjtzOjE5OiJmaWVsZF9zaG93X2dsb3NzYXJ5IjtzOjE6Im4iO3M6MjE6ImZpZWxkX3Nob3dfc3BlbGxjaGVjayI7czoxOiJuIjtzOjI2OiJmaWVsZF9zaG93X2Zvcm1hdHRpbmdfYnRucyI7czoxOiJuIjtzOjI0OiJmaWVsZF9zaG93X2ZpbGVfc2VsZWN0b3IiO3M6MToibiI7czoyMDoiZmllbGRfc2hvd193cml0ZW1vZGUiO3M6MToibiI7fQ=='),
	(32,1,7,'faq_short_answer','Short Answer','A description is needed.','wygwam','','0',0,0,6,128,'n','ltr','n','n','none','n',2,'any','YTo4OntzOjY6ImNvbmZpZyI7czoxOiIxIjtzOjU6ImRlZmVyIjtzOjE6Im4iO3M6MTg6ImZpZWxkX3Nob3dfc21pbGV5cyI7czoxOiJuIjtzOjE5OiJmaWVsZF9zaG93X2dsb3NzYXJ5IjtzOjE6Im4iO3M6MjE6ImZpZWxkX3Nob3dfc3BlbGxjaGVjayI7czoxOiJuIjtzOjI2OiJmaWVsZF9zaG93X2Zvcm1hdHRpbmdfYnRucyI7czoxOiJuIjtzOjI0OiJmaWVsZF9zaG93X2ZpbGVfc2VsZWN0b3IiO3M6MToibiI7czoyMDoiZmllbGRfc2hvd193cml0ZW1vZGUiO3M6MToibiI7fQ=='),
	(33,1,11,'form_and_resource_short_desc','Short Description','','wygwam','','0',0,0,6,128,'n','ltr','n','n','none','n',1,'any','YTo4OntzOjY6ImNvbmZpZyI7czoxOiIxIjtzOjU6ImRlZmVyIjtzOjE6Im4iO3M6MTg6ImZpZWxkX3Nob3dfc21pbGV5cyI7czoxOiJuIjtzOjE5OiJmaWVsZF9zaG93X2dsb3NzYXJ5IjtzOjE6Im4iO3M6MjE6ImZpZWxkX3Nob3dfc3BlbGxjaGVjayI7czoxOiJuIjtzOjI2OiJmaWVsZF9zaG93X2Zvcm1hdHRpbmdfYnRucyI7czoxOiJuIjtzOjI0OiJmaWVsZF9zaG93X2ZpbGVfc2VsZWN0b3IiO3M6MToibiI7czoyMDoiZmllbGRfc2hvd193cml0ZW1vZGUiO3M6MToibiI7fQ=='),
	(34,1,11,'form_and_resource_description','Description','','wygwam','','0',0,0,6,128,'n','ltr','n','n','none','n',2,'any','YTo4OntzOjY6ImNvbmZpZyI7czoxOiIyIjtzOjU6ImRlZmVyIjtzOjE6Im4iO3M6MTg6ImZpZWxkX3Nob3dfc21pbGV5cyI7czoxOiJuIjtzOjE5OiJmaWVsZF9zaG93X2dsb3NzYXJ5IjtzOjE6Im4iO3M6MjE6ImZpZWxkX3Nob3dfc3BlbGxjaGVjayI7czoxOiJuIjtzOjI2OiJmaWVsZF9zaG93X2Zvcm1hdHRpbmdfYnRucyI7czoxOiJuIjtzOjI0OiJmaWVsZF9zaG93X2ZpbGVfc2VsZWN0b3IiO3M6MToibiI7czoyMDoiZmllbGRfc2hvd193cml0ZW1vZGUiO3M6MToibiI7fQ=='),
	(35,1,11,'form_and_resource_download','Download','','file','','0',0,0,6,128,'n','ltr','n','n','none','n',3,'any','YToxMDp7czoxODoiZmllbGRfY29udGVudF90eXBlIjtzOjM6ImFsbCI7czoxOToiYWxsb3dlZF9kaXJlY3RvcmllcyI7czoxOiIzIjtzOjEzOiJzaG93X2V4aXN0aW5nIjtzOjE6InkiO3M6MTI6Im51bV9leGlzdGluZyI7czoyOiI1MCI7czoxODoiZmllbGRfc2hvd19zbWlsZXlzIjtzOjE6Im4iO3M6MTk6ImZpZWxkX3Nob3dfZ2xvc3NhcnkiO3M6MToibiI7czoyMToiZmllbGRfc2hvd19zcGVsbGNoZWNrIjtzOjE6Im4iO3M6MjY6ImZpZWxkX3Nob3dfZm9ybWF0dGluZ19idG5zIjtzOjE6Im4iO3M6MjQ6ImZpZWxkX3Nob3dfZmlsZV9zZWxlY3RvciI7czoxOiJuIjtzOjIwOiJmaWVsZF9zaG93X3dyaXRlbW9kZSI7czoxOiJuIjt9'),
	(36,1,13,'tool_and_app_short_desc','Short Description','','wygwam','','0',0,0,6,128,'n','ltr','n','n','none','n',1,'any','YTo4OntzOjY6ImNvbmZpZyI7czoxOiIxIjtzOjU6ImRlZmVyIjtzOjE6Im4iO3M6MTg6ImZpZWxkX3Nob3dfc21pbGV5cyI7czoxOiJuIjtzOjE5OiJmaWVsZF9zaG93X2dsb3NzYXJ5IjtzOjE6Im4iO3M6MjE6ImZpZWxkX3Nob3dfc3BlbGxjaGVjayI7czoxOiJuIjtzOjI2OiJmaWVsZF9zaG93X2Zvcm1hdHRpbmdfYnRucyI7czoxOiJuIjtzOjI0OiJmaWVsZF9zaG93X2ZpbGVfc2VsZWN0b3IiO3M6MToibiI7czoyMDoiZmllbGRfc2hvd193cml0ZW1vZGUiO3M6MToibiI7fQ=='),
	(37,1,13,'tool_and_app_description','Description','','wygwam','','0',0,0,6,128,'n','ltr','n','n','none','n',2,'any','YTo4OntzOjY6ImNvbmZpZyI7czoxOiIxIjtzOjU6ImRlZmVyIjtzOjE6Im4iO3M6MTg6ImZpZWxkX3Nob3dfc21pbGV5cyI7czoxOiJuIjtzOjE5OiJmaWVsZF9zaG93X2dsb3NzYXJ5IjtzOjE6Im4iO3M6MjE6ImZpZWxkX3Nob3dfc3BlbGxjaGVjayI7czoxOiJuIjtzOjI2OiJmaWVsZF9zaG93X2Zvcm1hdHRpbmdfYnRucyI7czoxOiJuIjtzOjI0OiJmaWVsZF9zaG93X2ZpbGVfc2VsZWN0b3IiO3M6MToibiI7czoyMDoiZmllbGRfc2hvd193cml0ZW1vZGUiO3M6MToibiI7fQ=='),
	(38,1,15,'compliance_watch_short_desc','Short Description','','wygwam','','0',0,0,6,128,'n','ltr','n','n','none','n',1,'any','YTo4OntzOjY6ImNvbmZpZyI7czoxOiIxIjtzOjU6ImRlZmVyIjtzOjE6Im4iO3M6MTg6ImZpZWxkX3Nob3dfc21pbGV5cyI7czoxOiJuIjtzOjE5OiJmaWVsZF9zaG93X2dsb3NzYXJ5IjtzOjE6Im4iO3M6MjE6ImZpZWxkX3Nob3dfc3BlbGxjaGVjayI7czoxOiJuIjtzOjI2OiJmaWVsZF9zaG93X2Zvcm1hdHRpbmdfYnRucyI7czoxOiJuIjtzOjI0OiJmaWVsZF9zaG93X2ZpbGVfc2VsZWN0b3IiO3M6MToibiI7czoyMDoiZmllbGRfc2hvd193cml0ZW1vZGUiO3M6MToibiI7fQ=='),
	(39,1,15,'compliance_watch_description','Description','','wygwam','','0',0,0,6,128,'n','ltr','n','n','none','n',2,'any','YTo4OntzOjY6ImNvbmZpZyI7czoxOiIyIjtzOjU6ImRlZmVyIjtzOjE6Im4iO3M6MTg6ImZpZWxkX3Nob3dfc21pbGV5cyI7czoxOiJuIjtzOjE5OiJmaWVsZF9zaG93X2dsb3NzYXJ5IjtzOjE6Im4iO3M6MjE6ImZpZWxkX3Nob3dfc3BlbGxjaGVjayI7czoxOiJuIjtzOjI2OiJmaWVsZF9zaG93X2Zvcm1hdHRpbmdfYnRucyI7czoxOiJuIjtzOjI0OiJmaWVsZF9zaG93X2ZpbGVfc2VsZWN0b3IiO3M6MToibiI7czoyMDoiZmllbGRfc2hvd193cml0ZW1vZGUiO3M6MToibiI7fQ=='),
	(40,1,16,'our_leadership_overview','Overview','','wygwam','','0',0,0,6,128,'n','ltr','n','n','none','n',1,'any','YTo4OntzOjY6ImNvbmZpZyI7czoxOiIxIjtzOjU6ImRlZmVyIjtzOjE6Im4iO3M6MTg6ImZpZWxkX3Nob3dfc21pbGV5cyI7czoxOiJuIjtzOjE5OiJmaWVsZF9zaG93X2dsb3NzYXJ5IjtzOjE6Im4iO3M6MjE6ImZpZWxkX3Nob3dfc3BlbGxjaGVjayI7czoxOiJuIjtzOjI2OiJmaWVsZF9zaG93X2Zvcm1hdHRpbmdfYnRucyI7czoxOiJuIjtzOjI0OiJmaWVsZF9zaG93X2ZpbGVfc2VsZWN0b3IiO3M6MToibiI7czoyMDoiZmllbGRfc2hvd193cml0ZW1vZGUiO3M6MToibiI7fQ=='),
	(41,1,16,'our_leadership_content','Content','','wygwam','','0',0,0,6,128,'n','ltr','n','n','none','n',2,'any','YTo4OntzOjY6ImNvbmZpZyI7czoxOiIyIjtzOjU6ImRlZmVyIjtzOjE6Im4iO3M6MTg6ImZpZWxkX3Nob3dfc21pbGV5cyI7czoxOiJuIjtzOjE5OiJmaWVsZF9zaG93X2dsb3NzYXJ5IjtzOjE6Im4iO3M6MjE6ImZpZWxkX3Nob3dfc3BlbGxjaGVjayI7czoxOiJuIjtzOjI2OiJmaWVsZF9zaG93X2Zvcm1hdHRpbmdfYnRucyI7czoxOiJuIjtzOjI0OiJmaWVsZF9zaG93X2ZpbGVfc2VsZWN0b3IiO3M6MToibiI7czoyMDoiZmllbGRfc2hvd193cml0ZW1vZGUiO3M6MToibiI7fQ=='),
	(42,1,9,'video_short_desc','Short Description','','wygwam','','0',0,0,6,128,'n','ltr','n','n','none','n',1,'any','YTo4OntzOjY6ImNvbmZpZyI7czoxOiIxIjtzOjU6ImRlZmVyIjtzOjE6Im4iO3M6MTg6ImZpZWxkX3Nob3dfc21pbGV5cyI7czoxOiJuIjtzOjE5OiJmaWVsZF9zaG93X2dsb3NzYXJ5IjtzOjE6Im4iO3M6MjE6ImZpZWxkX3Nob3dfc3BlbGxjaGVjayI7czoxOiJuIjtzOjI2OiJmaWVsZF9zaG93X2Zvcm1hdHRpbmdfYnRucyI7czoxOiJuIjtzOjI0OiJmaWVsZF9zaG93X2ZpbGVfc2VsZWN0b3IiO3M6MToibiI7czoyMDoiZmllbGRfc2hvd193cml0ZW1vZGUiO3M6MToibiI7fQ=='),
	(43,1,9,'video_description','Description','','wygwam','','0',0,0,6,128,'n','ltr','n','n','none','n',2,'any','YTo4OntzOjY6ImNvbmZpZyI7czoxOiIyIjtzOjU6ImRlZmVyIjtzOjE6Im4iO3M6MTg6ImZpZWxkX3Nob3dfc21pbGV5cyI7czoxOiJuIjtzOjE5OiJmaWVsZF9zaG93X2dsb3NzYXJ5IjtzOjE6Im4iO3M6MjE6ImZpZWxkX3Nob3dfc3BlbGxjaGVjayI7czoxOiJuIjtzOjI2OiJmaWVsZF9zaG93X2Zvcm1hdHRpbmdfYnRucyI7czoxOiJuIjtzOjI0OiJmaWVsZF9zaG93X2ZpbGVfc2VsZWN0b3IiO3M6MToibiI7czoyMDoiZmllbGRfc2hvd193cml0ZW1vZGUiO3M6MToibiI7fQ=='),
	(44,1,17,'our_leadership_position','Position','','text','','0',0,0,6,128,'n','ltr','n','n','none','n',1,'any','YTo3OntzOjE4OiJmaWVsZF9jb250ZW50X3R5cGUiO3M6MzoiYWxsIjtzOjE4OiJmaWVsZF9zaG93X3NtaWxleXMiO3M6MToibiI7czoxOToiZmllbGRfc2hvd19nbG9zc2FyeSI7czoxOiJuIjtzOjIxOiJmaWVsZF9zaG93X3NwZWxsY2hlY2siO3M6MToibiI7czoyNjoiZmllbGRfc2hvd19mb3JtYXR0aW5nX2J0bnMiO3M6MToibiI7czoyNDoiZmllbGRfc2hvd19maWxlX3NlbGVjdG9yIjtzOjE6Im4iO3M6MjA6ImZpZWxkX3Nob3dfd3JpdGVtb2RlIjtzOjE6Im4iO30='),
	(45,1,17,'our_leadership_photo','Photo','A size of XXpx W &times; XXpx H is recommended.','file','','0',0,0,6,128,'n','ltr','n','n','none','n',2,'any','YToxMDp7czoxODoiZmllbGRfY29udGVudF90eXBlIjtzOjU6ImltYWdlIjtzOjE5OiJhbGxvd2VkX2RpcmVjdG9yaWVzIjtzOjE6IjYiO3M6MTM6InNob3dfZXhpc3RpbmciO3M6MToieSI7czoxMjoibnVtX2V4aXN0aW5nIjtzOjI6IjUwIjtzOjE4OiJmaWVsZF9zaG93X3NtaWxleXMiO3M6MToibiI7czoxOToiZmllbGRfc2hvd19nbG9zc2FyeSI7czoxOiJuIjtzOjIxOiJmaWVsZF9zaG93X3NwZWxsY2hlY2siO3M6MToibiI7czoyNjoiZmllbGRfc2hvd19mb3JtYXR0aW5nX2J0bnMiO3M6MToibiI7czoyNDoiZmllbGRfc2hvd19maWxlX3NlbGVjdG9yIjtzOjE6Im4iO3M6MjA6ImZpZWxkX3Nob3dfd3JpdGVtb2RlIjtzOjE6Im4iO30='),
	(46,1,17,'our_leadership_bio','Bio','','wygwam','','0',0,0,6,128,'n','ltr','n','n','none','n',3,'any','YTo4OntzOjY6ImNvbmZpZyI7czoxOiIyIjtzOjU6ImRlZmVyIjtzOjE6Im4iO3M6MTg6ImZpZWxkX3Nob3dfc21pbGV5cyI7czoxOiJuIjtzOjE5OiJmaWVsZF9zaG93X2dsb3NzYXJ5IjtzOjE6Im4iO3M6MjE6ImZpZWxkX3Nob3dfc3BlbGxjaGVjayI7czoxOiJuIjtzOjI2OiJmaWVsZF9zaG93X2Zvcm1hdHRpbmdfYnRucyI7czoxOiJuIjtzOjI0OiJmaWVsZF9zaG93X2ZpbGVfc2VsZWN0b3IiO3M6MToibiI7czoyMDoiZmllbGRfc2hvd193cml0ZW1vZGUiO3M6MToibiI7fQ=='),
	(47,1,18,'careers_overview','Overview','','wygwam','','0',0,0,6,128,'n','ltr','n','n','none','n',1,'any','YTo4OntzOjY6ImNvbmZpZyI7czoxOiIxIjtzOjU6ImRlZmVyIjtzOjE6Im4iO3M6MTg6ImZpZWxkX3Nob3dfc21pbGV5cyI7czoxOiJuIjtzOjE5OiJmaWVsZF9zaG93X2dsb3NzYXJ5IjtzOjE6Im4iO3M6MjE6ImZpZWxkX3Nob3dfc3BlbGxjaGVjayI7czoxOiJuIjtzOjI2OiJmaWVsZF9zaG93X2Zvcm1hdHRpbmdfYnRucyI7czoxOiJuIjtzOjI0OiJmaWVsZF9zaG93X2ZpbGVfc2VsZWN0b3IiO3M6MToibiI7czoyMDoiZmllbGRfc2hvd193cml0ZW1vZGUiO3M6MToibiI7fQ=='),
	(48,1,19,'career_overview','Overview','','wygwam','','0',0,0,6,128,'n','ltr','n','n','none','n',2,'any','YTo4OntzOjY6ImNvbmZpZyI7czoxOiIxIjtzOjU6ImRlZmVyIjtzOjE6Im4iO3M6MTg6ImZpZWxkX3Nob3dfc21pbGV5cyI7czoxOiJuIjtzOjE5OiJmaWVsZF9zaG93X2dsb3NzYXJ5IjtzOjE6Im4iO3M6MjE6ImZpZWxkX3Nob3dfc3BlbGxjaGVjayI7czoxOiJuIjtzOjI2OiJmaWVsZF9zaG93X2Zvcm1hdHRpbmdfYnRucyI7czoxOiJuIjtzOjI0OiJmaWVsZF9zaG93X2ZpbGVfc2VsZWN0b3IiO3M6MToibiI7czoyMDoiZmllbGRfc2hvd193cml0ZW1vZGUiO3M6MToibiI7fQ=='),
	(49,1,19,'career_description','Description','','wygwam','','0',0,0,6,128,'n','ltr','n','n','none','n',3,'any','YTo4OntzOjY6ImNvbmZpZyI7czoxOiIyIjtzOjU6ImRlZmVyIjtzOjE6Im4iO3M6MTg6ImZpZWxkX3Nob3dfc21pbGV5cyI7czoxOiJuIjtzOjE5OiJmaWVsZF9zaG93X2dsb3NzYXJ5IjtzOjE6Im4iO3M6MjE6ImZpZWxkX3Nob3dfc3BlbGxjaGVjayI7czoxOiJuIjtzOjI2OiJmaWVsZF9zaG93X2Zvcm1hdHRpbmdfYnRucyI7czoxOiJuIjtzOjI0OiJmaWVsZF9zaG93X2ZpbGVfc2VsZWN0b3IiO3M6MToibiI7czoyMDoiZmllbGRfc2hvd193cml0ZW1vZGUiO3M6MToibiI7fQ=='),
	(50,1,19,'career_application','Application','','file','','0',0,0,6,128,'n','ltr','n','n','none','n',4,'any','YToxMDp7czoxODoiZmllbGRfY29udGVudF90eXBlIjtzOjM6ImFsbCI7czoxOToiYWxsb3dlZF9kaXJlY3RvcmllcyI7czoxOiIyIjtzOjEzOiJzaG93X2V4aXN0aW5nIjtzOjE6InkiO3M6MTI6Im51bV9leGlzdGluZyI7czoyOiI1MCI7czoxODoiZmllbGRfc2hvd19zbWlsZXlzIjtzOjE6Im4iO3M6MTk6ImZpZWxkX3Nob3dfZ2xvc3NhcnkiO3M6MToibiI7czoyMToiZmllbGRfc2hvd19zcGVsbGNoZWNrIjtzOjE6Im4iO3M6MjY6ImZpZWxkX3Nob3dfZm9ybWF0dGluZ19idG5zIjtzOjE6Im4iO3M6MjQ6ImZpZWxkX3Nob3dfZmlsZV9zZWxlY3RvciI7czoxOiJuIjtzOjIwOiJmaWVsZF9zaG93X3dyaXRlbW9kZSI7czoxOiJuIjt9'),
	(51,1,21,'news_and_event_overview','Overview','','wygwam','','0',0,0,6,128,'n','ltr','n','n','none','n',2,'any','YTo4OntzOjY6ImNvbmZpZyI7czoxOiIxIjtzOjU6ImRlZmVyIjtzOjE6Im4iO3M6MTg6ImZpZWxkX3Nob3dfc21pbGV5cyI7czoxOiJuIjtzOjE5OiJmaWVsZF9zaG93X2dsb3NzYXJ5IjtzOjE6Im4iO3M6MjE6ImZpZWxkX3Nob3dfc3BlbGxjaGVjayI7czoxOiJuIjtzOjI2OiJmaWVsZF9zaG93X2Zvcm1hdHRpbmdfYnRucyI7czoxOiJuIjtzOjI0OiJmaWVsZF9zaG93X2ZpbGVfc2VsZWN0b3IiO3M6MToibiI7czoyMDoiZmllbGRfc2hvd193cml0ZW1vZGUiO3M6MToibiI7fQ=='),
	(52,1,21,'news_and_event_excerpt','Excerpt','A description is needed.','wygwam','','0',0,0,6,128,'n','ltr','n','n','none','n',1,'any','YTo4OntzOjY6ImNvbmZpZyI7czoxOiIxIjtzOjU6ImRlZmVyIjtzOjE6Im4iO3M6MTg6ImZpZWxkX3Nob3dfc21pbGV5cyI7czoxOiJuIjtzOjE5OiJmaWVsZF9zaG93X2dsb3NzYXJ5IjtzOjE6Im4iO3M6MjE6ImZpZWxkX3Nob3dfc3BlbGxjaGVjayI7czoxOiJuIjtzOjI2OiJmaWVsZF9zaG93X2Zvcm1hdHRpbmdfYnRucyI7czoxOiJuIjtzOjI0OiJmaWVsZF9zaG93X2ZpbGVfc2VsZWN0b3IiO3M6MToibiI7czoyMDoiZmllbGRfc2hvd193cml0ZW1vZGUiO3M6MToibiI7fQ=='),
	(53,1,21,'news_and_event_content','Content','','wygwam','','0',0,0,6,128,'n','ltr','n','n','none','n',3,'any','YTo4OntzOjY6ImNvbmZpZyI7czoxOiIyIjtzOjU6ImRlZmVyIjtzOjE6Im4iO3M6MTg6ImZpZWxkX3Nob3dfc21pbGV5cyI7czoxOiJuIjtzOjE5OiJmaWVsZF9zaG93X2dsb3NzYXJ5IjtzOjE6Im4iO3M6MjE6ImZpZWxkX3Nob3dfc3BlbGxjaGVjayI7czoxOiJuIjtzOjI2OiJmaWVsZF9zaG93X2Zvcm1hdHRpbmdfYnRucyI7czoxOiJuIjtzOjI0OiJmaWVsZF9zaG93X2ZpbGVfc2VsZWN0b3IiO3M6MToibiI7czoyMDoiZmllbGRfc2hvd193cml0ZW1vZGUiO3M6MToibiI7fQ=='),
	(55,1,23,'testimonials_overview','Overview','','wygwam','','0',0,0,6,128,'n','ltr','n','n','none','n',1,'any','YTo4OntzOjY6ImNvbmZpZyI7czoxOiIxIjtzOjU6ImRlZmVyIjtzOjE6Im4iO3M6MTg6ImZpZWxkX3Nob3dfc21pbGV5cyI7czoxOiJuIjtzOjE5OiJmaWVsZF9zaG93X2dsb3NzYXJ5IjtzOjE6Im4iO3M6MjE6ImZpZWxkX3Nob3dfc3BlbGxjaGVjayI7czoxOiJuIjtzOjI2OiJmaWVsZF9zaG93X2Zvcm1hdHRpbmdfYnRucyI7czoxOiJuIjtzOjI0OiJmaWVsZF9zaG93X2ZpbGVfc2VsZWN0b3IiO3M6MToibiI7czoyMDoiZmllbGRfc2hvd193cml0ZW1vZGUiO3M6MToibiI7fQ=='),
	(56,1,24,'testimonial_quote','Quote','','wygwam','','0',0,0,6,128,'n','ltr','n','n','none','n',1,'any','YTo4OntzOjY6ImNvbmZpZyI7czoxOiIxIjtzOjU6ImRlZmVyIjtzOjE6Im4iO3M6MTg6ImZpZWxkX3Nob3dfc21pbGV5cyI7czoxOiJuIjtzOjE5OiJmaWVsZF9zaG93X2dsb3NzYXJ5IjtzOjE6Im4iO3M6MjE6ImZpZWxkX3Nob3dfc3BlbGxjaGVjayI7czoxOiJuIjtzOjI2OiJmaWVsZF9zaG93X2Zvcm1hdHRpbmdfYnRucyI7czoxOiJuIjtzOjI0OiJmaWVsZF9zaG93X2ZpbGVfc2VsZWN0b3IiO3M6MToibiI7czoyMDoiZmllbGRfc2hvd193cml0ZW1vZGUiO3M6MToibiI7fQ=='),
	(57,1,24,'testimonial_industry','Industry','','relationship','','0',0,0,6,128,'n','ltr','n','n','xhtml','n',2,'any','YToxNjp7czo4OiJjaGFubmVscyI7YToxOntpOjA7czoyOiIyOCI7fXM6NzoiZXhwaXJlZCI7aTowO3M6NjoiZnV0dXJlIjtpOjA7czoxMDoiY2F0ZWdvcmllcyI7YTowOnt9czo3OiJhdXRob3JzIjthOjA6e31zOjg6InN0YXR1c2VzIjthOjA6e31zOjU6ImxpbWl0IjtzOjM6IjEwMCI7czoxMToib3JkZXJfZmllbGQiO3M6NToidGl0bGUiO3M6OToib3JkZXJfZGlyIjtzOjM6ImFzYyI7czoxNDoiYWxsb3dfbXVsdGlwbGUiO2k6MDtzOjE4OiJmaWVsZF9zaG93X3NtaWxleXMiO3M6MToibiI7czoxOToiZmllbGRfc2hvd19nbG9zc2FyeSI7czoxOiJuIjtzOjIxOiJmaWVsZF9zaG93X3NwZWxsY2hlY2siO3M6MToibiI7czoyNjoiZmllbGRfc2hvd19mb3JtYXR0aW5nX2J0bnMiO3M6MToibiI7czoyNDoiZmllbGRfc2hvd19maWxlX3NlbGVjdG9yIjtzOjE6Im4iO3M6MjA6ImZpZWxkX3Nob3dfd3JpdGVtb2RlIjtzOjE6Im4iO30='),
	(58,1,24,'testimonial_city','City','','text','','0',0,0,6,128,'n','ltr','n','n','none','n',3,'any','YTo3OntzOjE4OiJmaWVsZF9jb250ZW50X3R5cGUiO3M6MzoiYWxsIjtzOjE4OiJmaWVsZF9zaG93X3NtaWxleXMiO3M6MToibiI7czoxOToiZmllbGRfc2hvd19nbG9zc2FyeSI7czoxOiJuIjtzOjIxOiJmaWVsZF9zaG93X3NwZWxsY2hlY2siO3M6MToibiI7czoyNjoiZmllbGRfc2hvd19mb3JtYXR0aW5nX2J0bnMiO3M6MToibiI7czoyNDoiZmllbGRfc2hvd19maWxlX3NlbGVjdG9yIjtzOjE6Im4iO3M6MjA6ImZpZWxkX3Nob3dfd3JpdGVtb2RlIjtzOjE6Im4iO30='),
	(59,1,24,'testimonial_state','State','','select','AL\nAK\nAZ\nAR\nCA\nCO\nCT\nDE\nDC\nFL\nGA\nHI\nID\nIL\nIN\nIA\nKS\nKY\nLA\nME\nMD\nMA\nMI\nMN\nMS\nMO\nMT\nNE\nNV\nNH\nNJ\nNM\nNY\nNC\nND\nOH\nOK\nOR\nPA\nRI\nSC\nSD\nTN\nTX\nUT\nVT\nVA\nWA\nWV\nWI\nWY','n',0,0,6,128,'n','ltr','n','n','none','n',4,'any','YTo2OntzOjE4OiJmaWVsZF9zaG93X3NtaWxleXMiO3M6MToibiI7czoxOToiZmllbGRfc2hvd19nbG9zc2FyeSI7czoxOiJuIjtzOjIxOiJmaWVsZF9zaG93X3NwZWxsY2hlY2siO3M6MToibiI7czoyNjoiZmllbGRfc2hvd19mb3JtYXR0aW5nX2J0bnMiO3M6MToibiI7czoyNDoiZmllbGRfc2hvd19maWxlX3NlbGVjdG9yIjtzOjE6Im4iO3M6MjA6ImZpZWxkX3Nob3dfd3JpdGVtb2RlIjtzOjE6Im4iO30='),
	(60,1,24,'testimonial_image','Image','A size of XXpx W &times; XXpx H is recommended.','file','','0',0,0,6,128,'n','ltr','n','n','none','n',5,'any','YToxMDp7czoxODoiZmllbGRfY29udGVudF90eXBlIjtzOjU6ImltYWdlIjtzOjE5OiJhbGxvd2VkX2RpcmVjdG9yaWVzIjtzOjI6IjExIjtzOjEzOiJzaG93X2V4aXN0aW5nIjtzOjE6InkiO3M6MTI6Im51bV9leGlzdGluZyI7czoyOiI1MCI7czoxODoiZmllbGRfc2hvd19zbWlsZXlzIjtzOjE6Im4iO3M6MTk6ImZpZWxkX3Nob3dfZ2xvc3NhcnkiO3M6MToibiI7czoyMToiZmllbGRfc2hvd19zcGVsbGNoZWNrIjtzOjE6Im4iO3M6MjY6ImZpZWxkX3Nob3dfZm9ybWF0dGluZ19idG5zIjtzOjE6Im4iO3M6MjQ6ImZpZWxkX3Nob3dfZmlsZV9zZWxlY3RvciI7czoxOiJuIjtzOjIwOiJmaWVsZF9zaG93X3dyaXRlbW9kZSI7czoxOiJuIjt9'),
	(61,1,25,'contact_overview','Overview','','wygwam','','0',0,0,6,128,'n','ltr','n','n','none','n',1,'any','YTo4OntzOjY6ImNvbmZpZyI7czoxOiIxIjtzOjU6ImRlZmVyIjtzOjE6Im4iO3M6MTg6ImZpZWxkX3Nob3dfc21pbGV5cyI7czoxOiJuIjtzOjE5OiJmaWVsZF9zaG93X2dsb3NzYXJ5IjtzOjE6Im4iO3M6MjE6ImZpZWxkX3Nob3dfc3BlbGxjaGVjayI7czoxOiJuIjtzOjI2OiJmaWVsZF9zaG93X2Zvcm1hdHRpbmdfYnRucyI7czoxOiJuIjtzOjI0OiJmaWVsZF9zaG93X2ZpbGVfc2VsZWN0b3IiO3M6MToibiI7czoyMDoiZmllbGRfc2hvd193cml0ZW1vZGUiO3M6MToibiI7fQ=='),
	(62,1,25,'contact_content','Content','','wygwam','','0',0,0,6,128,'n','ltr','n','n','none','n',2,'any','YTo4OntzOjY6ImNvbmZpZyI7czoxOiIyIjtzOjU6ImRlZmVyIjtzOjE6Im4iO3M6MTg6ImZpZWxkX3Nob3dfc21pbGV5cyI7czoxOiJuIjtzOjE5OiJmaWVsZF9zaG93X2dsb3NzYXJ5IjtzOjE6Im4iO3M6MjE6ImZpZWxkX3Nob3dfc3BlbGxjaGVjayI7czoxOiJuIjtzOjI2OiJmaWVsZF9zaG93X2Zvcm1hdHRpbmdfYnRucyI7czoxOiJuIjtzOjI0OiJmaWVsZF9zaG93X2ZpbGVfc2VsZWN0b3IiO3M6MToibiI7czoyMDoiZmllbGRfc2hvd193cml0ZW1vZGUiO3M6MToibiI7fQ=='),
	(63,1,25,'contact_contacts','Contacts','','grid','','0',0,0,6,128,'n','ltr','n','n','xhtml','n',3,'any','YTo4OntzOjEzOiJncmlkX21pbl9yb3dzIjtpOjA7czoxMzoiZ3JpZF9tYXhfcm93cyI7czowOiIiO3M6MTg6ImZpZWxkX3Nob3dfc21pbGV5cyI7czoxOiJuIjtzOjE5OiJmaWVsZF9zaG93X2dsb3NzYXJ5IjtzOjE6Im4iO3M6MjE6ImZpZWxkX3Nob3dfc3BlbGxjaGVjayI7czoxOiJuIjtzOjI2OiJmaWVsZF9zaG93X2Zvcm1hdHRpbmdfYnRucyI7czoxOiJuIjtzOjI0OiJmaWVsZF9zaG93X2ZpbGVfc2VsZWN0b3IiO3M6MToibiI7czoyMDoiZmllbGRfc2hvd193cml0ZW1vZGUiO3M6MToibiI7fQ=='),
	(72,1,30,'footer_cs_contact_one','Customer Service Contact One','','wygwam','','0',0,0,6,128,'n','ltr','n','n','none','n',1,'any','YTo4OntzOjY6ImNvbmZpZyI7czoxOiIxIjtzOjU6ImRlZmVyIjtzOjE6Im4iO3M6MTg6ImZpZWxkX3Nob3dfc21pbGV5cyI7czoxOiJuIjtzOjE5OiJmaWVsZF9zaG93X2dsb3NzYXJ5IjtzOjE6Im4iO3M6MjE6ImZpZWxkX3Nob3dfc3BlbGxjaGVjayI7czoxOiJuIjtzOjI2OiJmaWVsZF9zaG93X2Zvcm1hdHRpbmdfYnRucyI7czoxOiJuIjtzOjI0OiJmaWVsZF9zaG93X2ZpbGVfc2VsZWN0b3IiO3M6MToibiI7czoyMDoiZmllbGRfc2hvd193cml0ZW1vZGUiO3M6MToibiI7fQ=='),
	(73,1,30,'footer_cs_contact_two','Custom Service Contact Two','','wygwam','','0',0,0,6,128,'n','ltr','n','n','none','n',2,'any','YTo4OntzOjY6ImNvbmZpZyI7czoxOiIxIjtzOjU6ImRlZmVyIjtzOjE6Im4iO3M6MTg6ImZpZWxkX3Nob3dfc21pbGV5cyI7czoxOiJuIjtzOjE5OiJmaWVsZF9zaG93X2dsb3NzYXJ5IjtzOjE6Im4iO3M6MjE6ImZpZWxkX3Nob3dfc3BlbGxjaGVjayI7czoxOiJuIjtzOjI2OiJmaWVsZF9zaG93X2Zvcm1hdHRpbmdfYnRucyI7czoxOiJuIjtzOjI0OiJmaWVsZF9zaG93X2ZpbGVfc2VsZWN0b3IiO3M6MToibiI7czoyMDoiZmllbGRfc2hvd193cml0ZW1vZGUiO3M6MToibiI7fQ=='),
	(71,1,26,'advertisement_vendor_code','Vendor Code','','textarea','','0',0,0,6,128,'n','ltr','n','n','none','n',1,'any','YTo2OntzOjE4OiJmaWVsZF9zaG93X3NtaWxleXMiO3M6MToibiI7czoxOToiZmllbGRfc2hvd19nbG9zc2FyeSI7czoxOiJuIjtzOjIxOiJmaWVsZF9zaG93X3NwZWxsY2hlY2siO3M6MToibiI7czoyNjoiZmllbGRfc2hvd19mb3JtYXR0aW5nX2J0bnMiO3M6MToibiI7czoyNDoiZmllbGRfc2hvd19maWxlX3NlbGVjdG9yIjtzOjE6Im4iO3M6MjA6ImZpZWxkX3Nob3dfd3JpdGVtb2RlIjtzOjE6Im4iO30='),
	(66,1,28,'industry_icon','Icon','A size of XXpx W &times; XXpx H is recommended.','file','','0',0,0,6,128,'n','ltr','n','n','none','n',1,'any','YToxMDp7czoxODoiZmllbGRfY29udGVudF90eXBlIjtzOjU6ImltYWdlIjtzOjE5OiJhbGxvd2VkX2RpcmVjdG9yaWVzIjtzOjE6IjUiO3M6MTM6InNob3dfZXhpc3RpbmciO3M6MToieSI7czoxMjoibnVtX2V4aXN0aW5nIjtzOjI6IjUwIjtzOjE4OiJmaWVsZF9zaG93X3NtaWxleXMiO3M6MToibiI7czoxOToiZmllbGRfc2hvd19nbG9zc2FyeSI7czoxOiJuIjtzOjIxOiJmaWVsZF9zaG93X3NwZWxsY2hlY2siO3M6MToibiI7czoyNjoiZmllbGRfc2hvd19mb3JtYXR0aW5nX2J0bnMiO3M6MToibiI7czoyNDoiZmllbGRfc2hvd19maWxlX3NlbGVjdG9yIjtzOjE6Im4iO3M6MjA6ImZpZWxkX3Nob3dfd3JpdGVtb2RlIjtzOjE6Im4iO30='),
	(67,1,19,'career_short_description','Short description','','wygwam','','0',0,0,6,128,'n','ltr','n','n','none','n',1,'any','YTo4OntzOjY6ImNvbmZpZyI7czoxOiIxIjtzOjU6ImRlZmVyIjtzOjE6Im4iO3M6MTg6ImZpZWxkX3Nob3dfc21pbGV5cyI7czoxOiJuIjtzOjE5OiJmaWVsZF9zaG93X2dsb3NzYXJ5IjtzOjE6Im4iO3M6MjE6ImZpZWxkX3Nob3dfc3BlbGxjaGVjayI7czoxOiJuIjtzOjI2OiJmaWVsZF9zaG93X2Zvcm1hdHRpbmdfYnRucyI7czoxOiJuIjtzOjI0OiJmaWVsZF9zaG93X2ZpbGVfc2VsZWN0b3IiO3M6MToibiI7czoyMDoiZmllbGRfc2hvd193cml0ZW1vZGUiO3M6MToibiI7fQ=='),
	(68,1,19,'career_title_override','Title Override','Override the title displayed on the entry page. This allows for longer, keyword rich titles.','text','','0',0,0,6,128,'n','ltr','n','n','none','n',5,'any','YTo3OntzOjE4OiJmaWVsZF9jb250ZW50X3R5cGUiO3M6MzoiYWxsIjtzOjE4OiJmaWVsZF9zaG93X3NtaWxleXMiO3M6MToibiI7czoxOToiZmllbGRfc2hvd19nbG9zc2FyeSI7czoxOiJuIjtzOjIxOiJmaWVsZF9zaG93X3NwZWxsY2hlY2siO3M6MToibiI7czoyNjoiZmllbGRfc2hvd19mb3JtYXR0aW5nX2J0bnMiO3M6MToibiI7czoyNDoiZmllbGRfc2hvd19maWxlX3NlbGVjdG9yIjtzOjE6Im4iO3M6MjA6ImZpZWxkX3Nob3dfd3JpdGVtb2RlIjtzOjE6Im4iO30='),
	(70,1,18,'careers_title_override','Title Override','','text','','0',0,0,6,128,'n','ltr','n','n','none','n',2,'any','YTo3OntzOjE4OiJmaWVsZF9jb250ZW50X3R5cGUiO3M6MzoiYWxsIjtzOjE4OiJmaWVsZF9zaG93X3NtaWxleXMiO3M6MToibiI7czoxOToiZmllbGRfc2hvd19nbG9zc2FyeSI7czoxOiJuIjtzOjIxOiJmaWVsZF9zaG93X3NwZWxsY2hlY2siO3M6MToibiI7czoyNjoiZmllbGRfc2hvd19mb3JtYXR0aW5nX2J0bnMiO3M6MToibiI7czoyNDoiZmllbGRfc2hvd19maWxlX3NlbGVjdG9yIjtzOjE6Im4iO3M6MjA6ImZpZWxkX3Nob3dfd3JpdGVtb2RlIjtzOjE6Im4iO30='),
	(74,1,30,'footer_linkedin_url','LinkedIn URL','','text','','0',0,0,6,128,'n','ltr','n','n','none','n',3,'any','YTo3OntzOjE4OiJmaWVsZF9jb250ZW50X3R5cGUiO3M6MzoiYWxsIjtzOjE4OiJmaWVsZF9zaG93X3NtaWxleXMiO3M6MToibiI7czoxOToiZmllbGRfc2hvd19nbG9zc2FyeSI7czoxOiJuIjtzOjIxOiJmaWVsZF9zaG93X3NwZWxsY2hlY2siO3M6MToibiI7czoyNjoiZmllbGRfc2hvd19mb3JtYXR0aW5nX2J0bnMiO3M6MToibiI7czoyNDoiZmllbGRfc2hvd19maWxlX3NlbGVjdG9yIjtzOjE6Im4iO3M6MjA6ImZpZWxkX3Nob3dfd3JpdGVtb2RlIjtzOjE6Im4iO30='),
	(75,1,30,'footer_facebook_url','Facebook URL','','text','','0',0,0,6,128,'n','ltr','n','n','none','n',4,'any','YTo3OntzOjE4OiJmaWVsZF9jb250ZW50X3R5cGUiO3M6MzoiYWxsIjtzOjE4OiJmaWVsZF9zaG93X3NtaWxleXMiO3M6MToibiI7czoxOToiZmllbGRfc2hvd19nbG9zc2FyeSI7czoxOiJuIjtzOjIxOiJmaWVsZF9zaG93X3NwZWxsY2hlY2siO3M6MToibiI7czoyNjoiZmllbGRfc2hvd19mb3JtYXR0aW5nX2J0bnMiO3M6MToibiI7czoyNDoiZmllbGRfc2hvd19maWxlX3NlbGVjdG9yIjtzOjE6Im4iO3M6MjA6ImZpZWxkX3Nob3dfd3JpdGVtb2RlIjtzOjE6Im4iO30='),
	(76,1,29,'support_type_title','Title Override','Override the title displayed on the entry page. This allows for longer, keyword rich titles.','text','','0',0,0,6,128,'n','ltr','n','n','none','n',1,'any','YTo3OntzOjE4OiJmaWVsZF9jb250ZW50X3R5cGUiO3M6MzoiYWxsIjtzOjE4OiJmaWVsZF9zaG93X3NtaWxleXMiO3M6MToibiI7czoxOToiZmllbGRfc2hvd19nbG9zc2FyeSI7czoxOiJuIjtzOjIxOiJmaWVsZF9zaG93X3NwZWxsY2hlY2siO3M6MToibiI7czoyNjoiZmllbGRfc2hvd19mb3JtYXR0aW5nX2J0bnMiO3M6MToibiI7czoyNDoiZmllbGRfc2hvd19maWxlX3NlbGVjdG9yIjtzOjE6Im4iO3M6MjA6ImZpZWxkX3Nob3dfd3JpdGVtb2RlIjtzOjE6Im4iO30='),
	(77,1,29,'support_type_overview','Overview','','wygwam','','0',0,0,6,128,'n','ltr','n','n','none','n',2,'any','YTo4OntzOjY6ImNvbmZpZyI7czoxOiIxIjtzOjU6ImRlZmVyIjtzOjE6Im4iO3M6MTg6ImZpZWxkX3Nob3dfc21pbGV5cyI7czoxOiJuIjtzOjE5OiJmaWVsZF9zaG93X2dsb3NzYXJ5IjtzOjE6Im4iO3M6MjE6ImZpZWxkX3Nob3dfc3BlbGxjaGVjayI7czoxOiJuIjtzOjI2OiJmaWVsZF9zaG93X2Zvcm1hdHRpbmdfYnRucyI7czoxOiJuIjtzOjI0OiJmaWVsZF9zaG93X2ZpbGVfc2VsZWN0b3IiO3M6MToibiI7czoyMDoiZmllbGRfc2hvd193cml0ZW1vZGUiO3M6MToibiI7fQ=='),
	(78,1,29,'support_type_short_desc','Short Description','','wygwam','','0',0,0,6,128,'n','ltr','n','n','none','n',3,'any','YTo4OntzOjY6ImNvbmZpZyI7czoxOiIxIjtzOjU6ImRlZmVyIjtzOjE6Im4iO3M6MTg6ImZpZWxkX3Nob3dfc21pbGV5cyI7czoxOiJuIjtzOjE5OiJmaWVsZF9zaG93X2dsb3NzYXJ5IjtzOjE6Im4iO3M6MjE6ImZpZWxkX3Nob3dfc3BlbGxjaGVjayI7czoxOiJuIjtzOjI2OiJmaWVsZF9zaG93X2Zvcm1hdHRpbmdfYnRucyI7czoxOiJuIjtzOjI0OiJmaWVsZF9zaG93X2ZpbGVfc2VsZWN0b3IiO3M6MToibiI7czoyMDoiZmllbGRfc2hvd193cml0ZW1vZGUiO3M6MToibiI7fQ=='),
	(79,1,29,'support_type_icon','Icon','A size of 300px W &times; 300px H is recommended.','file','','0',0,0,6,128,'n','ltr','n','n','none','n',4,'any','YToxMDp7czoxODoiZmllbGRfY29udGVudF90eXBlIjtzOjU6ImltYWdlIjtzOjE5OiJhbGxvd2VkX2RpcmVjdG9yaWVzIjtzOjI6IjE1IjtzOjEzOiJzaG93X2V4aXN0aW5nIjtzOjE6InkiO3M6MTI6Im51bV9leGlzdGluZyI7czoyOiI1MCI7czoxODoiZmllbGRfc2hvd19zbWlsZXlzIjtzOjE6Im4iO3M6MTk6ImZpZWxkX3Nob3dfZ2xvc3NhcnkiO3M6MToibiI7czoyMToiZmllbGRfc2hvd19zcGVsbGNoZWNrIjtzOjE6Im4iO3M6MjY6ImZpZWxkX3Nob3dfZm9ybWF0dGluZ19idG5zIjtzOjE6Im4iO3M6MjQ6ImZpZWxkX3Nob3dfZmlsZV9zZWxlY3RvciI7czoxOiJuIjtzOjIwOiJmaWVsZF9zaG93X3dyaXRlbW9kZSI7czoxOiJuIjt9'),
	(84,1,31,'alert_more_information','More Information','A description is needed...','text','','0',0,0,6,128,'n','ltr','n','n','none','n',2,'any','YTo3OntzOjE4OiJmaWVsZF9jb250ZW50X3R5cGUiO3M6MzoiYWxsIjtzOjE4OiJmaWVsZF9zaG93X3NtaWxleXMiO3M6MToibiI7czoxOToiZmllbGRfc2hvd19nbG9zc2FyeSI7czoxOiJuIjtzOjIxOiJmaWVsZF9zaG93X3NwZWxsY2hlY2siO3M6MToibiI7czoyNjoiZmllbGRfc2hvd19mb3JtYXR0aW5nX2J0bnMiO3M6MToibiI7czoyNDoiZmllbGRfc2hvd19maWxlX3NlbGVjdG9yIjtzOjE6Im4iO3M6MjA6ImZpZWxkX3Nob3dfd3JpdGVtb2RlIjtzOjE6Im4iO30='),
	(85,1,32,'client_logo','Logo','A size of XXpx W &times; XXpx H is recommended.','file','','0',0,0,6,128,'n','ltr','n','n','none','n',1,'any','YToxMDp7czoxODoiZmllbGRfY29udGVudF90eXBlIjtzOjU6ImltYWdlIjtzOjE5OiJhbGxvd2VkX2RpcmVjdG9yaWVzIjtzOjI6IjE2IjtzOjEzOiJzaG93X2V4aXN0aW5nIjtzOjE6InkiO3M6MTI6Im51bV9leGlzdGluZyI7czoyOiI1MCI7czoxODoiZmllbGRfc2hvd19zbWlsZXlzIjtzOjE6Im4iO3M6MTk6ImZpZWxkX3Nob3dfZ2xvc3NhcnkiO3M6MToibiI7czoyMToiZmllbGRfc2hvd19zcGVsbGNoZWNrIjtzOjE6Im4iO3M6MjY6ImZpZWxkX3Nob3dfZm9ybWF0dGluZ19idG5zIjtzOjE6Im4iO3M6MjQ6ImZpZWxkX3Nob3dfZmlsZV9zZWxlY3RvciI7czoxOiJuIjtzOjIwOiJmaWVsZF9zaG93X3dyaXRlbW9kZSI7czoxOiJuIjt9'),
	(86,1,32,'client_buttons','Buttons','','grid','','0',0,0,6,128,'n','ltr','n','n','xhtml','n',2,'any','YTo4OntzOjEzOiJncmlkX21pbl9yb3dzIjtpOjA7czoxMzoiZ3JpZF9tYXhfcm93cyI7czoxOiIzIjtzOjE4OiJmaWVsZF9zaG93X3NtaWxleXMiO3M6MToibiI7czoxOToiZmllbGRfc2hvd19nbG9zc2FyeSI7czoxOiJuIjtzOjIxOiJmaWVsZF9zaG93X3NwZWxsY2hlY2siO3M6MToibiI7czoyNjoiZmllbGRfc2hvd19mb3JtYXR0aW5nX2J0bnMiO3M6MToibiI7czoyNDoiZmllbGRfc2hvd19maWxlX3NlbGVjdG9yIjtzOjE6Im4iO3M6MjA6ImZpZWxkX3Nob3dfd3JpdGVtb2RlIjtzOjE6Im4iO30='),
	(87,1,32,'client_sections','Sections','','grid','','0',0,0,6,128,'n','ltr','n','n','xhtml','n',3,'any','YTo4OntzOjEzOiJncmlkX21pbl9yb3dzIjtpOjA7czoxMzoiZ3JpZF9tYXhfcm93cyI7czowOiIiO3M6MTg6ImZpZWxkX3Nob3dfc21pbGV5cyI7czoxOiJuIjtzOjE5OiJmaWVsZF9zaG93X2dsb3NzYXJ5IjtzOjE6Im4iO3M6MjE6ImZpZWxkX3Nob3dfc3BlbGxjaGVjayI7czoxOiJuIjtzOjI2OiJmaWVsZF9zaG93X2Zvcm1hdHRpbmdfYnRucyI7czoxOiJuIjtzOjI0OiJmaWVsZF9zaG93X2ZpbGVfc2VsZWN0b3IiO3M6MToibiI7czoyMDoiZmllbGRfc2hvd193cml0ZW1vZGUiO3M6MToibiI7fQ==');

/*!40000 ALTER TABLE `exp_channel_fields` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table exp_channel_form_settings
# ------------------------------------------------------------

DROP TABLE IF EXISTS `exp_channel_form_settings`;

CREATE TABLE `exp_channel_form_settings` (
  `channel_form_settings_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `site_id` int(4) unsigned NOT NULL DEFAULT '0',
  `channel_id` int(6) unsigned NOT NULL DEFAULT '0',
  `default_status` varchar(50) NOT NULL DEFAULT 'open',
  `require_captcha` char(1) NOT NULL DEFAULT 'n',
  `allow_guest_posts` char(1) NOT NULL DEFAULT 'n',
  `default_author` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`channel_form_settings_id`),
  KEY `site_id` (`site_id`),
  KEY `channel_id` (`channel_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table exp_channel_grid_field_1
# ------------------------------------------------------------

DROP TABLE IF EXISTS `exp_channel_grid_field_1`;

CREATE TABLE `exp_channel_grid_field_1` (
  `row_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(10) unsigned DEFAULT NULL,
  `row_order` int(10) unsigned DEFAULT NULL,
  `col_id_1` text,
  `col_id_2` text,
  PRIMARY KEY (`row_id`),
  KEY `entry_id` (`entry_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `exp_channel_grid_field_1` WRITE;
/*!40000 ALTER TABLE `exp_channel_grid_field_1` DISABLE KEYS */;

INSERT INTO `exp_channel_grid_field_1` (`row_id`, `entry_id`, `row_order`, `col_id_1`, `col_id_2`)
VALUES
	(1,81,0,'Access your FSA, HRA, HSA, TRP Account(s)','http://www.chard-snyder.com/'),
	(2,81,1,'Access your COBRA, Retiree Billing, Direct Billing Account(s)','http://www.chard-snyder.com/');

/*!40000 ALTER TABLE `exp_channel_grid_field_1` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table exp_channel_grid_field_10
# ------------------------------------------------------------

DROP TABLE IF EXISTS `exp_channel_grid_field_10`;

CREATE TABLE `exp_channel_grid_field_10` (
  `row_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(10) unsigned DEFAULT NULL,
  `row_order` int(10) unsigned DEFAULT NULL,
  `col_id_11` text,
  `col_id_13` text,
  PRIMARY KEY (`row_id`),
  KEY `entry_id` (`entry_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `exp_channel_grid_field_10` WRITE;
/*!40000 ALTER TABLE `exp_channel_grid_field_10` DISABLE KEYS */;

INSERT INTO `exp_channel_grid_field_10` (`row_id`, `entry_id`, `row_order`, `col_id_11`, `col_id_13`)
VALUES
	(1,80,0,'Customer Servicez','800-982-7715z'),
	(2,80,1,'Customer Servicez','888-993-4646z');

/*!40000 ALTER TABLE `exp_channel_grid_field_10` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table exp_channel_grid_field_13
# ------------------------------------------------------------

DROP TABLE IF EXISTS `exp_channel_grid_field_13`;

CREATE TABLE `exp_channel_grid_field_13` (
  `row_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(10) unsigned DEFAULT NULL,
  `row_order` int(10) unsigned DEFAULT NULL,
  `col_id_14` text,
  `col_id_15` text,
  PRIMARY KEY (`row_id`),
  KEY `entry_id` (`entry_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `exp_channel_grid_field_13` WRITE;
/*!40000 ALTER TABLE `exp_channel_grid_field_13` DISABLE KEYS */;

INSERT INTO `exp_channel_grid_field_13` (`row_id`, `entry_id`, `row_order`, `col_id_14`, `col_id_15`)
VALUES
	(1,80,0,'Benefitsz','/benefitsz/'),
	(2,80,1,'Support Centerz','/support-centerz/');

/*!40000 ALTER TABLE `exp_channel_grid_field_13` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table exp_channel_grid_field_14
# ------------------------------------------------------------

DROP TABLE IF EXISTS `exp_channel_grid_field_14`;

CREATE TABLE `exp_channel_grid_field_14` (
  `row_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(10) unsigned DEFAULT NULL,
  `row_order` int(10) unsigned DEFAULT NULL,
  `col_id_16` text,
  `col_id_18` text,
  PRIMARY KEY (`row_id`),
  KEY `entry_id` (`entry_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `exp_channel_grid_field_14` WRITE;
/*!40000 ALTER TABLE `exp_channel_grid_field_14` DISABLE KEYS */;

INSERT INTO `exp_channel_grid_field_14` (`row_id`, `entry_id`, `row_order`, `col_id_16`, `col_id_18`)
VALUES
	(1,80,0,'Customer Servicez','800-982-7715z'),
	(2,80,1,'Customer Servicez','888-993-4646z');

/*!40000 ALTER TABLE `exp_channel_grid_field_14` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table exp_channel_grid_field_2
# ------------------------------------------------------------

DROP TABLE IF EXISTS `exp_channel_grid_field_2`;

CREATE TABLE `exp_channel_grid_field_2` (
  `row_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(10) unsigned DEFAULT NULL,
  `row_order` int(10) unsigned DEFAULT NULL,
  `col_id_3` text,
  `col_id_4` text,
  PRIMARY KEY (`row_id`),
  KEY `entry_id` (`entry_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `exp_channel_grid_field_2` WRITE;
/*!40000 ALTER TABLE `exp_channel_grid_field_2` DISABLE KEYS */;

INSERT INTO `exp_channel_grid_field_2` (`row_id`, `entry_id`, `row_order`, `col_id_3`, `col_id_4`)
VALUES
	(1,81,0,'View your Employees\' FSA, HRA, TRP Plan Info and Employer Docs','http://www.chard-snyder.com/'),
	(2,81,1,'View COBRA, Retiree Billing, Direct Billing Reports and Plan Info','http://www.chard-snyder.com/'),
	(3,81,2,'Pay your Chard Snyder Invoice','http://www.chard-snyder.com/');

/*!40000 ALTER TABLE `exp_channel_grid_field_2` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table exp_channel_grid_field_3
# ------------------------------------------------------------

DROP TABLE IF EXISTS `exp_channel_grid_field_3`;

CREATE TABLE `exp_channel_grid_field_3` (
  `row_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(10) unsigned DEFAULT NULL,
  `row_order` int(10) unsigned DEFAULT NULL,
  `col_id_5` text,
  `col_id_6` text,
  PRIMARY KEY (`row_id`),
  KEY `entry_id` (`entry_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `exp_channel_grid_field_3` WRITE;
/*!40000 ALTER TABLE `exp_channel_grid_field_3` DISABLE KEYS */;

INSERT INTO `exp_channel_grid_field_3` (`row_id`, `entry_id`, `row_order`, `col_id_5`, `col_id_6`)
VALUES
	(1,80,0,'{filedir_4}hero-image-example.jpg','A description of hero one.'),
	(2,80,1,'{filedir_4}hero-image-example.jpg','A description of hero two.');

/*!40000 ALTER TABLE `exp_channel_grid_field_3` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table exp_channel_grid_field_6
# ------------------------------------------------------------

DROP TABLE IF EXISTS `exp_channel_grid_field_6`;

CREATE TABLE `exp_channel_grid_field_6` (
  `row_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(10) unsigned DEFAULT NULL,
  `row_order` int(10) unsigned DEFAULT NULL,
  `col_id_7` text,
  `col_id_8` text,
  `col_id_28` text,
  `col_id_29` text,
  `col_id_30` text,
  `col_id_31` text,
  `col_id_32` text,
  PRIMARY KEY (`row_id`),
  KEY `entry_id` (`entry_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `exp_channel_grid_field_6` WRITE;
/*!40000 ALTER TABLE `exp_channel_grid_field_6` DISABLE KEYS */;

INSERT INTO `exp_channel_grid_field_6` (`row_id`, `entry_id`, `row_order`, `col_id_7`, `col_id_8`, `col_id_28`, `col_id_29`, `col_id_30`, `col_id_31`, `col_id_32`)
VALUES
	(1,80,0,'{filedir_10}slide-image-example.jpg','Spending and Savings Accounts','<p>Flexible Spending Accounts (FSAs) are part of an IRS regulated, employer-sponsored benefit plan that allows participants to voluntarily convert part of their compensation into tax-free benefits. Contributions made through FSAs are normally free of federal, state and Social Security taxes.</p>','Plan Information','/benefits/','Common Questions','/about/'),
	(2,80,1,'{filedir_10}slide-image-example.jpg','Benefit Continuation Services','<p>Benefit Continuation Services are part of an IRS regulated, employer-sponsored benefit plan that allows participants to voluntarily convert part of their compensation into tax-free benefits. Contributions made through FSAs are normally free of federal, state and Social Security taxes.</p>','Plan Information','/benefits/','Common Questions','/about/');

/*!40000 ALTER TABLE `exp_channel_grid_field_6` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table exp_channel_grid_field_63
# ------------------------------------------------------------

DROP TABLE IF EXISTS `exp_channel_grid_field_63`;

CREATE TABLE `exp_channel_grid_field_63` (
  `row_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(10) unsigned DEFAULT NULL,
  `row_order` int(10) unsigned DEFAULT NULL,
  `col_id_19` text,
  `col_id_20` text,
  PRIMARY KEY (`row_id`),
  KEY `entry_id` (`entry_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `exp_channel_grid_field_63` WRITE;
/*!40000 ALTER TABLE `exp_channel_grid_field_63` DISABLE KEYS */;

INSERT INTO `exp_channel_grid_field_63` (`row_id`, `entry_id`, `row_order`, `col_id_19`, `col_id_20`)
VALUES
	(6,44,1,'Another Title','<p>Chard Snyder<br />\n3510 Irwin Simpson Road<br />\nMason, OH 45040<br />\n<br />\nOffice: 8am &ndash; 5pm ET Mon-Fri<br />\nTel: 513-459-9997<br />\nFax: 513-459-9947</p>'),
	(5,44,0,'Title','<p>Chard Snyder<br />\n3510 Irwin Simpson Road<br />\nMason, OH 45040<br />\n<br />\nOffice: 8am &ndash; 5pm ET Mon-Fri<br />\nTel: 513-459-9997<br />\nFax: 513-459-9947</p>');

/*!40000 ALTER TABLE `exp_channel_grid_field_63` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table exp_channel_grid_field_86
# ------------------------------------------------------------

DROP TABLE IF EXISTS `exp_channel_grid_field_86`;

CREATE TABLE `exp_channel_grid_field_86` (
  `row_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(10) unsigned DEFAULT NULL,
  `row_order` int(10) unsigned DEFAULT NULL,
  `col_id_33` text,
  `col_id_34` text,
  PRIMARY KEY (`row_id`),
  KEY `entry_id` (`entry_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `exp_channel_grid_field_86` WRITE;
/*!40000 ALTER TABLE `exp_channel_grid_field_86` DISABLE KEYS */;

INSERT INTO `exp_channel_grid_field_86` (`row_id`, `entry_id`, `row_order`, `col_id_33`, `col_id_34`)
VALUES
	(1,103,0,'Access Your Account','http://chard-snyder.asddev.com');

/*!40000 ALTER TABLE `exp_channel_grid_field_86` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table exp_channel_grid_field_87
# ------------------------------------------------------------

DROP TABLE IF EXISTS `exp_channel_grid_field_87`;

CREATE TABLE `exp_channel_grid_field_87` (
  `row_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(10) unsigned DEFAULT NULL,
  `row_order` int(10) unsigned DEFAULT NULL,
  `col_id_35` text,
  `col_id_36` text,
  PRIMARY KEY (`row_id`),
  KEY `entry_id` (`entry_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `exp_channel_grid_field_87` WRITE;
/*!40000 ALTER TABLE `exp_channel_grid_field_87` DISABLE KEYS */;

INSERT INTO `exp_channel_grid_field_87` (`row_id`, `entry_id`, `row_order`, `col_id_35`, `col_id_36`)
VALUES
	(1,103,0,'Boston Scientific Flexible Benefit','<p>Welcome Boston Scientific Flexible Benefit Plan participants to our online customer service center. If you are having trouble logging in to your account or navigating, please contact our Customer Service Center toll-free at 800-982-7715 or email us at <a href=\"mailto:askpenny@chard-snyder.com\">askpenny@chard-snyder.com</a> and we will be happy to assist you with any issues.</p>\n\n<h2>Limited Flexible Spending Account and Dependent Daycare Account available for use with your Health Savings Account!</h2>\n\n<ul>\n	<li>More info on options you can use with your Health Savings Accounts</li>\n	<li>HealthEquity administers Boston Scientific Employees&#39; Health Savings Accounts (HSA). To view your HSA details visit <a href=\"http://www.healthequity.com\">www.healthequity.com</a> or contact Health Equity at 877-694-3938</li>\n</ul>\n\n<h2>Healthcare Flexible Spending Account Carryover Provision</h2>\n\n<p>Health Care Accounts include the carryover provision which means that up to $500 of your balance on December 31, 2015 will be carried over into a new Flexible Spending Account on January 1, 2016.</p>\n\n<ul>\n	<li>Flexible Spending Account claims for expenses dated between January 1 and December 31, 2015 will be paid as usual from that year&#39;s balance through May 31, 2016</li>\n	<li>Any leftover balance (up to $500) in your 2015 healthcare Flexible Spending Account (including a Limited Flexible Spending Account) will be carried over into your 2016 plan</li>\n</ul>\n\n<p><b>The carryover feature does not affect your dependent daycare FSA.</b></p>'),
	(2,103,1,'Benny Prepaid Benefits Card','<p>Your Benny&reg; prepaid benefits card is loaded with the value of your annual Boston Scientific FSA election amount. Using your Card helps you keep cash in your wallet and makes accessing your FSA funds easy. The Card can be used instead of cash to pay for qualified health care expenses. Do not throw away your Benny after you have exhausted your funds. The card is good while you participate.</p>\n\n<h2>Additional Benny Prepaid Benefits Card Info</h2>\n\n<p>Your Benny Prepaid Benefits Card will definitely improve your cash flow. Simply swipe your Card each time you incur a qualified health care expense and the amount of your purchase will be deducted from your FSA &ndash; automatically. You can also fill in your Card number on invoices from your provider to pay the amount you owe.</p>\n\n<p>Remember, the Card will not work at gas stations or restaurants &ndash; only at health care related providers for services and merchandise such as:</p>\n\n<ul>\n	<li>Covered prescription and doctor co-payments and deductibles</li>\n	<li>LASIK surgery and eyeglasses</li>\n	<li>Out-of-pocket dentist or other provider fees</li>\n	<li>Mail order and online prescriptions co-payments and deductibles</li>\n	<li>Health plan deductibles and co-insurance</li>\n	<li>Patient balance due</li>\n	<li>Orthodontics</li>\n	<li>Over-the-counter (OTC) items at participating pharmacies, department stores, discount stores and supermarkets</li>\n</ul>\n\n<p>To take advantage of this feature, be sure to check to see if your retail outlet participates BEFORE you order prescriptions or shop for certain over-the-counter medications. You can find out which stores are participating by viewing the <a href=\"#\">List of IIAS Vendors</a> or by contacting Chard Snyder at 800-982-7715. You can also use Benny&reg; at health care providers such as hospitals, doctors, and dentists.</p>\n\n<h2>It&rsquo;s Important to Save Your Receipts!</h2>\n\n<p>There are Card transactions that will be audited. Please be aware that the IRS requires the Benny&reg; Prepaid Benefits Card be used only for eligible expenses. Most of the time, we can verify the eligibility of the expense automatically. Yet, there are instances when you&rsquo;ll receive a letter/notification asking you to furnish an itemized receipt to verify the expense. When you receive such a request, make sure you submit the receipts as soon as possible to avoid having your Card suspended until receipts have been submitted and approved.</p>\n\n<h2>What is an itemized receipt?</h2>\n\n<p>An itemized receipt must include: merchant or provider name, services received or item purchased, date of service, and amount of the expense. Cancelled checks, handwritten receipts, card transaction receipts or previous balance receipts cannot be used to verify an expense. We suggest that you keep itemized receipts in one place so they&#39;re readily available when you receive a request. If you are asked for receipts, please send us copies as we destroy all receipts after they are processed.</p>\n\n<h2>Additional Questions?</h2>\n\n<p>Please feel free to contact Chard Snyder and speak with our Customer Service Center toll-free at 800-982-7715. You may also download a copy of the <a href=\"#\">Benny Brochure</a>. And remember, you can <a href=\"#\">Access Your Account</a> and check your account balance any time.</p>'),
	(3,103,2,'Flexible Spending Plans','<p>You have the option of using any of three Flexible Spending Accounts (FSAs) &ndash; see below for a description of each plan. Since you don&#39;t pay income and Social Security taxes on your contributions and reimbursements, using an FSA is like getting a discount on services and merchandise that is equal to your tax bracket. These are powerful savings tools you can use to save money.</p>\n\n<h2>Welcome Boston Scientific Flexible Spending Plan Participants</h2>\n\n<p>There are Several Types of Flexible Spending Accounts</p>\n\n<p><b>Healthcare Flexible Spending Accounts</b> are used for any qualifying out-of-pocket medical, dental and vision expenses.</p>\n\n<p><b>Dependent Daycare Flexible Spending Accounts</b> are used for eligible daycare expenses for your children or elderly parents while you and your spouse are at work.</p>\n\n<p><b>Limited Healthcare Flexible Spending Accounts</b> are used in conjunction with the consumer-driven health insurance plan and can only be used for eligible dental, orthodontia and optical expenses.</p>\n\n<p>The following is an outline of the benefits included in your plan.</p>\n\n<p><b>Minimums and Maximums</b> &ndash; The Health Care FSA and the Limited FSA have a $130 minimum and a $2,550 maximum. The Dependent Care FSA has a $130 minimum and a $5,000 maximum.</p>\n\n<p><b>Claims Submission</b> &ndash; You will begin sending your claim forms and receipts directly to Chard Snyder by fax, mail or using our online claims submission.</p>\n\n<p><b>Reimbursements</b> &ndash; You are currently reimbursed weekly. Reimbursements will be issued three times per week (Mondays, Wednesdays, and Fridays) by check or direct deposit, which should increase the expediency of your reimbursements.</p>\n\n<p><b>Instant Email Notifications</b> &ndash; If you provide us with your email address, you will receive an instant email when your claim arrives and is entered into our system, and a second email when your reimbursement has been issued. You&rsquo;ll also enjoy tips and reminders concerning your FSA plan.</p>\n\n<p><b>Customer Service</b> &ndash; Our customer service personnel will be available to help you Monday through Friday, 8am &ndash; 9pm EST. When you call Chard Snyder, your call is answered by a &ldquo;live&rdquo; person, not a computerized voice mail response system.</p>\n\n<h2>H2 Headline</h2>\n\n<h3>H3 Headline</h3>\n\n<h4>H4 headline</h4>\n\n<h5>H5 headline</h5>\n\n<h6>H6 Headline</h6>'),
	(4,103,3,'Forms and Information','<p>Below are downloadable forms and brochures for your plan. Adobe Reader is required to view and download.</p>\n\n<p><i>Important Update: Please note that the end of the runout period for all plans will remain May 31 of the following year.</i></p>\n\n<p><a href=\"#\">Enrollment Brochure<br />\nParticipant Online Access Instructions<br />\nWhy you may be asked for receipts?<br />\nIn an HSA? Limited, Dependent Daycare FSAs Maximize Savings</a></p>\n\n<h2>Forms</h2>\n\n<p><a href=\"#\">Flexible Spending Plan Claim Form<br />\nDirect Deposit Authorization Form</a></p>');

/*!40000 ALTER TABLE `exp_channel_grid_field_87` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table exp_channel_grid_field_9
# ------------------------------------------------------------

DROP TABLE IF EXISTS `exp_channel_grid_field_9`;

CREATE TABLE `exp_channel_grid_field_9` (
  `row_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(10) unsigned DEFAULT NULL,
  `row_order` int(10) unsigned DEFAULT NULL,
  `col_id_9` text,
  `col_id_10` text,
  PRIMARY KEY (`row_id`),
  KEY `entry_id` (`entry_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `exp_channel_grid_field_9` WRITE;
/*!40000 ALTER TABLE `exp_channel_grid_field_9` DISABLE KEYS */;

INSERT INTO `exp_channel_grid_field_9` (`row_id`, `entry_id`, `row_order`, `col_id_9`, `col_id_10`)
VALUES
	(1,80,0,'Benefitsz','/benefitsz/'),
	(2,80,1,'Support Centerz','/support-centerz/');

/*!40000 ALTER TABLE `exp_channel_grid_field_9` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table exp_channel_member_groups
# ------------------------------------------------------------

DROP TABLE IF EXISTS `exp_channel_member_groups`;

CREATE TABLE `exp_channel_member_groups` (
  `group_id` smallint(4) unsigned NOT NULL,
  `channel_id` int(6) unsigned NOT NULL,
  PRIMARY KEY (`group_id`,`channel_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table exp_channel_titles
# ------------------------------------------------------------

DROP TABLE IF EXISTS `exp_channel_titles`;

CREATE TABLE `exp_channel_titles` (
  `entry_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `site_id` int(4) unsigned NOT NULL DEFAULT '1',
  `channel_id` int(4) unsigned NOT NULL,
  `author_id` int(10) unsigned NOT NULL DEFAULT '0',
  `forum_topic_id` int(10) unsigned DEFAULT NULL,
  `ip_address` varchar(45) NOT NULL DEFAULT '0',
  `title` varchar(100) NOT NULL,
  `url_title` varchar(75) NOT NULL,
  `status` varchar(50) NOT NULL,
  `versioning_enabled` char(1) NOT NULL DEFAULT 'n',
  `view_count_one` int(10) unsigned NOT NULL DEFAULT '0',
  `view_count_two` int(10) unsigned NOT NULL DEFAULT '0',
  `view_count_three` int(10) unsigned NOT NULL DEFAULT '0',
  `view_count_four` int(10) unsigned NOT NULL DEFAULT '0',
  `allow_comments` varchar(1) NOT NULL DEFAULT 'y',
  `sticky` varchar(1) NOT NULL DEFAULT 'n',
  `entry_date` int(10) NOT NULL,
  `year` char(4) NOT NULL,
  `month` char(2) NOT NULL,
  `day` char(3) NOT NULL,
  `expiration_date` int(10) NOT NULL DEFAULT '0',
  `comment_expiration_date` int(10) NOT NULL DEFAULT '0',
  `edit_date` bigint(14) DEFAULT NULL,
  `recent_comment_date` int(10) DEFAULT NULL,
  `comment_total` int(4) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`entry_id`),
  KEY `channel_id` (`channel_id`),
  KEY `author_id` (`author_id`),
  KEY `url_title` (`url_title`),
  KEY `status` (`status`),
  KEY `entry_date` (`entry_date`),
  KEY `expiration_date` (`expiration_date`),
  KEY `site_id` (`site_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `exp_channel_titles` WRITE;
/*!40000 ALTER TABLE `exp_channel_titles` DISABLE KEYS */;

INSERT INTO `exp_channel_titles` (`entry_id`, `site_id`, `channel_id`, `author_id`, `forum_topic_id`, `ip_address`, `title`, `url_title`, `status`, `versioning_enabled`, `view_count_one`, `view_count_two`, `view_count_three`, `view_count_four`, `allow_comments`, `sticky`, `entry_date`, `year`, `month`, `day`, `expiration_date`, `comment_expiration_date`, `edit_date`, `recent_comment_date`, `comment_total`)
VALUES
	(1,1,3,1,NULL,'::1','Benefits','benefits','open','y',0,0,0,0,'n','n',1454380560,'2016','02','01',0,0,20160302192254,0,0),
	(2,1,3,1,NULL,'::1','Flexible Spending Account FSA','flexible-spending-account','open','y',0,0,0,0,'n','n',1454380620,'2016','02','01',0,0,20160303172015,0,0),
	(3,1,3,1,NULL,'::1','Healthcare Eligible Expenses','healthcare-eligible-expenses','open','y',0,0,0,0,'n','n',1454380680,'2016','02','01',0,0,20160302164026,0,0),
	(4,1,3,1,NULL,'::1','Dependent Daycare Eligible Expenses','dependent-daycare-eligible-expenses','open','y',0,0,0,0,'n','n',1454380680,'2016','02','01',0,0,20160202023844,0,0),
	(5,1,3,1,NULL,'::1','Limited Eligible Expenses','limited-eligible-expenses','open','y',0,0,0,0,'n','n',1454380680,'2016','02','01',0,0,20160202023905,0,0),
	(6,1,4,1,NULL,'::1','FSA Store','fsa-store','open','y',0,0,0,0,'n','n',1454380740,'2016','02','01',0,0,20160202023939,0,0),
	(7,1,3,1,NULL,'::1','Health Reimbursement Arrangement (HRA)','health-reimbursement-arrangement','open','y',0,0,0,0,'n','n',1454380740,'2016','02','01',0,0,20160202024057,0,0),
	(8,1,3,1,NULL,'::1','HRA Plan Description','hra-plan-description','open','y',0,0,0,0,'n','n',1454380860,'2016','02','01',0,0,20160202024126,0,0),
	(9,1,3,1,NULL,'::1','Health Savings Account (HSA)','health-savings-account','open','y',0,0,0,0,'n','n',1454381400,'2016','02','01',0,0,20160209143401,0,0),
	(10,1,3,1,NULL,'::1','HSA Advantage','hsa-advantage','open','y',0,0,0,0,'n','n',1454381400,'2016','02','01',0,0,20160202025102,0,0),
	(11,1,3,1,NULL,'::1','Fifth Third Bank HSA','fifth-third-bank','open','y',0,0,0,0,'n','n',1454381460,'2016','02','01',0,0,20160202025119,0,0),
	(12,1,3,1,NULL,'::1','BB&T HSA','bbt-hsa','open','y',0,0,0,0,'n','n',1454381460,'2016','02','01',0,0,20160202025138,0,0),
	(13,1,4,1,NULL,'::1','HSA Store','hsa-store','open','y',0,0,0,0,'n','n',1454381460,'2016','02','01',0,0,20160202025212,0,0),
	(14,1,3,1,NULL,'::1','Transportation & Parking (TRP)','transportation-and-parking','open','y',0,0,0,0,'n','n',1454381520,'2016','02','01',0,0,20160202025237,0,0),
	(15,1,3,1,NULL,'::1','Transportation & Parking Plan Description','transportation-and-parking-plan-description','open','y',0,0,0,0,'n','n',1454381520,'2016','02','01',0,0,20160202025258,0,0),
	(16,1,3,1,NULL,'::1','Prepaid Benefits Card','prepaid-benefits-card','open','y',0,0,0,0,'n','n',1454381580,'2016','02','01',0,0,20160202025313,0,0),
	(17,1,3,1,NULL,'::1','Plan Document Services','plan-document-services','open','y',0,0,0,0,'n','n',1454381580,'2016','02','01',0,0,20160202025327,0,0),
	(18,1,3,1,NULL,'::1','Wrap Documents','wrap-documents','open','y',0,0,0,0,'n','n',1454381580,'2016','02','01',0,0,20160202025341,0,0),
	(19,1,3,1,NULL,'::1','Premium Only Plans (POP)','premium-only-plans','open','y',0,0,0,0,'n','n',1454381580,'2016','02','01',0,0,20160202025358,0,0),
	(20,1,3,1,NULL,'::1','Plan-Specific Documents or Testing','plan-specific-documents-or-testing','open','y',0,0,0,0,'n','n',1454381640,'2016','02','01',0,0,20160202025413,0,0),
	(21,1,3,1,NULL,'::1','COBRA & Billing','cobra-and-billing','open','y',0,0,0,0,'n','n',1454381640,'2016','02','01',0,0,20160202025434,0,0),
	(22,1,3,1,NULL,'::1','COBRA Information & Resources','cobra-information-and-resources','open','y',0,0,0,0,'n','n',1454381640,'2016','02','01',0,0,20160202025451,0,0),
	(23,1,3,1,NULL,'::1','Chard Snyder Marketplace','chard-snyder-marketplace','open','y',0,0,0,0,'n','n',1454381640,'2016','02','01',0,0,20160202025503,0,0),
	(24,1,3,1,NULL,'::1','Family Medical Leave Act (FMLA)','family-medical-leave-act','open','y',0,0,0,0,'n','n',1454381700,'2016','02','01',0,0,20160202025522,0,0),
	(25,1,3,1,NULL,'::1','Employers & Advisors','employers-and-advisors','open','y',0,0,0,0,'n','n',1454381700,'2016','02','01',0,0,20160219230645,0,0),
	(26,1,3,1,NULL,'::1','Our Difference','our-difference','open','y',0,0,0,0,'n','n',1454381700,'2016','02','01',0,0,20160202025558,0,0),
	(27,1,3,1,NULL,'::1','Our Plans & Services','our-plans-and-services','open','y',0,0,0,0,'n','n',1454381760,'2016','02','01',0,0,20160202025615,0,0),
	(28,1,3,1,NULL,'::1','Employer Resources','employer-resources','open','y',0,0,0,0,'n','n',1454381760,'2016','02','01',0,0,20160202025628,0,0),
	(29,1,3,1,NULL,'::1','Request a Proposal','request-a-proposal','open','y',0,0,0,0,'n','n',1454381760,'2016','02','01',0,0,20160202025650,0,0),
	(30,1,3,1,NULL,'::1','Request a Demo','request-a-demo','open','y',0,0,0,0,'n','n',1454381760,'2016','02','01',0,0,20160202025706,0,0),
	(31,1,5,1,NULL,'::1','Support Center','support-center','open','y',0,0,0,0,'n','n',1454381820,'2016','02','01',0,0,20160202025747,0,0),
	(103,1,32,1,NULL,'::1','Boston Scientific','boston-scientific','open','y',0,0,0,0,'n','n',1457114760,'2016','03','04',0,0,20160307213137,0,0),
	(99,1,3,1,NULL,'::1','Thank You','request-a-demo-thank-you','open','y',0,0,0,0,'n','n',1455037380,'2016','02','09',0,0,20160209170411,0,0),
	(101,1,31,1,NULL,'::1','Portal Maintenance','portal-maintenance','open','y',0,0,0,0,'n','n',1455038220,'2016','02','09',0,0,20160221172946,0,0),
	(37,1,3,1,NULL,'::1','About','about','open','y',0,0,0,0,'n','n',1454382060,'2016','02','01',0,0,20160202030111,0,0),
	(38,1,16,1,NULL,'::1','Our Leadership','our-leadership','open','y',0,0,0,0,'n','n',1454382060,'2016','02','01',0,0,20160202220557,0,0),
	(39,1,18,1,NULL,'::1','Careers','careers','open','y',0,0,0,0,'n','n',1454382060,'2016','02','01',0,0,20160205193839,0,0),
	(40,1,20,1,NULL,'::1','News & Events','news-and-events','open','y',0,0,0,0,'n','n',1454382120,'2016','02','01',0,0,20160202222435,0,0),
	(87,1,3,1,NULL,'::1','Industry Partners','industry-partners','open','y',0,0,0,0,'n','n',1454426040,'2016','02','02',0,0,20160202151435,0,0),
	(42,1,3,1,NULL,'::1','Community Involvement','community-involvement','open','y',0,0,0,0,'n','n',1454382300,'2016','02','01',0,0,20160202030529,0,0),
	(43,1,23,1,NULL,'::1','Testimonials','testimonials','open','y',0,0,0,0,'n','n',1454382300,'2016','02','01',0,0,20160202030547,0,0),
	(44,1,25,1,NULL,'::1','Contact','contact','open','y',0,0,0,0,'n','n',1454382360,'2016','02','01',0,0,20160215072413,0,0),
	(45,1,3,1,NULL,'::1','Privacy Policy','privacy-policy','open','y',0,0,0,0,'n','n',1454382360,'2016','02','01',0,0,20160202030638,0,0),
	(46,1,7,1,NULL,'::1','Question One','question-one','open','y',0,0,0,0,'n','n',1454382900,'2016','02','01',0,0,20160209162215,0,0),
	(47,1,7,1,NULL,'::1','Question Two','question-two','open','y',0,0,0,0,'n','n',1454382900,'2016','02','01',0,0,20160209162234,0,0),
	(48,1,7,1,NULL,'::1','Question Three','question-three','open','y',0,0,0,0,'n','n',1454382900,'2016','02','01',0,0,20160209201051,0,0),
	(49,1,9,1,NULL,'::1','Video One','video-one','open','y',0,0,0,0,'n','n',1454385300,'2016','02','01',0,0,20160209162310,0,0),
	(50,1,9,1,NULL,'::1','Video Two','video-two','open','y',0,0,0,0,'n','n',1454385300,'2016','02','01',0,0,20160209162322,0,0),
	(51,1,9,1,NULL,'::1','Video Three','video-three','open','y',0,0,0,0,'n','n',1454385300,'2016','02','01',0,0,20160209162334,0,0),
	(52,1,11,1,NULL,'::1','Form & Resource One','form-and-resource-one','open','y',0,0,0,0,'n','n',1454385480,'2016','02','01',0,0,20160209162349,0,0),
	(53,1,11,1,NULL,'::1','Form & Resource Two','form-and-resource-two','open','y',0,0,0,0,'n','n',1454385480,'2016','02','01',0,0,20160209162401,0,0),
	(54,1,11,1,NULL,'::1','Form & Resource Three','form-and-resource-three','open','y',0,0,0,0,'n','n',1454385480,'2016','02','01',0,0,20160209162412,0,0),
	(55,1,13,1,NULL,'::1','Tax Savings Calculator','tool-and-app-one','open','y',0,0,0,0,'n','n',1454385720,'2016','02','01',0,0,20160219185839,0,0),
	(56,1,13,1,NULL,'::1','Tool & App Two','tool-and-app-two','open','y',0,0,0,0,'n','n',1454385720,'2016','02','01',0,0,20160209162439,0,0),
	(57,1,13,1,NULL,'::1','Tool & App Three','tool-and-app-three','open','y',0,0,0,0,'n','n',1454385720,'2016','02','01',0,0,20160209162453,0,0),
	(58,1,15,1,NULL,'::1','Compliance Watch One','compliance-watch-one','open','y',0,0,0,0,'n','n',1454385900,'2016','02','01',0,0,20160229153134,0,0),
	(59,1,15,1,NULL,'::1','Compliance Watch Two','compliance-watch-two','open','y',0,0,0,0,'n','n',1454385900,'2016','02','01',0,0,20160209162536,0,0),
	(60,1,15,1,NULL,'::1','Compliance Watch Three','compliance-watch-three','open','y',0,0,0,0,'n','n',1454385900,'2016','02','01',0,0,20160209162546,0,0),
	(61,1,17,1,NULL,'::1','Bio One','bio-one','open','y',0,0,0,0,'n','n',1454386140,'2016','02','01',0,0,20160209194641,0,0),
	(62,1,17,1,NULL,'::1','Bio Two','bio-two','open','y',0,0,0,0,'n','n',1454386200,'2016','02','01',0,0,20160209194700,0,0),
	(63,1,17,1,NULL,'::1','Bio Three','bio-three','open','y',0,0,0,0,'n','n',1454386200,'2016','02','01',0,0,20160209194652,0,0),
	(64,1,19,1,NULL,'::1','Career One','career-one','open','y',0,0,0,0,'n','n',1454386380,'2016','02','01',0,0,20160218140444,0,0),
	(65,1,19,1,NULL,'::1','Career Two','career-two','open','y',0,0,0,0,'n','n',1454386440,'2016','02','01',0,0,20160204050649,0,0),
	(66,1,19,1,NULL,'::1','Career Three','career-three','open','y',0,0,0,0,'n','n',1454386440,'2016','02','01',0,0,20160204050446,0,0),
	(67,1,21,1,NULL,'::1','Article One','article-one','open','y',0,0,0,0,'n','n',1454386620,'2016','02','01',0,0,20160302190541,0,0),
	(68,1,21,1,NULL,'::1','Article Two','article-two','open','y',0,0,0,0,'n','n',1454386620,'2016','02','01',0,0,20160202041734,0,0),
	(69,1,21,1,NULL,'::1','Article Three','article-three','open','y',0,0,0,0,'n','n',1454386620,'2016','02','01',0,0,20160202041742,0,0),
	(70,1,24,1,NULL,'::1','Testimonial One','testimonial-one','open','y',0,0,0,0,'n','n',1454386800,'2016','02','01',0,0,20160221003111,0,0),
	(71,1,24,1,NULL,'::1','Testimonial Two','testimonial-two','open','y',0,0,0,0,'n','n',1454386800,'2016','02','01',0,0,20160217210107,0,0),
	(72,1,24,1,NULL,'::1','Testimonial Three','testimonial-three','open','y',0,0,0,0,'n','n',1454386800,'2016','02','01',0,0,20160202042031,0,0),
	(73,1,24,1,NULL,'::1','Testimonial Four','testimonial-four','open','y',0,0,0,0,'n','n',1454386860,'2016','02','01',0,0,20160202042147,0,0),
	(74,1,24,1,NULL,'::1','Testimonial Five','testimonial-five','open','y',0,0,0,0,'n','n',1454386860,'2016','02','01',0,0,20160202042158,0,0),
	(75,1,24,1,NULL,'::1','Testimonial Six','testimonial-six','open','y',0,0,0,0,'n','n',1454386920,'2016','02','01',0,0,20160202042206,0,0),
	(76,1,24,1,NULL,'::1','Testimonial Seven','testimonial-seven','open','y',0,0,0,0,'n','n',1454386920,'2016','02','01',0,0,20160202042214,0,0),
	(77,1,24,1,NULL,'::1','Testimonial Eight','testimonial-eight','open','y',0,0,0,0,'n','n',1454386920,'2016','02','01',0,0,20160202042224,0,0),
	(78,1,24,1,NULL,'::1','Testimonial Nine','testimonial-nine','open','y',0,0,0,0,'n','n',1454386920,'2016','02','01',0,0,20160202042233,0,0),
	(79,1,24,1,NULL,'::1','Testimonial Ten','testimonial-ten','open','y',0,0,0,0,'n','n',1454386920,'2016','02','01',0,0,20160202042241,0,0),
	(80,1,2,1,NULL,'::1','Home','home','open','y',0,0,0,0,'n','n',1454389680,'2016','02','02',0,0,20160217210146,0,0),
	(81,1,1,1,NULL,'::1','Login','login','open','y',0,0,0,0,'n','n',1454418600,'2016','02','02',0,0,20160202131713,0,0),
	(82,1,28,1,NULL,'::1','Colleges & Universities','colleges-and-universities','open','y',0,0,0,0,'n','n',1454420940,'2016','02','02',0,0,20160204031003,0,0),
	(83,1,28,1,NULL,'::1','Healthcare','healthcare','open','y',0,0,0,0,'n','n',1454420940,'2016','02','02',0,0,20160204033649,0,0),
	(84,1,28,1,NULL,'::1','Bank & Financial','bank-and-financial','open','y',0,0,0,0,'n','n',1454420940,'2016','02','02',0,0,20160204033717,0,0),
	(85,1,28,1,NULL,'::1','Government','government','open','y',0,0,0,0,'n','n',1454420940,'2016','02','02',0,0,20160204033746,0,0),
	(86,1,28,1,NULL,'::1','Manufacturing','manufacturing','open','y',0,0,0,0,'n','n',1454420940,'2016','02','02',0,0,20160204033815,0,0),
	(88,1,17,1,NULL,'::1','Bio Four','bio-four','open','y',0,0,0,0,'n','n',1454450880,'2016','02','02',0,0,20160209194709,0,0),
	(89,1,29,1,NULL,'::1','FAQs','faqs','open','y',0,0,0,0,'n','n',1454607000,'2016','02','04',0,0,20160216015610,0,0),
	(90,1,29,1,NULL,'::1','Videos','videos','open','y',0,0,0,0,'n','n',1454607060,'2016','02','04',0,0,20160216015637,0,0),
	(91,1,29,1,NULL,'::1','Forms & Resources','forms-and-resources','open','y',0,0,0,0,'n','n',1454607060,'2016','02','04',0,0,20160216015653,0,0),
	(92,1,29,1,NULL,'::1','Tools & Apps','tools-and-apps','open','y',0,0,0,0,'n','n',1454607060,'2016','02','04',0,0,20160216015707,0,0),
	(93,1,29,1,NULL,'::1','Compliance Watch','compliance-watch','open','y',0,0,0,0,'n','n',1454607060,'2016','02','04',0,0,20160216015719,0,0),
	(94,1,26,1,NULL,'::1','FSA Store','fsa-store','open','y',0,0,0,0,'n','n',1454689980,'2016','02','05',0,0,20160209143053,0,0),
	(95,1,3,1,NULL,'::1','Thank You','contact-thank-you','open','y',0,0,0,0,'n','n',1454957280,'2016','02','08',0,0,20160209170315,0,0),
	(96,1,26,1,NULL,'::1','HSA Store','hsa-store','open','y',0,0,0,0,'n','n',1455028260,'2016','02','09',0,0,20160209143132,0,0),
	(97,1,30,1,NULL,'::1','Footer','footer','open','y',0,0,0,0,'n','n',1455030300,'2016','02','09',0,0,20160209150623,0,0),
	(102,1,3,1,NULL,'::1','Test','test','closed','y',0,0,0,0,'n','n',1456549140,'2016','02','26',0,0,20160227045933,0,0),
	(98,1,3,1,NULL,'::1','Thank You','request-a-proposal-thank-you','open','y',0,0,0,0,'n','n',1455037380,'2016','02','09',0,0,20160209170351,0,0),
	(104,1,33,1,NULL,'::1','Clients','clients','open','y',0,0,0,0,'n','n',1457115600,'2016','03','04',0,0,20160304182033,0,0);

/*!40000 ALTER TABLE `exp_channel_titles` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table exp_channels
# ------------------------------------------------------------

DROP TABLE IF EXISTS `exp_channels`;

CREATE TABLE `exp_channels` (
  `channel_id` int(6) unsigned NOT NULL AUTO_INCREMENT,
  `site_id` int(4) unsigned NOT NULL DEFAULT '1',
  `channel_name` varchar(40) NOT NULL,
  `channel_title` varchar(100) NOT NULL,
  `channel_url` varchar(100) NOT NULL,
  `channel_description` varchar(255) DEFAULT NULL,
  `channel_lang` varchar(12) NOT NULL,
  `total_entries` mediumint(8) NOT NULL DEFAULT '0',
  `total_comments` mediumint(8) NOT NULL DEFAULT '0',
  `last_entry_date` int(10) unsigned NOT NULL DEFAULT '0',
  `last_comment_date` int(10) unsigned NOT NULL DEFAULT '0',
  `cat_group` varchar(255) DEFAULT NULL,
  `status_group` int(4) unsigned DEFAULT NULL,
  `deft_status` varchar(50) NOT NULL DEFAULT 'open',
  `field_group` int(4) unsigned DEFAULT NULL,
  `search_excerpt` int(4) unsigned DEFAULT NULL,
  `deft_category` varchar(60) DEFAULT NULL,
  `deft_comments` char(1) NOT NULL DEFAULT 'y',
  `channel_require_membership` char(1) NOT NULL DEFAULT 'y',
  `channel_max_chars` int(5) unsigned DEFAULT NULL,
  `channel_html_formatting` char(4) NOT NULL DEFAULT 'all',
  `channel_allow_img_urls` char(1) NOT NULL DEFAULT 'y',
  `channel_auto_link_urls` char(1) NOT NULL DEFAULT 'n',
  `channel_notify` char(1) NOT NULL DEFAULT 'n',
  `channel_notify_emails` varchar(255) DEFAULT NULL,
  `comment_url` varchar(80) DEFAULT NULL,
  `comment_system_enabled` char(1) NOT NULL DEFAULT 'y',
  `comment_require_membership` char(1) NOT NULL DEFAULT 'n',
  `comment_use_captcha` char(1) NOT NULL DEFAULT 'n',
  `comment_moderate` char(1) NOT NULL DEFAULT 'n',
  `comment_max_chars` int(5) unsigned DEFAULT '5000',
  `comment_timelock` int(5) unsigned NOT NULL DEFAULT '0',
  `comment_require_email` char(1) NOT NULL DEFAULT 'y',
  `comment_text_formatting` char(5) NOT NULL DEFAULT 'xhtml',
  `comment_html_formatting` char(4) NOT NULL DEFAULT 'safe',
  `comment_allow_img_urls` char(1) NOT NULL DEFAULT 'n',
  `comment_auto_link_urls` char(1) NOT NULL DEFAULT 'y',
  `comment_notify` char(1) NOT NULL DEFAULT 'n',
  `comment_notify_authors` char(1) NOT NULL DEFAULT 'n',
  `comment_notify_emails` varchar(255) DEFAULT NULL,
  `comment_expiration` int(4) unsigned NOT NULL DEFAULT '0',
  `search_results_url` varchar(80) DEFAULT NULL,
  `show_button_cluster` char(1) NOT NULL DEFAULT 'y',
  `rss_url` varchar(80) DEFAULT NULL,
  `enable_versioning` char(1) NOT NULL DEFAULT 'n',
  `max_revisions` smallint(4) unsigned NOT NULL DEFAULT '10',
  `default_entry_title` varchar(100) DEFAULT NULL,
  `url_title_prefix` varchar(80) DEFAULT NULL,
  `live_look_template` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`channel_id`),
  KEY `cat_group` (`cat_group`),
  KEY `status_group` (`status_group`),
  KEY `field_group` (`field_group`),
  KEY `channel_name` (`channel_name`),
  KEY `site_id` (`site_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `exp_channels` WRITE;
/*!40000 ALTER TABLE `exp_channels` DISABLE KEYS */;

INSERT INTO `exp_channels` (`channel_id`, `site_id`, `channel_name`, `channel_title`, `channel_url`, `channel_description`, `channel_lang`, `total_entries`, `total_comments`, `last_entry_date`, `last_comment_date`, `cat_group`, `status_group`, `deft_status`, `field_group`, `search_excerpt`, `deft_category`, `deft_comments`, `channel_require_membership`, `channel_max_chars`, `channel_html_formatting`, `channel_allow_img_urls`, `channel_auto_link_urls`, `channel_notify`, `channel_notify_emails`, `comment_url`, `comment_system_enabled`, `comment_require_membership`, `comment_use_captcha`, `comment_moderate`, `comment_max_chars`, `comment_timelock`, `comment_require_email`, `comment_text_formatting`, `comment_html_formatting`, `comment_allow_img_urls`, `comment_auto_link_urls`, `comment_notify`, `comment_notify_authors`, `comment_notify_emails`, `comment_expiration`, `search_results_url`, `show_button_cluster`, `rss_url`, `enable_versioning`, `max_revisions`, `default_entry_title`, `url_title_prefix`, `live_look_template`)
VALUES
	(1,1,'login','Login','http://chard-snyder.dev/',NULL,'en',1,0,1454418600,0,'',NULL,'open',1,NULL,NULL,'y','y',NULL,'all','y','n','n',NULL,NULL,'y','n','n','n',5000,0,'y','xhtml','safe','n','y','n','n',NULL,0,NULL,'y',NULL,'n',10,'','',0),
	(2,1,'home','Home','http://chard-snyder.dev/',NULL,'en',1,0,1454389680,0,'',NULL,'open',2,NULL,NULL,'y','y',NULL,'all','y','n','n',NULL,NULL,'y','n','n','n',5000,0,'y','xhtml','safe','n','y','n','n',NULL,0,NULL,'y',NULL,'n',10,'','',0),
	(3,1,'pages','Pages','http://chard-snyder.dev/',NULL,'en',35,0,1455037380,0,'',NULL,'open',3,NULL,NULL,'y','y',NULL,'all','y','n','n',NULL,NULL,'y','n','n','n',5000,0,'y','xhtml','safe','n','y','n','n',NULL,0,NULL,'y',NULL,'n',10,'','',0),
	(4,1,'external_urls','External URLs','http://chard-snyder.dev/',NULL,'en',2,0,1454381460,0,'',NULL,'open',4,NULL,NULL,'y','y',NULL,'all','y','n','n',NULL,NULL,'y','n','n','n',5000,0,'y','xhtml','safe','n','y','n','n',NULL,0,NULL,'y',NULL,'n',10,'','',0),
	(5,1,'support_center_landing','Support Center (Landing)','http://chard-snyder.dev/','','en',1,0,1454381820,0,'',NULL,'open',5,NULL,'','y','y',NULL,'all','y','n','n','','','y','n','n','n',5000,0,'y','xhtml','safe','n','y','n','n',NULL,0,'','y','','n',10,'','',0),
	(7,1,'faqs','FAQs','http://chard-snyder.dev/',NULL,'en',3,0,1454382900,0,'1',NULL,'open',7,NULL,NULL,'y','y',NULL,'all','y','n','n',NULL,NULL,'y','n','n','n',5000,0,'y','xhtml','safe','n','y','n','n',NULL,0,NULL,'y',NULL,'n',10,'','',0),
	(32,1,'clients','Clients','http://chard-snyder.dev/',NULL,'en',1,0,1457114760,0,'',1,'open',32,NULL,NULL,'y','y',NULL,'all','y','n','n',NULL,NULL,'y','n','n','n',5000,0,'y','xhtml','safe','n','y','n','n',NULL,0,NULL,'y',NULL,'n',10,'','',0),
	(9,1,'videos','Videos','http://chard-snyder.dev/',NULL,'en',3,0,1454385300,0,'2',NULL,'open',9,NULL,NULL,'y','y',NULL,'all','y','n','n',NULL,NULL,'y','n','n','n',5000,0,'y','xhtml','safe','n','y','n','n',NULL,0,NULL,'y',NULL,'n',10,'','',0),
	(11,1,'forms_and_resources','Forms and Resources','http://chard-snyder.dev/',NULL,'en',3,0,1454385480,0,'3',NULL,'open',11,NULL,NULL,'y','y',NULL,'all','y','n','n',NULL,NULL,'y','n','n','n',5000,0,'y','xhtml','safe','n','y','n','n',NULL,0,NULL,'y',NULL,'n',10,'','',0),
	(33,1,'clients_landing','Clients (Landing)','http://chard-snyder.dev/',NULL,'en',1,0,1457115600,0,'',1,'open',33,NULL,NULL,'y','y',NULL,'all','y','n','n',NULL,NULL,'y','n','n','n',5000,0,'y','xhtml','safe','n','y','n','n',NULL,0,NULL,'y',NULL,'n',10,'','',0),
	(13,1,'tools_and_apps','Tools and Apps','http://chard-snyder.dev/',NULL,'en',3,0,1454385720,0,'4',NULL,'open',13,NULL,NULL,'y','y',NULL,'all','y','n','n',NULL,NULL,'y','n','n','n',5000,0,'y','xhtml','safe','n','y','n','n',NULL,0,NULL,'y',NULL,'n',10,'','',0),
	(15,1,'compliance_watch','Compliance Watch','http://chard-snyder.dev/',NULL,'en',3,0,1454385900,0,'5',NULL,'open',15,NULL,NULL,'y','y',NULL,'all','y','n','n',NULL,NULL,'y','n','n','n',5000,0,'y','xhtml','safe','n','y','n','n',NULL,0,NULL,'y',NULL,'n',10,'','',0),
	(16,1,'our_leadership_landing','Our Leadership (Landing)','http://chard-snyder.dev/',NULL,'en',1,0,1454382060,0,'',NULL,'open',16,NULL,NULL,'y','y',NULL,'all','y','n','n',NULL,NULL,'y','n','n','n',5000,0,'y','xhtml','safe','n','y','n','n',NULL,0,NULL,'y',NULL,'n',10,'','',0),
	(17,1,'our_leadership','Our Leadership','http://chard-snyder.dev/',NULL,'en',4,0,1454450880,0,'',NULL,'open',17,NULL,NULL,'y','y',NULL,'all','y','n','n',NULL,NULL,'y','n','n','n',5000,0,'y','xhtml','safe','n','y','n','n',NULL,0,NULL,'y',NULL,'n',10,'','',0),
	(18,1,'careers_landing','Careers (Landing)','http://chard-snyder.dev/',NULL,'en',1,0,1454382060,0,'',NULL,'open',18,NULL,NULL,'y','y',NULL,'all','y','n','n',NULL,NULL,'y','n','n','n',5000,0,'y','xhtml','safe','n','y','n','n',NULL,0,NULL,'y',NULL,'n',10,'','',0),
	(19,1,'careers','Careers','http://chard-snyder.dev/',NULL,'en',3,0,1454386440,0,'',NULL,'open',19,NULL,NULL,'y','y',NULL,'all','y','n','n',NULL,NULL,'y','n','n','n',5000,0,'y','xhtml','safe','n','y','n','n',NULL,0,NULL,'y',NULL,'n',10,'','',0),
	(20,1,'news_and_events_landing','News and Events (Landing)','http://chard-snyder.dev/',NULL,'en',1,0,1454382120,0,'',NULL,'open',20,NULL,NULL,'y','y',NULL,'all','y','n','n',NULL,NULL,'y','n','n','n',5000,0,'y','xhtml','safe','n','y','n','n',NULL,0,NULL,'y',NULL,'n',10,'','',0),
	(21,1,'news_and_events','News and Events','http://chard-snyder.dev/',NULL,'en',3,0,1454386620,0,'6',NULL,'open',21,NULL,NULL,'y','y',NULL,'all','y','n','n',NULL,NULL,'y','n','n','n',5000,0,'y','xhtml','safe','n','y','n','n',NULL,0,NULL,'y',NULL,'n',10,'','',0),
	(30,1,'footer','Footer','http://chard-snyder.dev/',NULL,'en',1,0,1455030300,0,'',NULL,'open',30,NULL,NULL,'y','y',NULL,'all','y','n','n',NULL,NULL,'y','n','n','n',5000,0,'y','xhtml','safe','n','y','n','n',NULL,0,NULL,'y',NULL,'n',10,'','',0),
	(23,1,'testimonials_landing','Testimonials (Landing)','http://chard-snyder.dev/',NULL,'en',1,0,1454382300,0,'',NULL,'open',23,NULL,NULL,'y','y',NULL,'all','y','n','n',NULL,NULL,'y','n','n','n',5000,0,'y','xhtml','safe','n','y','n','n',NULL,0,NULL,'y',NULL,'n',10,'','',0),
	(24,1,'testimonials','Testimonials','http://chard-snyder.dev/',NULL,'en',10,0,1454386920,0,'',NULL,'open',24,NULL,NULL,'y','y',NULL,'all','y','n','n',NULL,NULL,'y','n','n','n',5000,0,'y','xhtml','safe','n','y','n','n',NULL,0,NULL,'y',NULL,'n',10,'','',0),
	(25,1,'contact','Contact','http://chard-snyder.dev/',NULL,'en',1,0,1454382360,0,'',NULL,'open',25,NULL,NULL,'y','y',NULL,'all','y','n','n',NULL,NULL,'y','n','n','n',5000,0,'y','xhtml','safe','n','y','n','n',NULL,0,NULL,'y',NULL,'n',10,'','',0),
	(26,1,'advertisements','Advertisements','http://chard-snyder.dev/',NULL,'en',2,0,1455028260,0,'',NULL,'open',26,NULL,NULL,'y','y',NULL,'all','y','n','n',NULL,NULL,'y','n','n','n',5000,0,'y','xhtml','safe','n','y','n','n',NULL,0,NULL,'y',NULL,'n',10,'','',0),
	(31,1,'alerts','Alerts','http://chard-snyder.dev/',NULL,'en',1,0,1455038220,0,'',2,'open',31,NULL,NULL,'y','y',NULL,'all','y','n','n',NULL,NULL,'y','n','n','n',5000,0,'y','xhtml','safe','n','y','n','n',NULL,0,NULL,'y',NULL,'n',10,'','',0),
	(29,1,'support_center_types','Support Center (Types)','http://chard-snyder.dev/',NULL,'en',5,0,1454607060,0,'',NULL,'open',29,NULL,NULL,'y','y',NULL,'all','y','n','n',NULL,NULL,'y','n','n','n',5000,0,'y','xhtml','safe','n','y','n','n',NULL,0,NULL,'y',NULL,'n',10,'','',0),
	(28,1,'industries','Industries','http://chard-snyder.dev/',NULL,'en',5,0,1454420940,0,'',NULL,'open',28,NULL,NULL,'y','y',NULL,'all','y','n','n',NULL,NULL,'y','n','n','n',5000,0,'y','xhtml','safe','n','y','n','n',NULL,0,NULL,'y',NULL,'n',10,'','',0);

/*!40000 ALTER TABLE `exp_channels` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table exp_content_types
# ------------------------------------------------------------

DROP TABLE IF EXISTS `exp_content_types`;

CREATE TABLE `exp_content_types` (
  `content_type_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`content_type_id`),
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `exp_content_types` WRITE;
/*!40000 ALTER TABLE `exp_content_types` DISABLE KEYS */;

INSERT INTO `exp_content_types` (`content_type_id`, `name`)
VALUES
	(1,'grid'),
	(2,'channel');

/*!40000 ALTER TABLE `exp_content_types` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table exp_cp_log
# ------------------------------------------------------------

DROP TABLE IF EXISTS `exp_cp_log`;

CREATE TABLE `exp_cp_log` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `site_id` int(4) unsigned NOT NULL DEFAULT '1',
  `member_id` int(10) unsigned NOT NULL,
  `username` varchar(32) NOT NULL,
  `ip_address` varchar(45) NOT NULL DEFAULT '0',
  `act_date` int(10) NOT NULL,
  `action` varchar(200) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `site_id` (`site_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `exp_cp_log` WRITE;
/*!40000 ALTER TABLE `exp_cp_log` DISABLE KEYS */;

INSERT INTO `exp_cp_log` (`id`, `site_id`, `member_id`, `username`, `ip_address`, `act_date`, `action`)
VALUES
	(1,1,1,'joshua','::1',1454367027,'Logged in'),
	(2,1,1,'joshua','::1',1454367100,'Logged out'),
	(3,1,1,'joshua','::1',1454367210,'Logged in'),
	(4,1,1,'joshua','::1',1454376367,'Logged in'),
	(5,1,1,'joshua','::1',1454376414,'Field Group Created:&nbsp;Login'),
	(6,1,1,'joshua','::1',1454376420,'Field Group Created:&nbsp;Home'),
	(7,1,1,'joshua','::1',1454376426,'Field Group Created:&nbsp;Pages'),
	(8,1,1,'joshua','::1',1454376436,'Field Group Created:&nbsp;External URLs'),
	(9,1,1,'joshua','::1',1454376443,'Field Group Created:&nbsp;Support Center'),
	(10,1,1,'joshua','::1',1454376465,'Field Group Created:&nbsp;FAQs Landing'),
	(11,1,1,'joshua','::1',1454376473,'Field Group Created:&nbsp;FAQs'),
	(12,1,1,'joshua','::1',1454376480,'Field Group Created:&nbsp;Videos Landing'),
	(13,1,1,'joshua','::1',1454376486,'Field Group Created:&nbsp;Videos'),
	(14,1,1,'joshua','::1',1454376498,'Field Group Created:&nbsp;Forms and Resources Landing'),
	(15,1,1,'joshua','::1',1454376508,'Field Group Created:&nbsp;Forms and Resources'),
	(16,1,1,'joshua','::1',1454376517,'Field Group Created:&nbsp;Tools and Apps Landing'),
	(17,1,1,'joshua','::1',1454376529,'Field Group Created:&nbsp;Tools and Apps'),
	(18,1,1,'joshua','::1',1454376540,'Field Group Created:&nbsp;Compliance Watch Landing'),
	(19,1,1,'joshua','::1',1454376547,'Field Group Created:&nbsp;Compliance Watch'),
	(20,1,1,'joshua','::1',1454376561,'Field Group Created:&nbsp;Our Leadership Landing'),
	(21,1,1,'joshua','::1',1454376569,'Field Group Created:&nbsp;Our Leadership'),
	(22,1,1,'joshua','::1',1454376577,'Field Group Created:&nbsp;Careers Landing'),
	(23,1,1,'joshua','::1',1454376587,'Field Group Created:&nbsp;Careers'),
	(24,1,1,'joshua','::1',1454376598,'Field Group Created:&nbsp;News and Events Landing'),
	(25,1,1,'joshua','::1',1454376609,'Field Group Created:&nbsp;News and Events'),
	(26,1,1,'joshua','::1',1454376618,'Field Group Created:&nbsp;Industry Partners'),
	(27,1,1,'joshua','::1',1454376630,'Field Group Created:&nbsp;Testimonials Landing'),
	(28,1,1,'joshua','::1',1454376636,'Field Group Created:&nbsp;Testimonials'),
	(29,1,1,'joshua','::1',1454376644,'Field Group Created:&nbsp;Contact'),
	(30,1,1,'joshua','::1',1454376650,'Field Group Created:&nbsp;Advertisements'),
	(31,1,1,'joshua','::1',1454376712,'Category Group Created:&nbsp;&nbsp;FAQs'),
	(32,1,1,'joshua','::1',1454376721,'Category Group Created:&nbsp;&nbsp;Videos'),
	(33,1,1,'joshua','::1',1454376729,'Category Group Created:&nbsp;&nbsp;Forms and Resources'),
	(34,1,1,'joshua','::1',1454376737,'Category Group Created:&nbsp;&nbsp;Tools and Apps'),
	(35,1,1,'joshua','::1',1454376746,'Category Group Created:&nbsp;&nbsp;Compliance Watch'),
	(36,1,1,'joshua','::1',1454376752,'Category Group Created:&nbsp;&nbsp;News and Events'),
	(37,1,1,'joshua','::1',1454376760,'Category Group Created:&nbsp;&nbsp;Support Center'),
	(38,1,1,'joshua','::1',1454376786,'Channel Created:&nbsp;&nbsp;Login'),
	(39,1,1,'joshua','::1',1454376795,'Channel Created:&nbsp;&nbsp;Home'),
	(40,1,1,'joshua','::1',1454376807,'Channel Created:&nbsp;&nbsp;Pages'),
	(41,1,1,'joshua','::1',1454376821,'Channel Created:&nbsp;&nbsp;External URLs'),
	(42,1,1,'joshua','::1',1454376835,'Channel Created:&nbsp;&nbsp;Support Center'),
	(43,1,1,'joshua','::1',1454376852,'Channel Created:&nbsp;&nbsp;FAQs (Landing)'),
	(44,1,1,'joshua','::1',1454376867,'Channel Created:&nbsp;&nbsp;FAQs'),
	(45,1,1,'joshua','::1',1454376882,'Channel Created:&nbsp;&nbsp;Videos (Landing)'),
	(46,1,1,'joshua','::1',1454376898,'Channel Created:&nbsp;&nbsp;Videos'),
	(47,1,1,'joshua','::1',1454376944,'Channel Created:&nbsp;&nbsp;Forms and Resources (Landing)'),
	(48,1,1,'joshua','::1',1454376956,'Channel Created:&nbsp;&nbsp;Forms and Resources'),
	(49,1,1,'joshua','::1',1454376972,'Channel Created:&nbsp;&nbsp;Tools and Apps (Landing)'),
	(50,1,1,'joshua','::1',1454376984,'Channel Created:&nbsp;&nbsp;Tools and Apps'),
	(51,1,1,'joshua','::1',1454377019,'Channel Created:&nbsp;&nbsp;Compliance Watch (Landing)'),
	(52,1,1,'joshua','::1',1454377047,'Channel Created:&nbsp;&nbsp;Compliance Watch'),
	(53,1,1,'joshua','::1',1454377062,'Channel Created:&nbsp;&nbsp;Our Leadership (Landing)'),
	(54,1,1,'joshua','::1',1454377075,'Channel Created:&nbsp;&nbsp;Our Leadership'),
	(55,1,1,'joshua','::1',1454377089,'Channel Created:&nbsp;&nbsp;Careers (Landing)'),
	(56,1,1,'joshua','::1',1454377099,'Channel Created:&nbsp;&nbsp;Careers'),
	(57,1,1,'joshua','::1',1454377118,'Channel Created:&nbsp;&nbsp;News and Events (Landing)'),
	(58,1,1,'joshua','::1',1454377131,'Channel Created:&nbsp;&nbsp;News and Events'),
	(59,1,1,'joshua','::1',1454377143,'Channel Created:&nbsp;&nbsp;Industry Partners'),
	(60,1,1,'joshua','::1',1454377157,'Channel Created:&nbsp;&nbsp;Testimonials (Landing)'),
	(61,1,1,'joshua','::1',1454377171,'Channel Created:&nbsp;&nbsp;Testimonials'),
	(62,1,1,'joshua','::1',1454377181,'Channel Created:&nbsp;&nbsp;Contact'),
	(63,1,1,'joshua','::1',1454377192,'Channel Created:&nbsp;&nbsp;Advertisements'),
	(64,1,1,'joshua','::1',1454380162,'Logged out'),
	(65,1,1,'joshua','::1',1454380167,'Logged in'),
	(66,1,1,'joshua','::1',1454382254,'Field Group Created:&nbsp;Industry Partners'),
	(67,1,1,'joshua','::1',1454382270,'Channel Created:&nbsp;&nbsp;Industry Partners'),
	(68,1,1,'joshua','::1',1454394775,'Logged out'),
	(69,1,1,'joshua','::1',1454418363,'Logged in'),
	(70,1,1,'joshua','::1',1454420626,'Field Group Created:&nbsp;Industries'),
	(71,1,1,'joshua','::1',1454420645,'Channel Created:&nbsp;&nbsp;Industries'),
	(72,1,1,'joshua','::1',1454425403,'Custom Field Deleted:&nbsp;Overview'),
	(73,1,1,'joshua','::1',1454426005,'Field group Deleted:&nbsp;&nbsp;Industry Partners'),
	(74,1,1,'joshua','::1',1454426011,'Field group Deleted:&nbsp;&nbsp;Industry Partners Landing'),
	(75,1,1,'joshua','::1',1454426030,'Channel Deleted:&nbsp;&nbsp;Industry Partners'),
	(76,1,1,'joshua','::1',1454426036,'Channel Deleted:&nbsp;&nbsp;Industry Partners (Landing)'),
	(77,1,1,'joshua','::1',1454438685,'Logged in'),
	(78,1,1,'joshua','::1',1454445400,'Logged in'),
	(79,1,1,'joshua','::1',1454448925,'Logged in'),
	(80,1,1,'joshua','::1',1454449869,'Logged in'),
	(81,1,1,'joshua','::1',1454450650,'Logged in'),
	(82,1,1,'joshua','::1',1454452675,'Logged in'),
	(83,1,1,'joshua','::1',1454465204,'Logged in'),
	(84,1,1,'joshua','::1',1454522783,'Logged in'),
	(85,1,1,'joshua','::1',1454536725,'Logged in'),
	(86,1,1,'joshua','::1',1454544684,'Logged in'),
	(87,1,1,'joshua','::1',1454553084,'Logged in'),
	(88,1,1,'joshua','::1',1454555322,'Logged out'),
	(89,1,1,'joshua','::1',1454555327,'Logged in'),
	(90,1,1,'joshua','::1',1454600799,'Logged in'),
	(91,1,1,'joshua','::1',1454606993,'Field Group Created:&nbsp;Support Center Types'),
	(92,1,1,'joshua','::1',1454607029,'Channel Created:&nbsp;&nbsp;Support Center (Types)'),
	(93,1,1,'joshua','::1',1454619015,'Logged in'),
	(94,1,1,'joshua','::1',1454624581,'Logged in'),
	(95,1,1,'joshua','::1',1454646762,'Logged in'),
	(96,1,1,'joshua','::1',1454651577,'Logged out'),
	(97,1,1,'joshua','::1',1454681026,'Logged in'),
	(98,1,1,'joshua','::1',1454689964,'Logged in'),
	(99,1,1,'joshua','::1',1454696560,'Logged in'),
	(100,1,1,'joshua','::1',1454701070,'Custom Field Deleted:&nbsp;Title Override'),
	(101,1,1,'joshua','::1',1454942036,'Logged in'),
	(102,1,1,'joshua','::1',1454957227,'Logged in'),
	(103,1,1,'joshua','::1',1455028066,'Logged in'),
	(104,1,1,'joshua','::1',1455028129,'Custom Field Deleted:&nbsp;Image'),
	(105,1,1,'joshua','::1',1455028134,'Custom Field Deleted:&nbsp;URL'),
	(106,1,1,'joshua','::1',1455029988,'Field Group Created:&nbsp;Footer'),
	(107,1,1,'joshua','::1',1455030018,'Channel Created:&nbsp;&nbsp;Footer'),
	(108,1,1,'joshua','::1',1455034146,'Channel Deleted:&nbsp;&nbsp;Compliance Watch (Landing)'),
	(109,1,1,'joshua','::1',1455034153,'Channel Deleted:&nbsp;&nbsp;FAQs (Landing)'),
	(110,1,1,'joshua','::1',1455034162,'Channel Deleted:&nbsp;&nbsp;Forms and Resources (Landing)'),
	(111,1,1,'joshua','::1',1455034169,'Channel Deleted:&nbsp;&nbsp;Tools and Apps (Landing)'),
	(112,1,1,'joshua','::1',1455034175,'Channel Deleted:&nbsp;&nbsp;Videos (Landing)'),
	(113,1,1,'joshua','::1',1455034253,'Field group Deleted:&nbsp;&nbsp;Compliance Watch Landing'),
	(114,1,1,'joshua','::1',1455034262,'Field group Deleted:&nbsp;&nbsp;FAQs Landing'),
	(115,1,1,'joshua','::1',1455034267,'Field group Deleted:&nbsp;&nbsp;Forms and Resources Landing'),
	(116,1,1,'joshua','::1',1455034274,'Field group Deleted:&nbsp;&nbsp;Tools and Apps Landing'),
	(117,1,1,'joshua','::1',1455034280,'Field group Deleted:&nbsp;&nbsp;Videos Landing'),
	(118,1,1,'joshua','::1',1455204248,'Logged in'),
	(119,1,1,'joshua','::1',1455214122,'Logged out'),
	(120,1,1,'joshua','::1',1455214129,'Logged in'),
	(121,1,1,'joshua','::1',1455228335,'Logged in'),
	(122,1,1,'joshua','::1',1455309657,'Logged in'),
	(123,1,1,'joshua','::1',1455517099,'Logged in'),
	(124,1,1,'joshua','::1',1455519040,'Logged in'),
	(125,1,1,'joshua','::1',1455587335,'Logged in'),
	(126,1,1,'joshua','::1',1455660353,'Logged in'),
	(127,1,1,'joshua','::1',1455742765,'Logged in'),
	(128,1,1,'joshua','::1',1455804255,'Logged in'),
	(129,1,1,'joshua','::1',1455813747,'Logged in'),
	(130,1,1,'joshua','::1',1455900753,'Logged in'),
	(131,1,1,'joshua','::1',1455902780,'Logged in'),
	(132,1,1,'joshua','::1',1455923165,'Logged in'),
	(133,1,1,'joshua','::1',1455994166,'Logged in'),
	(134,1,1,'joshua','::1',1455994211,'Field Group Created:&nbsp;Alerts'),
	(135,1,1,'joshua','::1',1455994226,'Status Group Created:&nbsp;Alerts'),
	(136,1,1,'joshua','::1',1455994247,'Channel Created:&nbsp;&nbsp;Alerts'),
	(137,1,1,'joshua','::1',1456014490,'Logged in'),
	(138,1,1,'joshua','::1',1456073966,'Logged in'),
	(139,1,1,'joshua','::1',1456508770,'Logged in'),
	(140,1,1,'joshua','::1',1456549114,'Logged in'),
	(141,1,1,'joshua','::1',1456578360,'Logged in'),
	(142,1,1,'joshua','::1',1456759862,'Logged in'),
	(143,1,1,'joshua','::1',1456936742,'Logged in'),
	(144,1,1,'joshua','::1',1456945173,'Logged in'),
	(145,1,1,'joshua','::1',1457025326,'Logged in'),
	(146,1,1,'joshua','::1',1457111711,'Logged in'),
	(147,1,1,'joshua','::1',1457111747,'Field Group Created:&nbsp;Clients'),
	(148,1,1,'joshua','::1',1457112871,'Logged in'),
	(149,1,1,'joshua','::1',1457112928,'Channel Created:&nbsp;&nbsp;Clients'),
	(150,1,1,'joshua','::1',1457115483,'Field Group Created:&nbsp;Clients Landing'),
	(151,1,1,'joshua','::1',1457115542,'Channel Created:&nbsp;&nbsp;Clients (Landing)'),
	(152,1,1,'joshua','::1',1457384310,'Logged in'),
	(153,1,1,'joshua','::1',1459879499,'Logged in'),
	(154,1,1,'joshua','::1',1474241149,'Logged in'),
	(155,1,1,'joshua','::1',1476306692,'Logged in'),
	(156,1,1,'joshua','::1',1476311262,'Logged in');

/*!40000 ALTER TABLE `exp_cp_log` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table exp_cp_search_index
# ------------------------------------------------------------

DROP TABLE IF EXISTS `exp_cp_search_index`;

CREATE TABLE `exp_cp_search_index` (
  `search_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `controller` varchar(20) DEFAULT NULL,
  `method` varchar(50) DEFAULT NULL,
  `language` varchar(20) DEFAULT NULL,
  `access` varchar(50) DEFAULT NULL,
  `keywords` text,
  PRIMARY KEY (`search_id`),
  FULLTEXT KEY `keywords` (`keywords`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table exp_developer_log
# ------------------------------------------------------------

DROP TABLE IF EXISTS `exp_developer_log`;

CREATE TABLE `exp_developer_log` (
  `log_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `timestamp` int(10) unsigned NOT NULL,
  `viewed` char(1) NOT NULL DEFAULT 'n',
  `description` text,
  `function` varchar(100) DEFAULT NULL,
  `line` int(10) unsigned DEFAULT NULL,
  `file` varchar(255) DEFAULT NULL,
  `deprecated_since` varchar(10) DEFAULT NULL,
  `use_instead` varchar(100) DEFAULT NULL,
  `template_id` int(10) unsigned NOT NULL DEFAULT '0',
  `template_name` varchar(100) DEFAULT NULL,
  `template_group` varchar(100) DEFAULT NULL,
  `addon_module` varchar(100) DEFAULT NULL,
  `addon_method` varchar(100) DEFAULT NULL,
  `snippets` text,
  `hash` char(32) NOT NULL,
  PRIMARY KEY (`log_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `exp_developer_log` WRITE;
/*!40000 ALTER TABLE `exp_developer_log` DISABLE KEYS */;

INSERT INTO `exp_developer_log` (`log_id`, `timestamp`, `viewed`, `description`, `function`, `line`, `file`, `deprecated_since`, `use_instead`, `template_id`, `template_name`, `template_group`, `addon_module`, `addon_method`, `snippets`, `hash`)
VALUES
	(1,1476311314,'n',NULL,'add_to_head()',213,'system/expressionengine/third_party/structure/mcp.structure.php','2.8','CP::add_to_foot() for scripts',0,NULL,NULL,NULL,NULL,NULL,'69217894ce0af722c881edbde81fe471'),
	(2,1454387149,'y','Deprecated extension hook called by the following extensions (Class::method) <ul><br /><li>Structure_ext::channel_module_create_pagination()</li></ul><br />Deprecated since 2.8.&nbsp;Use pagination_create instead.',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,'e004d63e73d228265922ca9e2d303844'),
	(3,1459879454,'n','Deprecated extension hook called by the following extensions (Class::method) <ul><br /><li>Structure_ext::channel_module_create_pagination()</li><li>Zoo_triggers_ext::hook_channel_module_create_pagination()</li></ul><br />Deprecated since 2.8.&nbsp;Use pagination_create instead.',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,'7c572518395cbfacb6186f9b82d0ad3d');

/*!40000 ALTER TABLE `exp_developer_log` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table exp_email_cache
# ------------------------------------------------------------

DROP TABLE IF EXISTS `exp_email_cache`;

CREATE TABLE `exp_email_cache` (
  `cache_id` int(6) unsigned NOT NULL AUTO_INCREMENT,
  `cache_date` int(10) unsigned NOT NULL DEFAULT '0',
  `total_sent` int(6) unsigned NOT NULL,
  `from_name` varchar(70) NOT NULL,
  `from_email` varchar(75) NOT NULL,
  `recipient` text NOT NULL,
  `cc` text NOT NULL,
  `bcc` text NOT NULL,
  `recipient_array` mediumtext NOT NULL,
  `subject` varchar(120) NOT NULL,
  `message` mediumtext NOT NULL,
  `plaintext_alt` mediumtext NOT NULL,
  `mailinglist` char(1) NOT NULL DEFAULT 'n',
  `mailtype` varchar(6) NOT NULL,
  `text_fmt` varchar(40) NOT NULL,
  `wordwrap` char(1) NOT NULL DEFAULT 'y',
  `priority` char(1) NOT NULL DEFAULT '3',
  PRIMARY KEY (`cache_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table exp_email_cache_mg
# ------------------------------------------------------------

DROP TABLE IF EXISTS `exp_email_cache_mg`;

CREATE TABLE `exp_email_cache_mg` (
  `cache_id` int(6) unsigned NOT NULL,
  `group_id` smallint(4) NOT NULL,
  PRIMARY KEY (`cache_id`,`group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table exp_email_cache_ml
# ------------------------------------------------------------

DROP TABLE IF EXISTS `exp_email_cache_ml`;

CREATE TABLE `exp_email_cache_ml` (
  `cache_id` int(6) unsigned NOT NULL,
  `list_id` smallint(4) NOT NULL,
  PRIMARY KEY (`cache_id`,`list_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table exp_email_console_cache
# ------------------------------------------------------------

DROP TABLE IF EXISTS `exp_email_console_cache`;

CREATE TABLE `exp_email_console_cache` (
  `cache_id` int(6) unsigned NOT NULL AUTO_INCREMENT,
  `cache_date` int(10) unsigned NOT NULL DEFAULT '0',
  `member_id` int(10) unsigned NOT NULL,
  `member_name` varchar(50) NOT NULL,
  `ip_address` varchar(45) NOT NULL DEFAULT '0',
  `recipient` varchar(75) NOT NULL,
  `recipient_name` varchar(50) NOT NULL,
  `subject` varchar(120) NOT NULL,
  `message` mediumtext NOT NULL,
  PRIMARY KEY (`cache_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table exp_email_tracker
# ------------------------------------------------------------

DROP TABLE IF EXISTS `exp_email_tracker`;

CREATE TABLE `exp_email_tracker` (
  `email_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `email_date` int(10) unsigned NOT NULL DEFAULT '0',
  `sender_ip` varchar(45) NOT NULL,
  `sender_email` varchar(75) NOT NULL,
  `sender_username` varchar(50) NOT NULL,
  `number_recipients` int(4) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`email_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `exp_email_tracker` WRITE;
/*!40000 ALTER TABLE `exp_email_tracker` DISABLE KEYS */;

INSERT INTO `exp_email_tracker` (`email_id`, `email_date`, `sender_ip`, `sender_email`, `sender_username`, `number_recipients`)
VALUES
	(1,1454566976,'::1','jlcolema@me.com','joshua',1);

/*!40000 ALTER TABLE `exp_email_tracker` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table exp_entry_versioning
# ------------------------------------------------------------

DROP TABLE IF EXISTS `exp_entry_versioning`;

CREATE TABLE `exp_entry_versioning` (
  `version_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(10) unsigned NOT NULL,
  `channel_id` int(4) unsigned NOT NULL,
  `author_id` int(10) unsigned NOT NULL,
  `version_date` int(10) NOT NULL,
  `version_data` mediumtext NOT NULL,
  PRIMARY KEY (`version_id`),
  KEY `entry_id` (`entry_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table exp_extensions
# ------------------------------------------------------------

DROP TABLE IF EXISTS `exp_extensions`;

CREATE TABLE `exp_extensions` (
  `extension_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `class` varchar(50) NOT NULL DEFAULT '',
  `method` varchar(50) NOT NULL DEFAULT '',
  `hook` varchar(50) NOT NULL DEFAULT '',
  `settings` text NOT NULL,
  `priority` int(2) NOT NULL DEFAULT '10',
  `version` varchar(10) NOT NULL DEFAULT '',
  `enabled` char(1) NOT NULL DEFAULT 'y',
  PRIMARY KEY (`extension_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `exp_extensions` WRITE;
/*!40000 ALTER TABLE `exp_extensions` DISABLE KEYS */;

INSERT INTO `exp_extensions` (`extension_id`, `class`, `method`, `hook`, `settings`, `priority`, `version`, `enabled`)
VALUES
	(3,'Structure_ext','entry_submission_redirect','entry_submission_redirect','',10,'3.3.17','y'),
	(4,'Structure_ext','cp_member_login','cp_member_login','',10,'3.3.17','y'),
	(5,'Structure_ext','sessions_start','sessions_start','',10,'3.3.17','y'),
	(6,'Structure_ext','channel_module_create_pagination','channel_module_create_pagination','',9,'3.3.17','y'),
	(7,'Structure_ext','wygwam_config','wygwam_config','',10,'3.3.17','y'),
	(8,'Structure_ext','core_template_route','core_template_route','',10,'3.3.17','y'),
	(9,'Structure_ext','entry_submission_end','entry_submission_end','',10,'3.3.17','y'),
	(10,'Structure_ext','safecracker_submit_entry_end','safecracker_submit_entry_end','',10,'3.3.17','y'),
	(11,'Structure_ext','template_post_parse','template_post_parse','',10,'3.3.17','y'),
	(14,'Zoo_triggers_ext','hook_sessions_start','sessions_start','a:2:{s:8:\"triggers\";a:4:{s:3:\"tag\";a:1:{i:0;s:3:\"tag\";}s:8:\"category\";a:1:{i:0;s:8:\"category\";}s:7:\"archive\";a:1:{i:0;s:7:\"archive\";}s:6:\"author\";a:1:{i:0;s:6:\"author\";}}s:8:\"settings\";a:20:{s:16:\"entries_operator\";s:1:\"|\";s:31:\"entries_title_categories_prefix\";s:2:\": \";s:32:\"entries_title_categories_postfix\";s:0:\"\";s:34:\"entries_title_categories_separator\";s:2:\", \";s:39:\"entries_title_categories_separator_last\";s:5:\" and \";s:28:\"entries_title_archives_first\";s:5:\"month\";s:29:\"entries_title_archives_prefix\";s:4:\" in \";s:30:\"entries_title_archives_postfix\";s:1:\".\";s:32:\"entries_title_archives_separator\";s:1:\" \";s:27:\"entries_title_archives_year\";s:1:\"Y\";s:28:\"entries_title_archives_month\";s:1:\"F\";s:24:\"entries_title_tag_prefix\";b:0;s:25:\"entries_title_tag_postfix\";b:0;s:27:\"entries_title_tag_separator\";b:0;s:32:\"entries_title_tag_separator_last\";b:0;s:35:\"entries_title_tag_websafe_separator\";b:0;s:27:\"entries_title_author_prefix\";s:12:\" written by \";s:28:\"entries_title_author_postfix\";s:0:\"\";s:30:\"entries_title_author_separator\";s:2:\", \";s:35:\"entries_title_author_separator_last\";s:5:\" and \";}}',9,'1.2.5','y'),
	(15,'Zoo_triggers_ext','hook_channel_module_create_pagination','channel_module_create_pagination','',10,'1.2.5','y'),
	(16,'Zoo_triggers_ext','hook_cp_css_end','cp_css_end','',1,'1.2.5','y'),
	(17,'Zoo_triggers_ext','hook_cp_js_end','cp_js_end','',1,'1.2.5','y');

/*!40000 ALTER TABLE `exp_extensions` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table exp_field_formatting
# ------------------------------------------------------------

DROP TABLE IF EXISTS `exp_field_formatting`;

CREATE TABLE `exp_field_formatting` (
  `formatting_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(10) unsigned NOT NULL,
  `field_fmt` varchar(40) NOT NULL,
  PRIMARY KEY (`formatting_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `exp_field_formatting` WRITE;
/*!40000 ALTER TABLE `exp_field_formatting` DISABLE KEYS */;

INSERT INTO `exp_field_formatting` (`formatting_id`, `field_id`, `field_fmt`)
VALUES
	(1,1,'none'),
	(2,1,'br'),
	(3,1,'markdown'),
	(4,1,'xhtml'),
	(5,2,'none'),
	(6,2,'br'),
	(7,2,'markdown'),
	(8,2,'xhtml'),
	(9,3,'none'),
	(10,3,'br'),
	(11,3,'markdown'),
	(12,3,'xhtml'),
	(13,4,'none'),
	(14,4,'br'),
	(15,4,'markdown'),
	(16,4,'xhtml'),
	(17,5,'none'),
	(18,5,'br'),
	(19,5,'markdown'),
	(20,5,'xhtml'),
	(21,6,'none'),
	(22,6,'br'),
	(23,6,'markdown'),
	(24,6,'xhtml'),
	(25,7,'none'),
	(26,7,'br'),
	(27,7,'markdown'),
	(28,7,'xhtml'),
	(29,8,'none'),
	(30,8,'br'),
	(31,8,'markdown'),
	(32,8,'xhtml'),
	(33,9,'none'),
	(34,9,'br'),
	(35,9,'markdown'),
	(36,9,'xhtml'),
	(37,10,'none'),
	(38,10,'br'),
	(39,10,'markdown'),
	(40,10,'xhtml'),
	(41,11,'none'),
	(42,11,'br'),
	(43,11,'markdown'),
	(44,11,'xhtml'),
	(45,12,'none'),
	(46,12,'br'),
	(47,12,'markdown'),
	(48,12,'xhtml'),
	(49,13,'none'),
	(50,13,'br'),
	(51,13,'markdown'),
	(52,13,'xhtml'),
	(53,14,'none'),
	(54,14,'br'),
	(55,14,'markdown'),
	(56,14,'xhtml'),
	(57,15,'none'),
	(58,15,'br'),
	(59,15,'markdown'),
	(60,15,'xhtml'),
	(61,16,'none'),
	(62,16,'br'),
	(63,16,'markdown'),
	(64,16,'xhtml'),
	(65,17,'none'),
	(66,17,'br'),
	(67,17,'markdown'),
	(68,17,'xhtml'),
	(69,18,'none'),
	(70,18,'br'),
	(71,18,'markdown'),
	(72,18,'xhtml'),
	(73,19,'none'),
	(74,19,'br'),
	(75,19,'markdown'),
	(76,19,'xhtml'),
	(77,20,'none'),
	(78,20,'br'),
	(79,20,'markdown'),
	(80,20,'xhtml'),
	(81,21,'none'),
	(82,21,'br'),
	(83,21,'markdown'),
	(84,21,'xhtml'),
	(85,22,'none'),
	(86,22,'br'),
	(87,22,'markdown'),
	(88,22,'xhtml'),
	(89,23,'none'),
	(90,23,'br'),
	(91,23,'markdown'),
	(92,23,'xhtml'),
	(93,24,'none'),
	(94,24,'br'),
	(95,24,'markdown'),
	(96,24,'xhtml'),
	(329,83,'none'),
	(328,82,'xhtml'),
	(327,82,'markdown'),
	(326,82,'br'),
	(319,80,'markdown'),
	(318,80,'br'),
	(317,80,'none'),
	(325,82,'none'),
	(324,81,'xhtml'),
	(323,81,'markdown'),
	(322,81,'br'),
	(321,81,'none'),
	(320,80,'xhtml'),
	(332,83,'xhtml'),
	(331,83,'markdown'),
	(330,83,'br'),
	(117,30,'none'),
	(118,30,'br'),
	(119,30,'markdown'),
	(120,30,'xhtml'),
	(121,31,'none'),
	(122,31,'br'),
	(123,31,'markdown'),
	(124,31,'xhtml'),
	(125,32,'none'),
	(126,32,'br'),
	(127,32,'markdown'),
	(128,32,'xhtml'),
	(129,33,'none'),
	(130,33,'br'),
	(131,33,'markdown'),
	(132,33,'xhtml'),
	(133,34,'none'),
	(134,34,'br'),
	(135,34,'markdown'),
	(136,34,'xhtml'),
	(137,35,'none'),
	(138,35,'br'),
	(139,35,'markdown'),
	(140,35,'xhtml'),
	(141,36,'none'),
	(142,36,'br'),
	(143,36,'markdown'),
	(144,36,'xhtml'),
	(145,37,'none'),
	(146,37,'br'),
	(147,37,'markdown'),
	(148,37,'xhtml'),
	(149,38,'none'),
	(150,38,'br'),
	(151,38,'markdown'),
	(152,38,'xhtml'),
	(153,39,'none'),
	(154,39,'br'),
	(155,39,'markdown'),
	(156,39,'xhtml'),
	(157,40,'none'),
	(158,40,'br'),
	(159,40,'markdown'),
	(160,40,'xhtml'),
	(161,41,'none'),
	(162,41,'br'),
	(163,41,'markdown'),
	(164,41,'xhtml'),
	(165,42,'none'),
	(166,42,'br'),
	(167,42,'markdown'),
	(168,42,'xhtml'),
	(169,43,'none'),
	(170,43,'br'),
	(171,43,'markdown'),
	(172,43,'xhtml'),
	(173,44,'none'),
	(174,44,'br'),
	(175,44,'markdown'),
	(176,44,'xhtml'),
	(177,45,'none'),
	(178,45,'br'),
	(179,45,'markdown'),
	(180,45,'xhtml'),
	(181,46,'none'),
	(182,46,'br'),
	(183,46,'markdown'),
	(184,46,'xhtml'),
	(185,47,'none'),
	(186,47,'br'),
	(187,47,'markdown'),
	(188,47,'xhtml'),
	(189,48,'none'),
	(190,48,'br'),
	(191,48,'markdown'),
	(192,48,'xhtml'),
	(193,49,'none'),
	(194,49,'br'),
	(195,49,'markdown'),
	(196,49,'xhtml'),
	(197,50,'none'),
	(198,50,'br'),
	(199,50,'markdown'),
	(200,50,'xhtml'),
	(201,51,'none'),
	(202,51,'br'),
	(203,51,'markdown'),
	(204,51,'xhtml'),
	(205,52,'none'),
	(206,52,'br'),
	(207,52,'markdown'),
	(208,52,'xhtml'),
	(209,53,'none'),
	(210,53,'br'),
	(211,53,'markdown'),
	(212,53,'xhtml'),
	(219,55,'markdown'),
	(218,55,'br'),
	(217,55,'none'),
	(220,55,'xhtml'),
	(221,56,'none'),
	(222,56,'br'),
	(223,56,'markdown'),
	(224,56,'xhtml'),
	(225,57,'none'),
	(226,57,'br'),
	(227,57,'markdown'),
	(228,57,'xhtml'),
	(229,58,'none'),
	(230,58,'br'),
	(231,58,'markdown'),
	(232,58,'xhtml'),
	(233,59,'none'),
	(234,59,'br'),
	(235,59,'markdown'),
	(236,59,'xhtml'),
	(237,60,'none'),
	(238,60,'br'),
	(239,60,'markdown'),
	(240,60,'xhtml'),
	(241,61,'none'),
	(242,61,'br'),
	(243,61,'markdown'),
	(244,61,'xhtml'),
	(245,62,'none'),
	(246,62,'br'),
	(247,62,'markdown'),
	(248,62,'xhtml'),
	(249,63,'none'),
	(250,63,'br'),
	(251,63,'markdown'),
	(252,63,'xhtml'),
	(287,72,'markdown'),
	(286,72,'br'),
	(285,72,'none'),
	(284,71,'xhtml'),
	(283,71,'markdown'),
	(282,71,'br'),
	(281,71,'none'),
	(261,66,'none'),
	(262,66,'br'),
	(263,66,'markdown'),
	(264,66,'xhtml'),
	(265,67,'none'),
	(266,67,'br'),
	(267,67,'markdown'),
	(268,67,'xhtml'),
	(269,68,'none'),
	(270,68,'br'),
	(271,68,'markdown'),
	(272,68,'xhtml'),
	(279,70,'markdown'),
	(278,70,'br'),
	(277,70,'none'),
	(280,70,'xhtml'),
	(288,72,'xhtml'),
	(289,73,'none'),
	(290,73,'br'),
	(291,73,'markdown'),
	(292,73,'xhtml'),
	(293,74,'none'),
	(294,74,'br'),
	(295,74,'markdown'),
	(296,74,'xhtml'),
	(297,75,'none'),
	(298,75,'br'),
	(299,75,'markdown'),
	(300,75,'xhtml'),
	(301,76,'none'),
	(302,76,'br'),
	(303,76,'markdown'),
	(304,76,'xhtml'),
	(305,77,'none'),
	(306,77,'br'),
	(307,77,'markdown'),
	(308,77,'xhtml'),
	(309,78,'none'),
	(310,78,'br'),
	(311,78,'markdown'),
	(312,78,'xhtml'),
	(313,79,'none'),
	(314,79,'br'),
	(315,79,'markdown'),
	(316,79,'xhtml'),
	(333,84,'none'),
	(334,84,'br'),
	(335,84,'markdown'),
	(336,84,'xhtml'),
	(337,85,'none'),
	(338,85,'br'),
	(339,85,'markdown'),
	(340,85,'xhtml'),
	(341,86,'none'),
	(342,86,'br'),
	(343,86,'markdown'),
	(344,86,'xhtml'),
	(345,87,'none'),
	(346,87,'br'),
	(347,87,'markdown'),
	(348,87,'xhtml');

/*!40000 ALTER TABLE `exp_field_formatting` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table exp_field_groups
# ------------------------------------------------------------

DROP TABLE IF EXISTS `exp_field_groups`;

CREATE TABLE `exp_field_groups` (
  `group_id` int(4) unsigned NOT NULL AUTO_INCREMENT,
  `site_id` int(4) unsigned NOT NULL DEFAULT '1',
  `group_name` varchar(50) NOT NULL,
  PRIMARY KEY (`group_id`),
  KEY `site_id` (`site_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `exp_field_groups` WRITE;
/*!40000 ALTER TABLE `exp_field_groups` DISABLE KEYS */;

INSERT INTO `exp_field_groups` (`group_id`, `site_id`, `group_name`)
VALUES
	(1,1,'Login'),
	(2,1,'Home'),
	(3,1,'Pages'),
	(4,1,'External URLs'),
	(5,1,'Support Center Landing'),
	(7,1,'FAQs'),
	(31,1,'Alerts'),
	(9,1,'Videos'),
	(33,1,'Clients Landing'),
	(11,1,'Forms and Resources'),
	(32,1,'Clients'),
	(13,1,'Tools and Apps'),
	(15,1,'Compliance Watch'),
	(16,1,'Our Leadership Landing'),
	(17,1,'Our Leadership'),
	(18,1,'Careers Landing'),
	(19,1,'Careers'),
	(20,1,'News and Events Landing'),
	(21,1,'News and Events'),
	(30,1,'Footer'),
	(23,1,'Testimonials Landing'),
	(24,1,'Testimonials'),
	(25,1,'Contact'),
	(26,1,'Advertisements'),
	(29,1,'Support Center Types'),
	(28,1,'Industries');

/*!40000 ALTER TABLE `exp_field_groups` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table exp_fieldtypes
# ------------------------------------------------------------

DROP TABLE IF EXISTS `exp_fieldtypes`;

CREATE TABLE `exp_fieldtypes` (
  `fieldtype_id` int(4) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `version` varchar(12) NOT NULL,
  `settings` text,
  `has_global_settings` char(1) DEFAULT 'n',
  PRIMARY KEY (`fieldtype_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `exp_fieldtypes` WRITE;
/*!40000 ALTER TABLE `exp_fieldtypes` DISABLE KEYS */;

INSERT INTO `exp_fieldtypes` (`fieldtype_id`, `name`, `version`, `settings`, `has_global_settings`)
VALUES
	(1,'select','1.0','YTowOnt9','n'),
	(2,'text','1.0','YTowOnt9','n'),
	(3,'textarea','1.0','YTowOnt9','n'),
	(4,'date','1.0','YTowOnt9','n'),
	(5,'file','1.0','YTowOnt9','n'),
	(6,'grid','1.0','YTowOnt9','n'),
	(7,'multi_select','1.0','YTowOnt9','n'),
	(8,'checkboxes','1.0','YTowOnt9','n'),
	(9,'radio','1.0','YTowOnt9','n'),
	(10,'relationship','1.0','YTowOnt9','n'),
	(12,'structure','3.3.17','YToxOntzOjE5OiJzdHJ1Y3R1cmVfbGlzdF90eXBlIjtzOjU6InBhZ2VzIjt9','n'),
	(13,'wygwam','3.3.3','YToyOntzOjExOiJsaWNlbnNlX2tleSI7czozNjoiMzIyNzA5YTItOTBkMS00MjBmLTgwMzMtZDdmMjA3YmE4MmUyIjtzOjEyOiJmaWxlX2Jyb3dzZXIiO3M6MjoiZWUiO30=','y');

/*!40000 ALTER TABLE `exp_fieldtypes` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table exp_file_categories
# ------------------------------------------------------------

DROP TABLE IF EXISTS `exp_file_categories`;

CREATE TABLE `exp_file_categories` (
  `file_id` int(10) unsigned DEFAULT NULL,
  `cat_id` int(10) unsigned DEFAULT NULL,
  `sort` int(10) unsigned DEFAULT '0',
  `is_cover` char(1) DEFAULT 'n',
  KEY `file_id` (`file_id`),
  KEY `cat_id` (`cat_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table exp_file_dimensions
# ------------------------------------------------------------

DROP TABLE IF EXISTS `exp_file_dimensions`;

CREATE TABLE `exp_file_dimensions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `site_id` int(4) unsigned NOT NULL DEFAULT '1',
  `upload_location_id` int(4) unsigned DEFAULT NULL,
  `title` varchar(255) DEFAULT '',
  `short_name` varchar(255) DEFAULT '',
  `resize_type` varchar(50) DEFAULT '',
  `width` int(10) DEFAULT '0',
  `height` int(10) DEFAULT '0',
  `watermark_id` int(4) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `upload_location_id` (`upload_location_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `exp_file_dimensions` WRITE;
/*!40000 ALTER TABLE `exp_file_dimensions` DISABLE KEYS */;

INSERT INTO `exp_file_dimensions` (`id`, `site_id`, `upload_location_id`, `title`, `short_name`, `resize_type`, `width`, `height`, `watermark_id`)
VALUES
	(1,1,5,'1x','1x','constrain',140,130,0),
	(2,1,15,'1x','1x','constrain',150,150,0),
	(3,1,6,'1x','1x','constrain',300,300,0);

/*!40000 ALTER TABLE `exp_file_dimensions` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table exp_file_watermarks
# ------------------------------------------------------------

DROP TABLE IF EXISTS `exp_file_watermarks`;

CREATE TABLE `exp_file_watermarks` (
  `wm_id` int(4) unsigned NOT NULL AUTO_INCREMENT,
  `wm_name` varchar(80) DEFAULT NULL,
  `wm_type` varchar(10) DEFAULT 'text',
  `wm_image_path` varchar(100) DEFAULT NULL,
  `wm_test_image_path` varchar(100) DEFAULT NULL,
  `wm_use_font` char(1) DEFAULT 'y',
  `wm_font` varchar(30) DEFAULT NULL,
  `wm_font_size` int(3) unsigned DEFAULT NULL,
  `wm_text` varchar(100) DEFAULT NULL,
  `wm_vrt_alignment` varchar(10) DEFAULT 'top',
  `wm_hor_alignment` varchar(10) DEFAULT 'left',
  `wm_padding` int(3) unsigned DEFAULT NULL,
  `wm_opacity` int(3) unsigned DEFAULT NULL,
  `wm_hor_offset` int(4) unsigned DEFAULT NULL,
  `wm_vrt_offset` int(4) unsigned DEFAULT NULL,
  `wm_x_transp` int(4) DEFAULT NULL,
  `wm_y_transp` int(4) DEFAULT NULL,
  `wm_font_color` varchar(7) DEFAULT NULL,
  `wm_use_drop_shadow` char(1) DEFAULT 'y',
  `wm_shadow_distance` int(3) unsigned DEFAULT NULL,
  `wm_shadow_color` varchar(7) DEFAULT NULL,
  PRIMARY KEY (`wm_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table exp_files
# ------------------------------------------------------------

DROP TABLE IF EXISTS `exp_files`;

CREATE TABLE `exp_files` (
  `file_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `site_id` int(4) unsigned DEFAULT '1',
  `title` varchar(255) DEFAULT NULL,
  `upload_location_id` int(4) unsigned DEFAULT '0',
  `rel_path` varchar(255) DEFAULT NULL,
  `mime_type` varchar(255) DEFAULT NULL,
  `file_name` varchar(255) DEFAULT NULL,
  `file_size` int(10) DEFAULT '0',
  `description` text,
  `credit` varchar(255) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `uploaded_by_member_id` int(10) unsigned DEFAULT '0',
  `upload_date` int(10) DEFAULT NULL,
  `modified_by_member_id` int(10) unsigned DEFAULT '0',
  `modified_date` int(10) DEFAULT NULL,
  `file_hw_original` varchar(20) NOT NULL DEFAULT '',
  PRIMARY KEY (`file_id`),
  KEY `upload_location_id` (`upload_location_id`),
  KEY `site_id` (`site_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `exp_files` WRITE;
/*!40000 ALTER TABLE `exp_files` DISABLE KEYS */;

INSERT INTO `exp_files` (`file_id`, `site_id`, `title`, `upload_location_id`, `rel_path`, `mime_type`, `file_name`, `file_size`, `description`, `credit`, `location`, `uploaded_by_member_id`, `upload_date`, `modified_by_member_id`, `modified_date`, `file_hw_original`)
VALUES
	(1,1,'testimonial-image-example.jpg',11,'/Users/Joshua/Work/Chard Snyder/dev/html/uploads/testimonials/testimonial-image-example.jpg','image/jpeg','testimonial-image-example.jpg',29524,NULL,NULL,NULL,1,1454420901,1,1454559359,'400 640'),
	(2,1,'slide-image-example.jpg',10,'/Users/Joshua/Work/Chard Snyder/dev/html/uploads/slides/slide-image-example.jpg','image/jpeg','slide-image-example.jpg',19563,NULL,NULL,NULL,1,1454421309,1,1455587718,'400 640'),
	(3,1,'hero-image-example.jpg',4,'/Users/Joshua/Work/Chard Snyder/dev/html/uploads/heroes/hero-image-example.jpg','image/jpeg','hero-image-example.jpg',35901,NULL,NULL,NULL,1,1454421385,1,1454421385,'500 1280'),
	(13,1,'manufacturing.png',5,'/Users/Joshua/Work/Chard Snyder/dev/html/uploads/industries/manufacturing.png','image/png','manufacturing.png',4925,NULL,NULL,NULL,1,1454557092,1,1454557092,'260 280'),
	(12,1,'government.png',5,'/Users/Joshua/Work/Chard Snyder/dev/html/uploads/industries/government.png','image/png','government.png',3850,NULL,NULL,NULL,1,1454557062,1,1454557062,'260 280'),
	(11,1,'bank-and-financial.png',5,'/Users/Joshua/Work/Chard Snyder/dev/html/uploads/industries/bank-and-financial.png','image/png','bank-and-financial.png',9134,NULL,NULL,NULL,1,1454557033,1,1454557033,'260 280'),
	(10,1,'healthcare.png',5,'/Users/Joshua/Work/Chard Snyder/dev/html/uploads/industries/healthcare.png','image/png','healthcare.png',11295,NULL,NULL,NULL,1,1454557004,1,1454557004,'260 280'),
	(9,1,'colleges-and-universities.png',5,'/Users/Joshua/Work/Chard Snyder/dev/html/uploads/industries/colleges-and-universities.png','image/png','colleges-and-universities.png',10629,NULL,NULL,NULL,1,1454555394,1,1454556774,'260 280'),
	(14,1,'placeholder.jpg',11,'/Users/Joshua/Work/Chard Snyder/dev/html/uploads/testimonials/placeholder.jpg','image/jpeg','placeholder.jpg',823,NULL,NULL,NULL,1,1454085359,1,1454085359,'100 100'),
	(15,1,'testimonial-image-override-example.jpg',11,'/Users/Joshua/Work/Chard Snyder/dev/html/uploads/testimonials/testimonial-image-override-example.jpg','image/jpeg','testimonial-image-override-example.jpg',29524,NULL,NULL,NULL,1,1454420901,1,1454420901,'400 640'),
	(16,1,'bio-photo-example.jpg',6,'/Users/Joshua/Work/Chard Snyder/dev/html/uploads/our-leadership/bio-photo-example.jpg','image/jpeg','bio-photo-example.jpg',7565,NULL,NULL,NULL,1,1454561458,1,1455806970,'600 600'),
	(17,1,'application.pdf',2,'/Users/Joshua/Work/Chard Snyder/dev/html/uploads/careers/application.pdf','application/pdf','application.pdf',840151,NULL,NULL,NULL,1,1454562254,1,1454562254,' '),
	(18,1,'placeholder.jpg',3,'/Users/Joshua/Work/Chard Snyder/dev/html/uploads/forms-and-resources/placeholder.jpg','image/jpeg','placeholder.jpg',823,NULL,NULL,NULL,1,1454085359,1,1454085359,'100 100'),
	(19,1,'download.pdf',3,'/Users/Joshua/Work/Chard Snyder/dev/html/uploads/forms-and-resources/download.pdf','application/pdf','download.pdf',837581,NULL,NULL,NULL,1,1454600844,1,1454600844,' '),
	(20,1,'advertisement-example.jpg',1,'/Users/Joshua/Work/Chard Snyder/dev/html/uploads/advertisements/advertisement-example.jpg','image/jpeg','advertisement-example.jpg',10568,NULL,NULL,NULL,1,1454690058,1,1454690058,'87 728'),
	(21,1,'placeholder.jpg',10,'/Users/Joshua/Work/Chard Snyder/dev/html/uploads/slides/placeholder.jpg','image/jpeg','placeholder.jpg',823,NULL,NULL,NULL,1,1454085359,1,1454085359,'100 100'),
	(22,1,'compliance-watch.png',15,'/Users/Joshua/Work/Chard Snyder/dev/html/uploads/support-center/compliance-watch.png','image/png','compliance-watch.png',13264,NULL,NULL,NULL,1,1455587277,1,1455587277,'300 300'),
	(23,1,'faqs.png',15,'/Users/Joshua/Work/Chard Snyder/dev/html/uploads/support-center/faqs.png','image/png','faqs.png',8827,NULL,NULL,NULL,1,1455587277,1,1455587277,'300 300'),
	(24,1,'forms-and-resources.png',15,'/Users/Joshua/Work/Chard Snyder/dev/html/uploads/support-center/forms-and-resources.png','image/png','forms-and-resources.png',4135,NULL,NULL,NULL,1,1455587277,1,1455587277,'300 300'),
	(25,1,'tools-and-apps.png',15,'/Users/Joshua/Work/Chard Snyder/dev/html/uploads/support-center/tools-and-apps.png','image/png','tools-and-apps.png',7704,NULL,NULL,NULL,1,1455587277,1,1455587277,'300 300'),
	(26,1,'videos.png',15,'/Users/Joshua/Work/Chard Snyder/dev/html/uploads/support-center/videos.png','image/png','videos.png',9459,NULL,NULL,NULL,1,1455587277,1,1455587277,'300 300'),
	(27,1,'boston-scientific.png',16,'/Users/Joshua/Work/Chard Snyder/dev/html/uploads/clients/boston-scientific.png','image/png','boston-scientific.png',6062,NULL,NULL,NULL,1,1457384825,1,1457384825,'150 320');

/*!40000 ALTER TABLE `exp_files` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table exp_freeform_composer_layouts
# ------------------------------------------------------------

DROP TABLE IF EXISTS `exp_freeform_composer_layouts`;

CREATE TABLE `exp_freeform_composer_layouts` (
  `composer_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `composer_data` text,
  `site_id` int(10) unsigned NOT NULL DEFAULT '1',
  `preview` char(1) NOT NULL DEFAULT 'n',
  `entry_date` int(10) unsigned NOT NULL DEFAULT '0',
  `edit_date` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`composer_id`),
  KEY `preview` (`preview`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table exp_freeform_composer_templates
# ------------------------------------------------------------

DROP TABLE IF EXISTS `exp_freeform_composer_templates`;

CREATE TABLE `exp_freeform_composer_templates` (
  `template_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `site_id` int(10) unsigned NOT NULL DEFAULT '1',
  `template_name` varchar(150) NOT NULL DEFAULT 'default',
  `template_label` varchar(150) NOT NULL DEFAULT 'default',
  `template_description` text,
  `enable_template` char(1) NOT NULL DEFAULT 'y',
  `template_data` text,
  `param_data` text,
  PRIMARY KEY (`template_id`),
  KEY `template_name` (`template_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table exp_freeform_email_logs
# ------------------------------------------------------------

DROP TABLE IF EXISTS `exp_freeform_email_logs`;

CREATE TABLE `exp_freeform_email_logs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `site_id` int(10) unsigned NOT NULL DEFAULT '1',
  `date` int(10) unsigned NOT NULL DEFAULT '0',
  `type` varchar(250) NOT NULL DEFAULT 'user',
  `success` char(1) NOT NULL DEFAULT 'y',
  `from` text,
  `from_name` text,
  `to` text,
  `subject` text,
  `message` text,
  `debug_info` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table exp_freeform_fields
# ------------------------------------------------------------

DROP TABLE IF EXISTS `exp_freeform_fields`;

CREATE TABLE `exp_freeform_fields` (
  `field_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `site_id` int(10) unsigned NOT NULL DEFAULT '1',
  `field_name` varchar(150) NOT NULL DEFAULT 'default',
  `field_label` varchar(150) NOT NULL DEFAULT 'default',
  `field_type` varchar(50) NOT NULL DEFAULT 'text',
  `settings` text,
  `author_id` int(10) unsigned NOT NULL DEFAULT '0',
  `entry_date` int(10) unsigned NOT NULL DEFAULT '0',
  `edit_date` int(10) unsigned NOT NULL DEFAULT '0',
  `required` char(1) NOT NULL DEFAULT 'n',
  `submissions_page` char(1) NOT NULL DEFAULT 'y',
  `moderation_page` char(1) NOT NULL DEFAULT 'y',
  `composer_use` char(1) NOT NULL DEFAULT 'y',
  `field_description` text,
  PRIMARY KEY (`field_id`),
  KEY `field_name` (`field_name`),
  KEY `site_id` (`site_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `exp_freeform_fields` WRITE;
/*!40000 ALTER TABLE `exp_freeform_fields` DISABLE KEYS */;

INSERT INTO `exp_freeform_fields` (`field_id`, `site_id`, `field_name`, `field_label`, `field_type`, `settings`, `author_id`, `entry_date`, `edit_date`, `required`, `submissions_page`, `moderation_page`, `composer_use`, `field_description`)
VALUES
	(3,1,'email','Email','text','{\"field_length\":150,\"field_content_type\":\"email\"}',1,1454368953,0,'n','y','y','y','A basic email field for collecting stuff like an email address.'),
	(4,1,'message','Message','textarea','{\"field_ta_rows\":\"6\",\"disallow_html_rendering\":\"y\"}',1,1454368953,1454571165,'n','y','y','y','This field contains the user\'s message.'),
	(5,1,'name','Name','text','{\"field_length\":\"150\",\"field_content_type\":\"any\",\"disallow_html_rendering\":\"y\"}',1,1454569748,0,'n','y','y','y',''),
	(6,1,'phone','Phone','text','{\"field_length\":\"150\",\"field_content_type\":\"any\",\"disallow_html_rendering\":\"y\"}',1,1454569783,0,'n','y','y','y',''),
	(7,1,'company_name','Company Name','text','{\"field_length\":\"150\",\"field_content_type\":\"any\",\"disallow_html_rendering\":\"y\"}',1,1454569839,0,'n','y','y','y',''),
	(8,1,'your_role','Your Role','text','{\"field_length\":\"150\",\"field_content_type\":\"any\",\"disallow_html_rendering\":\"y\"}',1,1454570586,1454619186,'n','y','y','y',''),
	(12,1,'additional_information','Additional Information','textarea','{\"field_ta_rows\":\"6\",\"disallow_html_rendering\":\"y\"}',1,1454647081,1454647097,'n','y','y','y',''),
	(13,1,'recipient_email','How Can We Help?','text','{\"field_length\":\"500\",\"field_content_type\":\"any\",\"disallow_html_rendering\":\"y\"}',1,1454647164,1455204656,'n','y','y','y',''),
	(14,1,'attach_file','Attach File','file_upload','{\"allowed_file_types\":\"doc|pdf\",\"file_upload_location\":\"14\",\"allowed_upload_count\":\"1\",\"overwrite_on_edit\":\"n\",\"disable_xss_clean\":\"n\"}',1,1454647195,1454647252,'n','y','y','y',''),
	(15,1,'employer_demonstrations','Employer Demonstrations','text','{\"field_length\":\"500\",\"field_content_type\":\"any\",\"disallow_html_rendering\":\"y\"}',1,1454647312,0,'n','y','y','y',''),
	(16,1,'number_of_eligible_employees','Number of Eligible Employees','text','{\"field_length\":\"150\",\"field_content_type\":\"any\",\"disallow_html_rendering\":\"y\"}',1,1454647327,0,'n','y','y','y',''),
	(17,1,'participant_portal_demonstrations','Participant Portal Demonstrations','text','{\"field_length\":\"500\",\"field_content_type\":\"any\",\"disallow_html_rendering\":\"y\"}',1,1454647347,0,'n','y','y','y',''),
	(18,1,'plan_effective_date','Plan Effective Date','text','{\"field_length\":\"500\",\"field_content_type\":\"any\",\"disallow_html_rendering\":\"y\"}',1,1454647380,0,'n','y','y','y',''),
	(19,1,'services','Services','text','{\"field_length\":\"500\",\"field_content_type\":\"any\",\"disallow_html_rendering\":\"y\"}',1,1454647401,0,'n','y','y','y','');

/*!40000 ALTER TABLE `exp_freeform_fields` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table exp_freeform_fieldtypes
# ------------------------------------------------------------

DROP TABLE IF EXISTS `exp_freeform_fieldtypes`;

CREATE TABLE `exp_freeform_fieldtypes` (
  `fieldtype_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fieldtype_name` varchar(250) DEFAULT NULL,
  `settings` text,
  `default_field` char(1) NOT NULL DEFAULT 'n',
  `version` varchar(12) DEFAULT NULL,
  PRIMARY KEY (`fieldtype_id`),
  KEY `fieldtype_name` (`fieldtype_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `exp_freeform_fieldtypes` WRITE;
/*!40000 ALTER TABLE `exp_freeform_fieldtypes` DISABLE KEYS */;

INSERT INTO `exp_freeform_fieldtypes` (`fieldtype_id`, `fieldtype_name`, `settings`, `default_field`, `version`)
VALUES
	(1,'file_upload','[]','n','4.2.4'),
	(2,'mailinglist','[]','n','4.2.4'),
	(3,'text','[]','n','4.2.4'),
	(4,'textarea','[]','n','4.2.4');

/*!40000 ALTER TABLE `exp_freeform_fieldtypes` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table exp_freeform_file_uploads
# ------------------------------------------------------------

DROP TABLE IF EXISTS `exp_freeform_file_uploads`;

CREATE TABLE `exp_freeform_file_uploads` (
  `file_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `site_id` int(10) unsigned NOT NULL DEFAULT '1',
  `form_id` int(10) unsigned NOT NULL DEFAULT '0',
  `entry_id` int(10) unsigned NOT NULL DEFAULT '0',
  `field_id` int(10) unsigned NOT NULL DEFAULT '0',
  `server_path` varchar(750) DEFAULT NULL,
  `filename` varchar(250) DEFAULT NULL,
  `extension` varchar(20) DEFAULT NULL,
  `filesize` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`file_id`),
  KEY `entry_id` (`entry_id`),
  KEY `field_id` (`field_id`),
  KEY `extension` (`extension`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `exp_freeform_file_uploads` WRITE;
/*!40000 ALTER TABLE `exp_freeform_file_uploads` DISABLE KEYS */;

INSERT INTO `exp_freeform_file_uploads` (`file_id`, `site_id`, `form_id`, `entry_id`, `field_id`, `server_path`, `filename`, `extension`, `filesize`)
VALUES
	(1,1,2,1,14,'/Users/Joshua/Work/Chard Snyder/dev/html/uploads/proposals/','proposal-example-01.pdf','pdf',45),
	(2,1,2,3,14,'/Users/Joshua/Work/Chard Snyder/dev/html/uploads/proposals/','proposal-example-03.pdf','pdf',45),
	(3,1,2,4,14,'/Users/Joshua/Work/Chard Snyder/dev/html/uploads/proposals/','proposal-example-02.pdf','pdf',45);

/*!40000 ALTER TABLE `exp_freeform_file_uploads` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table exp_freeform_form_entries_1
# ------------------------------------------------------------

DROP TABLE IF EXISTS `exp_freeform_form_entries_1`;

CREATE TABLE `exp_freeform_form_entries_1` (
  `entry_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `site_id` int(10) unsigned NOT NULL DEFAULT '1',
  `author_id` int(10) unsigned NOT NULL DEFAULT '0',
  `complete` varchar(1) NOT NULL DEFAULT 'y',
  `ip_address` varchar(40) NOT NULL DEFAULT '0',
  `entry_date` int(10) unsigned NOT NULL DEFAULT '0',
  `edit_date` int(10) unsigned NOT NULL DEFAULT '0',
  `status` varchar(50) DEFAULT NULL,
  `form_field_3` text,
  `form_field_4` text,
  `form_field_5` text,
  `form_field_6` text,
  `form_field_7` text,
  `form_field_8` text,
  `form_field_13` text,
  PRIMARY KEY (`entry_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `exp_freeform_form_entries_1` WRITE;
/*!40000 ALTER TABLE `exp_freeform_form_entries_1` DISABLE KEYS */;

INSERT INTO `exp_freeform_form_entries_1` (`entry_id`, `site_id`, `author_id`, `complete`, `ip_address`, `entry_date`, `edit_date`, `status`, `form_field_3`, `form_field_4`, `form_field_5`, `form_field_6`, `form_field_7`, `form_field_8`, `form_field_13`)
VALUES
	(1,1,0,'y','127.0.0.1',1454368953,0,'pending','support@solspace.com','Welcome to Freeform. We hope that you will enjoy Solspace software.',NULL,NULL,NULL,NULL,NULL),
	(2,1,1,'y','::1',1454573054,0,'pending','jlcolema@me.com','A very nice message.','Joshua','1234567890','Apple',NULL,NULL),
	(3,1,1,'y','::1',1454647607,0,'pending','jlcolema@me.com','A very nice message.','Joshua','123-456-7890','A Good Company','Option Two',NULL),
	(4,1,1,'y','::1',1454647839,0,'pending','jlcolema@me.com','A great message.','Joshua','123-456-7890','A Very Nice Company','Option Two','Option Three'),
	(5,1,1,'y','::1',1454681773,0,'pending','jlcolema@me.com','Hi. This is new content.','Joshua','123-456-7890','Bread','Option Three','Option Two'),
	(6,1,1,'y','::1',1454957590,0,'pending','jlcolema@me.com','Message.','Joshua','123','Apple','Option Two','Option Three'),
	(7,1,1,'y','::1',1454958155,0,'pending','jlcolema@me.com','M','Joshua','123','1566',NULL,NULL),
	(8,1,1,'y','::1',1454958191,0,'pending','jlcolema@me.com','','','','',NULL,NULL),
	(9,1,1,'y','::1',1454958438,0,'pending','jlcolema@me.com','','','','',NULL,NULL),
	(10,1,1,'y','::1',1454958497,0,'pending','adfs@adfds.cad','','','','',NULL,NULL),
	(11,1,1,'y','::1',1454958609,0,'pending','adfdsf@me.com','','','','',NULL,NULL),
	(12,1,1,'y','::1',1454958680,0,'pending','adslfjds@me.com','','','','',NULL,NULL),
	(13,1,1,'y','::1',1454958699,0,'pending','adsfds@me.com','','','','',NULL,NULL),
	(14,1,1,'y','::1',1454958906,0,'pending','jad@me.com','','','','',NULL,NULL),
	(15,1,1,'y','::1',1455037658,0,'pending','jlcolema@me.com','','','','',NULL,NULL),
	(16,1,1,'y','::1',1455037822,0,'pending','jlcolema@me.com','','','','',NULL,NULL),
	(17,1,1,'y','::1',1455038068,0,'pending','jlcolema@me.com','','','','',NULL,NULL);

/*!40000 ALTER TABLE `exp_freeform_form_entries_1` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table exp_freeform_form_entries_2
# ------------------------------------------------------------

DROP TABLE IF EXISTS `exp_freeform_form_entries_2`;

CREATE TABLE `exp_freeform_form_entries_2` (
  `entry_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `site_id` int(10) unsigned NOT NULL DEFAULT '1',
  `author_id` int(10) unsigned NOT NULL DEFAULT '0',
  `complete` varchar(1) NOT NULL DEFAULT 'y',
  `ip_address` varchar(40) NOT NULL DEFAULT '0',
  `entry_date` int(10) unsigned NOT NULL DEFAULT '0',
  `edit_date` int(10) unsigned NOT NULL DEFAULT '0',
  `status` varchar(50) DEFAULT NULL,
  `form_field_3` text,
  `form_field_5` text,
  `form_field_6` text,
  `form_field_7` text,
  `form_field_12` text,
  `form_field_14` text,
  `form_field_16` text,
  `form_field_18` text,
  `form_field_19` text,
  PRIMARY KEY (`entry_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `exp_freeform_form_entries_2` WRITE;
/*!40000 ALTER TABLE `exp_freeform_form_entries_2` DISABLE KEYS */;

INSERT INTO `exp_freeform_form_entries_2` (`entry_id`, `site_id`, `author_id`, `complete`, `ip_address`, `entry_date`, `edit_date`, `status`, `form_field_3`, `form_field_5`, `form_field_6`, `form_field_7`, `form_field_12`, `form_field_14`, `form_field_16`, `form_field_18`, `form_field_19`)
VALUES
	(1,1,1,'y','::1',1454647921,0,'pending','jlcolema@me.com','Joshua','123-456-7890','A Good Company','A nice description with more information.','proposal-example-01.pdf','35','Option Two','Health Reimbursement Arrangement (HRA)\nTransportation & Parking (TRP)\nCOBRA'),
	(2,1,1,'y','::1',1454648739,0,'pending','jlcolema@me.com','Joshua','987-654-3210','A Really Cool Company','More information about the proposal','','71','Option Three','Health Savings Account (HSA)\nCOBRA'),
	(3,1,1,'y','::1',1454648892,0,'pending','jane@appleseed.com','Jane Appleseed','123-456-7890','A Great Company','More information.','proposal-example-03.pdf','75','Option Three','Transportation & Parking (TRP)\nPlan Document Services\nBilling'),
	(4,1,1,'y','::1',1454650711,0,'pending','jlcolema@me.com','Joshua','123-456-7890','Awesome Company','More information.','proposal-example-02.pdf','50','Option Two','Health Reimbursement Arrangement (HRA)'),
	(5,1,1,'y','::1',1455037636,0,'pending','jlcolema@me.com','Joshua','','','','','',NULL,NULL),
	(6,1,1,'y','::1',1455037678,0,'pending','jlcolema@me.com','','','','','','',NULL,NULL),
	(7,1,1,'y','::1',1455037765,0,'pending','jlcolema@me.com','','','','','','',NULL,NULL);

/*!40000 ALTER TABLE `exp_freeform_form_entries_2` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table exp_freeform_form_entries_3
# ------------------------------------------------------------

DROP TABLE IF EXISTS `exp_freeform_form_entries_3`;

CREATE TABLE `exp_freeform_form_entries_3` (
  `entry_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `site_id` int(10) unsigned NOT NULL DEFAULT '1',
  `author_id` int(10) unsigned NOT NULL DEFAULT '0',
  `complete` varchar(1) NOT NULL DEFAULT 'y',
  `ip_address` varchar(40) NOT NULL DEFAULT '0',
  `entry_date` int(10) unsigned NOT NULL DEFAULT '0',
  `edit_date` int(10) unsigned NOT NULL DEFAULT '0',
  `status` varchar(50) DEFAULT NULL,
  `form_field_3` text,
  `form_field_5` text,
  `form_field_6` text,
  `form_field_7` text,
  `form_field_12` text,
  `form_field_15` text,
  `form_field_16` text,
  `form_field_17` text,
  PRIMARY KEY (`entry_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `exp_freeform_form_entries_3` WRITE;
/*!40000 ALTER TABLE `exp_freeform_form_entries_3` DISABLE KEYS */;

INSERT INTO `exp_freeform_form_entries_3` (`entry_id`, `site_id`, `author_id`, `complete`, `ip_address`, `entry_date`, `edit_date`, `status`, `form_field_3`, `form_field_5`, `form_field_6`, `form_field_7`, `form_field_12`, `form_field_15`, `form_field_16`, `form_field_17`)
VALUES
	(1,1,1,'y','::1',1454647993,0,'pending','jlcolema@me.com','Joshua','123-456-7890','A Very Good Company','A description with more information.','Employer Portal','21','HRA\nFSA & HRA\nHRA, HSA, Limited FSA, Dependent Care & TRP'),
	(2,1,1,'y','::1',1455037777,0,'pending','jlcolema@me.com','','','','',NULL,'',NULL),
	(3,1,1,'y','::1',1455037810,0,'pending','jlcolema@me.com','','','','',NULL,'',NULL);

/*!40000 ALTER TABLE `exp_freeform_form_entries_3` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table exp_freeform_forms
# ------------------------------------------------------------

DROP TABLE IF EXISTS `exp_freeform_forms`;

CREATE TABLE `exp_freeform_forms` (
  `form_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `site_id` int(10) unsigned NOT NULL DEFAULT '1',
  `form_name` varchar(150) NOT NULL DEFAULT 'default',
  `form_label` varchar(150) NOT NULL DEFAULT 'default',
  `default_status` varchar(150) NOT NULL DEFAULT 'default',
  `notify_user` char(1) NOT NULL DEFAULT 'n',
  `notify_admin` char(1) NOT NULL DEFAULT 'n',
  `user_email_field` varchar(150) NOT NULL DEFAULT '',
  `user_notification_id` int(10) unsigned NOT NULL DEFAULT '0',
  `admin_notification_id` int(10) unsigned NOT NULL DEFAULT '0',
  `admin_notification_email` text,
  `form_description` text,
  `field_ids` text,
  `field_order` text,
  `template_id` int(10) unsigned NOT NULL DEFAULT '0',
  `composer_id` int(10) unsigned NOT NULL DEFAULT '0',
  `author_id` int(10) unsigned NOT NULL DEFAULT '0',
  `entry_date` int(10) unsigned NOT NULL DEFAULT '0',
  `edit_date` int(10) unsigned NOT NULL DEFAULT '0',
  `settings` text,
  PRIMARY KEY (`form_id`),
  KEY `form_name` (`form_name`),
  KEY `site_id` (`site_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `exp_freeform_forms` WRITE;
/*!40000 ALTER TABLE `exp_freeform_forms` DISABLE KEYS */;

INSERT INTO `exp_freeform_forms` (`form_id`, `site_id`, `form_name`, `form_label`, `default_status`, `notify_user`, `notify_admin`, `user_email_field`, `user_notification_id`, `admin_notification_id`, `admin_notification_email`, `form_description`, `field_ids`, `field_order`, `template_id`, `composer_id`, `author_id`, `entry_date`, `edit_date`, `settings`)
VALUES
	(1,1,'contact','Contact','pending','n','y','',0,0,'jlcolema@me.com','This is a basic contact form.','3|4|5|6|7|8|13','5|3|6|7|8|13|4',0,0,1,1454368953,1454647802,NULL),
	(2,1,'request_a_proposal','Request a Proposal','pending','n','n','',0,0,'jlcolema@me.com','','3|5|6|7|12|14|16|18|19','5|3|6|7|16|18|19|12|14',0,0,1,1454369974,1454647535,NULL),
	(3,1,'request_a_demo','Request a Demo','pending','n','n','',0,0,'jlcolema@me.com','','3|5|6|7|12|15|16|17','5|3|6|7|16|15|17|12',0,0,1,1454369985,1454647499,NULL);

/*!40000 ALTER TABLE `exp_freeform_forms` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table exp_freeform_multipage_hashes
# ------------------------------------------------------------

DROP TABLE IF EXISTS `exp_freeform_multipage_hashes`;

CREATE TABLE `exp_freeform_multipage_hashes` (
  `hash_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `site_id` int(10) unsigned NOT NULL DEFAULT '1',
  `form_id` int(10) unsigned NOT NULL DEFAULT '0',
  `entry_id` int(10) unsigned NOT NULL DEFAULT '0',
  `hash` varchar(32) NOT NULL DEFAULT '',
  `ip_address` varchar(40) NOT NULL DEFAULT '0',
  `date` int(10) unsigned NOT NULL DEFAULT '0',
  `edit` char(1) NOT NULL DEFAULT 'n',
  `data` text,
  PRIMARY KEY (`hash_id`),
  KEY `hash` (`hash`),
  KEY `ip_address` (`ip_address`),
  KEY `site_id` (`site_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table exp_freeform_notification_templates
# ------------------------------------------------------------

DROP TABLE IF EXISTS `exp_freeform_notification_templates`;

CREATE TABLE `exp_freeform_notification_templates` (
  `notification_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `site_id` int(10) unsigned NOT NULL DEFAULT '1',
  `notification_name` varchar(150) NOT NULL DEFAULT 'default',
  `notification_label` varchar(150) NOT NULL DEFAULT 'default',
  `notification_description` text,
  `wordwrap` char(1) NOT NULL DEFAULT 'y',
  `allow_html` char(1) NOT NULL DEFAULT 'n',
  `from_name` varchar(150) NOT NULL DEFAULT '',
  `from_email` varchar(250) NOT NULL DEFAULT '',
  `reply_to_email` varchar(250) NOT NULL DEFAULT '',
  `email_subject` varchar(128) NOT NULL DEFAULT 'default',
  `include_attachments` char(1) NOT NULL DEFAULT 'n',
  `template_data` text,
  PRIMARY KEY (`notification_id`),
  KEY `notification_name` (`notification_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table exp_freeform_params
# ------------------------------------------------------------

DROP TABLE IF EXISTS `exp_freeform_params`;

CREATE TABLE `exp_freeform_params` (
  `params_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entry_date` int(10) unsigned NOT NULL DEFAULT '0',
  `data` text,
  PRIMARY KEY (`params_id`),
  KEY `entry_date` (`entry_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `exp_freeform_params` WRITE;
/*!40000 ALTER TABLE `exp_freeform_params` DISABLE KEYS */;

INSERT INTO `exp_freeform_params` (`params_id`, `entry_date`, `data`)
VALUES
	(265,1456936577,'{\"form_id\":\"1\",\"edit\":false,\"entry_id\":0,\"secure_action\":false,\"secure_return\":false,\"require_captcha\":false,\"require_ip\":true,\"return\":\"\\/about\\/contact\\/contact-thank-you\",\"inline_error_return\":\"about\\/contact\",\"error_page\":\"\",\"ajax\":true,\"restrict_edit_to_author\":true,\"inline_errors\":false,\"prevent_duplicate_on\":\"\",\"prevent_duplicate_per_site\":false,\"secure_duplicate_redirect\":false,\"duplicate_redirect\":\"\",\"error_on_duplicate\":false,\"required\":\"\",\"matching_fields\":\"\",\"last_page\":true,\"multipage\":false,\"redirect_on_timeout\":true,\"redirect_on_timeout_to\":\"\",\"page_marker\":\"page\",\"multipage_page\":\"\",\"paging_url\":\"\",\"multipage_page_names\":\"\",\"admin_notify\":\"jlcolema@me.com\",\"admin_cc_notify\":\"\",\"admin_bcc_notify\":\"\",\"notify_user\":false,\"notify_admin\":true,\"notify_on_edit\":false,\"user_email_field\":\"\",\"recipients\":true,\"recipients_limit\":\"3\",\"recipient_user_input\":false,\"recipient_user_limit\":\"3\",\"recipient_template\":\"\",\"recipient_user_template\":\"\",\"admin_notification_template\":\"0\",\"user_notification_template\":\"0\",\"status\":\"\",\"allow_status_edit\":false,\"recipients_list\":{\"1\":{\"name\":\"Flexible Spending Account (FSA)\",\"email\":\"askpenny@chard-snyder.com\",\"key\":\"56d71682d387b8.46255788\",\"selected\":false},\"2\":{\"name\":\"Health Reimbursement Arrangement (HRA)\",\"email\":\"askpenny@chard-snyder.com\",\"key\":\"56d71682d38c05.97273010\",\"selected\":false},\"3\":{\"name\":\"Health Savings Account (HSA)\",\"email\":\"askpenny@chard-snyder.com\",\"key\":\"56d71682d38ef5.54290697\",\"selected\":false},\"4\":{\"name\":\"Transportation &amp; Parking (TRP)\",\"email\":\"askpenny@chard-snyder.com\",\"key\":\"56d71682d391d2.54266360\",\"selected\":false},\"5\":{\"name\":\"COBRA\",\"email\":\"COBRA@chard-snyder.com\",\"key\":\"56d71682d394b3.41667926\",\"selected\":false},\"6\":{\"name\":\"Retiree Billing\",\"email\":\"retireebilling@chard-snyder.com\",\"key\":\"56d71682d39795.09556083\",\"selected\":false},\"7\":{\"name\":\"Direct Billing\",\"email\":\"directbilling@chard-snyder.com\",\"key\":\"56d71682d39aa3.71088551\",\"selected\":false},\"8\":{\"name\":\"Chard Snyder Marketplace\",\"email\":\"COBRA@chard-snyder.com\",\"key\":\"56d71682d39db2.50075189\",\"selected\":false},\"9\":{\"name\":\"FMLA Administration\",\"email\":\"FMLA@chard-snyder.com\",\"key\":\"56d71682d3a092.71386329\",\"selected\":false},\"10\":{\"name\":\"Plan Document Services\",\"email\":\"askpenny@chard-snyder.com\",\"key\":\"56d71682d3a3a4.50824781\",\"selected\":false},\"11\":{\"name\":\"Careers\",\"email\":\"HumanResources@chard-snyder.com\",\"key\":\"56d71682d3a6b9.11160696\",\"selected\":false},\"12\":{\"name\":\"Media\\/Marketing\",\"email\":\"marketing@chard-snyder.com\",\"key\":\"56d71682d3a9b8.58029340\",\"selected\":false}}}');

/*!40000 ALTER TABLE `exp_freeform_params` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table exp_freeform_preferences
# ------------------------------------------------------------

DROP TABLE IF EXISTS `exp_freeform_preferences`;

CREATE TABLE `exp_freeform_preferences` (
  `preference_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `preference_name` varchar(80) DEFAULT NULL,
  `preference_value` text,
  `site_id` int(10) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`preference_id`),
  KEY `preference_name` (`preference_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `exp_freeform_preferences` WRITE;
/*!40000 ALTER TABLE `exp_freeform_preferences` DISABLE KEYS */;

INSERT INTO `exp_freeform_preferences` (`preference_id`, `preference_name`, `preference_value`, `site_id`)
VALUES
	(1,'ffp','n',0);

/*!40000 ALTER TABLE `exp_freeform_preferences` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table exp_freeform_user_email
# ------------------------------------------------------------

DROP TABLE IF EXISTS `exp_freeform_user_email`;

CREATE TABLE `exp_freeform_user_email` (
  `email_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `site_id` int(10) unsigned NOT NULL DEFAULT '1',
  `author_id` int(10) unsigned NOT NULL DEFAULT '0',
  `ip_address` varchar(40) NOT NULL DEFAULT '0',
  `entry_date` int(10) unsigned NOT NULL DEFAULT '0',
  `form_id` int(10) unsigned NOT NULL DEFAULT '0',
  `entry_id` int(10) unsigned NOT NULL DEFAULT '0',
  `email_count` int(10) unsigned NOT NULL DEFAULT '0',
  `email_addresses` text,
  PRIMARY KEY (`email_id`),
  KEY `ip_address` (`ip_address`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table exp_global_variables
# ------------------------------------------------------------

DROP TABLE IF EXISTS `exp_global_variables`;

CREATE TABLE `exp_global_variables` (
  `variable_id` int(6) unsigned NOT NULL AUTO_INCREMENT,
  `site_id` int(4) unsigned NOT NULL DEFAULT '1',
  `variable_name` varchar(50) NOT NULL,
  `variable_data` text NOT NULL,
  PRIMARY KEY (`variable_id`),
  KEY `variable_name` (`variable_name`),
  KEY `site_id` (`site_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table exp_grid_columns
# ------------------------------------------------------------

DROP TABLE IF EXISTS `exp_grid_columns`;

CREATE TABLE `exp_grid_columns` (
  `col_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(10) unsigned DEFAULT NULL,
  `content_type` varchar(50) DEFAULT NULL,
  `col_order` int(3) unsigned DEFAULT NULL,
  `col_type` varchar(50) DEFAULT NULL,
  `col_label` varchar(50) DEFAULT NULL,
  `col_name` varchar(32) DEFAULT NULL,
  `col_instructions` text,
  `col_required` char(1) DEFAULT NULL,
  `col_search` char(1) DEFAULT NULL,
  `col_width` int(3) unsigned DEFAULT NULL,
  `col_settings` text,
  PRIMARY KEY (`col_id`),
  KEY `field_id` (`field_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `exp_grid_columns` WRITE;
/*!40000 ALTER TABLE `exp_grid_columns` DISABLE KEYS */;

INSERT INTO `exp_grid_columns` (`col_id`, `field_id`, `content_type`, `col_order`, `col_type`, `col_label`, `col_name`, `col_instructions`, `col_required`, `col_search`, `col_width`, `col_settings`)
VALUES
	(1,1,'channel',0,'text','Title','login_employee_title','','y','n',50,'{\"field_fmt\":\"none\",\"field_content_type\":\"all\",\"field_text_direction\":\"ltr\",\"field_maxl\":\"256\",\"field_required\":\"y\"}'),
	(2,1,'channel',1,'text','URL','login_employee_url','','y','n',50,'{\"field_fmt\":\"none\",\"field_content_type\":\"all\",\"field_text_direction\":\"ltr\",\"field_maxl\":\"256\",\"field_required\":\"y\"}'),
	(3,2,'channel',0,'text','Title','login_employer_title','','y','n',50,'{\"field_fmt\":\"none\",\"field_content_type\":\"all\",\"field_text_direction\":\"ltr\",\"field_maxl\":\"256\",\"field_required\":\"y\"}'),
	(4,2,'channel',1,'text','URL','login_employer_url','','y','n',50,'{\"field_fmt\":\"none\",\"field_content_type\":\"all\",\"field_text_direction\":\"ltr\",\"field_maxl\":\"256\",\"field_required\":\"y\"}'),
	(5,3,'channel',0,'file','Image','home_hero_image','A size of XXpx W &times; XXpx H is recommended.','n','n',25,'{\"field_content_type\":\"image\",\"allowed_directories\":\"4\",\"show_existing\":\"y\",\"num_existing\":\"50\",\"field_required\":\"n\"}'),
	(6,3,'channel',1,'text','Description','home_hero_description','','n','n',0,'{\"field_fmt\":\"none\",\"field_content_type\":\"all\",\"field_text_direction\":\"ltr\",\"field_maxl\":\"256\",\"field_required\":\"n\"}'),
	(7,6,'channel',0,'file','Image','home_slide_image','A size of XXpx W &times; XXpx H is recommended.','n','n',15,'{\"field_content_type\":\"image\",\"allowed_directories\":\"10\",\"show_existing\":\"y\",\"num_existing\":\"50\",\"field_required\":\"n\"}'),
	(8,6,'channel',1,'text','Headline','home_slide_headline','','n','n',0,'{\"field_fmt\":\"none\",\"field_content_type\":\"all\",\"field_text_direction\":\"ltr\",\"field_maxl\":\"256\",\"field_required\":\"n\"}'),
	(9,9,'channel',0,'text','Title','home_employees_tab_button_title','','n','n',50,'{\"field_fmt\":\"none\",\"field_content_type\":\"all\",\"field_text_direction\":\"ltr\",\"field_maxl\":\"256\",\"field_required\":\"n\"}'),
	(10,9,'channel',1,'text','URL','home_employees_tab_button_url','','n','n',50,'{\"field_fmt\":\"none\",\"field_content_type\":\"all\",\"field_text_direction\":\"ltr\",\"field_maxl\":\"256\",\"field_required\":\"n\"}'),
	(11,10,'channel',0,'text','Type','home_employees_tab_contact_type','','n','n',75,'{\"field_fmt\":\"none\",\"field_content_type\":\"all\",\"field_text_direction\":\"ltr\",\"field_maxl\":\"256\",\"field_required\":\"n\"}'),
	(13,10,'channel',1,'text','Phone Number','home_employees_tab_contact_tel','','n','n',25,'{\"field_fmt\":\"none\",\"field_content_type\":\"all\",\"field_text_direction\":\"ltr\",\"field_maxl\":\"256\",\"field_required\":\"n\"}'),
	(14,13,'channel',0,'text','Title','home_employers_tab_button_title','','n','n',50,'{\"field_fmt\":\"none\",\"field_content_type\":\"all\",\"field_text_direction\":\"ltr\",\"field_maxl\":\"256\",\"field_required\":\"n\"}'),
	(15,13,'channel',1,'text','URL','home_employers_tab_button_url','','n','n',50,'{\"field_fmt\":\"none\",\"field_content_type\":\"all\",\"field_text_direction\":\"ltr\",\"field_maxl\":\"256\",\"field_required\":\"n\"}'),
	(16,14,'channel',0,'text','Type','home_employers_tab_contact_type','','n','n',75,'{\"field_fmt\":\"none\",\"field_content_type\":\"all\",\"field_text_direction\":\"ltr\",\"field_maxl\":\"256\",\"field_required\":\"n\"}'),
	(34,86,'channel',1,'text','URL','client_button_url','','n','n',0,'{\"field_fmt\":\"none\",\"field_content_type\":\"all\",\"field_text_direction\":\"ltr\",\"field_maxl\":\"256\",\"field_required\":\"n\"}'),
	(18,14,'channel',1,'text','Phone Number','home_employers_tab_contact_tel','','n','n',25,'{\"field_fmt\":\"none\",\"field_content_type\":\"all\",\"field_text_direction\":\"ltr\",\"field_maxl\":\"256\",\"field_required\":\"n\"}'),
	(33,86,'channel',0,'text','Title','client_button_title','','n','n',25,'{\"field_fmt\":\"none\",\"field_content_type\":\"all\",\"field_text_direction\":\"ltr\",\"field_maxl\":\"256\",\"field_required\":\"n\"}'),
	(19,63,'channel',0,'text','Title','contact_contact_title','','n','n',50,'{\"field_fmt\":\"none\",\"field_content_type\":\"all\",\"field_text_direction\":\"ltr\",\"field_maxl\":\"256\",\"field_required\":\"n\"}'),
	(20,63,'channel',1,'wygwam','Content','contact_contact_content','','n','n',50,'{\"config\":\"1\",\"defer\":\"n\",\"field_required\":\"n\"}'),
	(36,87,'channel',1,'wygwam','Content','client_section_content','','n','n',0,'{\"convert\":\"\",\"config\":\"2\",\"defer\":\"n\",\"field_required\":\"n\"}'),
	(35,87,'channel',0,'text','Title','client_section_title','','n','n',25,'{\"field_fmt\":\"none\",\"field_content_type\":\"all\",\"field_text_direction\":\"ltr\",\"field_maxl\":\"256\",\"field_required\":\"n\"}'),
	(28,6,'channel',2,'wygwam','Description','home_slide_description','','n','n',0,'{\"config\":\"1\",\"defer\":\"n\",\"field_required\":\"n\"}'),
	(29,6,'channel',3,'text','Button One Title','home_slide_button_one_title','','n','n',0,'{\"field_fmt\":\"none\",\"field_content_type\":\"all\",\"field_text_direction\":\"ltr\",\"field_maxl\":\"256\",\"field_required\":\"n\"}'),
	(30,6,'channel',4,'text','Button One URL','home_slide_button_one_url','','n','n',0,'{\"field_fmt\":\"none\",\"field_content_type\":\"all\",\"field_text_direction\":\"ltr\",\"field_maxl\":\"256\",\"field_required\":\"n\"}'),
	(31,6,'channel',5,'text','Button Two Title','home_slide_button_two_title','','n','n',0,'{\"field_fmt\":\"none\",\"field_content_type\":\"all\",\"field_text_direction\":\"ltr\",\"field_maxl\":\"256\",\"field_required\":\"n\"}'),
	(32,6,'channel',6,'text','Button Two URL','home_slide_button_two_url','','n','n',0,'{\"field_fmt\":\"none\",\"field_content_type\":\"all\",\"field_text_direction\":\"ltr\",\"field_maxl\":\"256\",\"field_required\":\"n\"}');

/*!40000 ALTER TABLE `exp_grid_columns` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table exp_html_buttons
# ------------------------------------------------------------

DROP TABLE IF EXISTS `exp_html_buttons`;

CREATE TABLE `exp_html_buttons` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `site_id` int(4) unsigned NOT NULL DEFAULT '1',
  `member_id` int(10) NOT NULL DEFAULT '0',
  `tag_name` varchar(32) NOT NULL,
  `tag_open` varchar(120) NOT NULL,
  `tag_close` varchar(120) NOT NULL,
  `accesskey` varchar(32) NOT NULL,
  `tag_order` int(3) unsigned NOT NULL,
  `tag_row` char(1) NOT NULL DEFAULT '1',
  `classname` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `site_id` (`site_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `exp_html_buttons` WRITE;
/*!40000 ALTER TABLE `exp_html_buttons` DISABLE KEYS */;

INSERT INTO `exp_html_buttons` (`id`, `site_id`, `member_id`, `tag_name`, `tag_open`, `tag_close`, `accesskey`, `tag_order`, `tag_row`, `classname`)
VALUES
	(1,1,0,'b','<strong>','</strong>','b',1,'1','btn_b'),
	(2,1,0,'i','<em>','</em>','i',2,'1','btn_i'),
	(3,1,0,'blockquote','<blockquote>','</blockquote>','q',3,'1','btn_blockquote'),
	(4,1,0,'a','<a href=\"[![Link:!:http://]!]\"(!( title=\"[![Title]!]\")!)>','</a>','a',4,'1','btn_a'),
	(5,1,0,'img','<img src=\"[![Link:!:http://]!]\" alt=\"[![Alternative text]!]\" />','','',5,'1','btn_img');

/*!40000 ALTER TABLE `exp_html_buttons` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table exp_layout_publish
# ------------------------------------------------------------

DROP TABLE IF EXISTS `exp_layout_publish`;

CREATE TABLE `exp_layout_publish` (
  `layout_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `site_id` int(4) unsigned NOT NULL DEFAULT '1',
  `member_group` int(4) unsigned NOT NULL DEFAULT '0',
  `channel_id` int(4) unsigned NOT NULL DEFAULT '0',
  `field_layout` text,
  PRIMARY KEY (`layout_id`),
  KEY `site_id` (`site_id`),
  KEY `member_group` (`member_group`),
  KEY `channel_id` (`channel_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `exp_layout_publish` WRITE;
/*!40000 ALTER TABLE `exp_layout_publish` DISABLE KEYS */;

INSERT INTO `exp_layout_publish` (`layout_id`, `site_id`, `member_group`, `channel_id`, `field_layout`)
VALUES
	(1,1,1,1,'a:3:{s:7:\"publish\";a:9:{s:10:\"_tab_label\";s:7:\"publish\";s:5:\"title\";a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}s:9:\"url_title\";a:4:{s:7:\"visible\";b:0;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}i:1;a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}i:2;a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}s:8:\"category\";a:4:{s:7:\"visible\";b:0;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}s:24:\"seo_lite__seo_lite_title\";a:4:{s:7:\"visible\";b:0;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}s:27:\"seo_lite__seo_lite_keywords\";a:4:{s:7:\"visible\";b:0;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:3:\"10%\";}s:30:\"seo_lite__seo_lite_description\";a:4:{s:7:\"visible\";b:0;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:3:\"10%\";}}s:4:\"date\";a:3:{s:10:\"_tab_label\";s:4:\"date\";s:10:\"entry_date\";a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}s:15:\"expiration_date\";a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}}s:7:\"options\";a:5:{s:10:\"_tab_label\";s:7:\"options\";s:11:\"new_channel\";a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}s:6:\"status\";a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}s:6:\"author\";a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}s:7:\"options\";a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}}}'),
	(2,1,1,2,'a:4:{s:7:\"publish\";a:21:{s:10:\"_tab_label\";s:7:\"publish\";s:5:\"title\";a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}s:9:\"url_title\";a:4:{s:7:\"visible\";b:0;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}i:3;a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}i:4;a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}i:5;a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}i:6;a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:0;s:5:\"width\";s:4:\"100%\";}i:7;a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}i:8;a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}i:9;a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:0;s:5:\"width\";s:4:\"100%\";}i:10;a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:0;s:5:\"width\";s:4:\"100%\";}i:11;a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:0;s:5:\"width\";s:4:\"100%\";}i:12;a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:0;s:5:\"width\";s:4:\"100%\";}i:13;a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:0;s:5:\"width\";s:4:\"100%\";}i:14;a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:0;s:5:\"width\";s:4:\"100%\";}i:15;a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}i:16;a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}i:17;a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}i:18;a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}i:19;a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}s:8:\"category\";a:4:{s:7:\"visible\";b:0;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}}s:4:\"date\";a:3:{s:10:\"_tab_label\";s:4:\"date\";s:10:\"entry_date\";a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}s:15:\"expiration_date\";a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}}s:7:\"options\";a:5:{s:10:\"_tab_label\";s:7:\"options\";s:11:\"new_channel\";a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}s:6:\"status\";a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}s:6:\"author\";a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}s:7:\"options\";a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}}s:8:\"seo_lite\";a:4:{s:10:\"_tab_label\";s:8:\"SEO Lite\";s:24:\"seo_lite__seo_lite_title\";a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}s:27:\"seo_lite__seo_lite_keywords\";a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}s:30:\"seo_lite__seo_lite_description\";a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}}}'),
	(3,1,1,18,'a:6:{s:7:\"publish\";a:5:{s:10:\"_tab_label\";s:7:\"publish\";s:5:\"title\";a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}s:9:\"url_title\";a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}i:70;a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}i:47;a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}}s:4:\"date\";a:3:{s:10:\"_tab_label\";s:4:\"date\";s:10:\"entry_date\";a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}s:15:\"expiration_date\";a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}}s:10:\"categories\";a:2:{s:10:\"_tab_label\";s:10:\"categories\";s:8:\"category\";a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}}s:7:\"options\";a:5:{s:10:\"_tab_label\";s:7:\"options\";s:11:\"new_channel\";a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}s:6:\"status\";a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}s:6:\"author\";a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}s:7:\"options\";a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}}s:8:\"seo_lite\";a:4:{s:10:\"_tab_label\";s:8:\"SEO Lite\";s:24:\"seo_lite__seo_lite_title\";a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}s:27:\"seo_lite__seo_lite_keywords\";a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}s:30:\"seo_lite__seo_lite_description\";a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}}s:9:\"structure\";a:6:{s:10:\"_tab_label\";s:9:\"Structure\";s:20:\"structure__parent_id\";a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}s:14:\"structure__uri\";a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}s:22:\"structure__template_id\";a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}s:17:\"structure__hidden\";a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}s:26:\"structure__listing_channel\";a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}}}'),
	(4,1,1,29,'a:6:{s:7:\"publish\";a:7:{s:10:\"_tab_label\";s:7:\"publish\";s:5:\"title\";a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}s:9:\"url_title\";a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}i:76;a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}i:77;a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}i:79;a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:0;s:5:\"width\";s:4:\"100%\";}i:78;a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}}s:4:\"date\";a:3:{s:10:\"_tab_label\";s:4:\"date\";s:10:\"entry_date\";a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}s:15:\"expiration_date\";a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}}s:10:\"categories\";a:2:{s:10:\"_tab_label\";s:10:\"categories\";s:8:\"category\";a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}}s:7:\"options\";a:5:{s:10:\"_tab_label\";s:7:\"options\";s:11:\"new_channel\";a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}s:6:\"status\";a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}s:6:\"author\";a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}s:7:\"options\";a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}}s:8:\"seo_lite\";a:4:{s:10:\"_tab_label\";s:8:\"SEO Lite\";s:24:\"seo_lite__seo_lite_title\";a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}s:27:\"seo_lite__seo_lite_keywords\";a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}s:30:\"seo_lite__seo_lite_description\";a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}}s:9:\"structure\";a:6:{s:10:\"_tab_label\";s:9:\"Structure\";s:20:\"structure__parent_id\";a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}s:14:\"structure__uri\";a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}s:22:\"structure__template_id\";a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}s:17:\"structure__hidden\";a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}s:26:\"structure__listing_channel\";a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}}}'),
	(5,1,1,5,'a:6:{s:7:\"publish\";a:5:{s:10:\"_tab_label\";s:7:\"publish\";s:5:\"title\";a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}s:9:\"url_title\";a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}i:80;a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}i:24;a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}}s:4:\"date\";a:3:{s:10:\"_tab_label\";s:4:\"date\";s:10:\"entry_date\";a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}s:15:\"expiration_date\";a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}}s:10:\"categories\";a:2:{s:10:\"_tab_label\";s:10:\"categories\";s:8:\"category\";a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}}s:7:\"options\";a:5:{s:10:\"_tab_label\";s:7:\"options\";s:11:\"new_channel\";a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}s:6:\"status\";a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}s:6:\"author\";a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}s:7:\"options\";a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}}s:8:\"seo_lite\";a:4:{s:10:\"_tab_label\";s:8:\"SEO Lite\";s:24:\"seo_lite__seo_lite_title\";a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}s:27:\"seo_lite__seo_lite_keywords\";a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}s:30:\"seo_lite__seo_lite_description\";a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}}s:9:\"structure\";a:6:{s:10:\"_tab_label\";s:9:\"Structure\";s:20:\"structure__parent_id\";a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}s:14:\"structure__uri\";a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}s:22:\"structure__template_id\";a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}s:17:\"structure__hidden\";a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}s:26:\"structure__listing_channel\";a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}}}'),
	(7,1,1,3,'a:6:{s:7:\"publish\";a:8:{s:10:\"_tab_label\";s:7:\"publish\";s:5:\"title\";a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}s:9:\"url_title\";a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}i:20;a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}i:21;a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}i:81;a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:1;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}i:82;a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:1;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}i:22;a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}}s:4:\"date\";a:3:{s:10:\"_tab_label\";s:4:\"date\";s:10:\"entry_date\";a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}s:15:\"expiration_date\";a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}}s:10:\"categories\";a:2:{s:10:\"_tab_label\";s:10:\"categories\";s:8:\"category\";a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}}s:7:\"options\";a:5:{s:10:\"_tab_label\";s:7:\"options\";s:11:\"new_channel\";a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}s:6:\"status\";a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}s:6:\"author\";a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}s:7:\"options\";a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}}s:8:\"seo_lite\";a:4:{s:10:\"_tab_label\";s:8:\"SEO Lite\";s:24:\"seo_lite__seo_lite_title\";a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}s:27:\"seo_lite__seo_lite_keywords\";a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}s:30:\"seo_lite__seo_lite_description\";a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}}s:9:\"structure\";a:6:{s:10:\"_tab_label\";s:9:\"Structure\";s:20:\"structure__parent_id\";a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}s:14:\"structure__uri\";a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}s:22:\"structure__template_id\";a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}s:17:\"structure__hidden\";a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}s:26:\"structure__listing_channel\";a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}}}'),
	(9,1,1,31,'a:5:{s:7:\"publish\";a:7:{s:10:\"_tab_label\";s:7:\"publish\";s:5:\"title\";a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}s:9:\"url_title\";a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}i:83;a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}i:84;a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}s:10:\"entry_date\";a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}s:15:\"expiration_date\";a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}}s:4:\"date\";a:1:{s:10:\"_tab_label\";s:4:\"date\";}s:10:\"categories\";a:2:{s:10:\"_tab_label\";s:10:\"categories\";s:8:\"category\";a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}}s:7:\"options\";a:5:{s:10:\"_tab_label\";s:7:\"options\";s:11:\"new_channel\";a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}s:6:\"status\";a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}s:6:\"author\";a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}s:7:\"options\";a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}}s:8:\"seo_lite\";a:4:{s:10:\"_tab_label\";s:8:\"SEO Lite\";s:24:\"seo_lite__seo_lite_title\";a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}s:27:\"seo_lite__seo_lite_keywords\";a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}s:30:\"seo_lite__seo_lite_description\";a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}}}');

/*!40000 ALTER TABLE `exp_layout_publish` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table exp_member_bulletin_board
# ------------------------------------------------------------

DROP TABLE IF EXISTS `exp_member_bulletin_board`;

CREATE TABLE `exp_member_bulletin_board` (
  `bulletin_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sender_id` int(10) unsigned NOT NULL,
  `bulletin_group` int(8) unsigned NOT NULL,
  `bulletin_date` int(10) unsigned NOT NULL,
  `hash` varchar(10) NOT NULL DEFAULT '',
  `bulletin_expires` int(10) unsigned NOT NULL DEFAULT '0',
  `bulletin_message` text NOT NULL,
  PRIMARY KEY (`bulletin_id`),
  KEY `sender_id` (`sender_id`),
  KEY `hash` (`hash`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table exp_member_data
# ------------------------------------------------------------

DROP TABLE IF EXISTS `exp_member_data`;

CREATE TABLE `exp_member_data` (
  `member_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`member_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `exp_member_data` WRITE;
/*!40000 ALTER TABLE `exp_member_data` DISABLE KEYS */;

INSERT INTO `exp_member_data` (`member_id`)
VALUES
	(1);

/*!40000 ALTER TABLE `exp_member_data` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table exp_member_fields
# ------------------------------------------------------------

DROP TABLE IF EXISTS `exp_member_fields`;

CREATE TABLE `exp_member_fields` (
  `m_field_id` int(4) unsigned NOT NULL AUTO_INCREMENT,
  `m_field_name` varchar(32) NOT NULL,
  `m_field_label` varchar(50) NOT NULL,
  `m_field_description` text NOT NULL,
  `m_field_type` varchar(12) NOT NULL DEFAULT 'text',
  `m_field_list_items` text NOT NULL,
  `m_field_ta_rows` tinyint(2) DEFAULT '8',
  `m_field_maxl` smallint(3) NOT NULL,
  `m_field_width` varchar(6) NOT NULL,
  `m_field_search` char(1) NOT NULL DEFAULT 'y',
  `m_field_required` char(1) NOT NULL DEFAULT 'n',
  `m_field_public` char(1) NOT NULL DEFAULT 'y',
  `m_field_reg` char(1) NOT NULL DEFAULT 'n',
  `m_field_cp_reg` char(1) NOT NULL DEFAULT 'n',
  `m_field_fmt` char(5) NOT NULL DEFAULT 'none',
  `m_field_order` int(3) unsigned NOT NULL,
  PRIMARY KEY (`m_field_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table exp_member_groups
# ------------------------------------------------------------

DROP TABLE IF EXISTS `exp_member_groups`;

CREATE TABLE `exp_member_groups` (
  `group_id` smallint(4) unsigned NOT NULL,
  `site_id` int(4) unsigned NOT NULL DEFAULT '1',
  `group_title` varchar(100) NOT NULL,
  `group_description` text NOT NULL,
  `is_locked` char(1) NOT NULL DEFAULT 'y',
  `can_view_offline_system` char(1) NOT NULL DEFAULT 'n',
  `can_view_online_system` char(1) NOT NULL DEFAULT 'y',
  `can_access_cp` char(1) NOT NULL DEFAULT 'y',
  `can_access_content` char(1) NOT NULL DEFAULT 'n',
  `can_access_publish` char(1) NOT NULL DEFAULT 'n',
  `can_access_edit` char(1) NOT NULL DEFAULT 'n',
  `can_access_files` char(1) NOT NULL DEFAULT 'n',
  `can_access_fieldtypes` char(1) NOT NULL DEFAULT 'n',
  `can_access_design` char(1) NOT NULL DEFAULT 'n',
  `can_access_addons` char(1) NOT NULL DEFAULT 'n',
  `can_access_modules` char(1) NOT NULL DEFAULT 'n',
  `can_access_extensions` char(1) NOT NULL DEFAULT 'n',
  `can_access_accessories` char(1) NOT NULL DEFAULT 'n',
  `can_access_plugins` char(1) NOT NULL DEFAULT 'n',
  `can_access_members` char(1) NOT NULL DEFAULT 'n',
  `can_access_admin` char(1) NOT NULL DEFAULT 'n',
  `can_access_sys_prefs` char(1) NOT NULL DEFAULT 'n',
  `can_access_content_prefs` char(1) NOT NULL DEFAULT 'n',
  `can_access_tools` char(1) NOT NULL DEFAULT 'n',
  `can_access_comm` char(1) NOT NULL DEFAULT 'n',
  `can_access_utilities` char(1) NOT NULL DEFAULT 'n',
  `can_access_data` char(1) NOT NULL DEFAULT 'n',
  `can_access_logs` char(1) NOT NULL DEFAULT 'n',
  `can_admin_channels` char(1) NOT NULL DEFAULT 'n',
  `can_admin_upload_prefs` char(1) NOT NULL DEFAULT 'n',
  `can_admin_design` char(1) NOT NULL DEFAULT 'n',
  `can_admin_members` char(1) NOT NULL DEFAULT 'n',
  `can_delete_members` char(1) NOT NULL DEFAULT 'n',
  `can_admin_mbr_groups` char(1) NOT NULL DEFAULT 'n',
  `can_admin_mbr_templates` char(1) NOT NULL DEFAULT 'n',
  `can_ban_users` char(1) NOT NULL DEFAULT 'n',
  `can_admin_modules` char(1) NOT NULL DEFAULT 'n',
  `can_admin_templates` char(1) NOT NULL DEFAULT 'n',
  `can_edit_categories` char(1) NOT NULL DEFAULT 'n',
  `can_delete_categories` char(1) NOT NULL DEFAULT 'n',
  `can_view_other_entries` char(1) NOT NULL DEFAULT 'n',
  `can_edit_other_entries` char(1) NOT NULL DEFAULT 'n',
  `can_assign_post_authors` char(1) NOT NULL DEFAULT 'n',
  `can_delete_self_entries` char(1) NOT NULL DEFAULT 'n',
  `can_delete_all_entries` char(1) NOT NULL DEFAULT 'n',
  `can_view_other_comments` char(1) NOT NULL DEFAULT 'n',
  `can_edit_own_comments` char(1) NOT NULL DEFAULT 'n',
  `can_delete_own_comments` char(1) NOT NULL DEFAULT 'n',
  `can_edit_all_comments` char(1) NOT NULL DEFAULT 'n',
  `can_delete_all_comments` char(1) NOT NULL DEFAULT 'n',
  `can_moderate_comments` char(1) NOT NULL DEFAULT 'n',
  `can_send_email` char(1) NOT NULL DEFAULT 'n',
  `can_send_cached_email` char(1) NOT NULL DEFAULT 'n',
  `can_email_member_groups` char(1) NOT NULL DEFAULT 'n',
  `can_email_mailinglist` char(1) NOT NULL DEFAULT 'n',
  `can_email_from_profile` char(1) NOT NULL DEFAULT 'n',
  `can_view_profiles` char(1) NOT NULL DEFAULT 'n',
  `can_edit_html_buttons` char(1) NOT NULL DEFAULT 'n',
  `can_delete_self` char(1) NOT NULL DEFAULT 'n',
  `mbr_delete_notify_emails` varchar(255) DEFAULT NULL,
  `can_post_comments` char(1) NOT NULL DEFAULT 'n',
  `exclude_from_moderation` char(1) NOT NULL DEFAULT 'n',
  `can_search` char(1) NOT NULL DEFAULT 'n',
  `search_flood_control` mediumint(5) unsigned NOT NULL,
  `can_send_private_messages` char(1) NOT NULL DEFAULT 'n',
  `prv_msg_send_limit` smallint(5) unsigned NOT NULL DEFAULT '20',
  `prv_msg_storage_limit` smallint(5) unsigned NOT NULL DEFAULT '60',
  `can_attach_in_private_messages` char(1) NOT NULL DEFAULT 'n',
  `can_send_bulletins` char(1) NOT NULL DEFAULT 'n',
  `include_in_authorlist` char(1) NOT NULL DEFAULT 'n',
  `include_in_memberlist` char(1) NOT NULL DEFAULT 'y',
  `include_in_mailinglists` char(1) NOT NULL DEFAULT 'y',
  PRIMARY KEY (`group_id`,`site_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `exp_member_groups` WRITE;
/*!40000 ALTER TABLE `exp_member_groups` DISABLE KEYS */;

INSERT INTO `exp_member_groups` (`group_id`, `site_id`, `group_title`, `group_description`, `is_locked`, `can_view_offline_system`, `can_view_online_system`, `can_access_cp`, `can_access_content`, `can_access_publish`, `can_access_edit`, `can_access_files`, `can_access_fieldtypes`, `can_access_design`, `can_access_addons`, `can_access_modules`, `can_access_extensions`, `can_access_accessories`, `can_access_plugins`, `can_access_members`, `can_access_admin`, `can_access_sys_prefs`, `can_access_content_prefs`, `can_access_tools`, `can_access_comm`, `can_access_utilities`, `can_access_data`, `can_access_logs`, `can_admin_channels`, `can_admin_upload_prefs`, `can_admin_design`, `can_admin_members`, `can_delete_members`, `can_admin_mbr_groups`, `can_admin_mbr_templates`, `can_ban_users`, `can_admin_modules`, `can_admin_templates`, `can_edit_categories`, `can_delete_categories`, `can_view_other_entries`, `can_edit_other_entries`, `can_assign_post_authors`, `can_delete_self_entries`, `can_delete_all_entries`, `can_view_other_comments`, `can_edit_own_comments`, `can_delete_own_comments`, `can_edit_all_comments`, `can_delete_all_comments`, `can_moderate_comments`, `can_send_email`, `can_send_cached_email`, `can_email_member_groups`, `can_email_mailinglist`, `can_email_from_profile`, `can_view_profiles`, `can_edit_html_buttons`, `can_delete_self`, `mbr_delete_notify_emails`, `can_post_comments`, `exclude_from_moderation`, `can_search`, `search_flood_control`, `can_send_private_messages`, `prv_msg_send_limit`, `prv_msg_storage_limit`, `can_attach_in_private_messages`, `can_send_bulletins`, `include_in_authorlist`, `include_in_memberlist`, `include_in_mailinglists`)
VALUES
	(1,1,'Super Admins','','y','y','y','y','y','y','y','y','y','y','y','y','y','y','y','y','y','y','y','y','y','y','y','y','y','y','y','y','y','y','y','y','y','y','y','y','y','y','y','y','y','y','y','y','y','y','y','y','y','y','y','y','y','y','y','','y','y','y',0,'y',20,60,'y','y','y','y','y'),
	(2,1,'Banned','','y','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','','n','n','n',60,'n',20,60,'n','n','n','n','n'),
	(3,1,'Guests','','y','n','y','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','y','n','n','n','n','','y','n','y',15,'n',20,60,'n','n','n','n','n'),
	(4,1,'Pending','','y','n','y','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','y','n','n','n','n','','y','n','y',15,'n',20,60,'n','n','n','n','n'),
	(5,1,'Members','','y','n','y','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','y','y','y','n','','y','n','y',10,'y',20,60,'y','n','n','y','y');

/*!40000 ALTER TABLE `exp_member_groups` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table exp_member_homepage
# ------------------------------------------------------------

DROP TABLE IF EXISTS `exp_member_homepage`;

CREATE TABLE `exp_member_homepage` (
  `member_id` int(10) unsigned NOT NULL,
  `recent_entries` char(1) NOT NULL DEFAULT 'l',
  `recent_entries_order` int(3) unsigned NOT NULL DEFAULT '0',
  `recent_comments` char(1) NOT NULL DEFAULT 'l',
  `recent_comments_order` int(3) unsigned NOT NULL DEFAULT '0',
  `recent_members` char(1) NOT NULL DEFAULT 'n',
  `recent_members_order` int(3) unsigned NOT NULL DEFAULT '0',
  `site_statistics` char(1) NOT NULL DEFAULT 'r',
  `site_statistics_order` int(3) unsigned NOT NULL DEFAULT '0',
  `member_search_form` char(1) NOT NULL DEFAULT 'n',
  `member_search_form_order` int(3) unsigned NOT NULL DEFAULT '0',
  `notepad` char(1) NOT NULL DEFAULT 'r',
  `notepad_order` int(3) unsigned NOT NULL DEFAULT '0',
  `bulletin_board` char(1) NOT NULL DEFAULT 'r',
  `bulletin_board_order` int(3) unsigned NOT NULL DEFAULT '0',
  `pmachine_news_feed` char(1) NOT NULL DEFAULT 'n',
  `pmachine_news_feed_order` int(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`member_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `exp_member_homepage` WRITE;
/*!40000 ALTER TABLE `exp_member_homepage` DISABLE KEYS */;

INSERT INTO `exp_member_homepage` (`member_id`, `recent_entries`, `recent_entries_order`, `recent_comments`, `recent_comments_order`, `recent_members`, `recent_members_order`, `site_statistics`, `site_statistics_order`, `member_search_form`, `member_search_form_order`, `notepad`, `notepad_order`, `bulletin_board`, `bulletin_board_order`, `pmachine_news_feed`, `pmachine_news_feed_order`)
VALUES
	(1,'l',1,'l',2,'n',0,'r',1,'n',0,'r',2,'r',0,'l',0);

/*!40000 ALTER TABLE `exp_member_homepage` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table exp_member_search
# ------------------------------------------------------------

DROP TABLE IF EXISTS `exp_member_search`;

CREATE TABLE `exp_member_search` (
  `search_id` varchar(32) NOT NULL,
  `site_id` int(4) unsigned NOT NULL DEFAULT '1',
  `search_date` int(10) unsigned NOT NULL,
  `keywords` varchar(200) NOT NULL,
  `fields` varchar(200) NOT NULL,
  `member_id` int(10) unsigned NOT NULL,
  `ip_address` varchar(45) NOT NULL DEFAULT '0',
  `total_results` int(8) unsigned NOT NULL,
  `query` text NOT NULL,
  PRIMARY KEY (`search_id`),
  KEY `member_id` (`member_id`),
  KEY `site_id` (`site_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table exp_members
# ------------------------------------------------------------

DROP TABLE IF EXISTS `exp_members`;

CREATE TABLE `exp_members` (
  `member_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `group_id` smallint(4) NOT NULL DEFAULT '0',
  `username` varchar(50) NOT NULL,
  `screen_name` varchar(50) NOT NULL,
  `password` varchar(128) NOT NULL,
  `salt` varchar(128) NOT NULL DEFAULT '',
  `unique_id` varchar(40) NOT NULL,
  `crypt_key` varchar(40) DEFAULT NULL,
  `authcode` varchar(10) DEFAULT NULL,
  `email` varchar(75) NOT NULL,
  `url` varchar(150) DEFAULT NULL,
  `location` varchar(50) DEFAULT NULL,
  `occupation` varchar(80) DEFAULT NULL,
  `interests` varchar(120) DEFAULT NULL,
  `bday_d` int(2) DEFAULT NULL,
  `bday_m` int(2) DEFAULT NULL,
  `bday_y` int(4) DEFAULT NULL,
  `aol_im` varchar(50) DEFAULT NULL,
  `yahoo_im` varchar(50) DEFAULT NULL,
  `msn_im` varchar(50) DEFAULT NULL,
  `icq` varchar(50) DEFAULT NULL,
  `bio` text,
  `signature` text,
  `avatar_filename` varchar(120) DEFAULT NULL,
  `avatar_width` int(4) unsigned DEFAULT NULL,
  `avatar_height` int(4) unsigned DEFAULT NULL,
  `photo_filename` varchar(120) DEFAULT NULL,
  `photo_width` int(4) unsigned DEFAULT NULL,
  `photo_height` int(4) unsigned DEFAULT NULL,
  `sig_img_filename` varchar(120) DEFAULT NULL,
  `sig_img_width` int(4) unsigned DEFAULT NULL,
  `sig_img_height` int(4) unsigned DEFAULT NULL,
  `ignore_list` text,
  `private_messages` int(4) unsigned NOT NULL DEFAULT '0',
  `accept_messages` char(1) NOT NULL DEFAULT 'y',
  `last_view_bulletins` int(10) NOT NULL DEFAULT '0',
  `last_bulletin_date` int(10) NOT NULL DEFAULT '0',
  `ip_address` varchar(45) NOT NULL DEFAULT '0',
  `join_date` int(10) unsigned NOT NULL DEFAULT '0',
  `last_visit` int(10) unsigned NOT NULL DEFAULT '0',
  `last_activity` int(10) unsigned NOT NULL DEFAULT '0',
  `total_entries` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `total_comments` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `total_forum_topics` mediumint(8) NOT NULL DEFAULT '0',
  `total_forum_posts` mediumint(8) NOT NULL DEFAULT '0',
  `last_entry_date` int(10) unsigned NOT NULL DEFAULT '0',
  `last_comment_date` int(10) unsigned NOT NULL DEFAULT '0',
  `last_forum_post_date` int(10) unsigned NOT NULL DEFAULT '0',
  `last_email_date` int(10) unsigned NOT NULL DEFAULT '0',
  `in_authorlist` char(1) NOT NULL DEFAULT 'n',
  `accept_admin_email` char(1) NOT NULL DEFAULT 'y',
  `accept_user_email` char(1) NOT NULL DEFAULT 'y',
  `notify_by_default` char(1) NOT NULL DEFAULT 'y',
  `notify_of_pm` char(1) NOT NULL DEFAULT 'y',
  `display_avatars` char(1) NOT NULL DEFAULT 'y',
  `display_signatures` char(1) NOT NULL DEFAULT 'y',
  `parse_smileys` char(1) NOT NULL DEFAULT 'y',
  `smart_notifications` char(1) NOT NULL DEFAULT 'y',
  `language` varchar(50) NOT NULL,
  `timezone` varchar(50) NOT NULL,
  `time_format` char(2) NOT NULL DEFAULT '12',
  `date_format` varchar(8) NOT NULL DEFAULT '%n/%j/%Y',
  `include_seconds` char(1) NOT NULL DEFAULT 'n',
  `cp_theme` varchar(32) DEFAULT NULL,
  `profile_theme` varchar(32) DEFAULT NULL,
  `forum_theme` varchar(32) DEFAULT NULL,
  `tracker` text,
  `template_size` varchar(2) NOT NULL DEFAULT '28',
  `notepad` text,
  `notepad_size` varchar(2) NOT NULL DEFAULT '18',
  `quick_links` text,
  `quick_tabs` text,
  `show_sidebar` char(1) NOT NULL DEFAULT 'n',
  `pmember_id` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`member_id`),
  KEY `group_id` (`group_id`),
  KEY `unique_id` (`unique_id`),
  KEY `password` (`password`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `exp_members` WRITE;
/*!40000 ALTER TABLE `exp_members` DISABLE KEYS */;

INSERT INTO `exp_members` (`member_id`, `group_id`, `username`, `screen_name`, `password`, `salt`, `unique_id`, `crypt_key`, `authcode`, `email`, `url`, `location`, `occupation`, `interests`, `bday_d`, `bday_m`, `bday_y`, `aol_im`, `yahoo_im`, `msn_im`, `icq`, `bio`, `signature`, `avatar_filename`, `avatar_width`, `avatar_height`, `photo_filename`, `photo_width`, `photo_height`, `sig_img_filename`, `sig_img_width`, `sig_img_height`, `ignore_list`, `private_messages`, `accept_messages`, `last_view_bulletins`, `last_bulletin_date`, `ip_address`, `join_date`, `last_visit`, `last_activity`, `total_entries`, `total_comments`, `total_forum_topics`, `total_forum_posts`, `last_entry_date`, `last_comment_date`, `last_forum_post_date`, `last_email_date`, `in_authorlist`, `accept_admin_email`, `accept_user_email`, `notify_by_default`, `notify_of_pm`, `display_avatars`, `display_signatures`, `parse_smileys`, `smart_notifications`, `language`, `timezone`, `time_format`, `date_format`, `include_seconds`, `cp_theme`, `profile_theme`, `forum_theme`, `tracker`, `template_size`, `notepad`, `notepad_size`, `quick_links`, `quick_tabs`, `show_sidebar`, `pmember_id`)
VALUES
	(1,1,'joshua','joshua','30d736c8c0f93ee6efdcc4175280af118e61147d6988dbc51bd085fa4fe87fb4185e96aca2c980b6eed7af5ceef54a54be868332edb9aed32b71afbbd02c9d20','(:M]UR?6tzg!6Nx{8k+xSVvGsb~{P\'(tO\\R4?YCa/T<z>g@OHtcGNL>)33HN6IX-kqp7;sPk,i\"jBF1Q\"K!)jEZK]uQD123i*)$8.)q|\\fTx`_r_+QXR<~W\"fyHYF3cZ','acfa0f92ab379b2f2cca6ab0ae91ff32309e1b4a','eef438b544856c03d830278f28dea664bc529567',NULL,'jlcolema@me.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'y',0,0,'::1',1454366871,1476306692,1476311263,97,0,0,0,1457115633,0,0,0,'n','y','y','y','y','y','y','y','y','english','America/Indiana/Indianapolis','12','%n/%j/%Y','n',NULL,NULL,NULL,NULL,'28',NULL,'18','','Structure|C=addons_modules&M=show_module_cp&module=structure|1\nForms|C=addons_modules&M=show_module_cp&module=freeform|2\nSEO|C=addons_modules&M=show_module_cp&module=seo_lite|3','n',0);

/*!40000 ALTER TABLE `exp_members` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table exp_message_attachments
# ------------------------------------------------------------

DROP TABLE IF EXISTS `exp_message_attachments`;

CREATE TABLE `exp_message_attachments` (
  `attachment_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sender_id` int(10) unsigned NOT NULL DEFAULT '0',
  `message_id` int(10) unsigned NOT NULL DEFAULT '0',
  `attachment_name` varchar(50) NOT NULL DEFAULT '',
  `attachment_hash` varchar(40) NOT NULL DEFAULT '',
  `attachment_extension` varchar(20) NOT NULL DEFAULT '',
  `attachment_location` varchar(150) NOT NULL DEFAULT '',
  `attachment_date` int(10) unsigned NOT NULL DEFAULT '0',
  `attachment_size` int(10) unsigned NOT NULL DEFAULT '0',
  `is_temp` char(1) NOT NULL DEFAULT 'y',
  PRIMARY KEY (`attachment_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table exp_message_copies
# ------------------------------------------------------------

DROP TABLE IF EXISTS `exp_message_copies`;

CREATE TABLE `exp_message_copies` (
  `copy_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `message_id` int(10) unsigned NOT NULL DEFAULT '0',
  `sender_id` int(10) unsigned NOT NULL DEFAULT '0',
  `recipient_id` int(10) unsigned NOT NULL DEFAULT '0',
  `message_received` char(1) NOT NULL DEFAULT 'n',
  `message_read` char(1) NOT NULL DEFAULT 'n',
  `message_time_read` int(10) unsigned NOT NULL DEFAULT '0',
  `attachment_downloaded` char(1) NOT NULL DEFAULT 'n',
  `message_folder` int(10) unsigned NOT NULL DEFAULT '1',
  `message_authcode` varchar(10) NOT NULL DEFAULT '',
  `message_deleted` char(1) NOT NULL DEFAULT 'n',
  `message_status` varchar(10) NOT NULL DEFAULT '',
  PRIMARY KEY (`copy_id`),
  KEY `message_id` (`message_id`),
  KEY `recipient_id` (`recipient_id`),
  KEY `sender_id` (`sender_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table exp_message_data
# ------------------------------------------------------------

DROP TABLE IF EXISTS `exp_message_data`;

CREATE TABLE `exp_message_data` (
  `message_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sender_id` int(10) unsigned NOT NULL DEFAULT '0',
  `message_date` int(10) unsigned NOT NULL DEFAULT '0',
  `message_subject` varchar(255) NOT NULL DEFAULT '',
  `message_body` text NOT NULL,
  `message_tracking` char(1) NOT NULL DEFAULT 'y',
  `message_attachments` char(1) NOT NULL DEFAULT 'n',
  `message_recipients` varchar(200) NOT NULL DEFAULT '',
  `message_cc` varchar(200) NOT NULL DEFAULT '',
  `message_hide_cc` char(1) NOT NULL DEFAULT 'n',
  `message_sent_copy` char(1) NOT NULL DEFAULT 'n',
  `total_recipients` int(5) unsigned NOT NULL DEFAULT '0',
  `message_status` varchar(25) NOT NULL DEFAULT '',
  PRIMARY KEY (`message_id`),
  KEY `sender_id` (`sender_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table exp_message_folders
# ------------------------------------------------------------

DROP TABLE IF EXISTS `exp_message_folders`;

CREATE TABLE `exp_message_folders` (
  `member_id` int(10) unsigned NOT NULL DEFAULT '0',
  `folder1_name` varchar(50) NOT NULL DEFAULT 'InBox',
  `folder2_name` varchar(50) NOT NULL DEFAULT 'Sent',
  `folder3_name` varchar(50) NOT NULL DEFAULT '',
  `folder4_name` varchar(50) NOT NULL DEFAULT '',
  `folder5_name` varchar(50) NOT NULL DEFAULT '',
  `folder6_name` varchar(50) NOT NULL DEFAULT '',
  `folder7_name` varchar(50) NOT NULL DEFAULT '',
  `folder8_name` varchar(50) NOT NULL DEFAULT '',
  `folder9_name` varchar(50) NOT NULL DEFAULT '',
  `folder10_name` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`member_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `exp_message_folders` WRITE;
/*!40000 ALTER TABLE `exp_message_folders` DISABLE KEYS */;

INSERT INTO `exp_message_folders` (`member_id`, `folder1_name`, `folder2_name`, `folder3_name`, `folder4_name`, `folder5_name`, `folder6_name`, `folder7_name`, `folder8_name`, `folder9_name`, `folder10_name`)
VALUES
	(1,'InBox','Sent','','','','','','','','');

/*!40000 ALTER TABLE `exp_message_folders` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table exp_message_listed
# ------------------------------------------------------------

DROP TABLE IF EXISTS `exp_message_listed`;

CREATE TABLE `exp_message_listed` (
  `listed_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `member_id` int(10) unsigned NOT NULL DEFAULT '0',
  `listed_member` int(10) unsigned NOT NULL DEFAULT '0',
  `listed_description` varchar(100) NOT NULL DEFAULT '',
  `listed_type` varchar(10) NOT NULL DEFAULT 'blocked',
  PRIMARY KEY (`listed_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table exp_module_member_groups
# ------------------------------------------------------------

DROP TABLE IF EXISTS `exp_module_member_groups`;

CREATE TABLE `exp_module_member_groups` (
  `group_id` smallint(4) unsigned NOT NULL,
  `module_id` mediumint(5) unsigned NOT NULL,
  PRIMARY KEY (`group_id`,`module_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table exp_modules
# ------------------------------------------------------------

DROP TABLE IF EXISTS `exp_modules`;

CREATE TABLE `exp_modules` (
  `module_id` int(4) unsigned NOT NULL AUTO_INCREMENT,
  `module_name` varchar(50) NOT NULL,
  `module_version` varchar(12) NOT NULL,
  `has_cp_backend` char(1) NOT NULL DEFAULT 'n',
  `has_publish_fields` char(1) NOT NULL DEFAULT 'n',
  PRIMARY KEY (`module_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `exp_modules` WRITE;
/*!40000 ALTER TABLE `exp_modules` DISABLE KEYS */;

INSERT INTO `exp_modules` (`module_id`, `module_name`, `module_version`, `has_cp_backend`, `has_publish_fields`)
VALUES
	(11,'Deeploy_helper','2.2.0','y','n'),
	(2,'Email','2.0','n','n'),
	(13,'Safeharbor_lite','1.0.2','y','n'),
	(4,'Jquery','1.0','n','n'),
	(5,'Rss','2.0','n','n'),
	(6,'Search','2.2.2','n','n'),
	(7,'Channel','2.0.1','n','n'),
	(8,'Member','2.1','n','n'),
	(9,'Stats','2.0','n','n'),
	(12,'Freeform','4.2.4','y','n'),
	(14,'Seo_lite','1.4.10','y','y'),
	(15,'Structure','3.3.17','y','y'),
	(16,'Wygwam','3.3.3','y','n'),
	(17,'Zoo_triggers','1.2.5','y','n');

/*!40000 ALTER TABLE `exp_modules` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table exp_online_users
# ------------------------------------------------------------

DROP TABLE IF EXISTS `exp_online_users`;

CREATE TABLE `exp_online_users` (
  `online_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `site_id` int(4) unsigned NOT NULL DEFAULT '1',
  `member_id` int(10) NOT NULL DEFAULT '0',
  `in_forum` char(1) NOT NULL DEFAULT 'n',
  `name` varchar(50) NOT NULL DEFAULT '0',
  `ip_address` varchar(45) NOT NULL DEFAULT '0',
  `date` int(10) unsigned NOT NULL DEFAULT '0',
  `anon` char(1) NOT NULL,
  PRIMARY KEY (`online_id`),
  KEY `date` (`date`),
  KEY `site_id` (`site_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `exp_online_users` WRITE;
/*!40000 ALTER TABLE `exp_online_users` DISABLE KEYS */;

INSERT INTO `exp_online_users` (`online_id`, `site_id`, `member_id`, `in_forum`, `name`, `ip_address`, `date`, `anon`)
VALUES
	(199,1,0,'n','','::1',1476306691,''),
	(202,1,0,'n','','::1',1476306691,''),
	(201,1,0,'n','','::1',1476306691,''),
	(200,1,0,'n','','::1',1476306691,'');

/*!40000 ALTER TABLE `exp_online_users` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table exp_password_lockout
# ------------------------------------------------------------

DROP TABLE IF EXISTS `exp_password_lockout`;

CREATE TABLE `exp_password_lockout` (
  `lockout_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `login_date` int(10) unsigned NOT NULL,
  `ip_address` varchar(45) NOT NULL DEFAULT '0',
  `user_agent` varchar(120) NOT NULL,
  `username` varchar(50) NOT NULL,
  PRIMARY KEY (`lockout_id`),
  KEY `login_date` (`login_date`),
  KEY `ip_address` (`ip_address`),
  KEY `user_agent` (`user_agent`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `exp_password_lockout` WRITE;
/*!40000 ALTER TABLE `exp_password_lockout` DISABLE KEYS */;

INSERT INTO `exp_password_lockout` (`lockout_id`, `login_date`, `ip_address`, `user_agent`, `username`)
VALUES
	(1,1457384303,'::1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11) AppleWebKit/601.1.56 (KHTML, like Gecko) Version/9.0 Safari/601.1.56','joshua');

/*!40000 ALTER TABLE `exp_password_lockout` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table exp_relationships
# ------------------------------------------------------------

DROP TABLE IF EXISTS `exp_relationships`;

CREATE TABLE `exp_relationships` (
  `relationship_id` int(6) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `child_id` int(10) unsigned NOT NULL DEFAULT '0',
  `field_id` int(10) unsigned NOT NULL DEFAULT '0',
  `grid_field_id` int(10) unsigned NOT NULL DEFAULT '0',
  `grid_col_id` int(10) unsigned NOT NULL DEFAULT '0',
  `grid_row_id` int(10) unsigned NOT NULL DEFAULT '0',
  `order` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`relationship_id`),
  KEY `parent_id` (`parent_id`),
  KEY `child_id` (`child_id`),
  KEY `field_id` (`field_id`),
  KEY `grid_row_id` (`grid_row_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `exp_relationships` WRITE;
/*!40000 ALTER TABLE `exp_relationships` DISABLE KEYS */;

INSERT INTO `exp_relationships` (`relationship_id`, `parent_id`, `child_id`, `field_id`, `grid_field_id`, `grid_col_id`, `grid_row_id`, `order`)
VALUES
	(136,70,85,57,0,0,0,0),
	(133,80,86,17,0,0,0,5),
	(132,80,83,17,0,0,0,2),
	(131,80,85,17,0,0,0,4),
	(130,80,82,17,0,0,0,1),
	(129,80,84,17,0,0,0,3),
	(135,25,94,22,0,0,0,0),
	(134,80,70,18,0,0,0,1),
	(137,1,94,22,0,0,0,0),
	(138,2,94,22,0,0,0,0),
	(112,9,96,22,0,0,0,0),
	(128,71,85,57,0,0,0,0),
	(140,2,47,81,0,0,0,1),
	(139,2,48,81,0,0,0,2),
	(143,2,53,82,0,0,0,3),
	(142,2,54,82,0,0,0,2),
	(141,2,52,82,0,0,0,1);

/*!40000 ALTER TABLE `exp_relationships` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table exp_remember_me
# ------------------------------------------------------------

DROP TABLE IF EXISTS `exp_remember_me`;

CREATE TABLE `exp_remember_me` (
  `remember_me_id` varchar(40) NOT NULL DEFAULT '0',
  `member_id` int(10) DEFAULT '0',
  `ip_address` varchar(45) DEFAULT '0',
  `user_agent` varchar(120) DEFAULT '',
  `admin_sess` tinyint(1) DEFAULT '0',
  `site_id` int(4) DEFAULT '1',
  `expiration` int(10) DEFAULT '0',
  `last_refresh` int(10) DEFAULT '0',
  PRIMARY KEY (`remember_me_id`),
  KEY `member_id` (`member_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table exp_reset_password
# ------------------------------------------------------------

DROP TABLE IF EXISTS `exp_reset_password`;

CREATE TABLE `exp_reset_password` (
  `reset_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `member_id` int(10) unsigned NOT NULL,
  `resetcode` varchar(12) NOT NULL,
  `date` int(10) NOT NULL,
  PRIMARY KEY (`reset_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table exp_revision_tracker
# ------------------------------------------------------------

DROP TABLE IF EXISTS `exp_revision_tracker`;

CREATE TABLE `exp_revision_tracker` (
  `tracker_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `item_id` int(10) unsigned NOT NULL,
  `item_table` varchar(20) NOT NULL,
  `item_field` varchar(20) NOT NULL,
  `item_date` int(10) NOT NULL,
  `item_author_id` int(10) unsigned NOT NULL,
  `item_data` mediumtext NOT NULL,
  PRIMARY KEY (`tracker_id`),
  KEY `item_id` (`item_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table exp_safeharbor_lite_backups
# ------------------------------------------------------------

DROP TABLE IF EXISTS `exp_safeharbor_lite_backups`;

CREATE TABLE `exp_safeharbor_lite_backups` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `site_id` int(11) NOT NULL DEFAULT '0',
  `status` enum('running','complete','error') NOT NULL DEFAULT 'running',
  `name` varchar(25) NOT NULL DEFAULT '',
  `md5` varchar(32) NOT NULL DEFAULT '',
  `filesize` int(10) NOT NULL DEFAULT '0',
  `timestamp_start` int(10) NOT NULL DEFAULT '0',
  `timestamp_end` int(10) NOT NULL DEFAULT '0',
  `log` text NOT NULL,
  `note` text NOT NULL,
  `extension` enum('.sql','.zip','.tgz') NOT NULL DEFAULT '.sql',
  PRIMARY KEY (`id`),
  KEY `site_id` (`site_id`),
  KEY `status` (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



# Dump of table exp_safeharbor_lite_settings
# ------------------------------------------------------------

DROP TABLE IF EXISTS `exp_safeharbor_lite_settings`;

CREATE TABLE `exp_safeharbor_lite_settings` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `site_id` int(11) NOT NULL DEFAULT '0',
  `notify_email` varchar(150) NOT NULL DEFAULT '',
  `attach_backup` enum('0','1') NOT NULL DEFAULT '0',
  `compression` enum('none','zip','gzip') NOT NULL DEFAULT 'none',
  `auth_code` varchar(20) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `site_id` (`site_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



# Dump of table exp_search
# ------------------------------------------------------------

DROP TABLE IF EXISTS `exp_search`;

CREATE TABLE `exp_search` (
  `search_id` varchar(32) NOT NULL,
  `site_id` int(4) NOT NULL DEFAULT '1',
  `search_date` int(10) NOT NULL,
  `keywords` varchar(60) NOT NULL,
  `member_id` int(10) unsigned NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `total_results` int(6) NOT NULL,
  `per_page` tinyint(3) unsigned NOT NULL,
  `query` mediumtext,
  `custom_fields` mediumtext,
  `result_page` varchar(70) NOT NULL,
  PRIMARY KEY (`search_id`),
  KEY `site_id` (`site_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `exp_search` WRITE;
/*!40000 ALTER TABLE `exp_search` DISABLE KEYS */;

INSERT INTO `exp_search` (`search_id`, `site_id`, `search_date`, `keywords`, `member_id`, `ip_address`, `total_results`, `per_page`, `query`, `custom_fields`, `result_page`)
VALUES
	('1e64f0a8497b9f7f7e74befed7481d80',1,1458241528,'one',0,'::1',1,10,'s:1393:\\\"SELECT DISTINCT(t.entry_id), t.entry_id, t.channel_id, t.forum_topic_id, t.author_id, t.ip_address, t.title, t.url_title, t.status, t.view_count_one, t.view_count_two, t.view_count_three, t.view_count_four, t.allow_comments, t.comment_expiration_date, t.sticky, t.entry_date, t.year, t.month, t.day, t.entry_date, t.edit_date, t.expiration_date, t.recent_comment_date, t.comment_total, t.site_id as entry_site_id,\n				w.channel_title, w.channel_name, w.search_results_url, w.search_excerpt, w.channel_url, w.comment_url, w.comment_moderate, w.channel_html_formatting, w.channel_allow_img_urls, w.channel_auto_link_urls, w.comment_system_enabled,\n				m.username, m.email, m.url, m.screen_name, m.location, m.occupation, m.interests, m.aol_im, m.yahoo_im, m.msn_im, m.icq, m.signature, m.sig_img_filename, m.sig_img_width, m.sig_img_height, m.avatar_filename, m.avatar_width, m.avatar_height, m.photo_filename, m.photo_width, m.photo_height, m.group_id, m.member_id, m.bday_d, m.bday_m, m.bday_y, m.bio,\n				md.*,\n				wd.*\n			FROM MDBMPREFIXchannel_titles		AS t\n			LEFT JOIN MDBMPREFIXchannels 		AS w  ON t.channel_id = w.channel_id\n			LEFT JOIN MDBMPREFIXchannel_data	AS wd ON t.entry_id = wd.entry_id\n			LEFT JOIN MDBMPREFIXmembers		AS m  ON m.member_id = t.author_id\n			LEFT JOIN MDBMPREFIXmember_data	AS md ON md.member_id = m.member_id\n			WHERE t.entry_id IN (46)  ORDER BY entry_date  desc\\\";','a:3:{s:12:\\\"faq_question\\\";a:2:{i:0;s:2:\\\"30\\\";i:1;s:1:\\\"n\\\";}s:10:\\\"faq_answer\\\";a:2:{i:0;s:2:\\\"31\\\";i:1;s:1:\\\"n\\\";}s:16:\\\"faq_short_answer\\\";a:2:{i:0;s:2:\\\"32\\\";i:1;s:1:\\\"n\\\";}}','support-center/results'),
	('16ca7b54d3e96939c5f27cc961410c79',1,1458241636,'two',0,'::1',1,10,'s:1393:\\\"SELECT DISTINCT(t.entry_id), t.entry_id, t.channel_id, t.forum_topic_id, t.author_id, t.ip_address, t.title, t.url_title, t.status, t.view_count_one, t.view_count_two, t.view_count_three, t.view_count_four, t.allow_comments, t.comment_expiration_date, t.sticky, t.entry_date, t.year, t.month, t.day, t.entry_date, t.edit_date, t.expiration_date, t.recent_comment_date, t.comment_total, t.site_id as entry_site_id,\n				w.channel_title, w.channel_name, w.search_results_url, w.search_excerpt, w.channel_url, w.comment_url, w.comment_moderate, w.channel_html_formatting, w.channel_allow_img_urls, w.channel_auto_link_urls, w.comment_system_enabled,\n				m.username, m.email, m.url, m.screen_name, m.location, m.occupation, m.interests, m.aol_im, m.yahoo_im, m.msn_im, m.icq, m.signature, m.sig_img_filename, m.sig_img_width, m.sig_img_height, m.avatar_filename, m.avatar_width, m.avatar_height, m.photo_filename, m.photo_width, m.photo_height, m.group_id, m.member_id, m.bday_d, m.bday_m, m.bday_y, m.bio,\n				md.*,\n				wd.*\n			FROM MDBMPREFIXchannel_titles		AS t\n			LEFT JOIN MDBMPREFIXchannels 		AS w  ON t.channel_id = w.channel_id\n			LEFT JOIN MDBMPREFIXchannel_data	AS wd ON t.entry_id = wd.entry_id\n			LEFT JOIN MDBMPREFIXmembers		AS m  ON m.member_id = t.author_id\n			LEFT JOIN MDBMPREFIXmember_data	AS md ON md.member_id = m.member_id\n			WHERE t.entry_id IN (56)  ORDER BY entry_date  desc\\\";','a:2:{s:23:\\\"tool_and_app_short_desc\\\";a:2:{i:0;s:2:\\\"36\\\";i:1;s:1:\\\"n\\\";}s:24:\\\"tool_and_app_description\\\";a:2:{i:0;s:2:\\\"37\\\";i:1;s:1:\\\"n\\\";}}','support-center/results'),
	('172b4ae1e94bd9ca7be63949452bfdeb',1,1458241706,'one',0,'::1',1,10,'s:1393:\\\"SELECT DISTINCT(t.entry_id), t.entry_id, t.channel_id, t.forum_topic_id, t.author_id, t.ip_address, t.title, t.url_title, t.status, t.view_count_one, t.view_count_two, t.view_count_three, t.view_count_four, t.allow_comments, t.comment_expiration_date, t.sticky, t.entry_date, t.year, t.month, t.day, t.entry_date, t.edit_date, t.expiration_date, t.recent_comment_date, t.comment_total, t.site_id as entry_site_id,\n				w.channel_title, w.channel_name, w.search_results_url, w.search_excerpt, w.channel_url, w.comment_url, w.comment_moderate, w.channel_html_formatting, w.channel_allow_img_urls, w.channel_auto_link_urls, w.comment_system_enabled,\n				m.username, m.email, m.url, m.screen_name, m.location, m.occupation, m.interests, m.aol_im, m.yahoo_im, m.msn_im, m.icq, m.signature, m.sig_img_filename, m.sig_img_width, m.sig_img_height, m.avatar_filename, m.avatar_width, m.avatar_height, m.photo_filename, m.photo_width, m.photo_height, m.group_id, m.member_id, m.bday_d, m.bday_m, m.bday_y, m.bio,\n				md.*,\n				wd.*\n			FROM MDBMPREFIXchannel_titles		AS t\n			LEFT JOIN MDBMPREFIXchannels 		AS w  ON t.channel_id = w.channel_id\n			LEFT JOIN MDBMPREFIXchannel_data	AS wd ON t.entry_id = wd.entry_id\n			LEFT JOIN MDBMPREFIXmembers		AS m  ON m.member_id = t.author_id\n			LEFT JOIN MDBMPREFIXmember_data	AS md ON md.member_id = m.member_id\n			WHERE t.entry_id IN (58)  ORDER BY entry_date  desc\\\";','a:2:{s:27:\\\"compliance_watch_short_desc\\\";a:2:{i:0;s:2:\\\"38\\\";i:1;s:1:\\\"n\\\";}s:28:\\\"compliance_watch_description\\\";a:2:{i:0;s:2:\\\"39\\\";i:1;s:1:\\\"n\\\";}}','support-center/results'),
	('b980ee40429a01d197659edefe457fc5',1,1458241468,'one',0,'::1',1,10,'s:1393:\\\"SELECT DISTINCT(t.entry_id), t.entry_id, t.channel_id, t.forum_topic_id, t.author_id, t.ip_address, t.title, t.url_title, t.status, t.view_count_one, t.view_count_two, t.view_count_three, t.view_count_four, t.allow_comments, t.comment_expiration_date, t.sticky, t.entry_date, t.year, t.month, t.day, t.entry_date, t.edit_date, t.expiration_date, t.recent_comment_date, t.comment_total, t.site_id as entry_site_id,\n				w.channel_title, w.channel_name, w.search_results_url, w.search_excerpt, w.channel_url, w.comment_url, w.comment_moderate, w.channel_html_formatting, w.channel_allow_img_urls, w.channel_auto_link_urls, w.comment_system_enabled,\n				m.username, m.email, m.url, m.screen_name, m.location, m.occupation, m.interests, m.aol_im, m.yahoo_im, m.msn_im, m.icq, m.signature, m.sig_img_filename, m.sig_img_width, m.sig_img_height, m.avatar_filename, m.avatar_width, m.avatar_height, m.photo_filename, m.photo_width, m.photo_height, m.group_id, m.member_id, m.bday_d, m.bday_m, m.bday_y, m.bio,\n				md.*,\n				wd.*\n			FROM MDBMPREFIXchannel_titles		AS t\n			LEFT JOIN MDBMPREFIXchannels 		AS w  ON t.channel_id = w.channel_id\n			LEFT JOIN MDBMPREFIXchannel_data	AS wd ON t.entry_id = wd.entry_id\n			LEFT JOIN MDBMPREFIXmembers		AS m  ON m.member_id = t.author_id\n			LEFT JOIN MDBMPREFIXmember_data	AS md ON md.member_id = m.member_id\n			WHERE t.entry_id IN (49)  ORDER BY entry_date  desc\\\";','a:2:{s:16:\\\"video_short_desc\\\";a:2:{i:0;s:2:\\\"42\\\";i:1;s:1:\\\"n\\\";}s:17:\\\"video_description\\\";a:2:{i:0;s:2:\\\"43\\\";i:1;s:1:\\\"n\\\";}}','support-center/results');

/*!40000 ALTER TABLE `exp_search` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table exp_search_log
# ------------------------------------------------------------

DROP TABLE IF EXISTS `exp_search_log`;

CREATE TABLE `exp_search_log` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `site_id` int(4) unsigned NOT NULL DEFAULT '1',
  `member_id` int(10) unsigned NOT NULL,
  `screen_name` varchar(50) NOT NULL,
  `ip_address` varchar(45) NOT NULL DEFAULT '0',
  `search_date` int(10) NOT NULL,
  `search_type` varchar(32) NOT NULL,
  `search_terms` varchar(200) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `site_id` (`site_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `exp_search_log` WRITE;
/*!40000 ALTER TABLE `exp_search_log` DISABLE KEYS */;

INSERT INTO `exp_search_log` (`id`, `site_id`, `member_id`, `screen_name`, `ip_address`, `search_date`, `search_type`, `search_terms`)
VALUES
	(1,1,1,'joshua','::1',1454419334,'site','Title'),
	(2,1,1,'joshua','::1',1454536753,'site','question three'),
	(3,1,1,'joshua','::1',1454536920,'site','question three'),
	(4,1,1,'joshua','::1',1454536938,'site','question three'),
	(5,1,1,'joshua','::1',1454537065,'site','question'),
	(6,1,1,'joshua','::1',1454537522,'site','three'),
	(7,1,1,'joshua','::1',1454537597,'site','three'),
	(8,1,1,'joshua','::1',1454537627,'site','Two'),
	(9,1,1,'joshua','::1',1454537758,'site','three'),
	(10,1,1,'joshua','::1',1454537789,'site','Three'),
	(11,1,1,'joshua','::1',1454537814,'site','Three'),
	(12,1,1,'joshua','::1',1454537845,'site','Two'),
	(13,1,1,'joshua','::1',1454537891,'site','Three'),
	(14,1,1,'joshua','::1',1454538055,'site','Two'),
	(15,1,1,'joshua','::1',1454538063,'site','question'),
	(16,1,1,'joshua','::1',1454538147,'site','Question'),
	(17,1,1,'joshua','::1',1454538934,'site','three'),
	(18,1,1,'joshua','::1',1454538946,'site','three'),
	(19,1,1,'joshua','::1',1454538955,'site','one'),
	(20,1,1,'joshua','::1',1454541876,'site','description'),
	(21,1,1,'joshua','::1',1454542247,'site','one'),
	(22,1,1,'joshua','::1',1454542508,'site','one'),
	(23,1,1,'joshua','::1',1454543618,'site','one'),
	(24,1,1,'joshua','::1',1454543667,'site','one'),
	(25,1,1,'joshua','::1',1454543676,'site','one'),
	(26,1,1,'joshua','::1',1454544088,'site','one'),
	(27,1,1,'joshua','::1',1454544152,'site','one'),
	(28,1,1,'joshua','::1',1454544200,'site','one'),
	(29,1,1,'joshua','::1',1454551096,'site','one'),
	(30,1,1,'joshua','::1',1454551240,'site','two'),
	(31,1,1,'joshua','::1',1454563878,'site','one'),
	(32,1,1,'joshua','::1',1454564907,'site','one'),
	(33,1,1,'joshua','::1',1454564917,'site','one'),
	(34,1,1,'joshua','::1',1454565024,'site','one'),
	(35,1,1,'joshua','::1',1454565229,'site','one'),
	(36,1,1,'joshua','::1',1454565407,'site','baseball'),
	(37,1,1,'joshua','::1',1454606642,'site','one'),
	(38,1,1,'joshua','::1',1454683796,'site','one'),
	(39,1,1,'joshua','::1',1454683937,'site','one'),
	(40,1,1,'joshua','::1',1454684062,'site','one'),
	(41,1,1,'joshua','::1',1454684176,'site','one'),
	(42,1,1,'joshua','::1',1454684194,'site','one'),
	(43,1,1,'joshua','::1',1454685163,'site','one'),
	(44,1,1,'joshua','::1',1454942822,'site','one'),
	(45,1,1,'joshua','::1',1454942897,'site','one'),
	(46,1,1,'joshua','::1',1454942910,'site','one'),
	(47,1,1,'joshua','::1',1454942920,'site','one'),
	(48,1,1,'joshua','::1',1454942928,'site','one'),
	(49,1,1,'joshua','::1',1454942945,'site','one'),
	(50,1,1,'joshua','::1',1454942988,'site','one'),
	(51,1,1,'joshua','::1',1454942996,'site','one'),
	(52,1,1,'joshua','::1',1454943027,'site','one'),
	(53,1,1,'joshua','::1',1454943099,'site','one'),
	(54,1,1,'joshua','::1',1454943282,'site','one'),
	(55,1,1,'joshua','::1',1454943637,'site','one'),
	(56,1,1,'joshua','::1',1454943646,'site','one'),
	(57,1,1,'joshua','::1',1454943653,'site','videos'),
	(58,1,1,'joshua','::1',1454943660,'site','one'),
	(59,1,1,'joshua','::1',1454943666,'site','one'),
	(60,1,1,'joshua','::1',1454943673,'site','one'),
	(61,1,1,'joshua','::1',1454943678,'site','one'),
	(62,1,1,'joshua','::1',1454943724,'site','one'),
	(63,1,1,'joshua','::1',1454943785,'site','one'),
	(64,1,1,'joshua','::1',1454943873,'site','one'),
	(65,1,1,'joshua','::1',1454943927,'site','one'),
	(66,1,1,'joshua','::1',1454943938,'site','one'),
	(67,1,1,'joshua','::1',1454944560,'site','one'),
	(68,1,1,'joshua','::1',1454944578,'site','one'),
	(69,1,1,'joshua','::1',1454944602,'site','one'),
	(70,1,1,'joshua','::1',1454944628,'site','faqs'),
	(71,1,1,'joshua','::1',1454944637,'site','one'),
	(72,1,1,'joshua','::1',1454944667,'site','one'),
	(73,1,1,'joshua','::1',1454945069,'site','one'),
	(74,1,1,'joshua','::1',1454945600,'site','one'),
	(75,1,1,'joshua','::1',1454945608,'site','one'),
	(76,1,1,'joshua','::1',1454945612,'site','one'),
	(77,1,1,'joshua','::1',1454945616,'site','one'),
	(78,1,1,'joshua','::1',1454945621,'site','one'),
	(79,1,1,'joshua','::1',1454945628,'site','one'),
	(80,1,1,'joshua','::1',1454945646,'site','one'),
	(81,1,1,'joshua','::1',1454945660,'site','one'),
	(82,1,1,'joshua','::1',1454945722,'site','one'),
	(83,1,1,'joshua','::1',1454945738,'site','one'),
	(84,1,1,'joshua','::1',1454945754,'site','one'),
	(85,1,1,'joshua','::1',1454946183,'site','one'),
	(86,1,0,'','::1',1454956722,'site','one'),
	(87,1,0,'','::1',1454956741,'site','one'),
	(88,1,0,'','::1',1454956760,'site','one'),
	(89,1,0,'','::1',1454956779,'site','one'),
	(90,1,0,'','::1',1454956796,'site','one'),
	(91,1,0,'','::1',1454956818,'site','one'),
	(92,1,0,'','::1',1454956858,'site','adv'),
	(93,1,0,'','::1',1454956896,'site','one'),
	(94,1,1,'joshua','::1',1455031536,'site','one'),
	(95,1,1,'joshua','::1',1455035445,'site','one'),
	(96,1,1,'joshua','::1',1455038646,'site','one'),
	(97,1,1,'joshua','::1',1455043703,'site','one'),
	(98,1,1,'joshua','::1',1455053107,'site','one'),
	(99,1,1,'joshua','::1',1455053114,'site','one'),
	(100,1,1,'joshua','::1',1455053122,'site','one'),
	(101,1,1,'joshua','::1',1455053127,'site','one'),
	(102,1,1,'joshua','::1',1455053139,'site','one'),
	(103,1,1,'joshua','::1',1455053277,'site','one'),
	(104,1,1,'joshua','::1',1455053345,'site','one'),
	(105,1,1,'joshua','::1',1455053883,'site','one'),
	(106,1,1,'joshua','::1',1455053893,'site','one'),
	(107,1,1,'joshua','::1',1455053903,'site','one'),
	(108,1,1,'joshua','::1',1455054169,'site','one'),
	(109,1,1,'joshua','::1',1455054204,'site','one'),
	(110,1,1,'joshua','::1',1455054230,'site','one'),
	(111,1,1,'joshua','::1',1455054237,'site','one'),
	(112,1,1,'joshua','::1',1455054277,'site','one'),
	(113,1,1,'joshua','::1',1455054282,'site','one'),
	(114,1,1,'joshua','::1',1455054306,'site','one'),
	(115,1,1,'joshua','::1',1455054551,'site','one'),
	(116,1,1,'joshua','::1',1455054672,'site','one'),
	(117,1,1,'joshua','::1',1455055413,'site','one'),
	(118,1,1,'joshua','::1',1455056264,'site','pne'),
	(119,1,1,'joshua','::1',1455056269,'site','one'),
	(120,1,1,'joshua','::1',1455056275,'site','one'),
	(121,1,1,'joshua','::1',1455056317,'site','one'),
	(122,1,1,'joshua','::1',1455056346,'site','one'),
	(123,1,1,'joshua','::1',1455056576,'site','one'),
	(124,1,1,'joshua','::1',1455056581,'site','one'),
	(125,1,1,'joshua','::1',1455056601,'site','one'),
	(126,1,1,'joshua','::1',1455056969,'site','one'),
	(127,1,1,'joshua','::1',1455057256,'site','one'),
	(128,1,1,'joshua','::1',1455057326,'site','one'),
	(129,1,1,'joshua','::1',1455057361,'site','one'),
	(130,1,1,'joshua','::1',1455205484,'site','one'),
	(131,1,1,'joshua','::1',1455206199,'site','one'),
	(132,1,1,'joshua','::1',1455207105,'site','one'),
	(133,1,1,'joshua','::1',1455207122,'site','one'),
	(134,1,1,'joshua','::1',1455207719,'site','one'),
	(135,1,1,'joshua','::1',1455209094,'site','one'),
	(136,1,1,'joshua','::1',1455209135,'site','one'),
	(137,1,1,'joshua','::1',1455209151,'site','one'),
	(138,1,1,'joshua','::1',1455209157,'site','one'),
	(139,1,1,'joshua','::1',1455209174,'site','one'),
	(140,1,1,'joshua','::1',1455209457,'site','one'),
	(141,1,1,'joshua','::1',1455209471,'site','one'),
	(142,1,1,'joshua','::1',1455209483,'site','one'),
	(143,1,1,'joshua','::1',1455209502,'site','one'),
	(144,1,1,'joshua','::1',1455209525,'site','one'),
	(145,1,1,'joshua','::1',1455209594,'site','one'),
	(146,1,1,'joshua','::1',1455210415,'site','one'),
	(147,1,1,'joshua','::1',1455210423,'site','one'),
	(148,1,0,'','::1',1455225085,'site','one'),
	(149,1,0,'','::1',1455226022,'site','one'),
	(150,1,0,'','::1',1455226073,'site','one'),
	(151,1,0,'','::1',1455226107,'site','one'),
	(152,1,0,'','::1',1455226249,'site','one'),
	(153,1,0,'','::1',1455226267,'site','one'),
	(154,1,0,'','::1',1455226295,'site','one'),
	(155,1,0,'','::1',1455226446,'site','one'),
	(156,1,0,'','::1',1455226464,'site','one'),
	(157,1,0,'','::1',1455226488,'site','one'),
	(158,1,0,'','::1',1455226504,'site','one'),
	(159,1,0,'','::1',1455226536,'site','one'),
	(160,1,0,'','::1',1455226550,'site','one'),
	(161,1,0,'','::1',1455226572,'site','one'),
	(162,1,0,'','::1',1455226708,'site','one'),
	(163,1,0,'','::1',1455226730,'site','one'),
	(164,1,0,'','::1',1455226822,'site','one'),
	(165,1,0,'','::1',1455226944,'site','one'),
	(166,1,0,'','::1',1455227170,'site','one'),
	(167,1,0,'','::1',1455227189,'site','one'),
	(168,1,0,'','::1',1455227875,'site','one'),
	(169,1,0,'','::1',1455227946,'site','one'),
	(170,1,0,'','::1',1455228001,'site','one'),
	(171,1,1,'joshua','::1',1455228432,'site','one'),
	(172,1,1,'joshua','::1',1455228456,'site','one'),
	(173,1,1,'joshua','::1',1455228471,'site','one'),
	(174,1,1,'joshua','::1',1455228525,'site','one'),
	(175,1,1,'joshua','::1',1455228532,'site','one'),
	(176,1,1,'joshua','::1',1455228614,'site','one'),
	(177,1,1,'joshua','::1',1455228647,'site','one'),
	(178,1,1,'joshua','::1',1455228671,'site','one'),
	(179,1,1,'joshua','::1',1455231754,'site','one'),
	(180,1,1,'joshua','::1',1455231789,'site','one'),
	(181,1,1,'joshua','::1',1455232411,'site','one'),
	(182,1,1,'joshua','::1',1455232436,'site','one'),
	(183,1,1,'joshua','::1',1455232693,'site','one'),
	(184,1,1,'joshua','::1',1455232708,'site','one'),
	(185,1,1,'joshua','::1',1455233301,'site','one'),
	(186,1,1,'joshua','::1',1455235388,'site','one'),
	(187,1,1,'joshua','::1',1455235397,'site','one'),
	(188,1,1,'joshua','::1',1455236330,'site','one'),
	(189,1,1,'joshua','::1',1455236338,'site','one'),
	(190,1,1,'joshua','::1',1455236345,'site','one'),
	(191,1,1,'joshua','::1',1455238764,'site','one'),
	(192,1,1,'joshua','::1',1455238773,'site','one'),
	(193,1,1,'joshua','::1',1455238781,'site','one'),
	(194,1,1,'joshua','::1',1455239423,'site','one'),
	(195,1,1,'joshua','::1',1455239574,'site','one'),
	(196,1,1,'joshua','::1',1455239703,'site','one'),
	(197,1,1,'joshua','::1',1455240638,'site','one'),
	(198,1,1,'joshua','::1',1455241482,'site','one'),
	(199,1,1,'joshua','::1',1455244746,'site','one'),
	(200,1,1,'joshua','::1',1455244753,'site','one'),
	(201,1,1,'joshua','::1',1455244758,'site','one'),
	(202,1,1,'joshua','::1',1455244933,'site','one'),
	(203,1,1,'joshua','::1',1455244941,'site','one'),
	(204,1,1,'joshua','::1',1455244946,'site','one'),
	(205,1,1,'joshua','::1',1455244951,'site','one'),
	(206,1,1,'joshua','::1',1455244956,'site','one'),
	(207,1,1,'joshua','::1',1455244962,'site','one'),
	(208,1,1,'joshua','::1',1455245314,'site','one'),
	(209,1,1,'joshua','::1',1455245323,'site','one'),
	(210,1,1,'joshua','::1',1455245330,'site','one'),
	(211,1,1,'joshua','::1',1455245339,'site','one'),
	(212,1,1,'joshua','::1',1455245568,'site','one'),
	(213,1,1,'joshua','::1',1455245575,'site','one'),
	(214,1,1,'joshua','::1',1455315698,'site','one'),
	(215,1,0,'','::1',1455516344,'site','one'),
	(216,1,1,'joshua','::1',1455528699,'site','one'),
	(217,1,1,'joshua','::1',1455528906,'site','one'),
	(218,1,1,'joshua','::1',1455529046,'site','one'),
	(219,1,0,'','::1',1455558494,'site','one'),
	(220,1,0,'','::1',1455659385,'site','one'),
	(221,1,0,'','::1',1455659420,'site','afdfdslkj'),
	(222,1,0,'','::1',1455659659,'site','one'),
	(223,1,0,'','::1',1455659924,'site','one'),
	(224,1,0,'','::1',1455659953,'site','alslfjfja;'),
	(225,1,0,'','::1',1455660106,'site','one'),
	(226,1,0,'','::1',1455660290,'site','benefits'),
	(227,1,1,'joshua','::1',1455661242,'site','career'),
	(228,1,1,'joshua','::1',1455661326,'site','compliance'),
	(229,1,1,'joshua','::1',1455661376,'site','contact'),
	(230,1,1,'joshua','::1',1455661393,'site','faq'),
	(231,1,1,'joshua','::1',1455661416,'site','question'),
	(232,1,1,'joshua','::1',1455661442,'site','form'),
	(233,1,1,'joshua','::1',1455661483,'site','home'),
	(234,1,1,'joshua','::1',1455661539,'site','news'),
	(235,1,1,'joshua','::1',1455661558,'site','article'),
	(236,1,1,'joshua','::1',1455661595,'site','leadership'),
	(237,1,1,'joshua','::1',1455661629,'site','bio'),
	(238,1,1,'joshua','::1',1455661920,'site','support center'),
	(239,1,1,'joshua','::1',1455661994,'site','testimonial'),
	(240,1,1,'joshua','::1',1455662071,'site','testimonials'),
	(241,1,1,'joshua','::1',1455662100,'site','tool'),
	(242,1,1,'joshua','::1',1455662128,'site','video'),
	(243,1,1,'joshua','::1',1455662372,'site','one'),
	(244,1,1,'joshua','::1',1455662535,'site','one'),
	(245,1,1,'joshua','::1',1455663452,'site','adlkfjdsalfj'),
	(246,1,1,'joshua','::1',1455663491,'site','aldkjfldskjf'),
	(247,1,1,'joshua','::1',1455663602,'site','one'),
	(248,1,1,'joshua','::1',1455663610,'site','adslfjsdlfkjdfkl'),
	(249,1,1,'joshua','::1',1455663686,'site','one'),
	(250,1,1,'joshua','::1',1455663838,'site','alkjadflsj'),
	(251,1,1,'joshua','::1',1455663848,'site','alkjdfadfs'),
	(252,1,1,'joshua','::1',1455663862,'site','one'),
	(253,1,1,'joshua','::1',1455663993,'site','adfdsflj'),
	(254,1,1,'joshua','::1',1455664029,'site','asdfsdff'),
	(255,1,1,'joshua','::1',1455664105,'site','one'),
	(256,1,1,'joshua','::1',1455664421,'site','one'),
	(257,1,1,'joshua','::1',1455664429,'site','afdsfddf'),
	(258,1,1,'joshua','::1',1455664437,'site','adfs'),
	(259,1,1,'joshua','::1',1455664446,'site','one'),
	(260,1,1,'joshua','::1',1455664454,'site','one'),
	(261,1,1,'joshua','::1',1455664460,'site','adsfd'),
	(262,1,0,'','::1',1455803964,'site','one'),
	(263,1,0,'','::1',1455804077,'site','career'),
	(264,1,1,'joshua','::1',1455804296,'site','career'),
	(265,1,1,'joshua','::1',1455804689,'site','compliance'),
	(266,1,1,'joshua','::1',1455805237,'site','one'),
	(267,1,1,'joshua','::1',1455805512,'site','tool'),
	(268,1,1,'joshua','::1',1455805991,'site','one'),
	(269,1,1,'joshua','::1',1455806064,'site','one'),
	(270,1,1,'joshua','::1',1455806071,'site','one'),
	(271,1,1,'joshua','::1',1455806077,'site','one'),
	(272,1,1,'joshua','::1',1455806082,'site','one'),
	(273,1,1,'joshua','::1',1455806089,'site','one'),
	(274,1,1,'joshua','::1',1455813639,'site','one'),
	(275,1,1,'joshua','::1',1455813655,'site','one'),
	(276,1,1,'joshua','::1',1455813675,'site','one'),
	(277,1,1,'joshua','::1',1455818584,'site','one'),
	(278,1,1,'joshua','::1',1455818628,'site','one'),
	(279,1,1,'joshua','::1',1455911616,'site','one'),
	(280,1,1,'joshua','::1',1455911629,'site','one'),
	(281,1,1,'joshua','::1',1455911635,'site','one'),
	(282,1,1,'joshua','::1',1455911974,'site','one'),
	(283,1,1,'joshua','::1',1455924295,'site','one'),
	(284,1,1,'joshua','::1',1455924541,'site','one'),
	(285,1,0,'','::1',1458241468,'site','one'),
	(286,1,0,'','::1',1458241528,'site','one'),
	(287,1,0,'','::1',1458241635,'site','two'),
	(288,1,0,'','::1',1458241706,'site','one');

/*!40000 ALTER TABLE `exp_search_log` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table exp_security_hashes
# ------------------------------------------------------------

DROP TABLE IF EXISTS `exp_security_hashes`;

CREATE TABLE `exp_security_hashes` (
  `hash_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `date` int(10) unsigned NOT NULL,
  `session_id` varchar(40) NOT NULL DEFAULT '0',
  `hash` varchar(40) NOT NULL,
  PRIMARY KEY (`hash_id`),
  KEY `session_id` (`session_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `exp_security_hashes` WRITE;
/*!40000 ALTER TABLE `exp_security_hashes` DISABLE KEYS */;

INSERT INTO `exp_security_hashes` (`hash_id`, `date`, `session_id`, `hash`)
VALUES
	(66,1476311263,'a7689403416a316e6cfb68795eef7aa04f679931','aeffd72bbf64bd6530f86c2e06a038fddb8141fa'),
	(65,1476306692,'afb50a65a231147644bd5c82fdb6928c54fa6f6b','74a37123f6e88ee3a32c619e9e7ca3f7420689a0'),
	(64,1474241150,'88b56935bee9e7a94e0ce3218f43efe2bd6c367c','e815d8c9d352d2cc916b2109d56fbdf8eac00823'),
	(63,1459879500,'f5fa95fed00e431043d5cff4c7520b726c350b5f','c7a9a6a8b3ea7ca309a52b51f1d1deda7b015d20'),
	(62,1457384310,'405e1f6a9b23d1037098a2138463d816d0e09d52','7fd26169ff3aac9ea055d1ccecc4a2e9f6f0806e'),
	(61,1457112872,'97fe877be4002cc43cdeb6fedf7a2ab81419a73f','48765aac28d1564aeac32d99c9f32fb5d398e5df'),
	(60,1457111712,'7c69e8b8dbd58974dc7c119e1d3ed70cd30b95b6','f352e42166183a58b65ff54c6b2911cce357726b'),
	(59,1457025326,'37f6f530a9e044c824a6737fb913a6b8521a866a','d9945b7ded134b2442390bd91b925a2349c4e5b3'),
	(58,1456945174,'15b734e4346ef45f68b5337e09a7d8fa2dbce6fa','0bb68d62472766ca7cb71001987081abbe7bf883'),
	(57,1456936742,'333f75cf9f7b06b5bda0fd44a814f0a117ee8349','149cce8acabff3cb66bd9d5bf7685a06592703db'),
	(56,1456759862,'c5239b31580872bed64aa2569e4a028d985ed978','cfdb0e9b517e484eb5bf2c6803ba2cab789e5899'),
	(55,1456578360,'7bcd95031d836dcc283d352237416c96ed581a32','17c44779be1f2189dd4961ddd2558bab155acf50');

/*!40000 ALTER TABLE `exp_security_hashes` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table exp_seolite_config
# ------------------------------------------------------------

DROP TABLE IF EXISTS `exp_seolite_config`;

CREATE TABLE `exp_seolite_config` (
  `seolite_config_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `site_id` int(10) unsigned DEFAULT NULL,
  `template` text,
  `default_keywords` varchar(1024) NOT NULL,
  `default_description` varchar(1024) NOT NULL,
  `default_title_postfix` varchar(60) NOT NULL,
  `include_pagination_in_canonical` enum('y','n') NOT NULL DEFAULT 'y',
  PRIMARY KEY (`seolite_config_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `exp_seolite_config` WRITE;
/*!40000 ALTER TABLE `exp_seolite_config` DISABLE KEYS */;

INSERT INTO `exp_seolite_config` (`seolite_config_id`, `site_id`, `template`, `default_keywords`, `default_description`, `default_title_postfix`, `include_pagination_in_canonical`)
VALUES
	(1,1,'<title>{title}{site_name}</title>\n<meta name=\'keywords\' content=\'{meta_keywords}\' />\n<meta name=\'description\' content=\'{meta_description}\' />\n<link rel=\'canonical\' href=\'{canonical_url}\' />\n<!-- generated by seo_lite -->','Chard Snyder, Chard-Snyder, flex account, flexible spending account, FSA, health reimbursement arrangement, HRA, health savings account, HSA, smart commuter, COBRA, s125, s132, s105, pre-tax benefits','Chard Snyder - Employee benefits administration including Flexible Spending Account (FSA), Health Reimbursement Arrangement (HRA), Health Savings Account (HSA), Transportation/Parking, Cobra, Retiree Billing, Direct Billing.',' |&nbsp;','y');

/*!40000 ALTER TABLE `exp_seolite_config` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table exp_seolite_content
# ------------------------------------------------------------

DROP TABLE IF EXISTS `exp_seolite_content`;

CREATE TABLE `exp_seolite_content` (
  `seolite_content_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `site_id` int(10) NOT NULL,
  `entry_id` int(10) NOT NULL,
  `title` varchar(1024) DEFAULT NULL,
  `keywords` varchar(1024) NOT NULL,
  `description` text,
  PRIMARY KEY (`seolite_content_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `exp_seolite_content` WRITE;
/*!40000 ALTER TABLE `exp_seolite_content` DISABLE KEYS */;

INSERT INTO `exp_seolite_content` (`seolite_content_id`, `site_id`, `entry_id`, `title`, `keywords`, `description`)
VALUES
	(1,1,1,'','',''),
	(2,1,2,'Testing Title','testing keywords','testing description'),
	(3,1,3,'','',''),
	(4,1,4,'','',''),
	(5,1,5,'','',''),
	(6,1,6,'','',''),
	(7,1,7,'','',''),
	(8,1,8,'','',''),
	(9,1,9,'','',''),
	(10,1,10,'','',''),
	(11,1,11,'','',''),
	(12,1,12,'','',''),
	(13,1,13,'','',''),
	(14,1,14,'','',''),
	(15,1,15,'','',''),
	(16,1,16,'','',''),
	(17,1,17,'','',''),
	(18,1,18,'','',''),
	(19,1,19,'','',''),
	(20,1,20,'','',''),
	(21,1,21,'','',''),
	(22,1,22,'','',''),
	(23,1,23,'','',''),
	(24,1,24,'','',''),
	(25,1,25,'','',''),
	(26,1,26,'','',''),
	(27,1,27,'','',''),
	(28,1,28,'','',''),
	(29,1,29,'','',''),
	(30,1,30,'','',''),
	(31,1,31,'','',''),
	(32,1,32,'','',''),
	(33,1,33,'','',''),
	(34,1,34,'','',''),
	(35,1,35,'','',''),
	(36,1,36,'','',''),
	(37,1,37,'','',''),
	(38,1,38,'','',''),
	(39,1,39,'','',''),
	(40,1,40,'','',''),
	(41,1,41,'','',''),
	(42,1,42,'','',''),
	(43,1,43,'','',''),
	(44,1,44,'','',''),
	(45,1,45,'','',''),
	(46,1,46,'','',''),
	(47,1,47,'','',''),
	(48,1,48,'','',''),
	(49,1,49,'','',''),
	(50,1,50,'','',''),
	(51,1,51,'','',''),
	(52,1,52,'','',''),
	(53,1,53,'','',''),
	(54,1,54,'','',''),
	(55,1,55,'','',''),
	(56,1,56,'','',''),
	(57,1,57,'','',''),
	(58,1,58,'','',''),
	(59,1,59,'','',''),
	(60,1,60,'','',''),
	(61,1,61,'','',''),
	(62,1,62,'','',''),
	(63,1,63,'','',''),
	(64,1,64,'','',''),
	(65,1,65,'','',''),
	(66,1,66,'','',''),
	(67,1,67,'','',''),
	(68,1,68,'','',''),
	(69,1,69,'','',''),
	(70,1,70,'','',''),
	(71,1,71,'','',''),
	(72,1,72,'','',''),
	(73,1,73,'','',''),
	(74,1,74,'','',''),
	(75,1,75,'','',''),
	(76,1,76,'','',''),
	(77,1,77,'','',''),
	(78,1,78,'','',''),
	(79,1,79,'','',''),
	(80,1,80,'Home Title','home keywords','home description'),
	(81,1,81,'','',''),
	(82,1,82,'','',''),
	(83,1,83,'','',''),
	(84,1,84,'','',''),
	(85,1,85,'','',''),
	(86,1,86,'','',''),
	(87,1,87,'','',''),
	(88,1,88,'','',''),
	(89,1,89,'','',''),
	(90,1,90,'','',''),
	(91,1,91,'','',''),
	(92,1,92,'','',''),
	(93,1,93,'','',''),
	(94,1,94,'','',''),
	(95,1,95,'','',''),
	(96,1,96,'','',''),
	(97,1,97,'','',''),
	(98,1,98,'','',''),
	(99,1,99,'','',''),
	(101,1,101,'','',''),
	(102,1,102,'','',''),
	(103,1,103,'','',''),
	(104,1,104,'','','');

/*!40000 ALTER TABLE `exp_seolite_content` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table exp_sessions
# ------------------------------------------------------------

DROP TABLE IF EXISTS `exp_sessions`;

CREATE TABLE `exp_sessions` (
  `session_id` varchar(40) NOT NULL DEFAULT '0',
  `member_id` int(10) NOT NULL DEFAULT '0',
  `admin_sess` tinyint(1) NOT NULL DEFAULT '0',
  `ip_address` varchar(45) NOT NULL DEFAULT '0',
  `user_agent` varchar(120) NOT NULL,
  `login_state` varchar(32) DEFAULT NULL,
  `fingerprint` varchar(40) NOT NULL,
  `sess_start` int(10) unsigned NOT NULL DEFAULT '0',
  `last_activity` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`session_id`),
  KEY `member_id` (`member_id`),
  KEY `last_activity_idx` (`last_activity`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `exp_sessions` WRITE;
/*!40000 ALTER TABLE `exp_sessions` DISABLE KEYS */;

INSERT INTO `exp_sessions` (`session_id`, `member_id`, `admin_sess`, `ip_address`, `user_agent`, `login_state`, `fingerprint`, `sess_start`, `last_activity`)
VALUES
	('a7689403416a316e6cfb68795eef7aa04f679931',1,1,'::1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11) AppleWebKit/601.1.56 (KHTML, like Gecko) Version/9.0 Safari/601.1.56',NULL,'e8277368357c6f2788c96b5f0cdd223e',1476311262,1476311321),
	('88b56935bee9e7a94e0ce3218f43efe2bd6c367c',1,1,'::1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11) AppleWebKit/601.1.56 (KHTML, like Gecko) Version/9.0 Safari/601.1.56',NULL,'e8277368357c6f2788c96b5f0cdd223e',1474241149,1474241216),
	('afb50a65a231147644bd5c82fdb6928c54fa6f6b',1,1,'::1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11) AppleWebKit/601.1.56 (KHTML, like Gecko) Version/9.0 Safari/601.1.56',NULL,'e8277368357c6f2788c96b5f0cdd223e',1476306692,1476306748);

/*!40000 ALTER TABLE `exp_sessions` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table exp_sites
# ------------------------------------------------------------

DROP TABLE IF EXISTS `exp_sites`;

CREATE TABLE `exp_sites` (
  `site_id` int(5) unsigned NOT NULL AUTO_INCREMENT,
  `site_label` varchar(100) NOT NULL DEFAULT '',
  `site_name` varchar(50) NOT NULL DEFAULT '',
  `site_description` text,
  `site_system_preferences` mediumtext NOT NULL,
  `site_mailinglist_preferences` text NOT NULL,
  `site_member_preferences` text NOT NULL,
  `site_template_preferences` text NOT NULL,
  `site_channel_preferences` text NOT NULL,
  `site_bootstrap_checksums` text NOT NULL,
  `site_pages` longtext,
  PRIMARY KEY (`site_id`),
  KEY `site_name` (`site_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `exp_sites` WRITE;
/*!40000 ALTER TABLE `exp_sites` DISABLE KEYS */;

INSERT INTO `exp_sites` (`site_id`, `site_label`, `site_name`, `site_description`, `site_system_preferences`, `site_mailinglist_preferences`, `site_member_preferences`, `site_template_preferences`, `site_channel_preferences`, `site_bootstrap_checksums`, `site_pages`)
VALUES
	(1,'Chard Snyder','default_site',NULL,'YTo4OTp7czoxMDoic2l0ZV9pbmRleCI7czowOiIiO3M6ODoic2l0ZV91cmwiO3M6MjQ6Imh0dHA6Ly9jaGFyZC1zbnlkZXIuZGV2LyI7czoxNjoidGhlbWVfZm9sZGVyX3VybCI7czozMToiaHR0cDovL2NoYXJkLXNueWRlci5kZXYvdGhlbWVzLyI7czoxNToid2VibWFzdGVyX2VtYWlsIjtzOjE1OiJqbGNvbGVtYUBtZS5jb20iO3M6MTQ6IndlYm1hc3Rlcl9uYW1lIjtzOjA6IiI7czoyMDoiY2hhbm5lbF9ub21lbmNsYXR1cmUiO3M6NzoiY2hhbm5lbCI7czoxMDoibWF4X2NhY2hlcyI7czozOiIxNTAiO3M6MTE6ImNhcHRjaGFfdXJsIjtzOjQwOiJodHRwOi8vY2hhcmQtc255ZGVyLmRldi9pbWFnZXMvY2FwdGNoYXMvIjtzOjEyOiJjYXB0Y2hhX3BhdGgiO3M6NTc6Ii9Vc2Vycy9Kb3NodWEvV29yay9DaGFyZCBTbnlkZXIvZGV2L2h0bWwvaW1hZ2VzL2NhcHRjaGFzLyI7czoxMjoiY2FwdGNoYV9mb250IjtzOjE6InkiO3M6MTI6ImNhcHRjaGFfcmFuZCI7czoxOiJ5IjtzOjIzOiJjYXB0Y2hhX3JlcXVpcmVfbWVtYmVycyI7czoxOiJuIjtzOjE3OiJlbmFibGVfZGJfY2FjaGluZyI7czoxOiJuIjtzOjE4OiJlbmFibGVfc3FsX2NhY2hpbmciO3M6MToibiI7czoxODoiZm9yY2VfcXVlcnlfc3RyaW5nIjtzOjE6Im4iO3M6MTM6InNob3dfcHJvZmlsZXIiO3M6MToibiI7czoxODoidGVtcGxhdGVfZGVidWdnaW5nIjtzOjE6Im4iO3M6MTU6ImluY2x1ZGVfc2Vjb25kcyI7czoxOiJuIjtzOjEzOiJjb29raWVfZG9tYWluIjtzOjA6IiI7czoxMToiY29va2llX3BhdGgiO3M6MDoiIjtzOjIwOiJ3ZWJzaXRlX3Nlc3Npb25fdHlwZSI7czoxOiJjIjtzOjE1OiJjcF9zZXNzaW9uX3R5cGUiO3M6MjoiY3MiO3M6MjE6ImFsbG93X3VzZXJuYW1lX2NoYW5nZSI7czoxOiJ5IjtzOjE4OiJhbGxvd19tdWx0aV9sb2dpbnMiO3M6MToieSI7czoxNjoicGFzc3dvcmRfbG9ja291dCI7czoxOiJ5IjtzOjI1OiJwYXNzd29yZF9sb2Nrb3V0X2ludGVydmFsIjtzOjE6IjEiO3M6MjA6InJlcXVpcmVfaXBfZm9yX2xvZ2luIjtzOjE6InkiO3M6MjI6InJlcXVpcmVfaXBfZm9yX3Bvc3RpbmciO3M6MToieSI7czoyNDoicmVxdWlyZV9zZWN1cmVfcGFzc3dvcmRzIjtzOjE6Im4iO3M6MTk6ImFsbG93X2RpY3Rpb25hcnlfcHciO3M6MToieSI7czoyMzoibmFtZV9vZl9kaWN0aW9uYXJ5X2ZpbGUiO3M6MDoiIjtzOjE3OiJ4c3NfY2xlYW5fdXBsb2FkcyI7czoxOiJ5IjtzOjE1OiJyZWRpcmVjdF9tZXRob2QiO3M6ODoicmVkaXJlY3QiO3M6OToiZGVmdF9sYW5nIjtzOjc6ImVuZ2xpc2giO3M6ODoieG1sX2xhbmciO3M6MjoiZW4iO3M6MTI6InNlbmRfaGVhZGVycyI7czoxOiJ5IjtzOjExOiJnemlwX291dHB1dCI7czoxOiJuIjtzOjEzOiJsb2dfcmVmZXJyZXJzIjtzOjE6Im4iO3M6MTM6Im1heF9yZWZlcnJlcnMiO3M6MzoiNTAwIjtzOjExOiJkYXRlX2Zvcm1hdCI7czo4OiIlbi8lai8lWSI7czoxMToidGltZV9mb3JtYXQiO3M6MjoiMTIiO3M6MTM6InNlcnZlcl9vZmZzZXQiO3M6MDoiIjtzOjIxOiJkZWZhdWx0X3NpdGVfdGltZXpvbmUiO3M6Mjg6IkFtZXJpY2EvSW5kaWFuYS9JbmRpYW5hcG9saXMiO3M6MTM6Im1haWxfcHJvdG9jb2wiO3M6NDoibWFpbCI7czoxMToic210cF9zZXJ2ZXIiO3M6MDoiIjtzOjEzOiJzbXRwX3VzZXJuYW1lIjtzOjA6IiI7czoxMzoic210cF9wYXNzd29yZCI7czowOiIiO3M6MTE6ImVtYWlsX2RlYnVnIjtzOjE6Im4iO3M6MTM6ImVtYWlsX2NoYXJzZXQiO3M6NToidXRmLTgiO3M6MTU6ImVtYWlsX2JhdGNobW9kZSI7czoxOiJuIjtzOjE2OiJlbWFpbF9iYXRjaF9zaXplIjtzOjA6IiI7czoxMToibWFpbF9mb3JtYXQiO3M6NToicGxhaW4iO3M6OToid29yZF93cmFwIjtzOjE6InkiO3M6MjI6ImVtYWlsX2NvbnNvbGVfdGltZWxvY2siO3M6MToiNSI7czoyMjoibG9nX2VtYWlsX2NvbnNvbGVfbXNncyI7czoxOiJ5IjtzOjg6ImNwX3RoZW1lIjtzOjc6ImRlZmF1bHQiO3M6MjE6ImVtYWlsX21vZHVsZV9jYXB0Y2hhcyI7czoxOiJuIjtzOjE2OiJsb2dfc2VhcmNoX3Rlcm1zIjtzOjE6InkiO3M6MTk6ImRlbnlfZHVwbGljYXRlX2RhdGEiO3M6MToieSI7czoyNDoicmVkaXJlY3Rfc3VibWl0dGVkX2xpbmtzIjtzOjE6Im4iO3M6MTY6ImVuYWJsZV9jZW5zb3JpbmciO3M6MToibiI7czoxNDoiY2Vuc29yZWRfd29yZHMiO3M6MDoiIjtzOjE4OiJjZW5zb3JfcmVwbGFjZW1lbnQiO3M6MDoiIjtzOjEwOiJiYW5uZWRfaXBzIjtzOjA6IiI7czoxMzoiYmFubmVkX2VtYWlscyI7czowOiIiO3M6MTY6ImJhbm5lZF91c2VybmFtZXMiO3M6MDoiIjtzOjE5OiJiYW5uZWRfc2NyZWVuX25hbWVzIjtzOjA6IiI7czoxMDoiYmFuX2FjdGlvbiI7czo4OiJyZXN0cmljdCI7czoxMToiYmFuX21lc3NhZ2UiO3M6MzQ6IlRoaXMgc2l0ZSBpcyBjdXJyZW50bHkgdW5hdmFpbGFibGUiO3M6MTU6ImJhbl9kZXN0aW5hdGlvbiI7czoyMToiaHR0cDovL3d3dy55YWhvby5jb20vIjtzOjE2OiJlbmFibGVfZW1vdGljb25zIjtzOjE6InkiO3M6MTI6ImVtb3RpY29uX3VybCI7czozOToiaHR0cDovL2NoYXJkLXNueWRlci5kZXYvaW1hZ2VzL3NtaWxleXMvIjtzOjE5OiJyZWNvdW50X2JhdGNoX3RvdGFsIjtzOjQ6IjEwMDAiO3M6MTc6Im5ld192ZXJzaW9uX2NoZWNrIjtzOjE6InkiO3M6MTc6ImVuYWJsZV90aHJvdHRsaW5nIjtzOjE6Im4iO3M6MTc6ImJhbmlzaF9tYXNrZWRfaXBzIjtzOjE6InkiO3M6MTQ6Im1heF9wYWdlX2xvYWRzIjtzOjI6IjEwIjtzOjEzOiJ0aW1lX2ludGVydmFsIjtzOjE6IjgiO3M6MTI6ImxvY2tvdXRfdGltZSI7czoyOiIzMCI7czoxNToiYmFuaXNobWVudF90eXBlIjtzOjc6Im1lc3NhZ2UiO3M6MTQ6ImJhbmlzaG1lbnRfdXJsIjtzOjA6IiI7czoxODoiYmFuaXNobWVudF9tZXNzYWdlIjtzOjUwOiJZb3UgaGF2ZSBleGNlZWRlZCB0aGUgYWxsb3dlZCBwYWdlIGxvYWQgZnJlcXVlbmN5LiI7czoxNzoiZW5hYmxlX3NlYXJjaF9sb2ciO3M6MToieSI7czoxOToibWF4X2xvZ2dlZF9zZWFyY2hlcyI7czozOiI1MDAiO3M6MTc6InRoZW1lX2ZvbGRlcl9wYXRoIjtzOjQ4OiIvVXNlcnMvSm9zaHVhL1dvcmsvQ2hhcmQgU255ZGVyL2Rldi9odG1sL3RoZW1lcy8iO3M6MTA6ImlzX3NpdGVfb24iO3M6MToieSI7czoxMToicnRlX2VuYWJsZWQiO3M6MToibiI7czoyMjoicnRlX2RlZmF1bHRfdG9vbHNldF9pZCI7czoxOiIxIjtzOjY6ImNwX3VybCI7czozMzoiaHR0cDovL2NoYXJkLXNueWRlci5kZXYvYWRtaW4ucGhwIjt9','YTozOntzOjE5OiJtYWlsaW5nbGlzdF9lbmFibGVkIjtzOjE6InkiO3M6MTg6Im1haWxpbmdsaXN0X25vdGlmeSI7czoxOiJuIjtzOjI1OiJtYWlsaW5nbGlzdF9ub3RpZnlfZW1haWxzIjtzOjA6IiI7fQ==','YTo0Njp7czoxMDoidW5fbWluX2xlbiI7czoxOiI0IjtzOjEwOiJwd19taW5fbGVuIjtzOjE6IjUiO3M6MjU6ImFsbG93X21lbWJlcl9yZWdpc3RyYXRpb24iO3M6MToibiI7czoyNToiYWxsb3dfbWVtYmVyX2xvY2FsaXphdGlvbiI7czoxOiJ5IjtzOjE4OiJyZXFfbWJyX2FjdGl2YXRpb24iO3M6NToiZW1haWwiO3M6MjM6Im5ld19tZW1iZXJfbm90aWZpY2F0aW9uIjtzOjE6Im4iO3M6MjM6Im1icl9ub3RpZmljYXRpb25fZW1haWxzIjtzOjA6IiI7czoyNDoicmVxdWlyZV90ZXJtc19vZl9zZXJ2aWNlIjtzOjE6InkiO3M6MjI6InVzZV9tZW1iZXJzaGlwX2NhcHRjaGEiO3M6MToibiI7czoyMDoiZGVmYXVsdF9tZW1iZXJfZ3JvdXAiO3M6MToiNSI7czoxNToicHJvZmlsZV90cmlnZ2VyIjtzOjY6Im1lbWJlciI7czoxMjoibWVtYmVyX3RoZW1lIjtzOjc6ImRlZmF1bHQiO3M6MTQ6ImVuYWJsZV9hdmF0YXJzIjtzOjE6InkiO3M6MjA6ImFsbG93X2F2YXRhcl91cGxvYWRzIjtzOjE6Im4iO3M6MTA6ImF2YXRhcl91cmwiO3M6Mzk6Imh0dHA6Ly9jaGFyZC1zbnlkZXIuZGV2L2ltYWdlcy9hdmF0YXJzLyI7czoxMToiYXZhdGFyX3BhdGgiO3M6NTY6Ii9Vc2Vycy9Kb3NodWEvV29yay9DaGFyZCBTbnlkZXIvZGV2L2h0bWwvaW1hZ2VzL2F2YXRhcnMvIjtzOjE2OiJhdmF0YXJfbWF4X3dpZHRoIjtzOjM6IjEwMCI7czoxNzoiYXZhdGFyX21heF9oZWlnaHQiO3M6MzoiMTAwIjtzOjEzOiJhdmF0YXJfbWF4X2tiIjtzOjI6IjUwIjtzOjEzOiJlbmFibGVfcGhvdG9zIjtzOjE6Im4iO3M6OToicGhvdG9fdXJsIjtzOjQ1OiJodHRwOi8vY2hhcmQtc255ZGVyLmRldi9pbWFnZXMvbWVtYmVyX3Bob3Rvcy8iO3M6MTA6InBob3RvX3BhdGgiO3M6NjI6Ii9Vc2Vycy9Kb3NodWEvV29yay9DaGFyZCBTbnlkZXIvZGV2L2h0bWwvaW1hZ2VzL21lbWJlcl9waG90b3MvIjtzOjE1OiJwaG90b19tYXhfd2lkdGgiO3M6MzoiMTAwIjtzOjE2OiJwaG90b19tYXhfaGVpZ2h0IjtzOjM6IjEwMCI7czoxMjoicGhvdG9fbWF4X2tiIjtzOjI6IjUwIjtzOjE2OiJhbGxvd19zaWduYXR1cmVzIjtzOjE6InkiO3M6MTM6InNpZ19tYXhsZW5ndGgiO3M6MzoiNTAwIjtzOjIxOiJzaWdfYWxsb3dfaW1nX2hvdGxpbmsiO3M6MToibiI7czoyMDoic2lnX2FsbG93X2ltZ191cGxvYWQiO3M6MToibiI7czoxMToic2lnX2ltZ191cmwiO3M6NTM6Imh0dHA6Ly9jaGFyZC1zbnlkZXIuZGV2L2ltYWdlcy9zaWduYXR1cmVfYXR0YWNobWVudHMvIjtzOjEyOiJzaWdfaW1nX3BhdGgiO3M6NzA6Ii9Vc2Vycy9Kb3NodWEvV29yay9DaGFyZCBTbnlkZXIvZGV2L2h0bWwvaW1hZ2VzL3NpZ25hdHVyZV9hdHRhY2htZW50cy8iO3M6MTc6InNpZ19pbWdfbWF4X3dpZHRoIjtzOjM6IjQ4MCI7czoxODoic2lnX2ltZ19tYXhfaGVpZ2h0IjtzOjI6IjgwIjtzOjE0OiJzaWdfaW1nX21heF9rYiI7czoyOiIzMCI7czoxNToicHJ2X21zZ19lbmFibGVkIjtzOjE6InkiO3M6MjU6InBydl9tc2dfYWxsb3dfYXR0YWNobWVudHMiO3M6MToieSI7czoxOToicHJ2X21zZ191cGxvYWRfcGF0aCI7czo2MzoiL1VzZXJzL0pvc2h1YS9Xb3JrL0NoYXJkIFNueWRlci9kZXYvaHRtbC9pbWFnZXMvcG1fYXR0YWNobWVudHMvIjtzOjIzOiJwcnZfbXNnX21heF9hdHRhY2htZW50cyI7czoxOiIzIjtzOjIyOiJwcnZfbXNnX2F0dGFjaF9tYXhzaXplIjtzOjM6IjI1MCI7czoyMDoicHJ2X21zZ19hdHRhY2hfdG90YWwiO3M6MzoiMTAwIjtzOjE5OiJwcnZfbXNnX2h0bWxfZm9ybWF0IjtzOjQ6InNhZmUiO3M6MTg6InBydl9tc2dfYXV0b19saW5rcyI7czoxOiJ5IjtzOjE3OiJwcnZfbXNnX21heF9jaGFycyI7czo0OiI2MDAwIjtzOjE5OiJtZW1iZXJsaXN0X29yZGVyX2J5IjtzOjExOiJ0b3RhbF9wb3N0cyI7czoyMToibWVtYmVybGlzdF9zb3J0X29yZGVyIjtzOjQ6ImRlc2MiO3M6MjA6Im1lbWJlcmxpc3Rfcm93X2xpbWl0IjtzOjI6IjIwIjt9','YTo3OntzOjIyOiJlbmFibGVfdGVtcGxhdGVfcm91dGVzIjtzOjE6InkiO3M6MTE6InN0cmljdF91cmxzIjtzOjE6InkiO3M6ODoic2l0ZV80MDQiO3M6OToiNDA0L2luZGV4IjtzOjE5OiJzYXZlX3RtcGxfcmV2aXNpb25zIjtzOjE6Im4iO3M6MTg6Im1heF90bXBsX3JldmlzaW9ucyI7czoxOiI1IjtzOjE1OiJzYXZlX3RtcGxfZmlsZXMiO3M6MToieSI7czoxODoidG1wbF9maWxlX2Jhc2VwYXRoIjtzOjUxOiIvVXNlcnMvSm9zaHVhL1dvcmsvQ2hhcmQgU255ZGVyL2Rldi9odG1sL3RlbXBsYXRlcy8iO30=','YTo5OntzOjIxOiJpbWFnZV9yZXNpemVfcHJvdG9jb2wiO3M6MzoiZ2QyIjtzOjE4OiJpbWFnZV9saWJyYXJ5X3BhdGgiO3M6MDoiIjtzOjE2OiJ0aHVtYm5haWxfcHJlZml4IjtzOjU6InRodW1iIjtzOjE0OiJ3b3JkX3NlcGFyYXRvciI7czo0OiJkYXNoIjtzOjE3OiJ1c2VfY2F0ZWdvcnlfbmFtZSI7czoxOiJuIjtzOjIyOiJyZXNlcnZlZF9jYXRlZ29yeV93b3JkIjtzOjg6ImNhdGVnb3J5IjtzOjIzOiJhdXRvX2NvbnZlcnRfaGlnaF9hc2NpaSI7czoxOiJuIjtzOjIyOiJuZXdfcG9zdHNfY2xlYXJfY2FjaGVzIjtzOjE6InkiO3M6MjM6ImF1dG9fYXNzaWduX2NhdF9wYXJlbnRzIjtzOjE6InkiO30=','YToyOntzOjUwOiIvVXNlcnMvSm9zaHVhL1dvcmsvQ2hhcmQgU255ZGVyL2Rldi9odG1sL2luZGV4LnBocCI7czozMjoiZDc1Y2RmODYzNjgzMDRkNmFiNTkwNzUzOGRjYTAzNzEiO3M6NzoiZW1haWxlZCI7YTowOnt9fQ==','YToxOntpOjE7YTozOntzOjM6InVybCI7czoyNDoiaHR0cDovL2NoYXJkLXNueWRlci5kZXYvIjtzOjQ6InVyaXMiO2E6NzU6e2k6MTtzOjk6Ii9iZW5lZml0cyI7aToyO3M6Mzk6Ii9iZW5lZml0cy9mbGV4aWJsZS1zcGVuZGluZy1hY2NvdW50LWZzYSI7aTozO3M6Njg6Ii9iZW5lZml0cy9mbGV4aWJsZS1zcGVuZGluZy1hY2NvdW50LWZzYS9oZWFsdGhjYXJlLWVsaWdpYmxlLWV4cGVuc2VzIjtpOjQ7czo3NToiL2JlbmVmaXRzL2ZsZXhpYmxlLXNwZW5kaW5nLWFjY291bnQtZnNhL2RlcGVuZGVudC1kYXljYXJlLWVsaWdpYmxlLWV4cGVuc2VzIjtpOjU7czo2NToiL2JlbmVmaXRzL2ZsZXhpYmxlLXNwZW5kaW5nLWFjY291bnQtZnNhL2xpbWl0ZWQtZWxpZ2libGUtZXhwZW5zZXMiO2k6NjtzOjQ5OiIvYmVuZWZpdHMvZmxleGlibGUtc3BlbmRpbmctYWNjb3VudC1mc2EvZnNhLXN0b3JlIjtpOjc7czo0NjoiL2JlbmVmaXRzL2hlYWx0aC1yZWltYnVyc2VtZW50LWFycmFuZ2VtZW50LWhyYSI7aTo4O3M6Njc6Ii9iZW5lZml0cy9oZWFsdGgtcmVpbWJ1cnNlbWVudC1hcnJhbmdlbWVudC1ocmEvaHJhLXBsYW4tZGVzY3JpcHRpb24iO2k6OTtzOjM2OiIvYmVuZWZpdHMvaGVhbHRoLXNhdmluZ3MtYWNjb3VudC1oc2EiO2k6MTA7czo1MDoiL2JlbmVmaXRzL2hlYWx0aC1zYXZpbmdzLWFjY291bnQtaHNhL2hzYS1hZHZhbnRhZ2UiO2k6MTE7czo1NzoiL2JlbmVmaXRzL2hlYWx0aC1zYXZpbmdzLWFjY291bnQtaHNhL2ZpZnRoLXRoaXJkLWJhbmstaHNhIjtpOjEyO3M6NDQ6Ii9iZW5lZml0cy9oZWFsdGgtc2F2aW5ncy1hY2NvdW50LWhzYS9iYnQtaHNhIjtpOjEzO3M6NDY6Ii9iZW5lZml0cy9oZWFsdGgtc2F2aW5ncy1hY2NvdW50LWhzYS9oc2Etc3RvcmUiO2k6MTQ7czozNjoiL2JlbmVmaXRzL3RyYW5zcG9ydGF0aW9uLXBhcmtpbmctdHJwIjtpOjE1O3M6NzY6Ii9iZW5lZml0cy90cmFuc3BvcnRhdGlvbi1wYXJraW5nLXRycC90cmFuc3BvcnRhdGlvbi1wYXJraW5nLXBsYW4tZGVzY3JpcHRpb24iO2k6MTY7czozMToiL2JlbmVmaXRzL3ByZXBhaWQtYmVuZWZpdHMtY2FyZCI7aToxNztzOjMyOiIvYmVuZWZpdHMvcGxhbi1kb2N1bWVudC1zZXJ2aWNlcyI7aToxODtzOjQ3OiIvYmVuZWZpdHMvcGxhbi1kb2N1bWVudC1zZXJ2aWNlcy93cmFwLWRvY3VtZW50cyI7aToxOTtzOjU1OiIvYmVuZWZpdHMvcGxhbi1kb2N1bWVudC1zZXJ2aWNlcy9wcmVtaXVtLW9ubHktcGxhbnMtcG9wIjtpOjIwO3M6Njc6Ii9iZW5lZml0cy9wbGFuLWRvY3VtZW50LXNlcnZpY2VzL3BsYW4tc3BlY2lmaWMtZG9jdW1lbnRzLW9yLXRlc3RpbmciO2k6MjE7czoyMzoiL2JlbmVmaXRzL2NvYnJhLWJpbGxpbmciO2k6MjI7czo1MToiL2JlbmVmaXRzL2NvYnJhLWJpbGxpbmcvY29icmEtaW5mb3JtYXRpb24tcmVzb3VyY2VzIjtpOjIzO3M6NDg6Ii9iZW5lZml0cy9jb2JyYS1iaWxsaW5nL2NoYXJkLXNueWRlci1tYXJrZXRwbGFjZSI7aToyNDtzOjM5OiIvYmVuZWZpdHMvZmFtaWx5LW1lZGljYWwtbGVhdmUtYWN0LWZtbGEiO2k6MjU7czoyMzoiL2VtcGxveWVycy1hbmQtYWR2aXNvcnMiO2k6MjY7czozODoiL2VtcGxveWVycy1hbmQtYWR2aXNvcnMvb3VyLWRpZmZlcmVuY2UiO2k6Mjc7czo0MjoiL2VtcGxveWVycy1hbmQtYWR2aXNvcnMvb3VyLXBsYW5zLXNlcnZpY2VzIjtpOjI4O3M6NDI6Ii9lbXBsb3llcnMtYW5kLWFkdmlzb3JzL2VtcGxveWVyLXJlc291cmNlcyI7aToyOTtzOjQyOiIvZW1wbG95ZXJzLWFuZC1hZHZpc29ycy9yZXF1ZXN0LWEtcHJvcG9zYWwiO2k6OTg7czo3MToiL2VtcGxveWVycy1hbmQtYWR2aXNvcnMvcmVxdWVzdC1hLXByb3Bvc2FsL3JlcXVlc3QtYS1wcm9wb3NhbC10aGFuay15b3UiO2k6MzA7czozODoiL2VtcGxveWVycy1hbmQtYWR2aXNvcnMvcmVxdWVzdC1hLWRlbW8iO2k6OTk7czo2MzoiL2VtcGxveWVycy1hbmQtYWR2aXNvcnMvcmVxdWVzdC1hLWRlbW8vcmVxdWVzdC1hLWRlbW8tdGhhbmsteW91IjtpOjMxO3M6MTU6Ii9zdXBwb3J0LWNlbnRlciI7aTo4OTtzOjIwOiIvc3VwcG9ydC1jZW50ZXIvZmFxcyI7aTo5MDtzOjIyOiIvc3VwcG9ydC1jZW50ZXIvdmlkZW9zIjtpOjkxO3M6MzU6Ii9zdXBwb3J0LWNlbnRlci9mb3Jtcy1hbmQtcmVzb3VyY2VzIjtpOjkyO3M6MzA6Ii9zdXBwb3J0LWNlbnRlci90b29scy1hbmQtYXBwcyI7aTo5MztzOjMyOiIvc3VwcG9ydC1jZW50ZXIvY29tcGxpYW5jZS13YXRjaCI7aTozNztzOjY6Ii9hYm91dCI7aTozODtzOjIxOiIvYWJvdXQvb3VyLWxlYWRlcnNoaXAiO2k6NjE7czo4MDoiL2Fib3V0L291ci1sZWFkZXJzaGlwL2Jpby1vbmUvYmlvLW9uZS9iaW8tdGhyZWUvYmlvLXR3by9iaW8tdHdvL2Jpby1mb3VyL2Jpby1vbmUiO2k6NjM7czo4MjoiL2Fib3V0L291ci1sZWFkZXJzaGlwL2Jpby1vbmUvYmlvLW9uZS9iaW8tdGhyZWUvYmlvLXR3by9iaW8tdHdvL2Jpby1mb3VyL2Jpby10aHJlZSI7aTo2MjtzOjgwOiIvYWJvdXQvb3VyLWxlYWRlcnNoaXAvYmlvLW9uZS9iaW8tb25lL2Jpby10aHJlZS9iaW8tdHdvL2Jpby10d28vYmlvLWZvdXIvYmlvLXR3byI7aTo4ODtzOjgxOiIvYWJvdXQvb3VyLWxlYWRlcnNoaXAvYmlvLW9uZS9iaW8tb25lL2Jpby10aHJlZS9iaW8tdHdvL2Jpby10d28vYmlvLWZvdXIvYmlvLWZvdXIiO2k6Mzk7czoxNDoiL2Fib3V0L2NhcmVlcnMiO2k6NDA7czoyMjoiL2Fib3V0L25ld3MtYW5kLWV2ZW50cyI7aTo4NztzOjI0OiIvYWJvdXQvaW5kdXN0cnktcGFydG5lcnMiO2k6NDI7czoyODoiL2Fib3V0L2NvbW11bml0eS1pbnZvbHZlbWVudCI7aTo0MztzOjE5OiIvYWJvdXQvdGVzdGltb25pYWxzIjtpOjQ1O3M6MjE6Ii9hYm91dC9wcml2YWN5LXBvbGljeSI7aTo0NDtzOjE0OiIvYWJvdXQvY29udGFjdCI7aTo5NTtzOjMyOiIvYWJvdXQvY29udGFjdC9jb250YWN0LXRoYW5rLXlvdSI7aTo0NjtzOjMzOiIvc3VwcG9ydC1jZW50ZXIvZmFxcy9xdWVzdGlvbi1vbmUiO2k6NDc7czozMzoiL3N1cHBvcnQtY2VudGVyL2ZhcXMvcXVlc3Rpb24tdHdvIjtpOjQ4O3M6MzU6Ii9zdXBwb3J0LWNlbnRlci9mYXFzL3F1ZXN0aW9uLXRocmVlIjtpOjQ5O3M6MzI6Ii9zdXBwb3J0LWNlbnRlci92aWRlb3MvdmlkZW8tb25lIjtpOjUwO3M6MzI6Ii9zdXBwb3J0LWNlbnRlci92aWRlb3MvdmlkZW8tdHdvIjtpOjUxO3M6MzQ6Ii9zdXBwb3J0LWNlbnRlci92aWRlb3MvdmlkZW8tdGhyZWUiO2k6NTI7czo1NzoiL3N1cHBvcnQtY2VudGVyL2Zvcm1zLWFuZC1yZXNvdXJjZXMvZm9ybS1hbmQtcmVzb3VyY2Utb25lIjtpOjUzO3M6NTc6Ii9zdXBwb3J0LWNlbnRlci9mb3Jtcy1hbmQtcmVzb3VyY2VzL2Zvcm0tYW5kLXJlc291cmNlLXR3byI7aTo1NDtzOjU5OiIvc3VwcG9ydC1jZW50ZXIvZm9ybXMtYW5kLXJlc291cmNlcy9mb3JtLWFuZC1yZXNvdXJjZS10aHJlZSI7aTo1NTtzOjQ3OiIvc3VwcG9ydC1jZW50ZXIvdG9vbHMtYW5kLWFwcHMvdG9vbC1hbmQtYXBwLW9uZSI7aTo1NjtzOjQ3OiIvc3VwcG9ydC1jZW50ZXIvdG9vbHMtYW5kLWFwcHMvdG9vbC1hbmQtYXBwLXR3byI7aTo1NztzOjQ5OiIvc3VwcG9ydC1jZW50ZXIvdG9vbHMtYW5kLWFwcHMvdG9vbC1hbmQtYXBwLXRocmVlIjtpOjU4O3M6NTM6Ii9zdXBwb3J0LWNlbnRlci9jb21wbGlhbmNlLXdhdGNoL2NvbXBsaWFuY2Utd2F0Y2gtb25lIjtpOjU5O3M6NTM6Ii9zdXBwb3J0LWNlbnRlci9jb21wbGlhbmNlLXdhdGNoL2NvbXBsaWFuY2Utd2F0Y2gtdHdvIjtpOjYwO3M6NTU6Ii9zdXBwb3J0LWNlbnRlci9jb21wbGlhbmNlLXdhdGNoL2NvbXBsaWFuY2Utd2F0Y2gtdGhyZWUiO2k6NjQ7czoyNToiL2Fib3V0L2NhcmVlcnMvY2FyZWVyLW9uZSI7aTo2NTtzOjI1OiIvYWJvdXQvY2FyZWVycy9jYXJlZXItdHdvIjtpOjY2O3M6Mjc6Ii9hYm91dC9jYXJlZXJzL2NhcmVlci10aHJlZSI7aTo2NztzOjM0OiIvYWJvdXQvbmV3cy1hbmQtZXZlbnRzL2FydGljbGUtb25lIjtpOjY4O3M6MzQ6Ii9hYm91dC9uZXdzLWFuZC1ldmVudHMvYXJ0aWNsZS10d28iO2k6Njk7czozNjoiL2Fib3V0L25ld3MtYW5kLWV2ZW50cy9hcnRpY2xlLXRocmVlIjtpOjEwMztzOjI2OiIvY2xpZW50cy9ib3N0b24tc2NpZW50aWZpYyI7aToxMDQ7czo4OiIvY2xpZW50cyI7fXM6OToidGVtcGxhdGVzIjthOjc1OntpOjE7czoyOiI1NSI7aToyO3M6MjoiNTUiO2k6MztzOjI6IjU1IjtpOjQ7czoyOiI1NSI7aTo1O3M6MjoiNTUiO2k6NjtzOjI6IjQ2IjtpOjc7czoyOiI1NSI7aTo4O3M6MjoiNTUiO2k6OTtzOjI6IjU1IjtpOjEwO3M6MjoiNTUiO2k6MTE7czoyOiI1NSI7aToxMjtzOjI6IjU1IjtpOjEzO3M6MjoiNDYiO2k6MTQ7czoyOiI1NSI7aToxNTtzOjI6IjU1IjtpOjE2O3M6MjoiNTUiO2k6MTc7czoyOiI1NSI7aToxODtzOjI6IjU1IjtpOjE5O3M6MjoiNTUiO2k6MjA7czoyOiI1NSI7aToyMTtzOjI6IjU1IjtpOjIyO3M6MjoiNTUiO2k6MjM7czoyOiI1NSI7aToyNDtzOjI6IjU1IjtpOjI1O3M6MjoiNTUiO2k6MjY7czoyOiI1NSI7aToyNztzOjI6IjU1IjtpOjI4O3M6MjoiNTUiO2k6Mjk7czoyOiI1NyI7aTozMDtzOjI6IjU2IjtpOjMxO3M6MjoiNjIiO2k6Mzc7czoyOiI1NSI7aTozODtzOjI6IjU0IjtpOjM5O3M6MjoiNDQiO2k6NDA7czoyOiI1MiI7aTo0MjtzOjI6IjU1IjtpOjQzO3M6MjoiNjQiO2k6NDQ7czoyOiI0NSI7aTo0NTtzOjI6IjU1IjtpOjg3O3M6MjoiNTUiO2k6NjE7czoyOiI1MyI7aTo2MjtzOjI6IjUzIjtpOjYzO3M6MjoiNTMiO2k6ODg7czoyOiI1MyI7aTo2NDtzOjI6IjQzIjtpOjY1O3M6MjoiNDMiO2k6NjY7czoyOiI0MyI7aTo2NztzOjI6IjUxIjtpOjY4O3M6MjoiNTEiO2k6Njk7czoyOiI1MSI7aTo1ODtzOjI6IjYxIjtpOjU5O3M6MjoiNjEiO2k6NjA7czoyOiI2MSI7aTo1NTtzOjI6IjYxIjtpOjU2O3M6MjoiNjEiO2k6NTc7czoyOiI2MSI7aTo1MjtzOjI6IjYxIjtpOjUzO3M6MjoiNjEiO2k6NTQ7czoyOiI2MSI7aTo0OTtzOjI6IjYxIjtpOjUwO3M6MjoiNjEiO2k6NTE7czoyOiI2MSI7aTo4OTtzOjI6IjYzIjtpOjkzO3M6MjoiNjMiO2k6OTI7czoyOiI2MyI7aTo5MTtzOjI6IjYzIjtpOjkwO3M6MjoiNjMiO2k6OTU7czoyOiI2OSI7aTo0NjtzOjI6IjYxIjtpOjQ3O3M6MjoiNjEiO2k6NDg7czoyOiI2MSI7aTo5ODtzOjI6IjU1IjtpOjk5O3M6MjoiNTUiO2k6MTAzO3M6MzoiMTAxIjtpOjEwNDtzOjM6IjEwMiI7fX19');

/*!40000 ALTER TABLE `exp_sites` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table exp_snippets
# ------------------------------------------------------------

DROP TABLE IF EXISTS `exp_snippets`;

CREATE TABLE `exp_snippets` (
  `snippet_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `site_id` int(4) NOT NULL,
  `snippet_name` varchar(75) NOT NULL,
  `snippet_contents` text,
  PRIMARY KEY (`snippet_id`),
  KEY `site_id` (`site_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table exp_specialty_templates
# ------------------------------------------------------------

DROP TABLE IF EXISTS `exp_specialty_templates`;

CREATE TABLE `exp_specialty_templates` (
  `template_id` int(6) unsigned NOT NULL AUTO_INCREMENT,
  `site_id` int(4) unsigned NOT NULL DEFAULT '1',
  `enable_template` char(1) NOT NULL DEFAULT 'y',
  `template_name` varchar(50) NOT NULL,
  `data_title` varchar(80) NOT NULL,
  `template_data` text NOT NULL,
  PRIMARY KEY (`template_id`),
  KEY `template_name` (`template_name`),
  KEY `site_id` (`site_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `exp_specialty_templates` WRITE;
/*!40000 ALTER TABLE `exp_specialty_templates` DISABLE KEYS */;

INSERT INTO `exp_specialty_templates` (`template_id`, `site_id`, `enable_template`, `template_name`, `data_title`, `template_data`)
VALUES
	(1,1,'y','offline_template','','<html>\n<head>\n\n<title>System Offline</title>\n\n<style type=\"text/css\">\n\nbody {\nbackground-color:	#ffffff;\nmargin:				50px;\nfont-family:		Verdana, Arial, Tahoma, Trebuchet MS, Sans-serif;\nfont-size:			11px;\ncolor:				#000;\nbackground-color:	#fff;\n}\n\na {\nfont-family:		Verdana, Arial, Tahoma, Trebuchet MS, Sans-serif;\nfont-weight:		bold;\nletter-spacing:		.09em;\ntext-decoration:	none;\ncolor:			  #330099;\nbackground-color:	transparent;\n}\n\na:visited {\ncolor:				#330099;\nbackground-color:	transparent;\n}\n\na:hover {\ncolor:				#000;\ntext-decoration:	underline;\nbackground-color:	transparent;\n}\n\n#content  {\nborder:				#999999 1px solid;\npadding:			22px 25px 14px 25px;\n}\n\nh1 {\nfont-family:		Verdana, Arial, Tahoma, Trebuchet MS, Sans-serif;\nfont-weight:		bold;\nfont-size:			14px;\ncolor:				#000;\nmargin-top: 		0;\nmargin-bottom:		14px;\n}\n\np {\nfont-family:		Verdana, Arial, Tahoma, Trebuchet MS, Sans-serif;\nfont-size: 			12px;\nfont-weight: 		normal;\nmargin-top: 		12px;\nmargin-bottom: 		14px;\ncolor: 				#000;\n}\n</style>\n\n</head>\n\n<body>\n\n<div id=\"content\">\n\n<h1>System Offline</h1>\n\n<p>This site is currently offline</p>\n\n</div>\n\n</body>\n\n</html>'),
	(2,1,'y','message_template','','<html>\n<head>\n\n<title>{title}</title>\n\n<meta http-equiv=\'content-type\' content=\'text/html; charset={charset}\' />\n\n{meta_refresh}\n\n<style type=\"text/css\">\n\nbody {\nbackground-color:	#ffffff;\nmargin:				50px;\nfont-family:		Verdana, Arial, Tahoma, Trebuchet MS, Sans-serif;\nfont-size:			11px;\ncolor:				#000;\nbackground-color:	#fff;\n}\n\na {\nfont-family:		Verdana, Arial, Tahoma, Trebuchet MS, Sans-serif;\nletter-spacing:		.09em;\ntext-decoration:	none;\ncolor:			  #330099;\nbackground-color:	transparent;\n}\n\na:visited {\ncolor:				#330099;\nbackground-color:	transparent;\n}\n\na:active {\ncolor:				#ccc;\nbackground-color:	transparent;\n}\n\na:hover {\ncolor:				#000;\ntext-decoration:	underline;\nbackground-color:	transparent;\n}\n\n#content  {\nborder:				#000 1px solid;\nbackground-color: 	#DEDFE3;\npadding:			22px 25px 14px 25px;\n}\n\nh1 {\nfont-family:		Verdana, Arial, Tahoma, Trebuchet MS, Sans-serif;\nfont-weight:		bold;\nfont-size:			14px;\ncolor:				#000;\nmargin-top: 		0;\nmargin-bottom:		14px;\n}\n\np {\nfont-family:		Verdana, Arial, Tahoma, Trebuchet MS, Sans-serif;\nfont-size: 			12px;\nfont-weight: 		normal;\nmargin-top: 		12px;\nmargin-bottom: 		14px;\ncolor: 				#000;\n}\n\nul {\nmargin-bottom: 		16px;\n}\n\nli {\nlist-style:			square;\nfont-family:		Verdana, Arial, Tahoma, Trebuchet MS, Sans-serif;\nfont-size: 			12px;\nfont-weight: 		normal;\nmargin-top: 		8px;\nmargin-bottom: 		8px;\ncolor: 				#000;\n}\n\n</style>\n\n</head>\n\n<body>\n\n<div id=\"content\">\n\n<h1>{heading}</h1>\n\n{content}\n\n<p>{link}</p>\n\n</div>\n\n</body>\n\n</html>'),
	(3,1,'y','admin_notify_reg','Notification of new member registration','New member registration site: {site_name}\n\nScreen name: {name}\nUser name: {username}\nEmail: {email}\n\nYour control panel URL: {control_panel_url}'),
	(4,1,'y','admin_notify_entry','A new channel entry has been posted','A new entry has been posted in the following channel:\n{channel_name}\n\nThe title of the entry is:\n{entry_title}\n\nPosted by: {name}\nEmail: {email}\n\nTo read the entry please visit:\n{entry_url}\n'),
	(5,1,'y','admin_notify_mailinglist','Someone has subscribed to your mailing list','A new mailing list subscription has been accepted.\n\nEmail Address: {email}\nMailing List: {mailing_list}'),
	(6,1,'y','admin_notify_comment','You have just received a comment','You have just received a comment for the following channel:\n{channel_name}\n\nThe title of the entry is:\n{entry_title}\n\nLocated at:\n{comment_url}\n\nPosted by: {name}\nEmail: {email}\nURL: {url}\nLocation: {location}\n\n{comment}'),
	(7,1,'y','mbr_activation_instructions','Enclosed is your activation code','Thank you for your new member registration.\n\nTo activate your new account, please visit the following URL:\n\n{unwrap}{activation_url}{/unwrap}\n\nThank You!\n\n{site_name}\n\n{site_url}'),
	(8,1,'y','forgot_password_instructions','Login information','{name},\n\nTo reset your password, please go to the following page:\n\n{reset_url}\n\nThen log in with your username: {username}\n\nIf you do not wish to reset your password, ignore this message. It will expire in 24 hours.\n\n{site_name}\n{site_url}'),
	(9,1,'y','validated_member_notify','Your membership account has been activated','{name},\n\nYour membership account has been activated and is ready for use.\n\nThank You!\n\n{site_name}\n{site_url}'),
	(10,1,'y','decline_member_validation','Your membership account has been declined','{name},\n\nWe\'re sorry but our staff has decided not to validate your membership.\n\n{site_name}\n{site_url}'),
	(11,1,'y','mailinglist_activation_instructions','Email Confirmation','Thank you for joining the \"{mailing_list}\" mailing list!\n\nPlease click the link below to confirm your email.\n\nIf you do not want to be added to our list, ignore this email.\n\n{unwrap}{activation_url}{/unwrap}\n\nThank You!\n\n{site_name}'),
	(12,1,'y','comment_notification','Someone just responded to your comment','{name_of_commenter} just responded to the entry you subscribed to at:\n{channel_name}\n\nThe title of the entry is:\n{entry_title}\n\nYou can see the comment at the following URL:\n{comment_url}\n\n{comment}\n\nTo stop receiving notifications for this comment, click here:\n{notification_removal_url}'),
	(13,1,'y','comments_opened_notification','New comments have been added','Responses have been added to the entry you subscribed to at:\n{channel_name}\n\nThe title of the entry is:\n{entry_title}\n\nYou can see the comments at the following URL:\n{comment_url}\n\n{comments}\n{comment}\n{/comments}\n\nTo stop receiving notifications for this entry, click here:\n{notification_removal_url}'),
	(14,1,'y','private_message_notification','Someone has sent you a Private Message','\n{recipient_name},\n\n{sender_name} has just sent you a Private Message titled ‘{message_subject}’.\n\nYou can see the Private Message by logging in and viewing your inbox at:\n{site_url}\n\nContent:\n\n{message_content}\n\nTo stop receiving notifications of Private Messages, turn the option off in your Email Settings.\n\n{site_name}\n{site_url}'),
	(15,1,'y','pm_inbox_full','Your private message mailbox is full','{recipient_name},\n\n{sender_name} has just attempted to send you a Private Message,\nbut your inbox is full, exceeding the maximum of {pm_storage_limit}.\n\nPlease log in and remove unwanted messages from your inbox at:\n{site_url}');

/*!40000 ALTER TABLE `exp_specialty_templates` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table exp_stats
# ------------------------------------------------------------

DROP TABLE IF EXISTS `exp_stats`;

CREATE TABLE `exp_stats` (
  `stat_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `site_id` int(4) unsigned NOT NULL DEFAULT '1',
  `total_members` mediumint(7) NOT NULL DEFAULT '0',
  `recent_member_id` int(10) NOT NULL DEFAULT '0',
  `recent_member` varchar(50) NOT NULL,
  `total_entries` mediumint(8) NOT NULL DEFAULT '0',
  `total_forum_topics` mediumint(8) NOT NULL DEFAULT '0',
  `total_forum_posts` mediumint(8) NOT NULL DEFAULT '0',
  `total_comments` mediumint(8) NOT NULL DEFAULT '0',
  `last_entry_date` int(10) unsigned NOT NULL DEFAULT '0',
  `last_forum_post_date` int(10) unsigned NOT NULL DEFAULT '0',
  `last_comment_date` int(10) unsigned NOT NULL DEFAULT '0',
  `last_visitor_date` int(10) unsigned NOT NULL DEFAULT '0',
  `most_visitors` mediumint(7) NOT NULL DEFAULT '0',
  `most_visitor_date` int(10) unsigned NOT NULL DEFAULT '0',
  `last_cache_clear` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`stat_id`),
  KEY `site_id` (`site_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `exp_stats` WRITE;
/*!40000 ALTER TABLE `exp_stats` DISABLE KEYS */;

INSERT INTO `exp_stats` (`stat_id`, `site_id`, `total_members`, `recent_member_id`, `recent_member`, `total_entries`, `total_forum_topics`, `total_forum_posts`, `total_comments`, `last_entry_date`, `last_forum_post_date`, `last_comment_date`, `last_visitor_date`, `most_visitors`, `most_visitor_date`, `last_cache_clear`)
VALUES
	(1,1,1,1,'joshua',96,0,0,0,1457115600,0,0,1476306691,15,1455050555,1476911486);

/*!40000 ALTER TABLE `exp_stats` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table exp_status_groups
# ------------------------------------------------------------

DROP TABLE IF EXISTS `exp_status_groups`;

CREATE TABLE `exp_status_groups` (
  `group_id` int(4) unsigned NOT NULL AUTO_INCREMENT,
  `site_id` int(4) unsigned NOT NULL DEFAULT '1',
  `group_name` varchar(50) NOT NULL,
  PRIMARY KEY (`group_id`),
  KEY `site_id` (`site_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `exp_status_groups` WRITE;
/*!40000 ALTER TABLE `exp_status_groups` DISABLE KEYS */;

INSERT INTO `exp_status_groups` (`group_id`, `site_id`, `group_name`)
VALUES
	(1,1,'Statuses'),
	(2,1,'Alerts');

/*!40000 ALTER TABLE `exp_status_groups` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table exp_status_no_access
# ------------------------------------------------------------

DROP TABLE IF EXISTS `exp_status_no_access`;

CREATE TABLE `exp_status_no_access` (
  `status_id` int(6) unsigned NOT NULL,
  `member_group` smallint(4) unsigned NOT NULL,
  PRIMARY KEY (`status_id`,`member_group`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table exp_statuses
# ------------------------------------------------------------

DROP TABLE IF EXISTS `exp_statuses`;

CREATE TABLE `exp_statuses` (
  `status_id` int(6) unsigned NOT NULL AUTO_INCREMENT,
  `site_id` int(4) unsigned NOT NULL DEFAULT '1',
  `group_id` int(4) unsigned NOT NULL,
  `status` varchar(50) NOT NULL,
  `status_order` int(3) unsigned NOT NULL,
  `highlight` varchar(30) NOT NULL,
  PRIMARY KEY (`status_id`),
  KEY `group_id` (`group_id`),
  KEY `site_id` (`site_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `exp_statuses` WRITE;
/*!40000 ALTER TABLE `exp_statuses` DISABLE KEYS */;

INSERT INTO `exp_statuses` (`status_id`, `site_id`, `group_id`, `status`, `status_order`, `highlight`)
VALUES
	(1,1,1,'open',1,'009933'),
	(2,1,1,'closed',2,'990000'),
	(3,1,2,'open',1,'009933'),
	(4,1,2,'closed',2,'990000');

/*!40000 ALTER TABLE `exp_statuses` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table exp_structure
# ------------------------------------------------------------

DROP TABLE IF EXISTS `exp_structure`;

CREATE TABLE `exp_structure` (
  `site_id` int(4) unsigned NOT NULL DEFAULT '1',
  `entry_id` int(10) unsigned NOT NULL DEFAULT '0',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `channel_id` int(6) unsigned NOT NULL DEFAULT '0',
  `listing_cid` int(6) unsigned NOT NULL DEFAULT '0',
  `lft` smallint(5) unsigned NOT NULL DEFAULT '0',
  `rgt` smallint(5) unsigned NOT NULL DEFAULT '0',
  `dead` varchar(100) NOT NULL,
  `hidden` char(1) NOT NULL DEFAULT 'n',
  PRIMARY KEY (`entry_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `exp_structure` WRITE;
/*!40000 ALTER TABLE `exp_structure` DISABLE KEYS */;

INSERT INTO `exp_structure` (`site_id`, `entry_id`, `parent_id`, `channel_id`, `listing_cid`, `lft`, `rgt`, `dead`, `hidden`)
VALUES
	(0,0,0,0,0,1,108,'root','n'),
	(1,1,0,3,0,2,49,'','n'),
	(1,2,1,3,0,3,12,'','n'),
	(1,3,2,3,0,4,5,'','n'),
	(1,4,2,3,0,6,7,'','n'),
	(1,5,2,3,0,8,9,'','n'),
	(1,6,2,4,0,10,11,'','n'),
	(1,7,1,3,0,13,16,'','n'),
	(1,8,7,3,0,14,15,'','n'),
	(1,9,1,3,0,17,26,'','n'),
	(1,10,9,3,0,18,19,'','n'),
	(1,11,9,3,0,20,21,'','n'),
	(1,12,9,3,0,22,23,'','n'),
	(1,13,9,4,0,24,25,'','n'),
	(1,14,1,3,0,27,30,'','n'),
	(1,15,14,3,0,28,29,'','n'),
	(1,16,1,3,0,31,32,'','n'),
	(1,17,1,3,0,33,40,'','n'),
	(1,18,17,3,0,34,35,'','n'),
	(1,19,17,3,0,36,37,'','n'),
	(1,20,17,3,0,38,39,'','n'),
	(1,21,1,3,0,41,46,'','n'),
	(1,22,21,3,0,42,43,'','n'),
	(1,23,21,3,0,44,45,'','n'),
	(1,24,1,3,0,47,48,'','n'),
	(1,25,0,3,0,50,65,'','n'),
	(1,26,25,3,0,51,52,'','n'),
	(1,27,25,3,0,53,54,'','n'),
	(1,28,25,3,0,55,56,'','n'),
	(1,29,25,3,0,57,60,'','n'),
	(1,30,25,3,0,61,64,'','n'),
	(1,31,0,5,0,66,77,'','n'),
	(1,37,0,3,0,78,105,'','n'),
	(1,38,37,16,17,79,88,'','n'),
	(1,39,37,18,19,89,90,'','n'),
	(1,40,37,20,21,91,92,'','n'),
	(1,41,37,22,0,93,94,'','n'),
	(1,42,37,3,0,95,96,'','n'),
	(1,43,37,23,0,97,98,'','n'),
	(1,44,37,25,0,101,104,'','n'),
	(1,45,37,3,0,99,100,'','y'),
	(1,87,37,3,0,93,94,'','n'),
	(1,98,29,3,0,58,59,'','y'),
	(1,89,31,29,7,67,68,'','n'),
	(1,93,31,29,15,75,76,'','n'),
	(1,92,31,29,13,73,74,'','n'),
	(1,91,31,29,11,71,72,'','n'),
	(1,90,31,29,9,69,70,'','n'),
	(1,95,44,3,0,102,103,'','y'),
	(1,99,30,3,0,62,63,'','y'),
	(1,61,38,17,0,80,81,'','n'),
	(1,63,38,17,0,82,83,'','n'),
	(1,62,38,17,0,84,85,'','n'),
	(1,88,38,17,0,86,87,'','n'),
	(1,104,0,33,32,106,107,'','n');

/*!40000 ALTER TABLE `exp_structure` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table exp_structure_channels
# ------------------------------------------------------------

DROP TABLE IF EXISTS `exp_structure_channels`;

CREATE TABLE `exp_structure_channels` (
  `site_id` smallint(5) unsigned NOT NULL,
  `channel_id` mediumint(8) unsigned NOT NULL,
  `template_id` int(10) unsigned NOT NULL,
  `type` enum('page','listing','asset','unmanaged') NOT NULL DEFAULT 'unmanaged',
  `split_assets` enum('y','n') NOT NULL DEFAULT 'n',
  `show_in_page_selector` char(1) NOT NULL DEFAULT 'y',
  PRIMARY KEY (`site_id`,`channel_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `exp_structure_channels` WRITE;
/*!40000 ALTER TABLE `exp_structure_channels` DISABLE KEYS */;

INSERT INTO `exp_structure_channels` (`site_id`, `channel_id`, `template_id`, `type`, `split_assets`, `show_in_page_selector`)
VALUES
	(1,26,0,'unmanaged','n','y'),
	(1,19,43,'listing','n','y'),
	(1,18,44,'page','n','y'),
	(1,15,61,'listing','n','y'),
	(1,14,0,'unmanaged','n','y'),
	(1,25,45,'page','n','y'),
	(1,4,46,'page','n','y'),
	(1,7,61,'listing','n','y'),
	(1,6,0,'unmanaged','n','y'),
	(1,11,61,'listing','n','y'),
	(1,10,0,'unmanaged','n','y'),
	(1,2,0,'unmanaged','n','y'),
	(1,22,48,'page','n','y'),
	(1,1,0,'unmanaged','n','y'),
	(1,21,51,'listing','n','y'),
	(1,20,52,'page','n','y'),
	(1,17,53,'page','n','y'),
	(1,16,54,'page','n','y'),
	(1,3,55,'page','n','y'),
	(1,5,62,'page','n','y'),
	(1,24,0,'unmanaged','n','y'),
	(1,23,64,'page','n','y'),
	(1,13,61,'listing','n','y'),
	(1,12,0,'unmanaged','n','y'),
	(1,9,61,'listing','n','y'),
	(1,8,0,'unmanaged','n','y'),
	(1,27,0,'unmanaged','n','y'),
	(1,28,0,'unmanaged','n','y'),
	(1,29,63,'page','n','y'),
	(1,30,0,'unmanaged','n','y'),
	(1,31,0,'unmanaged','n','y'),
	(1,32,101,'listing','n','y'),
	(1,33,102,'page','n','y');

/*!40000 ALTER TABLE `exp_structure_channels` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table exp_structure_listings
# ------------------------------------------------------------

DROP TABLE IF EXISTS `exp_structure_listings`;

CREATE TABLE `exp_structure_listings` (
  `site_id` int(4) unsigned NOT NULL DEFAULT '1',
  `entry_id` int(10) unsigned NOT NULL DEFAULT '0',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `channel_id` int(6) unsigned NOT NULL DEFAULT '0',
  `template_id` int(6) unsigned NOT NULL DEFAULT '0',
  `uri` varchar(75) NOT NULL,
  PRIMARY KEY (`entry_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `exp_structure_listings` WRITE;
/*!40000 ALTER TABLE `exp_structure_listings` DISABLE KEYS */;

INSERT INTO `exp_structure_listings` (`site_id`, `entry_id`, `parent_id`, `channel_id`, `template_id`, `uri`)
VALUES
	(1,61,38,17,53,'bio-one'),
	(1,62,38,17,53,'bio-two'),
	(1,63,38,17,53,'bio-three'),
	(1,88,38,17,53,'bio-four'),
	(1,64,39,19,43,'career-one'),
	(1,65,39,19,43,'career-two'),
	(1,66,39,19,43,'career-three'),
	(1,67,40,21,51,'article-one'),
	(1,68,40,21,51,'article-two'),
	(1,69,40,21,51,'article-three'),
	(1,58,93,15,61,'compliance-watch-one'),
	(1,59,93,15,61,'compliance-watch-two'),
	(1,60,93,15,61,'compliance-watch-three'),
	(1,55,92,13,61,'tool-and-app-one'),
	(1,56,92,13,61,'tool-and-app-two'),
	(1,57,92,13,61,'tool-and-app-three'),
	(1,52,91,11,61,'form-and-resource-one'),
	(1,53,91,11,61,'form-and-resource-two'),
	(1,54,91,11,61,'form-and-resource-three'),
	(1,49,90,9,61,'video-one'),
	(1,50,90,9,61,'video-two'),
	(1,51,90,9,61,'video-three'),
	(1,48,89,7,61,'question-three'),
	(1,47,89,7,61,'question-two'),
	(1,46,89,7,61,'question-one'),
	(1,103,104,32,101,'boston-scientific');

/*!40000 ALTER TABLE `exp_structure_listings` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table exp_structure_members
# ------------------------------------------------------------

DROP TABLE IF EXISTS `exp_structure_members`;

CREATE TABLE `exp_structure_members` (
  `member_id` int(10) unsigned NOT NULL DEFAULT '0',
  `site_id` int(4) unsigned NOT NULL DEFAULT '1',
  `nav_state` text,
  PRIMARY KEY (`site_id`,`member_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `exp_structure_members` WRITE;
/*!40000 ALTER TABLE `exp_structure_members` DISABLE KEYS */;

INSERT INTO `exp_structure_members` (`member_id`, `site_id`, `nav_state`)
VALUES
	(1,1,'[\"25\",\"31\"]');

/*!40000 ALTER TABLE `exp_structure_members` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table exp_structure_settings
# ------------------------------------------------------------

DROP TABLE IF EXISTS `exp_structure_settings`;

CREATE TABLE `exp_structure_settings` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `site_id` int(8) unsigned NOT NULL DEFAULT '1',
  `var` varchar(60) NOT NULL,
  `var_value` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `exp_structure_settings` WRITE;
/*!40000 ALTER TABLE `exp_structure_settings` DISABLE KEYS */;

INSERT INTO `exp_structure_settings` (`id`, `site_id`, `var`, `var_value`)
VALUES
	(1,0,'action_ajax_move','25'),
	(2,0,'module_id','15'),
	(3,1,'show_picker','y'),
	(4,1,'show_view_page','y'),
	(5,1,'show_global_add_page','y'),
	(6,1,'hide_hidden_templates','y'),
	(7,1,'redirect_on_login','n'),
	(8,1,'redirect_on_publish','n'),
	(9,1,'add_trailing_slash','y');

/*!40000 ALTER TABLE `exp_structure_settings` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table exp_template_groups
# ------------------------------------------------------------

DROP TABLE IF EXISTS `exp_template_groups`;

CREATE TABLE `exp_template_groups` (
  `group_id` int(6) unsigned NOT NULL AUTO_INCREMENT,
  `site_id` int(4) unsigned NOT NULL DEFAULT '1',
  `group_name` varchar(50) NOT NULL,
  `group_order` int(3) unsigned NOT NULL,
  `is_site_default` char(1) NOT NULL DEFAULT 'n',
  PRIMARY KEY (`group_id`),
  KEY `site_id` (`site_id`),
  KEY `group_name_idx` (`group_name`),
  KEY `group_order_idx` (`group_order`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `exp_template_groups` WRITE;
/*!40000 ALTER TABLE `exp_template_groups` DISABLE KEYS */;

INSERT INTO `exp_template_groups` (`group_id`, `site_id`, `group_name`, `group_order`, `is_site_default`)
VALUES
	(36,1,'inc',15,'n'),
	(35,1,'testimonials',14,'n'),
	(34,1,'support-center',13,'n'),
	(33,1,'search',12,'n'),
	(32,1,'rss',11,'n'),
	(31,1,'pages',10,'n'),
	(30,1,'our-leadership',9,'n'),
	(29,1,'news-and-events',8,'n'),
	(28,1,'login',7,'n'),
	(26,1,'home',5,'y'),
	(25,1,'external-urls',4,'n'),
	(24,1,'contact',3,'n'),
	(23,1,'careers',2,'n'),
	(22,1,'404',1,'n'),
	(43,1,'clients',16,'n'),
	(42,1,'sitemap',15,'n');

/*!40000 ALTER TABLE `exp_template_groups` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table exp_template_member_groups
# ------------------------------------------------------------

DROP TABLE IF EXISTS `exp_template_member_groups`;

CREATE TABLE `exp_template_member_groups` (
  `group_id` smallint(4) unsigned NOT NULL,
  `template_group_id` mediumint(5) unsigned NOT NULL,
  PRIMARY KEY (`group_id`,`template_group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `exp_template_member_groups` WRITE;
/*!40000 ALTER TABLE `exp_template_member_groups` DISABLE KEYS */;

INSERT INTO `exp_template_member_groups` (`group_id`, `template_group_id`)
VALUES
	(3,42);

/*!40000 ALTER TABLE `exp_template_member_groups` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table exp_template_no_access
# ------------------------------------------------------------

DROP TABLE IF EXISTS `exp_template_no_access`;

CREATE TABLE `exp_template_no_access` (
  `template_id` int(6) unsigned NOT NULL,
  `member_group` smallint(4) unsigned NOT NULL,
  PRIMARY KEY (`template_id`,`member_group`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table exp_template_routes
# ------------------------------------------------------------

DROP TABLE IF EXISTS `exp_template_routes`;

CREATE TABLE `exp_template_routes` (
  `route_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `template_id` int(10) unsigned NOT NULL,
  `order` int(10) unsigned DEFAULT NULL,
  `route` varchar(512) DEFAULT NULL,
  `route_parsed` varchar(512) DEFAULT NULL,
  `route_required` char(1) NOT NULL DEFAULT 'n',
  PRIMARY KEY (`route_id`),
  KEY `template_id` (`template_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `exp_template_routes` WRITE;
/*!40000 ALTER TABLE `exp_template_routes` DISABLE KEYS */;

INSERT INTO `exp_template_routes` (`route_id`, `template_id`, `order`, `route`, `route_parsed`, `route_required`)
VALUES
	(1,42,NULL,NULL,NULL,'n'),
	(2,43,NULL,NULL,NULL,'n'),
	(3,44,NULL,NULL,NULL,'n'),
	(4,66,NULL,NULL,NULL,'n'),
	(5,67,NULL,NULL,NULL,'n'),
	(6,68,NULL,NULL,NULL,'n'),
	(7,45,NULL,NULL,NULL,'n'),
	(8,69,NULL,NULL,NULL,'n'),
	(9,46,NULL,NULL,NULL,'n'),
	(10,70,NULL,NULL,NULL,'n'),
	(11,71,NULL,NULL,NULL,'n'),
	(12,72,NULL,NULL,NULL,'n'),
	(13,73,NULL,NULL,NULL,'n'),
	(14,74,NULL,NULL,NULL,'n'),
	(15,75,NULL,NULL,NULL,'n'),
	(16,47,NULL,NULL,NULL,'n'),
	(17,76,NULL,NULL,NULL,'n'),
	(18,65,NULL,NULL,NULL,'n'),
	(19,77,NULL,NULL,NULL,'n'),
	(20,48,NULL,NULL,NULL,'n'),
	(21,49,NULL,NULL,NULL,'n'),
	(22,50,NULL,NULL,NULL,'n'),
	(23,51,NULL,NULL,NULL,'n'),
	(24,52,NULL,NULL,NULL,'n'),
	(25,53,NULL,NULL,NULL,'n'),
	(26,54,NULL,NULL,NULL,'n'),
	(27,55,NULL,NULL,NULL,'n'),
	(28,56,NULL,NULL,NULL,'n'),
	(29,57,NULL,NULL,NULL,'n'),
	(30,58,NULL,NULL,NULL,'n'),
	(31,59,NULL,NULL,NULL,'n'),
	(32,60,NULL,NULL,NULL,'n'),
	(33,61,NULL,NULL,NULL,'n'),
	(34,62,NULL,NULL,NULL,'n'),
	(35,63,NULL,NULL,NULL,'n'),
	(36,64,NULL,NULL,NULL,'n'),
	(37,78,NULL,NULL,NULL,'n'),
	(38,79,NULL,NULL,NULL,'n'),
	(39,80,NULL,NULL,NULL,'n'),
	(40,81,NULL,NULL,NULL,'n'),
	(41,82,NULL,NULL,NULL,'n'),
	(42,83,NULL,NULL,NULL,'n'),
	(49,86,NULL,NULL,NULL,'n'),
	(43,87,NULL,NULL,NULL,'n'),
	(44,92,NULL,NULL,NULL,'n'),
	(45,91,NULL,NULL,NULL,'n'),
	(46,90,NULL,NULL,NULL,'n'),
	(47,89,NULL,NULL,NULL,'n'),
	(48,88,NULL,NULL,NULL,'n');

/*!40000 ALTER TABLE `exp_template_routes` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table exp_templates
# ------------------------------------------------------------

DROP TABLE IF EXISTS `exp_templates`;

CREATE TABLE `exp_templates` (
  `template_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `site_id` int(4) unsigned NOT NULL DEFAULT '1',
  `group_id` int(6) unsigned NOT NULL,
  `template_name` varchar(50) NOT NULL,
  `save_template_file` char(1) NOT NULL DEFAULT 'n',
  `template_type` varchar(16) NOT NULL DEFAULT 'webpage',
  `template_data` mediumtext,
  `template_notes` text,
  `edit_date` int(10) NOT NULL DEFAULT '0',
  `last_author_id` int(10) unsigned NOT NULL DEFAULT '0',
  `cache` char(1) NOT NULL DEFAULT 'n',
  `refresh` int(6) unsigned NOT NULL DEFAULT '0',
  `no_auth_bounce` varchar(50) NOT NULL DEFAULT '',
  `enable_http_auth` char(1) NOT NULL DEFAULT 'n',
  `allow_php` char(1) NOT NULL DEFAULT 'n',
  `php_parse_location` char(1) NOT NULL DEFAULT 'o',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `protect_javascript` char(1) NOT NULL DEFAULT 'n',
  PRIMARY KEY (`template_id`),
  KEY `group_id` (`group_id`),
  KEY `template_name` (`template_name`),
  KEY `site_id` (`site_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `exp_templates` WRITE;
/*!40000 ALTER TABLE `exp_templates` DISABLE KEYS */;

INSERT INTO `exp_templates` (`template_id`, `site_id`, `group_id`, `template_name`, `save_template_file`, `template_type`, `template_data`, `template_notes`, `edit_date`, `last_author_id`, `cache`, `refresh`, `no_auth_bounce`, `enable_http_auth`, `allow_php`, `php_parse_location`, `hits`, `protect_javascript`)
VALUES
	(97,1,34,'tax-savings-results','y','webpage','<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\n<html>\n<head>\n<title>Tax Savings Results</title>\n<meta http-equiv=\"Content-Type\" content=\"text/html; charset=iso-8859-1\">\n<meta http-equiv=\"Content-Style-Type\" content=\"text/css\">\n<link rel=\"stylesheet\" type=\"text/css\" href=\"/templates/cs_ie6/css/template.css\">\n<link rel=\"stylesheet\" type=\"text/css\" href=\"/templates/system/css/general.css\">\n<link rel=\"stylesheet\" type=\"text/css\" href=\"/templates/system/css/system.css\">\n<script Language=\"JavaScript\" type=\"text/javascript\">\n<!--\n\n	var AnnualSalary = 0;\n	var SpouseSalary = 0;\n	var TotalSalary = 0;\n	var FilingStatus;\n	var StateTaxPercent = 0;\n	var AnnualInsurancePremium = 0;\n	var AnnualMedicalSpending = 0;\n	var AnnualDependentCareSpending = 0;\n	var AnnualTransportationSpending = 0;\n	var AnnualRetirementContribution = 0;\n\n	var InsuranceTaxSavings = 0;\n	var MedicalTaxSavings = 0;\n	var DependentCareTaxSavings = 0;\n	var TransportationTaxSavings = 0;\n	var RetirementTaxSavings = 0;\n	var TotalTaxSavings = 0;\n	var TaxMulitplier1 = 0.28;\n	var TaxMulitplier2 = 0.31;\n	var TaxMulitplier3 = 0.36;\n	var TaxMulitplier4 = 0.396;\n	var FedTaxPercentage = 0;\n	var FICATaxPercentage = 7.65;\n\n	// parse query string to get form values\n\n	url = self.location.href;\n	queryStringStart = url.indexOf(\'?\') + 1;\n	urlStringToSplit = self.location.href.substring(queryStringStart);\n\n	arrayOfStrings = urlStringToSplit.split(\'&\');\n\n	// first calculate total annual salary, i.e. AnnualSalary + Spouse\'s Salary\n\n	AnnualSalary = parseFloat(arrayOfStrings[0]);\n	SpouseSalary =  parseFloat(arrayOfStrings[1]);\n	TotalSalary = AnnualSalary + SpouseSalary;\n\n	// Calculate Tax Savings for each category of Filing Status\n\n	StateTaxPercent = parseFloat(arrayOfStrings[3]);\n\n	if (arrayOfStrings[2] == \"Single\" )\n	{\n		if (AnnualSalary <= 25750 )\n 			FedTaxPercentage = 15.0;\n	 	else if   (25750 < AnnualSalary && AnnualSalary <= 62450 )\n			FedTaxPercentage = 100*(TaxMulitplier1 * AnnualSalary - 3348)/AnnualSalary;\n 	 	else if   (62450 < AnnualSalary && AnnualSalary <= 130250 )\n			FedTaxPercentage = 100*(TaxMulitplier2 * AnnualSalary - 5221)/AnnualSalary;\n	 	else if  ( 130250 < AnnualSalary && AnnualSalary <= 283150 )\n			FedTaxPercentage = 100*(TaxMulitplier3 * AnnualSalary - 11734)/AnnualSalary;\n		else if (AnnualSalary > 283150 )\n			FedTaxPercentage = 100*(TaxMulitplier4 * AnnualSalary - 21927)/AnnualSalary;\n\n	}\n	else if (arrayOfStrings[2] == \"MarriedFilingJointly\" )\n	{\n		if (TotalSalary <= 43050 )\n 			FedTaxPercentage = 15.0;\n	 	else if   (43050 < TotalSalary && TotalSalary <= 104050 )\n			FedTaxPercentage = 100*(TaxMulitplier1 * TotalSalary - 5597)/TotalSalary;\n 	 	else if   (104050 < TotalSalary && TotalSalary <= 158550 )\n			FedTaxPercentage = 100*(TaxMulitplier2 * TotalSalary - 8718)/TotalSalary;\n	 	else if   (158550 < TotalSalary && TotalSalary <= 283150 )\n			FedTaxPercentage = 100*(TaxMulitplier3 * TotalSalary - 16646)/TotalSalary;\n		else if (TotalSalary > 283150 )\n			FedTaxPercentage = 100*(TaxMulitplier4 * TotalSalary - 26839)/TotalSalary;\n\n	}\n	else if (arrayOfStrings[2] == \"MarriedFilingSeparately\")\n	{\n		if (AnnualSalary <= 21525 )\n 			FedTaxPercentage = 15.0;\n	 	else if   (21525 < AnnualSalary && AnnualSalary <= 52025 )\n			FedTaxPercentage = 100*(TaxMulitplier1 * AnnualSalary - 2798)/AnnualSalary;\n 	 	else if   (52025 < AnnualSalary && AnnualSalary <= 79275 )\n			FedTaxPercentage = 100*(TaxMulitplier2 * AnnualSalary - 4359)/AnnualSalary;\n	 	else if   (79275 < AnnualSalary && AnnualSalary <= 141575 )\n			FedTaxPercentage = 100*(TaxMulitplier3 * AnnualSalary - 8323)/AnnualSalary;\n		else if (AnnualSalary > 141575 )\n			FedTaxPercentage = 100*(TaxMulitplier4 * AnnualSalary - 13420)/AnnualSalary;\n\n	}\n	else if (arrayOfStrings[2] == \"HeadOfHousehold\" )\n	{\n		if (AnnualSalary <= 34550 )\n 			FedTaxPercentage = 15.0;\n	 	else if   (34550 < AnnualSalary && AnnualSalary <= 89150 )\n			FedTaxPercentage = 100*(TaxMulitplier1 * AnnualSalary - 4492)/AnnualSalary;\n 	 	else if   (89150 < AnnualSalary && AnnualSalary <= 144400 )\n			FedTaxPercentage = 100*(TaxMulitplier2 * AnnualSalary - 7166)/AnnualSalary;\n	 	else if   (144400 < AnnualSalary && AnnualSalary <= 283150 )\n			FedTaxPercentage = 100*(TaxMulitplier3 * AnnualSalary - 14386)/AnnualSalary;\n		else if (AnnualSalary > 283150 )\n			FedTaxPercentage = 100*(TaxMulitplier4 * AnnualSalary - 24580)/AnnualSalary;\n\n	}\n\n	// Calculate Tax Savings for each Tax Saving Category\n	// Section 125 Insurance Premiums\n\n	AnnualInsurancePremium = parseFloat(arrayOfStrings[4]);\n	InsuranceTaxSavings =  AnnualInsurancePremium * ((FedTaxPercentage + StateTaxPercent + FICATaxPercentage)/100.0);\n\n	// Section 125 Medical Spending\n\n	AnnualMedicalSpending = parseFloat(arrayOfStrings[5]);\n	MedicalTaxSavings = AnnualMedicalSpending * ((FedTaxPercentage + StateTaxPercent + FICATaxPercentage)/100.0);\n\n	// Section 125 Dependent Care\n\n	AnnualDependentCareSpending = parseFloat(arrayOfStrings[6]);\n	DependentCareTaxSavings = AnnualDependentCareSpending * ((FedTaxPercentage + StateTaxPercent + FICATaxPercentage)/100.0);\n\n	// Section 132 Parking Dependent Care Account\n\n	AnnualTransportationSpending = parseFloat(arrayOfStrings[7]);\n	TransportationTaxSavings = AnnualTransportationSpending * ((FedTaxPercentage + StateTaxPercent + FICATaxPercentage)/100.0);\n\n	// 401(k) Retirement Savings -- note: this does not include the FICA Tax Percentage\n\n	AnnualRetirementContribution = parseFloat(arrayOfStrings[8]);\n	RetirementTaxSavings = AnnualRetirementContribution * ((FedTaxPercentage + StateTaxPercent)/100.0);\n\n	// Calculate Total Tax Savings\n\n	TotalTaxSavings = InsuranceTaxSavings + MedicalTaxSavings + DependentCareTaxSavings + TransportationTaxSavings + RetirementTaxSavings;\n\n//-->\n</script>\n</head>\n\n<body id=\"top\">\n<div id=\"wrapper\">\n			<div id=\"greenbox\">\n				<div class=\"c320\"></div>\n			</div>\n\n<table height=\"100%\" width=\"100%\" style=\"border: 1px solid #CCCCCC\" cellpadding=\"0\" cellspacing=\"0\">\n <!--Top section-->\n   <tr>\n    <td height=\"210px;\" colspan=\"3\"> <!-- border-bottom: 1px solid #CCCCCC; -->\n\n\n   	<div style=\"position: absolute; left: 25%; right: 25%; top: 30px; width: 50%; height: 138px; border-bottom: 1px solid #CCCCCC\">\n		<h1 class=\"pgHead\" align=\"center\" style=\"padding-bottom:15px;\"><strong>Tax Savings Results</strong></h1>\n\n     	 <p>Your estimated annual tax savings results are shown below. This calculation is an estimate of your annual tax savings and is based on the current IRS income tax rate schedule and information supplied by you. For more information or if you have any questions, please <a href=\"mailto:askpenny@chard-snyder\">contact us</a> or call our Customer Service Center toll-free at 800-982-7715. </p>\n     	 </div>\n\n		</td>\n  </tr>\n\n<!--Top sectionends here-->\n\n  <tr>\n<!--left nav column begins-->\n    <td width=\"25%\" valign=\"top\" bgcolor=\"#FFFFFF\" >&nbsp;</td>\n\n<!--Main Section begins-->\n    <td width=\"50%\" valign=\"top\">\n\n	  <div id=\"taxtable\" align=\"center\">\n	  <h3 align=\"center\" style=\"margin-top:0px;\"><font size=\"3;\"> Your Tax Savings Amount </font></h3>\n	  </div>\n\n		<br>\n\n<!--- Tax Calculator - Savings Results script (document.write) --->\n		<div>\n		<div id=\"taxsavings\" align=\"center\" style=\"border: 1px solid #CCCCCC; margin-right: 33%; margin-left: 33%;\">\n		<p align=\"center\" style=\"font-size: 24px; margin-top:10px; margin-bottom:10px;\"><strong>\n		$&nbsp;<script language=\"javascript\">\n			document.open();\n			document.write((Math.round(TotalTaxSavings)));\n			document.close();\n		</script>\n		</strong></p>\n		</div></div>\n\n\n	  <div id=\"taxtable\" align=\"center\">\n	  <br />\n	  <p align=\"center\" style=\"font-size: 16px;\"><a href=\"tax-savings-calculator.html\"> Back to Tax Savings Calculator </a></font></p>\n	  </div>\n\n\n	<p>&nbsp;</p>\n    <p align=\"right\"></p>\n	<!--Main Section ends\n		<p align=\"right\"><a href=\"#top\"> [Return to Top] </a></p>\n		<p></p>\n		-->\n	</td>\n\n    <td width=\"25%\" bgcolor=\"#FFFFFF\">&nbsp;</td>\n  </tr> </table>\n<!--page content ends-->\n\n<!--footerstarts here-->\n<div id=\"footer\">\n						<div class=\"moduletable\">\n					<div class=\"contact\">\n	<p>3510 Irwin Simpson Road</p>\n	<p>Mason, OH 45040</p>\n\n	<p>TEL: 513.459.9997 | 800.982.7715</p>\n	<p>FAX: 513.459.9947 | 888.245.8452</p>\n</div>\n\n<p class=\"copyright\">&copy;2015 Chard Snyder. All rights reserved. <a href=\"about/privacy-statement.html\">Privacy policy</a>.</p>\n<p class=\"desgin\" style=\"font-size:13px;\">Return to the <a href=\"http://www.chard-snyder.com\">Chard Snyder Home Page</a>.</p>		</div>\n\n			</div>\n		</div>\n\n</body>\n</html>',NULL,1455903037,1,'n',0,'','n','n','o',62,'n'),
	(88,1,33,'results','y','webpage','{layout=\'inc/layout\'}\n\n<h1>Results</h1>\n\n{exp:search:search_results}\n\n	<p>{title}</p>\n\n{/exp:search:search_results}',NULL,1454564908,1,'n',0,'','n','n','o',319,'n'),
	(89,1,33,'no-results','y','webpage','{layout=\'inc/layout\'}\n\n<h1>No Results</h1>',NULL,1454565408,1,'n',0,'','n','n','o',11,'n'),
	(90,1,31,'thank-you','y','webpage','{layout=\'inc/layout\'}\n\n{exp:channel:entries channel=\'pages\' dynamic=\'no\' limit=\'1\'}\n\n	{if page_title}\n\n		<h1>{page_title}</h1>\n\n	{if:else}\n\n		<h1>{title}</h1>\n\n	{/if}\n\n	{if page_overview}\n\n		<div class=\"summary\">\n\n			{page_overview}\n\n		</div>\n\n	{/if}\n\n	{page_content}\n\n	{page_advertisement}\n\n		<div class=\"advertisement\">\n\n			{page_advertisement:advertisement_vendor_code}\n\n		</div>\n\n	{/page_advertisement}\n\n{/exp:channel:entries}',NULL,1455044146,1,'n',0,'','n','n','o',0,'n'),
	(86,1,34,'results','y','webpage','',NULL,1454541876,1,'n',0,'','n','n','o',235,'n'),
	(87,1,36,'layout','y','webpage','<!doctype html>\n\n<html lang=\"en-US\" class=\"no-js\">\n\n<head>\n\n	<meta charset=\"utf-8\" />\n\n	<!--[if IE]>\n\n		<meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge, chrome=1\" />\n\n	<![endif]-->\n\n	<title>Chard Snyder &bull; Benefit Solutions</title>\n\n	<meta name=\"description\" content=\"\" />\n\n	<meta name=\"keywords\" content=\"\" />\n\n	<meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\" />\n\n	<link rel=\"shortcut icon\" href=\"/assets/img/favicon.png\" />\n\n	<link rel=\"apple-touch-icon\" href=\"/assets/img/touch-icon.png\" />\n\n	<link type=\"text/css\" href=\"/assets/css/screen.css\" rel=\"stylesheet\" media=\"screen, projection\" />\n\n	<link type=\"text/css\" href=\"/assets/css/print.css\" rel=\"stylesheet\" media=\"print\" />\n\n	<link type=\"text/css\" href=\"https://fonts.googleapis.com/css?family=Ubuntu:300,300italic,400,400italic,500,500italic,700,700italic\" rel=\"stylesheet\" media=\"screen, projection\" />\n\n	<link type=\"application/rss+xml\" href=\"\" rel=\"alternate\" />\n\n	<!-- Twitter Cards (https://dev.twitter.com/cards/markup) -->\n\n	<meta name=\"twitter:card\" content=\"\" />\n	<meta name=\"twitter:site\" content=\"\" />\n	<meta name=\"twitter:creator\" content=\"\" />\n	<meta name=\"twitter:title\" content=\"\" />\n	<meta name=\"twitter:description\" content=\"\" />\n	<meta name=\"twitter:image\" content=\"\" />\n\n	<!-- Facebook Open Graph (https://developers.facebook.com/docs/sharing/webmasters#markup) -->\n\n	<meta property=\"og:url\" content=\"\" />\n	<meta property=\"og:title\" content=\"\" />\n	<meta property=\"og:site_name\" content=\"\" />\n	<meta property=\"og:description\" content=\"\" />\n	<meta property=\"og:image\" content=\"\" />\n\n</head>\n\n<body id=\"{if segment_1 == \'\'}home{/if}\" class=\"\">\n\n	{exp:channel:entries channel=\'login\' dynamic=\'no\' limit=\'1\'}\n\n		<div id=\"login\">\n\n			<div class=\"wrap\">\n\n				<div class=\"options\">\n\n					<div class=\"option employees\">\n\n						<div class=\"title\">Employees</div>\n\n						<ul>\n\n							{login_employees}\n\n								<li>\n\n									<a href=\"{login_employees:login_employee_url}\" rel=\"external\">{login_employees:login_employee_title}</a>\n\n								</li>\n\n							{/login_employees}\n\n						</ul>\n\n					</div>\n\n					<div class=\"option employers\">\n\n						<div class=\"title\">Employers</div>\n\n						<ul>\n\n							{login_employers}\n\n								<li>\n\n									<a href=\"{login_employers:login_employer_url}\" rel=\"external\">{login_employers:login_employer_title}</a>\n\n								</li>\n\n							{/login_employers}\n\n						</ul>\n\n					</div>\n\n				</div>\n\n			</div>\n\n		</div>\n\n	{/exp:channel:entries}\n\n	<header id=\"header\" role=\"banner\">\n\n		<div class=\"wrap\">\n\n			<div id=\"logo\">\n\n				<a href=\"{path=\'site_index\'}\">\n\n					{site_name}\n\n				</a>\n\n			</div>\n\n			<nav id=\"nav\" role=\"navigation\">\n\n				<div class=\"toggle\">\n\n					<span>Menu</span>\n\n				</div>\n\n				{exp:structure:nav start_from=\"/\" show_depth=\"2\" max_depth=\"2\" current_class=\"active\"}\n\n			</nav>\n\n			<div class=\"login-toggle\">\n\n				<span>Login</span>\n\n			</div>\n\n			<div id=\"search\">\n\n				<div class=\"toggle\">\n\n					<span>Search</span>\n\n				</div>\n\n				<div class=\"form\">\n\n					{exp:search:simple_form channel=\'\' search_in=\'everywhere\' results=\'5\' result_page=\'search/results\' no_result_page=\'search/no-results\'}\n\n						<label for=\"keywords\">Search</label>\n\n						<input type=\"text\" name=\"keywords\" id=\"keywords\" value=\"\" placeholder=\"Search\" />\n\n						<button type=\"submit\">Search</button>\n\n					{/exp:search:simple_form}\n\n				</div>\n\n			</div>\n\n		</div>\n\n	</header>\n\n	{if segment_1 != \'\' OR (segment_1 == \'support-center\' AND segment_2 != \'\')}\n\n		<div id=\"breadcrumbs\">\n\n			<div class=\"wrap\">\n\n				{exp:structure:breadcrumb here_as_title=\'yes\' separator=\'&rsaquo;\'}\n\n			</div>\n\n		</div>\n\n	{/if}\n\n	<main id=\"content\" role=\"main\">\n\n		<div class=\"wrap\">\n\n			<div class=\"main\">\n\n				{layout:contents}\n\n			</div>\n\n			{if segment_1 != \'\' AND segment_1 != \'support-center\' AND segment_1 != \'faqs\' AND segment_1 != \'videos\' AND segment_1 != \'forms-and-resources\' AND segment_1 != \'tools-and-apps\' AND segment_1 != \'compliance-watch\'}\n\n				<div id=\"left-sidebar\">\n\n					<div class=\"secondary-nav\">\n\n						<div class=\"section\">\n\n							{structure:top:title}\n\n						</div>\n\n						<div class=\"nav\">\n\n							<div class=\"toggle\">\n\n								<span>Menu</span>\n\n							</div>\n\n							{exp:structure:nav start_from=\"/{segment_1}\" current_class=\"active\" add_span=\"yes\" has_children_class=\"yes\"}\n\n						</div>\n\n					</div>\n\n					<div class=\"support-center\">\n\n						<a href=\"/support-center/\">Visit the Support Center</a>\n\n					</div>\n\n				</div>\n\n			{/if}\n\n			{if (segment_1 == \'support-center\' AND segment_2 != \'\') OR segment_1 == \'faqs\' OR segment_1 == \'videos\' OR segment_1 == \'forms-and-resources\' OR segment_1 == \'tools-and-apps\' OR segment_1 == \'compliance-watch\'}\n\n				<div id=\"right-sidebar\">\n\n					<div class=\"category-nav\">\n\n						<div class=\"title\">\n\n							Filter by Category\n\n						</div>\n\n						<div class=\"\">\n\n							{exp:zoo_triggers:categories channel=\'{if segment_2 == \'faqs\'}faqs{if:elseif segment_2 == \'videos\'}videos{if:elseif segment_2 == \'forms-and-resources\'}forms_and_resources{if:elseif segment_2 == \'tools-and-apps\'}tools_and_apps{if:else}compliance_watch{/if}\' path=\'/{segment_1}/{segment_2}/category\' all_text=\'Show all categories\' show_counter=\'no\'}\n\n						</div>\n\n					</div>\n\n				</div>\n\n			{/if}\n\n		</div>\n\n	</main>\n\n	<footer id=\"footer\" role=\"contentinfo\">\n\n		<div class=\"wrap\">\n\n			<div class=\"logo\">\n\n				<a href=\"{path=\'site_index\'}\">{site_name}</a>\n\n			</div>\n\n			<div class=\"customer-service\">\n\n				<div class=\"service\">\n\n					<div class=\"type\">Customer Service</div>\n\n					<div class=\"for\">Savings &amp; Spending Accounts</div>\n\n					<div class=\"time\">8am &ndash; 9pm ET</div>\n\n					<div class=\"tel\">800-982-7715</div>\n\n				</div>\n\n				<div class=\"service\">\n\n					<div class=\"type\">Customer Service</div>\n\n					<div class=\"for\">Benefit Continuation Services</div>\n\n					<div class=\"time\">8am &ndash; 8pm ET</div>\n\n					<div class=\"tel\">888-993-4646</div>\n\n				</div>\n\n			</div>\n\n			<div class=\"contact\">\n\n				<a href=\"/about/contact/\">Contact</a>\n\n			</div>\n\n			<div class=\"wben\">\n\n				<a href=\"http://www.wbenc.org/\" rel=\"external\">Certified Women&rsquo;s Business Enterprise</a>\n\n			</div>\n\n			<div class=\"connect\">\n\n				<ul>\n\n					<li class=\"facebook\">\n\n						<a href=\"https://www.facebook.com/chardsnyder\" rel=\"external\">Facebook</a>\n\n					</li>\n\n					<li class=\"linkedin\">\n\n						<a href=\"http://www.linkedin.com/company/chard-snyder\" rel=\"external\">LinkedIn</a>\n\n					</li>\n\n				</ul>\n\n			</div>\n\n			<p id=\"copyright\">\n\n				<small>&copy; {current_time format=\"%Y\"} {site_name}. All rights reserved. <a href=\"/about/privacy-policy/\">Privacy policy</a>.</small>\n\n			</p>\n\n		</div>\n\n	</footer>\n\n	<script src=\"/assets/js/scripts.js\"></script>\n\n</body>\n\n</html>',NULL,1454545036,1,'n',0,'','n','n','o',0,'n'),
	(91,1,36,'seo','y','webpage','{exp:seo_lite use_last_segment=\'yes\'\ntitle_postfix=\'{embed:title_postfix}\'\ndefault_title=\'{embed:default_title}\'\ndefault_keywords=\'{embed:default_keywords}\'\ndefault_description=\'{embed:default_description}\'\n}',NULL,1455051658,1,'n',0,'','n','n','o',0,'n'),
	(92,1,36,'search','y','webpage','<div class=\"support-center-search\">\n\n	{exp:search:advanced_form result_page=\'support-center/results\' results=\'5\'}\n\n		<ul>\n\n			<li>\n\n				<label for=\"keywords\">Search our Support Center</label>\n\n				<input type=\"text\" name=\"keywords\" id=\"keywords\" value=\"\" placeholder=\"Search Our Support Center\" />\n\n			</li>\n\n			<li>\n\n				<label>Filter</label>\n\n				<select id=\"channel_id\" name=\'channel_id[]\'>\n\n					<option value=\"7|9|11|13|15\" selected=\"selected\">All Types</option>\n					<option value=\"7\">FAQs</option>\n					<option value=\"9\">Videos</option>\n					<option value=\"11\">Forms &amp; Resources</option>\n					<option value=\"13\">Tools &amp; Apps</option>\n					<option value=\"15\">Compliance Watch</option>\n\n				</select>\n\n			</li>\n\n		</ul>\n\n		<button type=\"submit\">Search</button>\n\n	{/exp:search:advanced_form}\n\n</div>',NULL,1455053074,1,'n',0,'','n','n','o',0,'n'),
	(93,1,36,'test','y','webpage','		{exp:channel:entries channel=\'support_center_types\' dynamic=\'no\' orderby=\'date\'}\n\n			<li class=\"category-{url_title}\">\n\n				<a href=\"{page_url}\">\n\n					{if support_type_title}\n\n						<h3>{support_type_title}</h3>\n\n					{if:else}\n\n						<h3>{title}</h3>\n\n					{/if}\n\n					{support_type_short_desc}\n\n				</a>\n\n			</li>\n\n		{/exp:channel:entries}',NULL,1455207581,1,'n',0,'','n','n','o',0,'n'),
	(94,1,42,'index','y','xml','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n\n<urlset xmlns=\"http://www.sitemaps.org/schemas/sitemap/0.9\">\n\n	{exp:channel:entries channel=\"home\" disable=\"categories|category_fields|member_data|pagination\"}\n\n		<url>\n\n			<loc>{path=\'\'}</loc>\n\n			<lastmod>{edit_date format=\"%Y-%m-%d\"}</lastmod>\n\n			<changefreq>weekly</changefreq>\n\n			<priority>0.8</priority>\n\n		</url>\n\n	{/exp:channel:entries}\n\n	{exp:channel:entries entry_id=\"not 39|44\" channel=\"site_pages|columned_listing_page|listing_overview_page|news_landing_page|rowed_page_listing|section_landing_page|solution_library_landing|unity_care_landing\" disable=\"categories|category_fields|member_data|pagination\"}\n\n		<url>\n\n			<loc>{page_url}</loc>\n\n			<lastmod>{edit_date format=\"%Y-%m-%d\"}</lastmod>\n\n			<changefreq>weekly</changefreq>\n\n			<priority>0.8</priority>\n\n		</url>\n\n	{/exp:channel:entries}\n\n	{exp:channel:entries channel=\"solutions_newsletters|solutions_product_brochures|solutions_sales_materials|solution_library_landing|solutions_testimonials|solutions_video_testimonials|solutions_white_papers\" disable=\"categories|category_fields|member_data|pagination\"}\n\n		<url>\n\n			<loc>{title_permalink=\'solution-library/solution\'}</loc>\n\n			<lastmod>{edit_date format=\"%Y-%m-%d\"}</lastmod>\n\n			<changefreq>weekly</changefreq>\n\n			<priority>0.8</priority>\n\n		</url>\n\n	{/exp:channel:entries}\n\n	{exp:channel:entries channel=\"news\" disable=\"categories|category_fields|member_data|pagination\"}\n\n		<url>\n\n			<loc>{title_permalink=\'news-and-events/news-article\'}</loc>\n\n			<lastmod>{edit_date format=\"%Y-%m-%d\"}</lastmod>\n\n			<changefreq>weekly</changefreq>\n\n			<priority>0.8</priority>\n\n		</url>\n\n	{/exp:channel:entries}\n\n	{exp:channel:entries channel=\"events\" disable=\"categories|category_fields|member_data|pagination\"}\n\n		<url>\n\n			<loc>{title_permalink=\'news-and-events/event\'}</loc>\n\n			<lastmod>{edit_date format=\"%Y-%m-%d\"}</lastmod>\n\n			<changefreq>weekly</changefreq>\n\n			<priority>0.8</priority>\n\n		</url>\n\n	{/exp:channel:entries}\n\n	<url>\n\n		<loc>{path=\'forum\'}</loc>\n\n		<lastmod>{current_time format=\"%Y-%m-%d\"}</lastmod>\n\n		<changefreq>weekly</changefreq>\n\n		<priority>0.8</priority>\n\n	</url>\n\n</urlset>',NULL,1455309577,1,'n',0,'','n','n','o',52,'n'),
	(69,1,24,'thank-you','y','webpage','<p>This is the contact page thank you.</p>',NULL,1454380131,1,'n',0,'','n','n','o',17,'n'),
	(77,1,36,'index','y','webpage','',NULL,1454380131,1,'n',0,'','n','n','o',0,'n'),
	(95,1,34,'no-results','y','webpage','{layout=\'inc/layout\'}\n\n<h1>No Results</h1>\n\n<p>No results for &ldquo;<i>{exp:search:keywords}</i>.&rdquo;</p>',NULL,1455663610,1,'n',0,'','n','n','o',8,'n'),
	(96,1,34,'tax-savings-calculator','y','webpage','<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\n<html>\n<head>\n<title>Tax Savings Calculator</title>\n<meta http-equiv=\"Content-Type\" content=\"text/html; charset=iso-8859-1\">\n<meta http-equiv=\"Content-Style-Type\" content=\"text/css\">\n<link rel=\"stylesheet\" type=\"text/css\" href=\"/templates/cs_ie6/css/template.css\">\n<link rel=\"stylesheet\" type=\"text/css\" href=\"/templates/system/css/general.css\">\n<link rel=\"stylesheet\" type=\"text/css\" href=\"/templates/system/css/system.css\">\n<script Language=\"JavaScript\" type=\"text/javascript\">\n<!--\n// do input validation on form inputs\nfunction checkForm()\n{\n// make sure they didn\'t enter any commas or dollar signs in the money-related fields\n        Phrase1 = document.forms[0].AnnualSalary.value;\n        CommaFound1 = Phrase1.indexOf(\",\");\n	DollarSignFound1 = Phrase1.indexOf(\"$\");\n        Phrase2 = document.forms[0].SpouseSalary.value;\n        CommaFound2 = Phrase2.indexOf(\",\");\n	DollarSignFound2 = Phrase2.indexOf(\"$\");\n        Phrase3 = document.forms[0].AnnualInsurancePremium.value;\n        CommaFound3 = Phrase3.indexOf(\",\");\n	DollarSignFound3 = Phrase3.indexOf(\"$\");\n        Phrase4 = document.forms[0].AnnualMedicalSpending.value;\n        CommaFound4 = Phrase4.indexOf(\",\");\n	DollarSignFound4 = Phrase4.indexOf(\"$\");\n        Phrase5 = document.forms[0].AnnualDependentCareSpending.value;\n        CommaFound5 = Phrase5.indexOf(\",\");\n	DollarSignFound5 = Phrase5.indexOf(\"$\");\n        Phrase6 = document.forms[0].AnnualTransportationSpending.value;\n        CommaFound6 = Phrase6.indexOf(\",\");\n	DollarSignFound6 = Phrase6.indexOf(\"$\");\n        Phrase7 = document.forms[0].AnnualRetirementContribution.value;\n        CommaFound7 = Phrase7.indexOf(\",\");\n	DollarSignFound7 = Phrase7.indexOf(\"$\");\n        if (CommaFound1 != -1 || CommaFound2 != -1 || CommaFound3 != -1 || CommaFound4 != -1 || CommaFound5 != -1 || CommaFound6 != -1 || CommaFound7 != -1)\n        {\n		alert(\"Please remove the comma from the dollar amount(s) you entered.\");\n		return false;\n        }\n	else if (DollarSignFound1 != -1 || DollarSignFound2 != -1 || DollarSignFound3 != -1 || DollarSignFound4 != -1 || DollarSignFound5 != -1 || DollarSignFound6 != -1 || DollarSignFound7 != -1)\n        {\n		alert(\"Please remove the dollar sign from the dollar amount(s) you entered.\");\n		return false;\n        }\n        else if(document.forms[0].AnnualSalary.value == \'\')\n	{\n		alert(\"You must enter your Annual Salary.\");\n		document.forms[0].AnnualSalary.focus();\n		return false;\n	}\n	else if(!document.forms[0].FilingStatus[0].checked && !document.forms[0].FilingStatus[1].checked && !document.forms[0].FilingStatus[2].checked && !document.forms[0].FilingStatus[3].checked)\n	{\n		alert(\"You must select a Filing Status.\");\n		return false;\n	}\n//	else if(document.forms[0].FilingStatus[1].checked && document.forms[0].SpouseSalary.value == \'0\')\n//	{\n//		alert(\"You must enter your Spouse\'s Salary since you selected a Filing Status of Married Filing Jointly.\");\n//		document.forms[0].SpouseSalary.focus();\n//		return false;\n//	}\n	else if(document.forms[0].StateTaxPercent.value == \'\')\n	{\n		alert(\"You must enter your State Income Tax Percentage.\");\n		document.forms[0].StateTaxPercent.focus();\n		return false;\n	}\n//	else if(document.forms[0].AnnualInsurancePremium.value == \'0\')\n//	{\n//		alert(\"You must enter the annual amount spent on payroll deducted insurance premiums.\");\n//		document.forms[0].AnnualInsurancePremium.focus();\n//		return false;\n//	}\n//	else if(document.forms[0].AnnualMedicalSpending.value == \'0\')\n//	{\n//		alert(\"You must the annual amount in your S125 Health Flexible Spending Account.\");\n//		document.forms[0].AnnualMedicalSpending.focus();\n//		return false;\n//	}\n//	else if(document.forms[0].AnnualDependentCareSpending.value == \'0\')\n//	{\n//		alert(\"You must the annual amount in your S125 Dependent Care Spending Account.\");\n//		document.forms[0].AnnualDependentCareSpending.focus();\n//		return false;\n//	}\n//	else if(document.forms[0].AnnualTransportationSpending.value == \'0\')\n//	{\n//		alert(\"You must the annual amount in your S132 Tranportation Reimbursement Plan.\");\n//		document.forms[0].AnnualTransportationSpending.focus();\n//		return false;\n//	}\n//	else if(document.forms[0].AnnualRetirementContribution.value == \'0\')\n//	{\n//		alert(\"You must the annual amount you defer into your 401k Retirement Savings Plan.\");\n//		document.forms[0].AnnualRetirementContribution.focus();\n//		return false;\n//	}\n	else if(!document.forms[0].FilingStatus[1].checked && document.forms[0].SpouseSalary.value != \'0\')\n	{\n//		alert(\"resetting spouse salary to zero\");\n		document.forms[0].SpouseSalary.value = 0;\n	}\n	AnnualSalary = document.forms[0].AnnualSalary.value;\n	SpouseSalary = document.forms[0].SpouseSalary.value;\n\n	for (i = 0; i < 4; i++)\n	{\n		if (document.forms[0].FilingStatus[i].checked)\n		{\n			TaxFilingStatus = document.forms[0].FilingStatus[i].value;\n		}\n	}\n\n	StateTaxPercent = document.forms[0].StateTaxPercent.value;\n	AnnualInsurancePremium = document.forms[0].AnnualInsurancePremium.value;\n	AnnualMedicalSpending = document.forms[0].AnnualMedicalSpending.value;\n	AnnualDependentCareSpending = document.forms[0].AnnualDependentCareSpending.value;\n	AnnualTransportationSpending = document.forms[0].AnnualTransportationSpending.value;\n	AnnualRetirementContribution = document.forms[0].AnnualRetirementContribution.value;\n\n	self.location = \"tax-savings-results.html?\" + AnnualSalary + \'&\' + SpouseSalary + \'&\' + TaxFilingStatus + \'&\' + StateTaxPercent + \'&\' + AnnualInsurancePremium + \'&\' + AnnualMedicalSpending + \'&\' + AnnualDependentCareSpending + \'&\' + AnnualTransportationSpending + \'&\' + AnnualRetirementContribution;\n	return true;\n\n}\n\n//-->\n</script>\n</head>\n\n<body>\n<div id=\"wrapper\">\n			<div id=\"greenbox\">\n				<div class=\"c320\"></div>\n			</div>\n\n<table height=\"100%\" width=\"100%\" bgcolor=\"#ffffff\" style=\"border: 1px solid #CCCCCC\" cellpadding=\"0\" cellspacing=\"0\">\n <!--Top section-->\n   <tr id=\"top\">\n    <td height=\"190px;\" colspan=\"3\"> <!-- border-bottom: 1px solid #CCCCCC; -->\n\n\n   	<div style=\"position: absolute; left: 25%; right: 25%; top: 30px; width: 50%; height: 108px; border-bottom: 1px solid #CCCCCC\">\n		<h1 class=\"pgHead\" align=\"center\" style=\"padding-bottom:15px;\"><strong>Tax Savings Calculator</strong></h1>\n\n     	 <p>The Tax Savings Calculator is designed to help you determine how much your Flexible Benefit Plan will save you on your taxes. Please complete the applicable information below, and then click on &quot;Calculate Tax Savings&quot;, to view your results.</p>\n     	 </div>\n\n		</td>\n  </tr>\n\n<!--Top sectionends here-->\n\n  <tr>\n<!--left nav column begins-->\n    <td width=\"25%\" valign=\"top\" bgcolor=\"#FFFFFF\" ></td>\n\n<!--Main Section begins-->\n    <td width=\"50%\" valign=\"top\" bgcolor=\"#FFFFFF\">\n      <div class=\"maindiv\" style=\"color: #666666;\">\n	  <table border=\"0\" cellpadding=\"5px\" cellspacing=\"0\" width=\"100%\">\n	              <form name=\"TaxSavingsCalcForm\" action=\"taxcalc_function.html?function=CalculateTaxSavings\" method=\"post\"><div style=\"color: #003B71;\"><font face=\"Arial, Helvetica, sans-serif\" size=\"3\"><font size=\"4\"><b>ANNUAL\n                      INCOME</b></font></font> </div>\n                    <p><font face=\"Arial, Helvetica, sans-serif\" size=\"2\">1. Enter\n                      your annual salary BEFORE taxes.<br>\n\n                        &nbsp;</font><font face=\"Arial, Helvetica, sans-serif\">&nbsp;&nbsp;&nbsp;$<font size=\"3\">\n                        <input type=\"text\" name=\"AnnualSalary\" size=\"26\" maxlength=\"26\">\n                        </font></font></p>\n                      <div align=\"left\"><p><font face=\"Arial, Helvetica, sans-serif\" size=\"2\">2.\n                        Enter your spouse\'s annual salary BEFORE taxes (if filing\n                        jointly). <br>\n                        &nbsp;&nbsp;&nbsp; </font><font face=\"Arial, Helvetica, sans-serif\">$</font><font face=\"Arial, Helvetica, sans-serif\" size=\"2\">\n                        <input type=\"text\" name=\"SpouseSalary\" size=\"26\" maxlength=\"26\" value=\"0\">\n                        </font></p></div>\n                      <div align=\"left\">\n                        <p style=\"margin-bottom: 0\"><font face=\"Arial, Helvetica, sans-serif\" size=\"2\">\n\n                          3. Select your tax filing status: </font><br>\n                          <font face=\"Arial, Helvetica, sans-serif\" size=\"2\">\n                          <input type=\"radio\" name=\"FilingStatus\" value=\"Single\">\n                          Single </font><br>\n                          <font size=\"2\">\n                          <input type=\"radio\" name=\"FilingStatus\" value=\"MarriedFilingJointly\">\n\n\n                          <font face=\"Arial, Helvetica, sans-serif\"> Married,</font></font><font face=\"Arial, Helvetica, sans-serif\" size=\"2\">\n                          Filing Jointly or Qualifying Widow(er)</font><br>\n\n                          <font face=\"Arial, Helvetica, sans-serif\" size=\"2\">\n                          <input type=\"radio\" name=\"FilingStatus\" value=\"MarriedFilingSeparately\">\n                          Married, Filing Separately</font><br>\n                          <font face=\"Arial, Helvetica, sans-serif\" size=\"2\">\n                          <input type=\"radio\" name=\"FilingStatus\" value=\"HeadOfHousehold\">\n                          Head of Household</font> <font face=\"Arial, Helvetica, sans-serif\" size=\"2\"><br>\n                          <br>\n                          4. Enter your state income tax percentage <br>\n\n                          &nbsp;&nbsp;&nbsp; </font><font face=\"Arial, Helvetica, sans-serif\">%</font><font face=\"Arial, Helvetica, sans-serif\" size=\"3\">\n                          <input type=\"text\" name=\"StateTaxPercent\" size=\"26\" maxlength=\"26\" onBlur=\"document.forms[0].AnnualInsurancePremium.focus();\"></p>\n\n\n                          <!-- <p><br /><font size=\"2\"><strong>Coming soon...a list of state tax rates </strong></font> </font></p> -->\n                    </div>\n                    <div style=\"color: #003B71;\"><font face=\"Verdana\" size=\"2\">\n					  <br>\n\n                      </font><font face=\"Arial, Helvetica, sans-serif\"><b><font size=\"3\"><font size=\"4\"><strong>ANNUAL\n                      BENEFIT CONTRIBUTIONS</strong><br>\n                      </font></font></b></font></div>\n\n\n                      <p><font face=\"Arial, Helvetica, sans-serif\" size=\"2\">1.\n                        Enter the annual amount you will spend on your payroll\n                        deducted insurance premiums. These are qualified insurance\n                        premiums that can be pre-taxed through the Flexible Benefit\n                        Plan (i.e. health insurance, dental insurance, and group\n                        term life of up to $50,000 coverage). </font><br>\n                        <font face=\"Arial, Helvetica, sans-serif\" size=\"2\">&nbsp;\n                        </font><font face=\"Arial, Helvetica, sans-serif\">$</font><font face=\"Arial, Helvetica, sans-serif\" size=\"3\">\n                        <input type=\"text\" name=\"AnnualInsurancePremium\" size=\"26\" maxlength=\"26\" value=\"0\">\n\n                        </font><br>\n                        <br>\n\n                        <font face=\"Arial, Helvetica, sans-serif\" size=\"2\">2.\n                        Enter the annual amount you wish to contribute to your\n                        Healthcare Flexible Spending Account (FSA). These funds\n                        are used for reimbursing your qualified out-of-pocket\n                        healthcare expenses. </font><br>\n                        <font face=\"Arial, Helvetica, sans-serif\" size=\"3\">&nbsp;\n                        </font><font face=\"Arial, Helvetica, sans-serif\"> $</font><font face=\"Arial, Helvetica, sans-serif\" size=\"3\">\n                        <input type=\"text\" name=\"AnnualMedicalSpending\" size=\"26\" maxlength=\"26\" value=\"0\">\n\n                        </font><br>\n                        <br>\n                        <font face=\"Arial, Helvetica, sans-serif\" size=\"3\"><font size=\"2\">3.\n                        Enter the annual amount you wish to contribute to your\n                        Dependent Care Flexible Spending Account (FSA). These\n                        funds are used for reimbursing your qualified child and/or\n                        adult dependent daycare expenses.&nbsp; The IRS maximum\n                        is currently $5,000 if married filing jointly and $2,500\n                        if filing separately. </font></font><br>\n\n                        <font face=\"Arial, Helvetica, sans-serif\" size=\"2\">&nbsp;\n                        </font><font face=\"Arial, Helvetica, sans-serif\">$</font><font face=\"Arial, Helvetica, sans-serif\" size=\"3\">\n                        <input type=\"text\" name=\"AnnualDependentCareSpending\" size=\"26\" maxlength=\"26\" value=\"0\">\n\n                        </font><br>\n                        <br>\n                        <font face=\"Arial, Helvetica, sans-serif\" size=\"3\"><font size=\"2\">4.\n                        </font></font><font face=\"Arial, Helvetica, sans-serif\" size=\"3\"><font size=\"2\">Enter\n                        the annual amount you wish to contribute to your Health\n                        Savings Account (HSA). These funds are used for reimbursing\n                        your qualified out-of-pocket healthcare expenses. The\n                        maximum allowable contribution is limited to the lesser\n                        of the insurance plan deductible or the IRS maximum.&nbsp;\n                        Indexed annually, for 2015 the maximum amount is $3,350\n                        for an individual or $6,650 for a family.</font></font><br>\n                        <font face=\"Arial, Helvetica, sans-serif\" size=\"3\">&nbsp;\n                        </font><font face=\"Arial, Helvetica, sans-serif\">$</font><font face=\"Arial, Helvetica, sans-serif\" size=\"3\">\n                        <input type=\"text\" name=\"AnnualTransportationSpending\" size=\"26\" maxlength=\"26\" value=\"0\">\n\n\n                        </font><br>\n                        <br>\n                        <font face=\"Arial, Helvetica, sans-serif\" size=\"3\"><font size=\"2\">5.\n                        </font><font face=\"Arial, Helvetica, sans-serif\" size=\"3\"><font size=\"2\">Enter\n                        the annual amount you wish to contribute to your Transportation and Parking\n                        plan. These funds are used for reimbursing your qualified\n                        parking fees and/or mass transit expenses. </font><font size=\"2\">The\n                        m</font><font face=\"Arial, Helvetica, sans-serif\" size=\"2\">aximum\n                        allowable contribution is determined by your employer.\n                        </font></font></font><br>\n                        <font face=\"Arial, Helvetica, sans-serif\" size=\"2\">&nbsp;\n                        </font><font face=\"Arial, Helvetica, sans-serif\">$</font><font face=\"Arial, Helvetica, sans-serif\" size=\"3\">\n                        <input type=\"text\" name=\"AnnualRetirementContribution\" size=\"26\" maxlength=\"26\" value=\"0\">\n\n                        </font><br>\n\n                        <br>\n                      </p>\n                      <blockquote style=\"margin-bottom: 0;\">\n                        <p style=\"margin-bottom: 0;\">\n                          <input type=\"button\" name=\"Submit2\" value=\"Calculate Tax Savings\" onClick=\"checkForm(this);\">\n                        &nbsp;&nbsp;&nbsp;\n                        <input type=\"reset\" value=\"Reset\" name=\"reset2\">\n                      </p>\n                    </blockquote>\n					</span>\n					</form>\n\n	  </table>\n\n		<p style=\"margin-bottom: 0;\">&nbsp;</p>\n	  </div>\n\n\n    <p></p>\n\n	<p align=\"right\"><a href=\"#top\"> [Return to Top] </a></p>\n	<p></p>\n<!--Main Section ends--> </td>\n\n    <td width=\"25%\" bgcolor=\"#FFFFFF\">&nbsp;</td>\n  </tr> </table>\n<!--page content ends-->\n\n<!--footerstarts here-->\n<div id=\"footer\">\n						<div class=\"moduletable\">\n					<div class=\"contact\">\n	<p>3510 Irwin Simpson Road</p>\n	<p>Mason, OH 45040</p>\n\n	<p>TEL: 513.459.9997 | 800.982.7715</p>\n	<p>FAX: 513.459.9947 | 888.245.8452</p>\n</div>\n\n<p class=\"copyright\">&copy;2015 Chard Snyder. All rights reserved. <a href=\"about/privacy-statement.html\">Privacy policy</a>.</p>\n<p class=\"desgin\" style=\"font-size:13px;\">Return to the <a href=\"http://www.chard-snyder.com\">Chard Snyder Home Page</a>.</p>		</div>\n\n			</div>\n		</div>\n\n</body>\n</html>',NULL,1455901560,1,'n',0,'','n','n','o',43,'n'),
	(58,1,32,'index','y','webpage','',NULL,1454377613,1,'n',0,'','n','n','o',0,'n'),
	(59,1,33,'index','y','webpage','',NULL,1454377613,1,'n',0,'','n','n','o',6,'n'),
	(61,1,34,'entry','y','webpage','',NULL,1454377613,1,'n',0,'','n','n','o',106,'n'),
	(62,1,34,'index','y','webpage','',NULL,1454377613,1,'n',0,'','n','n','o',497,'n'),
	(63,1,34,'type','y','webpage','',NULL,1454377613,1,'n',0,'','n','n','o',338,'n'),
	(64,1,35,'index','y','webpage','',NULL,1454377613,1,'n',0,'','n','n','o',113,'n'),
	(57,1,31,'request-a-proposal','y','webpage','',NULL,1454377613,1,'n',0,'','n','n','o',156,'n'),
	(56,1,31,'request-a-demo','y','webpage','',NULL,1454377613,1,'n',0,'','n','n','o',37,'n'),
	(54,1,30,'index','y','webpage','',NULL,1454377613,1,'n',0,'','n','n','o',206,'n'),
	(55,1,31,'index','y','webpage','',NULL,1454377613,1,'n',0,'','n','n','o',816,'n'),
	(53,1,30,'entry','y','webpage','',NULL,1454377613,1,'n',0,'','n','n','o',72,'n'),
	(52,1,29,'index','y','webpage','',NULL,1454377613,1,'n',0,'','n','n','o',135,'n'),
	(51,1,29,'entry','y','webpage','',NULL,1454377613,1,'n',0,'','n','n','o',39,'n'),
	(49,1,28,'index','y','webpage','',NULL,1454377613,1,'n',0,'','n','n','o',0,'n'),
	(47,1,26,'index','y','webpage','',NULL,1454377613,1,'n',0,'','n','n','o',693,'n'),
	(45,1,24,'index','y','webpage','',NULL,1454377613,1,'n',0,'','n','n','o',161,'n'),
	(46,1,25,'index','y','webpage','',NULL,1454377613,1,'n',0,'','n','n','o',18,'n'),
	(44,1,23,'index','y','webpage','',NULL,1454377613,1,'n',0,'','n','n','o',98,'n'),
	(42,1,22,'index','y','webpage','',NULL,1454377613,1,'n',0,'','n','n','o',417,'n'),
	(43,1,23,'entry','y','webpage','',NULL,1454377613,1,'n',0,'','n','n','o',43,'n'),
	(98,1,36,'left-sidebar','y','webpage','{if segment_1 == \'benefits\' OR segment_1 == \'employers-and-advisors\' OR segment_1 == \'about\'}\n\n	<div id=\"left-sidebar\">\n\n		<div class=\"secondary-nav\">\n\n			<div class=\"section\">\n\n				{structure:top:title}\n\n			</div>\n\n			<div class=\"nav\">\n\n				<div class=\"toggle\">\n\n					<span>Menu</span>\n\n				</div>\n\n				{exp:structure:nav start_from=\"/{segment_1}\" current_class=\"active\" add_span=\"yes\" has_children_class=\"yes\"}\n\n			</div>\n\n		</div>\n\n		<div class=\"support-center\">\n\n			<a href=\"/support-center/\">Visit the Support Center</a>\n\n		</div>\n\n	</div>\n\n{/if}',NULL,1455911102,1,'n',0,'','n','n','o',0,'n'),
	(99,1,36,'category-sidebar','y','webpage','<div id=\"right-sidebar\">\n\n	<div class=\"category-nav\">\n\n		<div class=\"title\">\n\n			Filter by Category\n\n		</div>\n\n		<div class=\"\">\n\n			{exp:zoo_triggers:categories channel=\'{if segment_2 == \'faqs\'}faqs{if:elseif segment_2 == \'videos\'}videos{if:elseif segment_2 == \'forms-and-resources\'}forms_and_resources{if:elseif segment_2 == \'tools-and-apps\'}tools_and_apps{if:else}compliance_watch{/if}\' path=\'/{segment_1}/{segment_2}/category\' all_text=\'Show all categories\' show_counter=\'no\' show_empty=\'no\'}\n\n		</div>\n\n	</div>\n\n</div>',NULL,1455911446,1,'n',0,'','n','n','o',0,'n'),
	(100,1,36,'contact-sidebar','y','webpage','<div id=\"right-sidebar\">\n\n	<div class=\"still-have-questions-sidebar\">\n\n		<h2>Still Have Questions?</h2>\n\n		<p>If we have not answered your questions, don’t worry. Please contact customer service for more information.</p>\n\n		<div class=\"more\">\n\n			<a href=\"/about/contact/\">Contact Us</a>\n\n		</div>\n\n	</div>\n\n</div>',NULL,1455911616,1,'n',0,'','n','n','o',0,'n'),
	(101,1,43,'entry','y','webpage','<p>Entry for Client page.</p>',NULL,1457115216,1,'n',0,'','n','n','o',91,'n'),
	(102,1,43,'index','y','webpage','',NULL,1457115216,1,'n',0,'','n','n','o',18,'n'),
	(103,1,34,'taxcalc_function','y','webpage','<html>\n<%@ Language=VBScript %>\n<%Option Explicit%>\n<%\n\nif Request.QueryString(\"function\") =\"CalculateTaxSavings\" then\n\n	dim AnnualSalary\n	dim SpouseSalary\n	dim TotalSalary\n	dim FilingStatus\n	dim StateTaxPercent\n	dim AnnualInsurancePremium\n	dim AnnualMedicalSpending\n	dim AnnualDependentCareSpending\n	dim AnnualTransportationSpending\n	dim AnnualRetirementContribution\n\n	dim InsuranceTaxSavings\n	dim MedicalTaxSavings\n	dim DependentCareTaxSavings\n	dim TransportationTaxSavings\n	dim RetirementTaxSavings\n	dim TotalTaxSavings\n\n	dim TaxMulitplier1\n	dim TaxMulitplier2\n	dim TaxMulitplier3\n	dim TaxMulitplier4\n	dim FedTaxPercentage\n	dim FICATaxPercentage\n\n	TaxMulitplier1 = 0.28\n	TaxMulitplier2 = 0.31\n	TaxMulitplier3 = 0.36\n	TaxMulitplier4 = 0.396\n\n	FICATaxPercentage = 7.65\n\n\n\n	\' first calculate total annual salary, i.e. AnnualSalary + Spouse\'s Salary\n\n	AnnualSalary = CSng(Request.Form(\"AnnualSalary\"))\n	SpouseSalary = CSng(Request.Form(\"SpouseSalary\"))\n\n	TotalSalary = AnnualSalary + SpouseSalary\n\n\'Response.Write(\"Annual Salary = \" & AnnualSalary & \"<BR>\")\n\'Response.Write(\"Spouse Salary = \" & SpouseSalary & \"<BR>\")\n\'Response.Write(\"Total Salary = \" & TotalSalary & \"<BR>\")\n\n\n	\' Calculate Tax Savings for each category of Filing Status\n\n	StateTaxPercent = CSng(Request.Form(\"StateTaxPercent\"))\n\n\'Response.Write(\"Filing Status = \" & Request.Form(\"FilingStatus\") & \"<BR>\")\n\'Response.Write(\"State Tax = \" & StateTaxPercent & \"<BR>\")\n\n	if Request.Form(\"FilingStatus\") = \"Single\" then\n\n		if AnnualSalary <= 25750 then\n 			FedTaxPercentage = 15.0\n	 	Elseif   25750 < AnnualSalary and AnnualSalary <= 62450 then\n			FedTaxPercentage = 100*(TaxMulitplier1 * AnnualSalary - 3348)/AnnualSalary\n 	 	Elseif   62450 < AnnualSalary and AnnualSalary <= 130250 then\n			FedTaxPercentage = 100*(TaxMulitplier2 * AnnualSalary - 5221)/AnnualSalary\n	 	Elseif   130250 < AnnualSalary and AnnualSalary <= 283150 then\n			FedTaxPercentage = 100*(TaxMulitplier3 * AnnualSalary - 11734)/AnnualSalary\n		Elseif AnnualSalary > 283150 then\n			FedTaxPercentage = 100*(TaxMulitplier4 * AnnualSalary - 21927)/AnnualSalary\n		End if\n\n	elseif Request.Form(\"FilingStatus\") = \"MarriedFilingJointly\" then\n\n		if TotalSalary <= 43050 then\n 			FedTaxPercentage = 15.0\n	 	Elseif   43050 < TotalSalary and TotalSalary <= 104050 then\n			FedTaxPercentage = 100*(TaxMulitplier1 * TotalSalary - 5597)/TotalSalary\n 	 	Elseif   104050 < TotalSalary and TotalSalary <= 158550 then\n			FedTaxPercentage = 100*(TaxMulitplier2 * TotalSalary - 8718)/TotalSalary\n	 	Elseif   158550 < TotalSalary and TotalSalary <= 283150 then\n			FedTaxPercentage = 100*(TaxMulitplier3 * TotalSalary - 16646)/TotalSalary\n		Elseif TotalSalary > 283150 then\n			FedTaxPercentage = 100*(TaxMulitplier4 * TotalSalary - 26839)/TotalSalary\n		End if\n\n	elseif Request.Form(\"FilingStatus\") = \"MarriedFilingSeparately\" then\n\n		if AnnualSalary <= 21525 then\n 			FedTaxPercentage = 15.0\n	 	Elseif   21525 < AnnualSalary and AnnualSalary <= 52025 then\n			FedTaxPercentage = 100*(TaxMulitplier1 * AnnualSalary - 2798)/AnnualSalary\n 	 	Elseif   52025 < AnnualSalary and AnnualSalary <= 79275 then\n			FedTaxPercentage = 100*(TaxMulitplier2 * AnnualSalary - 4359)/AnnualSalary\n	 	Elseif   79275 < AnnualSalary and AnnualSalary <= 141575 then\n			FedTaxPercentage = 100*(TaxMulitplier3 * AnnualSalary - 8323)/AnnualSalary\n		Elseif AnnualSalary > 141575 then\n			FedTaxPercentage = 100*(TaxMulitplier4 * AnnualSalary - 13420)/AnnualSalary\n		End if\n\n	elseif Request.Form(\"FilingStatus\") = \"HeadOfHousehold\" then\n\n		if AnnualSalary <= 34550 then\n 			FedTaxPercentage = 15.0\n	 	Elseif   34550 < AnnualSalary and AnnualSalary <= 89150 then\n			FedTaxPercentage = 100*(TaxMulitplier1 * AnnualSalary - 4492)/AnnualSalary\n 	 	Elseif   89150 < AnnualSalary and AnnualSalary <= 144400 then\n			FedTaxPercentage = 100*(TaxMulitplier2 * AnnualSalary - 7166)/AnnualSalary\n	 	Elseif   144400 < AnnualSalary and AnnualSalary <= 283150 then\n			FedTaxPercentage = 100*(TaxMulitplier3 * AnnualSalary - 14386)/AnnualSalary\n		Elseif AnnualSalary > 283150 then\n			FedTaxPercentage = 100*(TaxMulitplier4 * AnnualSalary - 24580)/AnnualSalary\n		End if\n\n	End if\n\n\'Response.Write(\"FedTaxPercent = \" & FedTaxPercentage & \"<BR>\")\n\n	\' Calculate Tax Savings for each Tax Saving Category\n\n	\' Section 125 Insurance Premiums\n\n	AnnualInsurancePremium = Request.Form(\"AnnualInsurancePremium\")\n\n	InsuranceTaxSavings =  AnnualInsurancePremium * ((FedTaxPercentage + StateTaxPercent + FICATaxPercentage)/100.0)\n\n\'Response.Write(\"insurance savings = \" & Round(InsuranceTaxSavings,2) & \"<BR>\")\n\n	\' Section 125 Medical Spending\n\n	AnnualMedicalSpending = Request.Form(\"AnnualMedicalSpending\")\n	MedicalTaxSavings = AnnualMedicalSpending * ((FedTaxPercentage + StateTaxPercent + FICATaxPercentage)/100.0)\n\n\'Response.Write(\"medical savings = \" & Round(MedicalTaxSavings,2) & \"<BR>\")\n\n	\' Section 125 Dependent Care\n\n	AnnualDependentCareSpending = Request.Form(\"AnnualDependentCareSpending\")\n	DependentCareTaxSavings = AnnualDependentCareSpending * ((FedTaxPercentage + StateTaxPercent + FICATaxPercentage)/100.0)\n\n\'Response.Write(\"dependent care savings = \" & Round(DependentCareTaxSavings,2) & \"<BR>\")\n\n	\' Section 132 Parking Dependent Care Account\n\n	AnnualTransportationSpending = Request.Form(\"AnnualTransportationSpending\")\n	TransportationTaxSavings = AnnualTransportationSpending * ((FedTaxPercentage + StateTaxPercent + FICATaxPercentage)/100.0)\n\n\'Response.Write(\"transportation savings = \" & Round(TransportationTaxSavings,2) & \"<BR>\")\n\n	\' 401(k) Retirement Savings -- note: this does not include the FICA Tax Percentage\n\n	AnnualRetirementContribution = Request.Form(\"AnnualRetirementContribution\")\n	RetirementTaxSavings = AnnualRetirementContribution * ((FedTaxPercentage + StateTaxPercent)/100.0)\n\n\'Response.Write(\"401k savings = \" & Round(RetirementTaxSavings,2) & \"<BR>\")\n\n	\' Calculate Total Tax Savings\n\n	TotalTaxSavings = InsuranceTaxSavings + MedicalTaxSavings + DependentCareTaxSavings + TransportationTaxSavings + RetirementTaxSavings\n	Response.Redirect(\"tax-savings-results.html?TotalTaxSavings=\" & TotalTaxSavings)\n\n\'Response.Write(\"total tax savings = \" & Round(TotalTaxSavings, 0))\n\nEnd if\n%>\n<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\" \"http://www.w3.org/TR/html4/loose.dtd\">\n<head>\n<title>Tax Savings Function</title>\n<meta http-equiv=\"Content-Type\" content=\"text/html; charset=iso-8859-1\">\n<meta http-equiv=\"Content-Style-Type\" content=\"text/css\">\n<script language=\"javascript\" type=\"text/javascript\">\n<!--\n\n	var AnnualSalary = 0;\n	var SpouseSalary = 0;\n	var TotalSalary = 0;\n	var FilingStatus;\n	var StateTaxPercent = 0;\n	var AnnualInsurancePremium = 0;\n	var AnnualMedicalSpending = 0;\n	var AnnualDependentCareSpending = 0;\n	var AnnualTransportationSpending = 0;\n	var AnnualRetirementContribution = 0;\n\n	var InsuranceTaxSavings = 0;\n	var MedicalTaxSavings = 0;\n	var DependentCareTaxSavings = 0;\n	var TransportationTaxSavings = 0;\n	var RetirementTaxSavings = 0;\n	var TotalTaxSavings = 0;\n	var TaxMulitplier1 = 0.28;\n	var TaxMulitplier2 = 0.31;\n	var TaxMulitplier3 = 0.36;\n	var TaxMulitplier4 = 0.396;\n	var FedTaxPercentage = 0;\n	var FICATaxPercentage = 7.65;\n\n	// parse query string to get form values\n\n	url = self.location.href;\n	queryStringStart = url.indexOf(\'?\') + 1;\n	urlStringToSplit = self.location.href.substring(queryStringStart);\n\n	arrayOfStrings = urlStringToSplit.split(\'&\');\n\n	// first calculate total annual salary, i.e. AnnualSalary + Spouse\'s Salary\n\n	AnnualSalary = parseFloat(arrayOfStrings[0]);\n	SpouseSalary =  parseFloat(arrayOfStrings[1]);\n	TotalSalary = AnnualSalary + SpouseSalary;\n\n	// Calculate Tax Savings for each category of Filing Status\n\n	StateTaxPercent = parseFloat(arrayOfStrings[3]);\n\n	if (arrayOfStrings[2] == \"Single\" )\n	{\n		if (AnnualSalary <= 25750 )\n 			FedTaxPercentage = 15.0;\n	 	else if   (25750 < AnnualSalary && AnnualSalary <= 62450 )\n			FedTaxPercentage = 100*(TaxMulitplier1 * AnnualSalary - 3348)/AnnualSalary;\n 	 	else if   (62450 < AnnualSalary && AnnualSalary <= 130250 )\n			FedTaxPercentage = 100*(TaxMulitplier2 * AnnualSalary - 5221)/AnnualSalary;\n	 	else if  ( 130250 < AnnualSalary && AnnualSalary <= 283150 )\n			FedTaxPercentage = 100*(TaxMulitplier3 * AnnualSalary - 11734)/AnnualSalary;\n		else if (AnnualSalary > 283150 )\n			FedTaxPercentage = 100*(TaxMulitplier4 * AnnualSalary - 21927)/AnnualSalary;\n\n	}\n	else if (arrayOfStrings[2] == \"MarriedFilingJointly\" )\n	{\n		if (TotalSalary <= 43050 )\n 			FedTaxPercentage = 15.0;\n	 	else if   (43050 < TotalSalary && TotalSalary <= 104050 )\n			FedTaxPercentage = 100*(TaxMulitplier1 * TotalSalary - 5597)/TotalSalary;\n 	 	else if   (104050 < TotalSalary && TotalSalary <= 158550 )\n			FedTaxPercentage = 100*(TaxMulitplier2 * TotalSalary - 8718)/TotalSalary;\n	 	else if   (158550 < TotalSalary && TotalSalary <= 283150 )\n			FedTaxPercentage = 100*(TaxMulitplier3 * TotalSalary - 16646)/TotalSalary;\n		else if (TotalSalary > 283150 )\n			FedTaxPercentage = 100*(TaxMulitplier4 * TotalSalary - 26839)/TotalSalary;\n\n	}\n	else if (arrayOfStrings[2] == \"MarriedFilingSeparately\")\n	{\n		if (AnnualSalary <= 21525 )\n 			FedTaxPercentage = 15.0;\n	 	else if   (21525 < AnnualSalary && AnnualSalary <= 52025 )\n			FedTaxPercentage = 100*(TaxMulitplier1 * AnnualSalary - 2798)/AnnualSalary;\n 	 	else if   (52025 < AnnualSalary && AnnualSalary <= 79275 )\n			FedTaxPercentage = 100*(TaxMulitplier2 * AnnualSalary - 4359)/AnnualSalary;\n	 	else if   (79275 < AnnualSalary && AnnualSalary <= 141575 )\n			FedTaxPercentage = 100*(TaxMulitplier3 * AnnualSalary - 8323)/AnnualSalary;\n		else if (AnnualSalary > 141575 )\n			FedTaxPercentage = 100*(TaxMulitplier4 * AnnualSalary - 13420)/AnnualSalary;\n\n	}\n	else if (arrayOfStrings[2] == \"HeadOfHousehold\" )\n	{\n		if (AnnualSalary <= 34550 )\n 			FedTaxPercentage = 15.0;\n	 	else if   (34550 < AnnualSalary && AnnualSalary <= 89150 )\n			FedTaxPercentage = 100*(TaxMulitplier1 * AnnualSalary - 4492)/AnnualSalary;\n 	 	else if   (89150 < AnnualSalary && AnnualSalary <= 144400 )\n			FedTaxPercentage = 100*(TaxMulitplier2 * AnnualSalary - 7166)/AnnualSalary;\n	 	else if   (144400 < AnnualSalary && AnnualSalary <= 283150 )\n			FedTaxPercentage = 100*(TaxMulitplier3 * AnnualSalary - 14386)/AnnualSalary;\n		else if (AnnualSalary > 283150 )\n			FedTaxPercentage = 100*(TaxMulitplier4 * AnnualSalary - 24580)/AnnualSalary;\n\n	}\n\n	// Calculate Tax Savings for each Tax Saving Category\n	// Section 125 Insurance Premiums\n\n	AnnualInsurancePremium = parseFloat(arrayOfStrings[4]);\n	InsuranceTaxSavings =  AnnualInsurancePremium * ((FedTaxPercentage + StateTaxPercent + FICATaxPercentage)/100.0);\n\n	// Section 125 Medical Spending\n\n	AnnualMedicalSpending = parseFloat(arrayOfStrings[5]);\n	MedicalTaxSavings = AnnualMedicalSpending * ((FedTaxPercentage + StateTaxPercent + FICATaxPercentage)/100.0);\n\n	// Section 125 Dependent Care\n\n	AnnualDependentCareSpending = parseFloat(arrayOfStrings[6]);\n	DependentCareTaxSavings = AnnualDependentCareSpending * ((FedTaxPercentage + StateTaxPercent + FICATaxPercentage)/100.0);\n\n	// Section 132 Parking Dependent Care Account\n\n	AnnualTransportationSpending = parseFloat(arrayOfStrings[7]);\n	TransportationTaxSavings = AnnualTransportationSpending * ((FedTaxPercentage + StateTaxPercent + FICATaxPercentage)/100.0);\n\n	// 401(k) Retirement Savings -- note: this does not include the FICA Tax Percentage\n\n	AnnualRetirementContribution = parseFloat(arrayOfStrings[8]);\n	RetirementTaxSavings = AnnualRetirementContribution * ((FedTaxPercentage + StateTaxPercent)/100.0);\n\n	// Calculate Total Tax Savings\n\n	TotalTaxSavings = InsuranceTaxSavings + MedicalTaxSavings + DependentCareTaxSavings + TransportationTaxSavings + RetirementTaxSavings;\n\n//-->\n</script>\n\n</head>\n</html>\n\n',NULL,1457115216,1,'n',0,'','n','n','o',0,'n');

/*!40000 ALTER TABLE `exp_templates` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table exp_throttle
# ------------------------------------------------------------

DROP TABLE IF EXISTS `exp_throttle`;

CREATE TABLE `exp_throttle` (
  `throttle_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ip_address` varchar(45) NOT NULL DEFAULT '0',
  `last_activity` int(10) unsigned NOT NULL DEFAULT '0',
  `hits` int(10) unsigned NOT NULL,
  `locked_out` char(1) NOT NULL DEFAULT 'n',
  PRIMARY KEY (`throttle_id`),
  KEY `ip_address` (`ip_address`),
  KEY `last_activity` (`last_activity`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table exp_upload_no_access
# ------------------------------------------------------------

DROP TABLE IF EXISTS `exp_upload_no_access`;

CREATE TABLE `exp_upload_no_access` (
  `upload_id` int(6) unsigned NOT NULL,
  `upload_loc` varchar(3) NOT NULL,
  `member_group` smallint(4) unsigned NOT NULL,
  PRIMARY KEY (`upload_id`,`member_group`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table exp_upload_prefs
# ------------------------------------------------------------

DROP TABLE IF EXISTS `exp_upload_prefs`;

CREATE TABLE `exp_upload_prefs` (
  `id` int(4) unsigned NOT NULL AUTO_INCREMENT,
  `site_id` int(4) unsigned NOT NULL DEFAULT '1',
  `name` varchar(50) NOT NULL,
  `server_path` varchar(255) NOT NULL DEFAULT '',
  `url` varchar(100) NOT NULL,
  `allowed_types` varchar(3) NOT NULL DEFAULT 'img',
  `max_size` varchar(16) DEFAULT NULL,
  `max_height` varchar(6) DEFAULT NULL,
  `max_width` varchar(6) DEFAULT NULL,
  `properties` varchar(120) DEFAULT NULL,
  `pre_format` varchar(120) DEFAULT NULL,
  `post_format` varchar(120) DEFAULT NULL,
  `file_properties` varchar(120) DEFAULT NULL,
  `file_pre_format` varchar(120) DEFAULT NULL,
  `file_post_format` varchar(120) DEFAULT NULL,
  `cat_group` varchar(255) DEFAULT NULL,
  `batch_location` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `site_id` (`site_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `exp_upload_prefs` WRITE;
/*!40000 ALTER TABLE `exp_upload_prefs` DISABLE KEYS */;

INSERT INTO `exp_upload_prefs` (`id`, `site_id`, `name`, `server_path`, `url`, `allowed_types`, `max_size`, `max_height`, `max_width`, `properties`, `pre_format`, `post_format`, `file_properties`, `file_pre_format`, `file_post_format`, `cat_group`, `batch_location`)
VALUES
	(1,1,'Advertisements','/Users/Joshua/Work/Chard Snyder/dev/html/uploads/advertisements/','http://chard-snyder.dev/uploads/advertisements/','img','','','','','','','','','','',NULL),
	(2,1,'Careers','/Users/Joshua/Work/Chard Snyder/dev/html/uploads/careers/','http://chard-snyder.dev/uploads/careers/','all','','','','','','','','','','',NULL),
	(3,1,'Forms and Resources','/Users/Joshua/Work/Chard Snyder/dev/html/uploads/forms-and-resources/','http://chard-snyder.dev/uploads/forms-and-resources/','all','','','','','','','','','','',NULL),
	(4,1,'Heroes','/Users/Joshua/Work/Chard Snyder/dev/html/uploads/heroes/','http://chard-snyder.dev/uploads/heroes/','img','','','','','','','','','','',NULL),
	(5,1,'Industries','/Users/Joshua/Work/Chard Snyder/dev/html/uploads/industries/','http://chard-snyder.dev/uploads/industries/','img','','','','','','','','','','',NULL),
	(6,1,'Our Leadership','/Users/Joshua/Work/Chard Snyder/dev/html/uploads/our-leadership/','http://chard-snyder.dev/uploads/our-leadership/','img','','','','','','','','','','',NULL),
	(7,1,'Miscellaneous','/Users/Joshua/Work/Chard Snyder/dev/html/uploads/miscellaneous/','http://chard-snyder.dev/uploads/miscellaneous/','all','','','','','','','','','','',NULL),
	(8,1,'News and Events','/Users/Joshua/Work/Chard Snyder/dev/html/uploads/news-and-events/','http://chard-snyder.dev/uploads/news-and-events/','all','','','','','','','','','','',NULL),
	(9,1,'Pages','/Users/Joshua/Work/Chard Snyder/dev/html/uploads/pages/','http://chard-snyder.dev/uploads/pages/','all','','','','','','','','','','',NULL),
	(10,1,'Slides','/Users/Joshua/Work/Chard Snyder/dev/html/uploads/slides/','http://chard-snyder.dev/uploads/slides/','img','','','','','','','','','','',NULL),
	(11,1,'Testimonials','/Users/Joshua/Work/Chard Snyder/dev/html/uploads/testimonials/','http://chard-snyder.dev/uploads/testimonials/','img','','','','','','','','','','',NULL),
	(12,1,'Tools and Apps','/Users/Joshua/Work/Chard Snyder/dev/html/uploads/tools-and-apps/','http://chard-snyder.dev/uploads/tools-and-apps/','img','','','','','','','','','','',NULL),
	(13,1,'Videos','/Users/Joshua/Work/Chard Snyder/dev/html/uploads/videos/','http://chard-snyder.dev/uploads/videos/','img','','','','','','','','','','',NULL),
	(14,1,'Proposals','/Users/Joshua/Work/Chard Snyder/dev/html/uploads/proposals/','http://chard-snyder.dev/uploads/proposals/','all','','','','','','','','','','',NULL),
	(15,1,'Support Center','/Users/Joshua/Work/Chard Snyder/dev/html/uploads/support-center/','http://chard-snyder.dev/uploads/support-center/','img','','','','','','','','','','',NULL),
	(16,1,'Clients','/Users/Joshua/Work/Chard Snyder/dev/html/uploads/clients/','http://chard-snyder.dev/uploads/clients/','img','','','','','','','','','','',NULL);

/*!40000 ALTER TABLE `exp_upload_prefs` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table exp_wygwam_configs
# ------------------------------------------------------------

DROP TABLE IF EXISTS `exp_wygwam_configs`;

CREATE TABLE `exp_wygwam_configs` (
  `config_id` int(6) unsigned NOT NULL AUTO_INCREMENT,
  `config_name` varchar(32) DEFAULT NULL,
  `settings` text,
  PRIMARY KEY (`config_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `exp_wygwam_configs` WRITE;
/*!40000 ALTER TABLE `exp_wygwam_configs` DISABLE KEYS */;

INSERT INTO `exp_wygwam_configs` (`config_id`, `config_name`, `settings`)
VALUES
	(1,'Basic','YTo2OntzOjc6InRvb2xiYXIiO2E6OTp7aTowO3M6NDoiQm9sZCI7aToxO3M6NjoiSXRhbGljIjtpOjI7czo5OiJVbmRlcmxpbmUiO2k6MztzOjEyOiJOdW1iZXJlZExpc3QiO2k6NDtzOjEyOiJCdWxsZXRlZExpc3QiO2k6NTtzOjQ6IkxpbmsiO2k6NjtzOjY6IlVubGluayI7aTo3O3M6NjoiQW5jaG9yIjtpOjg7czo2OiJTb3VyY2UiO31zOjY6ImhlaWdodCI7czozOiIyMDAiO3M6MTQ6InJlc2l6ZV9lbmFibGVkIjtzOjE6InkiO3M6MTE6ImNvbnRlbnRzQ3NzIjthOjA6e31zOjEwOiJ1cGxvYWRfZGlyIjtzOjA6IiI7czoxMzoicmVzdHJpY3RfaHRtbCI7czoxOiJuIjt9'),
	(2,'Full','YTo3OntzOjc6InRvb2xiYXIiO2E6Mjk6e2k6MDtzOjY6IlNvdXJjZSI7aToxO3M6MzoiQ3V0IjtpOjI7czo0OiJDb3B5IjtpOjM7czo1OiJQYXN0ZSI7aTo0O3M6OToiUGFzdGVUZXh0IjtpOjU7czoxMzoiUGFzdGVGcm9tV29yZCI7aTo2O3M6NDoiVW5kbyI7aTo3O3M6NDoiUmVkbyI7aTo4O3M6NToiU2NheXQiO2k6OTtzOjQ6IkJvbGQiO2k6MTA7czo2OiJJdGFsaWMiO2k6MTE7czo2OiJTdHJpa2UiO2k6MTI7czoxMjoiUmVtb3ZlRm9ybWF0IjtpOjEzO3M6MTI6Ik51bWJlcmVkTGlzdCI7aToxNDtzOjEyOiJCdWxsZXRlZExpc3QiO2k6MTU7czo3OiJPdXRkZW50IjtpOjE2O3M6NjoiSW5kZW50IjtpOjE3O3M6MTA6IkJsb2NrcXVvdGUiO2k6MTg7czo0OiJMaW5rIjtpOjE5O3M6NjoiVW5saW5rIjtpOjIwO3M6NjoiQW5jaG9yIjtpOjIxO3M6NToiSW1hZ2UiO2k6MjI7czo1OiJUYWJsZSI7aToyMztzOjE0OiJIb3Jpem9udGFsUnVsZSI7aToyNDtzOjExOiJTcGVjaWFsQ2hhciI7aToyNTtzOjg6IlJlYWRNb3JlIjtpOjI2O3M6NjoiU3R5bGVzIjtpOjI3O3M6NjoiRm9ybWF0IjtpOjI4O3M6ODoiTWF4aW1pemUiO31zOjY6ImhlaWdodCI7czozOiIyMDAiO3M6MTQ6InJlc2l6ZV9lbmFibGVkIjtzOjE6InkiO3M6MTE6ImNvbnRlbnRzQ3NzIjthOjE6e2k6MDtzOjIyOiIvYXNzZXRzL2Nzcy9lZGl0b3IuY3NzIjt9czoxMDoidXBsb2FkX2RpciI7czowOiIiO3M6MTM6InJlc3RyaWN0X2h0bWwiO3M6MToibiI7czo5OiJzdHlsZXNTZXQiO3M6MzM6Im15X3N0eWxlczovYXNzZXRzL2pzL215X3N0eWxlcy5qcyI7fQ==');

/*!40000 ALTER TABLE `exp_wygwam_configs` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
