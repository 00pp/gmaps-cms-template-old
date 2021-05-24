# ************************************************************
# Sequel Pro SQL dump
# Version 5446
#
# https://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: 127.0.0.1 (MySQL 5.7.32)
# Database: bussola
# Generation Time: 2021-05-24 09:25:10 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
SET NAMES utf8mb4;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table categories
# ------------------------------------------------------------

CREATE TABLE `categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(250) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;



# Dump of table locations
# ------------------------------------------------------------

CREATE TABLE `locations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `slug` varchar(200) NOT NULL,
  `name` varchar(300) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `slug` (`slug`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table place_images
# ------------------------------------------------------------

CREATE TABLE `place_images` (
  `id` int(11) NOT NULL DEFAULT '0',
  `place_id` int(11) NOT NULL,
  `attribute_type` varchar(100) NOT NULL,
  `attribute_value` varchar(500) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `place_id` (`place_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;



# Dump of table place_open_hours
# ------------------------------------------------------------

CREATE TABLE `place_open_hours` (
  `id` int(11) NOT NULL DEFAULT '0',
  `place_id` int(11) NOT NULL,
  `day` varchar(200) DEFAULT NULL,
  `open_interval` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `place_id` (`place_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;



# Dump of table place_reviews
# ------------------------------------------------------------

CREATE TABLE `place_reviews` (
  `id` int(11) NOT NULL DEFAULT '0',
  `place_id` int(11) DEFAULT NULL,
  `is_local_guid` int(11) DEFAULT '0',
  `user_name` varchar(500) DEFAULT NULL,
  `avatar` varchar(500) DEFAULT NULL,
  `rating` int(11) DEFAULT NULL,
  `publish_date` varchar(200) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `review_text` text,
  `publish_time` timestamp NULL DEFAULT NULL,
  `user_profile` varchar(1000) DEFAULT NULL,
  `review_id` varchar(100) DEFAULT NULL,
  `user_id` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `place_id` (`place_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;



# Dump of table places
# ------------------------------------------------------------

CREATE TABLE `places` (
  `id` int(11) NOT NULL DEFAULT '0',
  `place_id` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `async_cid` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `name` varchar(500) DEFAULT NULL,
  `slug` varchar(500) CHARACTER SET utf8 DEFAULT NULL,
  `image` varchar(500) CHARACTER SET utf8 DEFAULT NULL,
  `address` varchar(500) CHARACTER SET utf8 DEFAULT NULL,
  `category` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `phone` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `website_url` varchar(500) CHARACTER SET utf8 DEFAULT NULL,
  `website_url2` varchar(500) CHARACTER SET utf8 DEFAULT NULL,
  `email` varchar(300) CHARACTER SET utf8 DEFAULT NULL,
  `rating` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `lat` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `lng` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `description` varchar(2000) DEFAULT NULL,
  `images_json` varchar(4000) CHARACTER SET utf8 DEFAULT NULL,
  `meta_tags` text CHARACTER SET utf8,
  `all_data` text CHARACTER SET utf8,
  `reviews` int(11) DEFAULT '0',
  `feature_id` varchar(500) CHARACTER SET utf8 DEFAULT NULL,
  `social_links` int(11) DEFAULT '0',
  `distance` int(11) DEFAULT NULL,
  `raw_data` text,
  `facebook_scraper_status` int(11) DEFAULT NULL,
  `facebook_last_photo_token` varchar(1000) CHARACTER SET utf8 DEFAULT NULL,
  `facebook_last_review_token` varchar(1000) CHARACTER SET utf8 DEFAULT NULL,
  `facebook_page_name` varchar(1000) CHARACTER SET utf8 DEFAULT NULL,
  `price_level` int(11) DEFAULT '0',
  `house_number` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `street` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `town` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `state` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `county` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `zip_code` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `zone` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `country` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `street_number` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `console_country` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `console_city` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `source_url` varchar(1000) CHARACTER SET utf8 DEFAULT NULL,
  `remote_id` varchar(1000) CHARACTER SET utf8 DEFAULT NULL,
  `website_status` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `area` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `serial` int(11) DEFAULT NULL,
  `reviews_status` int(11) DEFAULT NULL,
  `main_address` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `reverse_geocode_address` varchar(3000) CHARACTER SET utf8 DEFAULT NULL,
  `domain_name` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `is_chain` int(11) DEFAULT NULL,
  `is_address_parsed` int(11) DEFAULT '0',
  `state_id` int(11) DEFAULT NULL,
  `town_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `category_id` (`category_id`),
  KEY `state_id_idx` (`state_id`),
  KEY `town_id_idx` (`town_id`),
  KEY `rating` (`rating`),
  KEY `phone` (`phone`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;




/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
