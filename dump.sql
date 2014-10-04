-- MySQL dump 10.13  Distrib 5.5.38, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: listccinfodb
-- ------------------------------------------------------
-- Server version	5.5.38-0ubuntu0.14.04.1

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
-- Table structure for table `lastblock`
--

DROP TABLE IF EXISTS `lastblock`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lastblock` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `lastblock` int(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lastblock`
--

LOCK TABLES `lastblock` WRITE;
/*!40000 ALTER TABLE `lastblock` DISABLE KEYS */;
INSERT INTO `lastblock` VALUES (1,1);
/*!40000 ALTER TABLE `lastblock` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `new1_assets`
--

DROP TABLE IF EXISTS `new1_assets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `new1_assets` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `parent_id` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set parent.',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `level` int(10) unsigned NOT NULL COMMENT 'The cached level in the nested tree.',
  `name` varchar(50) NOT NULL COMMENT 'The unique name for the asset.\n',
  `title` varchar(100) NOT NULL COMMENT 'The descriptive title for the asset.',
  `rules` varchar(5120) NOT NULL COMMENT 'JSON encoded access control.',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_asset_name` (`name`),
  KEY `idx_lft_rgt` (`lft`,`rgt`),
  KEY `idx_parent_id` (`parent_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7918 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `new1_assets`
--

LOCK TABLES `new1_assets` WRITE;
/*!40000 ALTER TABLE `new1_assets` DISABLE KEYS */;
INSERT INTO `new1_assets` VALUES (1,0,0,3075,0,'root.1','Root Asset','{\"core.login.site\":{\"6\":1,\"2\":1},\"core.login.admin\":{\"6\":1},\"core.login.offline\":{\"6\":1},\"core.admin\":{\"8\":1},\"core.manage\":{\"7\":1},\"core.create\":{\"6\":1,\"3\":1},\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"core.edit.own\":{\"6\":1,\"3\":1}}'),(2,1,1,2,1,'com_admin','com_admin','{}'),(3,1,3,6,1,'com_banners','com_banners','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(4,1,7,8,1,'com_cache','com_cache','{\"core.admin\":{\"7\":1},\"core.manage\":{\"7\":1}}'),(5,1,9,10,1,'com_checkin','com_checkin','{\"core.admin\":{\"7\":1},\"core.manage\":{\"7\":1}}'),(6,1,11,12,1,'com_config','com_config','{}'),(7,1,13,16,1,'com_contact','com_contact','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"core.edit.own\":[]}'),(8,1,17,2886,1,'com_content','com_content','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":{\"3\":1},\"core.delete\":[],\"core.edit\":{\"4\":1},\"core.edit.state\":{\"5\":1},\"core.edit.own\":[]}'),(9,1,2887,2888,1,'com_cpanel','com_cpanel','{}'),(10,1,2889,2890,1,'com_installer','com_installer','{\"core.admin\":[],\"core.manage\":{\"7\":0},\"core.delete\":{\"7\":0},\"core.edit.state\":{\"7\":0}}'),(11,1,2891,2892,1,'com_languages','com_languages','{\"core.admin\":{\"7\":1},\"core.manage\":[],\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(12,1,2893,2894,1,'com_login','com_login','{}'),(13,1,2895,2896,1,'com_mailto','com_mailto','{}'),(14,1,2897,2898,1,'com_massmail','com_massmail','{}'),(15,1,2899,2900,1,'com_media','com_media','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":{\"3\":1},\"core.delete\":{\"5\":1}}'),(16,1,2901,2902,1,'com_menus','com_menus','{\"core.admin\":{\"7\":1},\"core.manage\":[],\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(17,1,2903,2904,1,'com_messages','com_messages','{\"core.admin\":{\"7\":1},\"core.manage\":{\"7\":1}}'),(18,1,2905,2954,1,'com_modules','com_modules','{\"core.admin\":{\"7\":1},\"core.manage\":[],\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(19,1,2955,2958,1,'com_newsfeeds','com_newsfeeds','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"core.edit.own\":[]}'),(20,1,2959,2960,1,'com_plugins','com_plugins','{\"core.admin\":{\"7\":1},\"core.manage\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(21,1,2961,2962,1,'com_redirect','com_redirect','{\"core.admin\":{\"7\":1},\"core.manage\":[]}'),(22,1,2963,2964,1,'com_search','com_search','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1}}'),(23,1,2965,2966,1,'com_templates','com_templates','{\"core.admin\":{\"7\":1},\"core.manage\":[],\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(24,1,2967,2970,1,'com_users','com_users','{\"core.admin\":{\"7\":1},\"core.manage\":[],\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(25,1,2971,2974,1,'com_weblinks','com_weblinks','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":{\"3\":1},\"core.delete\":[],\"core.edit\":{\"4\":1},\"core.edit.state\":{\"5\":1},\"core.edit.own\":[]}'),(26,1,2975,2976,1,'com_wrapper','com_wrapper','{}'),(27,8,18,21,2,'com_content.category.2','Uncategorised','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"core.edit.own\":[]}'),(28,3,4,5,2,'com_banners.category.3','Uncategorised','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(29,7,14,15,2,'com_contact.category.4','Uncategorised','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"core.edit.own\":[]}'),(30,19,2956,2957,2,'com_newsfeeds.category.5','Uncategorised','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"core.edit.own\":[]}'),(31,25,2972,2973,2,'com_weblinks.category.6','Uncategorised','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"core.edit.own\":[]}'),(32,24,2968,2969,1,'com_users.category.7','Uncategorised','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(33,1,2977,2978,1,'com_finder','com_finder','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1}}'),(34,1,2979,2980,1,'com_joomlaupdate','com_joomlaupdate','{\"core.admin\":[],\"core.manage\":[],\"core.delete\":[],\"core.edit.state\":[]}'),(35,1,2981,2982,1,'com_tags','com_tags','{\"core.admin\":[],\"core.manage\":[],\"core.manage\":[],\"core.delete\":[],\"core.edit.state\":[]}'),(36,1,2983,2984,1,'com_contenthistory','com_contenthistory','{}'),(37,1,2985,2986,1,'com_ajax','com_ajax','{}'),(38,1,2987,2988,1,'com_postinstall','com_postinstall','{}'),(39,18,2906,2907,2,'com_modules.module.1','Main Menu','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),(40,18,2908,2909,2,'com_modules.module.2','Login','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(41,18,2910,2911,2,'com_modules.module.3','Popular Articles','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(42,18,2912,2913,2,'com_modules.module.4','Recently Added Articles','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(43,18,2914,2915,2,'com_modules.module.8','Toolbar','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(44,18,2916,2917,2,'com_modules.module.9','Quick Icons','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(45,18,2918,2919,2,'com_modules.module.10','Logged-in Users','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(46,18,2920,2921,2,'com_modules.module.12','Admin Menu','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(47,18,2922,2923,2,'com_modules.module.13','Admin Submenu','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(48,18,2924,2925,2,'com_modules.module.14','User Status','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(49,18,2926,2927,2,'com_modules.module.15','Title','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(50,18,2928,2929,2,'com_modules.module.16','Login Form','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(51,18,2930,2931,2,'com_modules.module.17','Breadcrumbs','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(52,18,2932,2933,2,'com_modules.module.79','Multilanguage status','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(53,18,2934,2935,2,'com_modules.module.86','Joomla Version','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(1511,18,2936,2937,2,'com_modules.module.87','From any location','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),(5904,18,2938,2939,2,'com_modules.module.88','About','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),(5905,18,2940,2941,2,'com_modules.module.89','Web Links','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),(5906,27,19,20,3,'com_content.article.5652','About','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),(5908,1,2989,2990,1,'#__ucm_content.1','#__ucm_content.1','[]'),(5909,18,2942,2943,2,'com_modules.module.90','Contact: Email Address','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),(5910,1,2991,2992,1,'com_fieldsattach','fieldsattach','{}'),(5911,18,2944,2945,2,'com_modules.module.91','Tags','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),(5912,18,2946,2947,2,'com_modules.module.92','LATEST ADs','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),(5913,18,2948,2949,2,'com_modules.module.93','RELATED ADS','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),(5914,1,2993,2994,1,'#__ucm_content.2','#__ucm_content.2','[]'),(5915,18,2950,2951,2,'com_modules.module.94','CATEGORIES','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),(5916,18,2952,2953,2,'com_modules.module.95','SUBCATEGORIES','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(6024,8,236,2885,2,'com_content.category.8','Main','{\"core.create\":{\"6\":1,\"3\":1},\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"core.edit.own\":{\"6\":1,\"3\":1}}'),(7702,6024,2693,2710,3,'com_content.category.579','For sale',''),(7703,7702,2694,2697,4,'com_content.category.580','Computers',''),(7705,6024,2711,2832,3,'com_content.category.581','Community',''),(7706,7705,2712,2793,4,'com_content.category.582','Activities',''),(7709,7705,2794,2813,4,'com_content.category.583','General',''),(7711,7705,2814,2819,4,'com_content.category.584','Events',''),(7722,6024,2833,2844,3,'com_content.category.585','Services',''),(7723,7722,2834,2839,4,'com_content.category.586','Financial',''),(7728,7702,2698,2709,4,'com_content.category.587','Furniture',''),(7736,7705,2820,2825,4,'com_content.category.588','Musicians',''),(7738,7705,2826,2831,4,'com_content.category.589','Local news',''),(7746,6024,2845,2850,3,'com_content.category.590','Jobs',''),(7747,7746,2846,2849,4,'com_content.category.591','Transport',''),(7749,6024,2851,2856,3,'com_content.category.592','Housing',''),(7750,7749,2852,2855,4,'com_content.category.593','Apts / housing',''),(7752,6024,2857,2868,3,'com_content.category.594','Gigs',''),(7753,7752,2858,2863,4,'com_content.category.595','Writing',''),(7755,6024,2869,2874,3,'com_content.category.596','Personals',''),(7756,7755,2870,2873,4,'com_content.category.597','Women seek women',''),(7758,6024,2875,2884,3,'com_content.category.598','Resumes',''),(7759,7758,2876,2883,4,'com_content.category.599','Uncategorised',''),(7762,7752,2864,2867,4,'com_content.category.600','Talent',''),(7770,7722,2840,2843,4,'com_content.category.601','Beauty',''),(7845,7703,2695,2696,5,'com_content.article.121','Bitcoin',''),(7846,7706,2713,2714,5,'com_content.article.122','I will not spam this blockchain',''),(7847,7706,2715,2716,5,'com_content.article.123','記念パピコ',''),(7848,7709,2795,2796,5,'com_content.article.124','First Blockchain Spam ( ͡° ͜ʖ ͡°) ',''),(7849,7711,2815,2816,5,'com_content.article.125','Pump it Up',''),(7850,7709,2797,2798,5,'com_content.article.126','Nyan Nyan',''),(7851,7706,2717,2718,5,'com_content.article.127','Indian spacecraft reached the Mars Orbit',''),(7852,7706,2719,2720,5,'com_content.article.128','CRAIG SALE',''),(7853,7706,2721,2722,5,'com_content.article.129','Free Bitcoin',''),(7854,7706,2723,2724,5,'com_content.article.130','WTH',''),(7855,7706,2725,2726,5,'com_content.article.131','Testing these ads once more!',''),(7856,7709,2799,2800,5,'com_content.article.132','Follow CryptoCharts on Twitter! :)',''),(7857,7706,2727,2728,5,'com_content.article.133','jeremy kyle headbutt broken nose',''),(7858,7711,2817,2818,5,'com_content.article.134','CryptoGangsta in da house',''),(7859,7723,2835,2836,5,'com_content.article.135','Trade Crypto/Digital Currency at C-CEX',''),(7860,7709,2801,2802,5,'com_content.article.136','Donate CraigsCoin',''),(7861,7709,2803,2804,5,'com_content.article.137','Parrot Vapors e juice drip line.',''),(7862,7706,2729,2730,5,'com_content.article.138','Set Of Six Original Eero Saarinen Tulip Chairs for Knoll W/ Blue pads - $575 (11231)',''),(7863,7728,2699,2700,5,'com_content.article.139','White faux Leather Bed frame (full) with Headboard - $120 (Lower East Side)',''),(7864,7728,2701,2702,5,'com_content.article.140','gold giled mirrior very old - $4000 (south hamptons )',''),(7865,7728,2703,2704,5,'com_content.article.141','(Set of 4) Mid Century Dining Chairs - REAL Eames Shells Herman Miller - $850 (Greenpoint, Brooklyn)',''),(7866,7728,2705,2706,5,'com_content.article.142','Kent Coffey The Tableau Step Back Side Table - $188 (Midtown East)',''),(7867,7728,2707,2708,5,'com_content.article.143','Ethan Allen King Bed, Pillowtop Mattress and Nightstand for Sale',''),(7868,7706,2731,2732,5,'com_content.article.144','PM for my girlfried',''),(7869,7706,2733,2734,5,'com_content.article.145','CryptoGangsta still in da house bitches',''),(7870,7736,2821,2822,5,'com_content.article.146','Cannibal Corpse \"A Skeletal Domain\"',''),(7871,7738,2827,2828,5,'com_content.article.147','Invoke Magic',''),(7872,7709,2805,2806,5,'com_content.article.148','Wooopieeee',''),(7873,7706,2735,2736,5,'com_content.article.149','more Wooopieeee',''),(7874,7706,2737,2738,5,'com_content.article.150','Free BitcoinPus (XBC)',''),(7875,7706,2739,2740,5,'com_content.article.151','Bitcoinplus (XBC) needs developpers',''),(7876,7709,2807,2808,5,'com_content.article.152','1/4oz (7.0g) Super Lemon Haze',''),(7877,7706,2741,2742,5,'com_content.article.153','BitcoinPlus (XBC) the best change to be part of history https://bitcointalk.org/index.php?topic=7146',''),(7878,7747,2847,2848,5,'com_content.article.154','Требуется водитель на автобетоносмеситель',''),(7879,7750,2853,2854,5,'com_content.article.155','$2995 / 3br - DONT MISS OUT _OUTSTANDING 3BR IN HOTTEST LOCATION_CALL NOW ',''),(7880,7753,2859,2860,5,'com_content.article.156','Male models needed for film (various)',''),(7881,7756,2871,2872,5,'com_content.article.157','Strap on in the ass? - t4w - 27 (Midtown)',''),(7882,7759,2877,2878,5,'com_content.article.158','Sep 22 entry level position wanted',''),(7883,7759,2879,2880,5,'com_content.article.159','doctor',''),(7884,7762,2865,2866,5,'com_content.article.160','Петь',''),(7885,7753,2861,2862,5,'com_content.article.161','Письмо',''),(7886,7706,2743,2744,5,'com_content.article.162','Craigs dev. is a scammer',''),(7887,7706,2745,2746,5,'com_content.article.163',' FACEBOOK ACCOUNT',''),(7888,7706,2747,2748,5,'com_content.article.164','Morons call dev a scammer through a service that WORKS thanks to the dev. Hilarious! :D',''),(7889,7738,2829,2830,5,'com_content.article.165','IconicExpert is a douchbag',''),(7890,7759,2881,2882,5,'com_content.article.166','Поедатель арбузов',''),(7891,7770,2841,2842,5,'com_content.article.167','Anal piercing',''),(7892,7706,2749,2750,5,'com_content.article.168','DEV MUST SET UP A BUY WALL TO RESCUE THE COIN',''),(7893,7709,2809,2810,5,'com_content.article.169','DEV DONT DONT PUT WALLS I WANT MORE COINS',''),(7894,7706,2751,2752,5,'com_content.article.170','News Worthy Ads',''),(7895,7736,2823,2824,5,'com_content.article.171','Danzel - \'Put Your Hands Up In The Air\'',''),(7896,7709,2811,2812,5,'com_content.article.172','smoking',''),(7897,7706,2753,2754,5,'com_content.article.173','Germany',''),(7898,7706,2755,2756,5,'com_content.article.174','Craig to da moooooooooooooooooooooooooon',''),(7899,7706,2757,2758,5,'com_content.article.175','BitcoinPlus (XBC) Be part of history',''),(7900,7706,2759,2760,5,'com_content.article.176','on bittrex people dumped almost 400k coins with ~800 sat.i don`t think this coin has any future.... ',''),(7901,7706,2761,2762,5,'com_content.article.177','CRAID DEV, WE NEED MARKETING, not many people know about craig! SPEAK TO COINDESK TO PUBLISH AN ARTI',''),(7902,7706,2763,2764,5,'com_content.article.178','I hope dev will noT run away!',''),(7903,7706,2765,2766,5,'com_content.article.179','ANAL  ANAL  ANAL  ANAL  ANAL  ANAL  ANAL  ANAL  ANAL  ANAL  ANAL  ANAL  ANAL  ANAL  ANAL  ANAL  ANAL',''),(7904,7706,2767,2768,5,'com_content.article.180','ANAL SEX ',''),(7905,7706,2769,2770,5,'com_content.article.181','HELP; DEV, YOU MUST DO SOMETHING',''),(7906,7706,2771,2772,5,'com_content.article.182','ANAL KNIGHT WILL COME AND TAKE CARE OF YOU',''),(7907,7706,2773,2774,5,'com_content.article.183','STOP DUMPING CRAIG, PLEASE',''),(7908,7706,2775,2776,5,'com_content.article.184','OLE OLE OLE CRAIG IS DOWN; YES BABY YES',''),(7909,7706,2777,2778,5,'com_content.article.185','what the fuckwhat the fuckwhat the fuckwhat the fuckwhat the fuckwhat the fuckwhat the fuckwhat the ',''),(7910,7706,2779,2780,5,'com_content.article.186','CRAIG IS FAKE COIN CRAIG IS FACRAIG IS FAKE COIN CRAIG IS FAKE COIN CRAIG IS FAKE COIN CRAIG IS FAKE',''),(7911,7706,2781,2782,5,'com_content.article.187','Osama bin Laden\'s ghost and MajorStupidWhaleBoss',''),(7912,7706,2783,2784,5,'com_content.article.188','See the dev has no urgency to get things done. He got paid already so hey,, whats the rush? This is ',''),(7913,7706,2785,2786,5,'com_content.article.189','See the dev has no urgency to get things done. He got paid already so hey,, whats the rush? This is ',''),(7914,7706,2787,2788,5,'com_content.article.190','DEV IS NO MAN ',''),(7915,7706,2789,2790,5,'com_content.article.191','WE THE INVESTORS SMELL SHIT CAUSED BY DEV',''),(7916,7723,2837,2838,5,'com_content.article.192','TRADE AT cryptsy.com',''),(7917,7706,2791,2792,5,'com_content.article.193','qqqqqqqqqqqqqqqq','');
/*!40000 ALTER TABLE `new1_assets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `new1_associations`
--

DROP TABLE IF EXISTS `new1_associations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `new1_associations` (
  `id` int(11) NOT NULL COMMENT 'A reference to the associated item.',
  `context` varchar(50) NOT NULL COMMENT 'The context of the associated item.',
  `key` char(32) NOT NULL COMMENT 'The key for the association computed from an md5 on associated ids.',
  PRIMARY KEY (`context`,`id`),
  KEY `idx_key` (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `new1_associations`
--

LOCK TABLES `new1_associations` WRITE;
/*!40000 ALTER TABLE `new1_associations` DISABLE KEYS */;
/*!40000 ALTER TABLE `new1_associations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `new1_banner_clients`
--

DROP TABLE IF EXISTS `new1_banner_clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `new1_banner_clients` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `contact` varchar(255) NOT NULL DEFAULT '',
  `email` varchar(255) NOT NULL DEFAULT '',
  `extrainfo` text NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `metakey` text NOT NULL,
  `own_prefix` tinyint(4) NOT NULL DEFAULT '0',
  `metakey_prefix` varchar(255) NOT NULL DEFAULT '',
  `purchase_type` tinyint(4) NOT NULL DEFAULT '-1',
  `track_clicks` tinyint(4) NOT NULL DEFAULT '-1',
  `track_impressions` tinyint(4) NOT NULL DEFAULT '-1',
  PRIMARY KEY (`id`),
  KEY `idx_own_prefix` (`own_prefix`),
  KEY `idx_metakey_prefix` (`metakey_prefix`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `new1_banner_clients`
--

LOCK TABLES `new1_banner_clients` WRITE;
/*!40000 ALTER TABLE `new1_banner_clients` DISABLE KEYS */;
/*!40000 ALTER TABLE `new1_banner_clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `new1_banner_tracks`
--

DROP TABLE IF EXISTS `new1_banner_tracks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `new1_banner_tracks` (
  `track_date` datetime NOT NULL,
  `track_type` int(10) unsigned NOT NULL,
  `banner_id` int(10) unsigned NOT NULL,
  `count` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`track_date`,`track_type`,`banner_id`),
  KEY `idx_track_date` (`track_date`),
  KEY `idx_track_type` (`track_type`),
  KEY `idx_banner_id` (`banner_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `new1_banner_tracks`
--

LOCK TABLES `new1_banner_tracks` WRITE;
/*!40000 ALTER TABLE `new1_banner_tracks` DISABLE KEYS */;
/*!40000 ALTER TABLE `new1_banner_tracks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `new1_banners`
--

DROP TABLE IF EXISTS `new1_banners`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `new1_banners` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cid` int(11) NOT NULL DEFAULT '0',
  `type` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `imptotal` int(11) NOT NULL DEFAULT '0',
  `impmade` int(11) NOT NULL DEFAULT '0',
  `clicks` int(11) NOT NULL DEFAULT '0',
  `clickurl` varchar(200) NOT NULL DEFAULT '',
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `description` text NOT NULL,
  `custombannercode` varchar(2048) NOT NULL,
  `sticky` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `params` text NOT NULL,
  `own_prefix` tinyint(1) NOT NULL DEFAULT '0',
  `metakey_prefix` varchar(255) NOT NULL DEFAULT '',
  `purchase_type` tinyint(4) NOT NULL DEFAULT '-1',
  `track_clicks` tinyint(4) NOT NULL DEFAULT '-1',
  `track_impressions` tinyint(4) NOT NULL DEFAULT '-1',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `reset` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `language` char(7) NOT NULL DEFAULT '',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `idx_state` (`state`),
  KEY `idx_own_prefix` (`own_prefix`),
  KEY `idx_metakey_prefix` (`metakey_prefix`),
  KEY `idx_banner_catid` (`catid`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `new1_banners`
--

LOCK TABLES `new1_banners` WRITE;
/*!40000 ALTER TABLE `new1_banners` DISABLE KEYS */;
/*!40000 ALTER TABLE `new1_banners` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `new1_categories`
--

DROP TABLE IF EXISTS `new1_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `new1_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `lft` int(11) NOT NULL DEFAULT '0',
  `rgt` int(11) NOT NULL DEFAULT '0',
  `level` int(10) unsigned NOT NULL DEFAULT '0',
  `path` varchar(255) NOT NULL DEFAULT '',
  `extension` varchar(50) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `note` varchar(255) NOT NULL DEFAULT '',
  `description` mediumtext NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `metadesc` varchar(1024) NOT NULL COMMENT 'The meta description for the page.',
  `metakey` varchar(1024) NOT NULL COMMENT 'The meta keywords for the page.',
  `metadata` varchar(2048) NOT NULL COMMENT 'JSON encoded metadata properties.',
  `created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `cat_idx` (`extension`,`published`,`access`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_path` (`path`),
  KEY `idx_left_right` (`lft`,`rgt`),
  KEY `idx_alias` (`alias`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB AUTO_INCREMENT=602 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `new1_categories`
--

LOCK TABLES `new1_categories` WRITE;
/*!40000 ALTER TABLE `new1_categories` DISABLE KEYS */;
INSERT INTO `new1_categories` VALUES (1,0,0,0,1163,0,'','system','ROOT','root','','',1,0,'0000-00-00 00:00:00',1,'{}','','','{}',42,'2011-01-01 00:00:01',0,'0000-00-00 00:00:00',0,'*',1),(2,27,1,1,2,1,'uncategorised','com_content','Uncategorised','uncategorised','','',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',42,'2011-01-01 00:00:01',0,'0000-00-00 00:00:00',0,'*',1),(3,28,1,3,4,1,'uncategorised','com_banners','Uncategorised','uncategorised','','',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',42,'2011-01-01 00:00:01',0,'0000-00-00 00:00:00',0,'*',1),(4,29,1,5,6,1,'uncategorised','com_contact','Uncategorised','uncategorised','','',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',42,'2011-01-01 00:00:01',0,'0000-00-00 00:00:00',0,'*',1),(5,30,1,7,8,1,'uncategorised','com_newsfeeds','Uncategorised','uncategorised','','',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',42,'2011-01-01 00:00:01',0,'0000-00-00 00:00:00',0,'*',1),(6,31,1,9,10,1,'uncategorised','com_weblinks','Uncategorised','uncategorised','','',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',42,'2011-01-01 00:00:01',0,'0000-00-00 00:00:00',0,'*',1),(7,32,1,11,12,1,'uncategorised','com_users','Uncategorised','uncategorised','','',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',42,'2011-01-01 00:00:01',0,'0000-00-00 00:00:00',0,'*',1),(8,6024,1,63,1162,1,'main','com_content','Main','main','','',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',657,'2014-09-29 12:16:07',0,'0000-00-00 00:00:00',0,'*',1),(579,7702,8,1116,1121,2,'for-sale','com_content','For sale','for-sale','','',1,0,'0000-00-00 00:00:00',1,'','','','',0,'2014-10-01 08:51:07',0,'0000-00-00 00:00:00',0,'*',1),(580,7703,579,1117,1118,3,'computers','com_content','Computers','computers','','',1,0,'0000-00-00 00:00:00',1,'','','','',0,'2014-10-01 08:51:07',0,'0000-00-00 00:00:00',0,'*',1),(581,7705,8,1122,1133,2,'community','com_content','Community','community','','',1,0,'0000-00-00 00:00:00',1,'','','','',0,'2014-10-01 08:51:07',0,'0000-00-00 00:00:00',0,'*',1),(582,7706,581,1123,1124,3,'activities','com_content','Activities','activities','','',1,0,'0000-00-00 00:00:00',1,'','','','',0,'2014-10-01 08:51:07',0,'0000-00-00 00:00:00',0,'*',1),(583,7709,581,1125,1126,3,'general','com_content','General','general','','',1,0,'0000-00-00 00:00:00',1,'','','','',0,'2014-10-01 08:51:07',0,'0000-00-00 00:00:00',0,'*',1),(584,7711,581,1127,1128,3,'events','com_content','Events','events','','',1,0,'0000-00-00 00:00:00',1,'','','','',0,'2014-10-01 08:51:07',0,'0000-00-00 00:00:00',0,'*',1),(585,7722,8,1134,1139,2,'services','com_content','Services','services','','',1,0,'0000-00-00 00:00:00',1,'','','','',0,'2014-10-01 08:51:07',0,'0000-00-00 00:00:00',0,'*',1),(586,7723,585,1135,1136,3,'financial','com_content','Financial','financial','','',1,0,'0000-00-00 00:00:00',1,'','','','',0,'2014-10-01 08:51:07',0,'0000-00-00 00:00:00',0,'*',1),(587,7728,579,1119,1120,3,'furniture','com_content','Furniture','furniture','','',1,0,'0000-00-00 00:00:00',1,'','','','',0,'2014-10-01 08:51:07',0,'0000-00-00 00:00:00',0,'*',1),(588,7736,581,1129,1130,3,'musicians','com_content','Musicians','musicians','','',1,0,'0000-00-00 00:00:00',1,'','','','',0,'2014-10-01 08:51:07',0,'0000-00-00 00:00:00',0,'*',1),(589,7738,581,1131,1132,3,'local-news','com_content','Local news','local-news','','',1,0,'0000-00-00 00:00:00',1,'','','','',0,'2014-10-01 08:51:07',0,'0000-00-00 00:00:00',0,'*',1),(590,7746,8,1140,1143,2,'jobs','com_content','Jobs','jobs','','',1,0,'0000-00-00 00:00:00',1,'','','','',0,'2014-10-01 08:51:07',0,'0000-00-00 00:00:00',0,'*',1),(591,7747,590,1141,1142,3,'transport','com_content','Transport','transport','','',1,0,'0000-00-00 00:00:00',1,'','','','',0,'2014-10-01 08:51:07',0,'0000-00-00 00:00:00',0,'*',1),(592,7749,8,1144,1147,2,'housing','com_content','Housing','housing','','',1,0,'0000-00-00 00:00:00',1,'','','','',0,'2014-10-01 08:51:07',0,'0000-00-00 00:00:00',0,'*',1),(593,7750,592,1145,1146,3,'apts-housing','com_content','Apts / housing','apts-housing','','',1,0,'0000-00-00 00:00:00',1,'','','','',0,'2014-10-01 08:51:07',0,'0000-00-00 00:00:00',0,'*',1),(594,7752,8,1148,1153,2,'gigs','com_content','Gigs','gigs','','',1,0,'0000-00-00 00:00:00',1,'','','','',0,'2014-10-01 08:51:07',0,'0000-00-00 00:00:00',0,'*',1),(595,7753,594,1149,1150,3,'writing','com_content','Writing','writing','','',1,0,'0000-00-00 00:00:00',1,'','','','',0,'2014-10-01 08:51:07',0,'0000-00-00 00:00:00',0,'*',1),(596,7755,8,1154,1157,2,'personals','com_content','Personals','personals','','',1,0,'0000-00-00 00:00:00',1,'','','','',0,'2014-10-01 08:51:07',0,'0000-00-00 00:00:00',0,'*',1),(597,7756,596,1155,1156,3,'women-seek-women','com_content','Women seek women','women-seek-women','','',1,0,'0000-00-00 00:00:00',1,'','','','',0,'2014-10-01 08:51:07',0,'0000-00-00 00:00:00',0,'*',1),(598,7758,8,1158,1161,2,'resumes','com_content','Resumes','resumes','','',1,0,'0000-00-00 00:00:00',1,'','','','',0,'2014-10-01 08:51:07',0,'0000-00-00 00:00:00',0,'*',1),(599,7759,598,1159,1160,3,'uncategorised','com_content','Uncategorised','uncategorised','','',1,0,'0000-00-00 00:00:00',1,'','','','',0,'2014-10-01 08:51:07',0,'0000-00-00 00:00:00',0,'*',1),(600,7762,594,1151,1152,3,'talent','com_content','Talent','talent','','',1,0,'0000-00-00 00:00:00',1,'','','','',0,'2014-10-01 08:51:07',0,'0000-00-00 00:00:00',0,'*',1),(601,7770,585,1137,1138,3,'beauty','com_content','Beauty','beauty','','',1,0,'0000-00-00 00:00:00',1,'','','','',0,'2014-10-01 08:51:07',0,'0000-00-00 00:00:00',0,'*',1);
/*!40000 ALTER TABLE `new1_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `new1_contact_details`
--

DROP TABLE IF EXISTS `new1_contact_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `new1_contact_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `con_position` varchar(255) DEFAULT NULL,
  `address` text,
  `suburb` varchar(100) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `postcode` varchar(100) DEFAULT NULL,
  `telephone` varchar(255) DEFAULT NULL,
  `fax` varchar(255) DEFAULT NULL,
  `misc` mediumtext,
  `image` varchar(255) DEFAULT NULL,
  `email_to` varchar(255) DEFAULT NULL,
  `default_con` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `catid` int(11) NOT NULL DEFAULT '0',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `mobile` varchar(255) NOT NULL DEFAULT '',
  `webpage` varchar(255) NOT NULL DEFAULT '',
  `sortname1` varchar(255) NOT NULL,
  `sortname2` varchar(255) NOT NULL,
  `sortname3` varchar(255) NOT NULL,
  `language` char(7) NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `metadata` text NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Set if article is featured.',
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`published`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_featured_catid` (`featured`,`catid`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `new1_contact_details`
--

LOCK TABLES `new1_contact_details` WRITE;
/*!40000 ALTER TABLE `new1_contact_details` DISABLE KEYS */;
INSERT INTO `new1_contact_details` VALUES (1,'Test contact','test-contact','Admin','','','','','','','','','','admin@admin.ru',0,1,0,'0000-00-00 00:00:00',1,'{\"show_contact_category\":\"\",\"show_contact_list\":\"\",\"presentation_style\":\"\",\"show_tags\":\"\",\"show_name\":\"\",\"show_position\":\"\",\"show_email\":\"\",\"show_street_address\":\"\",\"show_suburb\":\"\",\"show_state\":\"\",\"show_postcode\":\"\",\"show_country\":\"\",\"show_telephone\":\"\",\"show_mobile\":\"\",\"show_fax\":\"\",\"show_webpage\":\"\",\"show_misc\":\"\",\"show_image\":\"\",\"allow_vcard\":\"\",\"show_articles\":\"\",\"show_profile\":\"\",\"show_links\":\"\",\"linka_name\":\"\",\"linka\":false,\"linkb_name\":\"\",\"linkb\":false,\"linkc_name\":\"\",\"linkc\":false,\"linkd_name\":\"\",\"linkd\":false,\"linke_name\":\"\",\"linke\":\"\",\"contact_layout\":\"\",\"show_email_form\":\"\",\"show_email_copy\":\"\",\"banned_email\":\"\",\"banned_subject\":\"\",\"banned_text\":\"\",\"validate_session\":\"\",\"custom_reply\":\"\",\"redirect\":\"\"}',657,4,1,'','','','','','*','2014-09-25 10:00:04',657,'','0000-00-00 00:00:00',0,'','','{\"robots\":\"\",\"rights\":\"\"}',0,'','0000-00-00 00:00:00','0000-00-00 00:00:00',1,0);
/*!40000 ALTER TABLE `new1_contact_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `new1_content`
--

DROP TABLE IF EXISTS `new1_content`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `new1_content` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `title` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `introtext` mediumtext NOT NULL,
  `fulltext` mediumtext NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `images` text NOT NULL,
  `urls` text NOT NULL,
  `attribs` varchar(5120) NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `metadata` text NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Set if article is featured.',
  `language` char(7) NOT NULL COMMENT 'The language code for the article.',
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`state`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_featured_catid` (`featured`,`catid`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=InnoDB AUTO_INCREMENT=194 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `new1_content`
--

LOCK TABLES `new1_content` WRITE;
/*!40000 ALTER TABLE `new1_content` DISABLE KEYS */;
INSERT INTO `new1_content` VALUES (121,7845,'Bitcoin','bitcoin','','<p>Clearly someone begging for BTC: 1B3JLXu9889bjwH4bVc4b9QArBraTUthkR\n\nPLS</p>',1,580,'2014-10-01 18:41:52',657,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','','','',1,0,'','',1,30,'',0,'*',''),(122,7846,'I will not spam this blockchain','i-will-not-spam-this-blockchain','','<p>I will not spam this blockchain.I will not spam this blockchain.I will not spam this blockchain. \nBart Simpson</p>',1,582,'2014-10-01 18:41:52',657,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','','','',1,0,'','',1,1,'',0,'*',''),(123,7847,'記念パピコ','2014-10-01-18-41-52','','<p>わーい(\'ω\')ノ</p>',1,582,'2014-10-01 18:41:52',657,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','','','',1,0,'','',1,5,'',0,'*',''),(124,7848,'First Blockchain Spam ( ͡° ͜ʖ ͡°) ','first-blockchain-spam','','<p>( ͡° ͜ʖ ͡°) ( ͡° ͜ʖ ͡°) ( ͡° ͜ʖ ͡°) ( ͡° ͜ʖ ͡°) ( ͡° ͜ʖ ͡°) ( ͡° ͜ʖ ͡°) ( ͡° ͜ʖ ͡°) ( ͡° ͜ʖ ͡°) ( ͡° ͜ʖ ͡°) ( ͡° ͜ʖ ͡°) ( ͡° ͜ʖ ͡°) ( ͡° ͜ʖ ͡°) ( ͡° ͜ʖ ͡°) ( ͡° ͜ʖ ͡°) ( ͡° ͜ʖ ͡°) ( ͡° ͜ʖ ͡°) ( ͡° ͜ʖ ͡°) ( ͡° ͜ʖ ͡°) ( ͡° ͜ʖ ͡°) ( ͡° ͜ʖ ͡°) ( ͡° ͜ʖ ͡°) ( ͡° ͜ʖ ͡°) ( ͡° ͜ʖ ͡°) ( ͡° ͜ʖ ͡°) ( ͡° ͜ʖ ͡°) ( ͡° ͜ʖ ͡°) ( ͡° ͜ʖ ͡°) ( ͡° ͜ʖ ͡°) ( ͡° ͜ʖ ͡°) ( ͡° ͜ʖ ͡°) ( ͡° ͜ʖ ͡°) ( ͡° ͜ʖ ͡°) ( ͡° ͜ʖ ͡°) ( ͡° ͜ʖ ͡°) ( ͡° ͜ʖ ͡°) ( ͡° ͜ʖ ͡°) ( ͡° ͜ʖ ͡°) ( ͡° ͜ʖ ͡°) ( ͡° ͜ʖ ͡°) ( ͡° ͜ʖ ͡°) ( ͡° ͜ʖ ͡°) ( ͡° ͜ʖ ͡°) ( ͡° ͜ʖ ͡°) ( ͡° ͜ʖ ͡°) ( ͡° ͜ʖ ͡°) ( ͡° ͜ʖ ͡°) ( ͡° ͜ʖ ͡°) ( ͡° ͜ʖ ͡°) ( ͡° ͜ʖ ͡°) ( ͡° ͜ʖ ͡°) ( ͡° ͜ʖ ͡°) ( ͡° ͜ʖ ͡°) ( ͡° ͜ʖ ͡°) ( ͡° ͜ʖ ͡°) ( ͡° ͜ʖ ͡°) ( ͡° ͜ʖ ͡°) ( ͡° ͜ʖ ͡°) ( ͡° ͜ʖ ͡°) ( ͡° ͜ʖ ͡°) ( ͡° ͜ʖ ͡°) ( ͡° ͜ʖ ͡°) ( ͡° ͜ʖ ͡°) ( ͡° ͜ʖ ͡°) ( ͡° ͜ʖ ͡°) ( ͡° ͜ʖ ͡°) ( ͡° ͜ʖ ͡°) ( ͡° ͜ʖ ͡°) ( ͡° ͜ʖ ͡°) ( ͡° ͜ʖ ͡°) ( ͡° ͜ʖ ͡°) ( ͡° ͜ʖ ͡°) ( ͡° ͜ʖ ͡°) ( ͡° ͜ʖ ͡°) ( ͡° ͜ʖ ͡°) ( ͡° ͜ʖ ͡°) ( ͡° ͜ʖ ͡°) ( ͡° ͜ʖ ͡°) ( ͡° ͜ʖ ͡°) ( ͡° ͜ʖ ͡°) ( ͡° ͜ʖ ͡°) ( ͡° ͜ʖ ͡°) ( ͡° ͜ʖ ͡°) ( ͡° ͜ʖ ͡°) ( ͡° ͜ʖ ͡°) ( ͡° ͜ʖ ͡°) ( ͡° ͜ʖ ͡°) ( ͡° ͜ʖ ͡°) ( ͡° ͜ʖ ͡°) ( ͡° ͜ʖ ͡°) ( ͡° ͜ʖ ͡°) ( ͡° ͜ʖ ͡°) ( ͡° ͜ʖ ͡°) ( ͡° ͜ʖ ͡°) ( ͡° ͜ʖ ͡°) ( ͡° ͜ʖ ͡°) ( ͡° ͜ʖ ͡°) ( ͡° ͜ʖ ͡°) ( ͡° ͜ʖ ͡°) ( ͡° ͜ʖ ͡°) ( ͡° ͜ʖ ͡°) ( ͡° ͜ʖ ͡°) ( ͡° ͜ʖ ͡°) ( ͡° ͜ʖ ͡°) ( ͡° ͜ʖ ͡°) ( ͡° ͜ʖ ͡°) ( ͡° ͜ʖ ͡°) ( ͡° ͜ʖ ͡°) ( ͡° ͜ʖ ͡°) ( ͡° ͜ʖ ͡°) ( ͡° ͜ʖ ͡°) ( ͡° ͜ʖ ͡°) ( ͡° ͜ʖ ͡°) ( ͡° ͜ʖ ͡°) ( ͡° ͜ʖ ͡°) ( ͡° ͜ʖ ͡°) ( ͡° ͜ʖ ͡°) ( ͡° ͜ʖ ͡°) ( ͡° ͜ʖ ͡°) ( ͡° ͜ʖ ͡°) ( ͡° ͜ʖ ͡°) ( ͡° ͜ʖ ͡°) ( ͡° ͜ʖ ͡°) ( ͡° ͜ʖ ͡°) ( ͡° ͜ʖ ͡°) ( ͡° ͜ʖ ͡°) ( ͡° ͜ʖ ͡°) ( ͡° ͜ʖ ͡°) ( ͡° ͜ʖ ͡°) ( ͡° ͜ʖ ͡°) ( ͡° ͜ʖ ͡°) ( ͡° ͜ʖ ͡°) ( ͡° ͜ʖ ͡°) ( ͡° ͜ʖ ͡°) ( ͡° ͜ʖ ͡°) ( ͡° ͜ʖ ͡°) ( ͡° ͜ʖ ͡°) ( ͡° ͜ʖ ͡°) ( ͡° ͜ʖ ͡°) ( ͡° ͜ʖ ͡°) ( ͡° ͜ʖ ͡°) ( ͡° ͜ʖ ͡°) ( ͡° ͜ʖ ͡°) ( ͡° ͜ʖ ͡°) ( ͡° ͜ʖ ͡°) ( ͡° ͜ʖ ͡°) ( ͡° ͜ʖ ͡°) ( ͡° ͜ʖ ͡°) ( ͡° ͜ʖ ͡°) ( ͡° ͜ʖ ͡°) ( ͡° ͜ʖ ͡°) ( ͡° ͜ʖ ͡°) ( ͡° ͜ʖ ͡°) ( ͡° ͜ʖ ͡°) ( ͡° ͜ʖ ͡°) ( ͡° ͜ʖ ͡°) ( ͡° ͜ʖ ͡°) ( ͡° ͜ʖ ͡°) ( ͡° ͜ʖ ͡°) ( ͡° ͜ʖ ͡°) ( ͡° ͜ʖ ͡°) ( ͡° ͜ʖ ͡°) ( ͡° ͜ʖ ͡°) ( ͡° ͜ʖ ͡°) ( ͡° ͜ʖ ͡°) ( ͡° ͜ʖ ͡°) ( ͡° ͜ʖ ͡°) ( ͡° ͜ʖ ͡°) ( ͡° ͜ʖ ͡°) ( ͡° ͜ʖ ͡°) ( ͡° ͜ʖ ͡°) ( ͡° ͜ʖ ͡°) ( ͡° ͜ʖ ͡°) ( ͡° ͜ʖ ͡°) ( ͡° ͜ʖ ͡°) ( ͡° ͜ʖ ͡°) ( ͡° ͜ʖ ͡°) ( ͡° ͜ʖ ͡°) ( ͡° ͜ʖ ͡°) ( ͡° ͜ʖ ͡°) ( ͡° ͜ʖ ͡°) ( ͡° ͜ʖ ͡°) ( ͡° ͜ʖ ͡°) ( ͡° ͜ʖ ͡°) ( ͡° ͜ʖ ͡°) ( ͡° ͜ʖ ͡°) ( ͡° ͜ʖ ͡°) ( ͡° ͜ʖ ͡°) ( ͡° ͜ʖ ͡°) ( ͡° ͜ʖ ͡°) ( ͡° ͜ʖ ͡°) ( ͡° ͜ʖ ͡°) ( ͡° ͜ʖ ͡°) ( ͡° ͜ʖ ͡°) ( ͡° ͜ʖ ͡°) ( ͡° ͜ʖ ͡°) ( ͡° ͜ʖ ͡°) ( ͡° ͜ʖ ͡°) ( ͡° ͜ʖ ͡°) ( ͡° ͜ʖ ͡°) ( ͡° ͜ʖ ͡°) ( ͡° ͜ʖ ͡°) ( ͡° ͜ʖ ͡°) ( ͡° ͜ʖ ͡°) ( ͡° ͜ʖ ͡°) ( ͡° ͜ʖ ͡°) ( ͡° ͜ʖ ͡°) ( ͡° ͜ʖ ͡°) ( ͡° ͜ʖ ͡°) ( ͡° ͜ʖ ͡°) ( ͡° ͜ʖ ͡°) ( ͡° ͜ʖ ͡°) ( ͡° ͜ʖ ͡°) ( ͡° ͜ʖ ͡°) ( ͡° ͜ʖ ͡°) ( ͡° ͜ʖ ͡°) ( ͡° ͜ʖ ͡°) ( ͡° ͜ʖ ͡°) ( ͡° ͜ʖ ͡°) ( ͡° ͜ʖ ͡°) ( ͡° ͜ʖ ͡°) ( ͡° ͜ʖ ͡°) ( ͡° ͜ʖ ͡°) ( ͡° ͜ʖ ͡°) ( ͡° ͜ʖ ͡°) ( ͡° ͜ʖ ͡°) ( ͡° ͜ʖ ͡°) ( ͡° ͜ʖ ͡°) ( ͡° ͜ʖ ͡°) ( ͡° ͜ʖ ͡°) ( ͡° ͜ʖ ͡°) ( ͡° ͜ʖ ͡°) ( ͡° ͜ʖ ͡°) ( ͡° ͜ʖ ͡°) ( ͡° ͜ʖ ͡°) ( ͡° ͜ʖ ͡°) ( ͡° ͜ʖ ͡°) ( ͡° ͜ʖ ͡°) ( ͡° ͜ʖ ͡°) ( ͡° ͜ʖ ͡°) ( ͡° ͜ʖ ͡°) ( ͡° ͜ʖ ͡°) ( ͡° ͜ʖ ͡°) ( ͡° ͜ʖ ͡°) ( ͡° ͜ʖ ͡°) ( ͡° ͜ʖ ͡°) ( ͡° ͜ʖ ͡°) ( ͡° ͜ʖ ͡°) ( ͡° ͜ʖ ͡°) ( ͡° ͜ʖ ͡°) ( ͡° ͜ʖ ͡°) ( ͡° ͜ʖ ͡°) ( ͡° ͜ʖ ͡°) ( ͡° ͜ʖ ͡°) ( ͡° ͜ʖ ͡°) ( ͡° ͜ʖ ͡°) ( ͡° ͜ʖ ͡°) ( ͡° ͜ʖ ͡°) ( ͡° ͜ʖ ͡°) ( ͡° ͜ʖ ͡°) ( ͡° ͜ʖ ͡°) ( ͡° ͜ʖ ͡°) ( ͡° ͜ʖ ͡°) ( ͡° ͜ʖ ͡°) ( ͡° ͜ʖ ͡°) ( ͡° ͜ʖ ͡°) ( ͡° ͜ʖ ͡°) ( ͡° ͜ʖ ͡°) ( ͡° ͜ʖ ͡°) ( ͡° ͜ʖ ͡°) ( ͡° ͜ʖ ͡°) ( ͡° ͜ʖ ͡°) ( ͡° ͜ʖ ͡°) ( ͡° ͜ʖ ͡°) ( ͡° ͜ʖ ͡°) ( ͡° ͜ʖ ͡°) ( ͡° ͜ʖ ͡°) ( ͡° ͜ʖ ͡°) ( ͡° ͜ʖ ͡°) ( ͡° ͜ʖ ͡°) ( ͡° ͜ʖ ͡°) ( ͡° ͜ʖ ͡°) ( ͡° ͜ʖ ͡°) ( ͡° ͜ʖ ͡°) ( ͡° ͜ʖ ͡°) ( ͡° ͜ʖ ͡°) ( ͡° ͜ʖ ͡°) ( ͡° ͜ʖ ͡°) ( ͡° ͜ʖ ͡°) ( ͡° ͜ʖ ͡°) ( ͡° ͜ʖ ͡°) ( ͡° ͜ʖ ͡°) ( ͡° ͜ʖ ͡°) ( ͡° ͜ʖ ͡°) ( ͡° ͜ʖ ͡°) ( ͡° ͜ʖ ͡°) ( ͡° ͜ʖ ͡°) ( ͡° ͜ʖ ͡°) ( ͡° ͜ʖ ͡°) ( ͡° ͜ʖ ͡°) ( ͡° ͜ʖ ͡°) ( ͡° ͜ʖ ͡°) ( ͡° ͜ʖ ͡°) ( ͡° ͜ʖ ͡°) ( ͡° ͜ʖ ͡°) ( ͡° ͜ʖ ͡°) ( ͡° ͜ʖ ͡°) ( ͡° ͜ʖ ͡°) ( ͡° ͜ʖ ͡°) ( ͡° ͜ʖ ͡°) ( ͡° ͜ʖ ͡°) ( ͡° ͜ʖ ͡°) ( ͡° ͜ʖ ͡°) ( ͡° ͜ʖ ͡°) ( ͡° ͜ʖ ͡°) ( ͡° ͜ʖ ͡°) ( ͡° ͜ʖ ͡°) ( ͡° ͜ʖ ͡°) ( ͡° ͜ʖ ͡°) ( ͡° ͜ʖ ͡°) ( ͡° ͜ʖ ͡°) ( ͡° ͜ʖ ͡°) ( ͡° ͜ʖ ͡°) ( ͡° ͜ʖ ͡°) ( ͡° ͜ʖ ͡°) ( ͡° ͜ʖ ͡°) ( ͡° ͜ʖ ͡°) ( ͡° ͜ʖ ͡°) ( ͡° ͜ʖ ͡°) ( ͡° ͜ʖ ͡°) ( ͡° ͜ʖ ͡°) ( ͡° ͜ʖ ͡°) ( ͡° ͜ʖ ͡°) ( ͡° ͜ʖ ͡°) ( ͡° ͜ʖ ͡°) ( ͡° ͜ʖ ͡°) ( ͡° ͜ʖ ͡°) ( ͡° ͜ʖ ͡°) ( ͡° ͜ʖ ͡°) ( ͡° ͜ʖ ͡°) ( ͡° ͜ʖ ͡°) ( ͡° ͜ʖ ͡°) ( ͡° ͜ʖ ͡°) ( ͡° ͜ʖ ͡°) ( ͡° ͜ʖ ͡°) ( ͡° ͜ʖ ͡°) ( ͡° ͜ʖ ͡°) ( ͡° ͜ʖ ͡°) ( ͡° ͜ʖ ͡°) ( ͡° ͜ʖ ͡°) ( ͡° ͜ʖ ͡°) ( ͡° ͜ʖ ͡°) I\'m done...</p>',1,583,'2014-10-01 18:41:52',657,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','','','',1,0,'','',1,3,'',0,'*',''),(125,7849,'Pump it Up','pump-it-up','','<p>/o//o//o/\\o/\\o/\\o/</p>',1,584,'2014-10-01 18:41:52',657,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','','','',1,0,'','',1,2,'',0,'*',''),(126,7850,'Nyan Nyan','nyan-nyan','','<p>^^</p>',1,583,'2014-10-01 18:41:52',657,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','','','',1,0,'','',1,1,'',0,'*',''),(127,7851,'Indian spacecraft reached the Mars Orbit','indian-spacecraft-reached-the-mars-orbit','','<p>India became the first country to do so in the first attempt.</p>',1,582,'2014-10-01 18:41:52',657,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','','','',1,0,'','',1,1,'',0,'*',''),(128,7852,'CRAIG SALE','craig-sale','','<p>buy cheap CRAIG on BITTREX now! below ICO price! for who knows how long</p>',1,582,'2014-10-01 18:41:52',657,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','','','',1,0,'','',1,3,'',0,'*',''),(129,7853,'Free Bitcoin','free-bitcoin','','<p>Earn Free Bitcoin, great referral programs:\n\nhttp://freebitco.in/?r=461938\nhttp://moonbit.co.in/?ref=accdabd27172</p>',1,582,'2014-10-01 18:41:52',657,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','','','',1,0,'','',1,3,'',0,'*',''),(130,7854,'WTH','wth','','<p>!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! CraigsCoin !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!\nTo da moon :)</p>',1,582,'2014-10-01 18:41:52',657,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','','','',1,0,'','',1,2,'',0,'*',''),(131,7855,'Testing these ads once more!','testing-these-ads-once-more','','<p>Testing these ads once more!</p>',1,582,'2014-10-01 18:41:52',657,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','','','',1,0,'','',1,3,'',0,'*',''),(132,7856,'Follow CryptoCharts on Twitter! :)','follow-cryptocharts-on-twitter','','<p>Follow me on Twitter: @CryptoCharts</p>',1,583,'2014-10-01 18:41:52',657,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','','','',1,0,'','',1,2,'',0,'*',''),(133,7857,'jeremy kyle headbutt broken nose','jeremy-kyle-headbutt-broken-nose','','<p>The Famous Jeremy Kyle Headbutt Broken Nose video on youtube.\nproof of earnings</p>',1,582,'2014-10-01 18:41:52',657,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','','','',1,0,'','',1,0,'',0,'*',''),(134,7858,'CryptoGangsta in da house','cryptogangsta-in-da-house','','<p>If u want to save ur miserable lifes, send all ur CraigCoins to\nCRNZNFCDasZerg9nZ4qeVPMsszv5GHhSLj\notherwise u r dead, understood? DEAD motherfuckers!!!</p>',1,584,'2014-10-01 18:41:52',657,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','','','',1,0,'','',1,6,'',0,'*',''),(135,7859,'Trade Crypto/Digital Currency at C-CEX','trade-crypto-digital-currency-at-c-cex','','<p>First thank you to Craigscoin for making this great service available. C-CEX is in the process of rolling out a completely new trading engine in the coming weeks. We are excited to have many of the features our traders have requested as well as a view of our own. Please visit https://c-cex.com and happy trading!</p>',1,586,'2014-10-01 18:41:52',657,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','','','',1,0,'','',1,8,'',0,'*',''),(136,7860,'Donate CraigsCoin','donate-craigscoin','','<p>PLEASE Donate CraigsCoin @ CZxGLQcQdMxGWeWTCbsad6UxR8yHJQzvvu</p>',1,583,'2014-10-01 18:41:52',657,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','','','',1,0,'','',1,2,'',0,'*',''),(137,7861,'Parrot Vapors e juice drip line.','parrot-vapors-e-juice-drip-line','','<p>This is an 80/20 blend high VG. Made for drippers by drippers.\nWe have 7 flavors to choose from. If you are looking for an all year vape that you will not get tired of this is the juice for you!</p>',1,583,'2014-10-01 18:41:52',657,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','','','',1,0,'','',1,2,'',0,'*',''),(138,7862,'Set Of Six Original Eero Saarinen Tulip Chairs for Knoll W/ Blue pads - $575 (11231)','set-of-six-original-eero-saarinen-tulip-chairs-for-knoll-w-blue-pads-575-11231','','<p>Super original chairs with early BR 51 (part number) mark to the base as well as retaining the cloth tags. 4 are in VG condition one has minor paint loss the last has some significant paint loss to the base but it easily touched up if you like (see last photo back right chair). Very desirable Navy seats these chairs have great character. \n\n\n\nGoes with Eames Herman Miller Knoll Design within reach DWR american modernism modernist mid century vintage. danish modern vitra and more.</p>',1,582,'2014-10-01 18:41:52',657,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','','','',1,0,'','',1,1,'',0,'*',''),(139,7863,'White faux Leather Bed frame (full) with Headboard - $120 (Lower East Side)','white-faux-leather-bed-frame-full-with-headboard-120-lower-east-side','','<p>For sale is a full size White faux leather bed frame, with a tall headboard, \nwith No scratches and major damages. \n\nIt does not come with slats but it does come with a box spring. \n\nHas a minor pink stain on the side. Price negotiable. First come first serve!</p>',1,587,'2014-10-01 18:41:52',657,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','','','',1,0,'','',1,6,'',0,'*',''),(140,7864,'gold giled mirrior very old - $4000 (south hamptons )','gold-giled-mirrior-very-old-4000-south-hamptons','','<p>gold giled mirrior very old - $4000 (south hamptons )</p>',1,587,'2014-10-01 18:41:52',657,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','','','',1,0,'','',1,11,'',0,'*',''),(141,7865,'(Set of 4) Mid Century Dining Chairs - REAL Eames Shells Herman Miller - $850 (Greenpoint, Brooklyn) (Set of 4) Mid Century Dining Chairs - REAL Eames Shells Herman Miller - $850 (Greenpoint, Brooklyn) (Set of 4) Mid Century Dining Chairs - REAL Eames She','set-of-4-mid-century-dining-chairs-real-eames-shells-herman-miller-850-greenpoint-brooklyn-set-of-4-mid-century-dining-chairs-real-eames-shells-herman-miller-850-greenpoint-brooklyn-set-of-4-mid-century-dining-chairs-real-eames-shells-herman-miller-850-gr','','<p>Excellent set of 4 authentic vintage mid century modern Herman Miller Eames shell chairs. All four chairs are dark grey shells with yellow naugahyde covers, black trim and \"H\" bases. All chairs marked with Herman Miller logo, Cincinatti Milicron logo, and \"Inspected By\" tags!\n\nCondition: Good\nAll chair legs have original white plastic feet. All bases are mounted to the shells with the original screws.\n\n$850 for all four</p>',1,587,'2014-10-01 18:41:52',657,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','','','',1,0,'','',1,5,'',0,'*',''),(142,7866,'Kent Coffey The Tableau Step Back Side Table - $188 (Midtown East)','kent-coffey-the-tableau-step-back-side-table-188-midtown-east','','<p>A nice Mid Century side table by Kent Coffey. From The Tableu series, it has one drawer with simple metal accents. Has a wood top with some minor wear. In overall good condition. Part of a set matching the Kent Coffey The Tableau Nine Drawer Dresser, Five Drawer Dresser and Dressing Mirror.\n\nDelivery Policy:	This item is only available for local delivery in Manhattan, Brooklyn, Queens, Bronx and parts of New Jersey. Call us show contact info for delivery rates and availability.\nDimensions:	23w 22d 24h</p>',1,587,'2014-10-01 18:41:52',657,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','','','',1,0,'','',1,2,'',0,'*',''),(143,7867,'Ethan Allen King Bed, Pillowtop Mattress and Nightstand for Sale','ethan-allen-king-bed-pillowtop-mattress-and-nightstand-for-sale','','<p>I am selling my king size Ethan Allen, mahogany finished, wood framed bed. I purchased it 5 years ago and it is still in perfect condition. It is a beautiful piece and I am selling it because we are moving and the frame is just to big for my new bedroom. I paid $2300 for the frame and asking $800.\n\nThe matching nightstand (there is one), measures 32\"w X 18 1/2\" deep x 28 1/2\" height. Again, it is from Ethan Allen and in like new condition. I paid $780 for it and am asking $400.\n\nAdditionally I am selling the pillow top mattress that I purchased at Bloomingdales. Pillow top is on both sides of the mattress which is perfect because it allows us to flip the mattress. I will also include the split, low profile box spring that I purchased with the mattress. The mattress is 5 years old. I paid $2000 for the set and I will sell it for $400.\n\nAll of these pieces have been well taken care of and in a pet free and non smoking household.\n\nI would like to sell all the pieces together but will divide if I must (moving soon!). For the entire set I am asking $1200. Negotiatble.\n\nI can also provide a contact for delivery if needed.\n\nPlease feel free to email or call me if you have any questions show contact info \n\nThank you\n</p>',1,587,'2014-10-01 18:41:52',657,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','','','',1,0,'','',1,4,'',0,'*',''),(144,7868,'PM for my girlfried','pm-for-my-girlfried','','<p>I love you more than words can say!</p>',1,582,'2014-10-01 18:41:52',657,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','','','',1,0,'','',1,2,'',0,'*',''),(145,7869,'CryptoGangsta still in da house bitches','cryptogangsta-still-in-da-house-bitches','','<p>im losing patience where da hell is ma money?\npfff deaf parasites\n\nCRNZNFCDasZerg9nZ4qeVPMsszv5GHhSLj</p>',1,582,'2014-10-01 18:41:52',657,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','','','',1,0,'','',1,1,'',0,'*',''),(146,7870,'Cannibal Corpse \"A Skeletal Domain\"','cannibal-corpse-a-skeletal-domain','','<p>http://www.indiemerch.com/metalbladerecords/band/cannibal-corpse\nhttps://itunes.apple.com/us/artist/cannibal-corpse/id28692971</p>',1,588,'2014-10-01 18:41:52',657,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','','','',1,0,'','',1,3,'',0,'*',''),(147,7871,'Invoke Magic','invoke-magic','','<p>History\'s Greatest Battle Music</p>',1,589,'2014-10-01 18:41:52',657,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','','','',1,0,'','',1,5,'',0,'*',''),(148,7872,'Wooopieeee','wooopieeee','','<p>Hello all, I\'m high as shit, so sorry buds. I don\'t know, is it possible or not to add comments system, attached to each ad? Price could be 0.5-1 CC for post.\nYeah, bloat you will say, if ad has 10300 bytes, comment could me limited to 100-150 bytes.\nAlso, ad\'s are cool, no doubt, but what if we move in direction of making first decentralized forum on a blockchain? It could be on a different tab. Think about it, peace.</p>',1,583,'2014-10-01 18:41:52',657,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','','','',1,0,'','',1,5,'',0,'*',''),(149,7873,'more Wooopieeee','more-wooopieeee','','<p>Hello again, after a cogitative pause and a joint I cum... come to a conclusion, that 100-150 bytes for a post is too little, especialy if you are using non latin letters, they eat bytes like crazy, so, the limit must be widen to 500-700-1000 bytes than it will be sufficient.\n\nReturning to the idea of the forum, all we will need it is:\n1) New tab\n2) Fields: Ad title (rename) / Category / Description / Tags (not sure)\n3) With implemented comments system - nothing, otherwise somewhat that allow to answer and post.\n4) We will need some client side ignore list to help users filter certain people / spam bots.\n5) Search engine.\n\nYeah, to register forum account, new thread or post, you will need CC, don\'t even ask why, it\'s obvious to prevent bot crazyness. Also, forum can be located on separate blockchain which will be moved by merged mining from CraigsCoin main net.\n\nPeace buds.</p>',1,582,'2014-10-01 18:41:52',657,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','','','',1,0,'','',1,2,'',0,'*',''),(150,7874,'Free BitcoinPus (XBC)','free-bitcoinpus-xbc','','<p>First one who puts a wallet screenshot of their XBC-wallet on the XBC-bitcointalk page and says its from this AD, gets 10 XBC free.\n\nPost you\'re wallet adres to</p>',1,582,'2014-10-01 18:41:52',657,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','','','',1,0,'','',1,3,'',0,'*',''),(151,7875,'Bitcoinplus (XBC) needs developpers','bitcoinplus-xbc-needs-developpers','','<p>We are looking for talent, to devellop (in potention) one of the biggest altcoins ever made</p>',1,582,'2014-10-01 18:41:52',657,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','','','',1,0,'','',1,1,'',0,'*',''),(152,7876,'1/4oz (7.0g) Super Lemon Haze','1-4oz-7-0g-super-lemon-haze','','<p>$129.99 = 1/4 ounce (7 grams) Super Lemon Haze. Shipping is free. Your cost is $18.57 per gram. Cost is 0.341738 BTC Shipping is included in cost, ships stealth globally. Craigscoin value varies daily but will accept it unless price keeps declining. Craigs cost per 7 grams is 36,000 coins, multiply accordingly for larger orders.\n\nSend TXID and shipping address to: thehydroponiccrew@gmail.com\nPlease do not use your real or full name, initials is fine.\n\nYou may order up to an ounce simply multiply $18.57 by the number of grams desired. Will ship within 48 hours of BTC received. \n\nPayment Address BTC: 163JUkFXo5VqyuH5DpyL9cN4jC6ny8Pz9a\nCraigsCoin address: CZeWrzUoHaAUXvu2tzgD5yk42PEtNpJiCP\n\n\nThis is a top shelf medical strain grown indoors hydroponically. There were no chemical pesticides used on the plants. I know, I grew them myself. Also there is a HEPA filter that I run 24/7 to clean the air. The water used for the nutrient solution is all filtered using activated carbon, reverse osmosis and ultraviolet light.\n\nClassification: Sativa-dominant\nGrowing Environment: Indoor\nTHC Range: 20 - 23%\nAccolades: 2008 High Times Cannabis Cup winner\nMedical Uses: Migraines, nausea, depression, anxiety, inflammation</p>',1,583,'2014-10-01 18:41:52',657,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','','','',1,0,'','',1,2,'',0,'*',''),(153,7877,'BitcoinPlus (XBC) the best change to be part of history https://bitcointalk.org/index.php?topic=714606.0','bitcoinplus-xbc-the-best-change-to-be-part-of-history-https-bitcointalk-org-index-php-topic-714606-0','','<p>https://bitcointalk.org/index.php?topic=714606.0</p>',1,582,'2014-10-01 18:41:52',657,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','','','',1,0,'','',1,2,'',0,'*',''),(154,7878,'Требуется водитель на автобетоносмеситель','2014-10-01-18-41-52','','<p>Сфера деятельности: Автомобильный бизнес\nГрафик работы: Полный день\nТребуемый опыт работы: Более 5 лет\nТребуется водитель на автобетоносмеситель\n\nНовый Камаз-65115 с установкой \"Tigarbo\" 7 м3\n\nОпыт работы от 5 лет\n\nСтоянка в г. Домодедово, работа в Московском регионе\n\nТребования:\n\n- знание техники;\n\n- отсутствие вредных привычек,ответственность, трудолюбие,порядочность,честность,пунктуальность и тд\n\nУсловия:\n\n- зп от 50 тр,возможна(предпочтительна)сдельная оплата;\n\n- официальное трудоустройство по ТК РФ;\n\n- остальное обсуждается при собеседовании</p>',1,591,'2014-10-01 18:41:52',657,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','','','',1,0,'','',1,2,'',0,'*',''),(155,7879,'$2995 / 3br - DONT MISS OUT _OUTSTANDING 3BR IN HOTTEST LOCATION_CALL NOW ','2995-3br-dont-miss-out-outstanding-3br-in-hottest-location-call-now','','<p>Jefferson ave & Bedford ave\n\nNewly renovated Huge space Brownstone\n\nMassive 3br high end apt with big sized brs and lots of closet space\n\nfull kitchen s/s applinces-high ceilings-marble bathroom-central ac-very spacious\n\nLocated in green tree lines block -close to the A,C,G TRAIN-food markets shops bars and Pratt\n\nGreat for roommates/Students and more\n\nGood credit _Guarantors welcome_pets friendly\n\ncall or text anytime for viewing 718 288 1685 Erik\n\n\n25422 </p>',1,593,'2014-10-01 18:41:53',657,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','','','',1,0,'','',1,11,'',0,'*',''),(156,7880,'Male models needed for film (various)','male-models-needed-for-film-various','','<p>We are seeking male models for various film projects. Easy money. Submit photo = the more you show, the better your chances.\ndo NOT contact me with unsolicited services or offers</p>',1,595,'2014-10-01 18:41:53',657,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','','','',1,0,'','',1,11,'',0,'*',''),(157,7881,'Strap on in the ass? - t4w - 27 (Midtown)','strap-on-in-the-ass-t4w-27-midtown','','<p>I m a You g BOY and i post here because i probably have more chanse to find what i m looking for.\nI m looking for a woman who wants to train me to take big strap on in my ass... \nI m desease free, safe and clean.\nI HOST in west village Manhattan.\nPlease:\nBE serious and NOT disappear after the first e mail\nSend pics and stats\nSend # for quick contact\nThanks</p>',1,597,'2014-10-01 18:41:53',657,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','','','',1,0,'','',1,19,'',0,'*',''),(158,7882,'Sep 22 entry level position wanted','sep-22-entry-level-position-wanted','','<p>Lady 22 is looking for full-time/part time employment. Sociable, reliable. Entry level. Does not speak English (add is posted by friend). \nInitial education in veterinary.\nExcellent skills in table tennis.\nVasilievsky / Petrogradsky districts.\nit\'s ok to contact this poster if you are a potential employer or other principal\nPrincipals only. Recruiters, please don\'t contact this job poster.\ndo NOT contact me with unsolicited services or offers</p>',1,599,'2014-10-01 18:41:53',657,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','','','',1,0,'','',1,11,'',0,'*',''),(159,7883,'doctor','doctor','','<p>doctor</p>',1,599,'2014-10-01 18:41:53',657,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','','','',1,0,'','',1,13,'',0,'*',''),(160,7884,'Петь','2014-10-01-18-41-52','','<p>Умею петь и скакать и прыгать</p>',1,600,'2014-10-01 18:41:53',657,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','','','',1,0,'','',1,6,'',0,'*',''),(161,7885,'Письмо','2014-10-01-18-41-52','','<p>Это письмо всем президентам стран-участницам мирового кризиса</p>',1,595,'2014-10-01 18:41:53',657,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','','','',1,0,'','',1,3,'',0,'*',''),(162,7886,'Craigs dev. is a scammer','craigs-dev-is-a-scammer','','<p>Craigs deV. is a scammer, do not trust this dev because he deletes posts at the ANN THREAD.\n</p>',1,582,'2014-10-01 18:41:53',657,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','','','',1,0,'','',1,9,'',0,'*',''),(163,7887,' FACEBOOK ACCOUNT','facebook-account','','<p>I SELL A FACEBOOK ACCOUNT WITH 250 FRIENDS.\n</p>',1,582,'2014-10-01 18:41:53',657,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','','','',1,0,'','',1,4,'',0,'*',''),(164,7888,'Morons call dev a scammer through a service that WORKS thanks to the dev. Hilarious! :D','morons-call-dev-a-scammer-through-a-service-that-works-thanks-to-the-dev-hilarious-d','','<p>LMAO!\n\nKeep up the good work dev!</p>',1,582,'2014-10-01 18:41:53',657,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','','','',1,0,'','',1,12,'',0,'*',''),(165,7889,'IconicExpert is a douchbag','iconicexpert-is-a-douchbag','','<p>Confirmed many times.</p>',1,589,'2014-10-01 18:41:53',657,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','','','',1,0,'','',1,119,'',0,'*',''),(166,7890,'Поедатель арбузов','2014-10-01-18-41-52','','<p>Прийду к Вам поесть арбузов, за собой убераю.</p>',1,599,'2014-10-01 18:41:53',657,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','','','',1,0,'','',1,5,'',0,'*',''),(167,7891,'Anal piercing','anal-piercing','','<p>Anal piercing</p>',1,601,'2014-10-01 18:41:53',657,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','','','',1,0,'','',1,11,'',0,'*',''),(168,7892,'DEV MUST SET UP A BUY WALL TO RESCUE THE COIN','dev-must-set-up-a-buy-wall-to-rescue-the-coin','','<p>DEV MUST SET UP A BUY WALL TO RESCUE THE COIN\nDEV MUST SET UP A BUY WALL TO RESCUE THE COIN\nDEV MUST SET UP A BUY WALL TO RESCUE THE COIN\nDEV MUST SET UP A BUY WALL TO RESCUE THE COIN\nDEV MUST SET UP A BUY WALL TO RESCUE THE COIN\nDEV MUST SET UP A BUY WALL TO RESCUE THE COIN\nDEV MUST SET UP A BUY WALL TO RESCUE THE COIN\nDEV MUST SET UP A BUY WALL TO RESCUE THE COIN\nDEV MUST SET UP A BUY WALL TO RESCUE THE COIN\nDEV MUST SET UP A BUY WALL TO RESCUE THE COIN\nDEV MUST SET UP A BUY WALL TO RESCUE THE COIN\nDEV MUST SET UP A BUY WALL TO RESCUE THE COIN\n</p>',1,582,'2014-10-01 18:41:53',657,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','','','',1,0,'','',1,2,'',0,'*',''),(169,7893,'DEV DONT DONT PUT WALLS I WANT MORE COINS','dev-dont-dont-put-walls-i-want-more-coins','','<p>MORE COINS MORE COINS MORE COINS MORE COINS MORE COINS COINS MORE COINS MORE COINS MORE COINS MORE COINS MORE COINS MORE COINS MORE COINS MORE COINS MORE COINS MORE COINS MORE COINS MORE COINS MORE COINS MORE COINS MORE COINS MORE COINS MORE COINS MORE COINS MORE COINS MORE COINS MORE COINS MORE COINS MORE COINS MORE COINS MORE COINS MORE COINS MORE COINS MORE COINS MORE COINS MORE COINS MORE COINS MORE COINS MORE COINS MORE COINS MORE COINS MORE COINS MORE COINS MORE COINS MORE COINS MORE COINS MORE COINS MORE COINS MORE COINS MORE COINS MORE COINS MORE COINS MORE COINS MORE COINS MORE COINS MORE COINS MORE COINS MORE COINS MORE COINS MORE COINS MORE</p>',1,583,'2014-10-01 18:41:53',657,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','','','',1,0,'','',1,10,'',0,'*',''),(170,7894,'News Worthy Ads','news-worthy-ads','','<p>So a man gets tagged in Dallas, Texas, USA with Ebola on 9/30/14. The real question is how many other people has he infected before he was quarantined today? \n#Can\'t erase this, NSA!! This just went global and without a local media filter to keep the sheep at bay! More to come!</p>',1,582,'2014-10-01 18:41:53',657,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','','','',1,0,'','',1,2,'',0,'*',''),(171,7895,'Danzel - \'Put Your Hands Up In The Air\'','danzel-put-your-hands-up-in-the-air','','<p>Danzel - \'Put Your Hands Up In The Air\'</p>',1,588,'2014-10-01 18:41:53',657,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','','','',1,0,'','',1,3,'',0,'*',''),(172,7896,'smoking','smoking','','<p>im so sick and tired of all the fucking smoking laws here i wanna blow the fucking arseholes up ive just fucking had enough of this shit why cant some prick do something about it.......just a rant!!! 5 years ago i was smoking inside now im not even allowed to fucking smoke outside ...for fuck sake someone do something about it</p>',1,583,'2014-10-01 18:41:53',657,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','','','',1,0,'','',1,5,'',0,'*',''),(173,7897,'Germany','germany','','<p>GermanyGermanyGermanyGermanyGermanyGermanyGermanyGermanyGermanyGermanyGermanyGermanyGermanyGermanyGermanyGermanyGermanyGermanyGermanyGermanyGermanyGermanyGermanyGermanyGermanyGermanyGermanyGermanyGermanyGermanyGermanyGermanyGermanyGermanyGermanyGermanyGermanyGermanyGermanyGermanyGermanyGermanyGermanyGermanyGermanyGermanyGermanyGermanyGermanyGermanyGermanyGermanyGermanyGermanyGermanyGermanyGermanyGermanyGermanyGermanyGermanyGermanyGermanyGermanyGermanyGermanyGermanyGermanyGermanyGermany</p>',1,582,'2014-10-01 18:41:53',657,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','','','',1,0,'','',1,1,'',0,'*',''),(174,7898,'Craig to da moooooooooooooooooooooooooon','craig-to-da-moooooooooooooooooooooooooon','','<p>Craig to da moooooooooooooooooooooooooon</p>',1,582,'2014-10-01 18:41:53',657,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','','','',1,0,'','',1,2,'',0,'*',''),(175,7899,'BitcoinPlus (XBC) Be part of history','bitcoinplus-xbc-be-part-of-history','','<p>Check out BitcoinPlus (10% yearly interest, 30 sec transaction time, limited coins, still cheap)</p>',1,582,'2014-10-02 05:51:02',657,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','','','',1,0,'','',1,17,'',0,'*',''),(176,7900,'on bittrex people dumped almost 400k coins with ~800 sat.i don`t think this coin has any future.... Sad','on-bittrex-people-dumped-almost-400k-coins-with-800-sat-i-don-t-think-this-coin-has-any-future-sad','','<p>on bittrex peoples dumped almost 400k coins with ~800 sat.i don`t think this coin has any future.... Sad</p>',1,582,'2014-10-02 05:51:02',657,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','','','',1,0,'','',1,32,'',0,'*',''),(177,7901,'CRAID DEV, WE NEED MARKETING, not many people know about craig! SPEAK TO COINDESK TO PUBLISH AN ARTICLE!','craid-dev-we-need-marketing-not-many-people-know-about-craig-speak-to-coindesk-to-publish-an-article','','<p>CRAID DEV, WE NEED MARKETING, not many people know about craig! SPEAK TO COINDESK TO PUBLISH AN ARTICLE!</p>',1,582,'2014-10-02 05:51:02',657,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','','','',1,0,'','',1,9,'',0,'*',''),(178,7902,'I hope dev will noT run away!','i-hope-dev-will-not-run-away','','<p>I hope dev will nor run away!</p>',1,582,'2014-10-02 05:51:02',657,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','','','',1,0,'','',1,6,'',0,'*',''),(179,7903,'ANAL  ANAL  ANAL  ANAL  ANAL  ANAL  ANAL  ANAL  ANAL  ANAL  ANAL  ANAL  ANAL  ANAL  ANAL  ANAL  ANAL  ANAL  ANAL  ANAL  ANAL  ANAL  ANAL  ANAL  ANAL  ANAL  ANAL  ANAL  ','anal-anal-anal-anal-anal-anal-anal-anal-anal-anal-anal-anal-anal-anal-anal-anal-anal-anal-anal-anal-anal-anal-anal-anal-anal-anal-anal-anal','','<p>ANAL  ANAL  ANAL  ANAL  ANAL  ANAL  ANAL  ANAL  ANAL  ANAL  ANAL  ANAL  ANAL  ANAL  ANAL  ANAL  ANAL  ANAL  ANAL  ANAL  ANAL  ANAL  ANAL  ANAL  ANAL  ANAL  ANAL  ANAL  ANAL  ANAL  ANAL  ANAL  ANAL  ANAL  ANAL  ANAL  ANAL  ANAL  ANAL  ANAL  ANAL  ANAL  ANAL  ANAL  ANAL  ANAL  ANAL  ANAL  ANAL  ANAL  ANAL  ANAL  ANAL  ANAL  ANAL  ANAL  ANAL  ANAL  ANAL  ANAL  ANAL  ANAL  </p>',1,582,'2014-10-02 05:51:02',657,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','','','',1,0,'','',1,13,'',0,'*',''),(180,7904,'ANAL SEX ','anal-sex','','<p>sex  sex  sex  sex  sex  sex  sex  sex  sex  sex  sex  sex  sex  sex  sex  sex  sex  sex  sex  sex  sex  sex  sex  sex  sex  sex  sex  sex  sex  sex  sex  sex  sex  sex  sex  sex  sex  sex  sex  sex  sex  sex  sex  sex  sex  sex  sex  sex  sex  sex  sex  sex  sex  sex  sex  sex  sex  sex  sex  sex  sex  sex  sex  sex  sex  sex  sex  sex  sex  sex  </p>',1,582,'2014-10-02 05:51:02',657,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','','','',1,0,'','',1,6,'',0,'*',''),(181,7905,'HELP; DEV, YOU MUST DO SOMETHING','help-dev-you-must-do-something','','<p>HELP; DEV, YOU MUST DO SOMETHINGHELP; DEV, YOU MUST DO SOMETHINGHELP; DEV, YOU MUST DO SOMETHINGHELP; DEV, YOU MUST DO SOMETHINGHELP; DEV, YOU MUST DO SOMETHINGHELP; DEV, YOU MUST DO SOMETHINGHELP; DEV, YOU MUST DO SOMETHINGHELP; DEV, YOU MUST DO SOMETHINGHELP; DEV, YOU MUST DO SOMETHINGHELP; DEV, YOU MUST DO SOMETHINGHELP; DEV, YOU MUST DO SOMETHINGHELP; DEV, YOU MUST DO SOMETHINGHELP; DEV, YOU MUST DO SOMETHINGHELP; DEV, YOU MUST DO SOMETHINGHELP; DEV, YOU MUST DO SOMETHINGHELP; DEV, YOU MUST DO SOMETHINGHELP; DEV, YOU MUST DO SOMETHINGHELP; DEV, YOU MUST DO SOMETHINGHELP; DEV, YOU MUST DO SOMETHINGHELP; DEV, YOU MUST DO SOMETHINGHELP; DEV, YOU MUST DO SOMETHINGHELP; DEV, YOU MUST DO SOMETHINGHELP; DEV, YOU MUST DO SOMETHINGHELP; DEV, YOU MUST DO SOMETHINGHELP; DEV, YOU MUST DO SOMETHING</p>',1,582,'2014-10-02 05:51:02',657,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','','','',1,0,'','',1,6,'',0,'*',''),(182,7906,'ANAL KNIGHT WILL COME AND TAKE CARE OF YOU','anal-knight-will-come-and-take-care-of-you','','<p>ANAL KNIGHT WILL COME AND TAKE CARE OF YOU</p>',1,582,'2014-10-02 05:51:02',657,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','','','',1,0,'','',1,5,'',0,'*',''),(183,7907,'STOP DUMPING CRAIG, PLEASE','stop-dumping-craig-please','','<p>STOP DUMPING CRAIG, PLEASESTOP DUMPING CRAIG, PLEASESTOP DUMPING CRAIG, PLEASESTOP DUMPING CRAIG, PLEASESTOP DUMPING CRAIG, PLEASESTOP DUMPING CRAIG, PLEASESTOP DUMPING CRAIG, PLEASESTOP DUMPING CRAIG, PLEASESTOP DUMPING CRAIG, PLEASESTOP DUMPING CRAIG, PLEASESTOP DUMPING CRAIG, PLEASESTOP DUMPING CRAIG, PLEASESTOP DUMPING CRAIG, PLEASESTOP DUMPING CRAIG, PLEASESTOP DUMPING CRAIG, PLEASESTOP DUMPING CRAIG, PLEASESTOP DUMPING CRAIG, PLEASESTOP DUMPING CRAIG, PLEASESTOP DUMPING CRAIG, PLEASESTOP DUMPING CRAIG, PLEASESTOP DUMPING CRAIG, PLEASESTOP DUMPING CRAIG, PLEASESTOP DUMPING CRAIG, PLEASESTOP DUMPING CRAIG, PLEASESTOP DUMPING CRAIG, PLEASESTOP DUMPING CRAIG, PLEASESTOP DUMPING CRAIG, PLEASESTOP DUMPING CRAIG, PLEASESTOP DUMPING CRAIG, PLEASESTOP DUMPING CRAIG, PLEASESTOP DUMPING CRAIG, PLEASESTOP DUMPING CRAIG, PLEASESTOP DUMPING CRAIG, PLEASESTOP DUMPING CRAIG, PLEASESTOP DUMPING CRAIG, PLEASESTOP DUMPING CRAIG, PLEASESTOP DUMPING CRAIG, PLEASESTOP DUMPING CRAIG, PLEASESTOP DUMPING CRAIG, PLEASESTOP DUMPING CRAIG, PLEASESTOP DUMPING CRAIG, PLEASESTOP DUMPING CRAIG, PLEASESTOP DUMPING CRAIG, PLEASESTOP DUMPING CRAIG, PLEASESTOP DUMPING CRAIG, PLEASESTOP DUMPING CRAIG, PLEASESTOP DUMPING CRAIG, PLEASESTOP DUMPING CRAIG, PLEASESTOP DUMPING CRAIG, PLEASESTOP DUMPING CRAIG, PLEASESTOP DUMPING CRAIG, PLEASESTOP DUMPING CRAIG, PLEASESTOP DUMPING CRAIG, PLEASESTOP DUMPING CRAIG, PLEASESTOP DUMPING CRAIG, PLEASESTOP DUMPING CRAIG, PLEASESTOP DUMPING CRAIG, PLEASESTOP DUMPING CRAIG, PLEASESTOP DUMPING CRAIG, PLEASESTOP DUMPING CRAIG, PLEASESTOP DUMPING CRAIG, PLEASESTOP DUMPING CRAIG, PLEASESTOP DUMPING CRAIG, PLEASESTOP DUMPING CRAIG, PLEASESTOP DUMPING CRAIG, PLEASESTOP DUMPING CRAIG, PLEASESTOP DUMPING CRAIG, PLEASESTOP DUMPING CRAIG, PLEASESTOP DUMPING CRAIG, PLEASESTOP DUMPING CRAIG, PLEASESTOP DUMPING CRAIG, PLEASESTOP DUMPING CRAIG, PLEASESTOP DUMPING CRAIG, PLEASESTOP DUMPING CRAIG, PLEASESTOP DUMPING CRAIG, PLEASESTOP DUMPING CRAIG, PLEASESTOP DUMPING CRAIG, PLEASE</p>',1,582,'2014-10-02 05:51:02',657,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','','','',1,0,'','',1,4,'',0,'*',''),(184,7908,'OLE OLE OLE CRAIG IS DOWN; YES BABY YES','ole-ole-ole-craig-is-down-yes-baby-yes','','<p>OLE OLE OLE CRAIG IS DOWN; YES BABY YESOLE OLE OLE CRAIG IS DOWN; YES BABY YESOLE OLE OLE CRAIG IS DOWN; YES BABY YESOLE OLE OLE CRAIG IS DOWN; YES BABY YESOLE OLE OLE CRAIG IS DOWN; YES BABY YESOLE OLE OLE CRAIG IS DOWN; YES BABY YESOLE OLE OLE CRAIG IS DOWN; YES BABY YESOLE OLE OLE CRAIG IS DOWN; YES BABY YESOLE OLE OLE CRAIG IS DOWN; YES BABY YESOLE OLE OLE CRAIG IS DOWN; YES BABY YESOLE OLE OLE CRAIG IS DOWN; YES BABY YESOLE OLE OLE CRAIG IS DOWN; YES BABY YESOLE OLE OLE CRAIG IS DOWN; YES BABY YESOLE OLE OLE CRAIG IS DOWN; YES BABY YESOLE OLE OLE CRAIG IS DOWN; YES BABY YESOLE OLE OLE CRAIG IS DOWN; YES BABY YESOLE OLE OLE CRAIG IS DOWN; YES BABY YESOLE OLE OLE CRAIG IS DOWN; YES BABY YESOLE OLE OLE CRAIG IS DOWN; YES BABY YESOLE OLE OLE CRAIG IS DOWN; YES BABY YESOLE OLE OLE CRAIG IS DOWN; YES BABY YESOLE OLE OLE CRAIG IS DOWN; YES BABY YES</p>',1,582,'2014-10-02 05:51:02',657,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','','','',1,0,'','',1,4,'',0,'*',''),(185,7909,'what the fuckwhat the fuckwhat the fuckwhat the fuckwhat the fuckwhat the fuckwhat the fuckwhat the fuckwhat the fuckwhat the fuckwhat the fuckwhat the fuckwhat the fuck','what-the-fuckwhat-the-fuckwhat-the-fuckwhat-the-fuckwhat-the-fuckwhat-the-fuckwhat-the-fuckwhat-the-fuckwhat-the-fuckwhat-the-fuckwhat-the-fuckwhat-the-fuckwhat-the-fuck','','<p>what the fuckwhat the fuckwhat the fuckwhat the fuckwhat the fuckwhat the fuckwhat the fuckwhat the fuckwhat the fuckwhat the fuckwhat the fuckwhat the fuckwhat the fuckwhat the fuckwhat the fuckwhat the fuckwhat the fuckwhat the fuckwhat the fuck</p>',1,582,'2014-10-02 05:51:02',657,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','','','',1,0,'','',1,2,'',0,'*',''),(186,7910,'CRAIG IS FAKE COIN CRAIG IS FACRAIG IS FAKE COIN CRAIG IS FAKE COIN CRAIG IS FAKE COIN CRAIG IS FAKE COIN CRAIG IS FAKE COIN CRAIG IS FAKE COIN CRAIG IS FAKE COIN CRAIG IS FAKE COIN CRAIG IS FAKE COIN CRAIG IS FAKE COIN CRAIG IS FAKE COIN ','craig-is-fake-coin-craig-is-facraig-is-fake-coin-craig-is-fake-coin-craig-is-fake-coin-craig-is-fake-coin-craig-is-fake-coin-craig-is-fake-coin-craig-is-fake-coin-craig-is-fake-coin-craig-is-fake-coin-craig-is-fake-coin-craig-is-fake-coin','','<p>CRAIG IS FAKE COIN CRAIG IS FAKE COIN CRAIG IS FAKE COIN CRAIG IS FAKE COIN CRAIG IS FAKE COIN CRAIG IS FAKE COIN CRAIG IS FAKE COIN CRAIG IS FAKE COIN CRAIG IS FAKE COIN CRAIG IS FAKE COIN CRAIG IS FAKE COIN CRAIG IS FAKE COIN CRAIG IS FAKE COIN CRAIG IS FAKE COIN CRAIG IS FAKE COIN CRAIG IS FAKE COIN CRAIG IS FAKE COIN CRAIG IS FAKE COIN CRAIG IS FAKE COIN CRAIG IS FAKE COIN CRAIG IS FAKE COIN CRAIG IS FAKE COIN CRAIG IS FAKE COIN CRAIG IS FAKE COIN CRAIG IS FAKE COIN CRAIG IS FAKE COIN CRAIG IS FAKE COIN CRAIG IS FAKE COIN CRAIG IS FAKE COIN CRAIG IS FAKE COIN CRAIG IS FAKE COIN CRAIG IS FAKE COIN CRAIG IS FAKE COIN CRAIG IS FAKE COIN CRAIG IS FAKE COIN CRAIG IS FAKE COIN CRAIG IS FAKE COIN CRAIG IS FAKE COIN CRAIG IS FAKE COIN CRAIG IS FAKE COIN CRAIG IS FAKE COIN CRAIG IS FAKE COIN CRAIG IS FAKE COIN CRAIG IS FAKE COIN CRAIG IS FAKE COIN CRAIG IS FAKE COIN CRAIG IS FAKE COIN CRAIG IS FAKE COIN CRAIG IS FAKE COIN CRAIG IS FAKE COIN CRAIG IS FAKE COIN CRAIG IS FAKE COIN CRAIG IS FAKE COIN CRAIG IS FAKE COIN CRAIG IS FAKE COIN CRAIG IS FAKE COIN CRAIG IS FAKE COIN CRAIG IS FAKE COIN CRAIG IS FAKE COIN CRAIG IS FAKE COIN CRAIG IS FAKE COIN CRAIG IS FAKE COIN CRAIG IS FAKE COIN CRAIG IS FAKE COIN CRAIG IS FAKE COIN CRAIG IS FAKE COIN CRAIG IS FAKE COIN CRAIG IS FAKE COIN CRAIG IS FAKE COIN CRAIG IS FAKE COIN CRAIG IS FAKE COIN CRAIG IS FAKE COIN CRAIG IS FAKE COIN CRAIG IS FAKE COIN CRAIG IS FAKE COIN CRAIG IS FAKE COIN CRAIG IS FAKE COIN CRAIG IS FAKE COIN </p>',1,582,'2014-10-02 05:51:02',657,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','','','',1,0,'','',1,3,'',0,'*',''),(187,7911,'Osama bin Laden\'s ghost and MajorStupidWhaleBoss','osama-bin-laden-s-ghost-and-majorstupidwhaleboss','','<p>the jig is over sell all your coins the jig is over sell all your coinsthe jig is over sell all your coinsthe jig is over sell all your coinsthe jig is over sell all your coinsthe jig is over sell all your coinsthe jig is over sell all your coinsthe jig is over sell all your coinsthe jig is over sell all your coinsthe jig is over sell all your coinsthe jig is over sell all your coinsthe jig is over sell all your coinsthe jig is over sell all your coinsthe jig is over sell all your coinsthe jig is over sell all your coinsthe jig is over sell all your coinsthe jig is over sell all your coinsthe jig is over sell all your coinsthe jig is over sell all your coinsthe jig is over sell all your coins</p>',1,582,'2014-10-02 05:51:02',657,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','','','',1,0,'','',1,8,'',0,'*',''),(188,7912,'See the dev has no urgency to get things done. He got paid already so hey,, whats the rush? This is the most unprofessional development I have ever seen. Looks like a 6th grade school project.  I have lost thousands of $$ on this lousy investment. Hey dev','see-the-dev-has-no-urgency-to-get-things-done-he-got-paid-already-so-hey-whats-the-rush-this-is-the-most-unprofessional-development-i-have-ever-seen-looks-like-a-6th-grade-school-project-i-have-lost-thousands-of-on-this-lousy-investment-hey-dev-you-enjoyi','','<p>See the dev has no urgency to get things done. He got paid already so hey,, whats the rush? This is the most unprofessional development I have ever seen. Looks like a 6th grade school project.  I have lost thousands of $$ on this lousy investment. Hey dev you enjoying the money? You better enjoy it. Youll never be trusted in the crypto world again. Don\'t spend all the money in one place.</p>',1,582,'2014-10-03 00:18:01',657,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','','','',1,0,'','',1,9,'',0,'*',''),(189,7913,'See the dev has no urgency to get things done. He got paid already so hey,, whats the rush? This is the most unprofessional development I have ever seen. Looks like a 6th grade school project.  I have lost thousands of $$ on this lousy investment. Hey dev','see-the-dev-has-no-urgency-to-get-things-done-he-got-paid-already-so-hey-whats-the-rush-this-is-the-most-unprofessional-development-i-have-ever-seen-looks-like-a-6th-grade-school-project-i-have-lost-thousands-of-on-this-lousy-investment-hey-dev-you-enjoyi','','<p>See the dev has no urgency to get things done. He got paid already so hey,, whats the rush? This is the most unprofessional development I have ever seen. Looks like a 6th grade school project.  I have lost thousands of $$ on this lousy investment. Hey dev you enjoying the money? You better enjoy it. Youll never be trusted in the crypto world again. Don\'t spend all the money in one place.</p>',1,582,'2014-10-03 00:18:01',657,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','','','',1,0,'','',1,5,'',0,'*',''),(190,7914,'DEV IS NO MAN ','dev-is-no-man','','<p>Few more words about me:\nI graduated from physical faculty at MSU (Moscow State University) in 2007. Since then I was working as lead analyst in Marketing research for Video International, then moved to work as a Project manager in Satellite System \"Gonets\". Up untill present time I`m working in another telecom company doing network designs for Yota LTE service provider, and some other communication-related designs. Married, have a son and expecting another child next January. If this ICO will reach a certain goal I will leave my full time job and dedicate 100% of my time to this project.</p>',1,582,'2014-10-03 00:18:01',657,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','','','',1,0,'','',1,8,'',0,'*',''),(191,7915,'WE THE INVESTORS SMELL SHIT CAUSED BY DEV','we-the-investors-smell-shit-caused-by-dev','','<p>WE THE INVESTORWE THE INVESTORS SMELL SHIT CAUSED BY DEVWE THE INVESTORS SMELL SHIT CAUSED BY DEVWE THE INVESTORS SMELL SHIT CAUSED BY DEVWE THE INVESTORS SMELL SHIT CAUSED BY DEVWE THE INVESTORS SMELL SHIT CAUSED BY DEVWE THE INVESTORS SMELL SHIT CAUSED BY DEVWE THE INVESTORS SMELL SHIT CAUSED BY DEVWE THE INVESTORS SMELL SHIT CAUSED BY DEVWE THE INVESTORS SMELL SHIT CAUSED BY DEVWE THE INVESTORS SMELL SHIT CAUSED BY DEVWE THE INVESTORS SMELL SHIT CAUSED BY DEVWE THE INVESTORS SMELL SHIT CAUSED BY DEVWE THE INVESTORS SMELL SHIT CAUSED BY DEVWE THE INVESTORS SMELL SHIT CAUSED BY DEVWE THE INVESTORS SMELL SHIT CAUSED BY DEVWE THE INVESTORS SMELL SHIT CAUSED BY DEVWE THE INVESTORS SMELL SHIT CAUSED BY DEVWE THE INVESTORS SMELL SHIT CAUSED BY DEVWE THE INVESTORS SMELL SHIT CAUSED BY DEVWE THE INVESTORS SMELL SHIT CAUSED BY DEVWE THE INVESTORS SMELL SHIT CAUSED BY DEVWE THE INVESTORS SMELL SHIT CAUSED BY DEVWE THE INVESTORS SMELL SHIT CAUSED BY DEVWE THE INVESTORS SMELL SHIT CAUSED BY DEVWE THE INVESTORS SMELL SHIT CAUSED BY DEVWE THE INVESTORS SMELL SHIT CAUSED BY DEVWE THE INVESTORS SMELL SHIT CAUSED BY DEVWE THE INVESTORS SMELL SHIT CAUSED BY DEVWE THE INVESTORS SMELL SHIT CAUSED BY DEVWE THE INVESTORS SMELL SHIT CAUSED BY DEV</p>',1,582,'2014-10-03 00:18:01',657,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','','','',1,0,'','',1,12,'',0,'*',''),(192,7916,'TRADE AT cryptsy.com','trade-at-cryptsy-com','','<p>\nWhat is Cryptsy:\n\n\nCryptsy is an Internet startup operated by Project Investors, Inc. focusing on the exchange of Crypto-Currency commonly known as “BitCoin” and it\'s derivatives. We currently service more than 90 different types of crypto-currency. \n\nThe Cryptsy.com exchange opened on May 20th, 2013 and since then has seen rapid growth in both customer base and trade volume. We currently have over 230,000 registered users with a volume of over 300k trades per day. \n\nCryptsy is based in Delray Beach, Florida, USA \n\n\nOur Mission:\n\n\nProvide a safe environment for users to trade crypto-currencies with other users in an efficient and easy to use manner. \n\n\nFuture Objectives:\n\n\nCryptsy will in the near future expand further by offering exchanges of fiat currency (USD) directly to crypto-currency, while also maintaining Full Compliance with global, national, and local regulations. \n\nCryptsy will expand its service offerings for merchants who want to easily accept BitCoin and other crypto-currency payments as an alternative payment method for their ecommerce sales. \n\nCryptsy will offer an escrow service for safe and direct user to user transactions. \n</p>',1,586,'2014-10-03 00:18:01',657,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','','','',1,0,'','',1,4,'',0,'*',''),(193,7917,'qqqqqqqqqqqqqqqq','qqqqqqqqqqqqqqqq','','<p>qqqqqqqqqqqqqqqqqqq</p>',1,582,'2014-10-03 00:18:01',657,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','','','',1,0,'','',1,5,'',0,'*','');
/*!40000 ALTER TABLE `new1_content` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `new1_content_frontpage`
--

DROP TABLE IF EXISTS `new1_content_frontpage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `new1_content_frontpage` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`content_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `new1_content_frontpage`
--

LOCK TABLES `new1_content_frontpage` WRITE;
/*!40000 ALTER TABLE `new1_content_frontpage` DISABLE KEYS */;
/*!40000 ALTER TABLE `new1_content_frontpage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `new1_content_rating`
--

DROP TABLE IF EXISTS `new1_content_rating`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `new1_content_rating` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `rating_sum` int(10) unsigned NOT NULL DEFAULT '0',
  `rating_count` int(10) unsigned NOT NULL DEFAULT '0',
  `lastip` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`content_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `new1_content_rating`
--

LOCK TABLES `new1_content_rating` WRITE;
/*!40000 ALTER TABLE `new1_content_rating` DISABLE KEYS */;
/*!40000 ALTER TABLE `new1_content_rating` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `new1_content_types`
--

DROP TABLE IF EXISTS `new1_content_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `new1_content_types` (
  `type_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type_title` varchar(255) NOT NULL DEFAULT '',
  `type_alias` varchar(255) NOT NULL DEFAULT '',
  `table` varchar(255) NOT NULL DEFAULT '',
  `rules` text NOT NULL,
  `field_mappings` text NOT NULL,
  `router` varchar(255) NOT NULL DEFAULT '',
  `content_history_options` varchar(5120) DEFAULT NULL COMMENT 'JSON string for com_contenthistory options',
  PRIMARY KEY (`type_id`),
  KEY `idx_alias` (`type_alias`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `new1_content_types`
--

LOCK TABLES `new1_content_types` WRITE;
/*!40000 ALTER TABLE `new1_content_types` DISABLE KEYS */;
INSERT INTO `new1_content_types` VALUES (1,'Article','com_content.article','{\"special\":{\"dbtable\":\"#__content\",\"key\":\"id\",\"type\":\"Content\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"state\",\"core_alias\":\"alias\",\"core_created_time\":\"created\",\"core_modified_time\":\"modified\",\"core_body\":\"introtext\", \"core_hits\":\"hits\",\"core_publish_up\":\"publish_up\",\"core_publish_down\":\"publish_down\",\"core_access\":\"access\", \"core_params\":\"attribs\", \"core_featured\":\"featured\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"images\", \"core_urls\":\"urls\", \"core_version\":\"version\", \"core_ordering\":\"ordering\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"catid\", \"core_xreference\":\"xreference\", \"asset_id\":\"asset_id\"}, \"special\":{\"fulltext\":\"fulltext\"}}','ContentHelperRoute::getArticleRoute','{\"formFile\":\"administrator\\/components\\/com_content\\/models\\/forms\\/article.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\"],\"ignoreChanges\":[\"modified_by\", \"modified\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\"],\"convertToInt\":[\"publish_up\", \"publish_down\", \"featured\", \"ordering\"],\"displayLookup\":[{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"created_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"} ]}'),(2,'Weblink','com_weblinks.weblink','{\"special\":{\"dbtable\":\"#__weblinks\",\"key\":\"id\",\"type\":\"Weblink\",\"prefix\":\"WeblinksTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"state\",\"core_alias\":\"alias\",\"core_created_time\":\"created\",\"core_modified_time\":\"modified\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"publish_up\",\"core_publish_down\":\"publish_down\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"featured\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"images\", \"core_urls\":\"urls\", \"core_version\":\"version\", \"core_ordering\":\"ordering\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"catid\", \"core_xreference\":\"xreference\", \"asset_id\":\"null\"}, \"special\":{}}','WeblinksHelperRoute::getWeblinkRoute','{\"formFile\":\"administrator\\/components\\/com_weblinks\\/models\\/forms\\/weblink.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\",\"featured\",\"images\"], \"ignoreChanges\":[\"modified_by\", \"modified\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\"], \"convertToInt\":[\"publish_up\", \"publish_down\", \"featured\", \"ordering\"], \"displayLookup\":[{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"created_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"} ]}'),(3,'Contact','com_contact.contact','{\"special\":{\"dbtable\":\"#__contact_details\",\"key\":\"id\",\"type\":\"Contact\",\"prefix\":\"ContactTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"name\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created\",\"core_modified_time\":\"modified\",\"core_body\":\"address\", \"core_hits\":\"hits\",\"core_publish_up\":\"publish_up\",\"core_publish_down\":\"publish_down\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"featured\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"image\", \"core_urls\":\"webpage\", \"core_version\":\"version\", \"core_ordering\":\"ordering\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"catid\", \"core_xreference\":\"xreference\", \"asset_id\":\"null\"}, \"special\":{\"con_position\":\"con_position\",\"suburb\":\"suburb\",\"state\":\"state\",\"country\":\"country\",\"postcode\":\"postcode\",\"telephone\":\"telephone\",\"fax\":\"fax\",\"misc\":\"misc\",\"email_to\":\"email_to\",\"default_con\":\"default_con\",\"user_id\":\"user_id\",\"mobile\":\"mobile\",\"sortname1\":\"sortname1\",\"sortname2\":\"sortname2\",\"sortname3\":\"sortname3\"}}','ContactHelperRoute::getContactRoute','{\"formFile\":\"administrator\\/components\\/com_contact\\/models\\/forms\\/contact.xml\",\"hideFields\":[\"default_con\",\"checked_out\",\"checked_out_time\",\"version\",\"xreference\"],\"ignoreChanges\":[\"modified_by\", \"modified\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\"],\"convertToInt\":[\"publish_up\", \"publish_down\", \"featured\", \"ordering\"], \"displayLookup\":[ {\"sourceColumn\":\"created_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"} ] }'),(4,'Newsfeed','com_newsfeeds.newsfeed','{\"special\":{\"dbtable\":\"#__newsfeeds\",\"key\":\"id\",\"type\":\"Newsfeed\",\"prefix\":\"NewsfeedsTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"name\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created\",\"core_modified_time\":\"modified\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"publish_up\",\"core_publish_down\":\"publish_down\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"featured\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"images\", \"core_urls\":\"link\", \"core_version\":\"version\", \"core_ordering\":\"ordering\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"catid\", \"core_xreference\":\"xreference\", \"asset_id\":\"null\"}, \"special\":{\"numarticles\":\"numarticles\",\"cache_time\":\"cache_time\",\"rtl\":\"rtl\"}}','NewsfeedsHelperRoute::getNewsfeedRoute','{\"formFile\":\"administrator\\/components\\/com_newsfeeds\\/models\\/forms\\/newsfeed.xml\",\"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\"],\"ignoreChanges\":[\"modified_by\", \"modified\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\"],\"convertToInt\":[\"publish_up\", \"publish_down\", \"featured\", \"ordering\"],\"displayLookup\":[{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"created_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"} ]}'),(5,'User','com_users.user','{\"special\":{\"dbtable\":\"#__users\",\"key\":\"id\",\"type\":\"User\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"name\",\"core_state\":\"null\",\"core_alias\":\"username\",\"core_created_time\":\"registerdate\",\"core_modified_time\":\"lastvisitDate\",\"core_body\":\"null\", \"core_hits\":\"null\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"access\":\"null\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"null\", \"core_language\":\"null\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"null\", \"core_ordering\":\"null\", \"core_metakey\":\"null\", \"core_metadesc\":\"null\", \"core_catid\":\"null\", \"core_xreference\":\"null\", \"asset_id\":\"null\"}, \"special\":{}}','UsersHelperRoute::getUserRoute',''),(6,'Article Category','com_content.category','{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"Category\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"core_xreference\":\"null\", \"asset_id\":\"asset_id\"}, \"special\":{\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}','ContentHelperRoute::getCategoryRoute','{\"formFile\":\"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"],\"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}'),(7,'Contact Category','com_contact.category','{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"Category\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"core_xreference\":\"null\", \"asset_id\":\"asset_id\"}, \"special\":{\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}','ContactHelperRoute::getCategoryRoute','{\"formFile\":\"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"],\"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}'),(8,'Newsfeeds Category','com_newsfeeds.category','{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"Category\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"core_xreference\":\"null\", \"asset_id\":\"asset_id\"}, \"special\":{\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}','NewsfeedsHelperRoute::getCategoryRoute','{\"formFile\":\"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"],\"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}'),(9,'Weblinks Category','com_weblinks.category','{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"Category\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"core_xreference\":\"null\", \"asset_id\":\"asset_id\"}, \"special\":{\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}','WeblinksHelperRoute::getCategoryRoute','{\"formFile\":\"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"],\"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}'),(10,'Tag','com_tags.tag','{\"special\":{\"dbtable\":\"#__tags\",\"key\":\"tag_id\",\"type\":\"Tag\",\"prefix\":\"TagsTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"featured\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"images\", \"core_urls\":\"urls\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"null\", \"core_xreference\":\"null\", \"asset_id\":\"null\"}, \"special\":{\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\"}}','TagsHelperRoute::getTagRoute','{\"formFile\":\"administrator\\/components\\/com_tags\\/models\\/forms\\/tag.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\",\"version\", \"lft\", \"rgt\", \"level\", \"path\", \"urls\", \"publish_up\", \"publish_down\"],\"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"],\"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}, {\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}]}'),(11,'Banner','com_banners.banner','{\"special\":{\"dbtable\":\"#__banners\",\"key\":\"id\",\"type\":\"Banner\",\"prefix\":\"BannersTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"name\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created\",\"core_modified_time\":\"modified\",\"core_body\":\"description\", \"core_hits\":\"null\",\"core_publish_up\":\"publish_up\",\"core_publish_down\":\"publish_down\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"images\", \"core_urls\":\"link\", \"core_version\":\"version\", \"core_ordering\":\"ordering\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"catid\", \"core_xreference\":\"null\", \"asset_id\":\"null\"}, \"special\":{\"imptotal\":\"imptotal\", \"impmade\":\"impmade\", \"clicks\":\"clicks\", \"clickurl\":\"clickurl\", \"custombannercode\":\"custombannercode\", \"cid\":\"cid\", \"purchase_type\":\"purchase_type\", \"track_impressions\":\"track_impressions\", \"track_clicks\":\"track_clicks\"}}','','{\"formFile\":\"administrator\\/components\\/com_banners\\/models\\/forms\\/banner.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\",\"version\", \"reset\"],\"ignoreChanges\":[\"modified_by\", \"modified\", \"checked_out\", \"checked_out_time\", \"version\", \"imptotal\", \"impmade\", \"reset\"], \"convertToInt\":[\"publish_up\", \"publish_down\", \"ordering\"], \"displayLookup\":[{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}, {\"sourceColumn\":\"cid\",\"targetTable\":\"#__banner_clients\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"created_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"modified_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"} ]}'),(12,'Banners Category','com_banners.category','{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"Category\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"core_xreference\":\"null\", \"asset_id\":\"asset_id\"}, \"special\": {\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}','','{\"formFile\":\"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"], \"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}'),(13,'Banner Client','com_banners.client','{\"special\":{\"dbtable\":\"#__banner_clients\",\"key\":\"id\",\"type\":\"Client\",\"prefix\":\"BannersTable\"}}','','','','{\"formFile\":\"administrator\\/components\\/com_banners\\/models\\/forms\\/client.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\"], \"ignoreChanges\":[\"checked_out\", \"checked_out_time\"], \"convertToInt\":[], \"displayLookup\":[]}'),(14,'User Notes','com_users.note','{\"special\":{\"dbtable\":\"#__user_notes\",\"key\":\"id\",\"type\":\"Note\",\"prefix\":\"UsersTable\"}}','','','','{\"formFile\":\"administrator\\/components\\/com_users\\/models\\/forms\\/note.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\", \"publish_up\", \"publish_down\"],\"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\"], \"convertToInt\":[\"publish_up\", \"publish_down\"],\"displayLookup\":[{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}, {\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}]}'),(15,'User Notes Category','com_users.category','{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"Category\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"core_xreference\":\"null\", \"asset_id\":\"asset_id\"}, \"special\":{\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}','','{\"formFile\":\"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"], \"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}');
/*!40000 ALTER TABLE `new1_content_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `new1_contentitem_tag_map`
--

DROP TABLE IF EXISTS `new1_contentitem_tag_map`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `new1_contentitem_tag_map` (
  `type_alias` varchar(255) NOT NULL DEFAULT '',
  `core_content_id` int(10) unsigned NOT NULL COMMENT 'PK from the core content table',
  `content_item_id` int(11) NOT NULL COMMENT 'PK from the content type table',
  `tag_id` int(10) unsigned NOT NULL COMMENT 'PK from the tag table',
  `tag_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Date of most recent save for this tag-item',
  `type_id` mediumint(8) NOT NULL COMMENT 'PK from the content_type table',
  UNIQUE KEY `uc_ItemnameTagid` (`type_id`,`content_item_id`,`tag_id`),
  KEY `idx_tag_type` (`tag_id`,`type_id`),
  KEY `idx_date_id` (`tag_date`,`tag_id`),
  KEY `idx_tag` (`tag_id`),
  KEY `idx_type` (`type_id`),
  KEY `idx_core_content_id` (`core_content_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Maps items from content tables to tags';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `new1_contentitem_tag_map`
--

LOCK TABLES `new1_contentitem_tag_map` WRITE;
/*!40000 ALTER TABLE `new1_contentitem_tag_map` DISABLE KEYS */;
/*!40000 ALTER TABLE `new1_contentitem_tag_map` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `new1_core_log_searches`
--

DROP TABLE IF EXISTS `new1_core_log_searches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `new1_core_log_searches` (
  `search_term` varchar(128) NOT NULL DEFAULT '',
  `hits` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `new1_core_log_searches`
--

LOCK TABLES `new1_core_log_searches` WRITE;
/*!40000 ALTER TABLE `new1_core_log_searches` DISABLE KEYS */;
/*!40000 ALTER TABLE `new1_core_log_searches` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `new1_extensions`
--

DROP TABLE IF EXISTS `new1_extensions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `new1_extensions` (
  `extension_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `type` varchar(20) NOT NULL,
  `element` varchar(100) NOT NULL,
  `folder` varchar(100) NOT NULL,
  `client_id` tinyint(3) NOT NULL,
  `enabled` tinyint(3) NOT NULL DEFAULT '1',
  `access` int(10) unsigned NOT NULL DEFAULT '1',
  `protected` tinyint(3) NOT NULL DEFAULT '0',
  `manifest_cache` text NOT NULL,
  `params` text NOT NULL,
  `custom_data` text NOT NULL,
  `system_data` text NOT NULL,
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) DEFAULT '0',
  `state` int(11) DEFAULT '0',
  PRIMARY KEY (`extension_id`),
  KEY `element_clientid` (`element`,`client_id`),
  KEY `element_folder_clientid` (`element`,`folder`,`client_id`),
  KEY `extension` (`type`,`element`,`folder`,`client_id`)
) ENGINE=InnoDB AUTO_INCREMENT=719 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `new1_extensions`
--

LOCK TABLES `new1_extensions` WRITE;
/*!40000 ALTER TABLE `new1_extensions` DISABLE KEYS */;
INSERT INTO `new1_extensions` VALUES (1,'com_mailto','component','com_mailto','',0,1,1,1,'{\"name\":\"com_mailto\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_MAILTO_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(2,'com_wrapper','component','com_wrapper','',0,1,1,1,'{\"name\":\"com_wrapper\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\n\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_WRAPPER_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(3,'com_admin','component','com_admin','',1,1,1,1,'{\"name\":\"com_admin\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\n\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_ADMIN_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(4,'com_banners','component','com_banners','',1,1,1,0,'{\"name\":\"com_banners\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\n\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_BANNERS_XML_DESCRIPTION\",\"group\":\"\"}','{\"purchase_type\":\"3\",\"track_impressions\":\"0\",\"track_clicks\":\"0\",\"metakey_prefix\":\"\",\"save_history\":\"1\",\"history_limit\":10}','','',0,'0000-00-00 00:00:00',0,0),(5,'com_cache','component','com_cache','',1,1,1,1,'{\"name\":\"com_cache\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_CACHE_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(6,'com_categories','component','com_categories','',1,1,1,1,'{\"name\":\"com_categories\",\"type\":\"component\",\"creationDate\":\"December 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_CATEGORIES_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(7,'com_checkin','component','com_checkin','',1,1,1,1,'{\"name\":\"com_checkin\",\"type\":\"component\",\"creationDate\":\"Unknown\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2008 Open Source Matters. All rights reserved.\\n\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_CHECKIN_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(8,'com_contact','component','com_contact','',1,1,1,0,'{\"name\":\"com_contact\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\n\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_CONTACT_XML_DESCRIPTION\",\"group\":\"\"}','{\"show_contact_category\":\"hide\",\"save_history\":\"1\",\"history_limit\":10,\"show_contact_list\":\"0\",\"presentation_style\":\"sliders\",\"show_name\":\"1\",\"show_position\":\"1\",\"show_email\":\"0\",\"show_street_address\":\"1\",\"show_suburb\":\"1\",\"show_state\":\"1\",\"show_postcode\":\"1\",\"show_country\":\"1\",\"show_telephone\":\"1\",\"show_mobile\":\"1\",\"show_fax\":\"1\",\"show_webpage\":\"1\",\"show_misc\":\"1\",\"show_image\":\"1\",\"image\":\"\",\"allow_vcard\":\"0\",\"show_articles\":\"0\",\"show_profile\":\"0\",\"show_links\":\"0\",\"linka_name\":\"\",\"linkb_name\":\"\",\"linkc_name\":\"\",\"linkd_name\":\"\",\"linke_name\":\"\",\"contact_icons\":\"0\",\"icon_address\":\"\",\"icon_email\":\"\",\"icon_telephone\":\"\",\"icon_mobile\":\"\",\"icon_fax\":\"\",\"icon_misc\":\"\",\"show_headings\":\"1\",\"show_position_headings\":\"1\",\"show_email_headings\":\"0\",\"show_telephone_headings\":\"1\",\"show_mobile_headings\":\"0\",\"show_fax_headings\":\"0\",\"allow_vcard_headings\":\"0\",\"show_suburb_headings\":\"1\",\"show_state_headings\":\"1\",\"show_country_headings\":\"1\",\"show_email_form\":\"1\",\"show_email_copy\":\"1\",\"banned_email\":\"\",\"banned_subject\":\"\",\"banned_text\":\"\",\"validate_session\":\"1\",\"custom_reply\":\"0\",\"redirect\":\"\",\"show_category_crumb\":\"0\",\"metakey\":\"\",\"metadesc\":\"\",\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}','','',0,'0000-00-00 00:00:00',0,0),(9,'com_cpanel','component','com_cpanel','',1,1,1,1,'{\"name\":\"com_cpanel\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_CPANEL_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(10,'com_installer','component','com_installer','',1,1,1,1,'{\"name\":\"com_installer\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_INSTALLER_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(11,'com_languages','component','com_languages','',1,1,1,1,'{\"name\":\"com_languages\",\"type\":\"component\",\"creationDate\":\"2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\n\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_LANGUAGES_XML_DESCRIPTION\",\"group\":\"\"}','{\"administrator\":\"ru-RU\",\"site\":\"en-GB\"}','','',0,'0000-00-00 00:00:00',0,0),(12,'com_login','component','com_login','',1,1,1,1,'{\"name\":\"com_login\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_LOGIN_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(13,'com_media','component','com_media','',1,1,0,1,'{\"name\":\"com_media\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_MEDIA_XML_DESCRIPTION\",\"group\":\"\"}','{\"upload_extensions\":\"bmp,csv,doc,gif,ico,jpg,jpeg,odg,odp,ods,odt,pdf,png,ppt,swf,txt,xcf,xls,BMP,CSV,DOC,GIF,ICO,JPG,JPEG,ODG,ODP,ODS,ODT,PDF,PNG,PPT,SWF,TXT,XCF,XLS\",\"upload_maxsize\":\"10\",\"file_path\":\"images\",\"image_path\":\"images\",\"restrict_uploads\":\"1\",\"allowed_media_usergroup\":\"3\",\"check_mime\":\"1\",\"image_extensions\":\"bmp,gif,jpg,png\",\"ignore_extensions\":\"\",\"upload_mime\":\"image\\/jpeg,image\\/gif,image\\/png,image\\/bmp,application\\/x-shockwave-flash,application\\/msword,application\\/excel,application\\/pdf,application\\/powerpoint,text\\/plain,application\\/x-zip\",\"upload_mime_illegal\":\"text\\/html\"}','','',0,'0000-00-00 00:00:00',0,0),(14,'com_menus','component','com_menus','',1,1,1,1,'{\"name\":\"com_menus\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_MENUS_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(15,'com_messages','component','com_messages','',1,1,1,1,'{\"name\":\"com_messages\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_MESSAGES_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(16,'com_modules','component','com_modules','',1,1,1,1,'{\"name\":\"com_modules\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_MODULES_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(17,'com_newsfeeds','component','com_newsfeeds','',1,1,1,0,'{\"name\":\"com_newsfeeds\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_NEWSFEEDS_XML_DESCRIPTION\",\"group\":\"\"}','{\"newsfeed_layout\":\"_:default\",\"save_history\":\"1\",\"history_limit\":5,\"show_feed_image\":\"1\",\"show_feed_description\":\"1\",\"show_item_description\":\"1\",\"feed_character_count\":\"0\",\"feed_display_order\":\"des\",\"float_first\":\"right\",\"float_second\":\"right\",\"show_tags\":\"1\",\"category_layout\":\"_:default\",\"show_category_title\":\"1\",\"show_description\":\"1\",\"show_description_image\":\"1\",\"maxLevel\":\"-1\",\"show_empty_categories\":\"0\",\"show_subcat_desc\":\"1\",\"show_cat_items\":\"1\",\"show_cat_tags\":\"1\",\"show_base_description\":\"1\",\"maxLevelcat\":\"-1\",\"show_empty_categories_cat\":\"0\",\"show_subcat_desc_cat\":\"1\",\"show_cat_items_cat\":\"1\",\"filter_field\":\"1\",\"show_pagination_limit\":\"1\",\"show_headings\":\"1\",\"show_articles\":\"0\",\"show_link\":\"1\",\"show_pagination\":\"1\",\"show_pagination_results\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(18,'com_plugins','component','com_plugins','',1,1,1,1,'{\"name\":\"com_plugins\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_PLUGINS_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(19,'com_search','component','com_search','',1,1,1,0,'{\"name\":\"com_search\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\n\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_SEARCH_XML_DESCRIPTION\",\"group\":\"\"}','{\"enabled\":\"0\",\"show_date\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(20,'com_templates','component','com_templates','',1,1,1,1,'{\"name\":\"com_templates\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_TEMPLATES_XML_DESCRIPTION\",\"group\":\"\"}','{\"template_positions_display\":\"1\",\"upload_limit\":\"2\",\"image_formats\":\"gif,bmp,jpg,jpeg,png\",\"source_formats\":\"txt,less,ini,xml,js,php,css\",\"font_formats\":\"woff,ttf,otf\",\"compressed_formats\":\"zip\"}','','',0,'0000-00-00 00:00:00',0,0),(21,'com_weblinks','component','com_weblinks','',1,1,1,0,'{\"name\":\"com_weblinks\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\n\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_WEBLINKS_XML_DESCRIPTION\",\"group\":\"\"}','{\"target\":\"0\",\"save_history\":\"1\",\"history_limit\":5,\"count_clicks\":\"1\",\"icons\":1,\"link_icons\":\"\",\"float_first\":\"right\",\"float_second\":\"right\",\"show_tags\":\"1\",\"category_layout\":\"_:default\",\"show_category_title\":\"1\",\"show_description\":\"1\",\"show_description_image\":\"1\",\"maxLevel\":\"-1\",\"show_empty_categories\":\"0\",\"show_subcat_desc\":\"1\",\"show_cat_num_links\":\"1\",\"show_cat_tags\":\"1\",\"show_base_description\":\"1\",\"maxLevelcat\":\"-1\",\"show_empty_categories_cat\":\"0\",\"show_subcat_desc_cat\":\"1\",\"show_cat_num_links_cat\":\"1\",\"filter_field\":\"1\",\"show_pagination_limit\":\"1\",\"show_headings\":\"0\",\"show_link_description\":\"1\",\"show_link_hits\":\"1\",\"show_pagination\":\"2\",\"show_pagination_results\":\"1\",\"show_feed_link\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(22,'com_content','component','com_content','',1,1,0,1,'{\"name\":\"com_content\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_CONTENT_XML_DESCRIPTION\",\"group\":\"\"}','{\"article_layout\":\"_:default\",\"show_title\":\"1\",\"link_titles\":\"1\",\"show_intro\":\"1\",\"info_block_position\":\"0\",\"show_category\":\"0\",\"link_category\":\"1\",\"show_parent_category\":\"0\",\"link_parent_category\":\"0\",\"show_author\":\"0\",\"link_author\":\"0\",\"show_create_date\":\"0\",\"show_modify_date\":\"0\",\"show_publish_date\":\"0\",\"show_item_navigation\":\"1\",\"show_vote\":\"0\",\"show_readmore\":\"1\",\"show_readmore_title\":\"1\",\"readmore_limit\":\"100\",\"show_tags\":\"1\",\"show_icons\":\"0\",\"show_print_icon\":\"0\",\"show_email_icon\":\"0\",\"show_hits\":\"0\",\"show_noauth\":\"0\",\"urls_position\":\"0\",\"show_publishing_options\":\"1\",\"show_article_options\":\"1\",\"save_history\":\"1\",\"history_limit\":10,\"show_urls_images_frontend\":\"0\",\"show_urls_images_backend\":\"1\",\"targeta\":0,\"targetb\":0,\"targetc\":0,\"float_intro\":\"left\",\"float_fulltext\":\"left\",\"category_layout\":\"_:blog\",\"show_category_heading_title_text\":\"1\",\"show_category_title\":\"0\",\"show_description\":\"0\",\"show_description_image\":\"0\",\"maxLevel\":\"1\",\"show_empty_categories\":\"0\",\"show_no_articles\":\"1\",\"show_subcat_desc\":\"1\",\"show_cat_num_articles\":\"0\",\"show_cat_tags\":\"1\",\"show_base_description\":\"1\",\"maxLevelcat\":\"-1\",\"show_empty_categories_cat\":\"0\",\"show_subcat_desc_cat\":\"1\",\"show_cat_num_articles_cat\":\"1\",\"num_leading_articles\":\"1\",\"num_intro_articles\":\"4\",\"num_columns\":\"2\",\"num_links\":\"4\",\"multi_column_order\":\"0\",\"show_subcategory_content\":\"0\",\"show_pagination_limit\":\"1\",\"filter_field\":\"hide\",\"show_headings\":\"1\",\"list_show_date\":\"0\",\"date_format\":\"\",\"list_show_hits\":\"1\",\"list_show_author\":\"1\",\"orderby_pri\":\"order\",\"orderby_sec\":\"rdate\",\"order_date\":\"published\",\"show_pagination\":\"2\",\"show_pagination_results\":\"1\",\"show_feed_link\":\"1\",\"feed_summary\":\"0\",\"feed_show_readmore\":\"0\"}','','',0,'0000-00-00 00:00:00',0,0),(23,'com_config','component','com_config','',1,1,0,1,'{\"name\":\"com_config\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_CONFIG_XML_DESCRIPTION\",\"group\":\"\"}','{\"filters\":{\"1\":{\"filter_type\":\"NH\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"9\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"6\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"7\":{\"filter_type\":\"NONE\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"2\":{\"filter_type\":\"NH\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"3\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"4\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"5\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"8\":{\"filter_type\":\"NONE\",\"filter_tags\":\"\",\"filter_attributes\":\"\"}}}','','',0,'0000-00-00 00:00:00',0,0),(24,'com_redirect','component','com_redirect','',1,1,0,1,'{\"name\":\"com_redirect\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_REDIRECT_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(25,'com_users','component','com_users','',1,1,0,1,'{\"name\":\"com_users\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_USERS_XML_DESCRIPTION\",\"group\":\"\"}','{\"allowUserRegistration\":\"1\",\"new_usertype\":\"2\",\"guest_usergroup\":\"9\",\"sendpassword\":\"1\",\"useractivation\":\"1\",\"mail_to_admin\":\"0\",\"captcha\":\"\",\"frontend_userparams\":\"1\",\"site_language\":\"0\",\"change_login_name\":\"0\",\"reset_count\":\"10\",\"reset_time\":\"1\",\"minimum_length\":\"4\",\"minimum_integers\":\"0\",\"minimum_symbols\":\"0\",\"minimum_uppercase\":\"0\",\"save_history\":\"1\",\"history_limit\":5,\"mailSubjectPrefix\":\"\",\"mailBodySuffix\":\"\"}','','',0,'0000-00-00 00:00:00',0,0),(27,'com_finder','component','com_finder','',1,1,0,0,'{\"name\":\"com_finder\",\"type\":\"component\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_FINDER_XML_DESCRIPTION\",\"group\":\"\"}','{\"show_description\":\"1\",\"description_length\":255,\"allow_empty_query\":\"0\",\"show_url\":\"1\",\"show_advanced\":\"1\",\"expand_advanced\":\"0\",\"show_date_filters\":\"0\",\"highlight_terms\":\"1\",\"opensearch_name\":\"\",\"opensearch_description\":\"\",\"batch_size\":\"50\",\"memory_table_limit\":30000,\"title_multiplier\":\"1.7\",\"text_multiplier\":\"0.7\",\"meta_multiplier\":\"1.2\",\"path_multiplier\":\"2.0\",\"misc_multiplier\":\"0.3\",\"stemmer\":\"snowball\"}','','',0,'0000-00-00 00:00:00',0,0),(28,'com_joomlaupdate','component','com_joomlaupdate','',1,1,0,1,'{\"name\":\"com_joomlaupdate\",\"type\":\"component\",\"creationDate\":\"February 2012\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_JOOMLAUPDATE_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(29,'com_tags','component','com_tags','',1,1,1,1,'{\"name\":\"com_tags\",\"type\":\"component\",\"creationDate\":\"December 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.1.0\",\"description\":\"COM_TAGS_XML_DESCRIPTION\",\"group\":\"\"}','{\"tag_layout\":\"_:default\",\"save_history\":\"1\",\"history_limit\":5,\"show_tag_title\":\"0\",\"tag_list_show_tag_image\":\"0\",\"tag_list_show_tag_description\":\"0\",\"tag_list_image\":\"\",\"show_tag_num_items\":\"0\",\"tag_list_orderby\":\"title\",\"tag_list_orderby_direction\":\"ASC\",\"show_headings\":\"0\",\"tag_list_show_date\":\"0\",\"tag_list_show_item_image\":\"0\",\"tag_list_show_item_description\":\"0\",\"tag_list_item_maximum_characters\":0,\"return_any_or_all\":\"1\",\"include_children\":\"0\",\"maximum\":200,\"tag_list_language_filter\":\"all\",\"tags_layout\":\"_:default\",\"all_tags_orderby\":\"title\",\"all_tags_orderby_direction\":\"ASC\",\"all_tags_show_tag_image\":\"0\",\"all_tags_show_tag_descripion\":\"0\",\"all_tags_tag_maximum_characters\":20,\"all_tags_show_tag_hits\":\"0\",\"filter_field\":\"1\",\"show_pagination_limit\":\"1\",\"show_pagination\":\"2\",\"show_pagination_results\":\"1\",\"tag_field_ajax_mode\":\"1\",\"show_feed_link\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(30,'com_contenthistory','component','com_contenthistory','',1,1,1,0,'{\"name\":\"com_contenthistory\",\"type\":\"component\",\"creationDate\":\"May 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.0\",\"description\":\"COM_CONTENTHISTORY_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(31,'com_ajax','component','com_ajax','',1,1,1,0,'{\"name\":\"com_ajax\",\"type\":\"component\",\"creationDate\":\"August 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.0\",\"description\":\"COM_AJAX_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(32,'com_postinstall','component','com_postinstall','',1,1,1,1,'{\"name\":\"com_postinstall\",\"type\":\"component\",\"creationDate\":\"September 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.0\",\"description\":\"COM_POSTINSTALL_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(100,'PHPMailer','library','phpmailer','',0,1,1,1,'{\"name\":\"PHPMailer\",\"type\":\"library\",\"creationDate\":\"2001\",\"author\":\"PHPMailer\",\"copyright\":\"(c) 2001-2003, Brent R. Matzelle, (c) 2004-2009, Andy Prevost. All Rights Reserved., (c) 2010-2013, Jim Jagielski. All Rights Reserved.\",\"authorEmail\":\"jimjag@gmail.com\",\"authorUrl\":\"https:\\/\\/github.com\\/PHPMailer\\/PHPMailer\",\"version\":\"5.2.6\",\"description\":\"LIB_PHPMAILER_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(101,'SimplePie','library','simplepie','',0,1,1,1,'{\"name\":\"SimplePie\",\"type\":\"library\",\"creationDate\":\"2004\",\"author\":\"SimplePie\",\"copyright\":\"Copyright (c) 2004-2009, Ryan Parman and Geoffrey Sneddon\",\"authorEmail\":\"\",\"authorUrl\":\"http:\\/\\/simplepie.org\\/\",\"version\":\"1.2\",\"description\":\"LIB_SIMPLEPIE_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(102,'phputf8','library','phputf8','',0,1,1,1,'{\"name\":\"phputf8\",\"type\":\"library\",\"creationDate\":\"2006\",\"author\":\"Harry Fuecks\",\"copyright\":\"Copyright various authors\",\"authorEmail\":\"hfuecks@gmail.com\",\"authorUrl\":\"http:\\/\\/sourceforge.net\\/projects\\/phputf8\",\"version\":\"0.5\",\"description\":\"LIB_PHPUTF8_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(103,'Joomla! Platform','library','joomla','',0,1,1,1,'{\"name\":\"Joomla! Platform\",\"type\":\"library\",\"creationDate\":\"2008\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"http:\\/\\/www.joomla.org\",\"version\":\"13.1\",\"description\":\"LIB_JOOMLA_XML_DESCRIPTION\",\"group\":\"\"}','{\"mediaversion\":\"b037f6775b16a96188fe4c091283a153\"}','','',0,'0000-00-00 00:00:00',0,0),(104,'IDNA Convert','library','idna_convert','',0,1,1,1,'{\"name\":\"IDNA Convert\",\"type\":\"library\",\"creationDate\":\"2004\",\"author\":\"phlyLabs\",\"copyright\":\"2004-2011 phlyLabs Berlin, http:\\/\\/phlylabs.de\",\"authorEmail\":\"phlymail@phlylabs.de\",\"authorUrl\":\"http:\\/\\/phlylabs.de\",\"version\":\"0.8.0\",\"description\":\"LIB_IDNA_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(105,'FOF','library','fof','',0,1,1,1,'{\"name\":\"FOF\",\"type\":\"library\",\"creationDate\":\"2014-03-09 12:54:48\",\"author\":\"Nicholas K. Dionysopoulos \\/ Akeeba Ltd\",\"copyright\":\"(C)2011-2014 Nicholas K. Dionysopoulos\",\"authorEmail\":\"nicholas@akeebabackup.com\",\"authorUrl\":\"https:\\/\\/www.akeebabackup.com\",\"version\":\"2.2.1\",\"description\":\"LIB_FOF_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(106,'PHPass','library','phpass','',0,1,1,1,'{\"name\":\"PHPass\",\"type\":\"library\",\"creationDate\":\"2004-2006\",\"author\":\"Solar Designer\",\"copyright\":\"\",\"authorEmail\":\"solar@openwall.com\",\"authorUrl\":\"http:\\/\\/www.openwall.com\\/phpass\\/\",\"version\":\"0.3\",\"description\":\"LIB_PHPASS_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(200,'mod_articles_archive','module','mod_articles_archive','',0,1,1,0,'{\"name\":\"mod_articles_archive\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters.\\n\\t\\tAll rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_ARTICLES_ARCHIVE_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(201,'mod_articles_latest','module','mod_articles_latest','',0,1,1,0,'{\"name\":\"mod_articles_latest\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_LATEST_NEWS_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(202,'mod_articles_popular','module','mod_articles_popular','',0,1,1,0,'{\"name\":\"mod_articles_popular\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_POPULAR_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(203,'mod_banners','module','mod_banners','',0,1,1,0,'{\"name\":\"mod_banners\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_BANNERS_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(204,'mod_breadcrumbs','module','mod_breadcrumbs','',0,1,1,1,'{\"name\":\"mod_breadcrumbs\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_BREADCRUMBS_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(205,'mod_custom','module','mod_custom','',0,1,1,1,'{\"name\":\"mod_custom\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_CUSTOM_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(206,'mod_feed','module','mod_feed','',0,1,1,0,'{\"name\":\"mod_feed\",\"type\":\"module\",\"creationDate\":\"July 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_FEED_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(207,'mod_footer','module','mod_footer','',0,1,1,0,'{\"name\":\"mod_footer\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_FOOTER_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(208,'mod_login','module','mod_login','',0,1,1,1,'{\"name\":\"mod_login\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_LOGIN_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(209,'mod_menu','module','mod_menu','',0,1,1,1,'{\"name\":\"mod_menu\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_MENU_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(210,'mod_articles_news','module','mod_articles_news','',0,1,1,0,'{\"name\":\"mod_articles_news\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_ARTICLES_NEWS_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(211,'mod_random_image','module','mod_random_image','',0,1,1,0,'{\"name\":\"mod_random_image\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_RANDOM_IMAGE_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(212,'mod_related_items','module','mod_related_items','',0,1,1,0,'{\"name\":\"mod_related_items\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_RELATED_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(213,'mod_search','module','mod_search','',0,1,1,0,'{\"name\":\"mod_search\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_SEARCH_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(214,'mod_stats','module','mod_stats','',0,1,1,0,'{\"name\":\"mod_stats\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_STATS_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(215,'mod_syndicate','module','mod_syndicate','',0,1,1,1,'{\"name\":\"mod_syndicate\",\"type\":\"module\",\"creationDate\":\"May 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_SYNDICATE_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(216,'mod_users_latest','module','mod_users_latest','',0,1,1,0,'{\"name\":\"mod_users_latest\",\"type\":\"module\",\"creationDate\":\"December 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_USERS_LATEST_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(217,'mod_weblinks','module','mod_weblinks','',0,1,1,0,'{\"name\":\"mod_weblinks\",\"type\":\"module\",\"creationDate\":\"July 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_WEBLINKS_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(218,'mod_whosonline','module','mod_whosonline','',0,1,1,0,'{\"name\":\"mod_whosonline\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_WHOSONLINE_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(219,'mod_wrapper','module','mod_wrapper','',0,1,1,0,'{\"name\":\"mod_wrapper\",\"type\":\"module\",\"creationDate\":\"October 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_WRAPPER_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(220,'mod_articles_category','module','mod_articles_category','',0,1,1,0,'{\"name\":\"mod_articles_category\",\"type\":\"module\",\"creationDate\":\"February 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_ARTICLES_CATEGORY_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(221,'mod_articles_categories','module','mod_articles_categories','',0,1,1,0,'{\"name\":\"mod_articles_categories\",\"type\":\"module\",\"creationDate\":\"February 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_ARTICLES_CATEGORIES_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(222,'mod_languages','module','mod_languages','',0,1,1,1,'{\"name\":\"mod_languages\",\"type\":\"module\",\"creationDate\":\"February 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_LANGUAGES_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(223,'mod_finder','module','mod_finder','',0,1,0,0,'{\"name\":\"mod_finder\",\"type\":\"module\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_FINDER_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(300,'mod_custom','module','mod_custom','',1,1,1,1,'{\"name\":\"mod_custom\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_CUSTOM_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(301,'mod_feed','module','mod_feed','',1,1,1,0,'{\"name\":\"mod_feed\",\"type\":\"module\",\"creationDate\":\"July 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_FEED_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(302,'mod_latest','module','mod_latest','',1,1,1,0,'{\"name\":\"mod_latest\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_LATEST_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(303,'mod_logged','module','mod_logged','',1,1,1,0,'{\"name\":\"mod_logged\",\"type\":\"module\",\"creationDate\":\"January 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_LOGGED_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(304,'mod_login','module','mod_login','',1,1,1,1,'{\"name\":\"mod_login\",\"type\":\"module\",\"creationDate\":\"March 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_LOGIN_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(305,'mod_menu','module','mod_menu','',1,1,1,0,'{\"name\":\"mod_menu\",\"type\":\"module\",\"creationDate\":\"March 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_MENU_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(307,'mod_popular','module','mod_popular','',1,1,1,0,'{\"name\":\"mod_popular\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_POPULAR_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(308,'mod_quickicon','module','mod_quickicon','',1,1,1,1,'{\"name\":\"mod_quickicon\",\"type\":\"module\",\"creationDate\":\"Nov 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_QUICKICON_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(309,'mod_status','module','mod_status','',1,1,1,0,'{\"name\":\"mod_status\",\"type\":\"module\",\"creationDate\":\"Feb 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_STATUS_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(310,'mod_submenu','module','mod_submenu','',1,1,1,0,'{\"name\":\"mod_submenu\",\"type\":\"module\",\"creationDate\":\"Feb 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_SUBMENU_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(311,'mod_title','module','mod_title','',1,1,1,0,'{\"name\":\"mod_title\",\"type\":\"module\",\"creationDate\":\"Nov 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_TITLE_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(312,'mod_toolbar','module','mod_toolbar','',1,1,1,1,'{\"name\":\"mod_toolbar\",\"type\":\"module\",\"creationDate\":\"Nov 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_TOOLBAR_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(313,'mod_multilangstatus','module','mod_multilangstatus','',1,1,1,0,'{\"name\":\"mod_multilangstatus\",\"type\":\"module\",\"creationDate\":\"September 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_MULTILANGSTATUS_XML_DESCRIPTION\",\"group\":\"\"}','{\"cache\":\"0\"}','','',0,'0000-00-00 00:00:00',0,0),(314,'mod_version','module','mod_version','',1,1,1,0,'{\"name\":\"mod_version\",\"type\":\"module\",\"creationDate\":\"January 2012\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_VERSION_XML_DESCRIPTION\",\"group\":\"\"}','{\"format\":\"short\",\"product\":\"1\",\"cache\":\"0\"}','','',0,'0000-00-00 00:00:00',0,0),(315,'mod_stats_admin','module','mod_stats_admin','',1,1,1,0,'{\"name\":\"mod_stats_admin\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_STATS_XML_DESCRIPTION\",\"group\":\"\"}','{\"serverinfo\":\"0\",\"siteinfo\":\"0\",\"counter\":\"0\",\"increase\":\"0\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\"}','','',0,'0000-00-00 00:00:00',0,0),(316,'mod_tags_popular','module','mod_tags_popular','',0,1,1,0,'{\"name\":\"mod_tags_popular\",\"type\":\"module\",\"creationDate\":\"January 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.1.0\",\"description\":\"MOD_TAGS_POPULAR_XML_DESCRIPTION\",\"group\":\"\"}','{\"maximum\":\"5\",\"timeframe\":\"alltime\",\"owncache\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(317,'mod_tags_similar','module','mod_tags_similar','',0,1,1,0,'{\"name\":\"mod_tags_similar\",\"type\":\"module\",\"creationDate\":\"January 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.1.0\",\"description\":\"MOD_TAGS_SIMILAR_XML_DESCRIPTION\",\"group\":\"\"}','{\"maximum\":\"5\",\"matchtype\":\"any\",\"owncache\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(400,'plg_authentication_gmail','plugin','gmail','authentication',0,0,1,0,'{\"name\":\"plg_authentication_gmail\",\"type\":\"plugin\",\"creationDate\":\"February 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_GMAIL_XML_DESCRIPTION\",\"group\":\"\"}','{\"applysuffix\":\"0\",\"suffix\":\"\",\"verifypeer\":\"1\",\"user_blacklist\":\"\"}','','',0,'0000-00-00 00:00:00',1,0),(401,'plg_authentication_joomla','plugin','joomla','authentication',0,1,1,1,'{\"name\":\"plg_authentication_joomla\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_AUTH_JOOMLA_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(402,'plg_authentication_ldap','plugin','ldap','authentication',0,0,1,0,'{\"name\":\"plg_authentication_ldap\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_LDAP_XML_DESCRIPTION\",\"group\":\"\"}','{\"host\":\"\",\"port\":\"389\",\"use_ldapV3\":\"0\",\"negotiate_tls\":\"0\",\"no_referrals\":\"0\",\"auth_method\":\"bind\",\"base_dn\":\"\",\"search_string\":\"\",\"users_dn\":\"\",\"username\":\"admin\",\"password\":\"bobby7\",\"ldap_fullname\":\"fullName\",\"ldap_email\":\"mail\",\"ldap_uid\":\"uid\"}','','',0,'0000-00-00 00:00:00',3,0),(403,'plg_content_contact','plugin','contact','content',0,1,1,0,'{\"name\":\"plg_content_contact\",\"type\":\"plugin\",\"creationDate\":\"January 2014\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.2\",\"description\":\"PLG_CONTENT_CONTACT_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',1,0),(404,'plg_content_emailcloak','plugin','emailcloak','content',0,1,1,0,'{\"name\":\"plg_content_emailcloak\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CONTENT_EMAILCLOAK_XML_DESCRIPTION\",\"group\":\"\"}','{\"mode\":\"1\"}','','',0,'0000-00-00 00:00:00',1,0),(406,'plg_content_loadmodule','plugin','loadmodule','content',0,1,1,0,'{\"name\":\"plg_content_loadmodule\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_LOADMODULE_XML_DESCRIPTION\",\"group\":\"\"}','{\"style\":\"xhtml\"}','','',0,'2011-09-18 15:22:50',0,0),(407,'plg_content_pagebreak','plugin','pagebreak','content',0,1,1,0,'{\"name\":\"plg_content_pagebreak\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CONTENT_PAGEBREAK_XML_DESCRIPTION\",\"group\":\"\"}','{\"title\":\"1\",\"multipage_toc\":\"1\",\"showall\":\"1\"}','','',0,'0000-00-00 00:00:00',4,0),(408,'plg_content_pagenavigation','plugin','pagenavigation','content',0,1,1,0,'{\"name\":\"plg_content_pagenavigation\",\"type\":\"plugin\",\"creationDate\":\"January 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_PAGENAVIGATION_XML_DESCRIPTION\",\"group\":\"\"}','{\"position\":\"1\"}','','',0,'0000-00-00 00:00:00',5,0),(409,'plg_content_vote','plugin','vote','content',0,1,1,0,'{\"name\":\"plg_content_vote\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_VOTE_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',6,0),(410,'plg_editors_codemirror','plugin','codemirror','editors',0,1,1,1,'{\"name\":\"plg_editors_codemirror\",\"type\":\"plugin\",\"creationDate\":\"28 March 2011\",\"author\":\"Marijn Haverbeke\",\"copyright\":\"\",\"authorEmail\":\"N\\/A\",\"authorUrl\":\"\",\"version\":\"3.15\",\"description\":\"PLG_CODEMIRROR_XML_DESCRIPTION\",\"group\":\"\"}','{\"lineNumbers\":\"1\",\"lineWrapping\":\"1\",\"matchTags\":\"1\",\"matchBrackets\":\"1\",\"marker-gutter\":\"1\",\"autoCloseTags\":\"1\",\"autoCloseBrackets\":\"1\",\"autoFocus\":\"1\",\"theme\":\"default\",\"tabmode\":\"indent\"}','','',0,'0000-00-00 00:00:00',1,0),(411,'plg_editors_none','plugin','none','editors',0,1,1,1,'{\"name\":\"plg_editors_none\",\"type\":\"plugin\",\"creationDate\":\"August 2004\",\"author\":\"Unknown\",\"copyright\":\"\",\"authorEmail\":\"N\\/A\",\"authorUrl\":\"\",\"version\":\"3.0.0\",\"description\":\"PLG_NONE_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',2,0),(412,'plg_editors_tinymce','plugin','tinymce','editors',0,1,1,0,'{\"name\":\"plg_editors_tinymce\",\"type\":\"plugin\",\"creationDate\":\"2005-2013\",\"author\":\"Moxiecode Systems AB\",\"copyright\":\"Moxiecode Systems AB\",\"authorEmail\":\"N\\/A\",\"authorUrl\":\"tinymce.moxiecode.com\",\"version\":\"4.0.22\",\"description\":\"PLG_TINY_XML_DESCRIPTION\",\"group\":\"\"}','{\"mode\":\"1\",\"skin\":\"0\",\"mobile\":\"0\",\"entity_encoding\":\"raw\",\"lang_mode\":\"1\",\"text_direction\":\"ltr\",\"content_css\":\"1\",\"content_css_custom\":\"\",\"relative_urls\":\"1\",\"newlines\":\"0\",\"invalid_elements\":\"script,applet,iframe\",\"extended_elements\":\"\",\"html_height\":\"550\",\"html_width\":\"750\",\"resizing\":\"1\",\"element_path\":\"1\",\"fonts\":\"1\",\"paste\":\"1\",\"searchreplace\":\"1\",\"insertdate\":\"1\",\"colors\":\"1\",\"table\":\"1\",\"smilies\":\"1\",\"hr\":\"1\",\"link\":\"1\",\"media\":\"1\",\"print\":\"1\",\"directionality\":\"1\",\"fullscreen\":\"1\",\"alignment\":\"1\",\"visualchars\":\"1\",\"visualblocks\":\"1\",\"nonbreaking\":\"1\",\"template\":\"1\",\"blockquote\":\"1\",\"wordcount\":\"1\",\"advlist\":\"1\",\"autosave\":\"1\",\"contextmenu\":\"1\",\"inlinepopups\":\"1\",\"custom_plugin\":\"\",\"custom_button\":\"\"}','','',0,'0000-00-00 00:00:00',3,0),(413,'plg_editors-xtd_article','plugin','article','editors-xtd',0,1,1,1,'{\"name\":\"plg_editors-xtd_article\",\"type\":\"plugin\",\"creationDate\":\"October 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_ARTICLE_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',1,0),(414,'plg_editors-xtd_image','plugin','image','editors-xtd',0,1,1,0,'{\"name\":\"plg_editors-xtd_image\",\"type\":\"plugin\",\"creationDate\":\"August 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_IMAGE_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',2,0),(415,'plg_editors-xtd_pagebreak','plugin','pagebreak','editors-xtd',0,1,1,0,'{\"name\":\"plg_editors-xtd_pagebreak\",\"type\":\"plugin\",\"creationDate\":\"August 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_EDITORSXTD_PAGEBREAK_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',3,0),(416,'plg_editors-xtd_readmore','plugin','readmore','editors-xtd',0,1,1,0,'{\"name\":\"plg_editors-xtd_readmore\",\"type\":\"plugin\",\"creationDate\":\"March 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_READMORE_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',4,0),(417,'plg_search_categories','plugin','categories','search',0,1,1,0,'{\"name\":\"plg_search_categories\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SEARCH_CATEGORIES_XML_DESCRIPTION\",\"group\":\"\"}','{\"search_limit\":\"50\",\"search_content\":\"1\",\"search_archived\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(418,'plg_search_contacts','plugin','contacts','search',0,1,1,0,'{\"name\":\"plg_search_contacts\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SEARCH_CONTACTS_XML_DESCRIPTION\",\"group\":\"\"}','{\"search_limit\":\"50\",\"search_content\":\"1\",\"search_archived\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(419,'plg_search_content','plugin','content','search',0,1,1,0,'{\"name\":\"plg_search_content\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SEARCH_CONTENT_XML_DESCRIPTION\",\"group\":\"\"}','{\"search_limit\":\"50\",\"search_content\":\"1\",\"search_archived\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(420,'plg_search_newsfeeds','plugin','newsfeeds','search',0,1,1,0,'{\"name\":\"plg_search_newsfeeds\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SEARCH_NEWSFEEDS_XML_DESCRIPTION\",\"group\":\"\"}','{\"search_limit\":\"50\",\"search_content\":\"1\",\"search_archived\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(421,'plg_search_weblinks','plugin','weblinks','search',0,1,1,0,'{\"name\":\"plg_search_weblinks\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SEARCH_WEBLINKS_XML_DESCRIPTION\",\"group\":\"\"}','{\"search_limit\":\"50\",\"search_content\":\"1\",\"search_archived\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(422,'plg_system_languagefilter','plugin','languagefilter','system',0,0,1,1,'{\"name\":\"plg_system_languagefilter\",\"type\":\"plugin\",\"creationDate\":\"July 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SYSTEM_LANGUAGEFILTER_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',1,0),(423,'plg_system_p3p','plugin','p3p','system',0,1,1,0,'{\"name\":\"plg_system_p3p\",\"type\":\"plugin\",\"creationDate\":\"September 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_P3P_XML_DESCRIPTION\",\"group\":\"\"}','{\"headers\":\"NOI ADM DEV PSAi COM NAV OUR OTRo STP IND DEM\"}','','',0,'0000-00-00 00:00:00',2,0),(424,'plg_system_cache','plugin','cache','system',0,0,1,1,'{\"name\":\"plg_system_cache\",\"type\":\"plugin\",\"creationDate\":\"February 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CACHE_XML_DESCRIPTION\",\"group\":\"\"}','{\"browsercache\":\"0\",\"cachetime\":\"15\"}','','',0,'0000-00-00 00:00:00',9,0),(425,'plg_system_debug','plugin','debug','system',0,1,1,0,'{\"name\":\"plg_system_debug\",\"type\":\"plugin\",\"creationDate\":\"December 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_DEBUG_XML_DESCRIPTION\",\"group\":\"\"}','{\"profile\":\"1\",\"queries\":\"1\",\"memory\":\"1\",\"language_files\":\"1\",\"language_strings\":\"1\",\"strip-first\":\"1\",\"strip-prefix\":\"\",\"strip-suffix\":\"\"}','','',0,'0000-00-00 00:00:00',4,0),(426,'plg_system_log','plugin','log','system',0,1,1,1,'{\"name\":\"plg_system_log\",\"type\":\"plugin\",\"creationDate\":\"April 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_LOG_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',5,0),(427,'plg_system_redirect','plugin','redirect','system',0,0,1,1,'{\"name\":\"plg_system_redirect\",\"type\":\"plugin\",\"creationDate\":\"April 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_REDIRECT_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',6,0),(428,'plg_system_remember','plugin','remember','system',0,1,1,1,'{\"name\":\"plg_system_remember\",\"type\":\"plugin\",\"creationDate\":\"April 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_REMEMBER_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',7,0),(429,'plg_system_sef','plugin','sef','system',0,1,1,0,'{\"name\":\"plg_system_sef\",\"type\":\"plugin\",\"creationDate\":\"December 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SEF_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',8,0),(430,'plg_system_logout','plugin','logout','system',0,1,1,1,'{\"name\":\"plg_system_logout\",\"type\":\"plugin\",\"creationDate\":\"April 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SYSTEM_LOGOUT_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',3,0),(431,'plg_user_contactcreator','plugin','contactcreator','user',0,0,1,0,'{\"name\":\"plg_user_contactcreator\",\"type\":\"plugin\",\"creationDate\":\"August 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CONTACTCREATOR_XML_DESCRIPTION\",\"group\":\"\"}','{\"autowebpage\":\"\",\"category\":\"34\",\"autopublish\":\"0\"}','','',0,'0000-00-00 00:00:00',1,0),(432,'plg_user_joomla','plugin','joomla','user',0,1,1,0,'{\"name\":\"plg_user_joomla\",\"type\":\"plugin\",\"creationDate\":\"December 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2009 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_USER_JOOMLA_XML_DESCRIPTION\",\"group\":\"\"}','{\"strong_passwords\":\"1\",\"autoregister\":\"1\"}','','',0,'0000-00-00 00:00:00',2,0),(433,'plg_user_profile','plugin','profile','user',0,1,1,0,'{\"name\":\"plg_user_profile\",\"type\":\"plugin\",\"creationDate\":\"January 2008\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_USER_PROFILE_XML_DESCRIPTION\",\"group\":\"\"}','{\"register-require_address1\":\"2\",\"register-require_address2\":\"0\",\"register-require_city\":\"0\",\"register-require_region\":\"0\",\"register-require_country\":\"0\",\"register-require_postal_code\":\"0\",\"register-require_phone\":\"2\",\"register-require_website\":\"2\",\"register-require_favoritebook\":\"0\",\"register-require_aboutme\":\"0\",\"register-require_tos\":\"0\",\"register_tos_article\":\"\",\"register-require_dob\":\"0\",\"profile-require_address1\":\"1\",\"profile-require_address2\":\"1\",\"profile-require_city\":\"1\",\"profile-require_region\":\"1\",\"profile-require_country\":\"1\",\"profile-require_postal_code\":\"1\",\"profile-require_phone\":\"1\",\"profile-require_website\":\"1\",\"profile-require_favoritebook\":\"1\",\"profile-require_aboutme\":\"1\",\"profile-require_dob\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(434,'plg_extension_joomla','plugin','joomla','extension',0,1,1,1,'{\"name\":\"plg_extension_joomla\",\"type\":\"plugin\",\"creationDate\":\"May 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_EXTENSION_JOOMLA_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',1,0),(435,'plg_content_joomla','plugin','joomla','content',0,1,1,0,'{\"name\":\"plg_content_joomla\",\"type\":\"plugin\",\"creationDate\":\"November 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CONTENT_JOOMLA_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(436,'plg_system_languagecode','plugin','languagecode','system',0,0,1,0,'{\"name\":\"plg_system_languagecode\",\"type\":\"plugin\",\"creationDate\":\"November 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SYSTEM_LANGUAGECODE_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',10,0),(437,'plg_quickicon_joomlaupdate','plugin','joomlaupdate','quickicon',0,1,1,1,'{\"name\":\"plg_quickicon_joomlaupdate\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_QUICKICON_JOOMLAUPDATE_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(438,'plg_quickicon_extensionupdate','plugin','extensionupdate','quickicon',0,1,1,1,'{\"name\":\"plg_quickicon_extensionupdate\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_QUICKICON_EXTENSIONUPDATE_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(439,'plg_captcha_recaptcha','plugin','recaptcha','captcha',0,0,1,0,'{\"name\":\"plg_captcha_recaptcha\",\"type\":\"plugin\",\"creationDate\":\"December 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CAPTCHA_RECAPTCHA_XML_DESCRIPTION\",\"group\":\"\"}','{\"public_key\":\"\",\"private_key\":\"\",\"theme\":\"clean\"}','','',0,'0000-00-00 00:00:00',0,0),(440,'plg_system_highlight','plugin','highlight','system',0,1,1,0,'{\"name\":\"plg_system_highlight\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SYSTEM_HIGHLIGHT_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',7,0),(441,'plg_content_finder','plugin','finder','content',0,0,1,0,'{\"name\":\"plg_content_finder\",\"type\":\"plugin\",\"creationDate\":\"December 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CONTENT_FINDER_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(442,'plg_finder_categories','plugin','categories','finder',0,1,1,0,'{\"name\":\"plg_finder_categories\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_FINDER_CATEGORIES_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',1,0),(443,'plg_finder_contacts','plugin','contacts','finder',0,1,1,0,'{\"name\":\"plg_finder_contacts\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_FINDER_CONTACTS_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',2,0),(444,'plg_finder_content','plugin','content','finder',0,1,1,0,'{\"name\":\"plg_finder_content\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_FINDER_CONTENT_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',3,0),(445,'plg_finder_newsfeeds','plugin','newsfeeds','finder',0,1,1,0,'{\"name\":\"plg_finder_newsfeeds\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_FINDER_NEWSFEEDS_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',4,0),(446,'plg_finder_weblinks','plugin','weblinks','finder',0,1,1,0,'{\"name\":\"plg_finder_weblinks\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_FINDER_WEBLINKS_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',5,0),(447,'plg_finder_tags','plugin','tags','finder',0,1,1,0,'{\"name\":\"plg_finder_tags\",\"type\":\"plugin\",\"creationDate\":\"February 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_FINDER_TAGS_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(448,'plg_twofactorauth_totp','plugin','totp','twofactorauth',0,0,1,0,'{\"name\":\"plg_twofactorauth_totp\",\"type\":\"plugin\",\"creationDate\":\"August 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.0\",\"description\":\"PLG_TWOFACTORAUTH_TOTP_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(449,'plg_authentication_cookie','plugin','cookie','authentication',0,1,1,0,'{\"name\":\"plg_authentication_cookie\",\"type\":\"plugin\",\"creationDate\":\"July 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_AUTH_COOKIE_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(450,'plg_twofactorauth_yubikey','plugin','yubikey','twofactorauth',0,0,1,0,'{\"name\":\"plg_twofactorauth_yubikey\",\"type\":\"plugin\",\"creationDate\":\"September 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.0\",\"description\":\"PLG_TWOFACTORAUTH_YUBIKEY_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(451,'plg_search_tags','plugin','tags','search',0,1,1,0,'{\"name\":\"plg_search_tags\",\"type\":\"plugin\",\"creationDate\":\"March 2014\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SEARCH_TAGS_XML_DESCRIPTION\",\"group\":\"\"}','{\"search_limit\":\"50\",\"show_tagged_items\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(452,'plg_system_logc','plugin','logc','system',0,1,1,1,'{\"name\":\"plg_system_logc\",\"type\":\"plugin\",\"creationDate\":\"April 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_DEBUG_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',1000,0),(503,'beez3','template','beez3','',0,1,1,0,'{\"name\":\"beez3\",\"type\":\"template\",\"creationDate\":\"25 November 2009\",\"author\":\"Angie Radtke\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters, Inc. All rights reserved.\",\"authorEmail\":\"a.radtke@derauftritt.de\",\"authorUrl\":\"http:\\/\\/www.der-auftritt.de\",\"version\":\"3.1.0\",\"description\":\"TPL_BEEZ3_XML_DESCRIPTION\",\"group\":\"\"}','{\"wrapperSmall\":\"53\",\"wrapperLarge\":\"72\",\"sitetitle\":\"\",\"sitedescription\":\"\",\"navposition\":\"center\",\"templatecolor\":\"nature\"}','','',0,'0000-00-00 00:00:00',0,0),(504,'hathor','template','hathor','',1,1,1,0,'{\"name\":\"hathor\",\"type\":\"template\",\"creationDate\":\"May 2010\",\"author\":\"Andrea Tarr\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters, Inc. All rights reserved.\",\"authorEmail\":\"hathor@tarrconsulting.com\",\"authorUrl\":\"http:\\/\\/www.tarrconsulting.com\",\"version\":\"3.0.0\",\"description\":\"TPL_HATHOR_XML_DESCRIPTION\",\"group\":\"\"}','{\"showSiteName\":\"0\",\"colourChoice\":\"0\",\"boldText\":\"0\"}','','',0,'0000-00-00 00:00:00',0,0),(506,'protostar','template','protostar','',0,1,1,0,'{\"name\":\"protostar\",\"type\":\"template\",\"creationDate\":\"4\\/30\\/2012\",\"author\":\"Kyle Ledbetter\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters, Inc. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"\",\"version\":\"1.0\",\"description\":\"TPL_PROTOSTAR_XML_DESCRIPTION\",\"group\":\"\"}','{\"templateColor\":\"\",\"logoFile\":\"\",\"googleFont\":\"1\",\"googleFontName\":\"Open+Sans\",\"fluidContainer\":\"0\"}','','',0,'0000-00-00 00:00:00',0,0),(507,'isis','template','isis','',1,1,1,0,'{\"name\":\"isis\",\"type\":\"template\",\"creationDate\":\"3\\/30\\/2012\",\"author\":\"Kyle Ledbetter\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters, Inc. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"\",\"version\":\"1.0\",\"description\":\"TPL_ISIS_XML_DESCRIPTION\",\"group\":\"\"}','{\"templateColor\":\"\",\"logoFile\":\"\"}','','',0,'0000-00-00 00:00:00',0,0),(600,'English (United Kingdom)','language','en-GB','',0,1,1,1,'{\"name\":\"English (United Kingdom)\",\"type\":\"language\",\"creationDate\":\"2013-03-07\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.3.1\",\"description\":\"en-GB site language\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(601,'English (United Kingdom)','language','en-GB','',1,1,1,1,'{\"name\":\"English (United Kingdom)\",\"type\":\"language\",\"creationDate\":\"2013-03-07\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.3.1\",\"description\":\"en-GB administrator language\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(700,'files_joomla','file','joomla','',0,1,1,1,'{\"name\":\"files_joomla\",\"type\":\"file\",\"creationDate\":\"June 2014\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.3.1\",\"description\":\"FILES_JOOMLA_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(701,'CraigsCoinAdViewer','template','craigscoinadviewer','',0,1,1,0,'{\"name\":\"CraigsCoinAdViewer\",\"type\":\"template\",\"creationDate\":\"24\\/09\\/2014\",\"author\":\"Maksim Tverdikov\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters, Inc. All rights reserved.\",\"authorEmail\":\"leatprof@gmail.com\",\"authorUrl\":\"\",\"version\":\"1.0\",\"description\":\"\",\"group\":\"\"}','{\"templateColor\":\"#08C\",\"templateBackgroundColor\":\"#F4F6F7\",\"logoFile\":\"\",\"sitetitle\":\"\",\"sitedescription\":\"\",\"googleFont\":\"1\",\"googleFontName\":\"Open+Sans\",\"fluidContainer\":\"0\"}','','',0,'0000-00-00 00:00:00',0,0),(702,'Russian','language','ru-RU','',0,1,0,0,'{\"name\":\"Russian\",\"type\":\"language\",\"creationDate\":\"2014-07-28\",\"author\":\"Russian Translation Team\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved\",\"authorEmail\":\"smart@joomlaportal.ru\",\"authorUrl\":\"www.joomlaportal.ru\",\"version\":\"3.3.3.1\",\"description\":\"Russian language pack (site) for Joomla! 3.3\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(703,'Russian','language','ru-RU','',1,1,0,0,'{\"name\":\"Russian\",\"type\":\"language\",\"creationDate\":\"2014-07-28\",\"author\":\"Russian Translation Team\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved\",\"authorEmail\":\"smart@joomlaportal.ru\",\"authorUrl\":\"www.joomlaportal.ru\",\"version\":\"3.3.3.1\",\"description\":\"Russian language pack (administrator) for Joomla! 3.3\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(704,'ru-RU','package','pkg_ru-RU','',0,1,1,0,'{\"name\":\"Russian Language Pack\",\"type\":\"package\",\"creationDate\":\"Unknown\",\"author\":\"Unknown\",\"copyright\":\"\",\"authorEmail\":\"\",\"authorUrl\":\"\",\"version\":\"3.3.3.1\",\"description\":\"Joomla 3.3 Russian Language Package\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(705,'plg_user_hkm_profile','plugin','hkm_profile','user',0,0,1,0,'{\"name\":\"plg_user_hkm_profile\",\"type\":\"plugin\",\"creationDate\":\"November 2012\",\"author\":\"SherZa\",\"copyright\":\"(C) Hekima.ru. http:\\/\\/hekima.ru  All rights reserved.\",\"authorEmail\":\"sherza.web@gmail.com\",\"authorUrl\":\"http:\\/\\/hekima.ru\",\"version\":\"2.5.0\",\"description\":\"PLG_USER_HKM_PROFILE_XML_DESCRIPTION\",\"group\":\"\"}','[]','','',0,'0000-00-00 00:00:00',0,0),(717,'PLG_MINICCK','plugin','minicck','system',0,1,1,0,'{\"name\":\"PLG_MINICCK\",\"type\":\"plugin\",\"creationDate\":\"30.04.2014\",\"author\":\"Arkadiy Sedelnikov\",\"copyright\":\"(C) 2013 Arkadiy Sedelnikov. All rights reserved.\",\"authorEmail\":\"a.sedelnikov@gmail.com\",\"authorUrl\":\"http:\\/\\/argens.ru\",\"version\":\"2.0\",\"description\":\"PLG_MINICCK_XML_DESCRIPTION\",\"group\":\"\"}','{\"customfields\":[{\"name\":\"field_1\",\"title\":\"Price ($)\",\"type\":\"mctext\",\"params\":\"\"},{\"name\":\"field_2\",\"title\":\"Brand\",\"type\":\"mctext\",\"params\":\"\"},{\"name\":\"field_3\",\"title\":\"Year\",\"type\":\"mctext\",\"params\":\"\"},{\"name\":\"field_4\",\"title\":\"Place\",\"type\":\"mctext\",\"params\":\"\"},{\"name\":\"field_5\",\"title\":\"Location\",\"type\":\"mctext\",\"params\":\"\"},{\"name\":\"c_model\",\"title\":\"Model\",\"type\":\"mctext\",\"params\":\"\"},{\"name\":\"c_country\",\"title\":\"Country\",\"type\":\"mctext\",\"params\":\"\"},{\"name\":\"c_state\",\"title\":\"State\",\"type\":\"mctext\",\"params\":\"\"},{\"name\":\"c_city\",\"title\":\"City\",\"type\":\"mctext\",\"params\":\"\"},{\"name\":\"c_street_address\",\"title\":\"Street address\",\"type\":\"mctext\",\"params\":\"\"},{\"name\":\"c_postal_code\",\"title\":\"Postal code\",\"type\":\"mctext\",\"params\":\"\"},{\"name\":\"c_images\",\"title\":\"Images\",\"type\":\"mctextarea\",\"params\":\"\"},{\"name\":\"c_video\",\"title\":\"Video\",\"type\":\"mctextarea\",\"params\":\"\"},{\"name\":\"c_persona_name\",\"title\":\"Persona Name\",\"type\":\"mctext\",\"params\":\"\"},{\"name\":\"c_persona_contacts\",\"title\":\"Persona Contacts\",\"type\":\"mctext\",\"params\":\"\"}],\"content_types\":[{\"name\":\"content_type_0\",\"content_tmpl\":\"default.php\",\"title\":\"Additional fields\",\"category_tmpl\":\"default.php\",\"fields\":{\"field_1\":{\"content\":\"1\"},\"field_2\":{\"content\":\"1\"},\"field_3\":{\"content\":\"1\"},\"field_4\":{\"content\":\"1\"},\"field_5\":{\"content\":\"1\"},\"c_model\":{\"content\":\"1\"},\"c_country\":{\"content\":\"1\"},\"c_state\":{\"content\":\"1\"},\"c_city\":{\"content\":\"1\"},\"c_street_address\":{\"content\":\"1\"},\"c_postal_code\":{\"content\":\"1\"},\"c_images\":{\"category\":\"1\",\"content\":\"1\"},\"c_video\":{\"content\":\"1\"},\"c_persona_name\":{\"content\":\"1\"},\"c_persona_contacts\":{\"content\":\"1\"}}}],\"allow_in_content\":\"1\",\"allow_in_category\":\"1\",\"content_layout\":\"default.php\",\"category_layout\":\"default_cat.php\",\"load_object\":\"1\",\"position_content\":\"top\",\"position_cat\":\"top\",\"load_css\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(718,'YouTube Plugin','plugin','youtubeplugin','content',0,1,1,0,'{\"name\":\"YouTube Plugin\",\"type\":\"plugin\",\"creationDate\":\"Jan 2013\",\"author\":\"Benjamin Golding\",\"copyright\":\"Benjamin Golding 2013. All rights reserved.\",\"authorEmail\":\"awesome24@hush.ai\",\"authorUrl\":\"joomlacode.org\\/gf\\/project\\/youtubeplugin\\/\",\"version\":\"1.1\",\"description\":\"\\n\\t\\n<p>With this plugin, you can embed YouTube videos into articles simply by copying and pasting a youtube\'s video parameter between the youtube flags: {youtube}xxxxxx{\\/youtube}. So for instance if the URL is: www.youtube.com\\/watch?v=2jvLalY6ubc <br\\/><br\\/>Then you would insert the following text to your article:<br\\/>\\n{youtube}2jvLalY6ubc{\\/youtube}<br\\/><br\\/> You can find more information here: http:\\/\\/joomlacode.org\\/gf\\/project\\/youtubeplugin\\/  <\\/p><p>-----<b>But first <\\/b>go to the plugin manager (From the toolbar: Extension -> Plug-in Manager) and enable the plugin by switching the button near it from red to green.<\\/p>\\n\\t\\n\\t\",\"group\":\"\"}','{\"width\":\"425\",\"height\":\"344\"}','','',0,'0000-00-00 00:00:00',0,0);
/*!40000 ALTER TABLE `new1_extensions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `new1_fieldsattach`
--

DROP TABLE IF EXISTS `new1_fieldsattach`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `new1_fieldsattach` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) NOT NULL,
  `extras` text NOT NULL,
  `showtitle` tinyint(1) NOT NULL,
  `positionarticle` tinyint(1) DEFAULT '0',
  `type` varchar(20) NOT NULL,
  `groupid` int(11) DEFAULT NULL,
  `articlesid` varchar(255) DEFAULT NULL,
  `language` varchar(20) NOT NULL,
  `visible` tinyint(1) NOT NULL,
  `ordering` int(11) NOT NULL,
  `published` tinyint(1) NOT NULL,
  `required` tinyint(1) DEFAULT NULL,
  `searchable` tinyint(1) DEFAULT NULL,
  `params` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `new1_fieldsattach`
--

LOCK TABLES `new1_fieldsattach` WRITE;
/*!40000 ALTER TABLE `new1_fieldsattach` DISABLE KEYS */;
/*!40000 ALTER TABLE `new1_fieldsattach` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `new1_fieldsattach_categories_values`
--

DROP TABLE IF EXISTS `new1_fieldsattach_categories_values`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `new1_fieldsattach_categories_values` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `catid` int(11) NOT NULL,
  `fieldsid` int(11) NOT NULL,
  `value` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `new1_fieldsattach_categories_values`
--

LOCK TABLES `new1_fieldsattach_categories_values` WRITE;
/*!40000 ALTER TABLE `new1_fieldsattach_categories_values` DISABLE KEYS */;
/*!40000 ALTER TABLE `new1_fieldsattach_categories_values` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `new1_fieldsattach_groups`
--

DROP TABLE IF EXISTS `new1_fieldsattach_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `new1_fieldsattach_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `note` varchar(150) DEFAULT NULL,
  `description` text,
  `position` varchar(255) DEFAULT NULL,
  `group_for` int(1) DEFAULT NULL,
  `showtitle` tinyint(1) NOT NULL,
  `catid` varchar(100) NOT NULL,
  `articlesid` varchar(255) DEFAULT NULL,
  `recursive` tinyint(1) NOT NULL,
  `language` varchar(7) NOT NULL,
  `ordering` int(11) NOT NULL,
  `published` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `new1_fieldsattach_groups`
--

LOCK TABLES `new1_fieldsattach_groups` WRITE;
/*!40000 ALTER TABLE `new1_fieldsattach_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `new1_fieldsattach_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `new1_fieldsattach_images`
--

DROP TABLE IF EXISTS `new1_fieldsattach_images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `new1_fieldsattach_images` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `articleid` int(11) NOT NULL,
  `fieldsattachid` int(11) NOT NULL,
  `catid` int(11) DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `image1` varchar(255) NOT NULL,
  `image2` varchar(255) NOT NULL,
  `image3` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `ordering` int(11) NOT NULL,
  `published` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `new1_fieldsattach_images`
--

LOCK TABLES `new1_fieldsattach_images` WRITE;
/*!40000 ALTER TABLE `new1_fieldsattach_images` DISABLE KEYS */;
/*!40000 ALTER TABLE `new1_fieldsattach_images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `new1_fieldsattach_values`
--

DROP TABLE IF EXISTS `new1_fieldsattach_values`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `new1_fieldsattach_values` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `articleid` int(11) NOT NULL,
  `fieldsid` int(11) NOT NULL,
  `value` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `new1_fieldsattach_values`
--

LOCK TABLES `new1_fieldsattach_values` WRITE;
/*!40000 ALTER TABLE `new1_fieldsattach_values` DISABLE KEYS */;
/*!40000 ALTER TABLE `new1_fieldsattach_values` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `new1_finder_filters`
--

DROP TABLE IF EXISTS `new1_finder_filters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `new1_finder_filters` (
  `filter_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT '1',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL,
  `created_by_alias` varchar(255) NOT NULL,
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `map_count` int(10) unsigned NOT NULL DEFAULT '0',
  `data` text NOT NULL,
  `params` mediumtext,
  PRIMARY KEY (`filter_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `new1_finder_filters`
--

LOCK TABLES `new1_finder_filters` WRITE;
/*!40000 ALTER TABLE `new1_finder_filters` DISABLE KEYS */;
/*!40000 ALTER TABLE `new1_finder_filters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `new1_finder_links`
--

DROP TABLE IF EXISTS `new1_finder_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `new1_finder_links` (
  `link_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `url` varchar(255) NOT NULL,
  `route` varchar(255) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `indexdate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `md5sum` varchar(32) DEFAULT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `state` int(5) DEFAULT '1',
  `access` int(5) DEFAULT '0',
  `language` varchar(8) NOT NULL,
  `publish_start_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_end_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `start_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `end_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `list_price` double unsigned NOT NULL DEFAULT '0',
  `sale_price` double unsigned NOT NULL DEFAULT '0',
  `type_id` int(11) NOT NULL,
  `object` mediumblob NOT NULL,
  PRIMARY KEY (`link_id`),
  KEY `idx_type` (`type_id`),
  KEY `idx_title` (`title`),
  KEY `idx_md5` (`md5sum`),
  KEY `idx_url` (`url`(75)),
  KEY `idx_published_list` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`list_price`),
  KEY `idx_published_sale` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`sale_price`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `new1_finder_links`
--

LOCK TABLES `new1_finder_links` WRITE;
/*!40000 ALTER TABLE `new1_finder_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `new1_finder_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `new1_finder_links_terms0`
--

DROP TABLE IF EXISTS `new1_finder_links_terms0`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `new1_finder_links_terms0` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `new1_finder_links_terms0`
--

LOCK TABLES `new1_finder_links_terms0` WRITE;
/*!40000 ALTER TABLE `new1_finder_links_terms0` DISABLE KEYS */;
/*!40000 ALTER TABLE `new1_finder_links_terms0` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `new1_finder_links_terms1`
--

DROP TABLE IF EXISTS `new1_finder_links_terms1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `new1_finder_links_terms1` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `new1_finder_links_terms1`
--

LOCK TABLES `new1_finder_links_terms1` WRITE;
/*!40000 ALTER TABLE `new1_finder_links_terms1` DISABLE KEYS */;
/*!40000 ALTER TABLE `new1_finder_links_terms1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `new1_finder_links_terms2`
--

DROP TABLE IF EXISTS `new1_finder_links_terms2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `new1_finder_links_terms2` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `new1_finder_links_terms2`
--

LOCK TABLES `new1_finder_links_terms2` WRITE;
/*!40000 ALTER TABLE `new1_finder_links_terms2` DISABLE KEYS */;
/*!40000 ALTER TABLE `new1_finder_links_terms2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `new1_finder_links_terms3`
--

DROP TABLE IF EXISTS `new1_finder_links_terms3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `new1_finder_links_terms3` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `new1_finder_links_terms3`
--

LOCK TABLES `new1_finder_links_terms3` WRITE;
/*!40000 ALTER TABLE `new1_finder_links_terms3` DISABLE KEYS */;
/*!40000 ALTER TABLE `new1_finder_links_terms3` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `new1_finder_links_terms4`
--

DROP TABLE IF EXISTS `new1_finder_links_terms4`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `new1_finder_links_terms4` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `new1_finder_links_terms4`
--

LOCK TABLES `new1_finder_links_terms4` WRITE;
/*!40000 ALTER TABLE `new1_finder_links_terms4` DISABLE KEYS */;
/*!40000 ALTER TABLE `new1_finder_links_terms4` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `new1_finder_links_terms5`
--

DROP TABLE IF EXISTS `new1_finder_links_terms5`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `new1_finder_links_terms5` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `new1_finder_links_terms5`
--

LOCK TABLES `new1_finder_links_terms5` WRITE;
/*!40000 ALTER TABLE `new1_finder_links_terms5` DISABLE KEYS */;
/*!40000 ALTER TABLE `new1_finder_links_terms5` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `new1_finder_links_terms6`
--

DROP TABLE IF EXISTS `new1_finder_links_terms6`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `new1_finder_links_terms6` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `new1_finder_links_terms6`
--

LOCK TABLES `new1_finder_links_terms6` WRITE;
/*!40000 ALTER TABLE `new1_finder_links_terms6` DISABLE KEYS */;
/*!40000 ALTER TABLE `new1_finder_links_terms6` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `new1_finder_links_terms7`
--

DROP TABLE IF EXISTS `new1_finder_links_terms7`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `new1_finder_links_terms7` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `new1_finder_links_terms7`
--

LOCK TABLES `new1_finder_links_terms7` WRITE;
/*!40000 ALTER TABLE `new1_finder_links_terms7` DISABLE KEYS */;
/*!40000 ALTER TABLE `new1_finder_links_terms7` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `new1_finder_links_terms8`
--

DROP TABLE IF EXISTS `new1_finder_links_terms8`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `new1_finder_links_terms8` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `new1_finder_links_terms8`
--

LOCK TABLES `new1_finder_links_terms8` WRITE;
/*!40000 ALTER TABLE `new1_finder_links_terms8` DISABLE KEYS */;
/*!40000 ALTER TABLE `new1_finder_links_terms8` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `new1_finder_links_terms9`
--

DROP TABLE IF EXISTS `new1_finder_links_terms9`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `new1_finder_links_terms9` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `new1_finder_links_terms9`
--

LOCK TABLES `new1_finder_links_terms9` WRITE;
/*!40000 ALTER TABLE `new1_finder_links_terms9` DISABLE KEYS */;
/*!40000 ALTER TABLE `new1_finder_links_terms9` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `new1_finder_links_termsa`
--

DROP TABLE IF EXISTS `new1_finder_links_termsa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `new1_finder_links_termsa` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `new1_finder_links_termsa`
--

LOCK TABLES `new1_finder_links_termsa` WRITE;
/*!40000 ALTER TABLE `new1_finder_links_termsa` DISABLE KEYS */;
/*!40000 ALTER TABLE `new1_finder_links_termsa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `new1_finder_links_termsb`
--

DROP TABLE IF EXISTS `new1_finder_links_termsb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `new1_finder_links_termsb` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `new1_finder_links_termsb`
--

LOCK TABLES `new1_finder_links_termsb` WRITE;
/*!40000 ALTER TABLE `new1_finder_links_termsb` DISABLE KEYS */;
/*!40000 ALTER TABLE `new1_finder_links_termsb` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `new1_finder_links_termsc`
--

DROP TABLE IF EXISTS `new1_finder_links_termsc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `new1_finder_links_termsc` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `new1_finder_links_termsc`
--

LOCK TABLES `new1_finder_links_termsc` WRITE;
/*!40000 ALTER TABLE `new1_finder_links_termsc` DISABLE KEYS */;
/*!40000 ALTER TABLE `new1_finder_links_termsc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `new1_finder_links_termsd`
--

DROP TABLE IF EXISTS `new1_finder_links_termsd`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `new1_finder_links_termsd` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `new1_finder_links_termsd`
--

LOCK TABLES `new1_finder_links_termsd` WRITE;
/*!40000 ALTER TABLE `new1_finder_links_termsd` DISABLE KEYS */;
/*!40000 ALTER TABLE `new1_finder_links_termsd` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `new1_finder_links_termse`
--

DROP TABLE IF EXISTS `new1_finder_links_termse`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `new1_finder_links_termse` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `new1_finder_links_termse`
--

LOCK TABLES `new1_finder_links_termse` WRITE;
/*!40000 ALTER TABLE `new1_finder_links_termse` DISABLE KEYS */;
/*!40000 ALTER TABLE `new1_finder_links_termse` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `new1_finder_links_termsf`
--

DROP TABLE IF EXISTS `new1_finder_links_termsf`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `new1_finder_links_termsf` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `new1_finder_links_termsf`
--

LOCK TABLES `new1_finder_links_termsf` WRITE;
/*!40000 ALTER TABLE `new1_finder_links_termsf` DISABLE KEYS */;
/*!40000 ALTER TABLE `new1_finder_links_termsf` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `new1_finder_taxonomy`
--

DROP TABLE IF EXISTS `new1_finder_taxonomy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `new1_finder_taxonomy` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL,
  `state` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `access` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ordering` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `parent_id` (`parent_id`),
  KEY `state` (`state`),
  KEY `ordering` (`ordering`),
  KEY `access` (`access`),
  KEY `idx_parent_published` (`parent_id`,`state`,`access`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `new1_finder_taxonomy`
--

LOCK TABLES `new1_finder_taxonomy` WRITE;
/*!40000 ALTER TABLE `new1_finder_taxonomy` DISABLE KEYS */;
INSERT INTO `new1_finder_taxonomy` VALUES (1,0,'ROOT',0,0,0);
/*!40000 ALTER TABLE `new1_finder_taxonomy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `new1_finder_taxonomy_map`
--

DROP TABLE IF EXISTS `new1_finder_taxonomy_map`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `new1_finder_taxonomy_map` (
  `link_id` int(10) unsigned NOT NULL,
  `node_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`node_id`),
  KEY `link_id` (`link_id`),
  KEY `node_id` (`node_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `new1_finder_taxonomy_map`
--

LOCK TABLES `new1_finder_taxonomy_map` WRITE;
/*!40000 ALTER TABLE `new1_finder_taxonomy_map` DISABLE KEYS */;
/*!40000 ALTER TABLE `new1_finder_taxonomy_map` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `new1_finder_terms`
--

DROP TABLE IF EXISTS `new1_finder_terms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `new1_finder_terms` (
  `term_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `weight` float unsigned NOT NULL DEFAULT '0',
  `soundex` varchar(75) NOT NULL,
  `links` int(10) NOT NULL DEFAULT '0',
  `language` char(3) NOT NULL DEFAULT '',
  PRIMARY KEY (`term_id`),
  UNIQUE KEY `idx_term` (`term`),
  KEY `idx_term_phrase` (`term`,`phrase`),
  KEY `idx_stem_phrase` (`stem`,`phrase`),
  KEY `idx_soundex_phrase` (`soundex`,`phrase`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `new1_finder_terms`
--

LOCK TABLES `new1_finder_terms` WRITE;
/*!40000 ALTER TABLE `new1_finder_terms` DISABLE KEYS */;
/*!40000 ALTER TABLE `new1_finder_terms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `new1_finder_terms_common`
--

DROP TABLE IF EXISTS `new1_finder_terms_common`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `new1_finder_terms_common` (
  `term` varchar(75) NOT NULL,
  `language` varchar(3) NOT NULL,
  KEY `idx_word_lang` (`term`,`language`),
  KEY `idx_lang` (`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `new1_finder_terms_common`
--

LOCK TABLES `new1_finder_terms_common` WRITE;
/*!40000 ALTER TABLE `new1_finder_terms_common` DISABLE KEYS */;
INSERT INTO `new1_finder_terms_common` VALUES ('a','en'),('about','en'),('after','en'),('ago','en'),('all','en'),('am','en'),('an','en'),('and','en'),('ani','en'),('any','en'),('are','en'),('aren\'t','en'),('as','en'),('at','en'),('be','en'),('but','en'),('by','en'),('for','en'),('from','en'),('get','en'),('go','en'),('how','en'),('if','en'),('in','en'),('into','en'),('is','en'),('isn\'t','en'),('it','en'),('its','en'),('me','en'),('more','en'),('most','en'),('must','en'),('my','en'),('new','en'),('no','en'),('none','en'),('not','en'),('noth','en'),('nothing','en'),('of','en'),('off','en'),('often','en'),('old','en'),('on','en'),('onc','en'),('once','en'),('onli','en'),('only','en'),('or','en'),('other','en'),('our','en'),('ours','en'),('out','en'),('over','en'),('page','en'),('she','en'),('should','en'),('small','en'),('so','en'),('some','en'),('than','en'),('thank','en'),('that','en'),('the','en'),('their','en'),('theirs','en'),('them','en'),('then','en'),('there','en'),('these','en'),('they','en'),('this','en'),('those','en'),('thus','en'),('time','en'),('times','en'),('to','en'),('too','en'),('true','en'),('under','en'),('until','en'),('up','en'),('upon','en'),('use','en'),('user','en'),('users','en'),('veri','en'),('version','en'),('very','en'),('via','en'),('want','en'),('was','en'),('way','en'),('were','en'),('what','en'),('when','en'),('where','en'),('whi','en'),('which','en'),('who','en'),('whom','en'),('whose','en'),('why','en'),('wide','en'),('will','en'),('with','en'),('within','en'),('without','en'),('would','en'),('yes','en'),('yet','en'),('you','en'),('your','en'),('yours','en');
/*!40000 ALTER TABLE `new1_finder_terms_common` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `new1_finder_tokens`
--

DROP TABLE IF EXISTS `new1_finder_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `new1_finder_tokens` (
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `weight` float unsigned NOT NULL DEFAULT '1',
  `context` tinyint(1) unsigned NOT NULL DEFAULT '2',
  `language` char(3) NOT NULL DEFAULT '',
  KEY `idx_word` (`term`),
  KEY `idx_context` (`context`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `new1_finder_tokens`
--

LOCK TABLES `new1_finder_tokens` WRITE;
/*!40000 ALTER TABLE `new1_finder_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `new1_finder_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `new1_finder_tokens_aggregate`
--

DROP TABLE IF EXISTS `new1_finder_tokens_aggregate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `new1_finder_tokens_aggregate` (
  `term_id` int(10) unsigned NOT NULL,
  `map_suffix` char(1) NOT NULL,
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `term_weight` float unsigned NOT NULL,
  `context` tinyint(1) unsigned NOT NULL DEFAULT '2',
  `context_weight` float unsigned NOT NULL,
  `total_weight` float unsigned NOT NULL,
  `language` char(3) NOT NULL DEFAULT '',
  KEY `token` (`term`),
  KEY `keyword_id` (`term_id`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `new1_finder_tokens_aggregate`
--

LOCK TABLES `new1_finder_tokens_aggregate` WRITE;
/*!40000 ALTER TABLE `new1_finder_tokens_aggregate` DISABLE KEYS */;
/*!40000 ALTER TABLE `new1_finder_tokens_aggregate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `new1_finder_types`
--

DROP TABLE IF EXISTS `new1_finder_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `new1_finder_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `mime` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `title` (`title`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `new1_finder_types`
--

LOCK TABLES `new1_finder_types` WRITE;
/*!40000 ALTER TABLE `new1_finder_types` DISABLE KEYS */;
/*!40000 ALTER TABLE `new1_finder_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `new1_languages`
--

DROP TABLE IF EXISTS `new1_languages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `new1_languages` (
  `lang_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `lang_code` char(7) NOT NULL,
  `title` varchar(50) NOT NULL,
  `title_native` varchar(50) NOT NULL,
  `sef` varchar(50) NOT NULL,
  `image` varchar(50) NOT NULL,
  `description` varchar(512) NOT NULL,
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `sitename` varchar(1024) NOT NULL DEFAULT '',
  `published` int(11) NOT NULL DEFAULT '0',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`lang_id`),
  UNIQUE KEY `idx_sef` (`sef`),
  UNIQUE KEY `idx_image` (`image`),
  UNIQUE KEY `idx_langcode` (`lang_code`),
  KEY `idx_access` (`access`),
  KEY `idx_ordering` (`ordering`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `new1_languages`
--

LOCK TABLES `new1_languages` WRITE;
/*!40000 ALTER TABLE `new1_languages` DISABLE KEYS */;
INSERT INTO `new1_languages` VALUES (1,'en-GB','English (UK)','English (UK)','en','en','','','','',1,1,1);
/*!40000 ALTER TABLE `new1_languages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `new1_lastblock`
--

DROP TABLE IF EXISTS `new1_lastblock`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `new1_lastblock` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `lastblock` int(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `new1_lastblock`
--

LOCK TABLES `new1_lastblock` WRITE;
/*!40000 ALTER TABLE `new1_lastblock` DISABLE KEYS */;
INSERT INTO `new1_lastblock` VALUES (1,74446);
/*!40000 ALTER TABLE `new1_lastblock` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `new1_loadedtransaction`
--

DROP TABLE IF EXISTS `new1_loadedtransaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `new1_loadedtransaction` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `tx` varchar(80) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1085 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `new1_loadedtransaction`
--

LOCK TABLES `new1_loadedtransaction` WRITE;
/*!40000 ALTER TABLE `new1_loadedtransaction` DISABLE KEYS */;
INSERT INTO `new1_loadedtransaction` VALUES (29,'2000c60fd893fbde1d216d7af5af5a203778abf220dcc4eb67c8f65e1435d20e'),(30,'9891d4ad1725b9df3c65cee6ef67f7ee034bd0fe4e3ce36b74a0a1bc47e75f10'),(31,'8288493b66bd84b7bb23751d6ecf87591cbb5c5577accd003ac019862e28b3c0'),(32,'aa4999de3a157707ae5862a6b1937ba8200ea6ebf9f961a54cd3eac744a8756f'),(33,'b70ef3b27d123e4b0c3616cd5c1ee4446a4e0aed6d1418024732e385e66c62eb'),(34,'7dae7ebe85ecec08ad235050fff32d66469793934d6e6dcca1d76119bdc7c2c1'),(35,'d86f928444b6fd23594626d64da172a7847f4236fd3b242d6b0743515abbdd39'),(36,'10884fbf99f2237be4436b401b8e64908fe75a032c3733ca2e5e74be5ac2081f'),(37,'2000c60fd893fbde1d216d7af5af5a203778abf220dcc4eb67c8f65e1435d20e'),(38,'9891d4ad1725b9df3c65cee6ef67f7ee034bd0fe4e3ce36b74a0a1bc47e75f10'),(39,'8288493b66bd84b7bb23751d6ecf87591cbb5c5577accd003ac019862e28b3c0'),(40,'aa4999de3a157707ae5862a6b1937ba8200ea6ebf9f961a54cd3eac744a8756f'),(41,'b70ef3b27d123e4b0c3616cd5c1ee4446a4e0aed6d1418024732e385e66c62eb'),(42,'7dae7ebe85ecec08ad235050fff32d66469793934d6e6dcca1d76119bdc7c2c1'),(43,'d86f928444b6fd23594626d64da172a7847f4236fd3b242d6b0743515abbdd39'),(44,'10884fbf99f2237be4436b401b8e64908fe75a032c3733ca2e5e74be5ac2081f'),(45,'2000c60fd893fbde1d216d7af5af5a203778abf220dcc4eb67c8f65e1435d20e'),(46,'9891d4ad1725b9df3c65cee6ef67f7ee034bd0fe4e3ce36b74a0a1bc47e75f10'),(47,'8288493b66bd84b7bb23751d6ecf87591cbb5c5577accd003ac019862e28b3c0'),(48,'aa4999de3a157707ae5862a6b1937ba8200ea6ebf9f961a54cd3eac744a8756f'),(49,'b70ef3b27d123e4b0c3616cd5c1ee4446a4e0aed6d1418024732e385e66c62eb'),(50,'7dae7ebe85ecec08ad235050fff32d66469793934d6e6dcca1d76119bdc7c2c1'),(51,'d86f928444b6fd23594626d64da172a7847f4236fd3b242d6b0743515abbdd39'),(52,'10884fbf99f2237be4436b401b8e64908fe75a032c3733ca2e5e74be5ac2081f'),(53,'2000c60fd893fbde1d216d7af5af5a203778abf220dcc4eb67c8f65e1435d20e'),(54,'9891d4ad1725b9df3c65cee6ef67f7ee034bd0fe4e3ce36b74a0a1bc47e75f10'),(55,'8288493b66bd84b7bb23751d6ecf87591cbb5c5577accd003ac019862e28b3c0'),(56,'aa4999de3a157707ae5862a6b1937ba8200ea6ebf9f961a54cd3eac744a8756f'),(57,'b70ef3b27d123e4b0c3616cd5c1ee4446a4e0aed6d1418024732e385e66c62eb'),(58,'7dae7ebe85ecec08ad235050fff32d66469793934d6e6dcca1d76119bdc7c2c1'),(59,'d86f928444b6fd23594626d64da172a7847f4236fd3b242d6b0743515abbdd39'),(60,'10884fbf99f2237be4436b401b8e64908fe75a032c3733ca2e5e74be5ac2081f'),(61,'2000c60fd893fbde1d216d7af5af5a203778abf220dcc4eb67c8f65e1435d20e'),(62,'9891d4ad1725b9df3c65cee6ef67f7ee034bd0fe4e3ce36b74a0a1bc47e75f10'),(63,'8288493b66bd84b7bb23751d6ecf87591cbb5c5577accd003ac019862e28b3c0'),(64,'aa4999de3a157707ae5862a6b1937ba8200ea6ebf9f961a54cd3eac744a8756f'),(65,'b70ef3b27d123e4b0c3616cd5c1ee4446a4e0aed6d1418024732e385e66c62eb'),(66,'7dae7ebe85ecec08ad235050fff32d66469793934d6e6dcca1d76119bdc7c2c1'),(67,'d86f928444b6fd23594626d64da172a7847f4236fd3b242d6b0743515abbdd39'),(68,'10884fbf99f2237be4436b401b8e64908fe75a032c3733ca2e5e74be5ac2081f'),(69,'2000c60fd893fbde1d216d7af5af5a203778abf220dcc4eb67c8f65e1435d20e'),(70,'9891d4ad1725b9df3c65cee6ef67f7ee034bd0fe4e3ce36b74a0a1bc47e75f10'),(71,'8288493b66bd84b7bb23751d6ecf87591cbb5c5577accd003ac019862e28b3c0'),(72,'aa4999de3a157707ae5862a6b1937ba8200ea6ebf9f961a54cd3eac744a8756f'),(73,'b70ef3b27d123e4b0c3616cd5c1ee4446a4e0aed6d1418024732e385e66c62eb'),(74,'7dae7ebe85ecec08ad235050fff32d66469793934d6e6dcca1d76119bdc7c2c1'),(75,'d86f928444b6fd23594626d64da172a7847f4236fd3b242d6b0743515abbdd39'),(76,'10884fbf99f2237be4436b401b8e64908fe75a032c3733ca2e5e74be5ac2081f'),(77,'2000c60fd893fbde1d216d7af5af5a203778abf220dcc4eb67c8f65e1435d20e'),(78,'9891d4ad1725b9df3c65cee6ef67f7ee034bd0fe4e3ce36b74a0a1bc47e75f10'),(79,'8288493b66bd84b7bb23751d6ecf87591cbb5c5577accd003ac019862e28b3c0'),(80,'aa4999de3a157707ae5862a6b1937ba8200ea6ebf9f961a54cd3eac744a8756f'),(81,'b70ef3b27d123e4b0c3616cd5c1ee4446a4e0aed6d1418024732e385e66c62eb'),(82,'7dae7ebe85ecec08ad235050fff32d66469793934d6e6dcca1d76119bdc7c2c1'),(83,'d86f928444b6fd23594626d64da172a7847f4236fd3b242d6b0743515abbdd39'),(84,'10884fbf99f2237be4436b401b8e64908fe75a032c3733ca2e5e74be5ac2081f'),(85,'2000c60fd893fbde1d216d7af5af5a203778abf220dcc4eb67c8f65e1435d20e'),(86,'9891d4ad1725b9df3c65cee6ef67f7ee034bd0fe4e3ce36b74a0a1bc47e75f10'),(87,'8288493b66bd84b7bb23751d6ecf87591cbb5c5577accd003ac019862e28b3c0'),(88,'aa4999de3a157707ae5862a6b1937ba8200ea6ebf9f961a54cd3eac744a8756f'),(89,'b70ef3b27d123e4b0c3616cd5c1ee4446a4e0aed6d1418024732e385e66c62eb'),(90,'7dae7ebe85ecec08ad235050fff32d66469793934d6e6dcca1d76119bdc7c2c1'),(91,'d86f928444b6fd23594626d64da172a7847f4236fd3b242d6b0743515abbdd39'),(92,'10884fbf99f2237be4436b401b8e64908fe75a032c3733ca2e5e74be5ac2081f'),(93,'2000c60fd893fbde1d216d7af5af5a203778abf220dcc4eb67c8f65e1435d20e'),(94,'9891d4ad1725b9df3c65cee6ef67f7ee034bd0fe4e3ce36b74a0a1bc47e75f10'),(95,'8288493b66bd84b7bb23751d6ecf87591cbb5c5577accd003ac019862e28b3c0'),(96,'aa4999de3a157707ae5862a6b1937ba8200ea6ebf9f961a54cd3eac744a8756f'),(97,'b70ef3b27d123e4b0c3616cd5c1ee4446a4e0aed6d1418024732e385e66c62eb'),(98,'7dae7ebe85ecec08ad235050fff32d66469793934d6e6dcca1d76119bdc7c2c1'),(99,'d86f928444b6fd23594626d64da172a7847f4236fd3b242d6b0743515abbdd39'),(100,'10884fbf99f2237be4436b401b8e64908fe75a032c3733ca2e5e74be5ac2081f'),(101,'2000c60fd893fbde1d216d7af5af5a203778abf220dcc4eb67c8f65e1435d20e'),(102,'9891d4ad1725b9df3c65cee6ef67f7ee034bd0fe4e3ce36b74a0a1bc47e75f10'),(103,'8288493b66bd84b7bb23751d6ecf87591cbb5c5577accd003ac019862e28b3c0'),(104,'aa4999de3a157707ae5862a6b1937ba8200ea6ebf9f961a54cd3eac744a8756f'),(105,'b70ef3b27d123e4b0c3616cd5c1ee4446a4e0aed6d1418024732e385e66c62eb'),(106,'7dae7ebe85ecec08ad235050fff32d66469793934d6e6dcca1d76119bdc7c2c1'),(107,'d86f928444b6fd23594626d64da172a7847f4236fd3b242d6b0743515abbdd39'),(108,'10884fbf99f2237be4436b401b8e64908fe75a032c3733ca2e5e74be5ac2081f'),(109,'2000c60fd893fbde1d216d7af5af5a203778abf220dcc4eb67c8f65e1435d20e'),(110,'9891d4ad1725b9df3c65cee6ef67f7ee034bd0fe4e3ce36b74a0a1bc47e75f10'),(111,'8288493b66bd84b7bb23751d6ecf87591cbb5c5577accd003ac019862e28b3c0'),(112,'aa4999de3a157707ae5862a6b1937ba8200ea6ebf9f961a54cd3eac744a8756f'),(113,'b70ef3b27d123e4b0c3616cd5c1ee4446a4e0aed6d1418024732e385e66c62eb'),(114,'7dae7ebe85ecec08ad235050fff32d66469793934d6e6dcca1d76119bdc7c2c1'),(115,'d86f928444b6fd23594626d64da172a7847f4236fd3b242d6b0743515abbdd39'),(116,'10884fbf99f2237be4436b401b8e64908fe75a032c3733ca2e5e74be5ac2081f'),(117,'2000c60fd893fbde1d216d7af5af5a203778abf220dcc4eb67c8f65e1435d20e'),(118,'9891d4ad1725b9df3c65cee6ef67f7ee034bd0fe4e3ce36b74a0a1bc47e75f10'),(119,'8288493b66bd84b7bb23751d6ecf87591cbb5c5577accd003ac019862e28b3c0'),(120,'aa4999de3a157707ae5862a6b1937ba8200ea6ebf9f961a54cd3eac744a8756f'),(121,'b70ef3b27d123e4b0c3616cd5c1ee4446a4e0aed6d1418024732e385e66c62eb'),(122,'7dae7ebe85ecec08ad235050fff32d66469793934d6e6dcca1d76119bdc7c2c1'),(123,'d86f928444b6fd23594626d64da172a7847f4236fd3b242d6b0743515abbdd39'),(124,'10884fbf99f2237be4436b401b8e64908fe75a032c3733ca2e5e74be5ac2081f'),(125,'2000c60fd893fbde1d216d7af5af5a203778abf220dcc4eb67c8f65e1435d20e'),(126,'9891d4ad1725b9df3c65cee6ef67f7ee034bd0fe4e3ce36b74a0a1bc47e75f10'),(127,'8288493b66bd84b7bb23751d6ecf87591cbb5c5577accd003ac019862e28b3c0'),(128,'aa4999de3a157707ae5862a6b1937ba8200ea6ebf9f961a54cd3eac744a8756f'),(129,'b70ef3b27d123e4b0c3616cd5c1ee4446a4e0aed6d1418024732e385e66c62eb'),(130,'7dae7ebe85ecec08ad235050fff32d66469793934d6e6dcca1d76119bdc7c2c1'),(131,'d86f928444b6fd23594626d64da172a7847f4236fd3b242d6b0743515abbdd39'),(132,'10884fbf99f2237be4436b401b8e64908fe75a032c3733ca2e5e74be5ac2081f'),(133,'2000c60fd893fbde1d216d7af5af5a203778abf220dcc4eb67c8f65e1435d20e'),(134,'9891d4ad1725b9df3c65cee6ef67f7ee034bd0fe4e3ce36b74a0a1bc47e75f10'),(135,'8288493b66bd84b7bb23751d6ecf87591cbb5c5577accd003ac019862e28b3c0'),(136,'aa4999de3a157707ae5862a6b1937ba8200ea6ebf9f961a54cd3eac744a8756f'),(137,'b70ef3b27d123e4b0c3616cd5c1ee4446a4e0aed6d1418024732e385e66c62eb'),(138,'7dae7ebe85ecec08ad235050fff32d66469793934d6e6dcca1d76119bdc7c2c1'),(139,'d86f928444b6fd23594626d64da172a7847f4236fd3b242d6b0743515abbdd39'),(140,'10884fbf99f2237be4436b401b8e64908fe75a032c3733ca2e5e74be5ac2081f'),(141,'2000c60fd893fbde1d216d7af5af5a203778abf220dcc4eb67c8f65e1435d20e'),(142,'9891d4ad1725b9df3c65cee6ef67f7ee034bd0fe4e3ce36b74a0a1bc47e75f10'),(143,'8288493b66bd84b7bb23751d6ecf87591cbb5c5577accd003ac019862e28b3c0'),(144,'aa4999de3a157707ae5862a6b1937ba8200ea6ebf9f961a54cd3eac744a8756f'),(145,'b70ef3b27d123e4b0c3616cd5c1ee4446a4e0aed6d1418024732e385e66c62eb'),(146,'7dae7ebe85ecec08ad235050fff32d66469793934d6e6dcca1d76119bdc7c2c1'),(147,'d86f928444b6fd23594626d64da172a7847f4236fd3b242d6b0743515abbdd39'),(148,'10884fbf99f2237be4436b401b8e64908fe75a032c3733ca2e5e74be5ac2081f'),(149,'2000c60fd893fbde1d216d7af5af5a203778abf220dcc4eb67c8f65e1435d20e'),(150,'9891d4ad1725b9df3c65cee6ef67f7ee034bd0fe4e3ce36b74a0a1bc47e75f10'),(151,'8288493b66bd84b7bb23751d6ecf87591cbb5c5577accd003ac019862e28b3c0'),(152,'aa4999de3a157707ae5862a6b1937ba8200ea6ebf9f961a54cd3eac744a8756f'),(153,'b70ef3b27d123e4b0c3616cd5c1ee4446a4e0aed6d1418024732e385e66c62eb'),(154,'7dae7ebe85ecec08ad235050fff32d66469793934d6e6dcca1d76119bdc7c2c1'),(155,'d86f928444b6fd23594626d64da172a7847f4236fd3b242d6b0743515abbdd39'),(156,'10884fbf99f2237be4436b401b8e64908fe75a032c3733ca2e5e74be5ac2081f'),(157,'2000c60fd893fbde1d216d7af5af5a203778abf220dcc4eb67c8f65e1435d20e'),(158,'9891d4ad1725b9df3c65cee6ef67f7ee034bd0fe4e3ce36b74a0a1bc47e75f10'),(159,'8288493b66bd84b7bb23751d6ecf87591cbb5c5577accd003ac019862e28b3c0'),(160,'aa4999de3a157707ae5862a6b1937ba8200ea6ebf9f961a54cd3eac744a8756f'),(161,'b70ef3b27d123e4b0c3616cd5c1ee4446a4e0aed6d1418024732e385e66c62eb'),(162,'7dae7ebe85ecec08ad235050fff32d66469793934d6e6dcca1d76119bdc7c2c1'),(163,'d86f928444b6fd23594626d64da172a7847f4236fd3b242d6b0743515abbdd39'),(164,'10884fbf99f2237be4436b401b8e64908fe75a032c3733ca2e5e74be5ac2081f'),(165,'2000c60fd893fbde1d216d7af5af5a203778abf220dcc4eb67c8f65e1435d20e'),(166,'9891d4ad1725b9df3c65cee6ef67f7ee034bd0fe4e3ce36b74a0a1bc47e75f10'),(167,'8288493b66bd84b7bb23751d6ecf87591cbb5c5577accd003ac019862e28b3c0'),(168,'aa4999de3a157707ae5862a6b1937ba8200ea6ebf9f961a54cd3eac744a8756f'),(169,'b70ef3b27d123e4b0c3616cd5c1ee4446a4e0aed6d1418024732e385e66c62eb'),(170,'7dae7ebe85ecec08ad235050fff32d66469793934d6e6dcca1d76119bdc7c2c1'),(171,'d86f928444b6fd23594626d64da172a7847f4236fd3b242d6b0743515abbdd39'),(172,'10884fbf99f2237be4436b401b8e64908fe75a032c3733ca2e5e74be5ac2081f'),(173,'2000c60fd893fbde1d216d7af5af5a203778abf220dcc4eb67c8f65e1435d20e'),(174,'9891d4ad1725b9df3c65cee6ef67f7ee034bd0fe4e3ce36b74a0a1bc47e75f10'),(175,'8288493b66bd84b7bb23751d6ecf87591cbb5c5577accd003ac019862e28b3c0'),(176,'aa4999de3a157707ae5862a6b1937ba8200ea6ebf9f961a54cd3eac744a8756f'),(177,'b70ef3b27d123e4b0c3616cd5c1ee4446a4e0aed6d1418024732e385e66c62eb'),(178,'7dae7ebe85ecec08ad235050fff32d66469793934d6e6dcca1d76119bdc7c2c1'),(179,'d86f928444b6fd23594626d64da172a7847f4236fd3b242d6b0743515abbdd39'),(180,'10884fbf99f2237be4436b401b8e64908fe75a032c3733ca2e5e74be5ac2081f'),(181,'2000c60fd893fbde1d216d7af5af5a203778abf220dcc4eb67c8f65e1435d20e'),(182,'9891d4ad1725b9df3c65cee6ef67f7ee034bd0fe4e3ce36b74a0a1bc47e75f10'),(183,'8288493b66bd84b7bb23751d6ecf87591cbb5c5577accd003ac019862e28b3c0'),(184,'aa4999de3a157707ae5862a6b1937ba8200ea6ebf9f961a54cd3eac744a8756f'),(185,'b70ef3b27d123e4b0c3616cd5c1ee4446a4e0aed6d1418024732e385e66c62eb'),(186,'7dae7ebe85ecec08ad235050fff32d66469793934d6e6dcca1d76119bdc7c2c1'),(187,'d86f928444b6fd23594626d64da172a7847f4236fd3b242d6b0743515abbdd39'),(188,'10884fbf99f2237be4436b401b8e64908fe75a032c3733ca2e5e74be5ac2081f'),(189,'2000c60fd893fbde1d216d7af5af5a203778abf220dcc4eb67c8f65e1435d20e'),(190,'9891d4ad1725b9df3c65cee6ef67f7ee034bd0fe4e3ce36b74a0a1bc47e75f10'),(191,'8288493b66bd84b7bb23751d6ecf87591cbb5c5577accd003ac019862e28b3c0'),(192,'aa4999de3a157707ae5862a6b1937ba8200ea6ebf9f961a54cd3eac744a8756f'),(193,'b70ef3b27d123e4b0c3616cd5c1ee4446a4e0aed6d1418024732e385e66c62eb'),(194,'7dae7ebe85ecec08ad235050fff32d66469793934d6e6dcca1d76119bdc7c2c1'),(195,'d86f928444b6fd23594626d64da172a7847f4236fd3b242d6b0743515abbdd39'),(196,'10884fbf99f2237be4436b401b8e64908fe75a032c3733ca2e5e74be5ac2081f'),(197,'2000c60fd893fbde1d216d7af5af5a203778abf220dcc4eb67c8f65e1435d20e'),(198,'9891d4ad1725b9df3c65cee6ef67f7ee034bd0fe4e3ce36b74a0a1bc47e75f10'),(199,'8288493b66bd84b7bb23751d6ecf87591cbb5c5577accd003ac019862e28b3c0'),(200,'aa4999de3a157707ae5862a6b1937ba8200ea6ebf9f961a54cd3eac744a8756f'),(201,'b70ef3b27d123e4b0c3616cd5c1ee4446a4e0aed6d1418024732e385e66c62eb'),(202,'7dae7ebe85ecec08ad235050fff32d66469793934d6e6dcca1d76119bdc7c2c1'),(203,'d86f928444b6fd23594626d64da172a7847f4236fd3b242d6b0743515abbdd39'),(204,'10884fbf99f2237be4436b401b8e64908fe75a032c3733ca2e5e74be5ac2081f'),(205,'2000c60fd893fbde1d216d7af5af5a203778abf220dcc4eb67c8f65e1435d20e'),(206,'9891d4ad1725b9df3c65cee6ef67f7ee034bd0fe4e3ce36b74a0a1bc47e75f10'),(207,'8288493b66bd84b7bb23751d6ecf87591cbb5c5577accd003ac019862e28b3c0'),(208,'aa4999de3a157707ae5862a6b1937ba8200ea6ebf9f961a54cd3eac744a8756f'),(209,'b70ef3b27d123e4b0c3616cd5c1ee4446a4e0aed6d1418024732e385e66c62eb'),(210,'7dae7ebe85ecec08ad235050fff32d66469793934d6e6dcca1d76119bdc7c2c1'),(211,'d86f928444b6fd23594626d64da172a7847f4236fd3b242d6b0743515abbdd39'),(212,'10884fbf99f2237be4436b401b8e64908fe75a032c3733ca2e5e74be5ac2081f'),(213,'2000c60fd893fbde1d216d7af5af5a203778abf220dcc4eb67c8f65e1435d20e'),(214,'9891d4ad1725b9df3c65cee6ef67f7ee034bd0fe4e3ce36b74a0a1bc47e75f10'),(215,'8288493b66bd84b7bb23751d6ecf87591cbb5c5577accd003ac019862e28b3c0'),(216,'aa4999de3a157707ae5862a6b1937ba8200ea6ebf9f961a54cd3eac744a8756f'),(217,'b70ef3b27d123e4b0c3616cd5c1ee4446a4e0aed6d1418024732e385e66c62eb'),(218,'7dae7ebe85ecec08ad235050fff32d66469793934d6e6dcca1d76119bdc7c2c1'),(219,'d86f928444b6fd23594626d64da172a7847f4236fd3b242d6b0743515abbdd39'),(220,'10884fbf99f2237be4436b401b8e64908fe75a032c3733ca2e5e74be5ac2081f'),(221,'2000c60fd893fbde1d216d7af5af5a203778abf220dcc4eb67c8f65e1435d20e'),(222,'9891d4ad1725b9df3c65cee6ef67f7ee034bd0fe4e3ce36b74a0a1bc47e75f10'),(223,'8288493b66bd84b7bb23751d6ecf87591cbb5c5577accd003ac019862e28b3c0'),(224,'aa4999de3a157707ae5862a6b1937ba8200ea6ebf9f961a54cd3eac744a8756f'),(225,'b70ef3b27d123e4b0c3616cd5c1ee4446a4e0aed6d1418024732e385e66c62eb'),(226,'7dae7ebe85ecec08ad235050fff32d66469793934d6e6dcca1d76119bdc7c2c1'),(227,'d86f928444b6fd23594626d64da172a7847f4236fd3b242d6b0743515abbdd39'),(228,'10884fbf99f2237be4436b401b8e64908fe75a032c3733ca2e5e74be5ac2081f'),(229,'2000c60fd893fbde1d216d7af5af5a203778abf220dcc4eb67c8f65e1435d20e'),(230,'9891d4ad1725b9df3c65cee6ef67f7ee034bd0fe4e3ce36b74a0a1bc47e75f10'),(231,'8288493b66bd84b7bb23751d6ecf87591cbb5c5577accd003ac019862e28b3c0'),(232,'aa4999de3a157707ae5862a6b1937ba8200ea6ebf9f961a54cd3eac744a8756f'),(233,'b70ef3b27d123e4b0c3616cd5c1ee4446a4e0aed6d1418024732e385e66c62eb'),(234,'7dae7ebe85ecec08ad235050fff32d66469793934d6e6dcca1d76119bdc7c2c1'),(235,'d86f928444b6fd23594626d64da172a7847f4236fd3b242d6b0743515abbdd39'),(236,'10884fbf99f2237be4436b401b8e64908fe75a032c3733ca2e5e74be5ac2081f'),(237,'2000c60fd893fbde1d216d7af5af5a203778abf220dcc4eb67c8f65e1435d20e'),(238,'9891d4ad1725b9df3c65cee6ef67f7ee034bd0fe4e3ce36b74a0a1bc47e75f10'),(239,'8288493b66bd84b7bb23751d6ecf87591cbb5c5577accd003ac019862e28b3c0'),(240,'aa4999de3a157707ae5862a6b1937ba8200ea6ebf9f961a54cd3eac744a8756f'),(241,'b70ef3b27d123e4b0c3616cd5c1ee4446a4e0aed6d1418024732e385e66c62eb'),(242,'7dae7ebe85ecec08ad235050fff32d66469793934d6e6dcca1d76119bdc7c2c1'),(243,'d86f928444b6fd23594626d64da172a7847f4236fd3b242d6b0743515abbdd39'),(244,'10884fbf99f2237be4436b401b8e64908fe75a032c3733ca2e5e74be5ac2081f'),(245,'2000c60fd893fbde1d216d7af5af5a203778abf220dcc4eb67c8f65e1435d20e'),(246,'9891d4ad1725b9df3c65cee6ef67f7ee034bd0fe4e3ce36b74a0a1bc47e75f10'),(247,'8288493b66bd84b7bb23751d6ecf87591cbb5c5577accd003ac019862e28b3c0'),(248,'aa4999de3a157707ae5862a6b1937ba8200ea6ebf9f961a54cd3eac744a8756f'),(249,'b70ef3b27d123e4b0c3616cd5c1ee4446a4e0aed6d1418024732e385e66c62eb'),(250,'7dae7ebe85ecec08ad235050fff32d66469793934d6e6dcca1d76119bdc7c2c1'),(251,'d86f928444b6fd23594626d64da172a7847f4236fd3b242d6b0743515abbdd39'),(252,'10884fbf99f2237be4436b401b8e64908fe75a032c3733ca2e5e74be5ac2081f'),(253,'2000c60fd893fbde1d216d7af5af5a203778abf220dcc4eb67c8f65e1435d20e'),(254,'9891d4ad1725b9df3c65cee6ef67f7ee034bd0fe4e3ce36b74a0a1bc47e75f10'),(255,'2000c60fd893fbde1d216d7af5af5a203778abf220dcc4eb67c8f65e1435d20e'),(256,'9891d4ad1725b9df3c65cee6ef67f7ee034bd0fe4e3ce36b74a0a1bc47e75f10'),(257,'8288493b66bd84b7bb23751d6ecf87591cbb5c5577accd003ac019862e28b3c0'),(258,'8288493b66bd84b7bb23751d6ecf87591cbb5c5577accd003ac019862e28b3c0'),(259,'aa4999de3a157707ae5862a6b1937ba8200ea6ebf9f961a54cd3eac744a8756f'),(260,'aa4999de3a157707ae5862a6b1937ba8200ea6ebf9f961a54cd3eac744a8756f'),(261,'b70ef3b27d123e4b0c3616cd5c1ee4446a4e0aed6d1418024732e385e66c62eb'),(262,'7dae7ebe85ecec08ad235050fff32d66469793934d6e6dcca1d76119bdc7c2c1'),(263,'b70ef3b27d123e4b0c3616cd5c1ee4446a4e0aed6d1418024732e385e66c62eb'),(264,'7dae7ebe85ecec08ad235050fff32d66469793934d6e6dcca1d76119bdc7c2c1'),(265,'d86f928444b6fd23594626d64da172a7847f4236fd3b242d6b0743515abbdd39'),(266,'10884fbf99f2237be4436b401b8e64908fe75a032c3733ca2e5e74be5ac2081f'),(267,'d86f928444b6fd23594626d64da172a7847f4236fd3b242d6b0743515abbdd39'),(268,'10884fbf99f2237be4436b401b8e64908fe75a032c3733ca2e5e74be5ac2081f'),(269,'2000c60fd893fbde1d216d7af5af5a203778abf220dcc4eb67c8f65e1435d20e'),(270,'9891d4ad1725b9df3c65cee6ef67f7ee034bd0fe4e3ce36b74a0a1bc47e75f10'),(271,'8288493b66bd84b7bb23751d6ecf87591cbb5c5577accd003ac019862e28b3c0'),(272,'aa4999de3a157707ae5862a6b1937ba8200ea6ebf9f961a54cd3eac744a8756f'),(273,'b70ef3b27d123e4b0c3616cd5c1ee4446a4e0aed6d1418024732e385e66c62eb'),(274,'7dae7ebe85ecec08ad235050fff32d66469793934d6e6dcca1d76119bdc7c2c1'),(275,'d86f928444b6fd23594626d64da172a7847f4236fd3b242d6b0743515abbdd39'),(276,'10884fbf99f2237be4436b401b8e64908fe75a032c3733ca2e5e74be5ac2081f'),(277,'2000c60fd893fbde1d216d7af5af5a203778abf220dcc4eb67c8f65e1435d20e'),(278,'9891d4ad1725b9df3c65cee6ef67f7ee034bd0fe4e3ce36b74a0a1bc47e75f10'),(279,'8288493b66bd84b7bb23751d6ecf87591cbb5c5577accd003ac019862e28b3c0'),(280,'aa4999de3a157707ae5862a6b1937ba8200ea6ebf9f961a54cd3eac744a8756f'),(281,'b70ef3b27d123e4b0c3616cd5c1ee4446a4e0aed6d1418024732e385e66c62eb'),(282,'7dae7ebe85ecec08ad235050fff32d66469793934d6e6dcca1d76119bdc7c2c1'),(283,'d86f928444b6fd23594626d64da172a7847f4236fd3b242d6b0743515abbdd39'),(284,'10884fbf99f2237be4436b401b8e64908fe75a032c3733ca2e5e74be5ac2081f'),(285,'2000c60fd893fbde1d216d7af5af5a203778abf220dcc4eb67c8f65e1435d20e'),(286,'9891d4ad1725b9df3c65cee6ef67f7ee034bd0fe4e3ce36b74a0a1bc47e75f10'),(287,'8288493b66bd84b7bb23751d6ecf87591cbb5c5577accd003ac019862e28b3c0'),(288,'aa4999de3a157707ae5862a6b1937ba8200ea6ebf9f961a54cd3eac744a8756f'),(289,'b70ef3b27d123e4b0c3616cd5c1ee4446a4e0aed6d1418024732e385e66c62eb'),(290,'7dae7ebe85ecec08ad235050fff32d66469793934d6e6dcca1d76119bdc7c2c1'),(291,'d86f928444b6fd23594626d64da172a7847f4236fd3b242d6b0743515abbdd39'),(292,'10884fbf99f2237be4436b401b8e64908fe75a032c3733ca2e5e74be5ac2081f'),(293,'2000c60fd893fbde1d216d7af5af5a203778abf220dcc4eb67c8f65e1435d20e'),(294,'9891d4ad1725b9df3c65cee6ef67f7ee034bd0fe4e3ce36b74a0a1bc47e75f10'),(295,'8288493b66bd84b7bb23751d6ecf87591cbb5c5577accd003ac019862e28b3c0'),(296,'aa4999de3a157707ae5862a6b1937ba8200ea6ebf9f961a54cd3eac744a8756f'),(297,'b70ef3b27d123e4b0c3616cd5c1ee4446a4e0aed6d1418024732e385e66c62eb'),(298,'7dae7ebe85ecec08ad235050fff32d66469793934d6e6dcca1d76119bdc7c2c1'),(299,'d86f928444b6fd23594626d64da172a7847f4236fd3b242d6b0743515abbdd39'),(300,'10884fbf99f2237be4436b401b8e64908fe75a032c3733ca2e5e74be5ac2081f'),(301,'2000c60fd893fbde1d216d7af5af5a203778abf220dcc4eb67c8f65e1435d20e'),(302,'9891d4ad1725b9df3c65cee6ef67f7ee034bd0fe4e3ce36b74a0a1bc47e75f10'),(303,'8288493b66bd84b7bb23751d6ecf87591cbb5c5577accd003ac019862e28b3c0'),(304,'aa4999de3a157707ae5862a6b1937ba8200ea6ebf9f961a54cd3eac744a8756f'),(305,'b70ef3b27d123e4b0c3616cd5c1ee4446a4e0aed6d1418024732e385e66c62eb'),(306,'7dae7ebe85ecec08ad235050fff32d66469793934d6e6dcca1d76119bdc7c2c1'),(307,'d86f928444b6fd23594626d64da172a7847f4236fd3b242d6b0743515abbdd39'),(308,'10884fbf99f2237be4436b401b8e64908fe75a032c3733ca2e5e74be5ac2081f'),(309,'2000c60fd893fbde1d216d7af5af5a203778abf220dcc4eb67c8f65e1435d20e'),(310,'9891d4ad1725b9df3c65cee6ef67f7ee034bd0fe4e3ce36b74a0a1bc47e75f10'),(311,'8288493b66bd84b7bb23751d6ecf87591cbb5c5577accd003ac019862e28b3c0'),(312,'aa4999de3a157707ae5862a6b1937ba8200ea6ebf9f961a54cd3eac744a8756f'),(313,'b70ef3b27d123e4b0c3616cd5c1ee4446a4e0aed6d1418024732e385e66c62eb'),(314,'7dae7ebe85ecec08ad235050fff32d66469793934d6e6dcca1d76119bdc7c2c1'),(315,'d86f928444b6fd23594626d64da172a7847f4236fd3b242d6b0743515abbdd39'),(316,'10884fbf99f2237be4436b401b8e64908fe75a032c3733ca2e5e74be5ac2081f'),(317,'2000c60fd893fbde1d216d7af5af5a203778abf220dcc4eb67c8f65e1435d20e'),(318,'9891d4ad1725b9df3c65cee6ef67f7ee034bd0fe4e3ce36b74a0a1bc47e75f10'),(319,'8288493b66bd84b7bb23751d6ecf87591cbb5c5577accd003ac019862e28b3c0'),(320,'aa4999de3a157707ae5862a6b1937ba8200ea6ebf9f961a54cd3eac744a8756f'),(321,'b70ef3b27d123e4b0c3616cd5c1ee4446a4e0aed6d1418024732e385e66c62eb'),(322,'7dae7ebe85ecec08ad235050fff32d66469793934d6e6dcca1d76119bdc7c2c1'),(323,'d86f928444b6fd23594626d64da172a7847f4236fd3b242d6b0743515abbdd39'),(324,'10884fbf99f2237be4436b401b8e64908fe75a032c3733ca2e5e74be5ac2081f'),(325,'2000c60fd893fbde1d216d7af5af5a203778abf220dcc4eb67c8f65e1435d20e'),(326,'9891d4ad1725b9df3c65cee6ef67f7ee034bd0fe4e3ce36b74a0a1bc47e75f10'),(327,'8288493b66bd84b7bb23751d6ecf87591cbb5c5577accd003ac019862e28b3c0'),(328,'aa4999de3a157707ae5862a6b1937ba8200ea6ebf9f961a54cd3eac744a8756f'),(329,'b70ef3b27d123e4b0c3616cd5c1ee4446a4e0aed6d1418024732e385e66c62eb'),(330,'7dae7ebe85ecec08ad235050fff32d66469793934d6e6dcca1d76119bdc7c2c1'),(331,'d86f928444b6fd23594626d64da172a7847f4236fd3b242d6b0743515abbdd39'),(332,'10884fbf99f2237be4436b401b8e64908fe75a032c3733ca2e5e74be5ac2081f'),(333,'2000c60fd893fbde1d216d7af5af5a203778abf220dcc4eb67c8f65e1435d20e'),(334,'9891d4ad1725b9df3c65cee6ef67f7ee034bd0fe4e3ce36b74a0a1bc47e75f10'),(335,'8288493b66bd84b7bb23751d6ecf87591cbb5c5577accd003ac019862e28b3c0'),(336,'aa4999de3a157707ae5862a6b1937ba8200ea6ebf9f961a54cd3eac744a8756f'),(337,'b70ef3b27d123e4b0c3616cd5c1ee4446a4e0aed6d1418024732e385e66c62eb'),(338,'7dae7ebe85ecec08ad235050fff32d66469793934d6e6dcca1d76119bdc7c2c1'),(339,'d86f928444b6fd23594626d64da172a7847f4236fd3b242d6b0743515abbdd39'),(340,'10884fbf99f2237be4436b401b8e64908fe75a032c3733ca2e5e74be5ac2081f'),(341,'2000c60fd893fbde1d216d7af5af5a203778abf220dcc4eb67c8f65e1435d20e'),(342,'9891d4ad1725b9df3c65cee6ef67f7ee034bd0fe4e3ce36b74a0a1bc47e75f10'),(343,'8288493b66bd84b7bb23751d6ecf87591cbb5c5577accd003ac019862e28b3c0'),(344,'aa4999de3a157707ae5862a6b1937ba8200ea6ebf9f961a54cd3eac744a8756f'),(345,'b70ef3b27d123e4b0c3616cd5c1ee4446a4e0aed6d1418024732e385e66c62eb'),(346,'7dae7ebe85ecec08ad235050fff32d66469793934d6e6dcca1d76119bdc7c2c1'),(347,'d86f928444b6fd23594626d64da172a7847f4236fd3b242d6b0743515abbdd39'),(348,'10884fbf99f2237be4436b401b8e64908fe75a032c3733ca2e5e74be5ac2081f'),(349,'2000c60fd893fbde1d216d7af5af5a203778abf220dcc4eb67c8f65e1435d20e'),(350,'9891d4ad1725b9df3c65cee6ef67f7ee034bd0fe4e3ce36b74a0a1bc47e75f10'),(351,'8288493b66bd84b7bb23751d6ecf87591cbb5c5577accd003ac019862e28b3c0'),(352,'aa4999de3a157707ae5862a6b1937ba8200ea6ebf9f961a54cd3eac744a8756f'),(353,'b70ef3b27d123e4b0c3616cd5c1ee4446a4e0aed6d1418024732e385e66c62eb'),(354,'7dae7ebe85ecec08ad235050fff32d66469793934d6e6dcca1d76119bdc7c2c1'),(355,'d86f928444b6fd23594626d64da172a7847f4236fd3b242d6b0743515abbdd39'),(356,'10884fbf99f2237be4436b401b8e64908fe75a032c3733ca2e5e74be5ac2081f'),(357,'2000c60fd893fbde1d216d7af5af5a203778abf220dcc4eb67c8f65e1435d20e'),(358,'9891d4ad1725b9df3c65cee6ef67f7ee034bd0fe4e3ce36b74a0a1bc47e75f10'),(359,'8288493b66bd84b7bb23751d6ecf87591cbb5c5577accd003ac019862e28b3c0'),(360,'aa4999de3a157707ae5862a6b1937ba8200ea6ebf9f961a54cd3eac744a8756f'),(361,'b70ef3b27d123e4b0c3616cd5c1ee4446a4e0aed6d1418024732e385e66c62eb'),(362,'7dae7ebe85ecec08ad235050fff32d66469793934d6e6dcca1d76119bdc7c2c1'),(363,'d86f928444b6fd23594626d64da172a7847f4236fd3b242d6b0743515abbdd39'),(364,'10884fbf99f2237be4436b401b8e64908fe75a032c3733ca2e5e74be5ac2081f'),(365,'2000c60fd893fbde1d216d7af5af5a203778abf220dcc4eb67c8f65e1435d20e'),(366,'9891d4ad1725b9df3c65cee6ef67f7ee034bd0fe4e3ce36b74a0a1bc47e75f10'),(367,'8288493b66bd84b7bb23751d6ecf87591cbb5c5577accd003ac019862e28b3c0'),(368,'aa4999de3a157707ae5862a6b1937ba8200ea6ebf9f961a54cd3eac744a8756f'),(369,'b70ef3b27d123e4b0c3616cd5c1ee4446a4e0aed6d1418024732e385e66c62eb'),(370,'7dae7ebe85ecec08ad235050fff32d66469793934d6e6dcca1d76119bdc7c2c1'),(371,'d86f928444b6fd23594626d64da172a7847f4236fd3b242d6b0743515abbdd39'),(372,'10884fbf99f2237be4436b401b8e64908fe75a032c3733ca2e5e74be5ac2081f'),(373,'2000c60fd893fbde1d216d7af5af5a203778abf220dcc4eb67c8f65e1435d20e'),(374,'9891d4ad1725b9df3c65cee6ef67f7ee034bd0fe4e3ce36b74a0a1bc47e75f10'),(375,'8288493b66bd84b7bb23751d6ecf87591cbb5c5577accd003ac019862e28b3c0'),(376,'aa4999de3a157707ae5862a6b1937ba8200ea6ebf9f961a54cd3eac744a8756f'),(377,'b70ef3b27d123e4b0c3616cd5c1ee4446a4e0aed6d1418024732e385e66c62eb'),(378,'7dae7ebe85ecec08ad235050fff32d66469793934d6e6dcca1d76119bdc7c2c1'),(379,'d86f928444b6fd23594626d64da172a7847f4236fd3b242d6b0743515abbdd39'),(380,'10884fbf99f2237be4436b401b8e64908fe75a032c3733ca2e5e74be5ac2081f'),(381,'2000c60fd893fbde1d216d7af5af5a203778abf220dcc4eb67c8f65e1435d20e'),(382,'9891d4ad1725b9df3c65cee6ef67f7ee034bd0fe4e3ce36b74a0a1bc47e75f10'),(383,'8288493b66bd84b7bb23751d6ecf87591cbb5c5577accd003ac019862e28b3c0'),(384,'aa4999de3a157707ae5862a6b1937ba8200ea6ebf9f961a54cd3eac744a8756f'),(385,'b70ef3b27d123e4b0c3616cd5c1ee4446a4e0aed6d1418024732e385e66c62eb'),(386,'7dae7ebe85ecec08ad235050fff32d66469793934d6e6dcca1d76119bdc7c2c1'),(387,'d86f928444b6fd23594626d64da172a7847f4236fd3b242d6b0743515abbdd39'),(388,'10884fbf99f2237be4436b401b8e64908fe75a032c3733ca2e5e74be5ac2081f'),(389,'2000c60fd893fbde1d216d7af5af5a203778abf220dcc4eb67c8f65e1435d20e'),(390,'9891d4ad1725b9df3c65cee6ef67f7ee034bd0fe4e3ce36b74a0a1bc47e75f10'),(391,'8288493b66bd84b7bb23751d6ecf87591cbb5c5577accd003ac019862e28b3c0'),(392,'aa4999de3a157707ae5862a6b1937ba8200ea6ebf9f961a54cd3eac744a8756f'),(393,'b70ef3b27d123e4b0c3616cd5c1ee4446a4e0aed6d1418024732e385e66c62eb'),(394,'7dae7ebe85ecec08ad235050fff32d66469793934d6e6dcca1d76119bdc7c2c1'),(395,'d86f928444b6fd23594626d64da172a7847f4236fd3b242d6b0743515abbdd39'),(396,'10884fbf99f2237be4436b401b8e64908fe75a032c3733ca2e5e74be5ac2081f'),(397,'2000c60fd893fbde1d216d7af5af5a203778abf220dcc4eb67c8f65e1435d20e'),(398,'9891d4ad1725b9df3c65cee6ef67f7ee034bd0fe4e3ce36b74a0a1bc47e75f10'),(399,'8288493b66bd84b7bb23751d6ecf87591cbb5c5577accd003ac019862e28b3c0'),(400,'aa4999de3a157707ae5862a6b1937ba8200ea6ebf9f961a54cd3eac744a8756f'),(401,'b70ef3b27d123e4b0c3616cd5c1ee4446a4e0aed6d1418024732e385e66c62eb'),(402,'7dae7ebe85ecec08ad235050fff32d66469793934d6e6dcca1d76119bdc7c2c1'),(403,'d86f928444b6fd23594626d64da172a7847f4236fd3b242d6b0743515abbdd39'),(404,'10884fbf99f2237be4436b401b8e64908fe75a032c3733ca2e5e74be5ac2081f'),(405,'2000c60fd893fbde1d216d7af5af5a203778abf220dcc4eb67c8f65e1435d20e'),(406,'9891d4ad1725b9df3c65cee6ef67f7ee034bd0fe4e3ce36b74a0a1bc47e75f10'),(407,'8288493b66bd84b7bb23751d6ecf87591cbb5c5577accd003ac019862e28b3c0'),(408,'aa4999de3a157707ae5862a6b1937ba8200ea6ebf9f961a54cd3eac744a8756f'),(409,'b70ef3b27d123e4b0c3616cd5c1ee4446a4e0aed6d1418024732e385e66c62eb'),(410,'7dae7ebe85ecec08ad235050fff32d66469793934d6e6dcca1d76119bdc7c2c1'),(411,'d86f928444b6fd23594626d64da172a7847f4236fd3b242d6b0743515abbdd39'),(412,'10884fbf99f2237be4436b401b8e64908fe75a032c3733ca2e5e74be5ac2081f'),(413,'2000c60fd893fbde1d216d7af5af5a203778abf220dcc4eb67c8f65e1435d20e'),(414,'9891d4ad1725b9df3c65cee6ef67f7ee034bd0fe4e3ce36b74a0a1bc47e75f10'),(415,'8288493b66bd84b7bb23751d6ecf87591cbb5c5577accd003ac019862e28b3c0'),(416,'aa4999de3a157707ae5862a6b1937ba8200ea6ebf9f961a54cd3eac744a8756f'),(417,'b70ef3b27d123e4b0c3616cd5c1ee4446a4e0aed6d1418024732e385e66c62eb'),(418,'7dae7ebe85ecec08ad235050fff32d66469793934d6e6dcca1d76119bdc7c2c1'),(419,'d86f928444b6fd23594626d64da172a7847f4236fd3b242d6b0743515abbdd39'),(420,'10884fbf99f2237be4436b401b8e64908fe75a032c3733ca2e5e74be5ac2081f'),(421,'2000c60fd893fbde1d216d7af5af5a203778abf220dcc4eb67c8f65e1435d20e'),(422,'9891d4ad1725b9df3c65cee6ef67f7ee034bd0fe4e3ce36b74a0a1bc47e75f10'),(423,'8288493b66bd84b7bb23751d6ecf87591cbb5c5577accd003ac019862e28b3c0'),(424,'aa4999de3a157707ae5862a6b1937ba8200ea6ebf9f961a54cd3eac744a8756f'),(425,'b70ef3b27d123e4b0c3616cd5c1ee4446a4e0aed6d1418024732e385e66c62eb'),(426,'7dae7ebe85ecec08ad235050fff32d66469793934d6e6dcca1d76119bdc7c2c1'),(427,'d86f928444b6fd23594626d64da172a7847f4236fd3b242d6b0743515abbdd39'),(428,'10884fbf99f2237be4436b401b8e64908fe75a032c3733ca2e5e74be5ac2081f'),(429,'2000c60fd893fbde1d216d7af5af5a203778abf220dcc4eb67c8f65e1435d20e'),(430,'9891d4ad1725b9df3c65cee6ef67f7ee034bd0fe4e3ce36b74a0a1bc47e75f10'),(431,'8288493b66bd84b7bb23751d6ecf87591cbb5c5577accd003ac019862e28b3c0'),(432,'aa4999de3a157707ae5862a6b1937ba8200ea6ebf9f961a54cd3eac744a8756f'),(433,'b70ef3b27d123e4b0c3616cd5c1ee4446a4e0aed6d1418024732e385e66c62eb'),(434,'7dae7ebe85ecec08ad235050fff32d66469793934d6e6dcca1d76119bdc7c2c1'),(435,'d86f928444b6fd23594626d64da172a7847f4236fd3b242d6b0743515abbdd39'),(436,'10884fbf99f2237be4436b401b8e64908fe75a032c3733ca2e5e74be5ac2081f'),(437,'2000c60fd893fbde1d216d7af5af5a203778abf220dcc4eb67c8f65e1435d20e'),(438,'9891d4ad1725b9df3c65cee6ef67f7ee034bd0fe4e3ce36b74a0a1bc47e75f10'),(439,'8288493b66bd84b7bb23751d6ecf87591cbb5c5577accd003ac019862e28b3c0'),(440,'aa4999de3a157707ae5862a6b1937ba8200ea6ebf9f961a54cd3eac744a8756f'),(441,'b70ef3b27d123e4b0c3616cd5c1ee4446a4e0aed6d1418024732e385e66c62eb'),(442,'7dae7ebe85ecec08ad235050fff32d66469793934d6e6dcca1d76119bdc7c2c1'),(443,'d86f928444b6fd23594626d64da172a7847f4236fd3b242d6b0743515abbdd39'),(444,'10884fbf99f2237be4436b401b8e64908fe75a032c3733ca2e5e74be5ac2081f'),(445,'2000c60fd893fbde1d216d7af5af5a203778abf220dcc4eb67c8f65e1435d20e'),(446,'9891d4ad1725b9df3c65cee6ef67f7ee034bd0fe4e3ce36b74a0a1bc47e75f10'),(447,'8288493b66bd84b7bb23751d6ecf87591cbb5c5577accd003ac019862e28b3c0'),(448,'aa4999de3a157707ae5862a6b1937ba8200ea6ebf9f961a54cd3eac744a8756f'),(449,'b70ef3b27d123e4b0c3616cd5c1ee4446a4e0aed6d1418024732e385e66c62eb'),(450,'7dae7ebe85ecec08ad235050fff32d66469793934d6e6dcca1d76119bdc7c2c1'),(451,'d86f928444b6fd23594626d64da172a7847f4236fd3b242d6b0743515abbdd39'),(452,'10884fbf99f2237be4436b401b8e64908fe75a032c3733ca2e5e74be5ac2081f'),(453,'2000c60fd893fbde1d216d7af5af5a203778abf220dcc4eb67c8f65e1435d20e'),(454,'9891d4ad1725b9df3c65cee6ef67f7ee034bd0fe4e3ce36b74a0a1bc47e75f10'),(455,'8288493b66bd84b7bb23751d6ecf87591cbb5c5577accd003ac019862e28b3c0'),(456,'aa4999de3a157707ae5862a6b1937ba8200ea6ebf9f961a54cd3eac744a8756f'),(457,'b70ef3b27d123e4b0c3616cd5c1ee4446a4e0aed6d1418024732e385e66c62eb'),(458,'7dae7ebe85ecec08ad235050fff32d66469793934d6e6dcca1d76119bdc7c2c1'),(459,'d86f928444b6fd23594626d64da172a7847f4236fd3b242d6b0743515abbdd39'),(460,'10884fbf99f2237be4436b401b8e64908fe75a032c3733ca2e5e74be5ac2081f'),(461,'2000c60fd893fbde1d216d7af5af5a203778abf220dcc4eb67c8f65e1435d20e'),(462,'9891d4ad1725b9df3c65cee6ef67f7ee034bd0fe4e3ce36b74a0a1bc47e75f10'),(463,'8288493b66bd84b7bb23751d6ecf87591cbb5c5577accd003ac019862e28b3c0'),(464,'aa4999de3a157707ae5862a6b1937ba8200ea6ebf9f961a54cd3eac744a8756f'),(465,'b70ef3b27d123e4b0c3616cd5c1ee4446a4e0aed6d1418024732e385e66c62eb'),(466,'7dae7ebe85ecec08ad235050fff32d66469793934d6e6dcca1d76119bdc7c2c1'),(467,'d86f928444b6fd23594626d64da172a7847f4236fd3b242d6b0743515abbdd39'),(468,'10884fbf99f2237be4436b401b8e64908fe75a032c3733ca2e5e74be5ac2081f'),(469,'2000c60fd893fbde1d216d7af5af5a203778abf220dcc4eb67c8f65e1435d20e'),(470,'9891d4ad1725b9df3c65cee6ef67f7ee034bd0fe4e3ce36b74a0a1bc47e75f10'),(471,'8288493b66bd84b7bb23751d6ecf87591cbb5c5577accd003ac019862e28b3c0'),(472,'aa4999de3a157707ae5862a6b1937ba8200ea6ebf9f961a54cd3eac744a8756f'),(473,'b70ef3b27d123e4b0c3616cd5c1ee4446a4e0aed6d1418024732e385e66c62eb'),(474,'7dae7ebe85ecec08ad235050fff32d66469793934d6e6dcca1d76119bdc7c2c1'),(475,'d86f928444b6fd23594626d64da172a7847f4236fd3b242d6b0743515abbdd39'),(476,'10884fbf99f2237be4436b401b8e64908fe75a032c3733ca2e5e74be5ac2081f'),(477,'2000c60fd893fbde1d216d7af5af5a203778abf220dcc4eb67c8f65e1435d20e'),(478,'9891d4ad1725b9df3c65cee6ef67f7ee034bd0fe4e3ce36b74a0a1bc47e75f10'),(479,'8288493b66bd84b7bb23751d6ecf87591cbb5c5577accd003ac019862e28b3c0'),(480,'aa4999de3a157707ae5862a6b1937ba8200ea6ebf9f961a54cd3eac744a8756f'),(481,'b70ef3b27d123e4b0c3616cd5c1ee4446a4e0aed6d1418024732e385e66c62eb'),(482,'7dae7ebe85ecec08ad235050fff32d66469793934d6e6dcca1d76119bdc7c2c1'),(483,'d86f928444b6fd23594626d64da172a7847f4236fd3b242d6b0743515abbdd39'),(484,'10884fbf99f2237be4436b401b8e64908fe75a032c3733ca2e5e74be5ac2081f'),(485,'2000c60fd893fbde1d216d7af5af5a203778abf220dcc4eb67c8f65e1435d20e'),(486,'9891d4ad1725b9df3c65cee6ef67f7ee034bd0fe4e3ce36b74a0a1bc47e75f10'),(487,'8288493b66bd84b7bb23751d6ecf87591cbb5c5577accd003ac019862e28b3c0'),(488,'aa4999de3a157707ae5862a6b1937ba8200ea6ebf9f961a54cd3eac744a8756f'),(489,'b70ef3b27d123e4b0c3616cd5c1ee4446a4e0aed6d1418024732e385e66c62eb'),(490,'7dae7ebe85ecec08ad235050fff32d66469793934d6e6dcca1d76119bdc7c2c1'),(491,'d86f928444b6fd23594626d64da172a7847f4236fd3b242d6b0743515abbdd39'),(492,'10884fbf99f2237be4436b401b8e64908fe75a032c3733ca2e5e74be5ac2081f'),(493,'2000c60fd893fbde1d216d7af5af5a203778abf220dcc4eb67c8f65e1435d20e'),(494,'9891d4ad1725b9df3c65cee6ef67f7ee034bd0fe4e3ce36b74a0a1bc47e75f10'),(495,'8288493b66bd84b7bb23751d6ecf87591cbb5c5577accd003ac019862e28b3c0'),(496,'aa4999de3a157707ae5862a6b1937ba8200ea6ebf9f961a54cd3eac744a8756f'),(497,'b70ef3b27d123e4b0c3616cd5c1ee4446a4e0aed6d1418024732e385e66c62eb'),(498,'7dae7ebe85ecec08ad235050fff32d66469793934d6e6dcca1d76119bdc7c2c1'),(499,'d86f928444b6fd23594626d64da172a7847f4236fd3b242d6b0743515abbdd39'),(500,'10884fbf99f2237be4436b401b8e64908fe75a032c3733ca2e5e74be5ac2081f'),(501,'2000c60fd893fbde1d216d7af5af5a203778abf220dcc4eb67c8f65e1435d20e'),(502,'9891d4ad1725b9df3c65cee6ef67f7ee034bd0fe4e3ce36b74a0a1bc47e75f10'),(503,'8288493b66bd84b7bb23751d6ecf87591cbb5c5577accd003ac019862e28b3c0'),(504,'aa4999de3a157707ae5862a6b1937ba8200ea6ebf9f961a54cd3eac744a8756f'),(505,'b70ef3b27d123e4b0c3616cd5c1ee4446a4e0aed6d1418024732e385e66c62eb'),(506,'7dae7ebe85ecec08ad235050fff32d66469793934d6e6dcca1d76119bdc7c2c1'),(507,'d86f928444b6fd23594626d64da172a7847f4236fd3b242d6b0743515abbdd39'),(508,'10884fbf99f2237be4436b401b8e64908fe75a032c3733ca2e5e74be5ac2081f'),(509,'2000c60fd893fbde1d216d7af5af5a203778abf220dcc4eb67c8f65e1435d20e'),(510,'9891d4ad1725b9df3c65cee6ef67f7ee034bd0fe4e3ce36b74a0a1bc47e75f10'),(511,'8288493b66bd84b7bb23751d6ecf87591cbb5c5577accd003ac019862e28b3c0'),(512,'aa4999de3a157707ae5862a6b1937ba8200ea6ebf9f961a54cd3eac744a8756f'),(513,'b70ef3b27d123e4b0c3616cd5c1ee4446a4e0aed6d1418024732e385e66c62eb'),(514,'7dae7ebe85ecec08ad235050fff32d66469793934d6e6dcca1d76119bdc7c2c1'),(515,'d86f928444b6fd23594626d64da172a7847f4236fd3b242d6b0743515abbdd39'),(516,'10884fbf99f2237be4436b401b8e64908fe75a032c3733ca2e5e74be5ac2081f'),(517,'2000c60fd893fbde1d216d7af5af5a203778abf220dcc4eb67c8f65e1435d20e'),(518,'9891d4ad1725b9df3c65cee6ef67f7ee034bd0fe4e3ce36b74a0a1bc47e75f10'),(519,'8288493b66bd84b7bb23751d6ecf87591cbb5c5577accd003ac019862e28b3c0'),(520,'aa4999de3a157707ae5862a6b1937ba8200ea6ebf9f961a54cd3eac744a8756f'),(521,'b70ef3b27d123e4b0c3616cd5c1ee4446a4e0aed6d1418024732e385e66c62eb'),(522,'7dae7ebe85ecec08ad235050fff32d66469793934d6e6dcca1d76119bdc7c2c1'),(523,'d86f928444b6fd23594626d64da172a7847f4236fd3b242d6b0743515abbdd39'),(524,'10884fbf99f2237be4436b401b8e64908fe75a032c3733ca2e5e74be5ac2081f'),(525,'2000c60fd893fbde1d216d7af5af5a203778abf220dcc4eb67c8f65e1435d20e'),(526,'9891d4ad1725b9df3c65cee6ef67f7ee034bd0fe4e3ce36b74a0a1bc47e75f10'),(527,'8288493b66bd84b7bb23751d6ecf87591cbb5c5577accd003ac019862e28b3c0'),(528,'aa4999de3a157707ae5862a6b1937ba8200ea6ebf9f961a54cd3eac744a8756f'),(529,'b70ef3b27d123e4b0c3616cd5c1ee4446a4e0aed6d1418024732e385e66c62eb'),(530,'7dae7ebe85ecec08ad235050fff32d66469793934d6e6dcca1d76119bdc7c2c1'),(531,'d86f928444b6fd23594626d64da172a7847f4236fd3b242d6b0743515abbdd39'),(532,'10884fbf99f2237be4436b401b8e64908fe75a032c3733ca2e5e74be5ac2081f'),(533,'2000c60fd893fbde1d216d7af5af5a203778abf220dcc4eb67c8f65e1435d20e'),(534,'9891d4ad1725b9df3c65cee6ef67f7ee034bd0fe4e3ce36b74a0a1bc47e75f10'),(535,'8288493b66bd84b7bb23751d6ecf87591cbb5c5577accd003ac019862e28b3c0'),(536,'aa4999de3a157707ae5862a6b1937ba8200ea6ebf9f961a54cd3eac744a8756f'),(537,'b70ef3b27d123e4b0c3616cd5c1ee4446a4e0aed6d1418024732e385e66c62eb'),(538,'7dae7ebe85ecec08ad235050fff32d66469793934d6e6dcca1d76119bdc7c2c1'),(539,'d86f928444b6fd23594626d64da172a7847f4236fd3b242d6b0743515abbdd39'),(540,'10884fbf99f2237be4436b401b8e64908fe75a032c3733ca2e5e74be5ac2081f'),(541,'2000c60fd893fbde1d216d7af5af5a203778abf220dcc4eb67c8f65e1435d20e'),(542,'9891d4ad1725b9df3c65cee6ef67f7ee034bd0fe4e3ce36b74a0a1bc47e75f10'),(543,'8288493b66bd84b7bb23751d6ecf87591cbb5c5577accd003ac019862e28b3c0'),(544,'aa4999de3a157707ae5862a6b1937ba8200ea6ebf9f961a54cd3eac744a8756f'),(545,'b70ef3b27d123e4b0c3616cd5c1ee4446a4e0aed6d1418024732e385e66c62eb'),(546,'7dae7ebe85ecec08ad235050fff32d66469793934d6e6dcca1d76119bdc7c2c1'),(547,'d86f928444b6fd23594626d64da172a7847f4236fd3b242d6b0743515abbdd39'),(548,'10884fbf99f2237be4436b401b8e64908fe75a032c3733ca2e5e74be5ac2081f'),(549,'2000c60fd893fbde1d216d7af5af5a203778abf220dcc4eb67c8f65e1435d20e'),(550,'9891d4ad1725b9df3c65cee6ef67f7ee034bd0fe4e3ce36b74a0a1bc47e75f10'),(551,'8288493b66bd84b7bb23751d6ecf87591cbb5c5577accd003ac019862e28b3c0'),(552,'aa4999de3a157707ae5862a6b1937ba8200ea6ebf9f961a54cd3eac744a8756f'),(553,'b70ef3b27d123e4b0c3616cd5c1ee4446a4e0aed6d1418024732e385e66c62eb'),(554,'7dae7ebe85ecec08ad235050fff32d66469793934d6e6dcca1d76119bdc7c2c1'),(555,'d86f928444b6fd23594626d64da172a7847f4236fd3b242d6b0743515abbdd39'),(556,'10884fbf99f2237be4436b401b8e64908fe75a032c3733ca2e5e74be5ac2081f'),(557,'2000c60fd893fbde1d216d7af5af5a203778abf220dcc4eb67c8f65e1435d20e'),(558,'9891d4ad1725b9df3c65cee6ef67f7ee034bd0fe4e3ce36b74a0a1bc47e75f10'),(559,'8288493b66bd84b7bb23751d6ecf87591cbb5c5577accd003ac019862e28b3c0'),(560,'aa4999de3a157707ae5862a6b1937ba8200ea6ebf9f961a54cd3eac744a8756f'),(561,'b70ef3b27d123e4b0c3616cd5c1ee4446a4e0aed6d1418024732e385e66c62eb'),(562,'7dae7ebe85ecec08ad235050fff32d66469793934d6e6dcca1d76119bdc7c2c1'),(563,'d86f928444b6fd23594626d64da172a7847f4236fd3b242d6b0743515abbdd39'),(564,'10884fbf99f2237be4436b401b8e64908fe75a032c3733ca2e5e74be5ac2081f'),(565,'2000c60fd893fbde1d216d7af5af5a203778abf220dcc4eb67c8f65e1435d20e'),(566,'9891d4ad1725b9df3c65cee6ef67f7ee034bd0fe4e3ce36b74a0a1bc47e75f10'),(567,'8288493b66bd84b7bb23751d6ecf87591cbb5c5577accd003ac019862e28b3c0'),(568,'aa4999de3a157707ae5862a6b1937ba8200ea6ebf9f961a54cd3eac744a8756f'),(569,'b70ef3b27d123e4b0c3616cd5c1ee4446a4e0aed6d1418024732e385e66c62eb'),(570,'7dae7ebe85ecec08ad235050fff32d66469793934d6e6dcca1d76119bdc7c2c1'),(571,'d86f928444b6fd23594626d64da172a7847f4236fd3b242d6b0743515abbdd39'),(572,'10884fbf99f2237be4436b401b8e64908fe75a032c3733ca2e5e74be5ac2081f'),(573,'2000c60fd893fbde1d216d7af5af5a203778abf220dcc4eb67c8f65e1435d20e'),(574,'9891d4ad1725b9df3c65cee6ef67f7ee034bd0fe4e3ce36b74a0a1bc47e75f10'),(575,'8288493b66bd84b7bb23751d6ecf87591cbb5c5577accd003ac019862e28b3c0'),(576,'aa4999de3a157707ae5862a6b1937ba8200ea6ebf9f961a54cd3eac744a8756f'),(577,'b70ef3b27d123e4b0c3616cd5c1ee4446a4e0aed6d1418024732e385e66c62eb'),(578,'7dae7ebe85ecec08ad235050fff32d66469793934d6e6dcca1d76119bdc7c2c1'),(579,'d86f928444b6fd23594626d64da172a7847f4236fd3b242d6b0743515abbdd39'),(580,'10884fbf99f2237be4436b401b8e64908fe75a032c3733ca2e5e74be5ac2081f'),(581,'2000c60fd893fbde1d216d7af5af5a203778abf220dcc4eb67c8f65e1435d20e'),(582,'9891d4ad1725b9df3c65cee6ef67f7ee034bd0fe4e3ce36b74a0a1bc47e75f10'),(583,'8288493b66bd84b7bb23751d6ecf87591cbb5c5577accd003ac019862e28b3c0'),(584,'aa4999de3a157707ae5862a6b1937ba8200ea6ebf9f961a54cd3eac744a8756f'),(585,'b70ef3b27d123e4b0c3616cd5c1ee4446a4e0aed6d1418024732e385e66c62eb'),(586,'7dae7ebe85ecec08ad235050fff32d66469793934d6e6dcca1d76119bdc7c2c1'),(587,'d86f928444b6fd23594626d64da172a7847f4236fd3b242d6b0743515abbdd39'),(588,'10884fbf99f2237be4436b401b8e64908fe75a032c3733ca2e5e74be5ac2081f'),(589,'2000c60fd893fbde1d216d7af5af5a203778abf220dcc4eb67c8f65e1435d20e'),(590,'9891d4ad1725b9df3c65cee6ef67f7ee034bd0fe4e3ce36b74a0a1bc47e75f10'),(591,'8288493b66bd84b7bb23751d6ecf87591cbb5c5577accd003ac019862e28b3c0'),(592,'aa4999de3a157707ae5862a6b1937ba8200ea6ebf9f961a54cd3eac744a8756f'),(593,'b70ef3b27d123e4b0c3616cd5c1ee4446a4e0aed6d1418024732e385e66c62eb'),(594,'7dae7ebe85ecec08ad235050fff32d66469793934d6e6dcca1d76119bdc7c2c1'),(595,'d86f928444b6fd23594626d64da172a7847f4236fd3b242d6b0743515abbdd39'),(596,'10884fbf99f2237be4436b401b8e64908fe75a032c3733ca2e5e74be5ac2081f'),(597,'2000c60fd893fbde1d216d7af5af5a203778abf220dcc4eb67c8f65e1435d20e'),(598,'9891d4ad1725b9df3c65cee6ef67f7ee034bd0fe4e3ce36b74a0a1bc47e75f10'),(599,'8288493b66bd84b7bb23751d6ecf87591cbb5c5577accd003ac019862e28b3c0'),(600,'aa4999de3a157707ae5862a6b1937ba8200ea6ebf9f961a54cd3eac744a8756f'),(601,'b70ef3b27d123e4b0c3616cd5c1ee4446a4e0aed6d1418024732e385e66c62eb'),(602,'7dae7ebe85ecec08ad235050fff32d66469793934d6e6dcca1d76119bdc7c2c1'),(603,'d86f928444b6fd23594626d64da172a7847f4236fd3b242d6b0743515abbdd39'),(604,'10884fbf99f2237be4436b401b8e64908fe75a032c3733ca2e5e74be5ac2081f'),(605,'2000c60fd893fbde1d216d7af5af5a203778abf220dcc4eb67c8f65e1435d20e'),(606,'9891d4ad1725b9df3c65cee6ef67f7ee034bd0fe4e3ce36b74a0a1bc47e75f10'),(607,'8288493b66bd84b7bb23751d6ecf87591cbb5c5577accd003ac019862e28b3c0'),(608,'aa4999de3a157707ae5862a6b1937ba8200ea6ebf9f961a54cd3eac744a8756f'),(609,'b70ef3b27d123e4b0c3616cd5c1ee4446a4e0aed6d1418024732e385e66c62eb'),(610,'7dae7ebe85ecec08ad235050fff32d66469793934d6e6dcca1d76119bdc7c2c1'),(611,'d86f928444b6fd23594626d64da172a7847f4236fd3b242d6b0743515abbdd39'),(612,'10884fbf99f2237be4436b401b8e64908fe75a032c3733ca2e5e74be5ac2081f'),(613,'2000c60fd893fbde1d216d7af5af5a203778abf220dcc4eb67c8f65e1435d20e'),(614,'9891d4ad1725b9df3c65cee6ef67f7ee034bd0fe4e3ce36b74a0a1bc47e75f10'),(615,'8288493b66bd84b7bb23751d6ecf87591cbb5c5577accd003ac019862e28b3c0'),(616,'aa4999de3a157707ae5862a6b1937ba8200ea6ebf9f961a54cd3eac744a8756f'),(617,'b70ef3b27d123e4b0c3616cd5c1ee4446a4e0aed6d1418024732e385e66c62eb'),(618,'7dae7ebe85ecec08ad235050fff32d66469793934d6e6dcca1d76119bdc7c2c1'),(619,'d86f928444b6fd23594626d64da172a7847f4236fd3b242d6b0743515abbdd39'),(620,'10884fbf99f2237be4436b401b8e64908fe75a032c3733ca2e5e74be5ac2081f'),(621,'2000c60fd893fbde1d216d7af5af5a203778abf220dcc4eb67c8f65e1435d20e'),(622,'9891d4ad1725b9df3c65cee6ef67f7ee034bd0fe4e3ce36b74a0a1bc47e75f10'),(623,'8288493b66bd84b7bb23751d6ecf87591cbb5c5577accd003ac019862e28b3c0'),(624,'aa4999de3a157707ae5862a6b1937ba8200ea6ebf9f961a54cd3eac744a8756f'),(625,'b70ef3b27d123e4b0c3616cd5c1ee4446a4e0aed6d1418024732e385e66c62eb'),(626,'7dae7ebe85ecec08ad235050fff32d66469793934d6e6dcca1d76119bdc7c2c1'),(627,'d86f928444b6fd23594626d64da172a7847f4236fd3b242d6b0743515abbdd39'),(628,'10884fbf99f2237be4436b401b8e64908fe75a032c3733ca2e5e74be5ac2081f'),(629,'2000c60fd893fbde1d216d7af5af5a203778abf220dcc4eb67c8f65e1435d20e'),(630,'9891d4ad1725b9df3c65cee6ef67f7ee034bd0fe4e3ce36b74a0a1bc47e75f10'),(631,'8288493b66bd84b7bb23751d6ecf87591cbb5c5577accd003ac019862e28b3c0'),(632,'aa4999de3a157707ae5862a6b1937ba8200ea6ebf9f961a54cd3eac744a8756f'),(633,'b70ef3b27d123e4b0c3616cd5c1ee4446a4e0aed6d1418024732e385e66c62eb'),(634,'7dae7ebe85ecec08ad235050fff32d66469793934d6e6dcca1d76119bdc7c2c1'),(635,'d86f928444b6fd23594626d64da172a7847f4236fd3b242d6b0743515abbdd39'),(636,'10884fbf99f2237be4436b401b8e64908fe75a032c3733ca2e5e74be5ac2081f'),(637,'2000c60fd893fbde1d216d7af5af5a203778abf220dcc4eb67c8f65e1435d20e'),(638,'9891d4ad1725b9df3c65cee6ef67f7ee034bd0fe4e3ce36b74a0a1bc47e75f10'),(639,'8288493b66bd84b7bb23751d6ecf87591cbb5c5577accd003ac019862e28b3c0'),(640,'aa4999de3a157707ae5862a6b1937ba8200ea6ebf9f961a54cd3eac744a8756f'),(641,'b70ef3b27d123e4b0c3616cd5c1ee4446a4e0aed6d1418024732e385e66c62eb'),(642,'7dae7ebe85ecec08ad235050fff32d66469793934d6e6dcca1d76119bdc7c2c1'),(643,'d86f928444b6fd23594626d64da172a7847f4236fd3b242d6b0743515abbdd39'),(644,'10884fbf99f2237be4436b401b8e64908fe75a032c3733ca2e5e74be5ac2081f'),(645,'2000c60fd893fbde1d216d7af5af5a203778abf220dcc4eb67c8f65e1435d20e'),(646,'9891d4ad1725b9df3c65cee6ef67f7ee034bd0fe4e3ce36b74a0a1bc47e75f10'),(647,'8288493b66bd84b7bb23751d6ecf87591cbb5c5577accd003ac019862e28b3c0'),(648,'aa4999de3a157707ae5862a6b1937ba8200ea6ebf9f961a54cd3eac744a8756f'),(649,'b70ef3b27d123e4b0c3616cd5c1ee4446a4e0aed6d1418024732e385e66c62eb'),(650,'7dae7ebe85ecec08ad235050fff32d66469793934d6e6dcca1d76119bdc7c2c1'),(651,'d86f928444b6fd23594626d64da172a7847f4236fd3b242d6b0743515abbdd39'),(652,'10884fbf99f2237be4436b401b8e64908fe75a032c3733ca2e5e74be5ac2081f'),(653,'2000c60fd893fbde1d216d7af5af5a203778abf220dcc4eb67c8f65e1435d20e'),(654,'9891d4ad1725b9df3c65cee6ef67f7ee034bd0fe4e3ce36b74a0a1bc47e75f10'),(655,'8288493b66bd84b7bb23751d6ecf87591cbb5c5577accd003ac019862e28b3c0'),(656,'aa4999de3a157707ae5862a6b1937ba8200ea6ebf9f961a54cd3eac744a8756f'),(657,'b70ef3b27d123e4b0c3616cd5c1ee4446a4e0aed6d1418024732e385e66c62eb'),(658,'7dae7ebe85ecec08ad235050fff32d66469793934d6e6dcca1d76119bdc7c2c1'),(659,'d86f928444b6fd23594626d64da172a7847f4236fd3b242d6b0743515abbdd39'),(660,'10884fbf99f2237be4436b401b8e64908fe75a032c3733ca2e5e74be5ac2081f'),(661,'2000c60fd893fbde1d216d7af5af5a203778abf220dcc4eb67c8f65e1435d20e'),(662,'9891d4ad1725b9df3c65cee6ef67f7ee034bd0fe4e3ce36b74a0a1bc47e75f10'),(663,'8288493b66bd84b7bb23751d6ecf87591cbb5c5577accd003ac019862e28b3c0'),(664,'aa4999de3a157707ae5862a6b1937ba8200ea6ebf9f961a54cd3eac744a8756f'),(665,'b70ef3b27d123e4b0c3616cd5c1ee4446a4e0aed6d1418024732e385e66c62eb'),(666,'7dae7ebe85ecec08ad235050fff32d66469793934d6e6dcca1d76119bdc7c2c1'),(667,'d86f928444b6fd23594626d64da172a7847f4236fd3b242d6b0743515abbdd39'),(668,'10884fbf99f2237be4436b401b8e64908fe75a032c3733ca2e5e74be5ac2081f'),(669,'2000c60fd893fbde1d216d7af5af5a203778abf220dcc4eb67c8f65e1435d20e'),(670,'9891d4ad1725b9df3c65cee6ef67f7ee034bd0fe4e3ce36b74a0a1bc47e75f10'),(671,'8288493b66bd84b7bb23751d6ecf87591cbb5c5577accd003ac019862e28b3c0'),(672,'aa4999de3a157707ae5862a6b1937ba8200ea6ebf9f961a54cd3eac744a8756f'),(673,'b70ef3b27d123e4b0c3616cd5c1ee4446a4e0aed6d1418024732e385e66c62eb'),(674,'7dae7ebe85ecec08ad235050fff32d66469793934d6e6dcca1d76119bdc7c2c1'),(675,'d86f928444b6fd23594626d64da172a7847f4236fd3b242d6b0743515abbdd39'),(676,'10884fbf99f2237be4436b401b8e64908fe75a032c3733ca2e5e74be5ac2081f'),(677,'2000c60fd893fbde1d216d7af5af5a203778abf220dcc4eb67c8f65e1435d20e'),(678,'9891d4ad1725b9df3c65cee6ef67f7ee034bd0fe4e3ce36b74a0a1bc47e75f10'),(679,'8288493b66bd84b7bb23751d6ecf87591cbb5c5577accd003ac019862e28b3c0'),(680,'aa4999de3a157707ae5862a6b1937ba8200ea6ebf9f961a54cd3eac744a8756f'),(681,'b70ef3b27d123e4b0c3616cd5c1ee4446a4e0aed6d1418024732e385e66c62eb'),(682,'7dae7ebe85ecec08ad235050fff32d66469793934d6e6dcca1d76119bdc7c2c1'),(683,'d86f928444b6fd23594626d64da172a7847f4236fd3b242d6b0743515abbdd39'),(684,'10884fbf99f2237be4436b401b8e64908fe75a032c3733ca2e5e74be5ac2081f'),(685,'2000c60fd893fbde1d216d7af5af5a203778abf220dcc4eb67c8f65e1435d20e'),(686,'9891d4ad1725b9df3c65cee6ef67f7ee034bd0fe4e3ce36b74a0a1bc47e75f10'),(687,'8288493b66bd84b7bb23751d6ecf87591cbb5c5577accd003ac019862e28b3c0'),(688,'aa4999de3a157707ae5862a6b1937ba8200ea6ebf9f961a54cd3eac744a8756f'),(689,'b70ef3b27d123e4b0c3616cd5c1ee4446a4e0aed6d1418024732e385e66c62eb'),(690,'7dae7ebe85ecec08ad235050fff32d66469793934d6e6dcca1d76119bdc7c2c1'),(691,'d86f928444b6fd23594626d64da172a7847f4236fd3b242d6b0743515abbdd39'),(692,'10884fbf99f2237be4436b401b8e64908fe75a032c3733ca2e5e74be5ac2081f'),(693,'2000c60fd893fbde1d216d7af5af5a203778abf220dcc4eb67c8f65e1435d20e'),(694,'9891d4ad1725b9df3c65cee6ef67f7ee034bd0fe4e3ce36b74a0a1bc47e75f10'),(695,'8288493b66bd84b7bb23751d6ecf87591cbb5c5577accd003ac019862e28b3c0'),(696,'aa4999de3a157707ae5862a6b1937ba8200ea6ebf9f961a54cd3eac744a8756f'),(697,'b70ef3b27d123e4b0c3616cd5c1ee4446a4e0aed6d1418024732e385e66c62eb'),(698,'7dae7ebe85ecec08ad235050fff32d66469793934d6e6dcca1d76119bdc7c2c1'),(699,'d86f928444b6fd23594626d64da172a7847f4236fd3b242d6b0743515abbdd39'),(700,'10884fbf99f2237be4436b401b8e64908fe75a032c3733ca2e5e74be5ac2081f'),(701,'2000c60fd893fbde1d216d7af5af5a203778abf220dcc4eb67c8f65e1435d20e'),(702,'9891d4ad1725b9df3c65cee6ef67f7ee034bd0fe4e3ce36b74a0a1bc47e75f10'),(703,'8288493b66bd84b7bb23751d6ecf87591cbb5c5577accd003ac019862e28b3c0'),(704,'aa4999de3a157707ae5862a6b1937ba8200ea6ebf9f961a54cd3eac744a8756f'),(705,'b70ef3b27d123e4b0c3616cd5c1ee4446a4e0aed6d1418024732e385e66c62eb'),(706,'7dae7ebe85ecec08ad235050fff32d66469793934d6e6dcca1d76119bdc7c2c1'),(707,'d86f928444b6fd23594626d64da172a7847f4236fd3b242d6b0743515abbdd39'),(708,'10884fbf99f2237be4436b401b8e64908fe75a032c3733ca2e5e74be5ac2081f'),(709,'2000c60fd893fbde1d216d7af5af5a203778abf220dcc4eb67c8f65e1435d20e'),(710,'9891d4ad1725b9df3c65cee6ef67f7ee034bd0fe4e3ce36b74a0a1bc47e75f10'),(711,'8288493b66bd84b7bb23751d6ecf87591cbb5c5577accd003ac019862e28b3c0'),(712,'aa4999de3a157707ae5862a6b1937ba8200ea6ebf9f961a54cd3eac744a8756f'),(713,'b70ef3b27d123e4b0c3616cd5c1ee4446a4e0aed6d1418024732e385e66c62eb'),(714,'7dae7ebe85ecec08ad235050fff32d66469793934d6e6dcca1d76119bdc7c2c1'),(715,'d86f928444b6fd23594626d64da172a7847f4236fd3b242d6b0743515abbdd39'),(716,'10884fbf99f2237be4436b401b8e64908fe75a032c3733ca2e5e74be5ac2081f'),(717,'2000c60fd893fbde1d216d7af5af5a203778abf220dcc4eb67c8f65e1435d20e'),(718,'9891d4ad1725b9df3c65cee6ef67f7ee034bd0fe4e3ce36b74a0a1bc47e75f10'),(719,'8288493b66bd84b7bb23751d6ecf87591cbb5c5577accd003ac019862e28b3c0'),(720,'aa4999de3a157707ae5862a6b1937ba8200ea6ebf9f961a54cd3eac744a8756f'),(721,'b70ef3b27d123e4b0c3616cd5c1ee4446a4e0aed6d1418024732e385e66c62eb'),(722,'7dae7ebe85ecec08ad235050fff32d66469793934d6e6dcca1d76119bdc7c2c1'),(723,'d86f928444b6fd23594626d64da172a7847f4236fd3b242d6b0743515abbdd39'),(724,'10884fbf99f2237be4436b401b8e64908fe75a032c3733ca2e5e74be5ac2081f'),(725,'2000c60fd893fbde1d216d7af5af5a203778abf220dcc4eb67c8f65e1435d20e'),(726,'9891d4ad1725b9df3c65cee6ef67f7ee034bd0fe4e3ce36b74a0a1bc47e75f10'),(727,'8288493b66bd84b7bb23751d6ecf87591cbb5c5577accd003ac019862e28b3c0'),(728,'aa4999de3a157707ae5862a6b1937ba8200ea6ebf9f961a54cd3eac744a8756f'),(729,'b70ef3b27d123e4b0c3616cd5c1ee4446a4e0aed6d1418024732e385e66c62eb'),(730,'7dae7ebe85ecec08ad235050fff32d66469793934d6e6dcca1d76119bdc7c2c1'),(731,'d86f928444b6fd23594626d64da172a7847f4236fd3b242d6b0743515abbdd39'),(732,'10884fbf99f2237be4436b401b8e64908fe75a032c3733ca2e5e74be5ac2081f'),(733,'2000c60fd893fbde1d216d7af5af5a203778abf220dcc4eb67c8f65e1435d20e'),(734,'9891d4ad1725b9df3c65cee6ef67f7ee034bd0fe4e3ce36b74a0a1bc47e75f10'),(735,'8288493b66bd84b7bb23751d6ecf87591cbb5c5577accd003ac019862e28b3c0'),(736,'aa4999de3a157707ae5862a6b1937ba8200ea6ebf9f961a54cd3eac744a8756f'),(737,'b70ef3b27d123e4b0c3616cd5c1ee4446a4e0aed6d1418024732e385e66c62eb'),(738,'7dae7ebe85ecec08ad235050fff32d66469793934d6e6dcca1d76119bdc7c2c1'),(739,'d86f928444b6fd23594626d64da172a7847f4236fd3b242d6b0743515abbdd39'),(740,'10884fbf99f2237be4436b401b8e64908fe75a032c3733ca2e5e74be5ac2081f'),(741,'2000c60fd893fbde1d216d7af5af5a203778abf220dcc4eb67c8f65e1435d20e'),(742,'9891d4ad1725b9df3c65cee6ef67f7ee034bd0fe4e3ce36b74a0a1bc47e75f10'),(743,'8288493b66bd84b7bb23751d6ecf87591cbb5c5577accd003ac019862e28b3c0'),(744,'aa4999de3a157707ae5862a6b1937ba8200ea6ebf9f961a54cd3eac744a8756f'),(745,'b70ef3b27d123e4b0c3616cd5c1ee4446a4e0aed6d1418024732e385e66c62eb'),(746,'7dae7ebe85ecec08ad235050fff32d66469793934d6e6dcca1d76119bdc7c2c1'),(747,'d86f928444b6fd23594626d64da172a7847f4236fd3b242d6b0743515abbdd39'),(748,'10884fbf99f2237be4436b401b8e64908fe75a032c3733ca2e5e74be5ac2081f'),(749,'2000c60fd893fbde1d216d7af5af5a203778abf220dcc4eb67c8f65e1435d20e'),(750,'9891d4ad1725b9df3c65cee6ef67f7ee034bd0fe4e3ce36b74a0a1bc47e75f10'),(751,'8288493b66bd84b7bb23751d6ecf87591cbb5c5577accd003ac019862e28b3c0'),(752,'aa4999de3a157707ae5862a6b1937ba8200ea6ebf9f961a54cd3eac744a8756f'),(753,'b70ef3b27d123e4b0c3616cd5c1ee4446a4e0aed6d1418024732e385e66c62eb'),(754,'7dae7ebe85ecec08ad235050fff32d66469793934d6e6dcca1d76119bdc7c2c1'),(755,'d86f928444b6fd23594626d64da172a7847f4236fd3b242d6b0743515abbdd39'),(756,'10884fbf99f2237be4436b401b8e64908fe75a032c3733ca2e5e74be5ac2081f'),(757,'2000c60fd893fbde1d216d7af5af5a203778abf220dcc4eb67c8f65e1435d20e'),(758,'9891d4ad1725b9df3c65cee6ef67f7ee034bd0fe4e3ce36b74a0a1bc47e75f10'),(759,'8288493b66bd84b7bb23751d6ecf87591cbb5c5577accd003ac019862e28b3c0'),(760,'aa4999de3a157707ae5862a6b1937ba8200ea6ebf9f961a54cd3eac744a8756f'),(761,'b70ef3b27d123e4b0c3616cd5c1ee4446a4e0aed6d1418024732e385e66c62eb'),(762,'7dae7ebe85ecec08ad235050fff32d66469793934d6e6dcca1d76119bdc7c2c1'),(763,'d86f928444b6fd23594626d64da172a7847f4236fd3b242d6b0743515abbdd39'),(764,'10884fbf99f2237be4436b401b8e64908fe75a032c3733ca2e5e74be5ac2081f'),(765,'2000c60fd893fbde1d216d7af5af5a203778abf220dcc4eb67c8f65e1435d20e'),(766,'9891d4ad1725b9df3c65cee6ef67f7ee034bd0fe4e3ce36b74a0a1bc47e75f10'),(767,'8288493b66bd84b7bb23751d6ecf87591cbb5c5577accd003ac019862e28b3c0'),(768,'aa4999de3a157707ae5862a6b1937ba8200ea6ebf9f961a54cd3eac744a8756f'),(769,'b70ef3b27d123e4b0c3616cd5c1ee4446a4e0aed6d1418024732e385e66c62eb'),(770,'7dae7ebe85ecec08ad235050fff32d66469793934d6e6dcca1d76119bdc7c2c1'),(771,'d86f928444b6fd23594626d64da172a7847f4236fd3b242d6b0743515abbdd39'),(772,'10884fbf99f2237be4436b401b8e64908fe75a032c3733ca2e5e74be5ac2081f'),(773,'2000c60fd893fbde1d216d7af5af5a203778abf220dcc4eb67c8f65e1435d20e'),(774,'9891d4ad1725b9df3c65cee6ef67f7ee034bd0fe4e3ce36b74a0a1bc47e75f10'),(775,'8288493b66bd84b7bb23751d6ecf87591cbb5c5577accd003ac019862e28b3c0'),(776,'aa4999de3a157707ae5862a6b1937ba8200ea6ebf9f961a54cd3eac744a8756f'),(777,'b70ef3b27d123e4b0c3616cd5c1ee4446a4e0aed6d1418024732e385e66c62eb'),(778,'7dae7ebe85ecec08ad235050fff32d66469793934d6e6dcca1d76119bdc7c2c1'),(779,'d86f928444b6fd23594626d64da172a7847f4236fd3b242d6b0743515abbdd39'),(780,'10884fbf99f2237be4436b401b8e64908fe75a032c3733ca2e5e74be5ac2081f'),(781,'2000c60fd893fbde1d216d7af5af5a203778abf220dcc4eb67c8f65e1435d20e'),(782,'9891d4ad1725b9df3c65cee6ef67f7ee034bd0fe4e3ce36b74a0a1bc47e75f10'),(783,'8288493b66bd84b7bb23751d6ecf87591cbb5c5577accd003ac019862e28b3c0'),(784,'aa4999de3a157707ae5862a6b1937ba8200ea6ebf9f961a54cd3eac744a8756f'),(785,'b70ef3b27d123e4b0c3616cd5c1ee4446a4e0aed6d1418024732e385e66c62eb'),(786,'7dae7ebe85ecec08ad235050fff32d66469793934d6e6dcca1d76119bdc7c2c1'),(787,'d86f928444b6fd23594626d64da172a7847f4236fd3b242d6b0743515abbdd39'),(788,'10884fbf99f2237be4436b401b8e64908fe75a032c3733ca2e5e74be5ac2081f'),(789,'2000c60fd893fbde1d216d7af5af5a203778abf220dcc4eb67c8f65e1435d20e'),(790,'9891d4ad1725b9df3c65cee6ef67f7ee034bd0fe4e3ce36b74a0a1bc47e75f10'),(791,'8288493b66bd84b7bb23751d6ecf87591cbb5c5577accd003ac019862e28b3c0'),(792,'aa4999de3a157707ae5862a6b1937ba8200ea6ebf9f961a54cd3eac744a8756f'),(793,'b70ef3b27d123e4b0c3616cd5c1ee4446a4e0aed6d1418024732e385e66c62eb'),(794,'7dae7ebe85ecec08ad235050fff32d66469793934d6e6dcca1d76119bdc7c2c1'),(795,'d86f928444b6fd23594626d64da172a7847f4236fd3b242d6b0743515abbdd39'),(796,'10884fbf99f2237be4436b401b8e64908fe75a032c3733ca2e5e74be5ac2081f'),(797,'2000c60fd893fbde1d216d7af5af5a203778abf220dcc4eb67c8f65e1435d20e'),(798,'9891d4ad1725b9df3c65cee6ef67f7ee034bd0fe4e3ce36b74a0a1bc47e75f10'),(799,'8288493b66bd84b7bb23751d6ecf87591cbb5c5577accd003ac019862e28b3c0'),(800,'aa4999de3a157707ae5862a6b1937ba8200ea6ebf9f961a54cd3eac744a8756f'),(801,'b70ef3b27d123e4b0c3616cd5c1ee4446a4e0aed6d1418024732e385e66c62eb'),(802,'7dae7ebe85ecec08ad235050fff32d66469793934d6e6dcca1d76119bdc7c2c1'),(803,'d86f928444b6fd23594626d64da172a7847f4236fd3b242d6b0743515abbdd39'),(804,'10884fbf99f2237be4436b401b8e64908fe75a032c3733ca2e5e74be5ac2081f'),(805,'2000c60fd893fbde1d216d7af5af5a203778abf220dcc4eb67c8f65e1435d20e'),(806,'9891d4ad1725b9df3c65cee6ef67f7ee034bd0fe4e3ce36b74a0a1bc47e75f10'),(807,'8288493b66bd84b7bb23751d6ecf87591cbb5c5577accd003ac019862e28b3c0'),(808,'aa4999de3a157707ae5862a6b1937ba8200ea6ebf9f961a54cd3eac744a8756f'),(809,'b70ef3b27d123e4b0c3616cd5c1ee4446a4e0aed6d1418024732e385e66c62eb'),(810,'7dae7ebe85ecec08ad235050fff32d66469793934d6e6dcca1d76119bdc7c2c1'),(811,'d86f928444b6fd23594626d64da172a7847f4236fd3b242d6b0743515abbdd39'),(812,'10884fbf99f2237be4436b401b8e64908fe75a032c3733ca2e5e74be5ac2081f'),(813,'2000c60fd893fbde1d216d7af5af5a203778abf220dcc4eb67c8f65e1435d20e'),(814,'9891d4ad1725b9df3c65cee6ef67f7ee034bd0fe4e3ce36b74a0a1bc47e75f10'),(815,'8288493b66bd84b7bb23751d6ecf87591cbb5c5577accd003ac019862e28b3c0'),(816,'aa4999de3a157707ae5862a6b1937ba8200ea6ebf9f961a54cd3eac744a8756f'),(817,'b70ef3b27d123e4b0c3616cd5c1ee4446a4e0aed6d1418024732e385e66c62eb'),(818,'7dae7ebe85ecec08ad235050fff32d66469793934d6e6dcca1d76119bdc7c2c1'),(819,'d86f928444b6fd23594626d64da172a7847f4236fd3b242d6b0743515abbdd39'),(820,'10884fbf99f2237be4436b401b8e64908fe75a032c3733ca2e5e74be5ac2081f'),(821,'2000c60fd893fbde1d216d7af5af5a203778abf220dcc4eb67c8f65e1435d20e'),(822,'9891d4ad1725b9df3c65cee6ef67f7ee034bd0fe4e3ce36b74a0a1bc47e75f10'),(823,'8288493b66bd84b7bb23751d6ecf87591cbb5c5577accd003ac019862e28b3c0'),(824,'aa4999de3a157707ae5862a6b1937ba8200ea6ebf9f961a54cd3eac744a8756f'),(825,'b70ef3b27d123e4b0c3616cd5c1ee4446a4e0aed6d1418024732e385e66c62eb'),(826,'7dae7ebe85ecec08ad235050fff32d66469793934d6e6dcca1d76119bdc7c2c1'),(827,'d86f928444b6fd23594626d64da172a7847f4236fd3b242d6b0743515abbdd39'),(828,'10884fbf99f2237be4436b401b8e64908fe75a032c3733ca2e5e74be5ac2081f'),(829,'2000c60fd893fbde1d216d7af5af5a203778abf220dcc4eb67c8f65e1435d20e'),(830,'9891d4ad1725b9df3c65cee6ef67f7ee034bd0fe4e3ce36b74a0a1bc47e75f10'),(831,'8288493b66bd84b7bb23751d6ecf87591cbb5c5577accd003ac019862e28b3c0'),(832,'aa4999de3a157707ae5862a6b1937ba8200ea6ebf9f961a54cd3eac744a8756f'),(833,'b70ef3b27d123e4b0c3616cd5c1ee4446a4e0aed6d1418024732e385e66c62eb'),(834,'7dae7ebe85ecec08ad235050fff32d66469793934d6e6dcca1d76119bdc7c2c1'),(835,'d86f928444b6fd23594626d64da172a7847f4236fd3b242d6b0743515abbdd39'),(836,'10884fbf99f2237be4436b401b8e64908fe75a032c3733ca2e5e74be5ac2081f'),(837,'2000c60fd893fbde1d216d7af5af5a203778abf220dcc4eb67c8f65e1435d20e'),(838,'9891d4ad1725b9df3c65cee6ef67f7ee034bd0fe4e3ce36b74a0a1bc47e75f10'),(839,'8288493b66bd84b7bb23751d6ecf87591cbb5c5577accd003ac019862e28b3c0'),(840,'aa4999de3a157707ae5862a6b1937ba8200ea6ebf9f961a54cd3eac744a8756f'),(841,'b70ef3b27d123e4b0c3616cd5c1ee4446a4e0aed6d1418024732e385e66c62eb'),(842,'7dae7ebe85ecec08ad235050fff32d66469793934d6e6dcca1d76119bdc7c2c1'),(843,'d86f928444b6fd23594626d64da172a7847f4236fd3b242d6b0743515abbdd39'),(844,'10884fbf99f2237be4436b401b8e64908fe75a032c3733ca2e5e74be5ac2081f'),(845,'2000c60fd893fbde1d216d7af5af5a203778abf220dcc4eb67c8f65e1435d20e'),(846,'9891d4ad1725b9df3c65cee6ef67f7ee034bd0fe4e3ce36b74a0a1bc47e75f10'),(847,'8288493b66bd84b7bb23751d6ecf87591cbb5c5577accd003ac019862e28b3c0'),(848,'aa4999de3a157707ae5862a6b1937ba8200ea6ebf9f961a54cd3eac744a8756f'),(849,'b70ef3b27d123e4b0c3616cd5c1ee4446a4e0aed6d1418024732e385e66c62eb'),(850,'7dae7ebe85ecec08ad235050fff32d66469793934d6e6dcca1d76119bdc7c2c1'),(851,'d86f928444b6fd23594626d64da172a7847f4236fd3b242d6b0743515abbdd39'),(852,'10884fbf99f2237be4436b401b8e64908fe75a032c3733ca2e5e74be5ac2081f'),(853,'2000c60fd893fbde1d216d7af5af5a203778abf220dcc4eb67c8f65e1435d20e'),(854,'9891d4ad1725b9df3c65cee6ef67f7ee034bd0fe4e3ce36b74a0a1bc47e75f10'),(855,'8288493b66bd84b7bb23751d6ecf87591cbb5c5577accd003ac019862e28b3c0'),(856,'aa4999de3a157707ae5862a6b1937ba8200ea6ebf9f961a54cd3eac744a8756f'),(857,'b70ef3b27d123e4b0c3616cd5c1ee4446a4e0aed6d1418024732e385e66c62eb'),(858,'7dae7ebe85ecec08ad235050fff32d66469793934d6e6dcca1d76119bdc7c2c1'),(859,'d86f928444b6fd23594626d64da172a7847f4236fd3b242d6b0743515abbdd39'),(860,'10884fbf99f2237be4436b401b8e64908fe75a032c3733ca2e5e74be5ac2081f'),(861,'2000c60fd893fbde1d216d7af5af5a203778abf220dcc4eb67c8f65e1435d20e'),(862,'9891d4ad1725b9df3c65cee6ef67f7ee034bd0fe4e3ce36b74a0a1bc47e75f10'),(863,'8288493b66bd84b7bb23751d6ecf87591cbb5c5577accd003ac019862e28b3c0'),(864,'aa4999de3a157707ae5862a6b1937ba8200ea6ebf9f961a54cd3eac744a8756f'),(865,'b70ef3b27d123e4b0c3616cd5c1ee4446a4e0aed6d1418024732e385e66c62eb'),(866,'7dae7ebe85ecec08ad235050fff32d66469793934d6e6dcca1d76119bdc7c2c1'),(867,'d86f928444b6fd23594626d64da172a7847f4236fd3b242d6b0743515abbdd39'),(868,'10884fbf99f2237be4436b401b8e64908fe75a032c3733ca2e5e74be5ac2081f'),(869,'2000c60fd893fbde1d216d7af5af5a203778abf220dcc4eb67c8f65e1435d20e'),(870,'9891d4ad1725b9df3c65cee6ef67f7ee034bd0fe4e3ce36b74a0a1bc47e75f10'),(871,'8288493b66bd84b7bb23751d6ecf87591cbb5c5577accd003ac019862e28b3c0'),(872,'aa4999de3a157707ae5862a6b1937ba8200ea6ebf9f961a54cd3eac744a8756f'),(873,'b70ef3b27d123e4b0c3616cd5c1ee4446a4e0aed6d1418024732e385e66c62eb'),(874,'7dae7ebe85ecec08ad235050fff32d66469793934d6e6dcca1d76119bdc7c2c1'),(875,'d86f928444b6fd23594626d64da172a7847f4236fd3b242d6b0743515abbdd39'),(876,'10884fbf99f2237be4436b401b8e64908fe75a032c3733ca2e5e74be5ac2081f'),(877,'2000c60fd893fbde1d216d7af5af5a203778abf220dcc4eb67c8f65e1435d20e'),(878,'9891d4ad1725b9df3c65cee6ef67f7ee034bd0fe4e3ce36b74a0a1bc47e75f10'),(879,'8288493b66bd84b7bb23751d6ecf87591cbb5c5577accd003ac019862e28b3c0'),(880,'aa4999de3a157707ae5862a6b1937ba8200ea6ebf9f961a54cd3eac744a8756f'),(881,'b70ef3b27d123e4b0c3616cd5c1ee4446a4e0aed6d1418024732e385e66c62eb'),(882,'7dae7ebe85ecec08ad235050fff32d66469793934d6e6dcca1d76119bdc7c2c1'),(883,'d86f928444b6fd23594626d64da172a7847f4236fd3b242d6b0743515abbdd39'),(884,'10884fbf99f2237be4436b401b8e64908fe75a032c3733ca2e5e74be5ac2081f'),(885,'2000c60fd893fbde1d216d7af5af5a203778abf220dcc4eb67c8f65e1435d20e'),(886,'9891d4ad1725b9df3c65cee6ef67f7ee034bd0fe4e3ce36b74a0a1bc47e75f10'),(887,'8288493b66bd84b7bb23751d6ecf87591cbb5c5577accd003ac019862e28b3c0'),(888,'aa4999de3a157707ae5862a6b1937ba8200ea6ebf9f961a54cd3eac744a8756f'),(889,'b70ef3b27d123e4b0c3616cd5c1ee4446a4e0aed6d1418024732e385e66c62eb'),(890,'7dae7ebe85ecec08ad235050fff32d66469793934d6e6dcca1d76119bdc7c2c1'),(891,'d86f928444b6fd23594626d64da172a7847f4236fd3b242d6b0743515abbdd39'),(892,'10884fbf99f2237be4436b401b8e64908fe75a032c3733ca2e5e74be5ac2081f'),(893,'2000c60fd893fbde1d216d7af5af5a203778abf220dcc4eb67c8f65e1435d20e'),(894,'9891d4ad1725b9df3c65cee6ef67f7ee034bd0fe4e3ce36b74a0a1bc47e75f10'),(895,'8288493b66bd84b7bb23751d6ecf87591cbb5c5577accd003ac019862e28b3c0'),(896,'aa4999de3a157707ae5862a6b1937ba8200ea6ebf9f961a54cd3eac744a8756f'),(897,'b70ef3b27d123e4b0c3616cd5c1ee4446a4e0aed6d1418024732e385e66c62eb'),(898,'7dae7ebe85ecec08ad235050fff32d66469793934d6e6dcca1d76119bdc7c2c1'),(899,'d86f928444b6fd23594626d64da172a7847f4236fd3b242d6b0743515abbdd39'),(900,'10884fbf99f2237be4436b401b8e64908fe75a032c3733ca2e5e74be5ac2081f'),(901,'2000c60fd893fbde1d216d7af5af5a203778abf220dcc4eb67c8f65e1435d20e'),(902,'9891d4ad1725b9df3c65cee6ef67f7ee034bd0fe4e3ce36b74a0a1bc47e75f10'),(903,'8288493b66bd84b7bb23751d6ecf87591cbb5c5577accd003ac019862e28b3c0'),(904,'aa4999de3a157707ae5862a6b1937ba8200ea6ebf9f961a54cd3eac744a8756f'),(905,'b70ef3b27d123e4b0c3616cd5c1ee4446a4e0aed6d1418024732e385e66c62eb'),(906,'7dae7ebe85ecec08ad235050fff32d66469793934d6e6dcca1d76119bdc7c2c1'),(907,'d86f928444b6fd23594626d64da172a7847f4236fd3b242d6b0743515abbdd39'),(908,'10884fbf99f2237be4436b401b8e64908fe75a032c3733ca2e5e74be5ac2081f'),(909,'2000c60fd893fbde1d216d7af5af5a203778abf220dcc4eb67c8f65e1435d20e'),(910,'9891d4ad1725b9df3c65cee6ef67f7ee034bd0fe4e3ce36b74a0a1bc47e75f10'),(911,'8288493b66bd84b7bb23751d6ecf87591cbb5c5577accd003ac019862e28b3c0'),(912,'aa4999de3a157707ae5862a6b1937ba8200ea6ebf9f961a54cd3eac744a8756f'),(913,'b70ef3b27d123e4b0c3616cd5c1ee4446a4e0aed6d1418024732e385e66c62eb'),(914,'7dae7ebe85ecec08ad235050fff32d66469793934d6e6dcca1d76119bdc7c2c1'),(915,'d86f928444b6fd23594626d64da172a7847f4236fd3b242d6b0743515abbdd39'),(916,'10884fbf99f2237be4436b401b8e64908fe75a032c3733ca2e5e74be5ac2081f'),(917,'2000c60fd893fbde1d216d7af5af5a203778abf220dcc4eb67c8f65e1435d20e'),(918,'9891d4ad1725b9df3c65cee6ef67f7ee034bd0fe4e3ce36b74a0a1bc47e75f10'),(919,'8288493b66bd84b7bb23751d6ecf87591cbb5c5577accd003ac019862e28b3c0'),(920,'aa4999de3a157707ae5862a6b1937ba8200ea6ebf9f961a54cd3eac744a8756f'),(921,'b70ef3b27d123e4b0c3616cd5c1ee4446a4e0aed6d1418024732e385e66c62eb'),(922,'7dae7ebe85ecec08ad235050fff32d66469793934d6e6dcca1d76119bdc7c2c1'),(923,'d86f928444b6fd23594626d64da172a7847f4236fd3b242d6b0743515abbdd39'),(924,'10884fbf99f2237be4436b401b8e64908fe75a032c3733ca2e5e74be5ac2081f'),(925,'2000c60fd893fbde1d216d7af5af5a203778abf220dcc4eb67c8f65e1435d20e'),(926,'9891d4ad1725b9df3c65cee6ef67f7ee034bd0fe4e3ce36b74a0a1bc47e75f10'),(927,'8288493b66bd84b7bb23751d6ecf87591cbb5c5577accd003ac019862e28b3c0'),(928,'aa4999de3a157707ae5862a6b1937ba8200ea6ebf9f961a54cd3eac744a8756f'),(929,'b70ef3b27d123e4b0c3616cd5c1ee4446a4e0aed6d1418024732e385e66c62eb'),(930,'7dae7ebe85ecec08ad235050fff32d66469793934d6e6dcca1d76119bdc7c2c1'),(931,'d86f928444b6fd23594626d64da172a7847f4236fd3b242d6b0743515abbdd39'),(932,'10884fbf99f2237be4436b401b8e64908fe75a032c3733ca2e5e74be5ac2081f'),(933,'2000c60fd893fbde1d216d7af5af5a203778abf220dcc4eb67c8f65e1435d20e'),(934,'9891d4ad1725b9df3c65cee6ef67f7ee034bd0fe4e3ce36b74a0a1bc47e75f10'),(935,'8288493b66bd84b7bb23751d6ecf87591cbb5c5577accd003ac019862e28b3c0'),(936,'aa4999de3a157707ae5862a6b1937ba8200ea6ebf9f961a54cd3eac744a8756f'),(937,'b70ef3b27d123e4b0c3616cd5c1ee4446a4e0aed6d1418024732e385e66c62eb'),(938,'7dae7ebe85ecec08ad235050fff32d66469793934d6e6dcca1d76119bdc7c2c1'),(939,'d86f928444b6fd23594626d64da172a7847f4236fd3b242d6b0743515abbdd39'),(940,'10884fbf99f2237be4436b401b8e64908fe75a032c3733ca2e5e74be5ac2081f'),(941,'2000c60fd893fbde1d216d7af5af5a203778abf220dcc4eb67c8f65e1435d20e'),(942,'9891d4ad1725b9df3c65cee6ef67f7ee034bd0fe4e3ce36b74a0a1bc47e75f10'),(943,'8288493b66bd84b7bb23751d6ecf87591cbb5c5577accd003ac019862e28b3c0'),(944,'aa4999de3a157707ae5862a6b1937ba8200ea6ebf9f961a54cd3eac744a8756f'),(945,'b70ef3b27d123e4b0c3616cd5c1ee4446a4e0aed6d1418024732e385e66c62eb'),(946,'7dae7ebe85ecec08ad235050fff32d66469793934d6e6dcca1d76119bdc7c2c1'),(947,'d86f928444b6fd23594626d64da172a7847f4236fd3b242d6b0743515abbdd39'),(948,'10884fbf99f2237be4436b401b8e64908fe75a032c3733ca2e5e74be5ac2081f'),(949,'2000c60fd893fbde1d216d7af5af5a203778abf220dcc4eb67c8f65e1435d20e'),(950,'9891d4ad1725b9df3c65cee6ef67f7ee034bd0fe4e3ce36b74a0a1bc47e75f10'),(951,'8288493b66bd84b7bb23751d6ecf87591cbb5c5577accd003ac019862e28b3c0'),(952,'aa4999de3a157707ae5862a6b1937ba8200ea6ebf9f961a54cd3eac744a8756f'),(953,'b70ef3b27d123e4b0c3616cd5c1ee4446a4e0aed6d1418024732e385e66c62eb'),(954,'7dae7ebe85ecec08ad235050fff32d66469793934d6e6dcca1d76119bdc7c2c1'),(955,'d86f928444b6fd23594626d64da172a7847f4236fd3b242d6b0743515abbdd39'),(956,'10884fbf99f2237be4436b401b8e64908fe75a032c3733ca2e5e74be5ac2081f'),(957,'2000c60fd893fbde1d216d7af5af5a203778abf220dcc4eb67c8f65e1435d20e'),(958,'9891d4ad1725b9df3c65cee6ef67f7ee034bd0fe4e3ce36b74a0a1bc47e75f10'),(959,'8288493b66bd84b7bb23751d6ecf87591cbb5c5577accd003ac019862e28b3c0'),(960,'aa4999de3a157707ae5862a6b1937ba8200ea6ebf9f961a54cd3eac744a8756f'),(961,'b70ef3b27d123e4b0c3616cd5c1ee4446a4e0aed6d1418024732e385e66c62eb'),(962,'7dae7ebe85ecec08ad235050fff32d66469793934d6e6dcca1d76119bdc7c2c1'),(963,'d86f928444b6fd23594626d64da172a7847f4236fd3b242d6b0743515abbdd39'),(964,'10884fbf99f2237be4436b401b8e64908fe75a032c3733ca2e5e74be5ac2081f'),(965,'2000c60fd893fbde1d216d7af5af5a203778abf220dcc4eb67c8f65e1435d20e'),(966,'9891d4ad1725b9df3c65cee6ef67f7ee034bd0fe4e3ce36b74a0a1bc47e75f10'),(967,'8288493b66bd84b7bb23751d6ecf87591cbb5c5577accd003ac019862e28b3c0'),(968,'aa4999de3a157707ae5862a6b1937ba8200ea6ebf9f961a54cd3eac744a8756f'),(969,'b70ef3b27d123e4b0c3616cd5c1ee4446a4e0aed6d1418024732e385e66c62eb'),(970,'7dae7ebe85ecec08ad235050fff32d66469793934d6e6dcca1d76119bdc7c2c1'),(971,'d86f928444b6fd23594626d64da172a7847f4236fd3b242d6b0743515abbdd39'),(972,'10884fbf99f2237be4436b401b8e64908fe75a032c3733ca2e5e74be5ac2081f'),(973,'2000c60fd893fbde1d216d7af5af5a203778abf220dcc4eb67c8f65e1435d20e'),(974,'9891d4ad1725b9df3c65cee6ef67f7ee034bd0fe4e3ce36b74a0a1bc47e75f10'),(975,'8288493b66bd84b7bb23751d6ecf87591cbb5c5577accd003ac019862e28b3c0'),(976,'aa4999de3a157707ae5862a6b1937ba8200ea6ebf9f961a54cd3eac744a8756f'),(977,'b70ef3b27d123e4b0c3616cd5c1ee4446a4e0aed6d1418024732e385e66c62eb'),(978,'7dae7ebe85ecec08ad235050fff32d66469793934d6e6dcca1d76119bdc7c2c1'),(979,'d86f928444b6fd23594626d64da172a7847f4236fd3b242d6b0743515abbdd39'),(980,'10884fbf99f2237be4436b401b8e64908fe75a032c3733ca2e5e74be5ac2081f'),(981,'2000c60fd893fbde1d216d7af5af5a203778abf220dcc4eb67c8f65e1435d20e'),(982,'9891d4ad1725b9df3c65cee6ef67f7ee034bd0fe4e3ce36b74a0a1bc47e75f10'),(983,'8288493b66bd84b7bb23751d6ecf87591cbb5c5577accd003ac019862e28b3c0'),(984,'aa4999de3a157707ae5862a6b1937ba8200ea6ebf9f961a54cd3eac744a8756f'),(985,'b70ef3b27d123e4b0c3616cd5c1ee4446a4e0aed6d1418024732e385e66c62eb'),(986,'7dae7ebe85ecec08ad235050fff32d66469793934d6e6dcca1d76119bdc7c2c1'),(987,'d86f928444b6fd23594626d64da172a7847f4236fd3b242d6b0743515abbdd39'),(988,'10884fbf99f2237be4436b401b8e64908fe75a032c3733ca2e5e74be5ac2081f'),(989,'2000c60fd893fbde1d216d7af5af5a203778abf220dcc4eb67c8f65e1435d20e'),(990,'9891d4ad1725b9df3c65cee6ef67f7ee034bd0fe4e3ce36b74a0a1bc47e75f10'),(991,'8288493b66bd84b7bb23751d6ecf87591cbb5c5577accd003ac019862e28b3c0'),(992,'aa4999de3a157707ae5862a6b1937ba8200ea6ebf9f961a54cd3eac744a8756f'),(993,'b70ef3b27d123e4b0c3616cd5c1ee4446a4e0aed6d1418024732e385e66c62eb'),(994,'7dae7ebe85ecec08ad235050fff32d66469793934d6e6dcca1d76119bdc7c2c1'),(995,'d86f928444b6fd23594626d64da172a7847f4236fd3b242d6b0743515abbdd39'),(996,'10884fbf99f2237be4436b401b8e64908fe75a032c3733ca2e5e74be5ac2081f'),(997,'2000c60fd893fbde1d216d7af5af5a203778abf220dcc4eb67c8f65e1435d20e'),(998,'9891d4ad1725b9df3c65cee6ef67f7ee034bd0fe4e3ce36b74a0a1bc47e75f10'),(999,'8288493b66bd84b7bb23751d6ecf87591cbb5c5577accd003ac019862e28b3c0'),(1000,'aa4999de3a157707ae5862a6b1937ba8200ea6ebf9f961a54cd3eac744a8756f'),(1001,'b70ef3b27d123e4b0c3616cd5c1ee4446a4e0aed6d1418024732e385e66c62eb'),(1002,'7dae7ebe85ecec08ad235050fff32d66469793934d6e6dcca1d76119bdc7c2c1'),(1003,'d86f928444b6fd23594626d64da172a7847f4236fd3b242d6b0743515abbdd39'),(1004,'10884fbf99f2237be4436b401b8e64908fe75a032c3733ca2e5e74be5ac2081f'),(1005,'2000c60fd893fbde1d216d7af5af5a203778abf220dcc4eb67c8f65e1435d20e'),(1006,'9891d4ad1725b9df3c65cee6ef67f7ee034bd0fe4e3ce36b74a0a1bc47e75f10'),(1007,'8288493b66bd84b7bb23751d6ecf87591cbb5c5577accd003ac019862e28b3c0'),(1008,'aa4999de3a157707ae5862a6b1937ba8200ea6ebf9f961a54cd3eac744a8756f'),(1009,'b70ef3b27d123e4b0c3616cd5c1ee4446a4e0aed6d1418024732e385e66c62eb'),(1010,'7dae7ebe85ecec08ad235050fff32d66469793934d6e6dcca1d76119bdc7c2c1'),(1011,'d86f928444b6fd23594626d64da172a7847f4236fd3b242d6b0743515abbdd39'),(1012,'10884fbf99f2237be4436b401b8e64908fe75a032c3733ca2e5e74be5ac2081f'),(1013,'2000c60fd893fbde1d216d7af5af5a203778abf220dcc4eb67c8f65e1435d20e'),(1014,'9891d4ad1725b9df3c65cee6ef67f7ee034bd0fe4e3ce36b74a0a1bc47e75f10'),(1015,'8288493b66bd84b7bb23751d6ecf87591cbb5c5577accd003ac019862e28b3c0'),(1016,'aa4999de3a157707ae5862a6b1937ba8200ea6ebf9f961a54cd3eac744a8756f'),(1017,'b70ef3b27d123e4b0c3616cd5c1ee4446a4e0aed6d1418024732e385e66c62eb'),(1018,'7dae7ebe85ecec08ad235050fff32d66469793934d6e6dcca1d76119bdc7c2c1'),(1019,'d86f928444b6fd23594626d64da172a7847f4236fd3b242d6b0743515abbdd39'),(1020,'10884fbf99f2237be4436b401b8e64908fe75a032c3733ca2e5e74be5ac2081f'),(1021,'2000c60fd893fbde1d216d7af5af5a203778abf220dcc4eb67c8f65e1435d20e'),(1022,'9891d4ad1725b9df3c65cee6ef67f7ee034bd0fe4e3ce36b74a0a1bc47e75f10'),(1023,'8288493b66bd84b7bb23751d6ecf87591cbb5c5577accd003ac019862e28b3c0'),(1024,'aa4999de3a157707ae5862a6b1937ba8200ea6ebf9f961a54cd3eac744a8756f'),(1025,'b70ef3b27d123e4b0c3616cd5c1ee4446a4e0aed6d1418024732e385e66c62eb'),(1026,'7dae7ebe85ecec08ad235050fff32d66469793934d6e6dcca1d76119bdc7c2c1'),(1027,'d86f928444b6fd23594626d64da172a7847f4236fd3b242d6b0743515abbdd39'),(1028,'10884fbf99f2237be4436b401b8e64908fe75a032c3733ca2e5e74be5ac2081f'),(1029,'2000c60fd893fbde1d216d7af5af5a203778abf220dcc4eb67c8f65e1435d20e'),(1030,'9891d4ad1725b9df3c65cee6ef67f7ee034bd0fe4e3ce36b74a0a1bc47e75f10'),(1031,'8288493b66bd84b7bb23751d6ecf87591cbb5c5577accd003ac019862e28b3c0'),(1032,'aa4999de3a157707ae5862a6b1937ba8200ea6ebf9f961a54cd3eac744a8756f'),(1033,'b70ef3b27d123e4b0c3616cd5c1ee4446a4e0aed6d1418024732e385e66c62eb'),(1034,'7dae7ebe85ecec08ad235050fff32d66469793934d6e6dcca1d76119bdc7c2c1'),(1035,'d86f928444b6fd23594626d64da172a7847f4236fd3b242d6b0743515abbdd39'),(1036,'10884fbf99f2237be4436b401b8e64908fe75a032c3733ca2e5e74be5ac2081f'),(1037,'2000c60fd893fbde1d216d7af5af5a203778abf220dcc4eb67c8f65e1435d20e'),(1038,'9891d4ad1725b9df3c65cee6ef67f7ee034bd0fe4e3ce36b74a0a1bc47e75f10'),(1039,'8288493b66bd84b7bb23751d6ecf87591cbb5c5577accd003ac019862e28b3c0'),(1040,'aa4999de3a157707ae5862a6b1937ba8200ea6ebf9f961a54cd3eac744a8756f'),(1041,'b70ef3b27d123e4b0c3616cd5c1ee4446a4e0aed6d1418024732e385e66c62eb'),(1042,'7dae7ebe85ecec08ad235050fff32d66469793934d6e6dcca1d76119bdc7c2c1'),(1043,'d86f928444b6fd23594626d64da172a7847f4236fd3b242d6b0743515abbdd39'),(1044,'10884fbf99f2237be4436b401b8e64908fe75a032c3733ca2e5e74be5ac2081f'),(1045,'2000c60fd893fbde1d216d7af5af5a203778abf220dcc4eb67c8f65e1435d20e'),(1046,'9891d4ad1725b9df3c65cee6ef67f7ee034bd0fe4e3ce36b74a0a1bc47e75f10'),(1047,'8288493b66bd84b7bb23751d6ecf87591cbb5c5577accd003ac019862e28b3c0'),(1048,'aa4999de3a157707ae5862a6b1937ba8200ea6ebf9f961a54cd3eac744a8756f'),(1049,'b70ef3b27d123e4b0c3616cd5c1ee4446a4e0aed6d1418024732e385e66c62eb'),(1050,'7dae7ebe85ecec08ad235050fff32d66469793934d6e6dcca1d76119bdc7c2c1'),(1051,'d86f928444b6fd23594626d64da172a7847f4236fd3b242d6b0743515abbdd39'),(1052,'10884fbf99f2237be4436b401b8e64908fe75a032c3733ca2e5e74be5ac2081f'),(1053,'2000c60fd893fbde1d216d7af5af5a203778abf220dcc4eb67c8f65e1435d20e'),(1054,'9891d4ad1725b9df3c65cee6ef67f7ee034bd0fe4e3ce36b74a0a1bc47e75f10'),(1055,'8288493b66bd84b7bb23751d6ecf87591cbb5c5577accd003ac019862e28b3c0'),(1056,'aa4999de3a157707ae5862a6b1937ba8200ea6ebf9f961a54cd3eac744a8756f'),(1057,'b70ef3b27d123e4b0c3616cd5c1ee4446a4e0aed6d1418024732e385e66c62eb'),(1058,'7dae7ebe85ecec08ad235050fff32d66469793934d6e6dcca1d76119bdc7c2c1'),(1059,'d86f928444b6fd23594626d64da172a7847f4236fd3b242d6b0743515abbdd39'),(1060,'10884fbf99f2237be4436b401b8e64908fe75a032c3733ca2e5e74be5ac2081f'),(1061,'2000c60fd893fbde1d216d7af5af5a203778abf220dcc4eb67c8f65e1435d20e'),(1062,'9891d4ad1725b9df3c65cee6ef67f7ee034bd0fe4e3ce36b74a0a1bc47e75f10'),(1063,'8288493b66bd84b7bb23751d6ecf87591cbb5c5577accd003ac019862e28b3c0'),(1064,'aa4999de3a157707ae5862a6b1937ba8200ea6ebf9f961a54cd3eac744a8756f'),(1065,'b70ef3b27d123e4b0c3616cd5c1ee4446a4e0aed6d1418024732e385e66c62eb'),(1066,'7dae7ebe85ecec08ad235050fff32d66469793934d6e6dcca1d76119bdc7c2c1'),(1067,'d86f928444b6fd23594626d64da172a7847f4236fd3b242d6b0743515abbdd39'),(1068,'10884fbf99f2237be4436b401b8e64908fe75a032c3733ca2e5e74be5ac2081f'),(1069,'2000c60fd893fbde1d216d7af5af5a203778abf220dcc4eb67c8f65e1435d20e'),(1070,'9891d4ad1725b9df3c65cee6ef67f7ee034bd0fe4e3ce36b74a0a1bc47e75f10'),(1071,'8288493b66bd84b7bb23751d6ecf87591cbb5c5577accd003ac019862e28b3c0'),(1072,'aa4999de3a157707ae5862a6b1937ba8200ea6ebf9f961a54cd3eac744a8756f'),(1073,'b70ef3b27d123e4b0c3616cd5c1ee4446a4e0aed6d1418024732e385e66c62eb'),(1074,'7dae7ebe85ecec08ad235050fff32d66469793934d6e6dcca1d76119bdc7c2c1'),(1075,'d86f928444b6fd23594626d64da172a7847f4236fd3b242d6b0743515abbdd39'),(1076,'10884fbf99f2237be4436b401b8e64908fe75a032c3733ca2e5e74be5ac2081f'),(1077,'8a88fdbbf15df83a2f1c41bf043b652b8d3b50ae2a77881350673c6912b9076b'),(1078,'29d85a603ca9b712bc0def0523c6b69cfb4bf80b5ad2162f3539e88c451ec1f1'),(1079,'ce2f49cb18686bb1e083031ec15d6da1cc585bfb5d9dcb995483fa720d73ab97'),(1080,'948266f123959748e753fc312abda8793e1eb8d5c8162131321fd20ae33f582e'),(1081,'e6c79a735ee735c6918328d8bbcd4702eb8fbabb89a8c10f0993ee582d89059a'),(1082,'b86a484fc2c8ed5c2eac4e0f4b44d7d751b72adca0cb9bbb38ae5aaa18507e0e'),(1083,'1bd1bfb275e1a17a515a0f94a24181a6c786708661ca065933e99880b28ff4a8'),(1084,'5dedd727df2705cfda83ee7e6a4e6a83c54fc819d0b16665ff334dc936fc4179');
/*!40000 ALTER TABLE `new1_loadedtransaction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `new1_menu`
--

DROP TABLE IF EXISTS `new1_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `new1_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `menutype` varchar(24) NOT NULL COMMENT 'The type of menu this item belongs to. FK to #__menu_types.menutype',
  `title` varchar(255) NOT NULL COMMENT 'The display title of the menu item.',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'The SEF alias of the menu item.',
  `note` varchar(255) NOT NULL DEFAULT '',
  `path` varchar(1024) NOT NULL COMMENT 'The computed path of the menu item based on the alias field.',
  `link` varchar(1024) NOT NULL COMMENT 'The actually link the menu item refers to.',
  `type` varchar(16) NOT NULL COMMENT 'The type of link: Component, URL, Alias, Separator',
  `published` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'The published state of the menu link.',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '1' COMMENT 'The parent menu item in the menu tree.',
  `level` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'The relative level in the tree.',
  `component_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to #__extensions.id',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to #__users.id',
  `checked_out_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'The time the menu item was checked out.',
  `browserNav` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'The click behaviour of the link.',
  `access` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'The access level required to view the menu item.',
  `img` varchar(255) NOT NULL COMMENT 'The image of the menu item.',
  `template_style_id` int(10) unsigned NOT NULL DEFAULT '0',
  `params` text NOT NULL COMMENT 'JSON encoded data for the menu item.',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `home` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Indicates if this menu item is the home or default page.',
  `language` char(7) NOT NULL DEFAULT '',
  `client_id` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_client_id_parent_id_alias_language` (`client_id`,`parent_id`,`alias`,`language`),
  KEY `idx_componentid` (`component_id`,`menutype`,`published`,`access`),
  KEY `idx_menutype` (`menutype`),
  KEY `idx_left_right` (`lft`,`rgt`),
  KEY `idx_alias` (`alias`),
  KEY `idx_path` (`path`(255)),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB AUTO_INCREMENT=111 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `new1_menu`
--

LOCK TABLES `new1_menu` WRITE;
/*!40000 ALTER TABLE `new1_menu` DISABLE KEYS */;
INSERT INTO `new1_menu` VALUES (1,'','Menu_Item_Root','root','','','','',1,0,0,0,0,'0000-00-00 00:00:00',0,0,'',0,'',0,59,0,'*',0),(2,'menu','com_banners','Banners','','Banners','index.php?option=com_banners','component',0,1,1,4,0,'0000-00-00 00:00:00',0,0,'class:banners',0,'',1,10,0,'*',1),(3,'menu','com_banners','Banners','','Banners/Banners','index.php?option=com_banners','component',0,2,2,4,0,'0000-00-00 00:00:00',0,0,'class:banners',0,'',2,3,0,'*',1),(4,'menu','com_banners_categories','Categories','','Banners/Categories','index.php?option=com_categories&extension=com_banners','component',0,2,2,6,0,'0000-00-00 00:00:00',0,0,'class:banners-cat',0,'',4,5,0,'*',1),(5,'menu','com_banners_clients','Clients','','Banners/Clients','index.php?option=com_banners&view=clients','component',0,2,2,4,0,'0000-00-00 00:00:00',0,0,'class:banners-clients',0,'',6,7,0,'*',1),(6,'menu','com_banners_tracks','Tracks','','Banners/Tracks','index.php?option=com_banners&view=tracks','component',0,2,2,4,0,'0000-00-00 00:00:00',0,0,'class:banners-tracks',0,'',8,9,0,'*',1),(7,'menu','com_contact','Contacts','','Contacts','index.php?option=com_contact','component',0,1,1,8,0,'0000-00-00 00:00:00',0,0,'class:contact',0,'',19,24,0,'*',1),(8,'menu','com_contact','Contacts','','Contacts/Contacts','index.php?option=com_contact','component',0,7,2,8,0,'0000-00-00 00:00:00',0,0,'class:contact',0,'',20,21,0,'*',1),(9,'menu','com_contact_categories','Categories','','Contacts/Categories','index.php?option=com_categories&extension=com_contact','component',0,7,2,6,0,'0000-00-00 00:00:00',0,0,'class:contact-cat',0,'',22,23,0,'*',1),(10,'menu','com_messages','Messaging','','Messaging','index.php?option=com_messages','component',0,1,1,15,0,'0000-00-00 00:00:00',0,0,'class:messages',0,'',25,30,0,'*',1),(11,'menu','com_messages_add','New Private Message','','Messaging/New Private Message','index.php?option=com_messages&task=message.add','component',0,10,2,15,0,'0000-00-00 00:00:00',0,0,'class:messages-add',0,'',26,27,0,'*',1),(12,'menu','com_messages_read','Read Private Message','','Messaging/Read Private Message','index.php?option=com_messages','component',0,10,2,15,0,'0000-00-00 00:00:00',0,0,'class:messages-read',0,'',28,29,0,'*',1),(13,'menu','com_newsfeeds','News Feeds','','News Feeds','index.php?option=com_newsfeeds','component',0,1,1,17,0,'0000-00-00 00:00:00',0,0,'class:newsfeeds',0,'',31,36,0,'*',1),(14,'menu','com_newsfeeds_feeds','Feeds','','News Feeds/Feeds','index.php?option=com_newsfeeds','component',0,13,2,17,0,'0000-00-00 00:00:00',0,0,'class:newsfeeds',0,'',32,33,0,'*',1),(15,'menu','com_newsfeeds_categories','Categories','','News Feeds/Categories','index.php?option=com_categories&extension=com_newsfeeds','component',0,13,2,6,0,'0000-00-00 00:00:00',0,0,'class:newsfeeds-cat',0,'',34,35,0,'*',1),(16,'menu','com_redirect','Redirect','','Redirect','index.php?option=com_redirect','component',0,1,1,24,0,'0000-00-00 00:00:00',0,0,'class:redirect',0,'',37,38,0,'*',1),(17,'menu','com_search','Basic Search','','Basic Search','index.php?option=com_search','component',0,1,1,19,0,'0000-00-00 00:00:00',0,0,'class:search',0,'',39,40,0,'*',1),(18,'menu','com_weblinks','Weblinks','','Weblinks','index.php?option=com_weblinks','component',0,1,1,21,0,'0000-00-00 00:00:00',0,0,'class:weblinks',0,'',41,46,0,'*',1),(19,'menu','com_weblinks_links','Links','','Weblinks/Links','index.php?option=com_weblinks','component',0,18,2,21,0,'0000-00-00 00:00:00',0,0,'class:weblinks',0,'',42,43,0,'*',1),(20,'menu','com_weblinks_categories','Categories','','Weblinks/Categories','index.php?option=com_categories&extension=com_weblinks','component',0,18,2,6,0,'0000-00-00 00:00:00',0,0,'class:weblinks-cat',0,'',44,45,0,'*',1),(21,'menu','com_finder','Smart Search','','Smart Search','index.php?option=com_finder','component',0,1,1,27,0,'0000-00-00 00:00:00',0,0,'class:finder',0,'',47,48,0,'*',1),(22,'menu','com_joomlaupdate','Joomla! Update','','Joomla! Update','index.php?option=com_joomlaupdate','component',1,1,1,28,0,'0000-00-00 00:00:00',0,0,'class:joomlaupdate',0,'',49,50,0,'*',1),(23,'main','com_tags','Tags','','Tags','index.php?option=com_tags','component',0,1,1,29,0,'0000-00-00 00:00:00',0,1,'class:tags',0,'',51,52,0,'',1),(24,'main','com_postinstall','Post-installation messages','','Post-installation messages','index.php?option=com_postinstall','component',0,1,1,32,0,'0000-00-00 00:00:00',0,1,'class:postinstall',0,'',53,54,0,'*',1),(101,'mainmenu','Home','home','','home','index.php?option=com_wrapper&view=wrapper','component',1,1,1,2,0,'0000-00-00 00:00:00',0,1,'',0,'{\"url\":\"1\",\"scrolling\":\"auto\",\"width\":\"100%\",\"height\":\"500\",\"height_auto\":\"0\",\"add_scheme\":\"1\",\"frameborder\":\"1\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',55,56,1,'*',0),(102,'top','About','about','','about','index.php?option=com_content&view=article&id=5652','component',0,1,1,22,0,'0000-00-00 00:00:00',0,1,'',0,'{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_vote\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"show_tags\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',13,14,0,'*',0),(103,'top','Categories','categories','','categories','index.php?option=com_content&view=categories&id=8','component',0,1,1,22,0,'0000-00-00 00:00:00',0,1,'',0,'{\"show_base_description\":\"\",\"categories_description\":\"\",\"maxLevelcat\":\"\",\"show_empty_categories_cat\":\"\",\"show_subcat_desc_cat\":\"\",\"show_cat_num_articles_cat\":\"\",\"show_category_title\":\"0\",\"show_description\":\"\",\"show_description_image\":\"\",\"maxLevel\":\"-1\",\"show_empty_categories\":\"\",\"show_no_articles\":\"\",\"show_subcat_desc\":\"\",\"show_cat_num_articles\":\"\",\"num_leading_articles\":\"1\",\"num_intro_articles\":\"4\",\"num_columns\":\"2\",\"num_links\":\"4\",\"multi_column_order\":\"\",\"show_subcategory_content\":\"\",\"orderby_pri\":\"\",\"orderby_sec\":\"\",\"order_date\":\"\",\"show_pagination\":\"\",\"show_pagination_results\":\"\",\"show_pagination_limit\":\"\",\"filter_field\":\"\",\"show_headings\":\"\",\"list_show_date\":\"\",\"date_format\":\"\",\"list_show_hits\":\"\",\"list_show_author\":\"\",\"display_num\":\"10\",\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_vote\":\"\",\"show_readmore\":\"\",\"show_readmore_title\":\"\",\"show_icons\":\"1\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"show_feed_link\":\"\",\"feed_summary\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',15,16,0,'*',0),(104,'top','Contact','contact','','contact','index.php?option=com_contact&view=featured','component',0,1,1,8,0,'0000-00-00 00:00:00',0,1,'',0,'{\"show_pagination_limit\":\"\",\"show_headings\":\"\",\"show_position_headings\":\"\",\"show_email_headings\":\"\",\"show_telephone_headings\":\"\",\"show_mobile_headings\":\"\",\"show_fax_headings\":\"\",\"show_suburb_headings\":\"\",\"show_state_headings\":\"\",\"show_country_headings\":\"\",\"show_pagination\":\"\",\"show_pagination_results\":\"\",\"presentation_style\":\"\",\"show_name\":\"\",\"show_position\":\"\",\"show_email\":\"\",\"show_street_address\":\"\",\"show_suburb\":\"\",\"show_state\":\"\",\"show_postcode\":\"\",\"show_country\":\"\",\"show_telephone\":\"\",\"show_mobile\":\"\",\"show_fax\":\"\",\"show_webpage\":\"\",\"show_misc\":\"\",\"show_image\":\"\",\"allow_vcard\":\"\",\"show_articles\":\"\",\"show_links\":\"\",\"linka_name\":\"\",\"linkb_name\":\"\",\"linkc_name\":\"\",\"linkd_name\":\"\",\"linke_name\":\"\",\"show_email_form\":\"\",\"show_email_copy\":\"\",\"banned_email\":\"\",\"banned_subject\":\"\",\"banned_text\":\"\",\"validate_session\":\"\",\"custom_reply\":\"\",\"redirect\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',17,18,0,'*',0),(109,'top','Home','2014-09-25-10-12-44','','2014-09-25-10-12-44','/','url',0,1,1,0,0,'0000-00-00 00:00:00',0,1,'',0,'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1}',11,12,0,'*',0),(110,'main','COM_FIELSATTACH_MENU','com-fielsattach-menu','','com-fielsattach-menu','index.php?option=com_fieldsattach','component',0,1,1,716,0,'0000-00-00 00:00:00',0,1,'../media/com_fieldsattach/images/logo-16x16.png',0,'',57,58,0,'',1);
/*!40000 ALTER TABLE `new1_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `new1_menu_types`
--

DROP TABLE IF EXISTS `new1_menu_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `new1_menu_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `menutype` varchar(24) NOT NULL,
  `title` varchar(48) NOT NULL,
  `description` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_menutype` (`menutype`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `new1_menu_types`
--

LOCK TABLES `new1_menu_types` WRITE;
/*!40000 ALTER TABLE `new1_menu_types` DISABLE KEYS */;
INSERT INTO `new1_menu_types` VALUES (1,'mainmenu','Main Menu','The main menu for the site'),(2,'top','Top menu','');
/*!40000 ALTER TABLE `new1_menu_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `new1_messages`
--

DROP TABLE IF EXISTS `new1_messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `new1_messages` (
  `message_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id_from` int(10) unsigned NOT NULL DEFAULT '0',
  `user_id_to` int(10) unsigned NOT NULL DEFAULT '0',
  `folder_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `date_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `state` tinyint(1) NOT NULL DEFAULT '0',
  `priority` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `subject` varchar(255) NOT NULL DEFAULT '',
  `message` text NOT NULL,
  PRIMARY KEY (`message_id`),
  KEY `useridto_state` (`user_id_to`,`state`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `new1_messages`
--

LOCK TABLES `new1_messages` WRITE;
/*!40000 ALTER TABLE `new1_messages` DISABLE KEYS */;
/*!40000 ALTER TABLE `new1_messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `new1_messages_cfg`
--

DROP TABLE IF EXISTS `new1_messages_cfg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `new1_messages_cfg` (
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `cfg_name` varchar(100) NOT NULL DEFAULT '',
  `cfg_value` varchar(255) NOT NULL DEFAULT '',
  UNIQUE KEY `idx_user_var_name` (`user_id`,`cfg_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `new1_messages_cfg`
--

LOCK TABLES `new1_messages_cfg` WRITE;
/*!40000 ALTER TABLE `new1_messages_cfg` DISABLE KEYS */;
/*!40000 ALTER TABLE `new1_messages_cfg` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `new1_minicck`
--

DROP TABLE IF EXISTS `new1_minicck`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `new1_minicck` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content_id` int(11) NOT NULL,
  `content_type` varchar(50) NOT NULL,
  `field_1` varchar(250) NOT NULL,
  `field_2` varchar(250) NOT NULL,
  `field_3` varchar(250) NOT NULL,
  `field_4` varchar(250) NOT NULL,
  `field_5` varchar(250) NOT NULL,
  `c_model` varchar(250) NOT NULL,
  `c_country` varchar(250) NOT NULL,
  `c_state` varchar(250) NOT NULL,
  `c_city` varchar(250) NOT NULL,
  `c_street_address` varchar(250) NOT NULL,
  `c_postal_code` varchar(250) NOT NULL,
  `c_images` text NOT NULL,
  `c_video` text NOT NULL,
  `c_persona_name` varchar(250) NOT NULL,
  `c_persona_contacts` varchar(250) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=1830 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `new1_minicck`
--

LOCK TABLES `new1_minicck` WRITE;
/*!40000 ALTER TABLE `new1_minicck` DISABLE KEYS */;
INSERT INTO `new1_minicck` VALUES (367,366,'content_type_0','','','','','','','United States','New York','Adams Basin','12345 Number Ln.','12345','[]','[]','',''),(368,367,'content_type_0','','','','','','','Afghanistan','','','','','[]','[]','',''),(369,368,'content_type_0','','','','','','','Japan','','','','','[]','[]','',''),(370,369,'content_type_0','','','','','','','Kenya','','','( ͡° ͜ʖ ͡°)','( ͡° ͜ʖ ͡°)','[]','[]','',''),(371,370,'content_type_0','','','','','','','Russian Federation','','','','','[\"http:\\/\\/www.amummytoo.co.uk\\/wp-content\\/uploads\\/2013\\/08\\/Snot-the-Zombie.png\"]','[\"http:\\/\\/www.youtube.com\\/watch?v=0HtyF0jux2Q\"]','',''),(372,371,'content_type_0','','','','','','','Japan','','','','','[\"http:\\/\\/38.media.tumblr.com\\/tumblr_lqcqndeAMn1r1wcl2o1_400.jpg\",\"https:\\/\\/lh3.googleusercontent.com\\/-5HG0iZ7rqqU\\/U8RJbEzGS1I\\/AAAAAAAABWs\\/jBhtuFP-PYk\\/w476-h700\\/manga-divers-usagi-kawaii-usagi-img.png\",\"http:\\/\\/fc09.deviantart.net\\/fs70\\/f\\/2012\\/231\\/7\\/e\\/neko_nya__by_takuneru-d5bo6hw.jpg\",\"http:\\/\\/th01.deviantart.net\\/fs71\\/PRE\\/f\\/2013\\/149\\/0\\/d\\/miku_guitar_pop_blue_let_s_rock__by_takuneru-d6712ei.jpg\"]','[\"http:\\/\\/www.youtube.com\\/watch?v=SkXIurIK4zc\"]','',''),(373,372,'content_type_0','','','','','','','India','','','','','[\"https:\\/\\/encrypted-tbn0.gstatic.com\\/images?q=tbn:ANd9GcQQpKRvoBnNeQlpnqghALAK8eITpfXqF0jQyc_umeyCNBzxo5xB3EbF6k6e\"]','[]','',''),(374,373,'content_type_0','','','','','','','Afghanistan','','','https://bittrex.com/Market/Index?MarketName=BTC-CRAIG','','[]','[]','',''),(375,374,'content_type_0','','','','','','','United Kingdom','','','','','[]','[]','',''),(376,375,'content_type_0','','','','','','','Afghanistan','','','','','[]','[]','',''),(377,376,'content_type_0','','','','','','','Bermuda','Saint George','Saint George','test street','','[]','[]','',''),(378,377,'content_type_0','','','','','','','United States','','','','','[]','[]','',''),(379,378,'content_type_0','','','','','','','United Kingdom','','','','','[]','[\"https:\\/\\/www.youtube.com\\/watch?v=MP2MeVwyRCs\"]','',''),(380,379,'content_type_0','','','','','','','United States','California','','','','[\"http:\\/\\/imgur.com\\/efwlWxZ\"]','[\"http:\\/\\/www.youtube.com\\/watch?v=HzeZhCt5PVA\"]','',''),(381,380,'content_type_0','','','','','','','Ukraine','','','Interwebs','','[]','[]','',''),(382,381,'content_type_0','','','','','','','United States','New York','','','','[]','[]','',''),(383,382,'content_type_0','','','','','','','United States','','','','','[\"\",\"www.rawvapez.com\"]','[]','',''),(384,383,'content_type_0','','','','','','','United States','Illinois','Albion','4392 Orchard Street\nMinneapolis, MN 55401','4353','[\"http:\\/\\/images.craigslist.org\\/00H0H_7MW81xMKoWs_600x450.jpg\",\"http:\\/\\/images.craigslist.org\\/00s0s_eWKWfgxQ7yi_600x450.jpg\",\"http:\\/\\/images.craigslist.org\\/00Z0Z_3bQ3nnzMzwJ_600x450.jpg\",\"http:\\/\\/images.craigslist.org\\/00z0z_2jmHzciDHqy_600x450.jpg\"]','[\"http:\\/\\/www.youtube.com\\/watch?v=dQw4w9WgXcQ\"]','',''),(385,384,'content_type_0','','','','','','','United States','New York','Alfred','1255 Oak Street\nCroghan, NY 13327','','[\"http:\\/\\/images.craigslist.org\\/00W0W_bEVZGkblI9J_600x450.jpg\",\"http:\\/\\/images.craigslist.org\\/01111_kx6EVj7R0tm_600x450.jpg\",\"http:\\/\\/images.craigslist.org\\/01111_7cV3I8wseVX_600x450.jpg\",\"http:\\/\\/images.craigslist.org\\/00H0H_a8fukRCmjcR_600x450.jpg\",\"http:\\/\\/images.craigslist.org\\/01313_98nTKsPFNgA_600x450.jpg\"]','[\"http:\\/\\/www.youtube.com\\/watch?v=dQw4w9WgXcQ\"]','',''),(386,385,'content_type_0','','','','','','','United States','New York','Altamont','2001 Marshville Road\nMargaretville, NY 12455','','[\"http:\\/\\/images.craigslist.org\\/00A0A_fORBPinUoOv_600x450.jpg\"]','[\"http:\\/\\/www.youtube.com\\/watch?v=dQw4w9WgXcQ\"]','',''),(387,386,'content_type_0','','','','','','','Afghanistan','','','4777 Lake Forest Drive\nYorktown Heights, NY','10598','[\"http:\\/\\/images.craigslist.org\\/00909_jekUv9YDqzj_600x450.jpg\",\"http:\\/\\/images.craigslist.org\\/00505_9YAiXxDsSZL_600x450.jpg\",\"http:\\/\\/images.craigslist.org\\/00505_fYYBnIWCTvd_600x450.jpg\",\"http:\\/\\/images.craigslist.org\\/00404_1H7KNtGiqTP_600x450.jpg\",\"http:\\/\\/images.craigslist.org\\/00L0L_g1JFwR7aKok_600x450.jpg\"]','[\"http:\\/\\/www.youtube.com\\/watch?v=dQw4w9WgXcQ\"]','',''),(388,387,'content_type_0','','','','','','','Afghanistan','','','4041 Hanover Street\nNew York, NY','10016','[\"http:\\/\\/images.craigslist.org\\/00P0P_huDnrSROeKH_600x450.jpg\",\"http:\\/\\/images.craigslist.org\\/00o0o_beOvoy2M2Rq_600x450.jpg\",\"http:\\/\\/images.craigslist.org\\/01212_dds4eeXpUuU_600x450.jpg\",\"http:\\/\\/images.craigslist.org\\/00101_9DWWXIIVi5A_600x450.jpg\"]','[\"http:\\/\\/www.youtube.com\\/watch?v=dQw4w9WgXcQ\"]','',''),(389,388,'content_type_0','','','','','','','United States','New York','Brainard','2310 Frosty Lane\nEast Syracuse, NY','13057','[\"http:\\/\\/images.craigslist.org\\/00G0G_lR0ZnbNsr48_600x450.jpg\",\"http:\\/\\/images.craigslist.org\\/00l0l_8JK3no0rWNC_600x450.jpg\",\"http:\\/\\/images.craigslist.org\\/00N0N_aGJFFoG2ZOD_600x450.jpg\",\"http:\\/\\/images.craigslist.org\\/00n0n_5opOxWEDP4K_600x450.jpg\",\"http:\\/\\/images.craigslist.org\\/00c0c_gadFurabpxP_600x450.jpg\"]','[\"http:\\/\\/www.youtube.com\\/watch?v=dQw4w9WgXcQ\"]','',''),(390,389,'content_type_0','','','','','','','Bahamas','Cat Island','','','','[]','[]','',''),(391,390,'content_type_0','','','','','','','United States','California','','','','[\"http:\\/\\/i.imgur.com\\/efwlWxZ.jpg\"]','[\"http:\\/\\/www.youtube.com\\/watch?v=trtdEg34eII\"]','',''),(392,391,'content_type_0','','','','','','','United States','California','','','','[\"http:\\/\\/i.imgur.com\\/d3hi2b8.jpg\",\"http:\\/\\/i.imgur.com\\/ltHStxg.png\",\"http:\\/\\/i.imgur.com\\/pkw6Lks.jpg\"]','[\"http:\\/\\/www.youtube.com\\/watch?v=C8KQuHzFLL4\"]','',''),(393,392,'content_type_0','','','','','','','Antarctica','','','','','[\"http:\\/\\/i.imgur.com\\/y28Nwel.jpg\"]','[\"https:\\/\\/www.youtube.com\\/watch?v=CZq88bs0kHs\"]','',''),(394,393,'content_type_0','','','','','','','Zimbabwe','','','','','[]','[\"\"]','',''),(395,394,'content_type_0','','','','','','','Zimbabwe','','','','','[]','[\"http:\\/\\/youtu.be\\/P2x3-b6JEj8?t=10m26s\",\"http:\\/\\/www.youtube.com\\/watch?v=V5bYDhZBFLA\"]','',''),(396,395,'content_type_0','','','','','','','Norway','','','','','[]','[]','',''),(397,396,'content_type_0','','','','','','','Afghanistan','','','','','[]','[]','',''),(398,397,'content_type_0','','','','','','','Belize','','','growersville','0U812','[\"http:\\/\\/imgur.com\\/6hY5Jsx\"]','[]','',''),(399,398,'content_type_0','','','','','','','Afghanistan','','','','','[]','[]','',''),(400,399,'content_type_0','','','','','','','Russian Federation','Moscow City','Moscow','профсоюзная ул. 11, 43','125458','[\"http:\\/\\/49.img.avito.st\\/1280x960\\/1088579749.jpg\"]','[]','',''),(401,400,'content_type_0','','','','','','','Botswana','Ngamiland','','Wellfleet, MA 02667','02667','[\"http:\\/\\/images.craigslist.org\\/00101_cbS1nwgxu8R_600x450.jpg\",\"http:\\/\\/images.craigslist.org\\/00a0a_hc1o8X9AFfs_600x450.jpg\",\"http:\\/\\/images.craigslist.org\\/00o0o_62f1f6asfAM_600x450.jpg\",\"http:\\/\\/images.craigslist.org\\/00x0x_ed9qCg8mwG6_600x450.jpg\",\"http:\\/\\/images.craigslist.org\\/00w0w_bkBDi5Xy3Sb_600x450.jpg\",\"http:\\/\\/images.craigslist.org\\/00707_JRLAQbo0Fc_600x450.jpg\",\"http:\\/\\/images.craigslist.org\\/00000_8VW3heq8muH_600x450.jpg\",\"http:\\/\\/images.craigslist.org\\/00000_8VW3heq8muH_600x450.jpg\"]','[]','',''),(402,401,'content_type_0','','','','','','','Russian Federation','Chita','Kuanda','Leninsky prospekt','','[\"http:\\/\\/ip.bitcointalk.org\\/?u=http%3A%2F%2Fbig.assets.huffingtonpost.com%2Fkipnapoleondyn123.gif&t=544&c=jeMf0f1z-rYJtQ\"]','[]','',''),(403,402,'content_type_0','','','','','','','United States','Minnesota','Baxter','2851 Rogers Avenue','04024','[\"http:\\/\\/images.craigslist.org\\/00g0g_k8FQPxnpcnS_600x450.jpg\"]','[]','',''),(404,403,'content_type_0','','','','','','','Russian Federation','Moscow City','Moscow','','','[\"http:\\/\\/i.imgur.com\\/4bQNGYw.jpg\"]','[]','',''),(405,404,'content_type_0','','','','','','','Korea, Democratic People&#39;s Republic of','P\'yongyang-si','','','1234567','[]','[]','',''),(406,405,'content_type_0','','','','','','','Russian Federation','Moscow City','Moscow','Москва, Тверская 1','123456','[\"http:\\/\\/www.we-survive.ru\\/home\\/public_html\\/we-survive.ru\\/wp-content\\/uploads\\/2012\\/01\\/how-to-sing_big.jpg\"]','[]','',''),(407,406,'content_type_0','','','','','','','Russian Federation','Moskva','Mozhaysk','Кремлин','111111','[\"http:\\/\\/volga-expert.ru\\/wp-content\\/uploads\\/2014\\/03\\/%D0%B1%D0%B5%D1%81%D0%BF%D0%BB%D0%B0%D1%82%D0%BD%D0%BE.jpg\"]','[]','',''),(408,407,'content_type_0','','','','','','','United States','','','','','[\"https:\\/\\/twitter.com\\/IconicExpert\"]','[]','',''),(409,408,'content_type_0','','','','','','','United States','','','','','[]','[]','',''),(410,409,'content_type_0','','','','','','','Germany','Hamburg','Rissen','','','[\"http:\\/\\/img2.wikia.nocookie.net\\/__cb20140620133836\\/tothemoon\\/images\\/5\\/50\\/Wiki-background\"]','[]','',''),(411,410,'content_type_0','','','','','','','Saudi Arabia','','','','','[\"http:\\/\\/i.imgur.com\\/inqbBhB.jpg\"]','[\"http:\\/\\/www.youtube.com\\/watch?v=8tqEBQjWRws\"]','',''),(412,411,'content_type_0','','','','','','','Belarus','Minsk','Minsk','новобобруйский проспект 7','3123123','[]','[]','',''),(413,412,'content_type_0','','','','','','','United States','','','Anal piercing','','[\"http:\\/\\/en.wikipedia.org\\/wiki\\/File:Anuspiercing.jpg\"]','[]','',''),(414,413,'content_type_0','','','','','','','Denmark','','','','','[]','[]','',''),(535,121,'content_type_0','','','','','','','United States','','','','','[]','[]','VIKTORIA','rku2xzy@web.de'),(536,122,'content_type_0','','','','','','','Germany','Hamburg','Rissen','','','[\"http:\\/\\/img2.wikia.nocookie.net\\/__cb20140620133836\\/tothemoon\\/images\\/5\\/50\\/Wiki-background\"]','[]','Craig Supporter',''),(537,123,'content_type_0','','','','','','','Saudi Arabia','','','','','[\"http:\\/\\/i.imgur.com\\/inqbBhB.jpg\"]','[\"http:\\/\\/www.youtube.com\\/watch?v=8tqEBQjWRws\"]','Shibe',''),(538,124,'content_type_0','','','','','','','Belarus','Minsk','Minsk','новобобруйский проспект 7','3123123','[]','[]','Петя','488752419'),(539,125,'content_type_0','','','','','','','United States','','','Anal piercing','','[\"http:\\/\\/en.wikipedia.org\\/wiki\\/File:Anuspiercing.jpg\"]','[]','Anal piercing','Anal piercing'),(540,126,'content_type_0','','','','','','','Denmark','','','','','[]','[]','DEV MUST SET UP A BUY WALL TO RESCUE THE COIN',''),(541,127,'content_type_0','','','','','','','Japan','','','','','[]','[]','',''),(542,128,'content_type_0','','','','','','','Afghanistan','','','4777 Lake Forest Drive\nYorktown Heights, NY','10598','[\"http:\\/\\/images.craigslist.org\\/00909_jekUv9YDqzj_600x450.jpg\",\"http:\\/\\/images.craigslist.org\\/00505_9YAiXxDsSZL_600x450.jpg\",\"http:\\/\\/images.craigslist.org\\/00505_fYYBnIWCTvd_600x450.jpg\",\"http:\\/\\/images.craigslist.org\\/00404_1H7KNtGiqTP_600x450.jpg\",\"http:\\/\\/images.craigslist.org\\/00L0L_g1JFwR7aKok_600x450.jpg\"]','[\"http:\\/\\/www.youtube.com\\/watch?v=dQw4w9WgXcQ\"]','Erinn A. Hall','Phone: 914-243-5545\nEmail Address: ErinnAHall@rhyta.com'),(543,129,'content_type_0','','','','','','','Russian Federation','Moscow City','Moscow','профсоюзная ул. 11, 43','125458','[\"http:\\/\\/49.img.avito.st\\/1280x960\\/1088579749.jpg\"]','[]','Григорий','+79263698521'),(544,130,'content_type_0','','','','','','','Russian Federation','Moscow City','Moscow','Москва, Тверская 1','123456','[\"http:\\/\\/www.we-survive.ru\\/home\\/public_html\\/we-survive.ru\\/wp-content\\/uploads\\/2012\\/01\\/how-to-sing_big.jpg\"]','[]','Вася Пупкин','+7-495-1234567'),(545,131,'content_type_0','','','','','','','Russian Federation','Moskva','Mozhaysk','Кремлин','111111','[\"http:\\/\\/volga-expert.ru\\/wp-content\\/uploads\\/2014\\/03\\/%D0%B1%D0%B5%D1%81%D0%BF%D0%BB%D0%B0%D1%82%D0%BD%D0%BE.jpg\"]','[]','Владимир Путин','+7-800-вовочка'),(546,132,'content_type_0','','','','','','','Belarus','Minsk','Minsk','новобобруйский проспект 7','3123123','[]','[]','Петя','488752419'),(547,133,'content_type_0','','','','','','','Japan','','','','','[]','[]','',''),(548,134,'content_type_0','','','','','','','Afghanistan','','','4777 Lake Forest Drive\nYorktown Heights, NY','10598','[\"http:\\/\\/images.craigslist.org\\/00909_jekUv9YDqzj_600x450.jpg\",\"http:\\/\\/images.craigslist.org\\/00505_9YAiXxDsSZL_600x450.jpg\",\"http:\\/\\/images.craigslist.org\\/00505_fYYBnIWCTvd_600x450.jpg\",\"http:\\/\\/images.craigslist.org\\/00404_1H7KNtGiqTP_600x450.jpg\",\"http:\\/\\/images.craigslist.org\\/00L0L_g1JFwR7aKok_600x450.jpg\"]','[\"http:\\/\\/www.youtube.com\\/watch?v=dQw4w9WgXcQ\"]','Erinn A. Hall','Phone: 914-243-5545\nEmail Address: ErinnAHall@rhyta.com'),(549,135,'content_type_0','','','','','','','Russian Federation','Moscow City','Moscow','профсоюзная ул. 11, 43','125458','[\"http:\\/\\/49.img.avito.st\\/1280x960\\/1088579749.jpg\"]','[]','Григорий','+79263698521'),(550,136,'content_type_0','','','','','','','Russian Federation','Moscow City','Moscow','Москва, Тверская 1','123456','[\"http:\\/\\/www.we-survive.ru\\/home\\/public_html\\/we-survive.ru\\/wp-content\\/uploads\\/2012\\/01\\/how-to-sing_big.jpg\"]','[]','Вася Пупкин','+7-495-1234567'),(551,137,'content_type_0','','','','','','','Russian Federation','Moskva','Mozhaysk','Кремлин','111111','[\"http:\\/\\/volga-expert.ru\\/wp-content\\/uploads\\/2014\\/03\\/%D0%B1%D0%B5%D1%81%D0%BF%D0%BB%D0%B0%D1%82%D0%BD%D0%BE.jpg\"]','[]','Владимир Путин','+7-800-вовочка'),(552,138,'content_type_0','','','','','','','Belarus','Minsk','Minsk','новобобруйский проспект 7','3123123','[]','[]','Петя','488752419'),(553,139,'content_type_0','','','','','','','Japan','','','','','[]','[]','',''),(554,140,'content_type_0','','','','','','','Afghanistan','','','4777 Lake Forest Drive\nYorktown Heights, NY','10598','[\"http:\\/\\/images.craigslist.org\\/00909_jekUv9YDqzj_600x450.jpg\",\"http:\\/\\/images.craigslist.org\\/00505_9YAiXxDsSZL_600x450.jpg\",\"http:\\/\\/images.craigslist.org\\/00505_fYYBnIWCTvd_600x450.jpg\",\"http:\\/\\/images.craigslist.org\\/00404_1H7KNtGiqTP_600x450.jpg\",\"http:\\/\\/images.craigslist.org\\/00L0L_g1JFwR7aKok_600x450.jpg\"]','[\"http:\\/\\/www.youtube.com\\/watch?v=dQw4w9WgXcQ\"]','Erinn A. Hall','Phone: 914-243-5545\nEmail Address: ErinnAHall@rhyta.com'),(555,141,'content_type_0','','','','','','','Russian Federation','Moscow City','Moscow','профсоюзная ул. 11, 43','125458','[\"http:\\/\\/49.img.avito.st\\/1280x960\\/1088579749.jpg\"]','[]','Григорий','+79263698521'),(556,142,'content_type_0','','','','','','','Russian Federation','Moscow City','Moscow','Москва, Тверская 1','123456','[\"http:\\/\\/www.we-survive.ru\\/home\\/public_html\\/we-survive.ru\\/wp-content\\/uploads\\/2012\\/01\\/how-to-sing_big.jpg\"]','[]','Вася Пупкин','+7-495-1234567'),(557,143,'content_type_0','','','','','','','Russian Federation','Moskva','Mozhaysk','Кремлин','111111','[\"http:\\/\\/volga-expert.ru\\/wp-content\\/uploads\\/2014\\/03\\/%D0%B1%D0%B5%D1%81%D0%BF%D0%BB%D0%B0%D1%82%D0%BD%D0%BE.jpg\"]','[]','Владимир Путин','+7-800-вовочка'),(558,144,'content_type_0','','','','','','','Belarus','Minsk','Minsk','новобобруйский проспект 7','3123123','[]','[]','Петя','488752419'),(559,145,'content_type_0','','','','','','','Japan','','','','','[]','[]','',''),(560,146,'content_type_0','','','','','','','Afghanistan','','','4777 Lake Forest Drive\nYorktown Heights, NY','10598','[\"http:\\/\\/images.craigslist.org\\/00909_jekUv9YDqzj_600x450.jpg\",\"http:\\/\\/images.craigslist.org\\/00505_9YAiXxDsSZL_600x450.jpg\",\"http:\\/\\/images.craigslist.org\\/00505_fYYBnIWCTvd_600x450.jpg\",\"http:\\/\\/images.craigslist.org\\/00404_1H7KNtGiqTP_600x450.jpg\",\"http:\\/\\/images.craigslist.org\\/00L0L_g1JFwR7aKok_600x450.jpg\"]','[\"http:\\/\\/www.youtube.com\\/watch?v=dQw4w9WgXcQ\"]','Erinn A. Hall','Phone: 914-243-5545\nEmail Address: ErinnAHall@rhyta.com'),(561,147,'content_type_0','','','','','','','Russian Federation','Moscow City','Moscow','профсоюзная ул. 11, 43','125458','[\"http:\\/\\/49.img.avito.st\\/1280x960\\/1088579749.jpg\"]','[]','Григорий','+79263698521'),(562,148,'content_type_0','','','','','','','Russian Federation','Moscow City','Moscow','Москва, Тверская 1','123456','[\"http:\\/\\/www.we-survive.ru\\/home\\/public_html\\/we-survive.ru\\/wp-content\\/uploads\\/2012\\/01\\/how-to-sing_big.jpg\"]','[]','Вася Пупкин','+7-495-1234567'),(563,149,'content_type_0','','','','','','','Russian Federation','Moskva','Mozhaysk','Кремлин','111111','[\"http:\\/\\/volga-expert.ru\\/wp-content\\/uploads\\/2014\\/03\\/%D0%B1%D0%B5%D1%81%D0%BF%D0%BB%D0%B0%D1%82%D0%BD%D0%BE.jpg\"]','[]','Владимир Путин','+7-800-вовочка'),(564,150,'content_type_0','','','','','','','Belarus','Minsk','Minsk','новобобруйский проспект 7','3123123','[]','[]','Петя','488752419'),(565,151,'content_type_0','','','','','','','Japan','','','','','[]','[]','',''),(566,152,'content_type_0','','','','','','','Afghanistan','','','4777 Lake Forest Drive\nYorktown Heights, NY','10598','[\"http:\\/\\/images.craigslist.org\\/00909_jekUv9YDqzj_600x450.jpg\",\"http:\\/\\/images.craigslist.org\\/00505_9YAiXxDsSZL_600x450.jpg\",\"http:\\/\\/images.craigslist.org\\/00505_fYYBnIWCTvd_600x450.jpg\",\"http:\\/\\/images.craigslist.org\\/00404_1H7KNtGiqTP_600x450.jpg\",\"http:\\/\\/images.craigslist.org\\/00L0L_g1JFwR7aKok_600x450.jpg\"]','[\"http:\\/\\/www.youtube.com\\/watch?v=dQw4w9WgXcQ\"]','Erinn A. Hall','Phone: 914-243-5545\nEmail Address: ErinnAHall@rhyta.com'),(567,153,'content_type_0','','','','','','','Russian Federation','Moscow City','Moscow','профсоюзная ул. 11, 43','125458','[\"http:\\/\\/49.img.avito.st\\/1280x960\\/1088579749.jpg\"]','[]','Григорий','+79263698521'),(568,154,'content_type_0','','','','','','','Russian Federation','Moscow City','Moscow','Москва, Тверская 1','123456','[\"http:\\/\\/www.we-survive.ru\\/home\\/public_html\\/we-survive.ru\\/wp-content\\/uploads\\/2012\\/01\\/how-to-sing_big.jpg\"]','[]','Вася Пупкин','+7-495-1234567'),(569,155,'content_type_0','','','','','','','Russian Federation','Moskva','Mozhaysk','Кремлин','111111','[\"http:\\/\\/volga-expert.ru\\/wp-content\\/uploads\\/2014\\/03\\/%D0%B1%D0%B5%D1%81%D0%BF%D0%BB%D0%B0%D1%82%D0%BD%D0%BE.jpg\"]','[]','Владимир Путин','+7-800-вовочка'),(570,156,'content_type_0','','','','','','','Belarus','Minsk','Minsk','новобобруйский проспект 7','3123123','[]','[]','Петя','488752419'),(1814,178,'content_type_0','','','','','','','Afghanistan','','','','','[]','[]','I hope dev will nor run away!','I hope dev will nor run away!'),(1815,179,'content_type_0','','','','','','','Afghanistan','','','ANAL  ANAL  AANAL  ANAL  ANAL  ANAL  ANAL  ANAL  ANAL  ANAL  ANAL  ANAL  ANAL  ANAL  ANAL  ANAL  ANAL  ANAL  ANAL','ANAL  ANAL  ANAL  ANAL  ANAL  ANAL  ANAL  ANAL  ANAL  ANAL  ANAL  ANAL  ANAL  ANAL  ANAL  ANAL  ANAL  ANAL  ANAL  ANAL  ANAL  ANAL  ANAL  ANAL','[]','[]','ANAL  ANAL  ANAL  ANAL  ANAL  ANAL  ANAL  ','ANAL  ANAL  ANAL  ANAL  ANAL  ANAL  ANAL  ANAL  ANAL  ANAL  ANAL  ANAL  ANAL  ANAL  ANAL  ANAL  ANAL  ANAL  ANAL  ANAL  ANAL  ANAL  ANAL  '),(1816,180,'content_type_0','','','','','','','Afghanistan','','','sex  sex  sex  sex  sex  sex  sex  sex  sex  sex  sex  sex  sex  sex  sex  sex  sex  sex  sex  sex  sex  sex  sex  sex  sex  sex','sex  sex  sex  sex  sex  sex  sex  sex  sex  sex  sex  sex  sex  sex  sex  sex  sex  sex  sex  sex  sex  sex  sex','[]','[]','sex  sex  sex  sex  sex  sex  sex  sex  sex  sex  sex  sex  sex  sex  sex  sex  sex  sex  sex  sex  sex  sex  sex  sex  sex  sex  sex  sex  sex  sex  sex  sex  sex  sex  sex  sex  sex  sex  sex  sex  sex  sex  sex  sex  ','sex  sex  sex  sex  sex  sex  sex  sex  sex  sex  sex  sex  sex  sex  sex  sex  sex  sex  sex  sex  sex  sex  sex  sex  sex  sex  sex  sex  sex  sex  sex  sex  sex  sex  sex  sex  sex  sex  sex  sex  sex  sex  sex  sex  sex  sex  sex  sex  sex  sex  '),(1817,181,'content_type_0','','','','','','','Afghanistan','','','HELP; DEV, YOU MUST DO SOMETHINGHELP; DEV, YOU MUST DO SOMETHINGHELP; DEV, YOU MUST DO SOMETHINGHELP; DEV, YOU MUST DO SOMETHINGHELP; DEV, YOU MUST DO SOMETHINGHELP; DEV, YOU MUST DO SOMETHINGHELP; DEV, YOU MUST DO SOMETHINGHELP; DEV, YOU MUST DO SOM','HELP; DEV, YOU MUST DO SOMETHINGHELP; DEV, YOU MUST DO SOMETHINGHELP; DEV, YOU MUST DO SOMETHINGHELP; DEV, YOU MUST DO SOMETHINGHELP; DEV, YOU MUST DO SOMETHINGHELP; DEV, YOU MUST DO SOMETHINGHELP; DEV, YOU MUST DO SOMETHINGHELP; DEV, YOU MUST DO SOM','[]','[]','HELP; DEV, YOU MUST DO SOMETHINGHELP; DEV, YOU MUST DO SOMETHINGHELP; DEV, YOU MUST DO SOMETHINGHELP; DEV, YOU MUST DO SOMETHINGHELP; DEV, YOU MUST DO SOMETHINGHELP; DEV, YOU MUST DO SOMETHINGHELP; DEV, YOU MUST DO SOMETHINGHELP; DEV, YOU MUST DO SOM','HELP; DEV, YOU MUST DO SOMETHINGHELP; DEV, YOU MUST DO SOMETHINGHELP; DEV, YOU MUST DO SOMETHINGHELP; DEV, YOU MUST DO SOMETHINGHELP; DEV, YOU MUST DO SOMETHINGHELP; DEV, YOU MUST DO SOMETHINGHELP; DEV, YOU MUST DO SOMETHINGHELP; DEV, YOU MUST DO SOM'),(1818,182,'content_type_0','','','','','','','Afghanistan','','','ANAL KNIGHT WILL COME AND TAKE CARE OF YOU','','[]','[]','ANAL KNIGHT WILL COME AND TAKE CARE OF YOU','ANAL KNIGHT WILL COME AND TAKE CARE OF YOU'),(1819,183,'content_type_0','','','','','','','Afghanistan','','','','','[]','[]','STOP DUMPING CRAIG, PLEASESTOP DUMPING CRAIG, PLEASESTOP DUMPING CRAIG, PLEASESTOP DUMPING CRAIG, PLEASESTOP DUMPING CRAIG, PLEASESTOP DUMPING CRAIG, PLEASESTOP DUMPING CRAIG, PLEASESTOP DUMPING CRAIG, PLEASESTOP DUMPING CRAIG, PLEASESTOP DUMPING CRA','STOP DUMPING CRAIG, PLEASESTOP DUMPING CRAIG, PLEASESTOP DUMPING CRAIG, PLEASESTOP DUMPING CRAIG, PLEASESTOP DUMPING CRAIG, PLEASESTOP DUMPING CRAIG, PLEASESTOP DUMPING CRAIG, PLEASESTOP DUMPING CRAIG, PLEASESTOP DUMPING CRAIG, PLEASESTOP DUMPING CRA'),(1820,184,'content_type_0','','','','','','','Afghanistan','','','OLE OLE OLE CRAIG IS DOWN; YES BABY YESOLE OLE OLE CRAIG IS DOWN; YES BABY YESOLE OLE OLE CRAIG IS DOWN; YES BABY YESOLE OLE OLE CRAIG IS DOWN; YES BABY YESOLE OLE OLE CRAIG IS DOWN; YES BABY YESOLE OLE OLE CRAIG IS DOWN; YES BABY YESOLE OLE OLE CRAI','OLE OLE OLE CRAIG IS DOWN; YES BABY YESOLE OLE OLE CRAIG IS DOWN; YES BABY YESOLE OLE OLE CRAIG IS DOWN; YES BABY YESOLE OLE OLE CRAIG IS DOWN; YES BABY YESOLE OLE OLE CRAIG IS DOWN; YES BABY YESOLE OLE OLE CRAIG IS DOWN; YES BABY YESOLE OLE OLE CRAI','[]','[]','OLE OLE OLE CRAIG IS DOWN; YES BABY YESOLE OLE OLE CRAIG IS DOWN; YES BABY YESOLE OLE OLE CRAIG IS DOWN; YES BABY YESOLE OLE OLE CRAIG IS DOWN; YES BABY YESOLE OLE OLE CRAIG IS DOWN; YES BABY YESOLE OLE OLE CRAIG IS DOWN; YES BABY YESOLE OLE OLE CRAI','OLE OLE OLE CRAIG IS DOWN; YES BABY YESOLE OLE OLE CRAIG IS DOWN; YES BABY YESOLE OLE OLE CRAIG IS DOWN; YES BABY YESOLE OLE OLE CRAIG IS DOWN; YES BABY YESOLE OLE OLE CRAIG IS DOWN; YES BABY YESOLE OLE OLE CRAIG IS DOWN; YES BABY YESOLE OLE OLE CRAI'),(1821,185,'content_type_0','','','','','','','Afghanistan','','','what the fuckwwhat the fuckwhat the fuckwhat the fuckwhat the fuckwhat the fuckwhat the fuckwhat the fuckwhat the fuckwhat the fuckwhat the fuckwhat the fuckwhat the fuckwhat the fuckwhat the fuckwhat the fuckwhat the fuckwhat the fuckwhat the fuckwh','what the fuckwhat the fuckwhat the fuckwhat the fuckwhat the fuckwhat the fuckwhat the fuckwhat the fuckwhat the fuckwhat the fuckwhat the fuckwhat the fuckwhat the fuckwhat the fuckwhat the fuckwhat the fuckwhat the fuckwhat the fuckwhat the fuckwha','[]','[]','what the fuck','what the fuckwhat the fuckwhat the fuckwhat the fuckwhat the fuckwhat the fuckwhat the fuckwhat the fuckwhat the fuckwhat the fuckwhat the fuckwhat the fuckwhat the fuckwhat the fuckwhat the fuckwhat the fuckwhat the fuckwhat the fuckwhat the fuckwha'),(1822,186,'content_type_0','','','','','','','Afghanistan','','','CRAIG IS FAKE COIN CRAIG IS FAKE COIN CRAIG IS FAKE COIN CRAIG IS FAKE COIN CRAIG IS FAKE COIN CRAIG IS FAKE COIN CRAIG IS FAKE COIN CRAIG IS FAKE COIN CRAIG IS FAKE COIN CRAIG IS FAKE COIN CRAIG IS FAKE COIN CRAIG IS FAKE COIN CRAIG IS FAKE COIN CRA','CRAIG IS FAKE COIN CRAICRAIG IS FAKE COIN CRAIG IS FAKE COIN CRAIG IS FAKE COIN CRAIG IS FAKE COIN CRAIG IS FAKE COIN CRAIG IS FAKE COIN CRAIG IS FAKE COIN CRAIG IS FAKE COIN CRAIG IS FAKE COIN CRAIG IS FAKE COIN CRAIG IS FAKE COIN CRAIG IS FAKE COIN','[]','[]','CRAIG IS FAKE COIN CRAIG IS FAKE COIN CRAIG IS FAKE COIN CRAIG IS FAKE COIN CRAIG IS FAKE COIN CRAIG IS FAKE COIN CRAIG IS FAKE COIN CRAIG IS FAKE COIN CRAIG IS FAKE COIN CRAIG IS FAKE COIN CRAIG IS FAKE COIN CRAIG IS FAKE COIN CRAIG IS FAKE COIN CRA','CRAIG IS FAKE COIN CRAIG IS FAKE COIN CRAIG IS FAKE COIN CRAIG IS FAKE COIN CRAIG IS FAKE COIN CRAIG IS FAKE COIN CRAIG IS FAKE COIN CRAIG IS FAKE COIN CRAIG IS FAKE COIN CRAIG IS FAKE COIN CRAIG IS FAKE COIN CRAIG IS FAKE COIN CRAIG IS FAKE COIN CRA'),(1823,187,'content_type_0','','','','','','','Iraq','','','','','[\"http:\\/\\/i1.mirror.co.uk\\/incoming\\/article126242.ece\\/alternates\\/s615\\/osama-bin-laden-pic-rex-880339236.jpg\",\"http:\\/\\/26.media.tumblr.com\\/tumblr_lwkis3b0kZ1r8g9yzo1_500.jpg\"]','[]','Osama bin Laden\'s ghost and MajorStupidWhaleBoss',''),(1824,188,'content_type_0','','','','','','','Afghanistan','','','See the dev has no urgency to get things done. He got paid already so hey,, whats the rush? This is the most unprofessional development I have ever seen. Looks like a 6th grade school project.  I have lost thousands of $$ on this lousy investment. He','','[]','[]','See the dev has no urgency to get things done. He got paid already so hey,, whats the rush? This is the most unprofessional development I have ever seen. Looks like a 6th grade school project.  I have lost thousands of $$ on this lousy investment. He','See the dev has no urgency to get things done. He got paid already so hey,, whats the rush? This is the most unprofessional development I have ever seen. Looks like a 6th grade school project.  I have lost thousands of $$ on this lousy investment. He'),(1825,189,'content_type_0','','','','','','','Afghanistan','','','','','[]','[]','See the dev has no urgency to get things done. He got paid already so hey,, whats the rush? This is the most unprofessional development I have ever seen. Looks like a 6th grade school project.  I have lost thousands of $$ on this lousy investment. He','See the dev has no urgency to get things done. He got paid already so hey,, whats the rush? This is the most unprofessional development I have ever seen. Looks like a 6th grade school project.  I have lost thousands of $$ on this lousy investment. He'),(1826,190,'content_type_0','','','','','','','Afghanistan','','','','','[\"\",\"http:\\/\\/craigscoin.info\\/img\\/about.png\"]','[]','DEV IS NO MAN',''),(1827,191,'content_type_0','','','','','','','Afghanistan','','','WE THE INVESTORS SMELLWE THE INVESTORS SMELL SHIT CAUSED BY DEVWE THE INVESTORS SMELL SHIT CAUSED BY DEVWE THE INVESTORS SMELL SHIT CAUSED BY DEVWE THE INVESTORS SMELL SHIT CAUSED BY DEVWE THE INVESTORS SMELL SHIT CAUSED BY DEVWE THE INVESTORS SMELL ','','[]','[]','WE THE INVESTORS SMELL SHIT CAUSED BY DEVWE THE INVESTORS SMELL SHIT CAUSED BY DEVWE THE INVESTORS SMELL SHIT CAUSED BY DEVWE THE INVESTORS SMELL SHIT CAUSED BY DEVWE THE INVESTORS SMELL SHIT CAUSED BY DEVWE THE INVESTORS SMELL SHIT CAUSED BY DEVWE T','WE THE INVESTORS SMELL SHIT CAUSED BY DEVWE THE INVESTORS SMELL SHIT CAUSED BY DEVWE THE INVESTORS SMELL SHIT CAUSED BY DEVWE THE INVESTORS SMELL SHIT CAUSED BY DEVWE THE INVESTORS SMELL SHIT CAUSED BY DEVWE THE INVESTORS SMELL SHIT CAUSED BY DEVWE T'),(1828,192,'content_type_0','','','','','','','United States','','','','','[]','[]','https://www.cryptsy.com/','\nProject Investors Inc DBA Cryptsy\n160 Congress Park Dr Suite 101\nDelray Beach, FL 33445\nUSA\nsupport@cryptsy.com'),(1829,193,'content_type_0','','','','','','','Afghanistan','','','qqqqqqqqqqqqq','','[]','[]','qqqqqqqqqqqqqqqqqqqqqq','qqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqq'),(1757,121,'content_type_0','','','','','','','United States','New York','Adams Basin','12345 Number Ln.','12345','[]','[]','Bitcoin','/u/ThatDandyMan'),(1758,122,'content_type_0','','','','','','','Afghanistan','','','','','[]','[]','',''),(1759,123,'content_type_0','','','','','','','Japan','','','','','[]','[]','',''),(1760,124,'content_type_0','','','','','','','Kenya','','','( ͡° ͜ʖ ͡°)','( ͡° ͜ʖ ͡°)','[]','[]','First Blockchain spam','Spam@spamMail.com'),(1761,125,'content_type_0','','','','','','','Russian Federation','','','','','[\"http:\\/\\/www.amummytoo.co.uk\\/wp-content\\/uploads\\/2013\\/08\\/Snot-the-Zombie.png\"]','[\"http:\\/\\/www.youtube.com\\/watch?v=0HtyF0jux2Q\"]','',''),(1762,126,'content_type_0','','','','','','','Japan','','','','','[\"http:\\/\\/38.media.tumblr.com\\/tumblr_lqcqndeAMn1r1wcl2o1_400.jpg\",\"https:\\/\\/lh3.googleusercontent.com\\/-5HG0iZ7rqqU\\/U8RJbEzGS1I\\/AAAAAAAABWs\\/jBhtuFP-PYk\\/w476-h700\\/manga-divers-usagi-kawaii-usagi-img.png\",\"http:\\/\\/fc09.deviantart.net\\/fs70\\/f\\/2012\\/231\\/7\\/e\\/neko_nya__by_takuneru-d5bo6hw.jpg\",\"http:\\/\\/th01.deviantart.net\\/fs71\\/PRE\\/f\\/2013\\/149\\/0\\/d\\/miku_guitar_pop_blue_let_s_rock__by_takuneru-d6712ei.jpg\"]','[\"http:\\/\\/www.youtube.com\\/watch?v=SkXIurIK4zc\"]','',''),(1763,127,'content_type_0','','','','','','','India','','','','','[\"https:\\/\\/encrypted-tbn0.gstatic.com\\/images?q=tbn:ANd9GcQQpKRvoBnNeQlpnqghALAK8eITpfXqF0jQyc_umeyCNBzxo5xB3EbF6k6e\"]','[]','Indian','																								'),(1764,128,'content_type_0','','','','','','','Afghanistan','','','https://bittrex.com/Market/Index?MarketName=BTC-CRAIG','','[]','[]','craigfan',''),(1765,129,'content_type_0','','','','','','','United Kingdom','','','','','[]','[]','Free Bitcoin',''),(1766,130,'content_type_0','','','','','','','Afghanistan','','','','','[]','[]','Hchalidka',''),(1767,131,'content_type_0','','','','','','','Bermuda','Saint George','Saint George','test street','','[]','[]','testing','testing@live.com'),(1768,132,'content_type_0','','','','','','','United States','','','','','[]','[]','CryptoCharts',''),(1769,133,'content_type_0','','','','','','','United Kingdom','','','','','[]','[\"https:\\/\\/www.youtube.com\\/watch?v=MP2MeVwyRCs\"]','proof of earnings',''),(1770,134,'content_type_0','','','','','','','United States','California','','','','[\"http:\\/\\/imgur.com\\/efwlWxZ\"]','[\"http:\\/\\/www.youtube.com\\/watch?v=HzeZhCt5PVA\"]','CryptoGangsta','Never fuck with CryptoGangsta.'),(1771,135,'content_type_0','','','','','','','Ukraine','','','Interwebs','','[]','[]','Welcome To C-CEX Crypto Currency Exchange','Please contact us at https://c-cex.com\nhttps://c-cex.com/?id=merch\nhttps://c-cex.com/?id=about'),(1772,136,'content_type_0','','','','','','','United States','New York','','','','[]','[]','Donate CraigsCoin',''),(1773,137,'content_type_0','','','','','','','United States','','','','','[\"\",\"www.rawvapez.com\"]','[]','Parrot Vapors','Find us on Instagram and Facebook under Parrotvapors.\nFor wholesale please contact us parrotvapors@gmail.com\nFor retail  worldwide please go to www.rawvapez.com'),(1774,138,'content_type_0','','','','','','','United States','Illinois','Albion','4392 Orchard Street\nMinneapolis, MN 55401','4353','[\"http:\\/\\/images.craigslist.org\\/00H0H_7MW81xMKoWs_600x450.jpg\",\"http:\\/\\/images.craigslist.org\\/00s0s_eWKWfgxQ7yi_600x450.jpg\",\"http:\\/\\/images.craigslist.org\\/00Z0Z_3bQ3nnzMzwJ_600x450.jpg\",\"http:\\/\\/images.craigslist.org\\/00z0z_2jmHzciDHqy_600x450.jpg\"]','[\"http:\\/\\/www.youtube.com\\/watch?v=dQw4w9WgXcQ\"]','Doris R. Slaughter','952-594-0809'),(1775,139,'content_type_0','','','','','','','United States','New York','Alfred','1255 Oak Street\nCroghan, NY 13327','','[\"http:\\/\\/images.craigslist.org\\/00W0W_bEVZGkblI9J_600x450.jpg\",\"http:\\/\\/images.craigslist.org\\/01111_kx6EVj7R0tm_600x450.jpg\",\"http:\\/\\/images.craigslist.org\\/01111_7cV3I8wseVX_600x450.jpg\",\"http:\\/\\/images.craigslist.org\\/00H0H_a8fukRCmjcR_600x450.jpg\",\"http:\\/\\/images.craigslist.org\\/01313_98nTKsPFNgA_600x450.jpg\"]','[\"http:\\/\\/www.youtube.com\\/watch?v=dQw4w9WgXcQ\"]','David K. Graham','443-641-1574'),(1776,140,'content_type_0','','','','','','','United States','New York','Altamont','2001 Marshville Road\nMargaretville, NY 12455','','[\"http:\\/\\/images.craigslist.org\\/00A0A_fORBPinUoOv_600x450.jpg\"]','[\"http:\\/\\/www.youtube.com\\/watch?v=dQw4w9WgXcQ\"]','Anthony K. Mello',''),(1777,141,'content_type_0','','','','','','','Afghanistan','','','4777 Lake Forest Drive\nYorktown Heights, NY','10598','[\"http:\\/\\/images.craigslist.org\\/00909_jekUv9YDqzj_600x450.jpg\",\"http:\\/\\/images.craigslist.org\\/00505_9YAiXxDsSZL_600x450.jpg\",\"http:\\/\\/images.craigslist.org\\/00505_fYYBnIWCTvd_600x450.jpg\",\"http:\\/\\/images.craigslist.org\\/00404_1H7KNtGiqTP_600x450.jpg\",\"http:\\/\\/images.craigslist.org\\/00L0L_g1JFwR7aKok_600x450.jpg\"]','[\"http:\\/\\/www.youtube.com\\/watch?v=dQw4w9WgXcQ\"]','Erinn A. Hall','Phone: 914-243-5545\nEmail Address: ErinnAHall@rhyta.com'),(1778,142,'content_type_0','','','','','','','Afghanistan','','','4041 Hanover Street\nNew York, NY','10016','[\"http:\\/\\/images.craigslist.org\\/00P0P_huDnrSROeKH_600x450.jpg\",\"http:\\/\\/images.craigslist.org\\/00o0o_beOvoy2M2Rq_600x450.jpg\",\"http:\\/\\/images.craigslist.org\\/01212_dds4eeXpUuU_600x450.jpg\",\"http:\\/\\/images.craigslist.org\\/00101_9DWWXIIVi5A_600x450.jpg\"]','[\"http:\\/\\/www.youtube.com\\/watch?v=dQw4w9WgXcQ\"]','Alphonso A. Trepanier','917-649-1383\nAlphonsoATrepanier@teleworm.us'),(1779,143,'content_type_0','','','','','','','United States','New York','Brainard','2310 Frosty Lane\nEast Syracuse, NY','13057','[\"http:\\/\\/images.craigslist.org\\/00G0G_lR0ZnbNsr48_600x450.jpg\",\"http:\\/\\/images.craigslist.org\\/00l0l_8JK3no0rWNC_600x450.jpg\",\"http:\\/\\/images.craigslist.org\\/00N0N_aGJFFoG2ZOD_600x450.jpg\",\"http:\\/\\/images.craigslist.org\\/00n0n_5opOxWEDP4K_600x450.jpg\",\"http:\\/\\/images.craigslist.org\\/00c0c_gadFurabpxP_600x450.jpg\"]','[\"http:\\/\\/www.youtube.com\\/watch?v=dQw4w9WgXcQ\"]','Beverly M. Youngberg','607-591-3991\nBeverlyMYoungberg@dayrep.com'),(1780,144,'content_type_0','','','','','','','Bahamas','Cat Island','','','','[]','[]','Rabbit','	'),(1781,145,'content_type_0','','','','','','','United States','California','','','','[\"http:\\/\\/i.imgur.com\\/efwlWxZ.jpg\"]','[\"http:\\/\\/www.youtube.com\\/watch?v=trtdEg34eII\"]','CryptoGangsta','Never fuck with CryptoGangsta.'),(1782,146,'content_type_0','','','','','','','United States','California','','','','[\"http:\\/\\/i.imgur.com\\/d3hi2b8.jpg\",\"http:\\/\\/i.imgur.com\\/ltHStxg.png\",\"http:\\/\\/i.imgur.com\\/pkw6Lks.jpg\"]','[\"http:\\/\\/www.youtube.com\\/watch?v=C8KQuHzFLL4\"]','Indie Merchandising, LLC ','http://www.indiemerch.com/metalbladerecords'),(1783,147,'content_type_0','','','','','','','Antarctica','','','','','[\"http:\\/\\/i.imgur.com\\/y28Nwel.jpg\"]','[\"https:\\/\\/www.youtube.com\\/watch?v=CZq88bs0kHs\"]','Iceberg','I\'m not sort of thing you would like to contact.'),(1784,148,'content_type_0','','','','','','','Zimbabwe','','','','','[]','[\"\"]','VXx',''),(1785,149,'content_type_0','','','','','','','Zimbabwe','','','','','[]','[\"http:\\/\\/youtu.be\\/P2x3-b6JEj8?t=10m26s\",\"http:\\/\\/www.youtube.com\\/watch?v=V5bYDhZBFLA\"]','VXx',''),(1786,150,'content_type_0','','','','','','','Norway','','','','','[]','[]','Oldnoob',''),(1787,151,'content_type_0','','','','','','','Afghanistan','','','','','[]','[]','Bitcoinplus (XBC) needs developpers (big chance to change history)',''),(1788,152,'content_type_0','','','','','','','Belize','','','growersville','0U812','[\"http:\\/\\/imgur.com\\/6hY5Jsx\"]','[]','1/8oz (7.0g) Super Lemon Haze','TheHydroponicCrew\n\n\n'),(1789,153,'content_type_0','','','','','','','Afghanistan','','','','','[]','[]','XBC',''),(1790,154,'content_type_0','','','','','','','Russian Federation','Moscow City','Moscow','профсоюзная ул. 11, 43','125458','[\"http:\\/\\/49.img.avito.st\\/1280x960\\/1088579749.jpg\"]','[]','Григорий','+79263698521'),(1791,155,'content_type_0','','','','','','','Botswana','Ngamiland','','Wellfleet, MA 02667','02667','[\"http:\\/\\/images.craigslist.org\\/00101_cbS1nwgxu8R_600x450.jpg\",\"http:\\/\\/images.craigslist.org\\/00a0a_hc1o8X9AFfs_600x450.jpg\",\"http:\\/\\/images.craigslist.org\\/00o0o_62f1f6asfAM_600x450.jpg\",\"http:\\/\\/images.craigslist.org\\/00x0x_ed9qCg8mwG6_600x450.jpg\",\"http:\\/\\/images.craigslist.org\\/00w0w_bkBDi5Xy3Sb_600x450.jpg\",\"http:\\/\\/images.craigslist.org\\/00707_JRLAQbo0Fc_600x450.jpg\",\"http:\\/\\/images.craigslist.org\\/00000_8VW3heq8muH_600x450.jpg\",\"http:\\/\\/images.craigslist.org\\/00000_8VW3heq8muH_600x450.jpg\"]','[]','Erik Burris','(508) 396-3987'),(1792,156,'content_type_0','','','','','','','Russian Federation','Chita','Kuanda','Leninsky prospekt','','[\"http:\\/\\/ip.bitcointalk.org\\/?u=http%3A%2F%2Fbig.assets.huffingtonpost.com%2Fkipnapoleondyn123.gif&t=544&c=jeMf0f1z-rYJtQ\"]','[]','Pavel','+792510010010'),(1793,157,'content_type_0','','','','','','','United States','Minnesota','Baxter','2851 Rogers Avenue','04024','[\"http:\\/\\/images.craigslist.org\\/00g0g_k8FQPxnpcnS_600x450.jpg\"]','[]','Jane Huber','(207) 428-5310'),(1794,158,'content_type_0','','','','','','','Russian Federation','Moscow City','Moscow','','','[\"http:\\/\\/i.imgur.com\\/4bQNGYw.jpg\"]','[]','Diana',''),(1795,159,'content_type_0','','','','','','','Korea, Democratic People&#39;s Republic of','P\'yongyang-si','','','1234567','[]','[]','Batut','batut@gmail.com'),(1796,160,'content_type_0','','','','','','','Russian Federation','Moscow City','Moscow','Москва, Тверская 1','123456','[\"http:\\/\\/www.we-survive.ru\\/home\\/public_html\\/we-survive.ru\\/wp-content\\/uploads\\/2012\\/01\\/how-to-sing_big.jpg\"]','[]','Вася Пупкин','+7-495-1234567'),(1797,161,'content_type_0','','','','','','','Russian Federation','Moskva','Mozhaysk','Кремлин','111111','[\"http:\\/\\/volga-expert.ru\\/wp-content\\/uploads\\/2014\\/03\\/%D0%B1%D0%B5%D1%81%D0%BF%D0%BB%D0%B0%D1%82%D0%BD%D0%BE.jpg\"]','[]','Владимир Путин','+7-800-вовочка'),(1798,162,'content_type_0','','','','','','','United States','','','','','[\"https:\\/\\/twitter.com\\/IconicExpert\"]','[]','https://twitter.com/IconicExpert',''),(1799,163,'content_type_0','','','','','','','United States','','','','','[]','[]','VIKTORIA','rku2xzy@web.de'),(1800,164,'content_type_0','','','','','','','Germany','Hamburg','Rissen','','','[\"http:\\/\\/img2.wikia.nocookie.net\\/__cb20140620133836\\/tothemoon\\/images\\/5\\/50\\/Wiki-background\"]','[]','Craig Supporter',''),(1801,165,'content_type_0','','','','','','','Saudi Arabia','','','','','[\"http:\\/\\/i.imgur.com\\/inqbBhB.jpg\"]','[\"http:\\/\\/www.youtube.com\\/watch?v=8tqEBQjWRws\"]','Shibe',''),(1802,166,'content_type_0','','','','','','','Belarus','Minsk','Minsk','новобобруйский проспект 7','3123123','[]','[]','Петя','488752419'),(1803,167,'content_type_0','','','','','','','United States','','','Anal piercing','','[\"http:\\/\\/en.wikipedia.org\\/wiki\\/File:Anuspiercing.jpg\"]','[]','Anal piercing','Anal piercing'),(1804,168,'content_type_0','','','','','','','Denmark','','','','','[]','[]','DEV MUST SET UP A BUY WALL TO RESCUE THE COIN',''),(1805,169,'content_type_0','','','','','','','Malaysia','','','MORE COINS','MORE COINS','[\"http:\\/\\/i.imgur.com\\/DEaDmIX.jpg\",\"http:\\/\\/i.imgur.com\\/ClIb9Vg.jpg\"]','[\"http:\\/\\/www.youtube.com\\/watch?v=SQZ2KrpZpMk\"]','MORE COINS','MORE COINS'),(1806,170,'content_type_0','','','','','','','United States','','','','','[]','[]','Craig',''),(1807,171,'content_type_0','','','','','','','Belgium','','','','','[\"http:\\/\\/i.imgur.com\\/HTwj1mY.jpg\"]','[\"http:\\/\\/www.youtube.com\\/watch?v=E6ETQQYpdyY\"]','Danzel',''),(1808,172,'content_type_0','','','','','','','Australia','','','south australia','','[]','[]','a fucking smoker',''),(1809,173,'content_type_0','','','','','','','Germany','','','GermGermanyGermanyGermanyGermanyGermanyGermanyGermanyGermanyGermanyGermanyGermanyGermanyGermanyGermanyGermanyGermanyGermanyGermanyGermanyGermanyGermanyGermanyGermanyGermanyGermanyGermany','GermanyGermanyGermanyGermanyGermanyGermanyGermanyGermanyGermanyGermanyGermanyGermanyGermanyGermanyGermanyGermanyGermanyGermanyGermanyGermanyGermanyGermanyGermanyGermany','[]','[]','Germany','GermanyGermanyGermanyGermanyGermanyGermanyGermanyGermanyGermanyGermanyGermanyGermanyGermanyGermanyGermanyGermanyGermanyGermanyGermanyGermanyGermanyGermanyGermanyGermanyGermanyGermanyGermanyGermanyGermanyGermanyGermanyGermanyGermanyGermanyGermanyGerma'),(1810,174,'content_type_0','','','','','','','Afghanistan','','','Craig to da moooooooooooooooooooooooooon','Craig to da moooooooooooooooooooooooooon','[]','[]','Craig to da moooooooooooooooooooooooooon','Craig to da moooooooooooooooooooooooooon'),(1811,175,'content_type_0','','','','','','','Afghanistan','','','','','[\"http:\\/\\/s10.postimg.org\\/44fv4sp4p\\/logo.png\"]','[]','BitcoinPlus (XBC)',''),(1812,176,'content_type_0','','','','','','','Afghanistan','','','','','[]','[]','on bittrex peoples dumped almost 400k coins with ~800 sat.i don`t think this coin has any future.... Sad','on bittrex peoples dumped almost 400k coins with ~800 sat.i don`t think this coin has any future.... Sad'),(1813,177,'content_type_0','','','','','','','Afghanistan','','','','','[]','[]','CRAID DEV, WE NEED MARKETING, not many people know about craig! SPEAK TO COINDESK TO PUBLISH AN ARTICLE!','CRAID DEV, WE NEED MARKETING, not many people know about craig! SPEAK TO COINDESK TO PUBLISH AN ARTICLE!');
/*!40000 ALTER TABLE `new1_minicck` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `new1_modules`
--

DROP TABLE IF EXISTS `new1_modules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `new1_modules` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `title` varchar(100) NOT NULL DEFAULT '',
  `note` varchar(255) NOT NULL DEFAULT '',
  `content` text NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  `position` varchar(50) NOT NULL DEFAULT '',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `module` varchar(50) DEFAULT NULL,
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `showtitle` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `params` text NOT NULL,
  `client_id` tinyint(4) NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `published` (`published`,`access`),
  KEY `newsfeeds` (`module`,`published`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB AUTO_INCREMENT=96 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `new1_modules`
--

LOCK TABLES `new1_modules` WRITE;
/*!40000 ALTER TABLE `new1_modules` DISABLE KEYS */;
INSERT INTO `new1_modules` VALUES (1,39,'Main Menu','','',1,'top-menu',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_menu',1,1,'{\"menutype\":\"top\",\"base\":\"\",\"startLevel\":\"1\",\"endLevel\":\"0\",\"showAllChildren\":\"0\",\"tag_id\":\"\",\"class_sfx\":\"\",\"window_open\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"_menu\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"itemid\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',0,'*'),(2,56,'Login','','',1,'login',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_login',1,1,'',1,'*'),(3,57,'Popular Articles','','',3,'cpanel',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_popular',3,1,'{\"count\":\"5\",\"catid\":\"\",\"user_id\":\"0\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\",\"automatic_title\":\"1\"}',1,'*'),(4,58,'Recently Added Articles','','',4,'cpanel',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_latest',3,1,'{\"count\":\"5\",\"ordering\":\"c_dsc\",\"catid\":\"\",\"user_id\":\"0\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\",\"automatic_title\":\"1\"}',1,'*'),(8,59,'Toolbar','','',1,'toolbar',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_toolbar',3,1,'',1,'*'),(9,60,'Quick Icons','','',1,'icon',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_quickicon',3,1,'',1,'*'),(10,61,'Logged-in Users','','',2,'cpanel',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_logged',3,1,'{\"count\":\"5\",\"name\":\"1\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\",\"automatic_title\":\"1\"}',1,'*'),(12,62,'Admin Menu','','',1,'menu',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_menu',3,1,'{\"layout\":\"\",\"moduleclass_sfx\":\"\",\"shownew\":\"1\",\"showhelp\":\"1\",\"cache\":\"0\"}',1,'*'),(13,63,'Admin Submenu','','',1,'submenu',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_submenu',3,1,'',1,'*'),(14,64,'User Status','','',2,'status',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_status',3,1,'',1,'*'),(15,65,'Title','','',1,'title',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_title',3,1,'',1,'*'),(16,66,'Login Form','','',7,'position-7',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'mod_login',1,1,'{\"greeting\":\"1\",\"name\":\"0\"}',0,'*'),(17,67,'Breadcrumbs','','',1,'position-2',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'mod_breadcrumbs',1,1,'{\"moduleclass_sfx\":\"\",\"showHome\":\"1\",\"homeText\":\"\",\"showComponent\":\"1\",\"separator\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"itemid\"}',0,'*'),(79,68,'Multilanguage status','','',1,'status',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'mod_multilangstatus',3,1,'{\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\"}',1,'*'),(86,69,'Joomla Version','','',1,'footer',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_version',3,1,'{\"format\":\"short\",\"product\":\"1\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\"}',1,'*'),(87,1511,'From any location','','',1,'position-3',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_articles_categories',1,0,'{\"parent\":\"8\",\"show_description\":\"0\",\"numitems\":\"1\",\"show_children\":\"1\",\"count\":\"0\",\"maxlevel\":\"0\",\"layout\":\"_:default\",\"item_heading\":\"4\",\"moduleclass_sfx\":\"\",\"owncache\":\"1\",\"cache_time\":\"900\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',0,'*'),(88,5904,'About','','<p dir=\"ltr\">This website shows classified ads that are posted to <a href=\"https://github.com/CraigsCoin/CraigsCoin\">CraigsCoin</a> blockchain.</p>\r\n<p><span id=\"docs-internal-guid-59b3140b-c055-11b9-6ac7-602b8a7b101e\">Ads on the blockchain is an innovative technology designed by CraigsCoin developers. It allows you to post your classified ads in a decentralised way. No entity will be able to edit or delete your ad once its posted to the blockchain. Not even you</span></p>',1,'about',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_custom',1,0,'{\"prepare_content\":\"0\",\"backgroundimage\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',0,'*'),(89,5905,'Web Links','','',1,'web-links',657,'2014-09-29 07:39:35','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_weblinks',1,1,'{\"catid\":\"6\",\"count\":\"5\",\"ordering\":\"title\",\"direction\":\"asc\",\"target\":\"1\",\"follow\":\"follow\",\"description\":\"0\",\"hits\":\"0\",\"count_clicks\":\"0\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',0,'*'),(90,5909,'Contact: Email Address','','<p>Support@designinvento.com</p>',1,'contact-email-address',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_custom',1,1,'{\"prepare_content\":\"0\",\"backgroundimage\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',0,'*'),(91,5911,'Tags','','',4,'right-position-1',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_tags_popular',1,1,'{\"maximum\":\"20\",\"timeframe\":\"alltime\",\"order_value\":\"count\",\"order_direction\":\"1\",\"display_count\":0,\"no_results_text\":\"0\",\"minsize\":1,\"maxsize\":2,\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"owncache\":\"1\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',0,'*'),(92,5912,'LATEST ADs','','',2,'right-position-1',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_articles_latest',1,1,'{\"catid\":[\"8\"],\"count\":\"4\",\"show_featured\":\"\",\"ordering\":\"c_dsc\",\"user_id\":\"0\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',0,'*'),(93,5913,'RELATED ADS','','',1,'right-position-1',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_tags_similar',1,1,'{\"maximum\":\"5\",\"matchtype\":\"any\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"related-abs\",\"owncache\":\"1\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',0,'*'),(94,5915,'CATEGORIES','','',5,'right-position-1',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_articles_categories',1,1,'{\"parent\":\"8\",\"show_description\":\"0\",\"numitems\":\"1\",\"show_children\":\"0\",\"count\":\"0\",\"maxlevel\":\"1\",\"layout\":\"craigscoinadviewer:rightcategory\",\"item_heading\":\"4\",\"moduleclass_sfx\":\"\",\"owncache\":\"1\",\"cache_time\":\"900\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',0,'*'),(95,5916,'SUBCATEGORIES','','',3,'right-position-1',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_articles_categories',1,1,'{\"parent\":\"8\",\"show_description\":\"0\",\"numitems\":\"1\",\"show_children\":\"1\",\"count\":\"0\",\"maxlevel\":\"0\",\"layout\":\"craigscoinadviewer:rightcategory\",\"item_heading\":\"4\",\"moduleclass_sfx\":\"\",\"owncache\":\"1\",\"cache_time\":\"900\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',0,'*');
/*!40000 ALTER TABLE `new1_modules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `new1_modules_menu`
--

DROP TABLE IF EXISTS `new1_modules_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `new1_modules_menu` (
  `moduleid` int(11) NOT NULL DEFAULT '0',
  `menuid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`moduleid`,`menuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `new1_modules_menu`
--

LOCK TABLES `new1_modules_menu` WRITE;
/*!40000 ALTER TABLE `new1_modules_menu` DISABLE KEYS */;
INSERT INTO `new1_modules_menu` VALUES (1,0),(2,0),(3,0),(4,0),(6,0),(7,0),(8,0),(9,0),(10,0),(12,0),(13,0),(14,0),(15,0),(16,0),(17,0),(79,0),(86,0),(87,0),(88,0),(89,0),(90,0),(91,0),(92,0),(93,0),(94,0),(95,0);
/*!40000 ALTER TABLE `new1_modules_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `new1_newsfeeds`
--

DROP TABLE IF EXISTS `new1_newsfeeds`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `new1_newsfeeds` (
  `catid` int(11) NOT NULL DEFAULT '0',
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `link` varchar(200) NOT NULL DEFAULT '',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `numarticles` int(10) unsigned NOT NULL DEFAULT '1',
  `cache_time` int(10) unsigned NOT NULL DEFAULT '3600',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `rtl` tinyint(4) NOT NULL DEFAULT '0',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL DEFAULT '',
  `params` text NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `metadata` text NOT NULL,
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `description` text NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `images` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`published`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `new1_newsfeeds`
--

LOCK TABLES `new1_newsfeeds` WRITE;
/*!40000 ALTER TABLE `new1_newsfeeds` DISABLE KEYS */;
/*!40000 ALTER TABLE `new1_newsfeeds` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `new1_overrider`
--

DROP TABLE IF EXISTS `new1_overrider`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `new1_overrider` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `constant` varchar(255) NOT NULL,
  `string` text NOT NULL,
  `file` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `new1_overrider`
--

LOCK TABLES `new1_overrider` WRITE;
/*!40000 ALTER TABLE `new1_overrider` DISABLE KEYS */;
/*!40000 ALTER TABLE `new1_overrider` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `new1_postinstall_messages`
--

DROP TABLE IF EXISTS `new1_postinstall_messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `new1_postinstall_messages` (
  `postinstall_message_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `extension_id` bigint(20) NOT NULL DEFAULT '700' COMMENT 'FK to #__extensions',
  `title_key` varchar(255) NOT NULL DEFAULT '' COMMENT 'Lang key for the title',
  `description_key` varchar(255) NOT NULL DEFAULT '' COMMENT 'Lang key for description',
  `action_key` varchar(255) NOT NULL DEFAULT '',
  `language_extension` varchar(255) NOT NULL DEFAULT 'com_postinstall' COMMENT 'Extension holding lang keys',
  `language_client_id` tinyint(3) NOT NULL DEFAULT '1',
  `type` varchar(10) NOT NULL DEFAULT 'link' COMMENT 'Message type - message, link, action',
  `action_file` varchar(255) DEFAULT '' COMMENT 'RAD URI to the PHP file containing action method',
  `action` varchar(255) DEFAULT '' COMMENT 'Action method name or URL',
  `condition_file` varchar(255) DEFAULT NULL COMMENT 'RAD URI to file holding display condition method',
  `condition_method` varchar(255) DEFAULT NULL COMMENT 'Display condition method, must return boolean',
  `version_introduced` varchar(50) NOT NULL DEFAULT '3.2.0' COMMENT 'Version when this message was introduced',
  `enabled` tinyint(3) NOT NULL DEFAULT '1',
  PRIMARY KEY (`postinstall_message_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `new1_postinstall_messages`
--

LOCK TABLES `new1_postinstall_messages` WRITE;
/*!40000 ALTER TABLE `new1_postinstall_messages` DISABLE KEYS */;
INSERT INTO `new1_postinstall_messages` VALUES (1,700,'PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_TITLE','PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_BODY','PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_ACTION','plg_twofactorauth_totp',1,'action','site://plugins/twofactorauth/totp/postinstall/actions.php','twofactorauth_postinstall_action','site://plugins/twofactorauth/totp/postinstall/actions.php','twofactorauth_postinstall_condition','3.2.0',1),(2,700,'COM_CPANEL_MSG_EACCELERATOR_TITLE','COM_CPANEL_MSG_EACCELERATOR_BODY','COM_CPANEL_MSG_EACCELERATOR_BUTTON','com_cpanel',1,'action','admin://components/com_admin/postinstall/eaccelerator.php','admin_postinstall_eaccelerator_action','admin://components/com_admin/postinstall/eaccelerator.php','admin_postinstall_eaccelerator_condition','3.2.0',1),(3,700,'COM_CPANEL_WELCOME_BEGINNERS_TITLE','COM_CPANEL_WELCOME_BEGINNERS_MESSAGE','','com_cpanel',1,'message','','','','','3.2.0',1),(4,700,'COM_CPANEL_MSG_PHPVERSION_TITLE','COM_CPANEL_MSG_PHPVERSION_BODY','','com_cpanel',1,'message','','','admin://components/com_admin/postinstall/phpversion.php','admin_postinstall_phpversion_condition','3.2.2',1);
/*!40000 ALTER TABLE `new1_postinstall_messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `new1_redirect_links`
--

DROP TABLE IF EXISTS `new1_redirect_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `new1_redirect_links` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `old_url` varchar(255) NOT NULL,
  `new_url` varchar(255) NOT NULL,
  `referer` varchar(150) NOT NULL,
  `comment` varchar(255) NOT NULL,
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `published` tinyint(4) NOT NULL,
  `created_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_link_old` (`old_url`),
  KEY `idx_link_modifed` (`modified_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `new1_redirect_links`
--

LOCK TABLES `new1_redirect_links` WRITE;
/*!40000 ALTER TABLE `new1_redirect_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `new1_redirect_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `new1_schemas`
--

DROP TABLE IF EXISTS `new1_schemas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `new1_schemas` (
  `extension_id` int(11) NOT NULL,
  `version_id` varchar(20) NOT NULL,
  PRIMARY KEY (`extension_id`,`version_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `new1_schemas`
--

LOCK TABLES `new1_schemas` WRITE;
/*!40000 ALTER TABLE `new1_schemas` DISABLE KEYS */;
INSERT INTO `new1_schemas` VALUES (700,'3.3.0-2014-04-02'),(716,'3.4.3.9'),(717,'2.0');
/*!40000 ALTER TABLE `new1_schemas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `new1_session`
--

DROP TABLE IF EXISTS `new1_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `new1_session` (
  `session_id` varchar(200) NOT NULL DEFAULT '',
  `client_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `guest` tinyint(4) unsigned DEFAULT '1',
  `time` varchar(14) DEFAULT '',
  `data` mediumtext,
  `userid` int(11) DEFAULT '0',
  `username` varchar(150) DEFAULT '',
  PRIMARY KEY (`session_id`),
  KEY `userid` (`userid`),
  KEY `time` (`time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `new1_session`
--

LOCK TABLES `new1_session` WRITE;
/*!40000 ALTER TABLE `new1_session` DISABLE KEYS */;
INSERT INTO `new1_session` VALUES ('1dbdob5tvdv34i3hs4u8rj4eh5',0,1,'1412413681','__default|a:6:{s:15:\"session.counter\";i:1;s:19:\"session.timer.start\";i:1412413681;s:18:\"session.timer.last\";i:1412413681;s:17:\"session.timer.now\";i:1412413681;s:8:\"registry\";O:24:\"Joomla\\Registry\\Registry\":1:{s:7:\"\\0\\0\\0data\";O:8:\"stdClass\":0:{}}s:4:\"user\";O:5:\"JUser\":25:{s:9:\"\\0\\0\\0isRoot\";N;s:2:\"id\";i:0;s:4:\"name\";N;s:8:\"username\";N;s:5:\"email\";N;s:8:\"password\";N;s:14:\"password_clear\";s:0:\"\";s:5:\"block\";N;s:9:\"sendEmail\";i:0;s:12:\"registerDate\";N;s:13:\"lastvisitDate\";N;s:10:\"activation\";N;s:6:\"params\";N;s:6:\"groups\";a:0:{}s:5:\"guest\";i:1;s:13:\"lastResetTime\";N;s:10:\"resetCount\";N;s:12:\"requireReset\";N;s:10:\"\\0\\0\\0_params\";O:24:\"Joomla\\Registry\\Registry\":1:{s:7:\"\\0\\0\\0data\";O:8:\"stdClass\":0:{}}s:14:\"\\0\\0\\0_authGroups\";N;s:14:\"\\0\\0\\0_authLevels\";N;s:15:\"\\0\\0\\0_authActions\";N;s:12:\"\\0\\0\\0_errorMsg\";N;s:10:\"\\0\\0\\0_errors\";a:0:{}s:3:\"aid\";i:0;}}',0,''),('20gmmenmb5q34k25ivm2u02l67',0,1,'1412413441','__default|a:6:{s:15:\"session.counter\";i:1;s:19:\"session.timer.start\";i:1412413441;s:18:\"session.timer.last\";i:1412413441;s:17:\"session.timer.now\";i:1412413441;s:8:\"registry\";O:24:\"Joomla\\Registry\\Registry\":1:{s:7:\"\\0\\0\\0data\";O:8:\"stdClass\":0:{}}s:4:\"user\";O:5:\"JUser\":25:{s:9:\"\\0\\0\\0isRoot\";N;s:2:\"id\";i:0;s:4:\"name\";N;s:8:\"username\";N;s:5:\"email\";N;s:8:\"password\";N;s:14:\"password_clear\";s:0:\"\";s:5:\"block\";N;s:9:\"sendEmail\";i:0;s:12:\"registerDate\";N;s:13:\"lastvisitDate\";N;s:10:\"activation\";N;s:6:\"params\";N;s:6:\"groups\";a:0:{}s:5:\"guest\";i:1;s:13:\"lastResetTime\";N;s:10:\"resetCount\";N;s:12:\"requireReset\";N;s:10:\"\\0\\0\\0_params\";O:24:\"Joomla\\Registry\\Registry\":1:{s:7:\"\\0\\0\\0data\";O:8:\"stdClass\":0:{}}s:14:\"\\0\\0\\0_authGroups\";N;s:14:\"\\0\\0\\0_authLevels\";N;s:15:\"\\0\\0\\0_authActions\";N;s:12:\"\\0\\0\\0_errorMsg\";N;s:10:\"\\0\\0\\0_errors\";a:0:{}s:3:\"aid\";i:0;}}',0,''),('61mo5e064p3chl9eons7t6m5j6',0,1,'1412413261','__default|a:6:{s:15:\"session.counter\";i:1;s:19:\"session.timer.start\";i:1412413261;s:18:\"session.timer.last\";i:1412413261;s:17:\"session.timer.now\";i:1412413261;s:8:\"registry\";O:24:\"Joomla\\Registry\\Registry\":1:{s:7:\"\\0\\0\\0data\";O:8:\"stdClass\":0:{}}s:4:\"user\";O:5:\"JUser\":25:{s:9:\"\\0\\0\\0isRoot\";N;s:2:\"id\";i:0;s:4:\"name\";N;s:8:\"username\";N;s:5:\"email\";N;s:8:\"password\";N;s:14:\"password_clear\";s:0:\"\";s:5:\"block\";N;s:9:\"sendEmail\";i:0;s:12:\"registerDate\";N;s:13:\"lastvisitDate\";N;s:10:\"activation\";N;s:6:\"params\";N;s:6:\"groups\";a:0:{}s:5:\"guest\";i:1;s:13:\"lastResetTime\";N;s:10:\"resetCount\";N;s:12:\"requireReset\";N;s:10:\"\\0\\0\\0_params\";O:24:\"Joomla\\Registry\\Registry\":1:{s:7:\"\\0\\0\\0data\";O:8:\"stdClass\":0:{}}s:14:\"\\0\\0\\0_authGroups\";N;s:14:\"\\0\\0\\0_authLevels\";N;s:15:\"\\0\\0\\0_authActions\";N;s:12:\"\\0\\0\\0_errorMsg\";N;s:10:\"\\0\\0\\0_errors\";a:0:{}s:3:\"aid\";i:0;}}',0,''),('627fp7uncdk20mqgffp5vjq1c0',0,1,'1412413861','__default|a:6:{s:15:\"session.counter\";i:1;s:19:\"session.timer.start\";i:1412413861;s:18:\"session.timer.last\";i:1412413861;s:17:\"session.timer.now\";i:1412413861;s:8:\"registry\";O:24:\"Joomla\\Registry\\Registry\":1:{s:7:\"\\0\\0\\0data\";O:8:\"stdClass\":0:{}}s:4:\"user\";O:5:\"JUser\":25:{s:9:\"\\0\\0\\0isRoot\";N;s:2:\"id\";i:0;s:4:\"name\";N;s:8:\"username\";N;s:5:\"email\";N;s:8:\"password\";N;s:14:\"password_clear\";s:0:\"\";s:5:\"block\";N;s:9:\"sendEmail\";i:0;s:12:\"registerDate\";N;s:13:\"lastvisitDate\";N;s:10:\"activation\";N;s:6:\"params\";N;s:6:\"groups\";a:0:{}s:5:\"guest\";i:1;s:13:\"lastResetTime\";N;s:10:\"resetCount\";N;s:12:\"requireReset\";N;s:10:\"\\0\\0\\0_params\";O:24:\"Joomla\\Registry\\Registry\":1:{s:7:\"\\0\\0\\0data\";O:8:\"stdClass\":0:{}}s:14:\"\\0\\0\\0_authGroups\";N;s:14:\"\\0\\0\\0_authLevels\";N;s:15:\"\\0\\0\\0_authActions\";N;s:12:\"\\0\\0\\0_errorMsg\";N;s:10:\"\\0\\0\\0_errors\";a:0:{}s:3:\"aid\";i:0;}}',0,''),('a4vctmbkps616e4jqr9vdsdp13',0,1,'1412413321','__default|a:6:{s:15:\"session.counter\";i:1;s:19:\"session.timer.start\";i:1412413321;s:18:\"session.timer.last\";i:1412413321;s:17:\"session.timer.now\";i:1412413321;s:8:\"registry\";O:24:\"Joomla\\Registry\\Registry\":1:{s:7:\"\\0\\0\\0data\";O:8:\"stdClass\":0:{}}s:4:\"user\";O:5:\"JUser\":25:{s:9:\"\\0\\0\\0isRoot\";N;s:2:\"id\";i:0;s:4:\"name\";N;s:8:\"username\";N;s:5:\"email\";N;s:8:\"password\";N;s:14:\"password_clear\";s:0:\"\";s:5:\"block\";N;s:9:\"sendEmail\";i:0;s:12:\"registerDate\";N;s:13:\"lastvisitDate\";N;s:10:\"activation\";N;s:6:\"params\";N;s:6:\"groups\";a:0:{}s:5:\"guest\";i:1;s:13:\"lastResetTime\";N;s:10:\"resetCount\";N;s:12:\"requireReset\";N;s:10:\"\\0\\0\\0_params\";O:24:\"Joomla\\Registry\\Registry\":1:{s:7:\"\\0\\0\\0data\";O:8:\"stdClass\":0:{}}s:14:\"\\0\\0\\0_authGroups\";N;s:14:\"\\0\\0\\0_authLevels\";N;s:15:\"\\0\\0\\0_authActions\";N;s:12:\"\\0\\0\\0_errorMsg\";N;s:10:\"\\0\\0\\0_errors\";a:0:{}s:3:\"aid\";i:0;}}',0,''),('ecvssm7licnhll01s6212r1ps3',0,1,'1412413561','__default|a:6:{s:15:\"session.counter\";i:1;s:19:\"session.timer.start\";i:1412413561;s:18:\"session.timer.last\";i:1412413561;s:17:\"session.timer.now\";i:1412413561;s:8:\"registry\";O:24:\"Joomla\\Registry\\Registry\":1:{s:7:\"\\0\\0\\0data\";O:8:\"stdClass\":0:{}}s:4:\"user\";O:5:\"JUser\":25:{s:9:\"\\0\\0\\0isRoot\";N;s:2:\"id\";i:0;s:4:\"name\";N;s:8:\"username\";N;s:5:\"email\";N;s:8:\"password\";N;s:14:\"password_clear\";s:0:\"\";s:5:\"block\";N;s:9:\"sendEmail\";i:0;s:12:\"registerDate\";N;s:13:\"lastvisitDate\";N;s:10:\"activation\";N;s:6:\"params\";N;s:6:\"groups\";a:0:{}s:5:\"guest\";i:1;s:13:\"lastResetTime\";N;s:10:\"resetCount\";N;s:12:\"requireReset\";N;s:10:\"\\0\\0\\0_params\";O:24:\"Joomla\\Registry\\Registry\":1:{s:7:\"\\0\\0\\0data\";O:8:\"stdClass\":0:{}}s:14:\"\\0\\0\\0_authGroups\";N;s:14:\"\\0\\0\\0_authLevels\";N;s:15:\"\\0\\0\\0_authActions\";N;s:12:\"\\0\\0\\0_errorMsg\";N;s:10:\"\\0\\0\\0_errors\";a:0:{}s:3:\"aid\";i:0;}}',0,''),('f2qgrcls89m9vt8hivsi7r2a91',0,1,'1412413801','__default|a:6:{s:15:\"session.counter\";i:1;s:19:\"session.timer.start\";i:1412413801;s:18:\"session.timer.last\";i:1412413801;s:17:\"session.timer.now\";i:1412413801;s:8:\"registry\";O:24:\"Joomla\\Registry\\Registry\":1:{s:7:\"\\0\\0\\0data\";O:8:\"stdClass\":0:{}}s:4:\"user\";O:5:\"JUser\":25:{s:9:\"\\0\\0\\0isRoot\";N;s:2:\"id\";i:0;s:4:\"name\";N;s:8:\"username\";N;s:5:\"email\";N;s:8:\"password\";N;s:14:\"password_clear\";s:0:\"\";s:5:\"block\";N;s:9:\"sendEmail\";i:0;s:12:\"registerDate\";N;s:13:\"lastvisitDate\";N;s:10:\"activation\";N;s:6:\"params\";N;s:6:\"groups\";a:0:{}s:5:\"guest\";i:1;s:13:\"lastResetTime\";N;s:10:\"resetCount\";N;s:12:\"requireReset\";N;s:10:\"\\0\\0\\0_params\";O:24:\"Joomla\\Registry\\Registry\":1:{s:7:\"\\0\\0\\0data\";O:8:\"stdClass\":0:{}}s:14:\"\\0\\0\\0_authGroups\";N;s:14:\"\\0\\0\\0_authLevels\";N;s:15:\"\\0\\0\\0_authActions\";N;s:12:\"\\0\\0\\0_errorMsg\";N;s:10:\"\\0\\0\\0_errors\";a:0:{}s:3:\"aid\";i:0;}}',0,''),('h195kclhfa340k4khi34e27v02',0,1,'1412413622','__default|a:6:{s:15:\"session.counter\";i:1;s:19:\"session.timer.start\";i:1412413622;s:18:\"session.timer.last\";i:1412413622;s:17:\"session.timer.now\";i:1412413622;s:8:\"registry\";O:24:\"Joomla\\Registry\\Registry\":1:{s:7:\"\\0\\0\\0data\";O:8:\"stdClass\":0:{}}s:4:\"user\";O:5:\"JUser\":25:{s:9:\"\\0\\0\\0isRoot\";N;s:2:\"id\";i:0;s:4:\"name\";N;s:8:\"username\";N;s:5:\"email\";N;s:8:\"password\";N;s:14:\"password_clear\";s:0:\"\";s:5:\"block\";N;s:9:\"sendEmail\";i:0;s:12:\"registerDate\";N;s:13:\"lastvisitDate\";N;s:10:\"activation\";N;s:6:\"params\";N;s:6:\"groups\";a:0:{}s:5:\"guest\";i:1;s:13:\"lastResetTime\";N;s:10:\"resetCount\";N;s:12:\"requireReset\";N;s:10:\"\\0\\0\\0_params\";O:24:\"Joomla\\Registry\\Registry\":1:{s:7:\"\\0\\0\\0data\";O:8:\"stdClass\":0:{}}s:14:\"\\0\\0\\0_authGroups\";N;s:14:\"\\0\\0\\0_authLevels\";N;s:15:\"\\0\\0\\0_authActions\";N;s:12:\"\\0\\0\\0_errorMsg\";N;s:10:\"\\0\\0\\0_errors\";a:0:{}s:3:\"aid\";i:0;}}',0,''),('h6df37nhqhfve87dcsbb7p6kg6',0,1,'1412413021','__default|a:6:{s:15:\"session.counter\";i:1;s:19:\"session.timer.start\";i:1412413021;s:18:\"session.timer.last\";i:1412413021;s:17:\"session.timer.now\";i:1412413021;s:8:\"registry\";O:24:\"Joomla\\Registry\\Registry\":1:{s:7:\"\\0\\0\\0data\";O:8:\"stdClass\":0:{}}s:4:\"user\";O:5:\"JUser\":25:{s:9:\"\\0\\0\\0isRoot\";N;s:2:\"id\";i:0;s:4:\"name\";N;s:8:\"username\";N;s:5:\"email\";N;s:8:\"password\";N;s:14:\"password_clear\";s:0:\"\";s:5:\"block\";N;s:9:\"sendEmail\";i:0;s:12:\"registerDate\";N;s:13:\"lastvisitDate\";N;s:10:\"activation\";N;s:6:\"params\";N;s:6:\"groups\";a:0:{}s:5:\"guest\";i:1;s:13:\"lastResetTime\";N;s:10:\"resetCount\";N;s:12:\"requireReset\";N;s:10:\"\\0\\0\\0_params\";O:24:\"Joomla\\Registry\\Registry\":1:{s:7:\"\\0\\0\\0data\";O:8:\"stdClass\":0:{}}s:14:\"\\0\\0\\0_authGroups\";N;s:14:\"\\0\\0\\0_authLevels\";N;s:15:\"\\0\\0\\0_authActions\";N;s:12:\"\\0\\0\\0_errorMsg\";N;s:10:\"\\0\\0\\0_errors\";a:0:{}s:3:\"aid\";i:0;}}',0,''),('j7m8ns4cuk3ssqmkuql322l4v5',0,1,'1412413741','__default|a:6:{s:15:\"session.counter\";i:1;s:19:\"session.timer.start\";i:1412413741;s:18:\"session.timer.last\";i:1412413741;s:17:\"session.timer.now\";i:1412413741;s:8:\"registry\";O:24:\"Joomla\\Registry\\Registry\":1:{s:7:\"\\0\\0\\0data\";O:8:\"stdClass\":0:{}}s:4:\"user\";O:5:\"JUser\":25:{s:9:\"\\0\\0\\0isRoot\";N;s:2:\"id\";i:0;s:4:\"name\";N;s:8:\"username\";N;s:5:\"email\";N;s:8:\"password\";N;s:14:\"password_clear\";s:0:\"\";s:5:\"block\";N;s:9:\"sendEmail\";i:0;s:12:\"registerDate\";N;s:13:\"lastvisitDate\";N;s:10:\"activation\";N;s:6:\"params\";N;s:6:\"groups\";a:0:{}s:5:\"guest\";i:1;s:13:\"lastResetTime\";N;s:10:\"resetCount\";N;s:12:\"requireReset\";N;s:10:\"\\0\\0\\0_params\";O:24:\"Joomla\\Registry\\Registry\":1:{s:7:\"\\0\\0\\0data\";O:8:\"stdClass\":0:{}}s:14:\"\\0\\0\\0_authGroups\";N;s:14:\"\\0\\0\\0_authLevels\";N;s:15:\"\\0\\0\\0_authActions\";N;s:12:\"\\0\\0\\0_errorMsg\";N;s:10:\"\\0\\0\\0_errors\";a:0:{}s:3:\"aid\";i:0;}}',0,''),('jkp5uv2h2g05b09vutg694p4d5',0,1,'1412413501','__default|a:6:{s:15:\"session.counter\";i:1;s:19:\"session.timer.start\";i:1412413501;s:18:\"session.timer.last\";i:1412413501;s:17:\"session.timer.now\";i:1412413501;s:8:\"registry\";O:24:\"Joomla\\Registry\\Registry\":1:{s:7:\"\\0\\0\\0data\";O:8:\"stdClass\":0:{}}s:4:\"user\";O:5:\"JUser\":25:{s:9:\"\\0\\0\\0isRoot\";N;s:2:\"id\";i:0;s:4:\"name\";N;s:8:\"username\";N;s:5:\"email\";N;s:8:\"password\";N;s:14:\"password_clear\";s:0:\"\";s:5:\"block\";N;s:9:\"sendEmail\";i:0;s:12:\"registerDate\";N;s:13:\"lastvisitDate\";N;s:10:\"activation\";N;s:6:\"params\";N;s:6:\"groups\";a:0:{}s:5:\"guest\";i:1;s:13:\"lastResetTime\";N;s:10:\"resetCount\";N;s:12:\"requireReset\";N;s:10:\"\\0\\0\\0_params\";O:24:\"Joomla\\Registry\\Registry\":1:{s:7:\"\\0\\0\\0data\";O:8:\"stdClass\":0:{}}s:14:\"\\0\\0\\0_authGroups\";N;s:14:\"\\0\\0\\0_authLevels\";N;s:15:\"\\0\\0\\0_authActions\";N;s:12:\"\\0\\0\\0_errorMsg\";N;s:10:\"\\0\\0\\0_errors\";a:0:{}s:3:\"aid\";i:0;}}',0,''),('lse2l0rab12078hog69n0diot7',0,1,'1412413201','__default|a:6:{s:15:\"session.counter\";i:1;s:19:\"session.timer.start\";i:1412413201;s:18:\"session.timer.last\";i:1412413201;s:17:\"session.timer.now\";i:1412413201;s:8:\"registry\";O:24:\"Joomla\\Registry\\Registry\":1:{s:7:\"\\0\\0\\0data\";O:8:\"stdClass\":0:{}}s:4:\"user\";O:5:\"JUser\":25:{s:9:\"\\0\\0\\0isRoot\";N;s:2:\"id\";i:0;s:4:\"name\";N;s:8:\"username\";N;s:5:\"email\";N;s:8:\"password\";N;s:14:\"password_clear\";s:0:\"\";s:5:\"block\";N;s:9:\"sendEmail\";i:0;s:12:\"registerDate\";N;s:13:\"lastvisitDate\";N;s:10:\"activation\";N;s:6:\"params\";N;s:6:\"groups\";a:0:{}s:5:\"guest\";i:1;s:13:\"lastResetTime\";N;s:10:\"resetCount\";N;s:12:\"requireReset\";N;s:10:\"\\0\\0\\0_params\";O:24:\"Joomla\\Registry\\Registry\":1:{s:7:\"\\0\\0\\0data\";O:8:\"stdClass\":0:{}}s:14:\"\\0\\0\\0_authGroups\";N;s:14:\"\\0\\0\\0_authLevels\";N;s:15:\"\\0\\0\\0_authActions\";N;s:12:\"\\0\\0\\0_errorMsg\";N;s:10:\"\\0\\0\\0_errors\";a:0:{}s:3:\"aid\";i:0;}}',0,''),('m3brc204j9fmch9re33km8mcs0',0,1,'1412412961','__default|a:6:{s:15:\"session.counter\";i:1;s:19:\"session.timer.start\";i:1412412961;s:18:\"session.timer.last\";i:1412412961;s:17:\"session.timer.now\";i:1412412961;s:8:\"registry\";O:24:\"Joomla\\Registry\\Registry\":1:{s:7:\"\\0\\0\\0data\";O:8:\"stdClass\":0:{}}s:4:\"user\";O:5:\"JUser\":25:{s:9:\"\\0\\0\\0isRoot\";N;s:2:\"id\";i:0;s:4:\"name\";N;s:8:\"username\";N;s:5:\"email\";N;s:8:\"password\";N;s:14:\"password_clear\";s:0:\"\";s:5:\"block\";N;s:9:\"sendEmail\";i:0;s:12:\"registerDate\";N;s:13:\"lastvisitDate\";N;s:10:\"activation\";N;s:6:\"params\";N;s:6:\"groups\";a:0:{}s:5:\"guest\";i:1;s:13:\"lastResetTime\";N;s:10:\"resetCount\";N;s:12:\"requireReset\";N;s:10:\"\\0\\0\\0_params\";O:24:\"Joomla\\Registry\\Registry\":1:{s:7:\"\\0\\0\\0data\";O:8:\"stdClass\":0:{}}s:14:\"\\0\\0\\0_authGroups\";N;s:14:\"\\0\\0\\0_authLevels\";N;s:15:\"\\0\\0\\0_authActions\";N;s:12:\"\\0\\0\\0_errorMsg\";N;s:10:\"\\0\\0\\0_errors\";a:0:{}s:3:\"aid\";i:0;}}',0,''),('nr7dvq985c749iat3nlikg2vm6',0,1,'1412413081','__default|a:6:{s:15:\"session.counter\";i:1;s:19:\"session.timer.start\";i:1412413081;s:18:\"session.timer.last\";i:1412413081;s:17:\"session.timer.now\";i:1412413081;s:8:\"registry\";O:24:\"Joomla\\Registry\\Registry\":1:{s:7:\"\\0\\0\\0data\";O:8:\"stdClass\":0:{}}s:4:\"user\";O:5:\"JUser\":25:{s:9:\"\\0\\0\\0isRoot\";N;s:2:\"id\";i:0;s:4:\"name\";N;s:8:\"username\";N;s:5:\"email\";N;s:8:\"password\";N;s:14:\"password_clear\";s:0:\"\";s:5:\"block\";N;s:9:\"sendEmail\";i:0;s:12:\"registerDate\";N;s:13:\"lastvisitDate\";N;s:10:\"activation\";N;s:6:\"params\";N;s:6:\"groups\";a:0:{}s:5:\"guest\";i:1;s:13:\"lastResetTime\";N;s:10:\"resetCount\";N;s:12:\"requireReset\";N;s:10:\"\\0\\0\\0_params\";O:24:\"Joomla\\Registry\\Registry\":1:{s:7:\"\\0\\0\\0data\";O:8:\"stdClass\":0:{}}s:14:\"\\0\\0\\0_authGroups\";N;s:14:\"\\0\\0\\0_authLevels\";N;s:15:\"\\0\\0\\0_authActions\";N;s:12:\"\\0\\0\\0_errorMsg\";N;s:10:\"\\0\\0\\0_errors\";a:0:{}s:3:\"aid\";i:0;}}',0,''),('stkuqboodhji05aln1fjv4h2v0',0,1,'1412413381','__default|a:6:{s:15:\"session.counter\";i:1;s:19:\"session.timer.start\";i:1412413381;s:18:\"session.timer.last\";i:1412413381;s:17:\"session.timer.now\";i:1412413381;s:8:\"registry\";O:24:\"Joomla\\Registry\\Registry\":1:{s:7:\"\\0\\0\\0data\";O:8:\"stdClass\":0:{}}s:4:\"user\";O:5:\"JUser\":25:{s:9:\"\\0\\0\\0isRoot\";N;s:2:\"id\";i:0;s:4:\"name\";N;s:8:\"username\";N;s:5:\"email\";N;s:8:\"password\";N;s:14:\"password_clear\";s:0:\"\";s:5:\"block\";N;s:9:\"sendEmail\";i:0;s:12:\"registerDate\";N;s:13:\"lastvisitDate\";N;s:10:\"activation\";N;s:6:\"params\";N;s:6:\"groups\";a:0:{}s:5:\"guest\";i:1;s:13:\"lastResetTime\";N;s:10:\"resetCount\";N;s:12:\"requireReset\";N;s:10:\"\\0\\0\\0_params\";O:24:\"Joomla\\Registry\\Registry\":1:{s:7:\"\\0\\0\\0data\";O:8:\"stdClass\":0:{}}s:14:\"\\0\\0\\0_authGroups\";N;s:14:\"\\0\\0\\0_authLevels\";N;s:15:\"\\0\\0\\0_authActions\";N;s:12:\"\\0\\0\\0_errorMsg\";N;s:10:\"\\0\\0\\0_errors\";a:0:{}s:3:\"aid\";i:0;}}',0,''),('v8r0q8e9vtjonvjdpgmfui8rr7',0,1,'1412413141','__default|a:6:{s:15:\"session.counter\";i:1;s:19:\"session.timer.start\";i:1412413141;s:18:\"session.timer.last\";i:1412413141;s:17:\"session.timer.now\";i:1412413141;s:8:\"registry\";O:24:\"Joomla\\Registry\\Registry\":1:{s:7:\"\\0\\0\\0data\";O:8:\"stdClass\":0:{}}s:4:\"user\";O:5:\"JUser\":25:{s:9:\"\\0\\0\\0isRoot\";N;s:2:\"id\";i:0;s:4:\"name\";N;s:8:\"username\";N;s:5:\"email\";N;s:8:\"password\";N;s:14:\"password_clear\";s:0:\"\";s:5:\"block\";N;s:9:\"sendEmail\";i:0;s:12:\"registerDate\";N;s:13:\"lastvisitDate\";N;s:10:\"activation\";N;s:6:\"params\";N;s:6:\"groups\";a:0:{}s:5:\"guest\";i:1;s:13:\"lastResetTime\";N;s:10:\"resetCount\";N;s:12:\"requireReset\";N;s:10:\"\\0\\0\\0_params\";O:24:\"Joomla\\Registry\\Registry\":1:{s:7:\"\\0\\0\\0data\";O:8:\"stdClass\":0:{}}s:14:\"\\0\\0\\0_authGroups\";N;s:14:\"\\0\\0\\0_authLevels\";N;s:15:\"\\0\\0\\0_authActions\";N;s:12:\"\\0\\0\\0_errorMsg\";N;s:10:\"\\0\\0\\0_errors\";a:0:{}s:3:\"aid\";i:0;}}',0,'');
/*!40000 ALTER TABLE `new1_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `new1_tags`
--

DROP TABLE IF EXISTS `new1_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `new1_tags` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `lft` int(11) NOT NULL DEFAULT '0',
  `rgt` int(11) NOT NULL DEFAULT '0',
  `level` int(10) unsigned NOT NULL DEFAULT '0',
  `path` varchar(255) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `note` varchar(255) NOT NULL DEFAULT '',
  `description` mediumtext NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `metadesc` varchar(1024) NOT NULL COMMENT 'The meta description for the page.',
  `metakey` varchar(1024) NOT NULL COMMENT 'The meta keywords for the page.',
  `metadata` varchar(2048) NOT NULL COMMENT 'JSON encoded metadata properties.',
  `created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `images` text NOT NULL,
  `urls` text NOT NULL,
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `tag_idx` (`published`,`access`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_path` (`path`),
  KEY `idx_left_right` (`lft`,`rgt`),
  KEY `idx_alias` (`alias`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `new1_tags`
--

LOCK TABLES `new1_tags` WRITE;
/*!40000 ALTER TABLE `new1_tags` DISABLE KEYS */;
INSERT INTO `new1_tags` VALUES (1,0,0,5,0,'','ROOT','root','','',1,0,'0000-00-00 00:00:00',1,'','','','',0,'2011-01-01 00:00:01','',0,'0000-00-00 00:00:00','','',0,'*',1,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(2,1,1,2,1,'test','test,','test','','',1,0,'0000-00-00 00:00:00',1,'','','','',657,'2014-09-25 14:03:48','',0,'0000-00-00 00:00:00','','',2,'*',1,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(3,1,3,4,1,'test2',' test2','test2','','',1,0,'0000-00-00 00:00:00',1,'','','','',657,'2014-09-25 14:03:48','',0,'0000-00-00 00:00:00','','',0,'*',1,'0000-00-00 00:00:00','0000-00-00 00:00:00');
/*!40000 ALTER TABLE `new1_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `new1_template_styles`
--

DROP TABLE IF EXISTS `new1_template_styles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `new1_template_styles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `template` varchar(50) NOT NULL DEFAULT '',
  `client_id` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `home` char(7) NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `params` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_template` (`template`),
  KEY `idx_home` (`home`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `new1_template_styles`
--

LOCK TABLES `new1_template_styles` WRITE;
/*!40000 ALTER TABLE `new1_template_styles` DISABLE KEYS */;
INSERT INTO `new1_template_styles` VALUES (4,'beez3',0,'0','Beez3 - Default','{\"wrapperSmall\":\"53\",\"wrapperLarge\":\"72\",\"logo\":\"images\\/joomla_black.gif\",\"sitetitle\":\"Joomla!\",\"sitedescription\":\"Open Source Content Management\",\"navposition\":\"left\",\"templatecolor\":\"personal\",\"html5\":\"0\"}'),(5,'hathor',1,'0','Hathor - Default','{\"showSiteName\":\"0\",\"colourChoice\":\"\",\"boldText\":\"0\"}'),(7,'protostar',0,'0','protostar - Default','{\"templateColor\":\"\",\"logoFile\":\"\",\"googleFont\":\"1\",\"googleFontName\":\"Open+Sans\",\"fluidContainer\":\"0\"}'),(8,'isis',1,'1','isis - Default','{\"templateColor\":\"\",\"logoFile\":\"\"}'),(9,'craigscoinadviewer',0,'1','CraigsCoinAdViewer - Default','{\"templateColor\":\"#08C\",\"templateBackgroundColor\":\"#F4F6F7\",\"logoFile\":\"\",\"sitetitle\":\"\",\"sitedescription\":\"\",\"googleFont\":\"1\",\"googleFontName\":\"Open+Sans\",\"fluidContainer\":\"0\"}');
/*!40000 ALTER TABLE `new1_template_styles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `new1_test`
--

DROP TABLE IF EXISTS `new1_test`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `new1_test` (
  `id` int(11) DEFAULT NULL,
  `utf8` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `new1_test`
--

LOCK TABLES `new1_test` WRITE;
/*!40000 ALTER TABLE `new1_test` DISABLE KEYS */;
INSERT INTO `new1_test` VALUES (NULL,'Тестовый текст, отображается корректно\r\n');
/*!40000 ALTER TABLE `new1_test` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `new1_ucm_base`
--

DROP TABLE IF EXISTS `new1_ucm_base`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `new1_ucm_base` (
  `ucm_id` int(10) unsigned NOT NULL,
  `ucm_item_id` int(10) NOT NULL,
  `ucm_type_id` int(11) NOT NULL,
  `ucm_language_id` int(11) NOT NULL,
  PRIMARY KEY (`ucm_id`),
  KEY `idx_ucm_item_id` (`ucm_item_id`),
  KEY `idx_ucm_type_id` (`ucm_type_id`),
  KEY `idx_ucm_language_id` (`ucm_language_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `new1_ucm_base`
--

LOCK TABLES `new1_ucm_base` WRITE;
/*!40000 ALTER TABLE `new1_ucm_base` DISABLE KEYS */;
INSERT INTO `new1_ucm_base` VALUES (1,5612,1,0),(2,5649,1,0);
/*!40000 ALTER TABLE `new1_ucm_base` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `new1_ucm_content`
--

DROP TABLE IF EXISTS `new1_ucm_content`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `new1_ucm_content` (
  `core_content_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `core_type_alias` varchar(255) NOT NULL DEFAULT '' COMMENT 'FK to the content types table',
  `core_title` varchar(255) NOT NULL,
  `core_alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `core_body` mediumtext NOT NULL,
  `core_state` tinyint(1) NOT NULL DEFAULT '0',
  `core_checked_out_time` varchar(255) NOT NULL DEFAULT '',
  `core_checked_out_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `core_access` int(10) unsigned NOT NULL DEFAULT '0',
  `core_params` text NOT NULL,
  `core_featured` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `core_metadata` varchar(2048) NOT NULL COMMENT 'JSON encoded metadata properties.',
  `core_created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `core_created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `core_created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_modified_user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Most recent user that modified',
  `core_modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_language` char(7) NOT NULL,
  `core_publish_up` datetime NOT NULL,
  `core_publish_down` datetime NOT NULL,
  `core_content_item_id` int(10) unsigned DEFAULT NULL COMMENT 'ID from the individual type table',
  `asset_id` int(10) unsigned DEFAULT NULL COMMENT 'FK to the #__assets table.',
  `core_images` text NOT NULL,
  `core_urls` text NOT NULL,
  `core_hits` int(10) unsigned NOT NULL DEFAULT '0',
  `core_version` int(10) unsigned NOT NULL DEFAULT '1',
  `core_ordering` int(11) NOT NULL DEFAULT '0',
  `core_metakey` text NOT NULL,
  `core_metadesc` text NOT NULL,
  `core_catid` int(10) unsigned NOT NULL DEFAULT '0',
  `core_xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `core_type_id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`core_content_id`),
  KEY `tag_idx` (`core_state`,`core_access`),
  KEY `idx_access` (`core_access`),
  KEY `idx_alias` (`core_alias`),
  KEY `idx_language` (`core_language`),
  KEY `idx_title` (`core_title`),
  KEY `idx_modified_time` (`core_modified_time`),
  KEY `idx_created_time` (`core_created_time`),
  KEY `idx_content_type` (`core_type_alias`),
  KEY `idx_core_modified_user_id` (`core_modified_user_id`),
  KEY `idx_core_checked_out_user_id` (`core_checked_out_user_id`),
  KEY `idx_core_created_user_id` (`core_created_user_id`),
  KEY `idx_core_type_id` (`core_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='Contains core content data in name spaced fields';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `new1_ucm_content`
--

LOCK TABLES `new1_ucm_content` WRITE;
/*!40000 ALTER TABLE `new1_ucm_content` DISABLE KEYS */;
INSERT INTO `new1_ucm_content` VALUES (1,'com_content.article','fuck for fun','fuck-for-fun','<p>Dramatically supply optimal e-tailers after viral niche markets. Dynamically reinvent value-added metrics via leading-edge solutions. Appropriately build process-centric action items whereas leveraged schemas. Continually leverage other\'s interoperable opportunities vis-a-vis client-centered methodologies. Collaboratively pursue high standards in architectures after efficient mindshare.<br /><br />Assertively plagiarize inexpensive innovation through e-business communities. Assertively scale transparent relationships after intermandated deliverables. Quickly grow premium web-readiness rather than end-to-end total linkage. Continually leverage other\'s customized models rather than high-quality intellectual capital. Monotonectally reconceptualize next-generation intellectual capital without world-class bandwidth.</p>',-2,'',0,1,'{\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',0,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',657,'','2014-09-21 18:47:08',657,'2014-09-25 14:35:27','*','2014-09-25 13:50:29','0000-00-00 00:00:00',5612,5908,'{\"image_intro\":\"images\\/picjumbo33-270x220.jpg\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}',33,6,0,'','',198,'',1),(2,'com_content.article','finance','finance','',-2,'',0,1,'{\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',0,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',657,'','2014-09-22 04:12:11',657,'2014-09-26 09:16:20','*','2014-09-25 10:04:48','0000-00-00 00:00:00',5649,5914,'{\"image_intro\":\"images\\/services3-270x220.jpg\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}',0,5,0,'','',203,'',1);
/*!40000 ALTER TABLE `new1_ucm_content` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `new1_ucm_history`
--

DROP TABLE IF EXISTS `new1_ucm_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `new1_ucm_history` (
  `version_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ucm_item_id` int(10) unsigned NOT NULL,
  `ucm_type_id` int(10) unsigned NOT NULL,
  `version_note` varchar(255) NOT NULL DEFAULT '' COMMENT 'Optional version name',
  `save_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `editor_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `character_count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Number of characters in this version.',
  `sha1_hash` varchar(50) NOT NULL DEFAULT '' COMMENT 'SHA1 hash of the version_data column.',
  `version_data` mediumtext NOT NULL COMMENT 'json-encoded string of version data',
  `keep_forever` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0=auto delete; 1=keep',
  PRIMARY KEY (`version_id`),
  KEY `idx_ucm_item_id` (`ucm_type_id`,`ucm_item_id`),
  KEY `idx_save_date` (`save_date`)
) ENGINE=InnoDB AUTO_INCREMENT=8418 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `new1_ucm_history`
--

LOCK TABLES `new1_ucm_history` WRITE;
/*!40000 ALTER TABLE `new1_ucm_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `new1_ucm_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `new1_update_sites`
--

DROP TABLE IF EXISTS `new1_update_sites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `new1_update_sites` (
  `update_site_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT '',
  `type` varchar(20) DEFAULT '',
  `location` text NOT NULL,
  `enabled` int(11) DEFAULT '0',
  `last_check_timestamp` bigint(20) DEFAULT '0',
  `extra_query` varchar(1000) DEFAULT '',
  PRIMARY KEY (`update_site_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='Update Sites';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `new1_update_sites`
--

LOCK TABLES `new1_update_sites` WRITE;
/*!40000 ALTER TABLE `new1_update_sites` DISABLE KEYS */;
INSERT INTO `new1_update_sites` VALUES (1,'Joomla Core','collection','http://update.joomla.org/core/list.xml',1,1412154025,''),(2,'Joomla Extension Directory','collection','http://update.joomla.org/jed/list.xml',1,1412154025,''),(3,'Accredited Joomla! Translations','collection','http://update.joomla.org/language/translationlist_3.xml',1,1412154025,''),(4,'FieldsAttach Update Site','extension','http://www.percha.com/update/fieldsattach-update_j3.xml',1,1412154025,''),(5,'MiniCCK Updates','extension','http://argens.ru/index.php?option=com_ars&view=update&task=stream&format=xml&id=2&dummy=extension.xml',1,1412154025,'');
/*!40000 ALTER TABLE `new1_update_sites` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `new1_update_sites_extensions`
--

DROP TABLE IF EXISTS `new1_update_sites_extensions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `new1_update_sites_extensions` (
  `update_site_id` int(11) NOT NULL DEFAULT '0',
  `extension_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`update_site_id`,`extension_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Links extensions to update sites';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `new1_update_sites_extensions`
--

LOCK TABLES `new1_update_sites_extensions` WRITE;
/*!40000 ALTER TABLE `new1_update_sites_extensions` DISABLE KEYS */;
INSERT INTO `new1_update_sites_extensions` VALUES (1,700),(2,700),(3,600),(3,704),(4,716),(5,717);
/*!40000 ALTER TABLE `new1_update_sites_extensions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `new1_updates`
--

DROP TABLE IF EXISTS `new1_updates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `new1_updates` (
  `update_id` int(11) NOT NULL AUTO_INCREMENT,
  `update_site_id` int(11) DEFAULT '0',
  `extension_id` int(11) DEFAULT '0',
  `name` varchar(100) DEFAULT '',
  `description` text NOT NULL,
  `element` varchar(100) DEFAULT '',
  `type` varchar(20) DEFAULT '',
  `folder` varchar(20) DEFAULT '',
  `client_id` tinyint(3) DEFAULT '0',
  `version` varchar(32) DEFAULT '',
  `data` text NOT NULL,
  `detailsurl` text NOT NULL,
  `infourl` text NOT NULL,
  `extra_query` varchar(1000) DEFAULT '',
  PRIMARY KEY (`update_id`)
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8 COMMENT='Available Updates';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `new1_updates`
--

LOCK TABLES `new1_updates` WRITE;
/*!40000 ALTER TABLE `new1_updates` DISABLE KEYS */;
INSERT INTO `new1_updates` VALUES (1,1,700,'Joomla','','joomla','file','',0,'3.3.4','','http://update.joomla.org/core/sts/extension_sts.xml','',''),(2,3,0,'Malay','','pkg_ms-MY','package','',0,'3.3.1.1','','http://update.joomla.org/language/details3/ms-MY_details.xml','',''),(3,3,0,'Romanian','','pkg_ro-RO','package','',0,'3.3.3.1','','http://update.joomla.org/language/details3/ro-RO_details.xml','',''),(4,3,0,'Flemish','','pkg_nl-BE','package','',0,'3.3.4.1','','http://update.joomla.org/language/details3/nl-BE_details.xml','',''),(5,3,0,'Chinese Traditional','','pkg_zh-TW','package','',0,'3.3.3.1','','http://update.joomla.org/language/details3/zh-TW_details.xml','',''),(6,3,0,'French','','pkg_fr-FR','package','',0,'3.3.5.1','','http://update.joomla.org/language/details3/fr-FR_details.xml','',''),(7,3,0,'Galician','','pkg_gl-ES','package','',0,'3.3.1.2','','http://update.joomla.org/language/details3/gl-ES_details.xml','',''),(8,3,0,'German','','pkg_de-DE','package','',0,'3.3.4.1','','http://update.joomla.org/language/details3/de-DE_details.xml','',''),(9,3,0,'Greek','','pkg_el-GR','package','',0,'3.3.3.1','','http://update.joomla.org/language/details3/el-GR_details.xml','',''),(10,3,0,'Japanese','','pkg_ja-JP','package','',0,'3.3.5.1','','http://update.joomla.org/language/details3/ja-JP_details.xml','',''),(11,3,0,'Hebrew','','pkg_he-IL','package','',0,'3.1.1.1','','http://update.joomla.org/language/details3/he-IL_details.xml','',''),(12,3,0,'EnglishAU','','pkg_en-AU','package','',0,'3.3.1.1','','http://update.joomla.org/language/details3/en-AU_details.xml','',''),(13,3,0,'EnglishUS','','pkg_en-US','package','',0,'3.3.1.1','','http://update.joomla.org/language/details3/en-US_details.xml','',''),(14,3,0,'Hungarian','','pkg_hu-HU','package','',0,'3.3.3.1','','http://update.joomla.org/language/details3/hu-HU_details.xml','',''),(15,3,0,'Afrikaans','','pkg_af-ZA','package','',0,'3.2.0.2','','http://update.joomla.org/language/details3/af-ZA_details.xml','',''),(16,3,0,'Arabic Unitag','','pkg_ar-AA','package','',0,'3.3.5.1','','http://update.joomla.org/language/details3/ar-AA_details.xml','',''),(17,3,0,'Belarusian','','pkg_be-BY','package','',0,'3.2.1.1','','http://update.joomla.org/language/details3/be-BY_details.xml','',''),(18,3,0,'Bulgarian','','pkg_bg-BG','package','',0,'3.3.0.1','','http://update.joomla.org/language/details3/bg-BG_details.xml','',''),(19,3,0,'Catalan','','pkg_ca-ES','package','',0,'3.3.4.1','','http://update.joomla.org/language/details3/ca-ES_details.xml','',''),(20,3,0,'Chinese Simplified','','pkg_zh-CN','package','',0,'3.3.1.1','','http://update.joomla.org/language/details3/zh-CN_details.xml','',''),(21,3,0,'Croatian','','pkg_hr-HR','package','',0,'3.3.5.1','','http://update.joomla.org/language/details3/hr-HR_details.xml','',''),(22,3,0,'Czech','','pkg_cs-CZ','package','',0,'3.3.4.1','','http://update.joomla.org/language/details3/cs-CZ_details.xml','',''),(23,3,0,'Danish','','pkg_da-DK','package','',0,'3.3.5.1','','http://update.joomla.org/language/details3/da-DK_details.xml','',''),(24,3,0,'Dutch','','pkg_nl-NL','package','',0,'3.3.4.1','','http://update.joomla.org/language/details3/nl-NL_details.xml','',''),(25,3,0,'Estonian','','pkg_et-EE','package','',0,'3.3.4.1','','http://update.joomla.org/language/details3/et-EE_details.xml','',''),(26,3,0,'Italian','','pkg_it-IT','package','',0,'3.3.5.1','','http://update.joomla.org/language/details3/it-IT_details.xml','',''),(27,3,0,'Korean','','pkg_ko-KR','package','',0,'3.2.3.1','','http://update.joomla.org/language/details3/ko-KR_details.xml','',''),(28,3,0,'Latvian','','pkg_lv-LV','package','',0,'3.3.4.1','','http://update.joomla.org/language/details3/lv-LV_details.xml','',''),(29,3,0,'Macedonian','','pkg_mk-MK','package','',0,'3.3.5.1','','http://update.joomla.org/language/details3/mk-MK_details.xml','',''),(30,3,0,'Norwegian Bokmal','','pkg_nb-NO','package','',0,'3.2.2.1','','http://update.joomla.org/language/details3/nb-NO_details.xml','',''),(31,3,0,'Persian','','pkg_fa-IR','package','',0,'3.3.4.1','','http://update.joomla.org/language/details3/fa-IR_details.xml','',''),(32,3,0,'Polish','','pkg_pl-PL','package','',0,'3.3.4.1','','http://update.joomla.org/language/details3/pl-PL_details.xml','',''),(33,3,0,'Portuguese','','pkg_pt-PT','package','',0,'3.3.3.1','','http://update.joomla.org/language/details3/pt-PT_details.xml','',''),(34,3,0,'Slovak','','pkg_sk-SK','package','',0,'3.3.5.1','','http://update.joomla.org/language/details3/sk-SK_details.xml','',''),(35,3,0,'Swedish','','pkg_sv-SE','package','',0,'3.3.3.3','','http://update.joomla.org/language/details3/sv-SE_details.xml','',''),(36,3,0,'Syriac','','pkg_sy-IQ','package','',0,'3.3.4.1','','http://update.joomla.org/language/details3/sy-IQ_details.xml','',''),(37,3,0,'Tamil','','pkg_ta-IN','package','',0,'3.3.5.1','','http://update.joomla.org/language/details3/ta-IN_details.xml','',''),(38,3,0,'Thai','','pkg_th-TH','package','',0,'3.3.4.1','','http://update.joomla.org/language/details3/th-TH_details.xml','',''),(39,3,0,'Turkish','','pkg_tr-TR','package','',0,'3.3.5.1','','http://update.joomla.org/language/details3/tr-TR_details.xml','',''),(40,3,0,'Ukrainian','','pkg_uk-UA','package','',0,'3.3.3.15','','http://update.joomla.org/language/details3/uk-UA_details.xml','',''),(41,3,0,'Uyghur','','pkg_ug-CN','package','',0,'3.3.0.1','','http://update.joomla.org/language/details3/ug-CN_details.xml','',''),(42,3,0,'Albanian','','pkg_sq-AL','package','',0,'3.1.1.1','','http://update.joomla.org/language/details3/sq-AL_details.xml','',''),(43,3,0,'Portuguese Brazil','','pkg_pt-BR','package','',0,'3.0.2.1','','http://update.joomla.org/language/details3/pt-BR_details.xml','',''),(44,3,0,'Serbian Latin','','pkg_sr-YU','package','',0,'3.3.4.1','','http://update.joomla.org/language/details3/sr-YU_details.xml','',''),(45,3,0,'Spanish','','pkg_es-ES','package','',0,'3.3.4.1','','http://update.joomla.org/language/details3/es-ES_details.xml','',''),(46,3,0,'Bosnian','','pkg_bs-BA','package','',0,'3.3.3.1','','http://update.joomla.org/language/details3/bs-BA_details.xml','',''),(47,3,0,'Serbian Cyrillic','','pkg_sr-RS','package','',0,'3.3.4.1','','http://update.joomla.org/language/details3/sr-RS_details.xml','',''),(48,3,0,'Vietnamese','','pkg_vi-VN','package','',0,'3.2.1.1','','http://update.joomla.org/language/details3/vi-VN_details.xml','',''),(49,3,0,'Bahasa Indonesia','','pkg_id-ID','package','',0,'3.3.0.2','','http://update.joomla.org/language/details3/id-ID_details.xml','',''),(50,3,0,'Finnish','','pkg_fi-FI','package','',0,'3.3.4.1','','http://update.joomla.org/language/details3/fi-FI_details.xml','',''),(51,3,0,'Swahili','','pkg_sw-KE','package','',0,'3.3.5.1','','http://update.joomla.org/language/details3/sw-KE_details.xml','',''),(52,3,0,'Montenegrin','','pkg_srp-ME','package','',0,'3.3.1.1','','http://update.joomla.org/language/details3/srp-ME_details.xml','',''),(53,3,0,'EnglishCA','','pkg_en-CA','package','',0,'3.3.3.1','','http://update.joomla.org/language/details3/en-CA_details.xml','',''),(54,3,0,'FrenchCA','','pkg_fr-CA','package','',0,'3.3.3.1','','http://update.joomla.org/language/details3/fr-CA_details.xml','',''),(55,3,0,'Welsh','','pkg_cy-GB','package','',0,'3.3.0.1','','http://update.joomla.org/language/details3/cy-GB_details.xml','',''),(56,3,0,'Sinhala','','pkg_si-LK','package','',0,'3.3.1.1','','http://update.joomla.org/language/details3/si-LK_details.xml','',''),(57,4,0,'fieldsattach','Fieldsattach Component','com_fieldsattach','component','',1,'3.4.8.8','','http://www.percha.com/update/fieldsattach-update_j3.xml','http://fieldsattach.com/index.php/download/file/90-fieldsattach-for-joomla-3','');
/*!40000 ALTER TABLE `new1_updates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `new1_user_keys`
--

DROP TABLE IF EXISTS `new1_user_keys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `new1_user_keys` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `series` varchar(255) NOT NULL,
  `invalid` tinyint(4) NOT NULL,
  `time` varchar(200) NOT NULL,
  `uastring` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `series` (`series`),
  UNIQUE KEY `series_2` (`series`),
  UNIQUE KEY `series_3` (`series`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `new1_user_keys`
--

LOCK TABLES `new1_user_keys` WRITE;
/*!40000 ALTER TABLE `new1_user_keys` DISABLE KEYS */;
/*!40000 ALTER TABLE `new1_user_keys` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `new1_user_notes`
--

DROP TABLE IF EXISTS `new1_user_notes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `new1_user_notes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `subject` varchar(100) NOT NULL DEFAULT '',
  `body` text NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_user_id` int(10) unsigned NOT NULL,
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `review_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `idx_user_id` (`user_id`),
  KEY `idx_category_id` (`catid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `new1_user_notes`
--

LOCK TABLES `new1_user_notes` WRITE;
/*!40000 ALTER TABLE `new1_user_notes` DISABLE KEYS */;
/*!40000 ALTER TABLE `new1_user_notes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `new1_user_profiles`
--

DROP TABLE IF EXISTS `new1_user_profiles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `new1_user_profiles` (
  `user_id` int(11) NOT NULL,
  `profile_key` varchar(100) NOT NULL,
  `profile_value` varchar(255) NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  UNIQUE KEY `idx_user_id_profile_key` (`user_id`,`profile_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Simple user profile storage table';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `new1_user_profiles`
--

LOCK TABLES `new1_user_profiles` WRITE;
/*!40000 ALTER TABLE `new1_user_profiles` DISABLE KEYS */;
INSERT INTO `new1_user_profiles` VALUES (657,'profile.aboutme','\"\"',10),(657,'profile.address1','\"Wiston 23rd street # 2\"',1),(657,'profile.address2','\"\"',2),(657,'profile.city','\"London\"',3),(657,'profile.country','\"\"',5),(657,'profile.dob','\"\"',11),(657,'profile.favoritebook','\"\"',9),(657,'profile.phone','\"+444 8888 444 | +888 8888 888\"',7),(657,'profile.postal_code','\"\"',6),(657,'profile.region','\"\"',4),(657,'profile.website','\"http:\\/\\/www.classiads.com\"',8);
/*!40000 ALTER TABLE `new1_user_profiles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `new1_user_usergroup_map`
--

DROP TABLE IF EXISTS `new1_user_usergroup_map`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `new1_user_usergroup_map` (
  `user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Foreign Key to #__users.id',
  `group_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Foreign Key to #__usergroups.id',
  PRIMARY KEY (`user_id`,`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `new1_user_usergroup_map`
--

LOCK TABLES `new1_user_usergroup_map` WRITE;
/*!40000 ALTER TABLE `new1_user_usergroup_map` DISABLE KEYS */;
INSERT INTO `new1_user_usergroup_map` VALUES (657,8);
/*!40000 ALTER TABLE `new1_user_usergroup_map` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `new1_usergroups`
--

DROP TABLE IF EXISTS `new1_usergroups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `new1_usergroups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Adjacency List Reference Id',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `title` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_usergroup_parent_title_lookup` (`parent_id`,`title`),
  KEY `idx_usergroup_title_lookup` (`title`),
  KEY `idx_usergroup_adjacency_lookup` (`parent_id`),
  KEY `idx_usergroup_nested_set_lookup` (`lft`,`rgt`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `new1_usergroups`
--

LOCK TABLES `new1_usergroups` WRITE;
/*!40000 ALTER TABLE `new1_usergroups` DISABLE KEYS */;
INSERT INTO `new1_usergroups` VALUES (1,0,1,18,'Public'),(2,1,8,15,'Registered'),(3,2,9,14,'Author'),(4,3,10,13,'Editor'),(5,4,11,12,'Publisher'),(6,1,4,7,'Manager'),(7,6,5,6,'Administrator'),(8,1,16,17,'Super Users'),(9,1,2,3,'Guest');
/*!40000 ALTER TABLE `new1_usergroups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `new1_users`
--

DROP TABLE IF EXISTS `new1_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `new1_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `username` varchar(150) NOT NULL DEFAULT '',
  `email` varchar(100) NOT NULL DEFAULT '',
  `password` varchar(100) NOT NULL DEFAULT '',
  `block` tinyint(4) NOT NULL DEFAULT '0',
  `sendEmail` tinyint(4) DEFAULT '0',
  `registerDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `lastvisitDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `activation` varchar(100) NOT NULL DEFAULT '',
  `params` text NOT NULL,
  `lastResetTime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Date of last password reset',
  `resetCount` int(11) NOT NULL DEFAULT '0' COMMENT 'Count of password resets since lastResetTime',
  `otpKey` varchar(1000) NOT NULL DEFAULT '' COMMENT 'Two factor authentication encrypted keys',
  `otep` varchar(1000) NOT NULL DEFAULT '' COMMENT 'One time emergency passwords',
  `requireReset` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'Require user to reset password on next login',
  PRIMARY KEY (`id`),
  KEY `idx_name` (`name`),
  KEY `idx_block` (`block`),
  KEY `username` (`username`),
  KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=658 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `new1_users`
--

LOCK TABLES `new1_users` WRITE;
/*!40000 ALTER TABLE `new1_users` DISABLE KEYS */;
INSERT INTO `new1_users` VALUES (657,'Super User','admin','leatprof@gmail.com','$2y$10$d5gcHk/YWexcQFdmDQ4Pb.obATNnVkz.6wm9wYNPPzHEc3EWGr4nC',0,1,'2014-09-20 17:59:05','2014-10-01 18:29:23','0','{\"admin_style\":\"\",\"admin_language\":\"\",\"language\":\"\",\"editor\":\"\",\"helpsite\":\"\",\"timezone\":\"\"}','0000-00-00 00:00:00',0,'','',0);
/*!40000 ALTER TABLE `new1_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `new1_viewlevels`
--

DROP TABLE IF EXISTS `new1_viewlevels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `new1_viewlevels` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `title` varchar(100) NOT NULL DEFAULT '',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `rules` varchar(5120) NOT NULL COMMENT 'JSON encoded access control.',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_assetgroup_title_lookup` (`title`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `new1_viewlevels`
--

LOCK TABLES `new1_viewlevels` WRITE;
/*!40000 ALTER TABLE `new1_viewlevels` DISABLE KEYS */;
INSERT INTO `new1_viewlevels` VALUES (1,'Public',0,'[1]'),(2,'Registered',1,'[6,2,8]'),(3,'Special',2,'[6,3,8]'),(5,'Guest',0,'[9]'),(6,'Super Users',0,'[8]');
/*!40000 ALTER TABLE `new1_viewlevels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `new1_weblinks`
--

DROP TABLE IF EXISTS `new1_weblinks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `new1_weblinks` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `catid` int(11) NOT NULL DEFAULT '0',
  `title` varchar(250) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `url` varchar(250) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `hits` int(11) NOT NULL DEFAULT '0',
  `state` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `access` int(11) NOT NULL DEFAULT '1',
  `params` text NOT NULL,
  `language` char(7) NOT NULL DEFAULT '',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `metadata` text NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Set if link is featured.',
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `images` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`state`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_featured_catid` (`featured`,`catid`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `new1_weblinks`
--

LOCK TABLES `new1_weblinks` WRITE;
/*!40000 ALTER TABLE `new1_weblinks` DISABLE KEYS */;
INSERT INTO `new1_weblinks` VALUES (1,6,'Website','test-links','http://craigscoin.info/','',19,1,0,'0000-00-00 00:00:00',1,1,'{\"target\":\"1\",\"width\":\"\",\"height\":\"\",\"count_clicks\":\"1\"}','*','2014-09-25 09:05:32',657,'','2014-09-29 07:36:54',657,'','','{\"robots\":\"\",\"rights\":\"\"}',0,'','0000-00-00 00:00:00','0000-00-00 00:00:00',5,'{\"image_first\":\"\",\"float_first\":\"\",\"image_first_alt\":\"\",\"image_first_caption\":\"\",\"image_second\":\"\",\"float_second\":\"\",\"image_second_alt\":\"\",\"image_second_caption\":\"\"}'),(2,6,'Bitcointalk official thread','bitcointalk-official-thread','https://bitcointalk.org/index.php?topic=780334','',0,1,0,'0000-00-00 00:00:00',2,1,'{\"target\":\"1\",\"width\":\"\",\"height\":\"\",\"count_clicks\":\"\"}','*','2014-09-29 07:37:23',657,'','2014-09-29 07:38:58',657,'','','{\"robots\":\"\",\"rights\":\"\"}',0,'','0000-00-00 00:00:00','0000-00-00 00:00:00',2,'{\"image_first\":\"\",\"float_first\":\"\",\"image_first_alt\":\"\",\"image_first_caption\":\"\",\"image_second\":\"\",\"float_second\":\"\",\"image_second_alt\":\"\",\"image_second_caption\":\"\"}'),(3,6,'Twitter','twitter','https://twitter.com/CraigsCoin','',0,1,0,'0000-00-00 00:00:00',3,1,'{\"target\":\"\",\"width\":\"\",\"height\":\"\",\"count_clicks\":\"\"}','*','2014-09-29 07:37:39',657,'','0000-00-00 00:00:00',0,'','','{\"robots\":\"\",\"rights\":\"\"}',0,'','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'{\"image_first\":\"\",\"float_first\":\"\",\"image_first_alt\":\"\",\"image_first_caption\":\"\",\"image_second\":\"\",\"float_second\":\"\",\"image_second_alt\":\"\",\"image_second_caption\":\"\"}'),(4,6,'Windows wallet','windows-wallet','https://mega.co.nz/','',0,1,0,'0000-00-00 00:00:00',4,1,'{\"target\":\"\",\"width\":\"\",\"height\":\"\",\"count_clicks\":\"\"}','*','2014-09-29 07:37:59',657,'','0000-00-00 00:00:00',0,'','','{\"robots\":\"\",\"rights\":\"\"}',0,'','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'{\"image_first\":\"\",\"float_first\":\"\",\"image_first_alt\":\"\",\"image_first_caption\":\"\",\"image_second\":\"\",\"float_second\":\"\",\"image_second_alt\":\"\",\"image_second_caption\":\"\"}'),(5,6,'Source Code','source-code','https://github.com/CraigsCoin/CraigsCoin','',0,1,0,'0000-00-00 00:00:00',5,1,'{\"target\":\"\",\"width\":\"\",\"height\":\"\",\"count_clicks\":\"\"}','*','2014-09-29 07:38:16',657,'','0000-00-00 00:00:00',0,'','','{\"robots\":\"\",\"rights\":\"\"}',0,'','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'{\"image_first\":\"\",\"float_first\":\"\",\"image_first_alt\":\"\",\"image_first_caption\":\"\",\"image_second\":\"\",\"float_second\":\"\",\"image_second_alt\":\"\",\"image_second_caption\":\"\"}');
/*!40000 ALTER TABLE `new1_weblinks` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-10-04  9:11:48