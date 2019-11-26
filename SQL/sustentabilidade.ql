-- MySQL dump 10.13  Distrib 5.7.27, for Linux (x86_64)
--
-- Host: localhost    Database: sustentabilidade
-- ------------------------------------------------------
-- Server version	5.7.27-0ubuntu0.16.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `gp_commentmeta`
--

DROP TABLE IF EXISTS `gp_commentmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gp_commentmeta`
--

LOCK TABLES `gp_commentmeta` WRITE;
/*!40000 ALTER TABLE `gp_commentmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `gp_commentmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gp_comments`
--

DROP TABLE IF EXISTS `gp_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gp_comments`
--

LOCK TABLES `gp_comments` WRITE;
/*!40000 ALTER TABLE `gp_comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `gp_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gp_links`
--

DROP TABLE IF EXISTS `gp_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gp_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gp_links`
--

LOCK TABLES `gp_links` WRITE;
/*!40000 ALTER TABLE `gp_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `gp_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gp_options`
--

DROP TABLE IF EXISTS `gp_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=InnoDB AUTO_INCREMENT=1494 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gp_options`
--

LOCK TABLES `gp_options` WRITE;
/*!40000 ALTER TABLE `gp_options` DISABLE KEYS */;
INSERT INTO `gp_options` VALUES (1,'siteurl','http://sustentabilidade.local','yes'),(2,'home','http://sustentabilidade.local','yes'),(3,'blogname','Sustentabilidade','yes'),(4,'blogdescription','Só mais um site WordPress','yes'),(5,'users_can_register','0','yes'),(6,'admin_email','alexandre.faria95@gmail.com','yes'),(7,'start_of_week','0','yes'),(8,'use_balanceTags','0','yes'),(9,'use_smilies','1','yes'),(10,'require_name_email','1','yes'),(11,'comments_notify','1','yes'),(12,'posts_per_rss','10','yes'),(13,'rss_use_excerpt','0','yes'),(14,'mailserver_url','mail.example.com','yes'),(15,'mailserver_login','login@example.com','yes'),(16,'mailserver_pass','password','yes'),(17,'mailserver_port','110','yes'),(18,'default_category','1','yes'),(19,'default_comment_status','open','yes'),(20,'default_ping_status','open','yes'),(21,'default_pingback_flag','0','yes'),(22,'posts_per_page','10','yes'),(23,'date_format','j \\d\\e F \\d\\e Y','yes'),(24,'time_format','H:i','yes'),(25,'links_updated_date_format','j \\d\\e F \\d\\e Y, H:i','yes'),(26,'comment_moderation','0','yes'),(27,'moderation_notify','1','yes'),(28,'permalink_structure','/%year%/%monthnum%/%day%/%postname%/','yes'),(29,'rewrite_rules','a:176:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:10:\"especie/?$\";s:27:\"index.php?post_type=especie\";s:40:\"especie/feed/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=especie&feed=$matches[1]\";s:35:\"especie/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=especie&feed=$matches[1]\";s:27:\"especie/page/([0-9]{1,})/?$\";s:45:\"index.php?post_type=especie&paged=$matches[1]\";s:9:\"evento/?$\";s:26:\"index.php?post_type=evento\";s:39:\"evento/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?post_type=evento&feed=$matches[1]\";s:34:\"evento/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?post_type=evento&feed=$matches[1]\";s:26:\"evento/page/([0-9]{1,})/?$\";s:44:\"index.php?post_type=evento&paged=$matches[1]\";s:13:\"iniciativa/?$\";s:30:\"index.php?post_type=iniciativa\";s:43:\"iniciativa/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?post_type=iniciativa&feed=$matches[1]\";s:38:\"iniciativa/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?post_type=iniciativa&feed=$matches[1]\";s:30:\"iniciativa/page/([0-9]{1,})/?$\";s:48:\"index.php?post_type=iniciativa&paged=$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:35:\"especie/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:45:\"especie/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:65:\"especie/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"especie/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"especie/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:41:\"especie/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:24:\"especie/([^/]+)/embed/?$\";s:40:\"index.php?especie=$matches[1]&embed=true\";s:28:\"especie/([^/]+)/trackback/?$\";s:34:\"index.php?especie=$matches[1]&tb=1\";s:48:\"especie/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?especie=$matches[1]&feed=$matches[2]\";s:43:\"especie/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?especie=$matches[1]&feed=$matches[2]\";s:36:\"especie/([^/]+)/page/?([0-9]{1,})/?$\";s:47:\"index.php?especie=$matches[1]&paged=$matches[2]\";s:43:\"especie/([^/]+)/comment-page-([0-9]{1,})/?$\";s:47:\"index.php?especie=$matches[1]&cpage=$matches[2]\";s:32:\"especie/([^/]+)(?:/([0-9]+))?/?$\";s:46:\"index.php?especie=$matches[1]&page=$matches[2]\";s:24:\"especie/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:34:\"especie/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:54:\"especie/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"especie/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"especie/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:30:\"especie/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:34:\"evento/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:44:\"evento/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:64:\"evento/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"evento/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"evento/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:40:\"evento/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:23:\"evento/([^/]+)/embed/?$\";s:39:\"index.php?evento=$matches[1]&embed=true\";s:27:\"evento/([^/]+)/trackback/?$\";s:33:\"index.php?evento=$matches[1]&tb=1\";s:47:\"evento/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:45:\"index.php?evento=$matches[1]&feed=$matches[2]\";s:42:\"evento/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:45:\"index.php?evento=$matches[1]&feed=$matches[2]\";s:35:\"evento/([^/]+)/page/?([0-9]{1,})/?$\";s:46:\"index.php?evento=$matches[1]&paged=$matches[2]\";s:42:\"evento/([^/]+)/comment-page-([0-9]{1,})/?$\";s:46:\"index.php?evento=$matches[1]&cpage=$matches[2]\";s:31:\"evento/([^/]+)(?:/([0-9]+))?/?$\";s:45:\"index.php?evento=$matches[1]&page=$matches[2]\";s:23:\"evento/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:33:\"evento/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:53:\"evento/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:48:\"evento/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:48:\"evento/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:29:\"evento/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:43:\"abaixo_assinado/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:53:\"abaixo_assinado/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:73:\"abaixo_assinado/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:68:\"abaixo_assinado/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:68:\"abaixo_assinado/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:49:\"abaixo_assinado/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:32:\"abaixo_assinado/([^/]+)/embed/?$\";s:48:\"index.php?abaixo_assinado=$matches[1]&embed=true\";s:36:\"abaixo_assinado/([^/]+)/trackback/?$\";s:42:\"index.php?abaixo_assinado=$matches[1]&tb=1\";s:44:\"abaixo_assinado/([^/]+)/page/?([0-9]{1,})/?$\";s:55:\"index.php?abaixo_assinado=$matches[1]&paged=$matches[2]\";s:51:\"abaixo_assinado/([^/]+)/comment-page-([0-9]{1,})/?$\";s:55:\"index.php?abaixo_assinado=$matches[1]&cpage=$matches[2]\";s:40:\"abaixo_assinado/([^/]+)(?:/([0-9]+))?/?$\";s:54:\"index.php?abaixo_assinado=$matches[1]&page=$matches[2]\";s:32:\"abaixo_assinado/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:42:\"abaixo_assinado/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:62:\"abaixo_assinado/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:57:\"abaixo_assinado/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:57:\"abaixo_assinado/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:38:\"abaixo_assinado/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:38:\"iniciativa/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:48:\"iniciativa/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:68:\"iniciativa/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:63:\"iniciativa/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:63:\"iniciativa/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:44:\"iniciativa/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:27:\"iniciativa/([^/]+)/embed/?$\";s:43:\"index.php?iniciativa=$matches[1]&embed=true\";s:31:\"iniciativa/([^/]+)/trackback/?$\";s:37:\"index.php?iniciativa=$matches[1]&tb=1\";s:51:\"iniciativa/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?iniciativa=$matches[1]&feed=$matches[2]\";s:46:\"iniciativa/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?iniciativa=$matches[1]&feed=$matches[2]\";s:39:\"iniciativa/([^/]+)/page/?([0-9]{1,})/?$\";s:50:\"index.php?iniciativa=$matches[1]&paged=$matches[2]\";s:46:\"iniciativa/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?iniciativa=$matches[1]&cpage=$matches[2]\";s:35:\"iniciativa/([^/]+)(?:/([0-9]+))?/?$\";s:49:\"index.php?iniciativa=$matches[1]&page=$matches[2]\";s:27:\"iniciativa/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"iniciativa/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"iniciativa/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"iniciativa/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"iniciativa/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"iniciativa/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}','yes'),(30,'hack_file','0','yes'),(31,'blog_charset','UTF-8','yes'),(32,'moderation_keys','','no'),(33,'active_plugins','a:4:{i:0;s:30:\"advanced-custom-fields/acf.php\";i:1;s:33:\"classic-editor/classic-editor.php\";i:2;s:30:\"conversation-watson/watson.php\";i:3;s:43:\"custom-post-type-ui/custom-post-type-ui.php\";}','yes'),(34,'category_base','','yes'),(35,'ping_sites','http://rpc.pingomatic.com/','yes'),(36,'comment_max_links','2','yes'),(37,'gmt_offset','0','yes'),(38,'default_email_category','1','yes'),(39,'recently_edited','','no'),(40,'template','sustentabilidade','yes'),(41,'stylesheet','sustentabilidade','yes'),(42,'comment_whitelist','1','yes'),(43,'blacklist_keys','','no'),(44,'comment_registration','0','yes'),(45,'html_type','text/html','yes'),(46,'use_trackback','0','yes'),(47,'default_role','subscriber','yes'),(48,'db_version','44719','yes'),(49,'uploads_use_yearmonth_folders','1','yes'),(50,'upload_path','','yes'),(51,'blog_public','0','yes'),(52,'default_link_category','2','yes'),(53,'show_on_front','posts','yes'),(54,'tag_base','','yes'),(55,'show_avatars','1','yes'),(56,'avatar_rating','G','yes'),(57,'upload_url_path','','yes'),(58,'thumbnail_size_w','150','yes'),(59,'thumbnail_size_h','150','yes'),(60,'thumbnail_crop','1','yes'),(61,'medium_size_w','300','yes'),(62,'medium_size_h','300','yes'),(63,'avatar_default','mystery','yes'),(64,'large_size_w','1024','yes'),(65,'large_size_h','1024','yes'),(66,'image_default_link_type','none','yes'),(67,'image_default_size','','yes'),(68,'image_default_align','','yes'),(69,'close_comments_for_old_posts','0','yes'),(70,'close_comments_days_old','14','yes'),(71,'thread_comments','1','yes'),(72,'thread_comments_depth','5','yes'),(73,'page_comments','0','yes'),(74,'comments_per_page','50','yes'),(75,'default_comments_page','newest','yes'),(76,'comment_order','asc','yes'),(77,'sticky_posts','a:0:{}','yes'),(78,'widget_categories','a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}','yes'),(79,'widget_text','a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}','yes'),(80,'widget_rss','a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}','yes'),(81,'uninstall_plugins','a:1:{s:33:\"classic-editor/classic-editor.php\";a:2:{i:0;s:14:\"Classic_Editor\";i:1;s:9:\"uninstall\";}}','no'),(82,'timezone_string','America/Sao_Paulo','yes'),(83,'page_for_posts','0','yes'),(84,'page_on_front','0','yes'),(85,'default_post_format','0','yes'),(86,'link_manager_enabled','0','yes'),(87,'finished_splitting_shared_terms','1','yes'),(88,'site_icon','0','yes'),(89,'medium_large_size_w','768','yes'),(90,'medium_large_size_h','0','yes'),(91,'wp_page_for_privacy_policy','3','yes'),(92,'show_comments_cookies_opt_in','1','yes'),(93,'initial_db_version','44719','yes'),(94,'gp_user_roles','a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}','yes'),(95,'fresh_site','0','yes'),(96,'WPLANG','pt_BR','yes'),(97,'widget_search','a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}','yes'),(98,'widget_recent-posts','a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}','yes'),(99,'widget_recent-comments','a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}','yes'),(100,'widget_archives','a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}','yes'),(101,'widget_meta','a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}','yes'),(102,'sidebars_widgets','a:2:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:13:\"array_version\";i:3;}','yes'),(103,'cron','a:7:{i:1574611981;a:1:{s:19:\"watson_save_to_disk\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:8:\"minutely\";s:4:\"args\";a:0:{}s:8:\"interval\";i:60;}}}i:1574614990;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1574647390;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1574647400;a:3:{s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1574647401;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1576203781;a:2:{s:24:\"watson_reset_total_usage\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:7:\"monthly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:2592000;}}s:25:\"watson_reset_client_usage\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:7:\"monthly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:2592000;}}}s:7:\"version\";i:2;}','yes'),(104,'widget_pages','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(105,'widget_calendar','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(106,'widget_media_audio','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(107,'widget_media_image','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(108,'widget_media_gallery','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(109,'widget_media_video','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(110,'widget_tag_cloud','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(111,'widget_nav_menu','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(112,'widget_custom_html','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(114,'theme_mods_twentynineteen','a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1567217363;s:4:\"data\";a:2:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}}}}','yes'),(115,'recovery_keys','a:0:{}','yes'),(131,'can_compress_scripts','0','no'),(144,'current_theme','','yes'),(145,'theme_mods_sustentabilidade','a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1567217393;s:4:\"data\";a:1:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}}}s:18:\"custom_css_post_id\";i:-1;}','yes'),(146,'theme_switched','','yes'),(163,'recently_activated','a:0:{}','yes'),(179,'acf_version','5.8.3','yes'),(182,'cptui_new_install','false','yes'),(183,'cptui_post_types','a:4:{s:7:\"especie\";a:29:{s:4:\"name\";s:7:\"especie\";s:5:\"label\";s:8:\"especies\";s:14:\"singular_label\";s:7:\"especie\";s:11:\"description\";s:0:\"\";s:6:\"public\";s:4:\"true\";s:18:\"publicly_queryable\";s:4:\"true\";s:7:\"show_ui\";s:4:\"true\";s:17:\"show_in_nav_menus\";s:4:\"true\";s:12:\"show_in_rest\";s:4:\"true\";s:9:\"rest_base\";s:0:\"\";s:21:\"rest_controller_class\";s:0:\"\";s:11:\"has_archive\";s:4:\"true\";s:18:\"has_archive_string\";s:0:\"\";s:19:\"exclude_from_search\";s:5:\"false\";s:15:\"capability_type\";s:4:\"post\";s:12:\"hierarchical\";s:5:\"false\";s:7:\"rewrite\";s:4:\"true\";s:12:\"rewrite_slug\";s:0:\"\";s:17:\"rewrite_withfront\";s:4:\"true\";s:9:\"query_var\";s:4:\"true\";s:14:\"query_var_slug\";s:0:\"\";s:13:\"menu_position\";s:0:\"\";s:12:\"show_in_menu\";s:4:\"true\";s:19:\"show_in_menu_string\";s:0:\"\";s:9:\"menu_icon\";s:0:\"\";s:8:\"supports\";a:3:{i:0;s:5:\"title\";i:1;s:6:\"editor\";i:2;s:9:\"thumbnail\";}s:10:\"taxonomies\";a:0:{}s:6:\"labels\";a:24:{s:8:\"archives\";s:8:\"especies\";s:9:\"menu_name\";s:0:\"\";s:9:\"all_items\";s:0:\"\";s:7:\"add_new\";s:0:\"\";s:12:\"add_new_item\";s:0:\"\";s:9:\"edit_item\";s:0:\"\";s:8:\"new_item\";s:0:\"\";s:9:\"view_item\";s:0:\"\";s:10:\"view_items\";s:0:\"\";s:12:\"search_items\";s:0:\"\";s:9:\"not_found\";s:0:\"\";s:18:\"not_found_in_trash\";s:0:\"\";s:17:\"parent_item_colon\";s:0:\"\";s:14:\"featured_image\";s:0:\"\";s:18:\"set_featured_image\";s:0:\"\";s:21:\"remove_featured_image\";s:0:\"\";s:18:\"use_featured_image\";s:0:\"\";s:16:\"insert_into_item\";s:0:\"\";s:21:\"uploaded_to_this_item\";s:0:\"\";s:17:\"filter_items_list\";s:0:\"\";s:21:\"items_list_navigation\";s:0:\"\";s:10:\"items_list\";s:0:\"\";s:10:\"attributes\";s:0:\"\";s:14:\"name_admin_bar\";s:0:\"\";}s:15:\"custom_supports\";s:0:\"\";}s:6:\"evento\";a:29:{s:4:\"name\";s:6:\"evento\";s:5:\"label\";s:7:\"eventos\";s:14:\"singular_label\";s:6:\"evento\";s:11:\"description\";s:0:\"\";s:6:\"public\";s:4:\"true\";s:18:\"publicly_queryable\";s:4:\"true\";s:7:\"show_ui\";s:4:\"true\";s:17:\"show_in_nav_menus\";s:4:\"true\";s:12:\"show_in_rest\";s:4:\"true\";s:9:\"rest_base\";s:0:\"\";s:21:\"rest_controller_class\";s:0:\"\";s:11:\"has_archive\";s:4:\"true\";s:18:\"has_archive_string\";s:0:\"\";s:19:\"exclude_from_search\";s:5:\"false\";s:15:\"capability_type\";s:4:\"post\";s:12:\"hierarchical\";s:5:\"false\";s:7:\"rewrite\";s:4:\"true\";s:12:\"rewrite_slug\";s:0:\"\";s:17:\"rewrite_withfront\";s:4:\"true\";s:9:\"query_var\";s:4:\"true\";s:14:\"query_var_slug\";s:0:\"\";s:13:\"menu_position\";s:0:\"\";s:12:\"show_in_menu\";s:4:\"true\";s:19:\"show_in_menu_string\";s:0:\"\";s:9:\"menu_icon\";s:0:\"\";s:8:\"supports\";a:3:{i:0;s:5:\"title\";i:1;s:6:\"editor\";i:2;s:9:\"thumbnail\";}s:10:\"taxonomies\";a:1:{i:0;s:8:\"category\";}s:6:\"labels\";a:24:{s:9:\"menu_name\";s:0:\"\";s:9:\"all_items\";s:0:\"\";s:7:\"add_new\";s:0:\"\";s:12:\"add_new_item\";s:0:\"\";s:9:\"edit_item\";s:0:\"\";s:8:\"new_item\";s:0:\"\";s:9:\"view_item\";s:0:\"\";s:10:\"view_items\";s:0:\"\";s:12:\"search_items\";s:0:\"\";s:9:\"not_found\";s:0:\"\";s:18:\"not_found_in_trash\";s:0:\"\";s:17:\"parent_item_colon\";s:0:\"\";s:14:\"featured_image\";s:0:\"\";s:18:\"set_featured_image\";s:0:\"\";s:21:\"remove_featured_image\";s:0:\"\";s:18:\"use_featured_image\";s:0:\"\";s:8:\"archives\";s:0:\"\";s:16:\"insert_into_item\";s:0:\"\";s:21:\"uploaded_to_this_item\";s:0:\"\";s:17:\"filter_items_list\";s:0:\"\";s:21:\"items_list_navigation\";s:0:\"\";s:10:\"items_list\";s:0:\"\";s:10:\"attributes\";s:0:\"\";s:14:\"name_admin_bar\";s:0:\"\";}s:15:\"custom_supports\";s:7:\"cidades\";}s:15:\"abaixo_assinado\";a:29:{s:4:\"name\";s:15:\"abaixo_assinado\";s:5:\"label\";s:16:\"abaixo-assinados\";s:14:\"singular_label\";s:15:\"abaixo-assinado\";s:11:\"description\";s:0:\"\";s:6:\"public\";s:4:\"true\";s:18:\"publicly_queryable\";s:4:\"true\";s:7:\"show_ui\";s:4:\"true\";s:17:\"show_in_nav_menus\";s:4:\"true\";s:12:\"show_in_rest\";s:4:\"true\";s:9:\"rest_base\";s:0:\"\";s:21:\"rest_controller_class\";s:0:\"\";s:11:\"has_archive\";s:5:\"false\";s:18:\"has_archive_string\";s:0:\"\";s:19:\"exclude_from_search\";s:5:\"false\";s:15:\"capability_type\";s:4:\"post\";s:12:\"hierarchical\";s:5:\"false\";s:7:\"rewrite\";s:4:\"true\";s:12:\"rewrite_slug\";s:0:\"\";s:17:\"rewrite_withfront\";s:4:\"true\";s:9:\"query_var\";s:4:\"true\";s:14:\"query_var_slug\";s:0:\"\";s:13:\"menu_position\";s:0:\"\";s:12:\"show_in_menu\";s:4:\"true\";s:19:\"show_in_menu_string\";s:0:\"\";s:9:\"menu_icon\";s:0:\"\";s:8:\"supports\";a:3:{i:0;s:5:\"title\";i:1;s:6:\"editor\";i:2;s:9:\"thumbnail\";}s:10:\"taxonomies\";a:0:{}s:6:\"labels\";a:24:{s:9:\"menu_name\";s:0:\"\";s:9:\"all_items\";s:0:\"\";s:7:\"add_new\";s:0:\"\";s:12:\"add_new_item\";s:0:\"\";s:9:\"edit_item\";s:0:\"\";s:8:\"new_item\";s:0:\"\";s:9:\"view_item\";s:0:\"\";s:10:\"view_items\";s:0:\"\";s:12:\"search_items\";s:0:\"\";s:9:\"not_found\";s:0:\"\";s:18:\"not_found_in_trash\";s:0:\"\";s:17:\"parent_item_colon\";s:0:\"\";s:14:\"featured_image\";s:0:\"\";s:18:\"set_featured_image\";s:0:\"\";s:21:\"remove_featured_image\";s:0:\"\";s:18:\"use_featured_image\";s:0:\"\";s:8:\"archives\";s:0:\"\";s:16:\"insert_into_item\";s:0:\"\";s:21:\"uploaded_to_this_item\";s:0:\"\";s:17:\"filter_items_list\";s:0:\"\";s:21:\"items_list_navigation\";s:0:\"\";s:10:\"items_list\";s:0:\"\";s:10:\"attributes\";s:0:\"\";s:14:\"name_admin_bar\";s:0:\"\";}s:15:\"custom_supports\";s:0:\"\";}s:10:\"iniciativa\";a:29:{s:4:\"name\";s:10:\"iniciativa\";s:5:\"label\";s:11:\"iniciativas\";s:14:\"singular_label\";s:10:\"iniciativa\";s:11:\"description\";s:0:\"\";s:6:\"public\";s:4:\"true\";s:18:\"publicly_queryable\";s:4:\"true\";s:7:\"show_ui\";s:4:\"true\";s:17:\"show_in_nav_menus\";s:4:\"true\";s:12:\"show_in_rest\";s:4:\"true\";s:9:\"rest_base\";s:0:\"\";s:21:\"rest_controller_class\";s:0:\"\";s:11:\"has_archive\";s:4:\"true\";s:18:\"has_archive_string\";s:0:\"\";s:19:\"exclude_from_search\";s:5:\"false\";s:15:\"capability_type\";s:4:\"post\";s:12:\"hierarchical\";s:5:\"false\";s:7:\"rewrite\";s:4:\"true\";s:12:\"rewrite_slug\";s:0:\"\";s:17:\"rewrite_withfront\";s:4:\"true\";s:9:\"query_var\";s:4:\"true\";s:14:\"query_var_slug\";s:0:\"\";s:13:\"menu_position\";s:0:\"\";s:12:\"show_in_menu\";s:4:\"true\";s:19:\"show_in_menu_string\";s:0:\"\";s:9:\"menu_icon\";s:0:\"\";s:8:\"supports\";a:3:{i:0;s:5:\"title\";i:1;s:6:\"editor\";i:2;s:9:\"thumbnail\";}s:10:\"taxonomies\";a:0:{}s:6:\"labels\";a:24:{s:9:\"menu_name\";s:0:\"\";s:9:\"all_items\";s:0:\"\";s:7:\"add_new\";s:0:\"\";s:12:\"add_new_item\";s:0:\"\";s:9:\"edit_item\";s:0:\"\";s:8:\"new_item\";s:0:\"\";s:9:\"view_item\";s:0:\"\";s:10:\"view_items\";s:0:\"\";s:12:\"search_items\";s:0:\"\";s:9:\"not_found\";s:0:\"\";s:18:\"not_found_in_trash\";s:0:\"\";s:17:\"parent_item_colon\";s:0:\"\";s:14:\"featured_image\";s:0:\"\";s:18:\"set_featured_image\";s:0:\"\";s:21:\"remove_featured_image\";s:0:\"\";s:18:\"use_featured_image\";s:0:\"\";s:8:\"archives\";s:0:\"\";s:16:\"insert_into_item\";s:0:\"\";s:21:\"uploaded_to_this_item\";s:0:\"\";s:17:\"filter_items_list\";s:0:\"\";s:21:\"items_list_navigation\";s:0:\"\";s:10:\"items_list\";s:0:\"\";s:10:\"attributes\";s:0:\"\";s:14:\"name_admin_bar\";s:0:\"\";}s:15:\"custom_supports\";s:0:\"\";}}','yes'),(200,'recovery_mode_email_last_sent','1569356892','yes'),(263,'watsonconv_logger_initialized','yes','yes'),(264,'watsonconv_runner','enabled','yes'),(265,'watsonconv_runner_state','free','yes'),(266,'watsonconv_runner_launched','0','yes'),(267,'watsonconv_fallback_state','free','yes'),(268,'watsonconv_fallback_time','1568427783','yes'),(270,'watsonconv_last_applied_update','watsonconv_0810_dejsonify_actions_p_parameters','yes'),(272,'watsonconv_last_cron_check','1574611377','yes'),(273,'watsonconv_cron_was_reliable','yes','yes'),(275,'watsonconv_log_fetch_ts','1572714697','no'),(276,'watsonconv_log_fetch_event','5dbdb8c96b2fc','no'),(290,'watsonconv_credentials','a:6:{s:7:\"enabled\";s:4:\"true\";s:13:\"workspace_url\";s:112:\"https://gateway-wdc.watsonplatform.net/assistant/api/v2/assistants/c311e1a7-b9f2-4a1b-a508-afa234bee7a6/sessions\";s:8:\"username\";s:6:\"apikey\";s:7:\"api_key\";s:44:\"qbp2a0_Nvi0rFSF5PTCbjObwpAraZpwW_IO6Y2bmV9bG\";s:4:\"type\";s:5:\"basic\";s:11:\"auth_header\";s:74:\"Basic YXBpa2V5OnFicDJhMF9OdmkwckZTRjVQVENiak9id3BBcmFacHdXX0lPNlkyYm1WOWJH\";}','yes'),(293,'watsonconv_css_cache','\n                #message-container #messages .watson-message,\n                    #watson-box #watson-header,\n                    #watson-fab\n                {\n                    background-color: rgb(35, 40, 45);\n                    color: white;\n                }\n\n                #message-container #messages .watson-message .typing-dot\n                {\n                    background-color: white;\n                }\n\n                #watson-box #message-send\n                {\n                    background-color: rgb(35, 40, 45);\n                }\n\n                #watson-box #message-send:hover\n                {\n                    background-color: rgba(35, 40, 45, 0.7);\n                }\n                \n                #watson-box #message-send svg\n                {\n                fill: white;\n                }\n\n                #message-container #messages .message-option\n                {\n                    border-color: rgb(35, 40, 45);\n                    color: rgb(35, 40, 45);\n                }\n\n                #message-container #messages .message-option:hover\n                {\n                    border-color: rgba(35, 40, 45, 0.7);\n                    color: rgba(35, 40, 45, 0.7);\n                }\n\n                #watson-box #messages > div:not(.message) > a\n                {\n                    color: rgb(35, 40, 45);\n                }\n\n                #watson-fab-float\n                {\n                    bottom: 5vmin;\n                    right: 5vmin;\n                }\n\n                #watson-fab-icon\n                {\n                    font-size: 28pt\n                }\n\n                #watson-fab-text\n                {\n                    font-size: 15pt\n                }\n\n                #watson-box .watson-font\n                {\n                    font-size: 11pt;\n                }\n                \n                #watson-header .watson-font {\n                    padding-left: 0;\n                }\n                \n                #watson-box .chatbox-logo\n                {\n                    display: none;\n                    width: 32px;\n                    height: 32px;\n                    border-radius: 50%;\n                    background-image: url(\"\");\n                    background-color: white;\n                    background-size: 100% 100%;\n                    background-repeat: no-repeat;\n                    border: solid 1px white;\n                    position: absolute;\n                    top: 50%;\n                    left: 7%;\n                    transform: translate(-50%,-50%);\n                    -webkit-transform: translate(-50%,-50%);\n                    -moz-transform: translate(-50%,-50%);\n                }\n\n                #watson-float\n                {\n                    bottom: 5vmin;\n                    right: 5vmin;\n                }\n                #watson-box\n                {\n                    width: 211.2pt;\n                    height: auto;\n                }\n                #message-container\n                {\n                    height: 200pt\n                }@media screen and (max-width:640px) { #watson-float #watson-box\n                    {\n                        width: 100%;\n                        height: 100%;\n                    }\n\n                    #watson-box\n                    {\n                        max-width: 100%;\n                    }\n\n                    #watson-box .watson-font\n                    {\n                        font-size: 14pt;\n                    }\n                \n                    #watson-float\n                    {\n                        top: 0;\n                        right: 0;\n                        bottom: 0;\n                        left: 0;\n                        transform: translate(0, 0) !important;\n                    }\n\n                    #watson-float #message-container\n                    {\n                        height: auto;\n                    }\n                    #chatbox-body\n                    {           \n                        display: flex; \n                        flex-direction: column;\n                    } }','yes'),(301,'watsonconv_requests_127.0.0.1','39','yes'),(302,'watsonconv_client_list','a:1:{s:9:\"127.0.0.1\";b:1;}','yes'),(681,'cptui_taxonomies','a:0:{}','yes'),(848,'wp_smtp_options','a:9:{s:4:\"from\";s:27:\"alexandre.faria95@gmail.com\";s:8:\"fromname\";s:21:\"Site Sustentabilidade\";s:4:\"host\";s:14:\"smtp.gmail.com\";s:10:\"smtpsecure\";s:3:\"tls\";s:4:\"port\";s:3:\"587\";s:8:\"smtpauth\";s:3:\"yes\";s:8:\"username\";s:27:\"alexandre.faria95@gmail.com\";s:8:\"password\";s:12:\"Alexandre_95\";s:10:\"deactivate\";s:3:\"yes\";}','yes'),(898,'category_children','a:0:{}','yes'),(1443,'watsonconv_total_requests','0','yes'),(1474,'_site_transient_timeout_browser_5d756c0f68168420f89c60725423bbd9','1575133614','no'),(1475,'_site_transient_browser_5d756c0f68168420f89c60725423bbd9','a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"75.0.3770.100\";s:8:\"platform\";s:5:\"Linux\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}','no'),(1476,'_site_transient_timeout_php_check_5b5f312664400ba081def1dc46aebb9c','1575133614','no'),(1477,'_site_transient_php_check_5b5f312664400ba081def1dc46aebb9c','a:5:{s:19:\"recommended_version\";s:3:\"7.3\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:0;s:9:\"is_secure\";b:0;s:13:\"is_acceptable\";b:1;}','no'),(1484,'_site_transient_timeout_theme_roots','1574607013','no'),(1485,'_site_transient_theme_roots','a:1:{s:16:\"sustentabilidade\";s:7:\"/themes\";}','no'),(1487,'_site_transient_update_core','O:8:\"stdClass\":4:{s:7:\"updates\";a:4:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:7:\"upgrade\";s:8:\"download\";s:63:\"https://downloads.wordpress.org/release/pt_BR/wordpress-5.3.zip\";s:6:\"locale\";s:5:\"pt_BR\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:63:\"https://downloads.wordpress.org/release/pt_BR/wordpress-5.3.zip\";s:10:\"no_content\";b:0;s:11:\"new_bundled\";b:0;s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:3:\"5.3\";s:7:\"version\";s:3:\"5.3\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:0:\"\";}i:1;O:8:\"stdClass\":10:{s:8:\"response\";s:7:\"upgrade\";s:8:\"download\";s:57:\"https://downloads.wordpress.org/release/wordpress-5.3.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:57:\"https://downloads.wordpress.org/release/wordpress-5.3.zip\";s:10:\"no_content\";s:68:\"https://downloads.wordpress.org/release/wordpress-5.3-no-content.zip\";s:11:\"new_bundled\";s:69:\"https://downloads.wordpress.org/release/wordpress-5.3-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:3:\"5.3\";s:7:\"version\";s:3:\"5.3\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:0:\"\";}i:2;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:63:\"https://downloads.wordpress.org/release/pt_BR/wordpress-5.3.zip\";s:6:\"locale\";s:5:\"pt_BR\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:63:\"https://downloads.wordpress.org/release/pt_BR/wordpress-5.3.zip\";s:10:\"no_content\";b:0;s:11:\"new_bundled\";b:0;s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:3:\"5.3\";s:7:\"version\";s:3:\"5.3\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}i:3;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/pt_BR/wordpress-5.2.4.zip\";s:6:\"locale\";s:5:\"pt_BR\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/pt_BR/wordpress-5.2.4.zip\";s:10:\"no_content\";b:0;s:11:\"new_bundled\";b:0;s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.2.4\";s:7:\"version\";s:5:\"5.2.4\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}}s:12:\"last_checked\";i:1574605215;s:15:\"version_checked\";s:5:\"5.2.2\";s:12:\"translations\";a:0:{}}','no'),(1488,'_site_transient_update_themes','O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1574605216;s:7:\"checked\";a:1:{s:16:\"sustentabilidade\";s:3:\"1.0\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}','no'),(1489,'_site_transient_update_plugins','O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1574605217;s:7:\"checked\";a:4:{s:30:\"advanced-custom-fields/acf.php\";s:5:\"5.8.3\";s:33:\"classic-editor/classic-editor.php\";s:3:\"1.5\";s:43:\"custom-post-type-ui/custom-post-type-ui.php\";s:5:\"1.6.2\";s:30:\"conversation-watson/watson.php\";s:6:\"0.8.16\";}s:8:\"response\";a:3:{s:30:\"advanced-custom-fields/acf.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:36:\"w.org/plugins/advanced-custom-fields\";s:4:\"slug\";s:22:\"advanced-custom-fields\";s:6:\"plugin\";s:30:\"advanced-custom-fields/acf.php\";s:11:\"new_version\";s:5:\"5.8.7\";s:3:\"url\";s:53:\"https://wordpress.org/plugins/advanced-custom-fields/\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/plugin/advanced-custom-fields.5.8.7.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png?rev=1082746\";s:2:\"1x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-128x128.png?rev=1082746\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";s:2:\"1x\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"5.3.0\";s:12:\"requires_php\";s:3:\"5.4\";s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:43:\"custom-post-type-ui/custom-post-type-ui.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:33:\"w.org/plugins/custom-post-type-ui\";s:4:\"slug\";s:19:\"custom-post-type-ui\";s:6:\"plugin\";s:43:\"custom-post-type-ui/custom-post-type-ui.php\";s:11:\"new_version\";s:5:\"1.7.1\";s:3:\"url\";s:50:\"https://wordpress.org/plugins/custom-post-type-ui/\";s:7:\"package\";s:68:\"https://downloads.wordpress.org/plugin/custom-post-type-ui.1.7.1.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:72:\"https://ps.w.org/custom-post-type-ui/assets/icon-256x256.png?rev=1069557\";s:2:\"1x\";s:72:\"https://ps.w.org/custom-post-type-ui/assets/icon-128x128.png?rev=1069557\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/custom-post-type-ui/assets/banner-1544x500.png?rev=1069557\";s:2:\"1x\";s:74:\"https://ps.w.org/custom-post-type-ui/assets/banner-772x250.png?rev=1069557\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:3:\"5.3\";s:12:\"requires_php\";s:3:\"5.6\";s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:30:\"conversation-watson/watson.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:33:\"w.org/plugins/conversation-watson\";s:4:\"slug\";s:19:\"conversation-watson\";s:6:\"plugin\";s:30:\"conversation-watson/watson.php\";s:11:\"new_version\";s:6:\"0.8.20\";s:3:\"url\";s:50:\"https://wordpress.org/plugins/conversation-watson/\";s:7:\"package\";s:69:\"https://downloads.wordpress.org/plugin/conversation-watson.0.8.20.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:72:\"https://ps.w.org/conversation-watson/assets/icon-256x256.png?rev=1684465\";s:2:\"1x\";s:72:\"https://ps.w.org/conversation-watson/assets/icon-128x128.png?rev=1684465\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/conversation-watson/assets/banner-1544x500.jpg?rev=1684465\";s:2:\"1x\";s:74:\"https://ps.w.org/conversation-watson/assets/banner-772x250.jpg?rev=1684465\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"5.2.4\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}}s:12:\"translations\";a:2:{i:0;a:7:{s:4:\"type\";s:6:\"plugin\";s:4:\"slug\";s:14:\"classic-editor\";s:8:\"language\";s:5:\"pt_BR\";s:7:\"version\";s:3:\"1.5\";s:7:\"updated\";s:19:\"2019-06-16 00:08:47\";s:7:\"package\";s:79:\"https://downloads.wordpress.org/translation/plugin/classic-editor/1.5/pt_BR.zip\";s:10:\"autoupdate\";b:1;}i:1;a:7:{s:4:\"type\";s:6:\"plugin\";s:4:\"slug\";s:19:\"custom-post-type-ui\";s:8:\"language\";s:5:\"pt_BR\";s:7:\"version\";s:5:\"1.6.2\";s:7:\"updated\";s:19:\"2019-05-11 20:30:22\";s:7:\"package\";s:86:\"https://downloads.wordpress.org/translation/plugin/custom-post-type-ui/1.6.2/pt_BR.zip\";s:10:\"autoupdate\";b:1;}}s:9:\"no_update\";a:1:{s:33:\"classic-editor/classic-editor.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:28:\"w.org/plugins/classic-editor\";s:4:\"slug\";s:14:\"classic-editor\";s:6:\"plugin\";s:33:\"classic-editor/classic-editor.php\";s:11:\"new_version\";s:3:\"1.5\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/classic-editor/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/plugin/classic-editor.1.5.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/classic-editor/assets/icon-256x256.png?rev=1998671\";s:2:\"1x\";s:67:\"https://ps.w.org/classic-editor/assets/icon-128x128.png?rev=1998671\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/classic-editor/assets/banner-1544x500.png?rev=1998671\";s:2:\"1x\";s:69:\"https://ps.w.org/classic-editor/assets/banner-772x250.png?rev=1998676\";}s:11:\"banners_rtl\";a:0:{}}}}','no'),(1490,'_transient_timeout_dash_v2_01e18dead815ce736e3b9cccfbd773a5','1574648420','no'),(1491,'_transient_dash_v2_01e18dead815ce736e3b9cccfbd773a5','<div class=\"rss-widget\"><ul><li>Ocorreu um erro. A causa provável é o feed estar offline. Tente mais tarde. </li></ul></div><div class=\"rss-widget\"><ul><li>Ocorreu um erro. A causa provável é o feed estar offline. Tente mais tarde. </li></ul></div>','no'),(1492,'_site_transient_timeout_community-events-1aecf33ab8525ff212ebdffbb438372e','1574648420','no'),(1493,'_site_transient_community-events-1aecf33ab8525ff212ebdffbb438372e','a:3:{s:9:\"sandboxed\";b:0;s:8:\"location\";a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}s:6:\"events\";a:1:{i:0;a:7:{s:4:\"type\";s:6:\"meetup\";s:5:\"title\";s:41:\"WordPress, Desenvolvimento e Home Office \";s:3:\"url\";s:47:\"https://www.meetup.com/wp-rio/events/266322865/\";s:6:\"meetup\";s:31:\"WordPress Meetup Rio de Janeiro\";s:10:\"meetup_url\";s:30:\"https://www.meetup.com/wp-rio/\";s:4:\"date\";s:19:\"2019-11-25 19:30:00\";s:8:\"location\";a:4:{s:8:\"location\";s:22:\"Rio de Janeiro, Brazil\";s:7:\"country\";s:2:\"br\";s:8:\"latitude\";d:-22.906059265136999;s:9:\"longitude\";d:-43.176895141602003;}}}}','no');
/*!40000 ALTER TABLE `gp_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gp_postmeta`
--

DROP TABLE IF EXISTS `gp_postmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=477 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gp_postmeta`
--

LOCK TABLES `gp_postmeta` WRITE;
/*!40000 ALTER TABLE `gp_postmeta` DISABLE KEYS */;
INSERT INTO `gp_postmeta` VALUES (7,6,'_edit_last','1'),(8,6,'_edit_lock','1569285246:1'),(9,7,'_edit_last','1'),(10,7,'_edit_lock','1568766171:1'),(11,8,'_edit_last','1'),(12,8,'_edit_lock','1568765060:1'),(19,7,'total_doado','123.11'),(20,7,'_total_doado','field_5d72e9770e0e6'),(21,6,'total_doado','11.71'),(22,6,'_total_doado','field_5d72e9770e0e6'),(23,11,'_edit_last','1'),(24,11,'_edit_lock','1568067518:1'),(25,13,'_edit_last','1'),(26,13,'_edit_lock','1568077695:1'),(27,15,'_edit_last','1'),(28,15,'_edit_lock','1569355066:1'),(29,17,'_edit_last','1'),(30,17,'_edit_lock','1569201129:1'),(31,18,'_edit_last','1'),(32,18,'_edit_lock','1569357298:1'),(33,17,'imagem','51'),(34,17,'_imagem','field_5d7da4a1018b6'),(35,17,'registrados','a:1:{i:0;s:1:\"1\";}'),(36,17,'_registrados','field_5d7da4b0018b7'),(37,21,'_edit_last','1'),(38,21,'_edit_lock','1574610689:1'),(39,26,'_wp_attached_file','2019/09/urso_polar_408389.png'),(40,26,'_wp_attachment_metadata','a:4:{s:5:\"width\";i:304;s:6:\"height\";i:200;s:4:\"file\";s:29:\"2019/09/urso_polar_408389.png\";s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),(41,7,'_wp_old_slug','nome-especie-2'),(42,7,'imagem','26'),(43,7,'_imagem','field_5d8174f971334'),(44,27,'_wp_attached_file','2019/09/gorila_408393.png'),(45,27,'_wp_attachment_metadata','a:4:{s:5:\"width\";i:304;s:6:\"height\";i:200;s:4:\"file\";s:25:\"2019/09/gorila_408393.png\";s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),(46,6,'_wp_old_slug','nome-especie-1'),(47,6,'imagem','59'),(48,6,'_imagem','field_5d8174f971334'),(49,29,'_edit_last','1'),(50,29,'_edit_lock','1569361940:1'),(158,15,'imagem','51'),(159,15,'_imagem','field_5d7da4a1018b6'),(162,15,'data_evento','20190309'),(163,15,'_data_evento','field_5d8587e40b30e'),(164,17,'data_evento','20190922'),(165,17,'_data_evento','field_5d8587e40b30e'),(169,15,'registrados','a:1:{i:0;s:1:\"1\";}'),(170,15,'_registrados','field_5d7da4b0018b7'),(171,51,'_wp_attached_file','2019/09/festa-piquenique.jpg'),(172,51,'_wp_attachment_metadata','a:4:{s:5:\"width\";i:775;s:6:\"height\";i:477;s:4:\"file\";s:28:\"2019/09/festa-piquenique.jpg\";s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),(173,52,'_edit_lock','1569201176:1'),(174,52,'_edit_last','1'),(175,52,'imagem','51'),(176,52,'_imagem','field_5d7da4a1018b6'),(177,52,'registrados',''),(178,52,'_registrados','field_5d7da4b0018b7'),(179,52,'data_evento','20190902'),(180,52,'_data_evento','field_5d8587e40b30e'),(203,55,'_edit_lock','1569284540:1'),(204,55,'_edit_last','1'),(205,56,'_wp_attached_file','2019/09/lemure.jpg'),(206,56,'_wp_attachment_metadata','a:4:{s:5:\"width\";i:600;s:6:\"height\";i:450;s:4:\"file\";s:18:\"2019/09/lemure.jpg\";s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),(207,55,'total_doado','1'),(208,55,'_total_doado','field_5d72e9770e0e6'),(209,55,'imagem','56'),(210,55,'_imagem','field_5d8174f971334'),(211,57,'_edit_lock','1574609144:1'),(212,57,'_edit_last','1'),(213,58,'_wp_attached_file','2019/09/leopardo-amur-1.jpg'),(214,58,'_wp_attachment_metadata','a:4:{s:5:\"width\";i:600;s:6:\"height\";i:450;s:4:\"file\";s:27:\"2019/09/leopardo-amur-1.jpg\";s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),(215,57,'total_doado','298.71'),(216,57,'_total_doado','field_5d72e9770e0e6'),(217,57,'imagem','108'),(218,57,'_imagem','field_5d8174f971334'),(219,59,'_wp_attached_file','2019/09/gorila-montanha.jpg'),(220,59,'_wp_attachment_metadata','a:4:{s:5:\"width\";i:571;s:6:\"height\";i:600;s:4:\"file\";s:27:\"2019/09/gorila-montanha.jpg\";s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),(317,84,'data_evento','19950809'),(318,84,'_data_evento','field_5d8587e40b30e'),(320,84,'imagem','85'),(321,84,'_imagem','field_5d7da4a1018b6'),(322,84,'registrados','a:1:{i:0;s:1:\"1\";}'),(323,84,'_registrados','field_5d7da4b0018b7'),(324,84,'_edit_lock','1569465427:1'),(325,84,'_edit_last','1'),(369,108,'_wp_attached_file','http://sustentabilidade.local/wp-content/uploads/2019/09/gurren_lagann___simon_wallpaper_by_aquanaplayselsword-d5gpnoo.jpg'),(372,108,'_edit_lock','1569455302:1'),(373,59,'_edit_lock','1569455299:1'),(374,27,'_edit_lock','1569455322:1'),(376,111,'_edit_lock','1573923776:1'),(377,111,'_edit_last','1'),(378,113,'_edit_lock','1573918399:1'),(379,113,'_edit_last','1'),(380,111,'afiliados','a:1:{i:0;s:1:\"1\";}'),(381,111,'_afiliados','field_5dbdb79f5c95f'),(382,116,'_edit_lock','1572722908:1'),(383,116,'_edit_last','1'),(384,116,'afiliados','a:1:{i:0;s:1:\"1\";}'),(385,116,'_afiliados','field_5dbdb79f5c95f'),(386,117,'_edit_lock','1574529532:1'),(387,117,'_edit_last','1'),(388,122,'_edit_lock','1574610211:1'),(389,122,'_edit_last','1'),(390,122,'descricao','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque quis vestibulum diam. Praesent consequat justo vel nunc vestibulum laoreet sed id enim. Vivamus quis nunc eros. Sed a metus volutpat est interdum maximus nec in justo. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Integer efficitur lectus sed mauris gravida, et tincidunt nisl porta. Vestibulum at ligula aliquet velit sollicitudin venenatis rhoncus nec turpis. Aenean sit amet auctor arcu. Mauris consectetur arcu nec orci rhoncus porta. Nulla non vehicula metus. Nulla a orci vitae purus porta sagittis nec id nisl. Curabitur hendrerit quam vitae mauris ornare, a tempor nibh tincidunt. Cras tempor velit tincidunt mauris imperdiet cursus.\r\n\r\nNam purus purus, varius sed aliquet eu, interdum a ante. Aenean blandit justo sit amet sapien commodo, a faucibus risus rutrum. Nulla in posuere nisl. Praesent et gravida tortor. Vestibulum congue consectetur odio et pharetra. Vivamus malesuada enim quis arcu egestas, non tristique purus tempus. Aenean est massa, commodo a nisl ut, fermentum facilisis dolor. Proin pulvinar sed enim nec blandit. Cras faucibus lectus id neque rhoncus, et tempus odio mollis.\r\n\r\nPellentesque in nisl in massa faucibus rhoncus ac sed felis. Donec vitae lacus quis erat laoreet vestibulum. Integer ultricies, urna nec porta hendrerit, justo ligula tincidunt lorem, ac convallis neque tellus sit amet libero. Nulla ut massa ac turpis volutpat efficitur. Aenean id elit felis. Cras suscipit et augue sit amet tincidunt. Vestibulum semper ligula lectus, laoreet volutpat enim condimentum in.'),(391,122,'_descricao','field_5dbe1a83e57cc'),(392,122,'iniciativa','a:1:{i:0;s:3:\"111\";}'),(393,122,'_iniciativa','field_5dbe1ac7e57cd'),(394,122,'assinantes','a:2:{i:0;s:1:\"2\";i:1;s:1:\"4\";}'),(395,122,'_assinantes','field_5dbe1af2e57ce'),(396,125,'_edit_lock','1574611411:1'),(397,125,'_edit_last','1'),(398,127,'data_evento','1995-08-09'),(399,127,'_data_evento','field_5d8587e40b30e'),(400,128,'_wp_attached_file','2019/11/Chicago-night-lights-l.jpg'),(401,127,'imagem','128'),(402,127,'_imagem','field_5d7da4a1018b6'),(422,136,'iniciativa','a:1:{i:0;s:3:\"116\";}'),(423,136,'_iniciativa','field_5dbe1ac7e57cd'),(424,137,'iniciativa','a:1:{i:0;s:3:\"116\";}'),(425,137,'_iniciativa','field_5dbe1ac7e57cd'),(426,138,'iniciativa','a:1:{i:0;s:3:\"116\";}'),(427,138,'_iniciativa','field_5dbe1ac7e57cd'),(428,138,'descricao','teste ini 2'),(429,138,'_descricao','field_5dbe1a83e57cc'),(430,139,'iniciativa','a:1:{i:0;s:3:\"116\";}'),(431,139,'_iniciativa','field_5dbe1ac7e57cd'),(432,139,'descricao','teste ini 2'),(433,139,'_descricao','field_5dbe1a83e57cc'),(434,140,'iniciativa','a:1:{i:0;s:3:\"116\";}'),(435,140,'_iniciativa','field_5dbe1ac7e57cd'),(436,140,'descricao','conteudo ini 2'),(437,140,'_descricao','field_5dbe1a83e57cc'),(438,140,'_edit_lock','1574610160:1'),(439,141,'iniciativa','a:1:{i:0;s:3:\"116\";}'),(440,141,'_iniciativa','field_5dbe1ac7e57cd'),(441,141,'descricao','abc'),(442,141,'_descricao','field_5dbe1a83e57cc'),(443,141,'assinantes','a:0:{}'),(444,141,'_assinantes','field_5dbe1af2e57ce'),(445,142,'iniciativa','a:1:{i:0;s:3:\"116\";}'),(446,142,'_iniciativa','field_5dbe1ac7e57cd'),(447,142,'descricao','asiduhadiu'),(448,142,'_descricao','field_5dbe1a83e57cc'),(449,142,'assinantes','a:1:{i:0;s:1:\"1\";}'),(450,142,'_assinantes','field_5dbe1af2e57ce'),(451,143,'_edit_lock','1574611407:1'),(452,143,'_edit_last','1'),(453,143,'descricao','desc'),(454,143,'_descricao','field_5dbe1a83e57cc'),(455,143,'iniciativa','a:1:{i:0;s:3:\"111\";}'),(456,143,'_iniciativa','field_5dbe1ac7e57cd'),(457,143,'assinantes',''),(458,143,'_assinantes','field_5dbe1af2e57ce'),(459,144,'iniciativa','a:1:{i:0;s:3:\"116\";}'),(460,144,'_iniciativa','field_5dbe1ac7e57cd'),(461,144,'descricao','acca'),(462,144,'_descricao','field_5dbe1a83e57cc'),(463,144,'assinantes','a:2:{i:0;s:1:\"1\";i:1;s:1:\"1\";}'),(464,144,'_assinantes','field_5dbe1af2e57ce'),(465,145,'iniciativa','a:1:{i:0;s:3:\"111\";}'),(466,145,'_iniciativa','field_5dbe1ac7e57cd'),(467,145,'descricao','asiuhsdaih'),(468,145,'_descricao','field_5dbe1a83e57cc'),(469,145,'assinantes','a:1:{i:0;s:1:\"1\";}'),(470,145,'_assinantes','field_5dbe1af2e57ce'),(471,146,'iniciativa','a:1:{i:0;s:3:\"116\";}'),(472,146,'_iniciativa','field_5dbe1ac7e57cd'),(473,146,'descricao','aisuhaduh'),(474,146,'_descricao','field_5dbe1a83e57cc'),(475,146,'assinantes','a:2:{i:0;s:1:\"1\";i:1;s:1:\"0\";}'),(476,146,'_assinantes','field_5dbe1af2e57ce');
/*!40000 ALTER TABLE `gp_postmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gp_posts`
--

DROP TABLE IF EXISTS `gp_posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gp_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB AUTO_INCREMENT=147 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gp_posts`
--

LOCK TABLES `gp_posts` WRITE;
/*!40000 ALTER TABLE `gp_posts` DISABLE KEYS */;
INSERT INTO `gp_posts` VALUES (6,1,'2019-09-06 19:10:46','2019-09-06 22:10:46','Os cientistas consideram o gorila da montanha (Gorilla beringei beringei) uma subespécie de gorila em perigo crítico de extinção, com apenas 720 indivíduos no seu estado selvagem. Mais de 200, habitam o Parque Nacional de Virunga, localizado na zona este da República Democrática do Congo, na fronteira com o Ruanda e Uganda. Áreas de conflito humano permanente que se repercute na perda dos habitats naturais da espécie e na caça ilegal do gorila da montanha.\r\nGraças aos esforços de conservação encetados nos últimos 12 anos em Virunga, a população de gorilas da montanha aumentou cerca de 14% e cerca de 12% em Bwindi, no Uganda, considerado o segundo lar desta espécie.\r\nPor Portugal ser o principal importador de madeira tropical oriunda da Republica Democrática do Congo, a WWF desenvolve o Programa da Rede Ibérica de Comércio Florestal, que visa combater a Desflorestação na Bacia do Congo, através de politicas de compras responsáveis de madeira, eliminando os produtos de origem ilegal. Desta forma a WWF combate a exploração florestal ilegal que destrói o habitat do Gorila da Montanha.','Gorila da montanha','','publish','closed','closed','','gorila-da-montanha','','','2019-09-23 21:27:50','2019-09-24 00:27:50','',0,'http://sustentabilidade.local/?post_type=especie&#038;p=6',0,'especie','',0),(7,1,'2019-09-06 19:42:47','2019-09-06 22:42:47','O Urso Polar do Ártico (Ursus maritimus) converteu-se no ícone simbólico das mais recentes vítimas de perda de habitats devido às consequências nefastas das mudanças climáticas.\r\nClassificado como uma espécie em perigo, pela Acta dos Estados Unidos sobre Espécies Ameaçadas, o urso polar pode extinguir-se das planícies gélidas do Árctico no próximo século, se a tendência de aumento de temperatura naquele território se mantiver.\r\nA WWF apoia investigações no campo que procuram entender como as alterações climáticas afectam a vida desta espécie e procura desenvolver estratégias de adaptação. O trabalho da organização de conservação é desenvolvido em estreita colaboração com os Governos e Indústrias na tentativa de se reduzirem ameaças de actividades industriais e comerciais desenvolvidas naquela zona, como transportes, exploração de gás e petróleo. A WWF procura ainda minimizar os confrontos entre a comunidade local e os ursos, que possam ocorrer devido a questões ligadas com o território e alimentação.','Urso Polar','','publish','closed','closed','','urso-polar','','','2019-09-17 21:17:28','2019-09-18 00:17:28','',0,'http://sustentabilidade.local/?post_type=especie&#038;p=7',0,'especie','',0),(8,1,'2019-09-06 20:19:55','2019-09-06 23:19:55','a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:7:\"especie\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}','Especie','especie','publish','closed','closed','','group_5d72e972c5a8b','','','2019-09-17 21:06:27','2019-09-18 00:06:27','',0,'http://sustentabilidade.local/?post_type=acf-field-group&#038;p=8',0,'acf-field-group','',0),(9,1,'2019-09-06 20:19:55','2019-09-06 23:19:55','a:12:{s:4:\"type\";s:6:\"number\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";i:0;s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:3:\"min\";i:0;s:3:\"max\";s:0:\"\";s:4:\"step\";s:4:\"0.01\";}','total_doado','total_doado','publish','closed','closed','','field_5d72e9770e0e6','','','2019-09-06 20:42:17','2019-09-06 23:42:17','',8,'http://sustentabilidade.local/?post_type=acf-field&#038;p=9',0,'acf-field','',0),(11,1,'2019-09-09 19:21:00','2019-09-09 22:21:00','','Login','','publish','closed','closed','','login','','','2019-09-09 19:21:00','2019-09-09 22:21:00','',0,'http://sustentabilidade.local/?page_id=11',0,'page','',0),(12,1,'2019-09-09 19:21:00','2019-09-09 22:21:00','','Login','','inherit','closed','closed','','11-revision-v1','','','2019-09-09 19:21:00','2019-09-09 22:21:00','',11,'http://sustentabilidade.local/2019/09/09/11-revision-v1/',0,'revision','',0),(13,1,'2019-09-09 22:08:15','2019-09-10 01:08:15','','Logout','','publish','closed','closed','','logout','','','2019-09-09 22:08:15','2019-09-10 01:08:15','',0,'http://sustentabilidade.local/?page_id=13',0,'page','',0),(14,1,'2019-09-09 22:08:15','2019-09-10 01:08:15','','Logout','','inherit','closed','closed','','13-revision-v1','','','2019-09-09 22:08:15','2019-09-10 01:08:15','',13,'http://sustentabilidade.local/2019/09/09/13-revision-v1/',0,'revision','',0),(15,1,'2019-09-14 23:30:00','2019-09-15 02:30:00','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed luctus sollicitudin purus sed tempus. Nunc dui felis, suscipit a orci quis, sodales pharetra nunc. Quisque bibendum vehicula massa ut sollicitudin. Duis at blandit nulla. Quisque massa enim, sodales vel erat vel, suscipit hendrerit nisl. Suspendisse potenti. Cras at quam sit amet felis sollicitudin fringilla. Fusce eget justo quis eros elementum mattis sit amet id urna. Vivamus egestas fringilla odio, sed viverra neque luctus id. Donec venenatis fringilla metus, eu tempor enim rutrum id. Vivamus tincidunt non est at dapibus. Vestibulum et tempor erat. Nam finibus laoreet enim id pellentesque. Phasellus pulvinar nisi nec ligula consequat tincidunt. Vivamus efficitur augue eu facilisis tristique. Maecenas eu ipsum pretium, venenatis mi eu, auctor eros.\r\n\r\nMauris quam leo, viverra sit amet congue nec, malesuada auctor metus. Vestibulum at nisi laoreet, tincidunt elit at, ullamcorper magna. Sed at imperdiet nulla. Sed hendrerit faucibus orci, eu rhoncus neque faucibus ut. Suspendisse potenti. Pellentesque eu lorem eleifend, laoreet dolor tincidunt, placerat sapien. Curabitur malesuada rhoncus laoreet. Aliquam eget faucibus tellus. Nullam et leo sed augue interdum molestie vel eget dolor.','Evento 1','','publish','closed','closed','','evento-1','','','2019-09-23 21:39:42','2019-09-24 00:39:42','',0,'http://sustentabilidade.local/?post_type=evento&#038;p=15',0,'evento','',0),(17,1,'2019-09-14 23:30:37','2019-09-15 02:30:37','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed luctus sollicitudin purus sed tempus. Nunc dui felis, suscipit a orci quis, sodales pharetra nunc. Quisque bibendum vehicula massa ut sollicitudin. Duis at blandit nulla. Quisque massa enim, sodales vel erat vel, suscipit hendrerit nisl. Suspendisse potenti. Cras at quam sit amet felis sollicitudin fringilla. Fusce eget justo quis eros elementum mattis sit amet id urna. Vivamus egestas fringilla odio, sed viverra neque luctus id. Donec venenatis fringilla metus, eu tempor enim rutrum id. Vivamus tincidunt non est at dapibus. Vestibulum et tempor erat. Nam finibus laoreet enim id pellentesque. Phasellus pulvinar nisi nec ligula consequat tincidunt. Vivamus efficitur augue eu facilisis tristique. Maecenas eu ipsum pretium, venenatis mi eu, auctor eros.\r\n\r\nMauris quam leo, viverra sit amet congue nec, malesuada auctor metus. Vestibulum at nisi laoreet, tincidunt elit at, ullamcorper magna. Sed at imperdiet nulla. Sed hendrerit faucibus orci, eu rhoncus neque faucibus ut. Suspendisse potenti. Pellentesque eu lorem eleifend, laoreet dolor tincidunt, placerat sapien. Curabitur malesuada rhoncus laoreet. Aliquam eget faucibus tellus. Nullam et leo sed augue interdum molestie vel eget dolor.','Evento 2','','publish','closed','closed','','evento-2','','','2019-09-22 21:28:46','2019-09-23 00:28:46','',0,'http://sustentabilidade.local/?post_type=evento&#038;p=17',0,'evento','',0),(18,1,'2019-09-14 23:41:51','2019-09-15 02:41:51','a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:6:\"evento\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}','Evento','evento','publish','closed','closed','','group_5d7da49693b77','','','2019-09-24 17:00:43','2019-09-24 20:00:43','',0,'http://sustentabilidade.local/?post_type=acf-field-group&#038;p=18',0,'acf-field-group','',0),(19,1,'2019-09-14 23:41:51','2019-09-15 02:41:51','a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}','Imagem','imagem','publish','closed','closed','','field_5d7da4a1018b6','','','2019-09-14 23:41:51','2019-09-15 02:41:51','',18,'http://sustentabilidade.local/?post_type=acf-field&p=19',0,'acf-field','',0),(20,1,'2019-09-14 23:41:51','2019-09-15 02:41:51','a:9:{s:4:\"type\";s:4:\"user\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:4:\"role\";s:0:\"\";s:10:\"allow_null\";i:0;s:8:\"multiple\";i:1;s:13:\"return_format\";s:5:\"array\";}','Registrados','registrados','publish','closed','closed','','field_5d7da4b0018b7','','','2019-09-14 23:41:51','2019-09-15 02:41:51','',18,'http://sustentabilidade.local/?post_type=acf-field&p=20',1,'acf-field','',0),(21,1,'2019-09-15 01:23:37','2019-09-15 04:23:37','','Cadastro','','publish','closed','closed','','cadastro','','','2019-09-24 18:54:54','2019-09-24 21:54:54','',0,'http://sustentabilidade.local/?page_id=21',0,'page','',0),(22,1,'2019-09-15 01:23:37','2019-09-15 04:23:37','','cadastro','','inherit','closed','closed','','21-revision-v1','','','2019-09-15 01:23:37','2019-09-15 04:23:37','',21,'http://sustentabilidade.local/2019/09/15/21-revision-v1/',0,'revision','',0),(24,1,'2019-09-17 21:06:27','2019-09-18 00:06:27','a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}','Imagem','imagem','publish','closed','closed','','field_5d8174f971334','','','2019-09-17 21:06:27','2019-09-18 00:06:27','',8,'http://sustentabilidade.local/?post_type=acf-field&p=24',1,'acf-field','',0),(25,1,'2019-09-17 21:13:18','2019-09-18 00:13:18','O Urso Polar do Ártico (Ursus maritimus) converteu-se no ícone simbólico das mais recentes vítimas de perda de habitats devido às consequências nefastas das mudanças climáticas.\nClassificado como uma espécie em perigo, pela Acta dos Estados Unidos sobre Espécies Ameaçadas, o urso polar pode extinguir-se das planícies gélidas do Árctico no próximo século, se a tendência de aumento de temperatura naquele território se mantiver.\nA WWF apoia investigações no campo que procuram entender como as alterações climáticas afectam a vida desta espécie e procura desenvolver estratégias de adaptação. O trabalho da organização de conservação é desenvolvido em estreita colaboração com os Governos e Indústrias na tentativa de se reduzirem ameaças de actividades industriais e comerciais desenvolvidas naquela zona, como transportes, exploração de gás e petróleo. A WWF procura ainda minimizar os confrontos entre a comunidade local e os ursos, que possam ocorrer devido a questões ligadas com o território e alimentação.','Urso Polar','','inherit','closed','closed','','7-autosave-v1','','','2019-09-17 21:13:18','2019-09-18 00:13:18','',7,'http://sustentabilidade.local/2019/09/17/7-autosave-v1/',0,'revision','',0),(26,1,'2019-09-17 21:17:23','2019-09-18 00:17:23','','urso_polar_408389','','inherit','open','closed','','urso_polar_408389','','','2019-09-17 21:17:23','2019-09-18 00:17:23','',7,'http://sustentabilidade.local/wp-content/uploads/2019/09/urso_polar_408389.png',0,'attachment','image/png',0),(27,1,'2019-09-17 21:26:01','2019-09-18 00:26:01','','gorila_408393','','inherit','open','closed','','gorila_408393','','','2019-09-17 21:26:01','2019-09-18 00:26:01','',6,'http://sustentabilidade.local/wp-content/uploads/2019/09/gorila_408393.png',0,'attachment','image/png',0),(28,1,'2019-09-20 23:44:57','2019-09-21 02:44:57','a:8:{s:4:\"type\";s:11:\"date_picker\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:14:\"display_format\";s:5:\"d/m/Y\";s:13:\"return_format\";s:5:\"d/m/Y\";s:9:\"first_day\";i:1;}','data_evento','data_evento','publish','closed','closed','','field_5d8587e40b30e','','','2019-09-24 17:00:43','2019-09-24 20:00:43','',18,'http://sustentabilidade.local/?post_type=acf-field&#038;p=28',2,'acf-field','',0),(29,1,'2019-09-21 15:37:38','2019-09-21 18:37:38','Página para criar novos eventos, defina o nome do seu evento, uma breve descrição, uma imagem e data. Outros usuários podem confirmar o comparecimento nos seus eventos. ','Cria Evento','','publish','closed','closed','','cria-evento','','','2019-09-24 18:54:43','2019-09-24 21:54:43','',0,'http://sustentabilidade.local/?page_id=29',0,'page','',0),(30,1,'2019-09-21 15:37:38','2019-09-21 18:37:38','','cria-evento','','inherit','closed','closed','','29-revision-v1','','','2019-09-21 15:37:38','2019-09-21 18:37:38','',29,'http://sustentabilidade.local/2019/09/21/29-revision-v1/',0,'revision','',0),(51,1,'2019-09-22 21:28:21','2019-09-23 00:28:21','','festa-piquenique','','inherit','open','closed','','festa-piquenique','','','2019-09-22 21:28:21','2019-09-23 00:28:21','',17,'http://sustentabilidade.local/wp-content/uploads/2019/09/festa-piquenique.jpg',0,'attachment','image/jpeg',0),(52,1,'2019-09-22 22:15:16','2019-09-23 01:15:16','Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.','Evento 3','','publish','closed','closed','','evento-3','','','2019-09-22 22:15:16','2019-09-23 01:15:16','',0,'http://sustentabilidade.local/?post_type=evento&#038;p=52',0,'evento','',0),(55,1,'2019-09-23 21:24:08','2019-09-24 00:24:08','O lêmure-gentil-do-lago-Alaotra, lêmure-do-bambu-do-lago Alaotra ou Lêmure-do-Alaotra (Hapalemur alaotrensis) localmente conhecido como Bandro, vive nas regiões próximas ao Lago Alaotra no Madagascar. Ele é endêmico nos canaviais, principalmente, que são o seu habitat natural. Sua alimentação porém não é composta de bambu, e sim de palhetas de papiros, uma planta que cresce na região.','Lêmure-do-norte','','publish','closed','closed','','lemure-do-norte','','','2019-09-23 21:24:08','2019-09-24 00:24:08','',0,'http://sustentabilidade.local/?post_type=especie&#038;p=55',0,'especie','',0),(56,1,'2019-09-23 21:24:06','2019-09-24 00:24:06','','lemure','','inherit','open','closed','','lemure','','','2019-09-23 21:24:06','2019-09-24 00:24:06','',55,'http://sustentabilidade.local/wp-content/uploads/2019/09/lemure.jpg',0,'attachment','image/jpeg',0),(57,1,'2019-09-23 21:25:10','2019-09-24 00:25:10','O leopardo-de-amur há muitos anos corre risco de extinção, restando apenas 40 deles, hoje, no mundo. Eles vivem no norte da China e no sul da Rússia e sua principal ameaça são os caçadores','Leopardo-de-amur','','publish','closed','closed','','leopardo-de-amur','','','2019-09-25 20:51:43','2019-09-25 23:51:43','',0,'http://sustentabilidade.local/?post_type=especie&#038;p=57',0,'especie','',0),(58,1,'2019-09-23 21:25:07','2019-09-24 00:25:07','','leopardo-amur-1','','inherit','open','closed','','leopardo-amur-1','','','2019-09-23 21:25:07','2019-09-24 00:25:07','',57,'http://sustentabilidade.local/wp-content/uploads/2019/09/leopardo-amur-1.jpg',0,'attachment','image/jpeg',0),(59,1,'2019-09-23 21:27:47','2019-09-24 00:27:47','','gorila-montanha','','inherit','open','closed','','gorila-montanha','','','2019-09-23 21:27:47','2019-09-24 00:27:47','',6,'http://sustentabilidade.local/wp-content/uploads/2019/09/gorila-montanha.jpg',0,'attachment','image/jpeg',0),(84,1,'2019-09-24 17:39:07','2019-09-24 20:39:07','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam euismod, sapien non eleifend interdum, purus urna hendrerit nunc, quis bibendum justo lacus vel lorem. Pellentesque purus sem, porttitor et euismod ut, hendrerit dapibus arcu. Maecenas eget metus hendrerit, fermentum orci sit amet, semper nunc. Donec aliquam venenatis mattis. Integer congue convallis lorem. Sed dui mi, faucibus a orci at, volutpat facilisis leo. Cras lacinia lorem eu nunc blandit bibendum. Maecenas diam justo, placerat sit amet arcu eu, suscipit interdum urna. Aliquam erat volutpat.\r\n\r\nIn convallis et nisi ut luctus. Nunc faucibus nulla id augue viverra, scelerisque pulvinar mi aliquam. Sed rutrum quam nec hendrerit scelerisque. Mauris tempor nulla a neque vehicula, consequat auctor magna dapibus. Vestibulum ut magna vel augue commodo mattis. Maecenas euismod justo nisi, quis fringilla justo luctus vel. Nunc consequat purus sit amet est tincidunt malesuada at sed dui. Integer egestas mi at bibendum euismod. Praesent vehicula tellus et velit elementum rhoncus. Morbi id ex ultricies, viverra nisi sed, tristique tortor. Vestibulum venenatis arcu sed mi mattis, id convallis neque dignissim. Proin eu turpis dolor. Proin tincidunt sapien posuere elit sodales, et accumsan tellus semper. Curabitur varius ipsum quis mauris vulputate facilisis. Duis vehicula volutpat tellus.','Evento 4','','publish','closed','closed','','evento-4','','','2019-09-25 23:39:29','2019-09-26 02:39:29','',0,'http://sustentabilidade.local/evento/evento-4/',0,'evento','',0),(86,1,'2019-09-24 18:52:11','2019-09-24 21:52:11','','Cria Evento','','inherit','closed','closed','','29-revision-v1','','','2019-09-24 18:52:11','2019-09-24 21:52:11','',29,'http://sustentabilidade.local/2019/09/24/29-revision-v1/',0,'revision','',0),(87,1,'2019-09-24 18:54:29','2019-09-24 21:54:29','Página para criar novos eventos, defina o nome do seu evento, uma breve descrição, uma imagem e data e aguarde ','Cria Evento','','inherit','closed','closed','','29-autosave-v1','','','2019-09-24 18:54:29','2019-09-24 21:54:29','',29,'http://sustentabilidade.local/2019/09/24/29-autosave-v1/',0,'revision','',0),(88,1,'2019-09-24 18:54:43','2019-09-24 21:54:43','Página para criar novos eventos, defina o nome do seu evento, uma breve descrição, uma imagem e data. Outros usuários podem confirmar o comparecimento nos seus eventos. ','Cria Evento','','inherit','closed','closed','','29-revision-v1','','','2019-09-24 18:54:43','2019-09-24 21:54:43','',29,'http://sustentabilidade.local/2019/09/24/29-revision-v1/',0,'revision','',0),(89,1,'2019-09-24 18:54:54','2019-09-24 21:54:54','','Cadastro','','inherit','closed','closed','','21-revision-v1','','','2019-09-24 18:54:54','2019-09-24 21:54:54','',21,'http://sustentabilidade.local/2019/09/24/21-revision-v1/',0,'revision','',0),(108,1,'2019-09-25 20:50:27','2019-09-25 23:50:27','','gurren_lagann___simon_wallpaper_by_aquanaplayselsword-d5gpnoo','','inherit','open','closed','','gurren_lagann___simon_wallpaper_by_aquanaplayselsword-d5gpnoo','','','2019-09-25 20:50:27','2019-09-25 23:50:27','',0,'http://sustentabilidade.local/wp-content/uploads/2019/09/gurren_lagann___simon_wallpaper_by_aquanaplayselsword-d5gpnoo.jpg',0,'attachment','image/jpeg',0),(111,1,'2019-11-02 14:05:47','2019-11-02 17:05:47','<strong>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam accumsan nunc mauris, eget malesuada augue aliquam sit amet. Nunc ut quam id velit eleifend fringilla. Sed aliquet mauris ligula, vel venenatis ante ullamcorper non. Nulla facilisi. Nullam suscipit lobortis placerat. Ut auctor euismod libero, vel faucibus dolor. Vivamus fermentum est vitae enim mattis feugiat. Cras ac felis et velit gravida congue quis eu nisi. Etiam nec sem id diam tincidunt commodo. Sed ultrices gravida dictum. Integer pulvinar, metus aliquet elementum maximus, enim lorem cursus metus, ac sollicitudin tellus libero quis massa. Nullam sem augue, tincidunt nec egestas eu, semper non lacus. Integer dapibus risus at convallis dictum.</strong>\r\n\r\nUt tincidunt libero ut est faucibus bibendum. Proin imperdiet lacinia ligula, quis maximus odio posuere ut. Aenean consectetur, enim ut dapibus hendrerit, ex diam lobortis tortor, quis euismod magna elit sit amet purus. Proin placerat erat libero, vitae iaculis dui placerat sed. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Aenean venenatis leo quis tempus malesuada. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.\r\n<blockquote>Pellentesque bibendum risus orci, non sagittis lacus lobortis sed. Nullam non accumsan tortor, quis imperdiet elit. Donec aliquet quam augue, nec consequat massa molestie at. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Fusce euismod porttitor enim et egestas. Phasellus scelerisque dolor at eros elementum suscipit. Nam ac maximus dolor, a molestie lorem. Fusce convallis molestie dui sit amet vestibulum.</blockquote>\r\nDonec auctor ante magna. Etiam venenatis id arcu eget vulputate. Nam finibus euismod lorem, sed dignissim mauris luctus in. Ut at auctor dui. Proin augue purus, luctus ut dolor ut, placerat tincidunt mauris. Proin dignissim imperdiet lacus, at iaculis nulla ultricies sed. Fusce finibus, dolor sit amet dictum semper, velit risus dictum odio, id posuere ipsum leo nec ante. Fusce dapibus iaculis lorem, vitae vulputate arcu vehicula in. Cras sagittis vehicula erat, non rhoncus augue vulputate a. Integer lacus ligula, luctus in neque eget, feugiat pharetra orci. Etiam sollicitudin, erat a pretium luctus, ante urna gravida enim, sit amet tincidunt sem sapien in orci. Donec molestie tempor leo eget tincidunt. Phasellus rutrum aliquet eleifend.','Iniciativa 1','','publish','closed','closed','','iniciativa-1','','','2019-11-16 12:33:32','2019-11-16 15:33:32','',0,'http://sustentabilidade.local/?post_type=iniciativa&#038;p=111',0,'iniciativa','',0),(113,1,'2019-11-02 14:07:28','2019-11-02 17:07:28','a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:10:\"iniciativa\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}','Iniciativa','iniciativa','publish','closed','closed','','group_5dbdb79b25e57','','','2019-11-02 14:08:05','2019-11-02 17:08:05','',0,'http://sustentabilidade.local/?post_type=acf-field-group&#038;p=113',0,'acf-field-group','',0),(114,1,'2019-11-02 14:07:28','2019-11-02 17:07:28','a:9:{s:4:\"type\";s:4:\"user\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:4:\"role\";s:0:\"\";s:10:\"allow_null\";i:1;s:8:\"multiple\";i:1;s:13:\"return_format\";s:2:\"id\";}','afiliados','afiliados','publish','closed','closed','','field_5dbdb79f5c95f','','','2019-11-02 14:08:05','2019-11-02 17:08:05','',113,'http://sustentabilidade.local/?post_type=acf-field&#038;p=114',0,'acf-field','',0),(116,1,'2019-11-02 14:46:23','2019-11-02 17:46:23','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam accumsan nunc mauris, eget malesuada augue aliquam sit amet. Nunc ut quam id velit eleifend fringilla. Sed aliquet mauris ligula, vel venenatis ante ullamcorper non. Nulla facilisi. Nullam suscipit lobortis placerat. Ut auctor euismod libero, vel faucibus dolor. Vivamus fermentum est vitae enim mattis feugiat. Cras ac felis et velit gravida congue quis eu nisi. Etiam nec sem id diam tincidunt commodo. Sed ultrices gravida dictum. Integer pulvinar, metus aliquet elementum maximus, enim lorem cursus metus, ac sollicitudin tellus libero quis massa. Nullam sem augue, tincidunt nec egestas eu, semper non lacus. Integer dapibus risus at convallis dictum.\r\n\r\nUt tincidunt libero ut est faucibus bibendum. Proin imperdiet lacinia ligula, quis maximus odio posuere ut. Aenean consectetur, enim ut dapibus hendrerit, ex diam lobortis tortor, quis euismod magna elit sit amet purus. Proin placerat erat libero, vitae iaculis dui placerat sed. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Aenean venenatis leo quis tempus malesuada. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.\r\n\r\nPellentesque bibendum risus orci, non sagittis lacus lobortis sed. Nullam non accumsan tortor, quis imperdiet elit. Donec aliquet quam augue, nec consequat massa molestie at. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Fusce euismod porttitor enim et egestas. Phasellus scelerisque dolor at eros elementum suscipit. Nam ac maximus dolor, a molestie lorem. Fusce convallis molestie dui sit amet vestibulum.','Iniciativa 2','','publish','closed','closed','','iniciativa-2','','','2019-11-02 14:46:23','2019-11-02 17:46:23','',0,'http://sustentabilidade.local/?post_type=iniciativa&#038;p=116',0,'iniciativa','',0),(117,1,'2019-11-02 21:11:49','2019-11-03 00:11:49','a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:15:\"abaixo_assinado\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";a:1:{i:0;s:11:\"the_content\";}s:11:\"description\";s:0:\"\";}','Abaixo Assinado','abaixo-assinado','publish','closed','closed','','group_5dbe1a7d41448','','','2019-11-02 21:46:33','2019-11-03 00:46:33','',0,'http://sustentabilidade.local/?post_type=acf-field-group&#038;p=117',0,'acf-field-group','',0),(118,1,'2019-11-02 21:11:49','2019-11-03 00:11:49','a:10:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:9:\"new_lines\";s:0:\"\";}','Descricao','descricao','publish','closed','closed','','field_5dbe1a83e57cc','','','2019-11-02 21:11:49','2019-11-03 00:11:49','',117,'http://sustentabilidade.local/?post_type=acf-field&p=118',0,'acf-field','',0),(119,1,'2019-11-02 21:11:49','2019-11-03 00:11:49','a:12:{s:4:\"type\";s:12:\"relationship\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"post_type\";a:1:{i:0;s:10:\"iniciativa\";}s:8:\"taxonomy\";s:0:\"\";s:7:\"filters\";s:0:\"\";s:8:\"elements\";s:0:\"\";s:3:\"min\";i:1;s:3:\"max\";i:1;s:13:\"return_format\";s:2:\"id\";}','iniciativa','iniciativa','publish','closed','closed','','field_5dbe1ac7e57cd','','','2019-11-02 21:46:33','2019-11-03 00:46:33','',117,'http://sustentabilidade.local/?post_type=acf-field&#038;p=119',1,'acf-field','',0),(120,1,'2019-11-02 21:11:49','2019-11-03 00:11:49','a:9:{s:4:\"type\";s:4:\"user\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:4:\"role\";s:0:\"\";s:10:\"allow_null\";i:0;s:8:\"multiple\";i:1;s:13:\"return_format\";s:2:\"id\";}','assinantes','assinantes','publish','closed','closed','','field_5dbe1af2e57ce','','','2019-11-02 21:12:15','2019-11-03 00:12:15','',117,'http://sustentabilidade.local/?post_type=acf-field&#038;p=120',2,'acf-field','',0),(122,1,'2019-11-02 21:12:56','2019-11-03 00:12:56','','Abaixo Assinado 1','','publish','closed','closed','','abaixo-assinado-1','','','2019-11-02 21:12:56','2019-11-03 00:12:56','',0,'http://sustentabilidade.local/?post_type=abaixo_assinado&#038;p=122',0,'abaixo_assinado','',0),(124,1,'2019-11-23 14:06:54','0000-00-00 00:00:00','','Rascunho automático','','auto-draft','open','open','','','','','2019-11-23 14:06:54','0000-00-00 00:00:00','',0,'http://sustentabilidade.local/?p=124',0,'post','',0),(125,1,'2019-11-24 11:20:55','2019-11-24 14:20:55','','Cria Abaixo Assinado','','publish','closed','closed','','cria-abaixo-assinado','','','2019-11-24 11:20:55','2019-11-24 14:20:55','',0,'http://sustentabilidade.local/?page_id=125',0,'page','',0),(126,1,'2019-11-24 11:20:55','2019-11-24 14:20:55','','Cria Abaixo Assinado','','inherit','closed','closed','','125-revision-v1','','','2019-11-24 11:20:55','2019-11-24 14:20:55','',125,'http://sustentabilidade.local/2019/11/24/125-revision-v1/',0,'revision','',0),(127,1,'2019-11-24 12:10:04','2019-11-24 15:10:04','um evento legal','evento teste','','publish','closed','closed','','evento-teste','','','2019-11-24 12:10:04','2019-11-24 15:10:04','',0,'http://sustentabilidade.local/evento/evento-teste/',0,'evento','',0),(128,1,'2019-11-24 12:10:04','2019-11-24 15:10:04','','Chicago-night-lights-l','','inherit','open','closed','','chicago-night-lights-l','','','2019-11-24 12:10:04','2019-11-24 15:10:04','',127,'http://sustentabilidade.local/wp-content/uploads/2019/11/Chicago-night-lights-l.jpg',0,'attachment','image/jpeg',0),(136,1,'2019-11-24 12:23:28','2019-11-24 15:23:28','abaixo assaindo teste iniciativa 2','Abaixo Assinado teste','','publish','closed','closed','','abaixo-assinado-teste','','','2019-11-24 12:23:28','2019-11-24 15:23:28','',0,'http://sustentabilidade.local/2019/11/24/abaixo-assinado-teste/',0,'abaixo-assinado','',0),(137,1,'2019-11-24 12:26:16','2019-11-24 15:26:16','','Abaixo Assinado teste','','publish','closed','closed','','abaixo-assinado-teste-2','','','2019-11-24 12:26:16','2019-11-24 15:26:16','',0,'http://sustentabilidade.local/2019/11/24/abaixo-assinado-teste-2/',0,'abaixo-assinado','',0),(138,1,'2019-11-24 12:26:37','2019-11-24 15:26:37','','Abaixo Assinado teste','','publish','closed','closed','','abaixo-assinado-teste-3','','','2019-11-24 12:26:37','2019-11-24 15:26:37','',0,'http://sustentabilidade.local/2019/11/24/abaixo-assinado-teste-3/',0,'abaixo-assinado','',0),(139,1,'2019-11-24 12:27:48','2019-11-24 15:27:48','','Abaixo Assinado teste','','publish','closed','closed','','abaixo-assinado-teste-4','','','2019-11-24 12:27:48','2019-11-24 15:27:48','',0,'http://sustentabilidade.local/2019/11/24/abaixo-assinado-teste-4/',0,'abaixo-assinado','',0),(140,1,'2019-11-24 12:29:41','2019-11-24 15:29:41','','Abaixo Assinado teste','','publish','closed','closed','','abaixo-assinado-teste','','','2019-11-24 12:29:41','2019-11-24 15:29:41','',0,'http://sustentabilidade.local/abaixo_assinado/abaixo-assinado-teste/',0,'abaixo_assinado','',0),(141,1,'2019-11-24 12:46:05','2019-11-24 15:46:05','','titulo','','publish','closed','closed','','titulo','','','2019-11-24 12:46:05','2019-11-24 15:46:05','',0,'http://sustentabilidade.local/abaixo_assinado/titulo/',0,'abaixo_assinado','',0),(142,1,'2019-11-24 12:46:37','2019-11-24 15:46:37','','dec','','publish','closed','closed','','dec','','','2019-11-24 12:46:37','2019-11-24 15:46:37','',0,'http://sustentabilidade.local/abaixo_assinado/dec/',0,'abaixo_assinado','',0),(143,1,'2019-11-24 12:51:33','2019-11-24 15:51:33','','Teste as','','publish','closed','closed','','teste-as','','','2019-11-24 12:51:33','2019-11-24 15:51:33','',0,'http://sustentabilidade.local/?post_type=abaixo_assinado&#038;p=143',0,'abaixo_assinado','',0),(144,1,'2019-11-24 12:54:02','2019-11-24 15:54:02','','noo','','publish','closed','closed','','noo','','','2019-11-24 12:54:02','2019-11-24 15:54:02','',0,'http://sustentabilidade.local/abaixo_assinado/noo/',0,'abaixo_assinado','',0),(145,1,'2019-11-24 13:06:02','2019-11-24 16:06:02','','agora vai','','publish','closed','closed','','agora-vai','','','2019-11-24 13:06:02','2019-11-24 16:06:02','',0,'http://sustentabilidade.local/abaixo_assinado/agora-vai/',0,'abaixo_assinado','',0),(146,1,'2019-11-24 13:06:58','2019-11-24 16:06:58','','ueueueu','','publish','closed','closed','','ueueueu','','','2019-11-24 13:06:58','2019-11-24 16:06:58','',0,'http://sustentabilidade.local/abaixo_assinado/ueueueu/',0,'abaixo_assinado','',0);
/*!40000 ALTER TABLE `gp_posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gp_term_relationships`
--

DROP TABLE IF EXISTS `gp_term_relationships`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gp_term_relationships`
--

LOCK TABLES `gp_term_relationships` WRITE;
/*!40000 ALTER TABLE `gp_term_relationships` DISABLE KEYS */;
INSERT INTO `gp_term_relationships` VALUES (15,2,0),(15,3,0),(17,3,0),(52,3,0),(127,4,0);
/*!40000 ALTER TABLE `gp_term_relationships` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gp_term_taxonomy`
--

DROP TABLE IF EXISTS `gp_term_taxonomy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gp_term_taxonomy`
--

LOCK TABLES `gp_term_taxonomy` WRITE;
/*!40000 ALTER TABLE `gp_term_taxonomy` DISABLE KEYS */;
INSERT INTO `gp_term_taxonomy` VALUES (1,1,'category','',0,0),(2,2,'category','',0,1),(3,3,'category','',0,3),(4,4,'category','',0,1);
/*!40000 ALTER TABLE `gp_term_taxonomy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gp_termmeta`
--

DROP TABLE IF EXISTS `gp_termmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gp_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gp_termmeta`
--

LOCK TABLES `gp_termmeta` WRITE;
/*!40000 ALTER TABLE `gp_termmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `gp_termmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gp_terms`
--

DROP TABLE IF EXISTS `gp_terms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gp_terms`
--

LOCK TABLES `gp_terms` WRITE;
/*!40000 ALTER TABLE `gp_terms` DISABLE KEYS */;
INSERT INTO `gp_terms` VALUES (1,'Sem categoria','sem-categoria',0),(2,'Tipo de Evento 1','tipo-de-evento-1',0),(3,'Tipo de Evento 2','tipo-de-evento-2',0),(4,'Outros','outros',0);
/*!40000 ALTER TABLE `gp_terms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gp_usermeta`
--

DROP TABLE IF EXISTS `gp_usermeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gp_usermeta`
--

LOCK TABLES `gp_usermeta` WRITE;
/*!40000 ALTER TABLE `gp_usermeta` DISABLE KEYS */;
INSERT INTO `gp_usermeta` VALUES (1,1,'nickname','admin'),(2,1,'first_name',''),(3,1,'last_name',''),(4,1,'description',''),(5,1,'rich_editing','true'),(6,1,'syntax_highlighting','true'),(7,1,'comment_shortcuts','false'),(8,1,'admin_color','fresh'),(9,1,'use_ssl','0'),(10,1,'show_admin_bar_front','true'),(11,1,'locale',''),(12,1,'gp_capabilities','a:1:{s:13:\"administrator\";b:1;}'),(13,1,'gp_user_level','10'),(14,1,'dismissed_wp_pointers',''),(15,1,'show_welcome_panel','1'),(17,1,'gp_dashboard_quick_press_last_post_id','124'),(18,1,'community-events-location','a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}'),(19,1,'gp_user-settings','editor=tinymce&libraryContent=browse'),(20,1,'gp_user-settings-time','1572716758'),(23,2,'nickname','alexandre@teste.com'),(24,2,'first_name',''),(25,2,'last_name',''),(26,2,'description',''),(27,2,'rich_editing','true'),(28,2,'syntax_highlighting','true'),(29,2,'comment_shortcuts','false'),(30,2,'admin_color','fresh'),(31,2,'use_ssl','0'),(32,2,'show_admin_bar_front','true'),(33,2,'locale',''),(34,2,'gp_capabilities','a:1:{s:10:\"subscriber\";b:1;}'),(35,2,'gp_user_level','0'),(38,1,'session_tokens','a:2:{s:64:\"945f2547df6fdb2b11c1db8be5dc3ca42f0d072ca334feb5733f9d698e4d5384\";a:4:{s:10:\"expiration\";i:1574701590;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:105:\"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36\";s:5:\"login\";i:1574528790;}s:64:\"f70ad4e388a6756fb02595e815e21013110ee25127d6571dfff8636bfc79a267\";a:4:{s:10:\"expiration\";i:1574784723;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:105:\"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36\";s:5:\"login\";i:1574611923;}}'),(39,1,'gp_media_library_mode','list'),(40,3,'nickname','novousuario@gmail.com'),(41,3,'first_name',''),(42,3,'last_name',''),(43,3,'description',''),(44,3,'rich_editing','true'),(45,3,'syntax_highlighting','true'),(46,3,'comment_shortcuts','false'),(47,3,'admin_color','fresh'),(48,3,'use_ssl','0'),(49,3,'show_admin_bar_front','true'),(50,3,'locale',''),(51,3,'gp_capabilities','a:1:{s:10:\"subscriber\";b:1;}'),(52,3,'gp_user_level','0'),(54,1,'closedpostboxes_evento','a:0:{}'),(55,1,'metaboxhidden_evento','a:1:{i:0;s:7:\"slugdiv\";}'),(56,4,'nickname','email@teste.com'),(57,4,'first_name',''),(58,4,'last_name',''),(59,4,'description',''),(60,4,'rich_editing','true'),(61,4,'syntax_highlighting','true'),(62,4,'comment_shortcuts','false'),(63,4,'admin_color','fresh'),(64,4,'use_ssl','0'),(65,4,'show_admin_bar_front','true'),(66,4,'locale',''),(67,4,'gp_capabilities','a:1:{s:10:\"subscriber\";b:1;}'),(68,4,'gp_user_level','0'),(70,4,'community-events-location','a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}');
/*!40000 ALTER TABLE `gp_usermeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gp_users`
--

DROP TABLE IF EXISTS `gp_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gp_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gp_users`
--

LOCK TABLES `gp_users` WRITE;
/*!40000 ALTER TABLE `gp_users` DISABLE KEYS */;
INSERT INTO `gp_users` VALUES (1,'admin','$P$BJbFl8jg1VUzGbCxiqcAEbMsTeXea5.','admin','alexandre.faria95@gmail.com','','2019-08-31 02:03:10','',0,'admin'),(2,'alexandre@teste.com','$P$Bl3k/Taum.ehNB5lUXZRy6kaVe6wb80','alexandreteste-com','alexandre@teste.com','','2019-09-17 23:10:12','',0,'alexandre@teste.com'),(3,'novousuario@gmail.com','$P$B.XVuQ.Lr5rpAR.jvZW9XXEOLeQJ3s.','novousuariogmail-com','novousuario@gmail.com','','2019-09-22 00:36:21','',0,'novousuario@gmail.com'),(4,'email@teste.com','$P$BshBl3ix36jzgfrrXI3Jm6FPqDvrcB.','emailteste-com','email@teste.com','','2019-09-22 03:27:58','',0,'email@teste.com');
/*!40000 ALTER TABLE `gp_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gp_watsonconv_actions`
--

DROP TABLE IF EXISTS `gp_watsonconv_actions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gp_watsonconv_actions` (
  `id` int(64) unsigned NOT NULL AUTO_INCREMENT,
  `a_request_id` int(64) unsigned NOT NULL,
  `p_name` varchar(512) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `p_result_variable` varchar(512) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `p_type` enum('client','server','web-action','cloud-function') COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `p_parameters` text COLLATE utf8mb4_unicode_520_ci,
  `p_credentials` varchar(5120) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gp_watsonconv_actions`
--

LOCK TABLES `gp_watsonconv_actions` WRITE;
/*!40000 ALTER TABLE `gp_watsonconv_actions` DISABLE KEYS */;
/*!40000 ALTER TABLE `gp_watsonconv_actions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gp_watsonconv_contexts`
--

DROP TABLE IF EXISTS `gp_watsonconv_contexts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gp_watsonconv_contexts` (
  `id` int(64) unsigned NOT NULL AUTO_INCREMENT,
  `p_global` text COLLATE utf8mb4_unicode_520_ci,
  `p_skills` text COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gp_watsonconv_contexts`
--

LOCK TABLES `gp_watsonconv_contexts` WRITE;
/*!40000 ALTER TABLE `gp_watsonconv_contexts` DISABLE KEYS */;
/*!40000 ALTER TABLE `gp_watsonconv_contexts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gp_watsonconv_debug_log`
--

DROP TABLE IF EXISTS `gp_watsonconv_debug_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gp_watsonconv_debug_log` (
  `id` int(64) unsigned NOT NULL AUTO_INCREMENT,
  `p_message` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `p_details` text COLLATE utf8mb4_unicode_520_ci,
  `p_event` varchar(256) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `s_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gp_watsonconv_debug_log`
--

LOCK TABLES `gp_watsonconv_debug_log` WRITE;
/*!40000 ALTER TABLE `gp_watsonconv_debug_log` DISABLE KEYS */;
INSERT INTO `gp_watsonconv_debug_log` VALUES (1,'PHP-Curl is not installed','Php-curl is required for the chatbot to work. Please install it on your server.','5d7c4f06c9984','2019-09-14 02:23:02'),(2,'PHP-Curl is not installed','Php-curl is required for the chatbot to work. Please install it on your server.','5d7c4f1322fed','2019-09-14 02:23:15'),(3,'PHP-Curl is not installed','Php-curl is required for the chatbot to work. Please install it on your server.','5d7c502647a60','2019-09-14 02:27:50'),(4,'PHP-Curl is not installed','Php-curl is required for the chatbot to work. Please install it on your server.','5d7c502747616','2019-09-14 02:27:51'),(5,'PHP-Curl is not installed','Php-curl is required for the chatbot to work. Please install it on your server.','5d7c504c5ca7a','2019-09-14 02:28:28'),(6,'PHP-Curl is not installed','Php-curl is required for the chatbot to work. Please install it on your server.','5d7c50bea6271','2019-09-14 02:30:22'),(7,'PHP-Curl is not installed','Php-curl is required for the chatbot to work. Please install it on your server.','5d7c529b988c9','2019-09-14 02:38:19'),(8,'PHP-Curl is not installed','Php-curl is required for the chatbot to work. Please install it on your server.','5d7c529dd01e1','2019-09-14 02:38:21'),(9,'WP Error: wp_mail_failed. Could not instantiate mail function.','{\"to\":[\"alexandre.faria95@gmail.com\"],\"subject\":\"[Sustentabilidade] O seu site est\\u00e1 experimentando um problema t\\u00e9cnico\",\"message\":\"Ol\\u00e1.\\n\\nDesde o WordPress 5.2 existe um recurso interno que detecta quando um plugin ou tema causa um erro fatal em seu site e o notifica com esse e-mail autom\\u00e1tico.\\n\\nNeste caso, o WordPress detectou um erro com o seu tema: sustentabilidade.\\n\\nPrimeiro, visite o seu site (http:\\/\\/sustentabilidade.local\\/) e verifique se h\\u00e1 algum problema vis\\u00edvel. Em seguida, visite a p\\u00e1gina em que o erro foi encontrado (http:\\/\\/sustentabilidade.local\\/wp-admin\\/) e verifique se h\\u00e1 algum problema vis\\u00edvel.\\n\\nEntre em contato com equipe de suporte onde voc\\u00ea hospeda o seu site para obter ajuda para investigar esse problema.\\n\\nSe o seu site parece estar quebrado e voc\\u00ea n\\u00e3o pode acessar seu painel de controle como de costume, o WordPress agora tem um \\\"modo de restaura\\u00e7\\u00e3o\\\" especial. Isso permite que voc\\u00ea fa\\u00e7a login com seguran\\u00e7a no seu painel e investigue mais.\\n\\nhttp:\\/\\/sustentabilidade.local\\/wp-login.php?action=enter_recovery_mode&rm_token=HRUfgP1EOKE24VZgOMMLvY&rm_key=3epz4LYZtBqgGMuTt8x8VM\\n\\nPara manter seu site seguro, esse link expirar\\u00e1 em 1 dia. N\\u00e3o se preocupe com isso, no entanto, um novo link ser\\u00e1 enviado por e-mail para voc\\u00ea se o erro ocorrer novamente depois que o link expirar.\\n\\n\\n\\nDetalhes do erro\\n================\\nUm erro do tipo E_PARSE foi causado na linha 65 do arquivo \\/var\\/www\\/sustentabilidade.local\\/wp-content\\/themes\\/sustentabilidade\\/functions.php. Mensagem de erro: syntax error, unexpected \'=>\' (T_DOUBLE_ARROW), expecting \',\' or \')\'\",\"headers\":[],\"attachments\":[],\"phpmailer_exception_code\":2}','5d8677130e0be','2019-09-21 19:16:35'),(10,'WP Error: wp_mail_failed. SMTP Error: Could not authenticate.','{\"to\":[\"alexandre.faria95@gmail.com\"],\"subject\":\"TESTE SMTP\",\"message\":\"teste smtp\",\"headers\":[],\"attachments\":[],\"phpmailer_exception_code\":0}','5d8946dbf0596','2019-09-23 22:27:39'),(11,'WP Error: wp_mail_failed. SMTP Error: Could not authenticate.','{\"to\":[\"alexandre.faria95@gmail.com\"],\"subject\":\"teste\",\"message\":\"aa\",\"headers\":[],\"attachments\":[],\"phpmailer_exception_code\":0}','5d894782a221d','2019-09-23 22:30:26'),(12,'WP Error: wp_mail_failed. SMTP Error: Could not authenticate.','{\"to\":[\"alexandre.faria95@gmail.com\"],\"subject\":\"TESTE SMTP\",\"message\":\"aaa\",\"headers\":[],\"attachments\":[],\"phpmailer_exception_code\":0}','5d8947993a9af','2019-09-23 22:30:49'),(13,'WP Error: wp_mail_failed. SMTP Error: Could not authenticate.','{\"to\":[\"alexandre.faria95@gmail.com\"],\"subject\":\"TESTE SMTP\",\"message\":\"asdsada\",\"headers\":[],\"attachments\":[],\"phpmailer_exception_code\":0}','5d894957cd514','2019-09-23 22:38:15'),(14,'WP Error: wp_mail_failed. SMTP Error: Could not authenticate.','{\"to\":[\"alexandre.faria95@gmail.com\"],\"subject\":\"[Sustentabilidade] O seu site est\\u00e1 experimentando um problema t\\u00e9cnico\",\"message\":\"Ol\\u00e1.\\n\\nDesde o WordPress 5.2 existe um recurso interno que detecta quando um plugin ou tema causa um erro fatal em seu site e o notifica com esse e-mail autom\\u00e1tico.\\n\\nNeste caso, o WordPress detectou um erro com o seu tema: sustentabilidade.\\n\\nPrimeiro, visite o seu site (http:\\/\\/sustentabilidade.local\\/) e verifique se h\\u00e1 algum problema vis\\u00edvel. Em seguida, visite a p\\u00e1gina em que o erro foi encontrado (http:\\/\\/sustentabilidade.local\\/wp-admin\\/admin-ajax.php) e verifique se h\\u00e1 algum problema vis\\u00edvel.\\n\\nEntre em contato com equipe de suporte onde voc\\u00ea hospeda o seu site para obter ajuda para investigar esse problema.\\n\\nSe o seu site parece estar quebrado e voc\\u00ea n\\u00e3o pode acessar seu painel de controle como de costume, o WordPress agora tem um \\\"modo de restaura\\u00e7\\u00e3o\\\" especial. Isso permite que voc\\u00ea fa\\u00e7a login com seguran\\u00e7a no seu painel e investigue mais.\\n\\nhttp:\\/\\/sustentabilidade.local\\/wp-login.php?action=enter_recovery_mode&rm_token=eeUz0uXDbIyQ5JkbaaLvrP&rm_key=XzhRzz4HA9dNjoTMO1vV2z\\n\\nPara manter seu site seguro, esse link expirar\\u00e1 em 1 dia. N\\u00e3o se preocupe com isso, no entanto, um novo link ser\\u00e1 enviado por e-mail para voc\\u00ea se o erro ocorrer novamente depois que o link expirar.\\n\\n\\n\\nDetalhes do erro\\n================\\nUm erro do tipo E_PARSE foi causado na linha 89 do arquivo \\/var\\/www\\/sustentabilidade.local\\/wp-content\\/themes\\/sustentabilidade\\/functions.php. Mensagem de erro: syntax error, unexpected \')\'\",\"headers\":[],\"attachments\":[],\"phpmailer_exception_code\":0}','5d8a7c5e9af4e','2019-09-24 20:28:14');
/*!40000 ALTER TABLE `gp_watsonconv_debug_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gp_watsonconv_entities`
--

DROP TABLE IF EXISTS `gp_watsonconv_entities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gp_watsonconv_entities` (
  `id` int(64) unsigned NOT NULL AUTO_INCREMENT,
  `p_entity` varchar(512) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `p_location` text COLLATE utf8mb4_unicode_520_ci,
  `p_value` varchar(1024) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `p_confidence` double(64,30) DEFAULT NULL,
  `p_metadata` text COLLATE utf8mb4_unicode_520_ci,
  `p_groups` text COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gp_watsonconv_entities`
--

LOCK TABLES `gp_watsonconv_entities` WRITE;
/*!40000 ALTER TABLE `gp_watsonconv_entities` DISABLE KEYS */;
/*!40000 ALTER TABLE `gp_watsonconv_entities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gp_watsonconv_input_entities`
--

DROP TABLE IF EXISTS `gp_watsonconv_input_entities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gp_watsonconv_input_entities` (
  `id` int(64) unsigned NOT NULL AUTO_INCREMENT,
  `a_request_id` int(64) unsigned NOT NULL,
  `o_entity_id` int(64) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gp_watsonconv_input_entities`
--

LOCK TABLES `gp_watsonconv_input_entities` WRITE;
/*!40000 ALTER TABLE `gp_watsonconv_input_entities` DISABLE KEYS */;
/*!40000 ALTER TABLE `gp_watsonconv_input_entities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gp_watsonconv_input_intents`
--

DROP TABLE IF EXISTS `gp_watsonconv_input_intents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gp_watsonconv_input_intents` (
  `id` int(64) unsigned NOT NULL AUTO_INCREMENT,
  `a_request_id` int(64) unsigned NOT NULL,
  `o_intent_id` int(64) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gp_watsonconv_input_intents`
--

LOCK TABLES `gp_watsonconv_input_intents` WRITE;
/*!40000 ALTER TABLE `gp_watsonconv_input_intents` DISABLE KEYS */;
/*!40000 ALTER TABLE `gp_watsonconv_input_intents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gp_watsonconv_intents`
--

DROP TABLE IF EXISTS `gp_watsonconv_intents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gp_watsonconv_intents` (
  `id` int(64) unsigned NOT NULL AUTO_INCREMENT,
  `p_intent` varchar(512) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `p_confidence` double(64,30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gp_watsonconv_intents`
--

LOCK TABLES `gp_watsonconv_intents` WRITE;
/*!40000 ALTER TABLE `gp_watsonconv_intents` DISABLE KEYS */;
/*!40000 ALTER TABLE `gp_watsonconv_intents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gp_watsonconv_output_entities`
--

DROP TABLE IF EXISTS `gp_watsonconv_output_entities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gp_watsonconv_output_entities` (
  `id` int(64) unsigned NOT NULL AUTO_INCREMENT,
  `a_request_id` int(64) unsigned NOT NULL,
  `o_entity_id` int(64) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gp_watsonconv_output_entities`
--

LOCK TABLES `gp_watsonconv_output_entities` WRITE;
/*!40000 ALTER TABLE `gp_watsonconv_output_entities` DISABLE KEYS */;
/*!40000 ALTER TABLE `gp_watsonconv_output_entities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gp_watsonconv_output_intents`
--

DROP TABLE IF EXISTS `gp_watsonconv_output_intents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gp_watsonconv_output_intents` (
  `id` int(64) unsigned NOT NULL AUTO_INCREMENT,
  `a_request_id` int(64) unsigned NOT NULL,
  `o_intent_id` int(64) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gp_watsonconv_output_intents`
--

LOCK TABLES `gp_watsonconv_output_intents` WRITE;
/*!40000 ALTER TABLE `gp_watsonconv_output_intents` DISABLE KEYS */;
/*!40000 ALTER TABLE `gp_watsonconv_output_intents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gp_watsonconv_requests`
--

DROP TABLE IF EXISTS `gp_watsonconv_requests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gp_watsonconv_requests` (
  `id` int(64) unsigned NOT NULL AUTO_INCREMENT,
  `a_session_id` binary(16) NOT NULL,
  `s_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `o_user_input_id` int(64) DEFAULT NULL,
  `o_input_context_id` int(64) DEFAULT NULL,
  `o_output_context_id` int(64) DEFAULT NULL,
  `p_debug_output` text COLLATE utf8mb4_unicode_520_ci,
  `p_user_defined` text COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gp_watsonconv_requests`
--

LOCK TABLES `gp_watsonconv_requests` WRITE;
/*!40000 ALTER TABLE `gp_watsonconv_requests` DISABLE KEYS */;
/*!40000 ALTER TABLE `gp_watsonconv_requests` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gp_watsonconv_sessions`
--

DROP TABLE IF EXISTS `gp_watsonconv_sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gp_watsonconv_sessions` (
  `id` binary(16) NOT NULL,
  `s_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gp_watsonconv_sessions`
--

LOCK TABLES `gp_watsonconv_sessions` WRITE;
/*!40000 ALTER TABLE `gp_watsonconv_sessions` DISABLE KEYS */;
/*!40000 ALTER TABLE `gp_watsonconv_sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gp_watsonconv_task_runner_queue`
--

DROP TABLE IF EXISTS `gp_watsonconv_task_runner_queue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gp_watsonconv_task_runner_queue` (
  `id` int(64) unsigned NOT NULL AUTO_INCREMENT,
  `p_callback` varchar(256) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `p_data` text COLLATE utf8mb4_unicode_520_ci,
  `p_status` enum('new','processing') COLLATE utf8mb4_unicode_520_ci DEFAULT 'new',
  `s_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gp_watsonconv_task_runner_queue`
--

LOCK TABLES `gp_watsonconv_task_runner_queue` WRITE;
/*!40000 ALTER TABLE `gp_watsonconv_task_runner_queue` DISABLE KEYS */;
/*!40000 ALTER TABLE `gp_watsonconv_task_runner_queue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gp_watsonconv_user_inputs`
--

DROP TABLE IF EXISTS `gp_watsonconv_user_inputs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gp_watsonconv_user_inputs` (
  `id` int(64) unsigned NOT NULL AUTO_INCREMENT,
  `p_message_type` enum('text') COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `p_text` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `p_debug` tinyint(1) DEFAULT NULL,
  `p_restart` tinyint(1) DEFAULT NULL,
  `p_alternate_intents` tinyint(1) DEFAULT NULL,
  `p_return_context` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gp_watsonconv_user_inputs`
--

LOCK TABLES `gp_watsonconv_user_inputs` WRITE;
/*!40000 ALTER TABLE `gp_watsonconv_user_inputs` DISABLE KEYS */;
/*!40000 ALTER TABLE `gp_watsonconv_user_inputs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gp_watsonconv_watson_outputs`
--

DROP TABLE IF EXISTS `gp_watsonconv_watson_outputs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gp_watsonconv_watson_outputs` (
  `id` int(64) unsigned NOT NULL AUTO_INCREMENT,
  `a_request_id` int(64) unsigned NOT NULL,
  `p_response_type` enum('text','pause','image','option','connect_to_agent','suggestion') COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `p_text` varchar(2048) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `p_time` int(16) DEFAULT NULL,
  `p_typing` tinyint(1) DEFAULT NULL,
  `p_source` varchar(2048) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `p_title` varchar(2048) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `p_description` varchar(2048) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `p_preference` enum('dropdown','button') COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `p_options` text COLLATE utf8mb4_unicode_520_ci,
  `p_message_to_human_agent` varchar(2048) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `p_topic` varchar(2048) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `p_suggestions` text COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gp_watsonconv_watson_outputs`
--

LOCK TABLES `gp_watsonconv_watson_outputs` WRITE;
/*!40000 ALTER TABLE `gp_watsonconv_watson_outputs` DISABLE KEYS */;
/*!40000 ALTER TABLE `gp_watsonconv_watson_outputs` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-11-26 19:19:00
