-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 23, 2019 at 12:09 AM
-- Server version: 5.7.14
-- PHP Version: 7.1.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wordpress`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
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
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2019-02-20 10:47:07', '2019-02-20 10:47:07', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href="https://gravatar.com">Gravatar</a>.', 0, 'post-trashed', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/MyClub', 'yes'),
(2, 'home', 'http://localhost/MyClub', 'yes'),
(3, 'blogname', 'Liverpool F.C.', 'yes'),
(4, 'blogdescription', '', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'hadeel.mostafa.cs@gmail.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '0', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:94:{s:11:"^wp-json/?$";s:22:"index.php?rest_route=/";s:14:"^wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:21:"^index.php/wp-json/?$";s:22:"index.php?rest_route=/";s:24:"^index.php/wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:47:"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:42:"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:23:"category/(.+?)/embed/?$";s:46:"index.php?category_name=$matches[1]&embed=true";s:35:"category/(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:17:"category/(.+?)/?$";s:35:"index.php?category_name=$matches[1]";s:44:"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:39:"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:20:"tag/([^/]+)/embed/?$";s:36:"index.php?tag=$matches[1]&embed=true";s:32:"tag/([^/]+)/page/?([0-9]{1,})/?$";s:43:"index.php?tag=$matches[1]&paged=$matches[2]";s:14:"tag/([^/]+)/?$";s:25:"index.php?tag=$matches[1]";s:45:"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:40:"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:21:"type/([^/]+)/embed/?$";s:44:"index.php?post_format=$matches[1]&embed=true";s:33:"type/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?post_format=$matches[1]&paged=$matches[2]";s:15:"type/([^/]+)/?$";s:33:"index.php?post_format=$matches[1]";s:45:"team/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?team=$matches[1]&feed=$matches[2]";s:40:"team/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?team=$matches[1]&feed=$matches[2]";s:21:"team/([^/]+)/embed/?$";s:37:"index.php?team=$matches[1]&embed=true";s:33:"team/([^/]+)/page/?([0-9]{1,})/?$";s:44:"index.php?team=$matches[1]&paged=$matches[2]";s:15:"team/([^/]+)/?$";s:26:"index.php?team=$matches[1]";s:48:".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$";s:18:"index.php?feed=old";s:20:".*wp-app\\.php(/.*)?$";s:19:"index.php?error=403";s:18:".*wp-register.php$";s:23:"index.php?register=true";s:32:"feed/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:27:"(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:8:"embed/?$";s:21:"index.php?&embed=true";s:20:"page/?([0-9]{1,})/?$";s:28:"index.php?&paged=$matches[1]";s:41:"comments/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:36:"comments/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:17:"comments/embed/?$";s:21:"index.php?&embed=true";s:44:"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:39:"search/(.+)/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:20:"search/(.+)/embed/?$";s:34:"index.php?s=$matches[1]&embed=true";s:32:"search/(.+)/page/?([0-9]{1,})/?$";s:41:"index.php?s=$matches[1]&paged=$matches[2]";s:14:"search/(.+)/?$";s:23:"index.php?s=$matches[1]";s:47:"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:42:"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:23:"author/([^/]+)/embed/?$";s:44:"index.php?author_name=$matches[1]&embed=true";s:35:"author/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?author_name=$matches[1]&paged=$matches[2]";s:17:"author/([^/]+)/?$";s:33:"index.php?author_name=$matches[1]";s:69:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:45:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$";s:74:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]";s:39:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$";s:63:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]";s:56:"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:51:"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:32:"([0-9]{4})/([0-9]{1,2})/embed/?$";s:58:"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true";s:44:"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]";s:26:"([0-9]{4})/([0-9]{1,2})/?$";s:47:"index.php?year=$matches[1]&monthnum=$matches[2]";s:43:"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:38:"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:19:"([0-9]{4})/embed/?$";s:37:"index.php?year=$matches[1]&embed=true";s:31:"([0-9]{4})/page/?([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&paged=$matches[2]";s:13:"([0-9]{4})/?$";s:26:"index.php?year=$matches[1]";s:58:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:68:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:88:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:83:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:83:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:64:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:53:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$";s:91:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$";s:85:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1";s:77:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]";s:72:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]";s:65:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$";s:98:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]";s:72:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$";s:98:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]";s:61:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]";s:47:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:57:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:77:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:72:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:72:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:53:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]";s:51:"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]";s:38:"([0-9]{4})/comment-page-([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&cpage=$matches[2]";s:27:".?.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:".?.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:".?.+?/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"(.?.+?)/embed/?$";s:41:"index.php?pagename=$matches[1]&embed=true";s:20:"(.?.+?)/trackback/?$";s:35:"index.php?pagename=$matches[1]&tb=1";s:40:"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:35:"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:28:"(.?.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&paged=$matches[2]";s:35:"(.?.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&cpage=$matches[2]";s:24:"(.?.+?)(?:/([0-9]+))?/?$";s:47:"index.php?pagename=$matches[1]&page=$matches[2]";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:0:{}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', 'a:4:{i:0;s:66:"C:\\wamp64\\www\\MyClub/wp-content/themes/twentyseventeen/archive.php";i:2;s:63:"C:\\wamp64\\www\\MyClub/wp-content/themes/twentyseventeen/page.php";i:3;s:64:"C:\\wamp64\\www\\MyClub/wp-content/themes/twentyseventeen/style.css";i:4;s:0:"";}', 'no'),
(40, 'template', 'twentyseventeen', 'yes'),
(41, 'stylesheet', 'twentyseventeen', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '43764', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '0', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'posts', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', 'none', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:"title";s:0:"";s:5:"count";i:0;s:12:"hierarchical";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(79, 'widget_text', 'a:6:{i:1;a:0:{}s:12:"_multiwidget";i:1;i:2;a:4:{s:5:"title";s:7:"Find Us";s:4:"text";s:168:"<strong>Address</strong>\n123 Main Street\nNew York, NY 10001\n\n<strong>Hours</strong>\nMonday&mdash;Friday: 9:00AM&ndash;5:00PM\nSaturday &amp; Sunday: 11:00AM&ndash;3:00PM";s:6:"filter";b:1;s:6:"visual";b:1;}i:3;a:4:{s:5:"title";s:15:"About This Site";s:4:"text";s:85:"This may be a good place to introduce yourself and your site or include some credits.";s:6:"filter";b:1;s:6:"visual";b:1;}i:4;a:4:{s:5:"title";s:0:"";s:4:"text";s:0:"";s:6:"filter";b:1;s:6:"visual";b:1;}i:5;a:4:{s:5:"title";s:0:"";s:4:"text";s:0:"";s:6:"filter";b:1;s:6:"visual";b:1;}}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', '', 'yes'),
(84, 'page_on_front', '0', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '34', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'wp_page_for_privacy_policy', '3', 'yes'),
(92, 'show_comments_cookies_opt_in', '0', 'yes'),
(93, 'initial_db_version', '43764', 'yes'),
(94, 'wp_user_roles', 'a:5:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:61:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}}', 'yes'),
(95, 'fresh_site', '0', 'yes'),
(96, 'widget_search', 'a:4:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;i:3;a:1:{s:5:"title";s:6:"Search";}i:4;a:1:{s:5:"title";s:6:"Search";}}', 'yes'),
(97, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(98, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(99, 'widget_archives', 'a:2:{i:2;a:3:{s:5:"title";s:0:"";s:5:"count";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(100, 'widget_meta', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(101, 'sidebars_widgets', 'a:5:{s:19:"wp_inactive_widgets";a:1:{i:0;s:8:"search-4";}s:9:"sidebar-1";a:0:{}s:13:"array_version";i:3;s:9:"sidebar-2";a:1:{i:0;s:6:"text-4";}s:9:"sidebar-3";a:1:{i:0;s:6:"text-5";}}', 'yes'),
(102, 'widget_pages', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(103, 'widget_calendar', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(104, 'widget_media_audio', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(105, 'widget_media_image', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(106, 'widget_media_gallery', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(107, 'widget_media_video', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(108, 'nonce_key', 'j30T%G/{y43h1Iupq>FfzQ&?<<iv}jX?4?[HlZv?ji4rpMXHWFQ=sj~Pkm*EnKxI', 'no'),
(109, 'nonce_salt', 'wGZXBROEhq>=;wo2?R#ndvOqQtS;)I$E+C/Su%?F5{ctO:ILAXF%(e)i``_8&]oD', 'no'),
(110, 'widget_tag_cloud', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(111, 'widget_nav_menu', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(112, 'widget_custom_html', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(113, 'cron', 'a:6:{i:1550882829;a:1:{s:34:"wp_privacy_delete_old_export_files";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:6:"hourly";s:4:"args";a:0:{}s:8:"interval";i:3600;}}}i:1550918829;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1550922130;a:1:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1550922131;a:1:{s:25:"delete_expired_transients";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1550922274;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}s:7:"version";i:2;}', 'yes'),
(114, 'theme_mods_twentynineteen', 'a:2:{s:18:"custom_css_post_id";i:-1;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1550663810;s:4:"data";a:4:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:3:{i:0;s:6:"text-2";i:1;s:8:"search-3";i:2;s:6:"text-3";}s:9:"sidebar-2";a:1:{i:0;s:6:"text-4";}s:9:"sidebar-3";a:2:{i:0;s:6:"text-5";i:1;s:8:"search-4";}}}}', 'yes'),
(127, '_site_transient_timeout_browser_352e84f01e246b1e722c1621ec324313', '1551264445', 'no'),
(116, '_site_transient_update_core', 'O:8:"stdClass":4:{s:7:"updates";a:2:{i:0;O:8:"stdClass":10:{s:8:"response";s:7:"upgrade";s:8:"download";s:57:"https://downloads.wordpress.org/release/wordpress-5.1.zip";s:6:"locale";s:5:"en_US";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:57:"https://downloads.wordpress.org/release/wordpress-5.1.zip";s:10:"no_content";s:68:"https://downloads.wordpress.org/release/wordpress-5.1-no-content.zip";s:11:"new_bundled";s:69:"https://downloads.wordpress.org/release/wordpress-5.1-new-bundled.zip";s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:3:"5.1";s:7:"version";s:3:"5.1";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"5.0";s:15:"partial_version";s:0:"";}i:1;O:8:"stdClass":11:{s:8:"response";s:10:"autoupdate";s:8:"download";s:57:"https://downloads.wordpress.org/release/wordpress-5.1.zip";s:6:"locale";s:5:"en_US";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:57:"https://downloads.wordpress.org/release/wordpress-5.1.zip";s:10:"no_content";s:68:"https://downloads.wordpress.org/release/wordpress-5.1-no-content.zip";s:11:"new_bundled";s:69:"https://downloads.wordpress.org/release/wordpress-5.1-new-bundled.zip";s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:3:"5.1";s:7:"version";s:3:"5.1";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"5.0";s:15:"partial_version";s:0:"";s:9:"new_files";s:1:"1";}}s:12:"last_checked";i:1550875648;s:15:"version_checked";s:5:"5.0.3";s:12:"translations";a:0:{}}', 'no'),
(464, '_site_transient_timeout_theme_roots', '1550877677', 'no'),
(465, '_site_transient_theme_roots', 'a:1:{s:15:"twentyseventeen";s:7:"/themes";}', 'no'),
(466, '_site_transient_update_plugins', 'O:8:"stdClass":5:{s:12:"last_checked";i:1550875652;s:7:"checked";a:2:{s:19:"akismet/akismet.php";s:3:"4.1";s:9:"hello.php";s:5:"1.7.1";}s:8:"response";a:1:{s:19:"akismet/akismet.php";O:8:"stdClass":12:{s:2:"id";s:21:"w.org/plugins/akismet";s:4:"slug";s:7:"akismet";s:6:"plugin";s:19:"akismet/akismet.php";s:11:"new_version";s:5:"4.1.1";s:3:"url";s:38:"https://wordpress.org/plugins/akismet/";s:7:"package";s:56:"https://downloads.wordpress.org/plugin/akismet.4.1.1.zip";s:5:"icons";a:2:{s:2:"2x";s:59:"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272";s:2:"1x";s:59:"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272";}s:7:"banners";a:1:{s:2:"1x";s:61:"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904";}s:11:"banners_rtl";a:0:{}s:6:"tested";s:3:"5.1";s:12:"requires_php";b:0;s:13:"compatibility";O:8:"stdClass":0:{}}}s:12:"translations";a:0:{}s:9:"no_update";a:1:{s:9:"hello.php";O:8:"stdClass":9:{s:2:"id";s:25:"w.org/plugins/hello-dolly";s:4:"slug";s:11:"hello-dolly";s:6:"plugin";s:9:"hello.php";s:11:"new_version";s:3:"1.6";s:3:"url";s:42:"https://wordpress.org/plugins/hello-dolly/";s:7:"package";s:58:"https://downloads.wordpress.org/plugin/hello-dolly.1.6.zip";s:5:"icons";a:2:{s:2:"2x";s:63:"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=969907";s:2:"1x";s:63:"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=969907";}s:7:"banners";a:1:{s:2:"1x";s:65:"https://ps.w.org/hello-dolly/assets/banner-772x250.png?rev=478342";}s:11:"banners_rtl";a:0:{}}}}', 'no'),
(123, 'auth_key', 'E`:;kf_X:)K&$y3~FY_N2WQz@&BTcK4#%&3jL@^uAf;v^i=)`:bL`Y{)[HkIDI8n', 'no'),
(124, 'auth_salt', 'XCGF/_37-oeHWeO~~J1WF09GBV3}U}/s5rp-G1*SGQZf,t!TER#zUC>9kO<PQ^.4', 'no'),
(125, 'logged_in_key', ':)WAxi#1ylb;NB<,#hw;v{y`J5()*mW0f*_ONQU6ex:X@<{yu52-br r?4@cXcO<', 'no'),
(126, 'logged_in_salt', '0r5LtAyiX[`dmRZAp~HQb%jjC6G[~-(BjxB!p+*E%dV.@N{_;9G%ayHgWe1jB$J7', 'no'),
(467, '_site_transient_update_themes', 'O:8:"stdClass":4:{s:12:"last_checked";i:1550875878;s:7:"checked";a:1:{s:15:"twentyseventeen";s:3:"2.0";}s:8:"response";a:1:{s:15:"twentyseventeen";a:4:{s:5:"theme";s:15:"twentyseventeen";s:11:"new_version";s:3:"2.1";s:3:"url";s:45:"https://wordpress.org/themes/twentyseventeen/";s:7:"package";s:61:"https://downloads.wordpress.org/theme/twentyseventeen.2.1.zip";}}s:12:"translations";a:0:{}}', 'no'),
(128, '_site_transient_browser_352e84f01e246b1e722c1621ec324313', 'a:10:{s:4:"name";s:6:"Chrome";s:7:"version";s:13:"72.0.3626.109";s:8:"platform";s:7:"Windows";s:10:"update_url";s:29:"https://www.google.com/chrome";s:7:"img_src";s:43:"http://s.w.org/images/browsers/chrome.png?1";s:11:"img_src_ssl";s:44:"https://s.w.org/images/browsers/chrome.png?1";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;s:6:"mobile";b:0;}', 'no'),
(129, 'can_compress_scripts', '1', 'no'),
(469, '_transient_is_multi_author', '0', 'yes'),
(342, 'player_children', 'a:1:{i:14;a:1:{i:0;i:15;}}', 'yes'),
(397, 'team_children', 'a:0:{}', 'yes'),
(147, 'theme_mods_twentyseventeen', 'a:10:{s:18:"custom_css_post_id";i:-1;s:18:"nav_menu_locations";a:2:{s:3:"top";i:5;s:6:"social";i:3;}s:7:"panel_1";i:13;s:7:"panel_2";i:10;s:7:"panel_3";i:12;s:7:"panel_4";i:11;s:16:"header_textcolor";s:0:"";s:11:"custom_logo";i:32;s:12:"header_image";s:150:"http://localhost/MyClub/wp-content/uploads/2019/02/cropped-mo-salah-statue-sculptor-hits-back-after-online-mockery-136430801306802601-181105201120.jpg";s:17:"header_image_data";O:8:"stdClass":5:{s:13:"attachment_id";i:47;s:3:"url";s:150:"http://localhost/MyClub/wp-content/uploads/2019/02/cropped-mo-salah-statue-sculptor-hits-back-after-online-mockery-136430801306802601-181105201120.jpg";s:13:"thumbnail_url";s:150:"http://localhost/MyClub/wp-content/uploads/2019/02/cropped-mo-salah-statue-sculptor-hits-back-after-online-mockery-136430801306802601-181105201120.jpg";s:6:"height";i:1199;s:5:"width";i:2000;}}', 'yes'),
(152, 'nav_menu_options', 'a:1:{s:8:"auto_add";a:0:{}}', 'yes'),
(149, 'current_theme', 'Twenty Seventeen', 'yes'),
(150, 'theme_switched', '', 'yes'),
(151, 'theme_switched_via_customizer', '', 'yes'),
(153, 'customize_stashed_theme_mods', 'a:0:{}', 'no'),
(345, 'category_children', 'a:0:{}', 'yes'),
(208, 'recently_activated', 'a:0:{}', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(3, 5, '_edit_lock', '1550662939:1'),
(4, 6, '_wp_attached_file', '2019/02/espresso.jpg'),
(5, 6, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:2000;s:6:"height";i:1200;s:4:"file";s:20:"2019/02/espresso.jpg";s:5:"sizes";a:5:{s:9:"thumbnail";a:4:{s:4:"file";s:20:"espresso-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:20:"espresso-300x180.jpg";s:5:"width";i:300;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:20:"espresso-768x461.jpg";s:5:"width";i:768;s:6:"height";i:461;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:21:"espresso-1024x614.jpg";s:5:"width";i:1024;s:6:"height";i:614;s:9:"mime-type";s:10:"image/jpeg";}s:32:"twentyseventeen-thumbnail-avatar";a:4:{s:4:"file";s:20:"espresso-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(6, 6, '_starter_content_theme', 'twentyseventeen'),
(354, 190, '_edit_last', '1'),
(8, 7, '_wp_attached_file', '2019/02/sandwich.jpg'),
(9, 7, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:2000;s:6:"height";i:1200;s:4:"file";s:20:"2019/02/sandwich.jpg";s:5:"sizes";a:5:{s:9:"thumbnail";a:4:{s:4:"file";s:20:"sandwich-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:20:"sandwich-300x180.jpg";s:5:"width";i:300;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:20:"sandwich-768x461.jpg";s:5:"width";i:768;s:6:"height";i:461;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:21:"sandwich-1024x614.jpg";s:5:"width";i:1024;s:6:"height";i:614;s:9:"mime-type";s:10:"image/jpeg";}s:32:"twentyseventeen-thumbnail-avatar";a:4:{s:4:"file";s:20:"sandwich-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(10, 7, '_starter_content_theme', 'twentyseventeen'),
(352, 116, '_wp_trash_meta_time', '1550708786'),
(12, 8, '_wp_attached_file', '2019/02/coffee.jpg'),
(13, 8, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:2000;s:6:"height";i:1200;s:4:"file";s:18:"2019/02/coffee.jpg";s:5:"sizes";a:5:{s:9:"thumbnail";a:4:{s:4:"file";s:18:"coffee-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:18:"coffee-300x180.jpg";s:5:"width";i:300;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:18:"coffee-768x461.jpg";s:5:"width";i:768;s:6:"height";i:461;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:19:"coffee-1024x614.jpg";s:5:"width";i:1024;s:6:"height";i:614;s:9:"mime-type";s:10:"image/jpeg";}s:32:"twentyseventeen-thumbnail-avatar";a:4:{s:4:"file";s:18:"coffee-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(14, 8, '_starter_content_theme', 'twentyseventeen'),
(353, 116, '_wp_desired_post_slug', 'team'),
(351, 116, '_wp_trash_meta_status', 'publish'),
(17, 9, '_customize_changeset_uuid', '84580f35-713a-499e-874b-13c5383d144d'),
(18, 10, '_thumbnail_id', '7'),
(350, 188, '_edit_lock', '1550708715:1'),
(20, 10, '_customize_changeset_uuid', '84580f35-713a-499e-874b-13c5383d144d'),
(21, 11, '_thumbnail_id', '6'),
(349, 186, '_wp_trash_meta_time', '1550708605'),
(23, 11, '_customize_changeset_uuid', '84580f35-713a-499e-874b-13c5383d144d'),
(24, 12, '_thumbnail_id', '8'),
(348, 186, '_wp_trash_meta_status', 'publish'),
(26, 12, '_customize_changeset_uuid', '84580f35-713a-499e-874b-13c5383d144d'),
(27, 13, '_thumbnail_id', '6'),
(347, 187, '_menu_item_url', ''),
(29, 13, '_customize_changeset_uuid', '84580f35-713a-499e-874b-13c5383d144d'),
(346, 187, '_menu_item_xfn', ''),
(345, 187, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(344, 187, '_menu_item_target', ''),
(343, 187, '_menu_item_object', 'page'),
(342, 187, '_menu_item_object_id', '133'),
(341, 187, '_menu_item_menu_item_parent', '0'),
(340, 187, '_menu_item_type', 'post_type'),
(339, 184, '_wp_trash_meta_time', '1550708551'),
(338, 184, '_wp_trash_meta_status', 'publish'),
(337, 185, '_menu_item_url', ''),
(336, 185, '_menu_item_xfn', ''),
(335, 185, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(334, 185, '_menu_item_target', ''),
(333, 185, '_menu_item_object', 'page'),
(332, 185, '_menu_item_object_id', '133'),
(331, 185, '_menu_item_menu_item_parent', '0'),
(330, 185, '_menu_item_type', 'post_type'),
(62, 24, '_menu_item_type', 'custom'),
(63, 24, '_menu_item_menu_item_parent', '0'),
(64, 24, '_menu_item_object_id', '24'),
(65, 24, '_menu_item_object', 'custom'),
(66, 24, '_menu_item_target', ''),
(67, 24, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(68, 24, '_menu_item_xfn', ''),
(69, 24, '_menu_item_url', 'https://www.yelp.com'),
(70, 25, '_menu_item_type', 'custom'),
(71, 25, '_menu_item_menu_item_parent', '0'),
(72, 25, '_menu_item_object_id', '25'),
(73, 25, '_menu_item_object', 'custom'),
(74, 25, '_menu_item_target', ''),
(75, 25, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(76, 25, '_menu_item_xfn', ''),
(77, 25, '_menu_item_url', 'https://www.facebook.com/wordpress'),
(78, 26, '_menu_item_type', 'custom'),
(79, 26, '_menu_item_menu_item_parent', '0'),
(80, 26, '_menu_item_object_id', '26'),
(81, 26, '_menu_item_object', 'custom'),
(82, 26, '_menu_item_target', ''),
(83, 26, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(84, 26, '_menu_item_xfn', ''),
(85, 26, '_menu_item_url', 'https://twitter.com/wordpress'),
(86, 27, '_menu_item_type', 'custom'),
(87, 27, '_menu_item_menu_item_parent', '0'),
(88, 27, '_menu_item_object_id', '27'),
(89, 27, '_menu_item_object', 'custom'),
(90, 27, '_menu_item_target', ''),
(91, 27, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(92, 27, '_menu_item_xfn', ''),
(93, 27, '_menu_item_url', 'https://www.instagram.com/explore/tags/wordcamp/'),
(94, 28, '_menu_item_type', 'custom'),
(95, 28, '_menu_item_menu_item_parent', '0'),
(96, 28, '_menu_item_object_id', '28'),
(97, 28, '_menu_item_object', 'custom'),
(98, 28, '_menu_item_target', ''),
(99, 28, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(100, 28, '_menu_item_xfn', ''),
(101, 28, '_menu_item_url', 'mailto:wordpress@example.com'),
(102, 14, '_wp_trash_meta_status', 'publish'),
(103, 14, '_wp_trash_meta_time', '1550663810'),
(104, 29, '_wp_trash_meta_status', 'publish'),
(105, 29, '_wp_trash_meta_time', '1550663826'),
(106, 30, '_edit_lock', '1550663974:1'),
(107, 30, '_wp_trash_meta_status', 'publish'),
(108, 30, '_wp_trash_meta_time', '1550663988'),
(109, 31, '_wp_attached_file', '2019/02/liverpool-fc-logo-027452BE2B-seeklogo.com_.jpg'),
(110, 31, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:300;s:6:"height";i:300;s:4:"file";s:54:"2019/02/liverpool-fc-logo-027452BE2B-seeklogo.com_.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:54:"liverpool-fc-logo-027452BE2B-seeklogo.com_-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:32:"twentyseventeen-thumbnail-avatar";a:4:{s:4:"file";s:54:"liverpool-fc-logo-027452BE2B-seeklogo.com_-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(111, 32, '_wp_attached_file', '2019/02/cropped-liverpool-fc-logo-027452BE2B-seeklogo.com_.jpg'),
(112, 32, '_wp_attachment_context', 'custom-logo'),
(113, 32, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:250;s:6:"height";i:250;s:4:"file";s:62:"2019/02/cropped-liverpool-fc-logo-027452BE2B-seeklogo.com_.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:62:"cropped-liverpool-fc-logo-027452BE2B-seeklogo.com_-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:32:"twentyseventeen-thumbnail-avatar";a:4:{s:4:"file";s:62:"cropped-liverpool-fc-logo-027452BE2B-seeklogo.com_-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(114, 33, '_wp_trash_meta_status', 'publish'),
(115, 33, '_wp_trash_meta_time', '1550664092'),
(116, 34, '_wp_attached_file', '2019/02/cropped-liverpool-fc-logo-027452BE2B-seeklogo.com_-1.jpg'),
(117, 34, '_wp_attachment_context', 'site-icon'),
(118, 34, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:512;s:6:"height";i:512;s:4:"file";s:64:"2019/02/cropped-liverpool-fc-logo-027452BE2B-seeklogo.com_-1.jpg";s:5:"sizes";a:7:{s:9:"thumbnail";a:4:{s:4:"file";s:64:"cropped-liverpool-fc-logo-027452BE2B-seeklogo.com_-1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:64:"cropped-liverpool-fc-logo-027452BE2B-seeklogo.com_-1-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:32:"twentyseventeen-thumbnail-avatar";a:4:{s:4:"file";s:64:"cropped-liverpool-fc-logo-027452BE2B-seeklogo.com_-1-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}s:13:"site_icon-270";a:4:{s:4:"file";s:64:"cropped-liverpool-fc-logo-027452BE2B-seeklogo.com_-1-270x270.jpg";s:5:"width";i:270;s:6:"height";i:270;s:9:"mime-type";s:10:"image/jpeg";}s:13:"site_icon-192";a:4:{s:4:"file";s:64:"cropped-liverpool-fc-logo-027452BE2B-seeklogo.com_-1-192x192.jpg";s:5:"width";i:192;s:6:"height";i:192;s:9:"mime-type";s:10:"image/jpeg";}s:13:"site_icon-180";a:4:{s:4:"file";s:64:"cropped-liverpool-fc-logo-027452BE2B-seeklogo.com_-1-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"site_icon-32";a:4:{s:4:"file";s:62:"cropped-liverpool-fc-logo-027452BE2B-seeklogo.com_-1-32x32.jpg";s:5:"width";i:32;s:6:"height";i:32;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(119, 35, '_wp_trash_meta_status', 'publish'),
(120, 35, '_wp_trash_meta_time', '1550664111'),
(122, 37, '_wp_attached_file', '2019/02/s-l300.jpg'),
(123, 37, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:300;s:6:"height";i:212;s:4:"file";s:18:"2019/02/s-l300.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:18:"s-l300-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:18:"s-l300-300x212.jpg";s:5:"width";i:300;s:6:"height";i:212;s:9:"mime-type";s:10:"image/jpeg";}s:32:"twentyseventeen-thumbnail-avatar";a:4:{s:4:"file";s:18:"s-l300-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(124, 38, '_wp_attached_file', '2019/02/cropped-s-l300.jpg'),
(125, 38, '_wp_attachment_context', 'custom-header'),
(126, 38, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:2000;s:6:"height";i:1200;s:4:"file";s:26:"2019/02/cropped-s-l300.jpg";s:5:"sizes";a:5:{s:9:"thumbnail";a:4:{s:4:"file";s:26:"cropped-s-l300-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:26:"cropped-s-l300-300x180.jpg";s:5:"width";i:300;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:26:"cropped-s-l300-768x461.jpg";s:5:"width";i:768;s:6:"height";i:461;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:27:"cropped-s-l300-1024x614.jpg";s:5:"width";i:1024;s:6:"height";i:614;s:9:"mime-type";s:10:"image/jpeg";}s:32:"twentyseventeen-thumbnail-avatar";a:4:{s:4:"file";s:26:"cropped-s-l300-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}s:17:"attachment_parent";i:37;}'),
(127, 36, '_customize_restore_dismissed', '1'),
(128, 38, '_wp_attachment_custom_header_last_used_twentyseventeen', '1550664185'),
(129, 38, '_wp_attachment_is_custom_header', 'twentyseventeen'),
(130, 39, '_edit_lock', '1550664221:1'),
(131, 40, '_wp_attached_file', '2019/02/Mohamed-Salah-wallpaper-hd-photo-liverpool-football-player-open-arms-april-2018-red-shirt.jpg'),
(132, 40, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1280;s:6:"height";i:720;s:4:"file";s:101:"2019/02/Mohamed-Salah-wallpaper-hd-photo-liverpool-football-player-open-arms-april-2018-red-shirt.jpg";s:5:"sizes";a:5:{s:9:"thumbnail";a:4:{s:4:"file";s:101:"Mohamed-Salah-wallpaper-hd-photo-liverpool-football-player-open-arms-april-2018-red-shirt-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:101:"Mohamed-Salah-wallpaper-hd-photo-liverpool-football-player-open-arms-april-2018-red-shirt-300x169.jpg";s:5:"width";i:300;s:6:"height";i:169;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:101:"Mohamed-Salah-wallpaper-hd-photo-liverpool-football-player-open-arms-april-2018-red-shirt-768x432.jpg";s:5:"width";i:768;s:6:"height";i:432;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:102:"Mohamed-Salah-wallpaper-hd-photo-liverpool-football-player-open-arms-april-2018-red-shirt-1024x576.jpg";s:5:"width";i:1024;s:6:"height";i:576;s:9:"mime-type";s:10:"image/jpeg";}s:32:"twentyseventeen-thumbnail-avatar";a:4:{s:4:"file";s:101:"Mohamed-Salah-wallpaper-hd-photo-liverpool-football-player-open-arms-april-2018-red-shirt-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(133, 41, '_wp_attached_file', '2019/02/cropped-Mohamed-Salah-wallpaper-hd-photo-liverpool-football-player-open-arms-april-2018-red-shirt.jpg'),
(134, 41, '_wp_attachment_context', 'custom-header'),
(135, 41, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:2000;s:6:"height";i:1223;s:4:"file";s:109:"2019/02/cropped-Mohamed-Salah-wallpaper-hd-photo-liverpool-football-player-open-arms-april-2018-red-shirt.jpg";s:5:"sizes";a:6:{s:9:"thumbnail";a:4:{s:4:"file";s:109:"cropped-Mohamed-Salah-wallpaper-hd-photo-liverpool-football-player-open-arms-april-2018-red-shirt-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:109:"cropped-Mohamed-Salah-wallpaper-hd-photo-liverpool-football-player-open-arms-april-2018-red-shirt-300x183.jpg";s:5:"width";i:300;s:6:"height";i:183;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:109:"cropped-Mohamed-Salah-wallpaper-hd-photo-liverpool-football-player-open-arms-april-2018-red-shirt-768x470.jpg";s:5:"width";i:768;s:6:"height";i:470;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:110:"cropped-Mohamed-Salah-wallpaper-hd-photo-liverpool-football-player-open-arms-april-2018-red-shirt-1024x626.jpg";s:5:"width";i:1024;s:6:"height";i:626;s:9:"mime-type";s:10:"image/jpeg";}s:30:"twentyseventeen-featured-image";a:4:{s:4:"file";s:111:"cropped-Mohamed-Salah-wallpaper-hd-photo-liverpool-football-player-open-arms-april-2018-red-shirt-2000x1200.jpg";s:5:"width";i:2000;s:6:"height";i:1200;s:9:"mime-type";s:10:"image/jpeg";}s:32:"twentyseventeen-thumbnail-avatar";a:4:{s:4:"file";s:109:"cropped-Mohamed-Salah-wallpaper-hd-photo-liverpool-football-player-open-arms-april-2018-red-shirt-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}s:17:"attachment_parent";i:40;}'),
(136, 41, '_wp_attachment_custom_header_last_used_twentyseventeen', '1550664280'),
(137, 41, '_wp_attachment_is_custom_header', 'twentyseventeen'),
(138, 39, '_wp_trash_meta_status', 'publish'),
(139, 39, '_wp_trash_meta_time', '1550664280'),
(140, 9, '_edit_lock', '1550664844:1'),
(141, 13, '_edit_lock', '1550664818:1'),
(142, 46, '_wp_attached_file', '2019/02/mo-salah-statue-sculptor-hits-back-after-online-mockery-136430801306802601-181105201120.jpg'),
(143, 46, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:2610;s:6:"height";i:1468;s:4:"file";s:99:"2019/02/mo-salah-statue-sculptor-hits-back-after-online-mockery-136430801306802601-181105201120.jpg";s:5:"sizes";a:6:{s:9:"thumbnail";a:4:{s:4:"file";s:99:"mo-salah-statue-sculptor-hits-back-after-online-mockery-136430801306802601-181105201120-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:99:"mo-salah-statue-sculptor-hits-back-after-online-mockery-136430801306802601-181105201120-300x169.jpg";s:5:"width";i:300;s:6:"height";i:169;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:99:"mo-salah-statue-sculptor-hits-back-after-online-mockery-136430801306802601-181105201120-768x432.jpg";s:5:"width";i:768;s:6:"height";i:432;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:100:"mo-salah-statue-sculptor-hits-back-after-online-mockery-136430801306802601-181105201120-1024x576.jpg";s:5:"width";i:1024;s:6:"height";i:576;s:9:"mime-type";s:10:"image/jpeg";}s:30:"twentyseventeen-featured-image";a:4:{s:4:"file";s:101:"mo-salah-statue-sculptor-hits-back-after-online-mockery-136430801306802601-181105201120-2000x1200.jpg";s:5:"width";i:2000;s:6:"height";i:1200;s:9:"mime-type";s:10:"image/jpeg";}s:32:"twentyseventeen-thumbnail-avatar";a:4:{s:4:"file";s:99:"mo-salah-statue-sculptor-hits-back-after-online-mockery-136430801306802601-181105201120-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(144, 47, '_wp_attached_file', '2019/02/cropped-mo-salah-statue-sculptor-hits-back-after-online-mockery-136430801306802601-181105201120.jpg'),
(145, 47, '_wp_attachment_context', 'custom-header'),
(146, 47, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:2000;s:6:"height";i:1199;s:4:"file";s:107:"2019/02/cropped-mo-salah-statue-sculptor-hits-back-after-online-mockery-136430801306802601-181105201120.jpg";s:5:"sizes";a:6:{s:9:"thumbnail";a:4:{s:4:"file";s:107:"cropped-mo-salah-statue-sculptor-hits-back-after-online-mockery-136430801306802601-181105201120-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:107:"cropped-mo-salah-statue-sculptor-hits-back-after-online-mockery-136430801306802601-181105201120-300x180.jpg";s:5:"width";i:300;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:107:"cropped-mo-salah-statue-sculptor-hits-back-after-online-mockery-136430801306802601-181105201120-768x460.jpg";s:5:"width";i:768;s:6:"height";i:460;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:108:"cropped-mo-salah-statue-sculptor-hits-back-after-online-mockery-136430801306802601-181105201120-1024x614.jpg";s:5:"width";i:1024;s:6:"height";i:614;s:9:"mime-type";s:10:"image/jpeg";}s:30:"twentyseventeen-featured-image";a:4:{s:4:"file";s:109:"cropped-mo-salah-statue-sculptor-hits-back-after-online-mockery-136430801306802601-181105201120-2000x1199.jpg";s:5:"width";i:2000;s:6:"height";i:1199;s:9:"mime-type";s:10:"image/jpeg";}s:32:"twentyseventeen-thumbnail-avatar";a:4:{s:4:"file";s:107:"cropped-mo-salah-statue-sculptor-hits-back-after-online-mockery-136430801306802601-181105201120-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}s:17:"attachment_parent";i:46;}'),
(147, 47, '_wp_attachment_custom_header_last_used_twentyseventeen', '1550664928'),
(148, 47, '_wp_attachment_is_custom_header', 'twentyseventeen'),
(149, 48, '_edit_lock', '1550664926:1'),
(150, 48, '_wp_trash_meta_status', 'publish'),
(151, 48, '_wp_trash_meta_time', '1550664928'),
(152, 13, '_wp_trash_meta_status', 'publish'),
(153, 13, '_wp_trash_meta_time', '1550664992'),
(154, 13, '_wp_desired_post_slug', 'a-homepage-section'),
(155, 12, '_wp_trash_meta_status', 'publish'),
(156, 12, '_wp_trash_meta_time', '1550665000'),
(157, 12, '_wp_desired_post_slug', 'blog'),
(158, 11, '_wp_trash_meta_status', 'publish'),
(159, 11, '_wp_trash_meta_time', '1550665069'),
(160, 11, '_wp_desired_post_slug', 'contact'),
(161, 3, '_wp_trash_meta_status', 'draft'),
(162, 3, '_wp_trash_meta_time', '1550665077'),
(163, 3, '_wp_desired_post_slug', 'privacy-policy'),
(164, 50, '_edit_lock', '1550665118:1'),
(165, 51, '_edit_lock', '1550665103:1'),
(166, 51, '_thumbnail_id', '46'),
(167, 9, '_wp_trash_meta_status', 'publish'),
(168, 9, '_wp_trash_meta_time', '1550665252'),
(169, 9, '_wp_desired_post_slug', 'home'),
(170, 10, '_wp_trash_meta_status', 'publish'),
(171, 10, '_wp_trash_meta_time', '1550665306'),
(172, 10, '_wp_desired_post_slug', 'about'),
(173, 51, '_wp_trash_meta_status', 'publish'),
(174, 51, '_wp_trash_meta_time', '1550665309'),
(175, 51, '_wp_desired_post_slug', 'about-2'),
(176, 53, '_edit_lock', '1550665197:1'),
(177, 50, '_customize_restore_dismissed', '1'),
(178, 54, '_edit_lock', '1550665417:1'),
(179, 54, '_thumbnail_id', '37'),
(180, 56, '_wp_trash_meta_status', 'publish'),
(181, 56, '_wp_trash_meta_time', '1550665655'),
(182, 57, '_wp_trash_meta_status', 'publish'),
(183, 57, '_wp_trash_meta_time', '1550665673'),
(184, 58, '_wp_trash_meta_status', 'publish'),
(185, 58, '_wp_trash_meta_time', '1550665692'),
(186, 59, '_wp_trash_meta_status', 'publish'),
(187, 59, '_wp_trash_meta_time', '1550665842'),
(188, 60, '_edit_lock', '1550666089:1'),
(189, 61, '_menu_item_type', 'custom'),
(190, 61, '_menu_item_menu_item_parent', '0'),
(191, 61, '_menu_item_object_id', '61'),
(192, 61, '_menu_item_object', 'custom'),
(193, 61, '_menu_item_target', ''),
(194, 61, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(195, 61, '_menu_item_xfn', ''),
(196, 61, '_menu_item_url', '/MyClub/about'),
(197, 60, '_wp_trash_meta_status', 'publish'),
(198, 60, '_wp_trash_meta_time', '1550666113'),
(199, 62, '_wp_trash_meta_status', 'publish'),
(200, 62, '_wp_trash_meta_time', '1550666146'),
(201, 63, '_wp_trash_meta_status', 'publish'),
(202, 63, '_wp_trash_meta_time', '1550666259'),
(203, 65, '_menu_item_type', 'custom'),
(204, 65, '_menu_item_menu_item_parent', '0'),
(205, 65, '_menu_item_object_id', '65'),
(206, 65, '_menu_item_object', 'custom'),
(207, 65, '_menu_item_target', ''),
(208, 65, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(209, 65, '_menu_item_xfn', ''),
(210, 65, '_menu_item_url', 'http://localhost/MyClub/team'),
(313, 124, '_wp_trash_meta_time', '1550705228'),
(312, 124, '_wp_trash_meta_status', 'publish'),
(311, 124, '_edit_lock', '1550705077:1'),
(310, 123, '_wp_trash_meta_time', '1550704818'),
(309, 123, '_wp_trash_meta_status', 'publish'),
(219, 64, '_wp_trash_meta_status', 'publish'),
(220, 64, '_wp_trash_meta_time', '1550666419'),
(221, 1, '_edit_lock', '1550673260:1'),
(223, 70, '_edit_lock', '1550666696:1'),
(225, 1, '_wp_trash_meta_status', 'publish'),
(226, 1, '_wp_trash_meta_time', '1550666862'),
(227, 1, '_wp_desired_post_slug', 'hello-world'),
(228, 1, '_wp_trash_meta_comments_status', 'a:1:{i:1;s:1:"1";}'),
(229, 72, '_edit_lock', '1550675980:1'),
(230, 73, '_edit_lock', '1550676210:1'),
(231, 74, '_edit_lock', '1550676216:1'),
(324, 131, '_wp_trash_meta_status', 'publish'),
(322, 129, '_wp_desired_post_slug', 'about'),
(323, 131, '_edit_lock', '1550705747:1'),
(321, 129, '_wp_trash_meta_time', '1550705782'),
(317, 126, '_wp_trash_meta_time', '1550705400'),
(318, 126, '_wp_desired_post_slug', 'about'),
(320, 129, '_wp_trash_meta_status', 'publish'),
(319, 129, '_edit_lock', '1550705630:1'),
(316, 126, '_wp_trash_meta_status', 'publish'),
(314, 124, '_wp_desired_post_slug', 'about'),
(315, 126, '_edit_lock', '1550705246:1'),
(307, 54, '_wp_trash_meta_time', '1550704787'),
(250, 90, '_edit_lock', '1550682257:1'),
(308, 54, '_wp_desired_post_slug', 'about'),
(306, 54, '_wp_trash_meta_status', 'publish'),
(255, 90, '_wp_trash_meta_status', 'publish'),
(256, 90, '_wp_trash_meta_time', '1550682444'),
(257, 90, '_wp_desired_post_slug', 'test'),
(305, 112, '_wp_desired_post_slug', 'ha'),
(304, 112, '_wp_trash_meta_time', '1550704533'),
(303, 112, '_wp_trash_meta_status', 'publish'),
(302, 114, '_wp_desired_post_slug', 'soad'),
(264, 103, '_edit_lock', '1550683106:1'),
(265, 104, '_edit_lock', '1550683111:1'),
(301, 114, '_wp_trash_meta_time', '1550704533'),
(293, 119, '_edit_last', '1'),
(294, 119, '_edit_lock', '1550703312:1'),
(295, 120, '_wp_trash_meta_status', 'publish'),
(291, 118, '_wp_trash_meta_time', '1550703345'),
(292, 118, '_wp_desired_post_slug', 'team'),
(296, 120, '_wp_trash_meta_time', '1550704175'),
(297, 119, '_wp_trash_meta_status', 'publish'),
(298, 119, '_wp_trash_meta_time', '1550704533'),
(299, 119, '_wp_desired_post_slug', 'hh'),
(300, 114, '_wp_trash_meta_status', 'publish'),
(289, 118, '_edit_lock', '1550703188:1'),
(290, 118, '_wp_trash_meta_status', 'publish'),
(288, 118, '_edit_last', '1'),
(284, 111, '_edit_lock', '1550685083:1'),
(285, 112, '_edit_lock', '1550685119:1'),
(286, 114, '_edit_lock', '1550688573:1'),
(287, 116, '_edit_lock', '1550702515:1'),
(325, 131, '_wp_trash_meta_time', '1550705899'),
(326, 131, '_wp_desired_post_slug', 'about'),
(327, 133, '_edit_lock', '1550711530:1'),
(328, 2, '_edit_lock', '1550707509:1'),
(329, 133, '_thumbnail_id', '37'),
(355, 190, '_edit_lock', '1550708732:1'),
(356, 191, '_edit_last', '1'),
(357, 191, '_edit_lock', '1550708756:1'),
(358, 192, '_edit_last', '1'),
(359, 192, '_edit_lock', '1550710074:1'),
(360, 193, '_wp_trash_meta_status', 'publish'),
(361, 193, '_wp_trash_meta_time', '1550708941'),
(362, 194, '_edit_last', '1'),
(363, 194, '_edit_lock', '1550714310:1'),
(364, 196, '_edit_last', '1'),
(365, 196, '_edit_lock', '1550714333:1'),
(366, 196, '_wp_trash_meta_status', 'publish'),
(367, 196, '_wp_trash_meta_time', '1550715855'),
(368, 196, '_wp_desired_post_slug', 'hhha'),
(369, 194, '_wp_trash_meta_status', 'publish'),
(370, 194, '_wp_trash_meta_time', '1550715855'),
(371, 194, '_wp_desired_post_slug', 'hadeel'),
(372, 192, '_wp_trash_meta_status', 'publish'),
(373, 192, '_wp_trash_meta_time', '1550715855'),
(374, 192, '_wp_desired_post_slug', 'professionals%e2%80%8b-%e2%80%8bteam'),
(375, 191, '_wp_trash_meta_status', 'publish'),
(376, 191, '_wp_trash_meta_time', '1550715855'),
(377, 191, '_wp_desired_post_slug', 'intermediate%e2%80%8b-%e2%80%8bteam'),
(378, 190, '_wp_trash_meta_status', 'publish'),
(379, 190, '_wp_trash_meta_time', '1550715855'),
(380, 190, '_wp_desired_post_slug', 'beginners%e2%80%8b-%e2%80%8bteam'),
(381, 197, '_edit_last', '1'),
(382, 197, '_edit_lock', '1550716050:1'),
(383, 197, '_wp_trash_meta_status', 'publish'),
(384, 197, '_wp_trash_meta_time', '1550717091'),
(385, 197, '_wp_desired_post_slug', 'had'),
(386, 198, '_edit_last', '1'),
(387, 198, '_edit_lock', '1550751160:1'),
(388, 200, '_edit_last', '1'),
(389, 200, '_edit_lock', '1550751547:1'),
(390, 201, '_edit_last', '1'),
(391, 201, '_edit_lock', '1550751556:1'),
(392, 202, '_edit_last', '1'),
(393, 202, '_edit_lock', '1550751566:1'),
(394, 203, '_edit_last', '1'),
(395, 203, '_edit_lock', '1550751576:1'),
(396, 204, '_edit_last', '1'),
(397, 204, '_edit_lock', '1550751585:1'),
(398, 205, '_edit_last', '1'),
(399, 205, '_edit_lock', '1550786442:1'),
(400, 206, '_edit_lock', '1550786661:1'),
(401, 207, '_edit_lock', '1550786927:1'),
(402, 208, '_edit_lock', '1550787105:1'),
(403, 209, '_edit_lock', '1550787191:1'),
(404, 210, '_edit_lock', '1550787614:1'),
(405, 211, '_edit_lock', '1550787692:1'),
(406, 212, '_edit_lock', '1550787706:1'),
(407, 213, '_edit_lock', '1550787734:1'),
(408, 214, '_edit_lock', '1550787785:1'),
(409, 215, '_edit_lock', '1550787936:1'),
(410, 215, '_edit_last', '1'),
(411, 215, 'your_fields', 'a:3:{s:4:"text";s:2:"HA";s:8:"textarea";s:5:"JJJJJ";s:5:"image";s:144:"http://localhost/MyClub/wp-content/uploads/2019/02/Mohamed-Salah-wallpaper-hd-photo-liverpool-football-player-open-arms-april-2018-red-shirt.jpg";}'),
(412, 216, '_edit_lock', '1550787912:1'),
(413, 217, '_edit_lock', '1550788060:1'),
(414, 218, '_edit_lock', '1550788063:1'),
(415, 219, '_edit_lock', '1550788108:1'),
(416, 220, '_edit_lock', '1550788112:1'),
(417, 221, '_edit_lock', '1550788137:1'),
(418, 222, '_edit_lock', '1550788142:1'),
(419, 223, '_edit_lock', '1550788288:1'),
(420, 224, '_edit_lock', '1550788296:1'),
(421, 215, '_wp_trash_meta_status', 'publish'),
(422, 215, '_wp_trash_meta_time', '1550788445'),
(423, 215, '_wp_desired_post_slug', '215'),
(424, 225, '_edit_lock', '1550788509:1'),
(425, 226, '_edit_lock', '1550788536:1'),
(426, 227, '_edit_lock', '1550788564:1'),
(427, 234, '_edit_last', '1'),
(428, 234, '_edit_lock', '1550789772:1'),
(429, 234, 'date', ''),
(430, 234, 'bio', 'HHHA'),
(431, 234, 'num', ''),
(432, 234, 'pimage', ''),
(433, 234, '_wp_trash_meta_status', 'publish'),
(434, 234, '_wp_trash_meta_time', '1550789937'),
(435, 234, '_wp_desired_post_slug', 'hadeel'),
(436, 205, '_wp_trash_meta_status', 'publish'),
(437, 205, '_wp_trash_meta_time', '1550789937'),
(438, 205, '_wp_desired_post_slug', 'player-6'),
(439, 204, '_wp_trash_meta_status', 'publish'),
(440, 204, '_wp_trash_meta_time', '1550789937'),
(441, 204, '_wp_desired_post_slug', 'player-5'),
(442, 203, '_wp_trash_meta_status', 'publish'),
(443, 203, '_wp_trash_meta_time', '1550789937'),
(444, 203, '_wp_desired_post_slug', 'player-4'),
(445, 202, '_wp_trash_meta_status', 'publish'),
(446, 202, '_wp_trash_meta_time', '1550789937'),
(447, 202, '_wp_desired_post_slug', 'player-3'),
(448, 201, '_wp_trash_meta_status', 'publish'),
(449, 201, '_wp_trash_meta_time', '1550789937'),
(450, 201, '_wp_desired_post_slug', 'player-2'),
(451, 200, '_wp_trash_meta_status', 'publish'),
(452, 200, '_wp_trash_meta_time', '1550789937'),
(453, 200, '_wp_desired_post_slug', 'player-1'),
(454, 198, '_wp_trash_meta_status', 'publish'),
(455, 198, '_wp_trash_meta_time', '1550789937'),
(456, 198, '_wp_desired_post_slug', 'has'),
(457, 236, '_edit_last', '1'),
(458, 236, '_edit_lock', '1550873207:1'),
(459, 237, '_edit_last', '1'),
(460, 237, '_edit_lock', '1550874208:1'),
(461, 237, 'date', '2019-02-18'),
(462, 237, 'bio', 'HHA'),
(463, 237, 'num', '14'),
(464, 237, 'pimage', ''),
(465, 236, 'date', '2019-02-18'),
(466, 236, 'bio', 'KKKKKAMMMMMMM'),
(467, 236, 'num', '45'),
(468, 236, 'pimage', ''),
(470, 236, 'upload_image', NULL),
(472, 237, '_wp_old_date', '2019-02-21'),
(471, 236, 'category-image-id', '31'),
(473, 237, 'category-image-id', '6'),
(474, 237, '_wp_trash_meta_status', 'publish'),
(475, 237, '_wp_trash_meta_time', '1550875914'),
(476, 237, '_wp_desired_post_slug', 'ha'),
(477, 236, '_wp_trash_meta_status', 'publish'),
(478, 236, '_wp_trash_meta_time', '1550875914'),
(479, 236, '_wp_desired_post_slug', 'hadeel'),
(480, 243, '_edit_last', '1'),
(481, 243, '_edit_lock', '1550875922:1'),
(482, 245, '_edit_last', '1'),
(483, 245, '_edit_lock', '1550875850:1'),
(484, 245, 'date', '2019-02-06'),
(485, 245, 'bio', 'Exam1'),
(486, 245, 'num', '12'),
(487, 245, 'category-image-id', '46'),
(488, 246, '_edit_last', '1'),
(489, 246, '_edit_lock', '1550875910:1'),
(490, 246, 'date', '2019-02-19'),
(491, 246, 'bio', 'exam2'),
(492, 246, 'num', '3'),
(493, 246, 'category-image-id', '37'),
(494, 248, '_edit_last', '1'),
(495, 248, '_edit_lock', '1550875937:1'),
(496, 248, 'date', '2019-02-19'),
(497, 248, 'bio', 'Exam'),
(498, 248, 'num', '16'),
(499, 248, 'category-image-id', '40'),
(500, 249, '_edit_last', '1'),
(501, 249, '_edit_lock', '1550876010:1'),
(502, 249, 'date', '2019-02-19'),
(503, 249, 'bio', 'Exam2'),
(504, 249, 'num', '12'),
(505, 249, 'category-image-id', '31'),
(506, 243, '_wp_trash_meta_status', 'draft'),
(507, 243, '_wp_trash_meta_time', '1550876116'),
(508, 243, '_wp_desired_post_slug', ''),
(509, 243, 'date', NULL),
(510, 243, 'bio', NULL),
(511, 243, 'num', NULL),
(512, 243, 'category-image-id', NULL),
(513, 250, '_edit_last', '1'),
(514, 250, '_edit_lock', '1550876062:1'),
(515, 250, 'date', '2019-02-25'),
(516, 250, 'bio', 'Terika'),
(517, 250, 'num', '12'),
(518, 250, 'category-image-id', '6'),
(519, 251, '_edit_last', '1'),
(520, 251, '_edit_lock', '1550876224:1'),
(521, 251, 'date', '2019-02-18'),
(522, 251, 'bio', 'Examp'),
(523, 251, 'num', '23'),
(524, 251, 'category-image-id', '');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
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
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2019-02-20 10:47:07', '2019-02-20 10:47:07', '<!-- wp:paragraph -->\n<p>Hello To  Liverpool F.C. Club<br></p>\n<!-- /wp:paragraph -->', 'Home', '', 'trash', 'open', 'open', '', 'hello-world__trashed', '', '', '2019-02-20 12:47:42', '2019-02-20 12:47:42', '', 0, 'http://localhost/MyClub/?p=1', 0, 'post', '', 1),
(68, 1, '2019-02-20 12:43:37', '2019-02-20 12:43:37', '<!-- wp:paragraph -->\n<p>Hello To  Liverpool F.C. Club<br></p>\n<!-- /wp:paragraph -->', 'Home', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2019-02-20 12:43:37', '2019-02-20 12:43:37', '', 1, 'http://localhost/MyClub/2019/02/20/1-revision-v1/', 0, 'revision', '', 0),
(2, 1, '2019-02-20 10:47:07', '2019-02-20 10:47:07', '<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class="wp-block-quote"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class="wp-block-quote"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href="http://localhost/MyClub/wp-admin/">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->', 'Sample Page', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2019-02-20 10:47:07', '2019-02-20 10:47:07', '', 0, 'http://localhost/MyClub/?page_id=2', 0, 'page', '', 0),
(3, 1, '2019-02-20 10:47:07', '2019-02-20 10:47:07', '<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Our website address is: http://localhost/MyClub.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What personal data we collect and why we collect it</h2><!-- /wp:heading --><!-- wp:heading {"level":3} --><h3>Comments</h3><!-- /wp:heading --><!-- wp:paragraph --><p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading {"level":3} --><h3>Media</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading {"level":3} --><h3>Contact forms</h3><!-- /wp:heading --><!-- wp:heading {"level":3} --><h3>Cookies</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you have an account and you log in to this site, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading {"level":3} --><h3>Embedded content from other websites</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading {"level":3} --><h3>Analytics</h3><!-- /wp:heading --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where we send your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Your contact information</h2><!-- /wp:heading --><!-- wp:heading --><h2>Additional information</h2><!-- /wp:heading --><!-- wp:heading {"level":3} --><h3>How we protect your data</h3><!-- /wp:heading --><!-- wp:heading {"level":3} --><h3>What data breach procedures we have in place</h3><!-- /wp:heading --><!-- wp:heading {"level":3} --><h3>What third parties we receive data from</h3><!-- /wp:heading --><!-- wp:heading {"level":3} --><h3>What automated decision making and/or profiling we do with user data</h3><!-- /wp:heading --><!-- wp:heading {"level":3} --><h3>Industry regulatory disclosure requirements</h3><!-- /wp:heading -->', 'Privacy Policy', '', 'trash', 'closed', 'open', '', 'privacy-policy__trashed', '', '', '2019-02-20 12:17:57', '2019-02-20 12:17:57', '', 0, 'http://localhost/MyClub/?page_id=3', 0, 'page', '', 0),
(4, 1, '2019-02-20 10:47:26', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-02-20 10:47:26', '0000-00-00 00:00:00', '', 0, 'http://localhost/MyClub/?p=4', 0, 'post', '', 0),
(5, 1, '2019-02-20 11:44:34', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-02-20 11:44:34', '0000-00-00 00:00:00', '', 0, 'http://localhost/MyClub/?page_id=5', 0, 'page', '', 0),
(6, 1, '2019-02-20 11:56:50', '2019-02-20 11:56:50', '', 'Espresso', '', 'inherit', 'open', 'closed', '', 'espresso', '', '', '2019-02-20 11:56:50', '2019-02-20 11:56:50', '', 0, 'http://localhost/MyClub/wp-content/uploads/2019/02/espresso.jpg', 0, 'attachment', 'image/jpeg', 0),
(7, 1, '2019-02-20 11:56:50', '2019-02-20 11:56:50', '', 'Sandwich', '', 'inherit', 'open', 'closed', '', 'sandwich', '', '', '2019-02-20 11:56:50', '2019-02-20 11:56:50', '', 0, 'http://localhost/MyClub/wp-content/uploads/2019/02/sandwich.jpg', 0, 'attachment', 'image/jpeg', 0),
(8, 1, '2019-02-20 11:56:50', '2019-02-20 11:56:50', '', 'Coffee', '', 'inherit', 'open', 'closed', '', 'coffee', '', '', '2019-02-20 11:56:50', '2019-02-20 11:56:50', '', 0, 'http://localhost/MyClub/wp-content/uploads/2019/02/coffee.jpg', 0, 'attachment', 'image/jpeg', 0),
(9, 1, '2019-02-20 11:56:50', '2019-02-20 11:56:50', '<!-- wp:paragraph -->\n<p>\n\nLiverpool Football Club is a professional football club in Liverpool, England, that competes in the Premier League, the top tier of English&nbsp;\n\n</p>\n<!-- /wp:paragraph -->', 'About', '', 'trash', 'closed', 'closed', '', 'home__trashed', '', '', '2019-02-20 12:20:52', '2019-02-20 12:20:52', '', 0, 'http://localhost/MyClub/?page_id=9', 0, 'page', '', 0),
(10, 1, '2019-02-20 11:56:50', '2019-02-20 11:56:50', 'You might be an artist who would like to introduce yourself and your work here or maybe you&rsquo;re a business with a mission to describe.', 'About', '', 'trash', 'closed', 'closed', '', 'about__trashed', '', '', '2019-02-20 12:21:46', '2019-02-20 12:21:46', '', 0, 'http://localhost/MyClub/?page_id=10', 0, 'page', '', 0),
(11, 1, '2019-02-20 11:56:50', '2019-02-20 11:56:50', 'This is a page with some basic contact information, such as an address and phone number. You might also try a plugin to add a contact form.', 'Contact', '', 'trash', 'closed', 'closed', '', 'contact__trashed', '', '', '2019-02-20 12:17:49', '2019-02-20 12:17:49', '', 0, 'http://localhost/MyClub/?page_id=11', 0, 'page', '', 0),
(12, 1, '2019-02-20 11:56:50', '2019-02-20 11:56:50', '', 'Blog', '', 'trash', 'closed', 'closed', '', 'blog__trashed', '', '', '2019-02-20 12:16:40', '2019-02-20 12:16:40', '', 0, 'http://localhost/MyClub/?page_id=12', 0, 'page', '', 0),
(13, 1, '2019-02-20 11:56:50', '2019-02-20 11:56:50', 'This is an example of a homepage section. Homepage sections can be any page other than the homepage itself, including the page that shows your latest blog posts.', 'A homepage section', '', 'trash', 'closed', 'closed', '', 'a-homepage-section__trashed', '', '', '2019-02-20 12:16:32', '2019-02-20 12:16:32', '', 0, 'http://localhost/MyClub/?page_id=13', 0, 'page', '', 0),
(14, 1, '2019-02-20 11:56:50', '2019-02-20 11:56:50', '{\n    "widget_text[2]": {\n        "starter_content": true,\n        "value": {\n            "encoded_serialized_instance": "YTo0OntzOjU6InRpdGxlIjtzOjc6IkZpbmQgVXMiO3M6NDoidGV4dCI7czoxNjg6IjxzdHJvbmc+QWRkcmVzczwvc3Ryb25nPgoxMjMgTWFpbiBTdHJlZXQKTmV3IFlvcmssIE5ZIDEwMDAxCgo8c3Ryb25nPkhvdXJzPC9zdHJvbmc+Ck1vbmRheSZtZGFzaDtGcmlkYXk6IDk6MDBBTSZuZGFzaDs1OjAwUE0KU2F0dXJkYXkgJmFtcDsgU3VuZGF5OiAxMTowMEFNJm5kYXNoOzM6MDBQTSI7czo2OiJmaWx0ZXIiO2I6MTtzOjY6InZpc3VhbCI7YjoxO30=",\n            "title": "Find Us",\n            "is_widget_customizer_js_value": true,\n            "instance_hash_key": "6ebef8fc0287932ef9d0fcd7491ce9a9"\n        },\n        "type": "option",\n        "user_id": 1,\n        "date_modified_gmt": "2019-02-20 11:54:14"\n    },\n    "widget_search[3]": {\n        "starter_content": true,\n        "value": {\n            "encoded_serialized_instance": "YToxOntzOjU6InRpdGxlIjtzOjY6IlNlYXJjaCI7fQ==",\n            "title": "Search",\n            "is_widget_customizer_js_value": true,\n            "instance_hash_key": "957f0d3fb705c5f7134cc88b17eee90e"\n        },\n        "type": "option",\n        "user_id": 1,\n        "date_modified_gmt": "2019-02-20 11:54:14"\n    },\n    "widget_text[3]": {\n        "starter_content": true,\n        "value": {\n            "encoded_serialized_instance": "YTo0OntzOjU6InRpdGxlIjtzOjE1OiJBYm91dCBUaGlzIFNpdGUiO3M6NDoidGV4dCI7czo4NToiVGhpcyBtYXkgYmUgYSBnb29kIHBsYWNlIHRvIGludHJvZHVjZSB5b3Vyc2VsZiBhbmQgeW91ciBzaXRlIG9yIGluY2x1ZGUgc29tZSBjcmVkaXRzLiI7czo2OiJmaWx0ZXIiO2I6MTtzOjY6InZpc3VhbCI7YjoxO30=",\n            "title": "About This Site",\n            "is_widget_customizer_js_value": true,\n            "instance_hash_key": "de3158a438a814028374a04c92871286"\n        },\n        "type": "option",\n        "user_id": 1,\n        "date_modified_gmt": "2019-02-20 11:54:14"\n    },\n    "sidebars_widgets[sidebar-1]": {\n        "starter_content": true,\n        "value": [\n            "text-2",\n            "search-3",\n            "text-3"\n        ],\n        "type": "option",\n        "user_id": 1,\n        "date_modified_gmt": "2019-02-20 11:54:14"\n    },\n    "widget_text[4]": {\n        "starter_content": true,\n        "value": {\n            "encoded_serialized_instance": "YTo0OntzOjU6InRpdGxlIjtzOjc6IkZpbmQgVXMiO3M6NDoidGV4dCI7czoxNjg6IjxzdHJvbmc+QWRkcmVzczwvc3Ryb25nPgoxMjMgTWFpbiBTdHJlZXQKTmV3IFlvcmssIE5ZIDEwMDAxCgo8c3Ryb25nPkhvdXJzPC9zdHJvbmc+Ck1vbmRheSZtZGFzaDtGcmlkYXk6IDk6MDBBTSZuZGFzaDs1OjAwUE0KU2F0dXJkYXkgJmFtcDsgU3VuZGF5OiAxMTowMEFNJm5kYXNoOzM6MDBQTSI7czo2OiJmaWx0ZXIiO2I6MTtzOjY6InZpc3VhbCI7YjoxO30=",\n            "title": "Find Us",\n            "is_widget_customizer_js_value": true,\n            "instance_hash_key": "6ebef8fc0287932ef9d0fcd7491ce9a9"\n        },\n        "type": "option",\n        "user_id": 1,\n        "date_modified_gmt": "2019-02-20 11:54:14"\n    },\n    "sidebars_widgets[sidebar-2]": {\n        "starter_content": true,\n        "value": [\n            "text-4"\n        ],\n        "type": "option",\n        "user_id": 1,\n        "date_modified_gmt": "2019-02-20 11:54:14"\n    },\n    "widget_text[5]": {\n        "starter_content": true,\n        "value": {\n            "encoded_serialized_instance": "YTo0OntzOjU6InRpdGxlIjtzOjE1OiJBYm91dCBUaGlzIFNpdGUiO3M6NDoidGV4dCI7czo4NToiVGhpcyBtYXkgYmUgYSBnb29kIHBsYWNlIHRvIGludHJvZHVjZSB5b3Vyc2VsZiBhbmQgeW91ciBzaXRlIG9yIGluY2x1ZGUgc29tZSBjcmVkaXRzLiI7czo2OiJmaWx0ZXIiO2I6MTtzOjY6InZpc3VhbCI7YjoxO30=",\n            "title": "About This Site",\n            "is_widget_customizer_js_value": true,\n            "instance_hash_key": "de3158a438a814028374a04c92871286"\n        },\n        "type": "option",\n        "user_id": 1,\n        "date_modified_gmt": "2019-02-20 11:54:14"\n    },\n    "widget_search[4]": {\n        "starter_content": true,\n        "value": {\n            "encoded_serialized_instance": "YToxOntzOjU6InRpdGxlIjtzOjY6IlNlYXJjaCI7fQ==",\n            "title": "Search",\n            "is_widget_customizer_js_value": true,\n            "instance_hash_key": "957f0d3fb705c5f7134cc88b17eee90e"\n        },\n        "type": "option",\n        "user_id": 1,\n        "date_modified_gmt": "2019-02-20 11:54:14"\n    },\n    "sidebars_widgets[sidebar-3]": {\n        "starter_content": true,\n        "value": [\n            "text-5",\n            "search-4"\n        ],\n        "type": "option",\n        "user_id": 1,\n        "date_modified_gmt": "2019-02-20 11:54:14"\n    },\n    "nav_menus_created_posts": {\n        "starter_content": true,\n        "value": [\n            6,\n            7,\n            8,\n            9,\n            10,\n            11,\n            12,\n            13\n        ],\n        "type": "option",\n        "user_id": 1,\n        "date_modified_gmt": "2019-02-20 11:54:14"\n    },\n    "nav_menu[-1]": {\n        "value": {\n            "name": "Top Menu",\n            "description": "",\n            "parent": 0,\n            "auto_add": false\n        },\n        "type": "nav_menu",\n        "user_id": 1,\n        "date_modified_gmt": "2019-02-20 11:56:50"\n    },\n    "nav_menu_item[-1]": {\n        "value": {\n            "object_id": 0,\n            "object": "",\n            "menu_item_parent": 0,\n            "position": 0,\n            "type": "custom",\n            "title": "About ",\n            "url": "http://localhost/MyClub/",\n            "target": "",\n            "attr_title": "",\n            "description": "",\n            "classes": "",\n            "xfn": "",\n            "status": "publish",\n            "original_title": "",\n            "nav_menu_term_id": -1,\n            "_invalid": false,\n            "type_label": "Custom Link"\n        },\n        "type": "nav_menu_item",\n        "user_id": 1,\n        "date_modified_gmt": "2019-02-20 11:56:50"\n    },\n    "nav_menu_item[-2]": {\n        "value": {\n            "object_id": 10,\n            "object": "page",\n            "menu_item_parent": 0,\n            "position": 1,\n            "type": "post_type",\n            "title": "About",\n            "url": "",\n            "target": "",\n            "attr_title": "",\n            "description": "",\n            "classes": "",\n            "xfn": "",\n            "status": "publish",\n            "original_title": "About",\n            "nav_menu_term_id": -1,\n            "_invalid": false,\n            "type_label": "Page"\n        },\n        "type": "nav_menu_item",\n        "user_id": 1,\n        "date_modified_gmt": "2019-02-20 11:56:50"\n    },\n    "nav_menu_item[-3]": {\n        "value": {\n            "object_id": 12,\n            "object": "page",\n            "menu_item_parent": 0,\n            "position": 2,\n            "type": "post_type",\n            "title": "Blog",\n            "url": "",\n            "target": "",\n            "attr_title": "",\n            "description": "",\n            "classes": "",\n            "xfn": "",\n            "status": "publish",\n            "original_title": "Blog",\n            "nav_menu_term_id": -1,\n            "_invalid": false,\n            "type_label": "Page"\n        },\n        "type": "nav_menu_item",\n        "user_id": 1,\n        "date_modified_gmt": "2019-02-20 11:56:50"\n    },\n    "nav_menu_item[-4]": {\n        "value": {\n            "object_id": 11,\n            "object": "page",\n            "menu_item_parent": 0,\n            "position": 3,\n            "type": "post_type",\n            "title": "Contact",\n            "url": "",\n            "target": "",\n            "attr_title": "",\n            "description": "",\n            "classes": "",\n            "xfn": "",\n            "status": "publish",\n            "original_title": "Contact",\n            "nav_menu_term_id": -1,\n            "_invalid": false,\n            "type_label": "Page"\n        },\n        "type": "nav_menu_item",\n        "user_id": 1,\n        "date_modified_gmt": "2019-02-20 11:56:50"\n    },\n    "twentyseventeen::nav_menu_locations[top]": {\n        "starter_content": true,\n        "value": -1,\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2019-02-20 11:54:14"\n    },\n    "nav_menu[-5]": {\n        "value": {\n            "name": "Social Links Menu",\n            "description": "",\n            "parent": 0,\n            "auto_add": false\n        },\n        "type": "nav_menu",\n        "user_id": 1,\n        "date_modified_gmt": "2019-02-20 11:56:50"\n    },\n    "nav_menu_item[-5]": {\n        "value": {\n            "object_id": 0,\n            "object": "",\n            "menu_item_parent": 0,\n            "position": 0,\n            "type": "custom",\n            "title": "Yelp",\n            "url": "https://www.yelp.com",\n            "target": "",\n            "attr_title": "",\n            "description": "",\n            "classes": "",\n            "xfn": "",\n            "status": "publish",\n            "original_title": "",\n            "nav_menu_term_id": -5,\n            "_invalid": false,\n            "type_label": "Custom Link"\n        },\n        "type": "nav_menu_item",\n        "user_id": 1,\n        "date_modified_gmt": "2019-02-20 11:56:50"\n    },\n    "nav_menu_item[-6]": {\n        "value": {\n            "object_id": 0,\n            "object": "",\n            "menu_item_parent": 0,\n            "position": 1,\n            "type": "custom",\n            "title": "Facebook",\n            "url": "https://www.facebook.com/wordpress",\n            "target": "",\n            "attr_title": "",\n            "description": "",\n            "classes": "",\n            "xfn": "",\n            "status": "publish",\n            "original_title": "",\n            "nav_menu_term_id": -5,\n            "_invalid": false,\n            "type_label": "Custom Link"\n        },\n        "type": "nav_menu_item",\n        "user_id": 1,\n        "date_modified_gmt": "2019-02-20 11:56:50"\n    },\n    "nav_menu_item[-7]": {\n        "value": {\n            "object_id": 0,\n            "object": "",\n            "menu_item_parent": 0,\n            "position": 2,\n            "type": "custom",\n            "title": "Twitter",\n            "url": "https://twitter.com/wordpress",\n            "target": "",\n            "attr_title": "",\n            "description": "",\n            "classes": "",\n            "xfn": "",\n            "status": "publish",\n            "original_title": "",\n            "nav_menu_term_id": -5,\n            "_invalid": false,\n            "type_label": "Custom Link"\n        },\n        "type": "nav_menu_item",\n        "user_id": 1,\n        "date_modified_gmt": "2019-02-20 11:56:50"\n    },\n    "nav_menu_item[-8]": {\n        "value": {\n            "object_id": 0,\n            "object": "",\n            "menu_item_parent": 0,\n            "position": 3,\n            "type": "custom",\n            "title": "Instagram",\n            "url": "https://www.instagram.com/explore/tags/wordcamp/",\n            "target": "",\n            "attr_title": "",\n            "description": "",\n            "classes": "",\n            "xfn": "",\n            "status": "publish",\n            "original_title": "",\n            "nav_menu_term_id": -5,\n            "_invalid": false,\n            "type_label": "Custom Link"\n        },\n        "type": "nav_menu_item",\n        "user_id": 1,\n        "date_modified_gmt": "2019-02-20 11:56:50"\n    },\n    "nav_menu_item[-9]": {\n        "value": {\n            "object_id": 0,\n            "object": "",\n            "menu_item_parent": 0,\n            "position": 4,\n            "type": "custom",\n            "title": "Email",\n            "url": "mailto:wordpress@example.com",\n            "target": "",\n            "attr_title": "",\n            "description": "",\n            "classes": "",\n            "xfn": "",\n            "status": "publish",\n            "original_title": "",\n            "nav_menu_term_id": -5,\n            "_invalid": false,\n            "type_label": "Custom Link"\n        },\n        "type": "nav_menu_item",\n        "user_id": 1,\n        "date_modified_gmt": "2019-02-20 11:56:50"\n    },\n    "twentyseventeen::nav_menu_locations[social]": {\n        "starter_content": true,\n        "value": -5,\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2019-02-20 11:54:14"\n    },\n    "show_on_front": {\n        "starter_content": true,\n        "value": "page",\n        "type": "option",\n        "user_id": 1,\n        "date_modified_gmt": "2019-02-20 11:54:14"\n    },\n    "page_on_front": {\n        "starter_content": true,\n        "value": 9,\n        "type": "option",\n        "user_id": 1,\n        "date_modified_gmt": "2019-02-20 11:54:14"\n    },\n    "page_for_posts": {\n        "starter_content": true,\n        "value": 12,\n        "type": "option",\n        "user_id": 1,\n        "date_modified_gmt": "2019-02-20 11:54:14"\n    },\n    "twentyseventeen::panel_1": {\n        "starter_content": true,\n        "value": 13,\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2019-02-20 11:54:14"\n    },\n    "twentyseventeen::panel_2": {\n        "starter_content": true,\n        "value": 10,\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2019-02-20 11:54:14"\n    },\n    "twentyseventeen::panel_3": {\n        "starter_content": true,\n        "value": 12,\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2019-02-20 11:54:14"\n    },\n    "twentyseventeen::panel_4": {\n        "starter_content": true,\n        "value": 11,\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2019-02-20 11:54:14"\n    },\n    "old_sidebars_widgets_data": {\n        "value": {\n            "wp_inactive_widgets": [],\n            "sidebar-1": [\n                "text-2",\n                "search-3",\n                "text-3"\n            ],\n            "sidebar-2": [\n                "text-4"\n            ],\n            "sidebar-3": [\n                "text-5",\n                "search-4"\n            ]\n        },\n        "type": "global_variable",\n        "user_id": 1,\n        "date_modified_gmt": "2019-02-20 11:54:14"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '84580f35-713a-499e-874b-13c5383d144d', '', '', '2019-02-20 11:56:50', '2019-02-20 11:56:50', '', 0, 'http://localhost/MyClub/?p=14', 0, 'customize_changeset', '', 0),
(15, 1, '2019-02-20 11:56:50', '2019-02-20 11:56:50', 'Welcome to your site! This is your homepage, which is what most visitors will see when they come to your site for the first time.', 'Home', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2019-02-20 11:56:50', '2019-02-20 11:56:50', '', 9, 'http://localhost/MyClub/2019/02/20/9-revision-v1/', 0, 'revision', '', 0),
(16, 1, '2019-02-20 11:56:50', '2019-02-20 11:56:50', 'You might be an artist who would like to introduce yourself and your work here or maybe you&rsquo;re a business with a mission to describe.', 'About', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2019-02-20 11:56:50', '2019-02-20 11:56:50', '', 10, 'http://localhost/MyClub/2019/02/20/10-revision-v1/', 0, 'revision', '', 0),
(17, 1, '2019-02-20 11:56:50', '2019-02-20 11:56:50', 'This is a page with some basic contact information, such as an address and phone number. You might also try a plugin to add a contact form.', 'Contact', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2019-02-20 11:56:50', '2019-02-20 11:56:50', '', 11, 'http://localhost/MyClub/2019/02/20/11-revision-v1/', 0, 'revision', '', 0),
(18, 1, '2019-02-20 11:56:50', '2019-02-20 11:56:50', '', 'Blog', '', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2019-02-20 11:56:50', '2019-02-20 11:56:50', '', 12, 'http://localhost/MyClub/2019/02/20/12-revision-v1/', 0, 'revision', '', 0),
(19, 1, '2019-02-20 11:56:50', '2019-02-20 11:56:50', 'This is an example of a homepage section. Homepage sections can be any page other than the homepage itself, including the page that shows your latest blog posts.', 'A homepage section', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2019-02-20 11:56:50', '2019-02-20 11:56:50', '', 13, 'http://localhost/MyClub/2019/02/20/13-revision-v1/', 0, 'revision', '', 0),
(186, 1, '2019-02-21 00:23:25', '2019-02-21 00:23:25', '{\n    "nav_menu_item[65]": {\n        "value": {\n            "menu_item_parent": 0,\n            "object_id": 65,\n            "object": "custom",\n            "type": "custom",\n            "type_label": "Custom Link",\n            "title": "Team",\n            "url": "http://localhost/MyClub",\n            "target": "",\n            "attr_title": "",\n            "description": "",\n            "classes": "",\n            "xfn": "",\n            "nav_menu_term_id": 5,\n            "position": 2,\n            "status": "publish",\n            "original_title": "",\n            "_invalid": false\n        },\n        "type": "nav_menu_item",\n        "user_id": 1,\n        "date_modified_gmt": "2019-02-21 00:23:25"\n    },\n    "nav_menu_item[-4922708093235153000]": {\n        "value": {\n            "object_id": 133,\n            "object": "page",\n            "menu_item_parent": 0,\n            "position": 1,\n            "type": "post_type",\n            "title": "About Club",\n            "url": "http://localhost/MyClub/aboutclub/",\n            "target": "",\n            "attr_title": "",\n            "description": "",\n            "classes": "",\n            "xfn": "",\n            "status": "publish",\n            "original_title": "aboutclub",\n            "nav_menu_term_id": 5,\n            "_invalid": false,\n            "type_label": "Page"\n        },\n        "type": "nav_menu_item",\n        "user_id": 1,\n        "date_modified_gmt": "2019-02-21 00:23:25"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'db1d58f8-7682-40cb-92bb-d1e7f68934b0', '', '', '2019-02-21 00:23:25', '2019-02-21 00:23:25', '', 0, 'http://localhost/MyClub/2019/02/21/db1d58f8-7682-40cb-92bb-d1e7f68934b0/', 0, 'customize_changeset', '', 0),
(185, 1, '2019-02-21 00:22:31', '2019-02-21 00:22:31', ' ', '', '', 'publish', 'closed', 'closed', '', '185', '', '', '2019-02-21 00:22:31', '2019-02-21 00:22:31', '', 0, 'http://localhost/MyClub/2019/02/21/185/', 2, 'nav_menu_item', '', 0),
(24, 1, '2019-02-20 11:56:50', '2019-02-20 11:56:50', '', 'Yelp', '', 'publish', 'closed', 'closed', '', 'yelp', '', '', '2019-02-20 11:56:50', '2019-02-20 11:56:50', '', 0, 'http://localhost/MyClub/2019/02/20/yelp/', 0, 'nav_menu_item', '', 0),
(25, 1, '2019-02-20 11:56:50', '2019-02-20 11:56:50', '', 'Facebook', '', 'publish', 'closed', 'closed', '', 'facebook', '', '', '2019-02-20 11:56:50', '2019-02-20 11:56:50', '', 0, 'http://localhost/MyClub/2019/02/20/facebook/', 1, 'nav_menu_item', '', 0),
(26, 1, '2019-02-20 11:56:50', '2019-02-20 11:56:50', '', 'Twitter', '', 'publish', 'closed', 'closed', '', 'twitter', '', '', '2019-02-20 11:56:50', '2019-02-20 11:56:50', '', 0, 'http://localhost/MyClub/2019/02/20/twitter/', 2, 'nav_menu_item', '', 0),
(27, 1, '2019-02-20 11:56:50', '2019-02-20 11:56:50', '', 'Instagram', '', 'publish', 'closed', 'closed', '', 'instagram', '', '', '2019-02-20 11:56:50', '2019-02-20 11:56:50', '', 0, 'http://localhost/MyClub/2019/02/20/instagram/', 3, 'nav_menu_item', '', 0),
(28, 1, '2019-02-20 11:56:50', '2019-02-20 11:56:50', '', 'Email', '', 'publish', 'closed', 'closed', '', 'email', '', '', '2019-02-20 11:56:50', '2019-02-20 11:56:50', '', 0, 'http://localhost/MyClub/2019/02/20/email/', 4, 'nav_menu_item', '', 0),
(29, 1, '2019-02-20 11:57:06', '2019-02-20 11:57:06', '{\n    "nav_menu_item[21]": {\n        "value": {\n            "object_id": 10,\n            "object": "page",\n            "menu_item_parent": 0,\n            "position": 1,\n            "type": "post_type",\n            "title": "Team",\n            "url": "",\n            "target": "",\n            "attr_title": "",\n            "description": "",\n            "classes": "",\n            "xfn": "",\n            "status": "publish",\n            "original_title": "About",\n            "nav_menu_term_id": 2,\n            "_invalid": false,\n            "type_label": "Page"\n        },\n        "type": "nav_menu_item",\n        "user_id": 1,\n        "date_modified_gmt": "2019-02-20 11:57:06"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'e8e4e22c-b6d1-4723-9bbd-c0ee0ddaf218', '', '', '2019-02-20 11:57:06', '2019-02-20 11:57:06', '', 0, 'http://localhost/MyClub/2019/02/20/e8e4e22c-b6d1-4723-9bbd-c0ee0ddaf218/', 0, 'customize_changeset', '', 0),
(30, 1, '2019-02-20 11:59:48', '2019-02-20 11:59:48', '{\n    "blogdescription": {\n        "value": "",\n        "type": "option",\n        "user_id": 1,\n        "date_modified_gmt": "2019-02-20 11:57:45"\n    },\n    "blogname": {\n        "value": "Liverpool F.C.",\n        "type": "option",\n        "user_id": 1,\n        "date_modified_gmt": "2019-02-20 11:59:00"\n    },\n    "twentyseventeen::header_textcolor": {\n        "value": "",\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2019-02-20 11:59:48"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'eb19a818-82a1-4fc0-9a40-f119929f1044', '', '', '2019-02-20 11:59:48', '2019-02-20 11:59:48', '', 0, 'http://localhost/MyClub/?p=30', 0, 'customize_changeset', '', 0),
(31, 1, '2019-02-20 12:01:22', '2019-02-20 12:01:22', '', 'liverpool-fc-logo-027452BE2B-seeklogo.com', '', 'inherit', 'open', 'closed', '', 'liverpool-fc-logo-027452be2b-seeklogo-com', '', '', '2019-02-20 12:01:22', '2019-02-20 12:01:22', '', 0, 'http://localhost/MyClub/wp-content/uploads/2019/02/liverpool-fc-logo-027452BE2B-seeklogo.com_.jpg', 0, 'attachment', 'image/jpeg', 0),
(32, 1, '2019-02-20 12:01:29', '2019-02-20 12:01:29', 'http://localhost/MyClub/wp-content/uploads/2019/02/cropped-liverpool-fc-logo-027452BE2B-seeklogo.com_.jpg', 'cropped-liverpool-fc-logo-027452BE2B-seeklogo.com_.jpg', '', 'inherit', 'open', 'closed', '', 'cropped-liverpool-fc-logo-027452be2b-seeklogo-com_-jpg', '', '', '2019-02-20 12:01:29', '2019-02-20 12:01:29', '', 0, 'http://localhost/MyClub/wp-content/uploads/2019/02/cropped-liverpool-fc-logo-027452BE2B-seeklogo.com_.jpg', 0, 'attachment', 'image/jpeg', 0),
(33, 1, '2019-02-20 12:01:32', '2019-02-20 12:01:32', '{\n    "twentyseventeen::custom_logo": {\n        "value": 32,\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2019-02-20 12:01:32"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '95b29f04-77b9-4e3e-bf0e-68d93cb84ddc', '', '', '2019-02-20 12:01:32', '2019-02-20 12:01:32', '', 0, 'http://localhost/MyClub/2019/02/20/95b29f04-77b9-4e3e-bf0e-68d93cb84ddc/', 0, 'customize_changeset', '', 0),
(34, 1, '2019-02-20 12:01:47', '2019-02-20 12:01:47', 'http://localhost/MyClub/wp-content/uploads/2019/02/cropped-liverpool-fc-logo-027452BE2B-seeklogo.com_-1.jpg', 'cropped-liverpool-fc-logo-027452BE2B-seeklogo.com_-1.jpg', '', 'inherit', 'open', 'closed', '', 'cropped-liverpool-fc-logo-027452be2b-seeklogo-com_-1-jpg', '', '', '2019-02-20 12:01:47', '2019-02-20 12:01:47', '', 0, 'http://localhost/MyClub/wp-content/uploads/2019/02/cropped-liverpool-fc-logo-027452BE2B-seeklogo.com_-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(35, 1, '2019-02-20 12:01:51', '2019-02-20 12:01:51', '{\n    "site_icon": {\n        "value": 34,\n        "type": "option",\n        "user_id": 1,\n        "date_modified_gmt": "2019-02-20 12:01:51"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '6c0d4855-08ec-49da-9956-59723d5e0267', '', '', '2019-02-20 12:01:51', '2019-02-20 12:01:51', '', 0, 'http://localhost/MyClub/2019/02/20/6c0d4855-08ec-49da-9956-59723d5e0267/', 0, 'customize_changeset', '', 0),
(36, 1, '2019-02-20 12:02:15', '0000-00-00 00:00:00', '{\n    "twentyseventeen::header_image": {\n        "value": "remove-header",\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2019-02-20 12:02:15"\n    },\n    "twentyseventeen::header_image_data": {\n        "value": "remove-header",\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2019-02-20 12:02:15"\n    }\n}', '', '', 'auto-draft', 'closed', 'closed', '', '0ed7b16d-dbb2-4867-9643-78a540606707', '', '', '2019-02-20 12:02:15', '0000-00-00 00:00:00', '', 0, 'http://localhost/MyClub/?p=36', 0, 'customize_changeset', '', 0),
(37, 1, '2019-02-20 12:02:59', '2019-02-20 12:02:59', '', 's-l300', '', 'inherit', 'open', 'closed', '', 's-l300', '', '', '2019-02-20 12:02:59', '2019-02-20 12:02:59', '', 0, 'http://localhost/MyClub/wp-content/uploads/2019/02/s-l300.jpg', 0, 'attachment', 'image/jpeg', 0),
(38, 1, '2019-02-20 12:03:05', '2019-02-20 12:03:05', '', 'cropped-s-l300.jpg', '', 'inherit', 'open', 'closed', '', 'cropped-s-l300-jpg', '', '', '2019-02-20 12:03:05', '2019-02-20 12:03:05', '', 0, 'http://localhost/MyClub/wp-content/uploads/2019/02/cropped-s-l300.jpg', 0, 'attachment', 'image/jpeg', 0),
(39, 1, '2019-02-20 12:04:40', '2019-02-20 12:04:40', '{\n    "twentyseventeen::header_image": {\n        "value": "http://localhost/MyClub/wp-content/uploads/2019/02/cropped-Mohamed-Salah-wallpaper-hd-photo-liverpool-football-player-open-arms-april-2018-red-shirt.jpg",\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2019-02-20 12:04:40"\n    },\n    "twentyseventeen::header_image_data": {\n        "value": {\n            "url": "http://localhost/MyClub/wp-content/uploads/2019/02/cropped-Mohamed-Salah-wallpaper-hd-photo-liverpool-football-player-open-arms-april-2018-red-shirt.jpg",\n            "thumbnail_url": "http://localhost/MyClub/wp-content/uploads/2019/02/cropped-Mohamed-Salah-wallpaper-hd-photo-liverpool-football-player-open-arms-april-2018-red-shirt.jpg",\n            "timestamp": 1550664276731,\n            "attachment_id": 41,\n            "width": 2000,\n            "height": 1223\n        },\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2019-02-20 12:04:40"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '6e048410-820c-4ca3-9a93-13b12642f0c3', '', '', '2019-02-20 12:04:40', '2019-02-20 12:04:40', '', 0, 'http://localhost/MyClub/?p=39', 0, 'customize_changeset', '', 0),
(40, 1, '2019-02-20 12:04:18', '2019-02-20 12:04:18', '', 'Mohamed-Salah-wallpaper-hd-photo-liverpool-football-player-open-arms-april-2018-red-shirt', '', 'inherit', 'open', 'closed', '', 'mohamed-salah-wallpaper-hd-photo-liverpool-football-player-open-arms-april-2018-red-shirt', '', '', '2019-02-20 12:04:18', '2019-02-20 12:04:18', '', 0, 'http://localhost/MyClub/wp-content/uploads/2019/02/Mohamed-Salah-wallpaper-hd-photo-liverpool-football-player-open-arms-april-2018-red-shirt.jpg', 0, 'attachment', 'image/jpeg', 0),
(41, 1, '2019-02-20 12:04:36', '2019-02-20 12:04:36', '', 'cropped-Mohamed-Salah-wallpaper-hd-photo-liverpool-football-player-open-arms-april-2018-red-shirt.jpg', '', 'inherit', 'open', 'closed', '', 'cropped-mohamed-salah-wallpaper-hd-photo-liverpool-football-player-open-arms-april-2018-red-shirt-jpg', '', '', '2019-02-20 12:04:36', '2019-02-20 12:04:36', '', 0, 'http://localhost/MyClub/wp-content/uploads/2019/02/cropped-Mohamed-Salah-wallpaper-hd-photo-liverpool-football-player-open-arms-april-2018-red-shirt.jpg', 0, 'attachment', 'image/jpeg', 0),
(49, 1, '2019-02-20 12:17:57', '2019-02-20 12:17:57', '<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Our website address is: http://localhost/MyClub.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What personal data we collect and why we collect it</h2><!-- /wp:heading --><!-- wp:heading {"level":3} --><h3>Comments</h3><!-- /wp:heading --><!-- wp:paragraph --><p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading {"level":3} --><h3>Media</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading {"level":3} --><h3>Contact forms</h3><!-- /wp:heading --><!-- wp:heading {"level":3} --><h3>Cookies</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you have an account and you log in to this site, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading {"level":3} --><h3>Embedded content from other websites</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading {"level":3} --><h3>Analytics</h3><!-- /wp:heading --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where we send your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Your contact information</h2><!-- /wp:heading --><!-- wp:heading --><h2>Additional information</h2><!-- /wp:heading --><!-- wp:heading {"level":3} --><h3>How we protect your data</h3><!-- /wp:heading --><!-- wp:heading {"level":3} --><h3>What data breach procedures we have in place</h3><!-- /wp:heading --><!-- wp:heading {"level":3} --><h3>What third parties we receive data from</h3><!-- /wp:heading --><!-- wp:heading {"level":3} --><h3>What automated decision making and/or profiling we do with user data</h3><!-- /wp:heading --><!-- wp:heading {"level":3} --><h3>Industry regulatory disclosure requirements</h3><!-- /wp:heading -->', 'Privacy Policy', '', 'inherit', 'closed', 'closed', '', '3-revision-v1', '', '', '2019-02-20 12:17:57', '2019-02-20 12:17:57', '', 3, 'http://localhost/MyClub/2019/02/20/3-revision-v1/', 0, 'revision', '', 0),
(43, 1, '2019-02-20 12:07:34', '2019-02-20 12:07:34', '<!-- wp:paragraph -->\n<p>\n\nLiverpool Football Club is a professional football club in Liverpool, England, that competes in the Premier League, the top tier of English&nbsp;\n\n</p>\n<!-- /wp:paragraph -->', 'Home', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2019-02-20 12:07:34', '2019-02-20 12:07:34', '', 9, 'http://localhost/MyClub/2019/02/20/9-revision-v1/', 0, 'revision', '', 0),
(45, 1, '2019-02-20 12:08:19', '2019-02-20 12:08:19', '<!-- wp:paragraph -->\n<p>\n\nLiverpool Football Club is a professional football club in Liverpool, England, that competes in the Premier League, the top tier of English&nbsp;\n\n</p>\n<!-- /wp:paragraph -->', 'About', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2019-02-20 12:08:19', '2019-02-20 12:08:19', '', 9, 'http://localhost/MyClub/2019/02/20/9-revision-v1/', 0, 'revision', '', 0),
(46, 1, '2019-02-20 12:11:11', '2019-02-20 12:11:11', '', 'mo-salah-statue-sculptor-hits-back-after-online-mockery-136430801306802601-181105201120', '', 'inherit', 'open', 'closed', '', 'mo-salah-statue-sculptor-hits-back-after-online-mockery-136430801306802601-181105201120', '', '', '2019-02-20 12:11:11', '2019-02-20 12:11:11', '', 0, 'http://localhost/MyClub/wp-content/uploads/2019/02/mo-salah-statue-sculptor-hits-back-after-online-mockery-136430801306802601-181105201120.jpg', 0, 'attachment', 'image/jpeg', 0),
(47, 1, '2019-02-20 12:11:24', '2019-02-20 12:11:24', '', 'cropped-mo-salah-statue-sculptor-hits-back-after-online-mockery-136430801306802601-181105201120.jpg', '', 'inherit', 'open', 'closed', '', 'cropped-mo-salah-statue-sculptor-hits-back-after-online-mockery-136430801306802601-181105201120-jpg', '', '', '2019-02-20 12:11:24', '2019-02-20 12:11:24', '', 0, 'http://localhost/MyClub/wp-content/uploads/2019/02/cropped-mo-salah-statue-sculptor-hits-back-after-online-mockery-136430801306802601-181105201120.jpg', 0, 'attachment', 'image/jpeg', 0),
(48, 1, '2019-02-20 12:15:28', '2019-02-20 12:15:28', '{\n    "twentyseventeen::header_image": {\n        "value": "http://localhost/MyClub/wp-content/uploads/2019/02/cropped-mo-salah-statue-sculptor-hits-back-after-online-mockery-136430801306802601-181105201120.jpg",\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2019-02-20 12:11:29"\n    },\n    "twentyseventeen::header_image_data": {\n        "value": {\n            "url": "http://localhost/MyClub/wp-content/uploads/2019/02/cropped-mo-salah-statue-sculptor-hits-back-after-online-mockery-136430801306802601-181105201120.jpg",\n            "thumbnail_url": "http://localhost/MyClub/wp-content/uploads/2019/02/cropped-mo-salah-statue-sculptor-hits-back-after-online-mockery-136430801306802601-181105201120.jpg",\n            "timestamp": 1550664684844,\n            "attachment_id": 47,\n            "width": 2000,\n            "height": 1199\n        },\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2019-02-20 12:11:29"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '10fde46f-802b-487e-b428-3d8686db8451', '', '', '2019-02-20 12:15:28', '2019-02-20 12:15:28', '', 0, 'http://localhost/MyClub/?p=48', 0, 'customize_changeset', '', 0),
(50, 1, '2019-02-20 12:18:38', '0000-00-00 00:00:00', '{\n    "show_on_front": {\n        "value": "page",\n        "type": "option",\n        "user_id": 1,\n        "date_modified_gmt": "2019-02-20 12:18:38"\n    }\n}', '', '', 'auto-draft', 'closed', 'closed', '', '68c95630-c6d9-4153-a309-2f7c02dbbfbb', '', '', '2019-02-20 12:18:38', '0000-00-00 00:00:00', '', 0, 'http://localhost/MyClub/?p=50', 0, 'customize_changeset', '', 0),
(51, 1, '2019-02-20 12:20:21', '2019-02-20 12:20:21', '<!-- wp:paragraph -->\n<p> Liverpool Football Club is a professional football club in Liverpool, England, that competes in the Premier League, the top tier of English football.<br></p>\n<!-- /wp:paragraph -->', 'About', '', 'trash', 'closed', 'closed', '', 'about-2__trashed', '', '', '2019-02-20 12:21:49', '2019-02-20 12:21:49', '', 0, 'http://localhost/MyClub/?page_id=51', 0, 'page', '', 0),
(52, 1, '2019-02-20 12:19:25', '2019-02-20 12:19:25', '<!-- wp:paragraph -->\n<p> Liverpool Football Club is a professional football club in Liverpool, England, that competes in the Premier League, the top tier of English football.<br></p>\n<!-- /wp:paragraph -->', 'About', '', 'inherit', 'closed', 'closed', '', '51-revision-v1', '', '', '2019-02-20 12:19:25', '2019-02-20 12:19:25', '', 51, 'http://localhost/MyClub/2019/02/20/51-revision-v1/', 0, 'revision', '', 0),
(53, 1, '2019-02-20 12:22:17', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-02-20 12:22:17', '0000-00-00 00:00:00', '', 0, 'http://localhost/MyClub/?p=53', 0, 'post', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(54, 1, '2019-02-20 12:25:51', '2019-02-20 12:25:51', '<!-- wp:paragraph -->\n<p> Liverpool Football Club is a professional football club in Liverpool, England, that competes in the Premier League, the top tier of English football<br></p>\n<!-- /wp:paragraph -->', 'About', '', 'trash', 'closed', 'closed', '', 'about__trashed-2', '', '', '2019-02-20 23:19:47', '2019-02-20 23:19:47', '', 0, 'http://localhost/MyClub/?page_id=54', 0, 'page', '', 0),
(55, 1, '2019-02-20 12:25:51', '2019-02-20 12:25:51', '<!-- wp:paragraph -->\n<p> Liverpool Football Club is a professional football club in Liverpool, England, that competes in the Premier League, the top tier of English football<br></p>\n<!-- /wp:paragraph -->', 'About', '', 'inherit', 'closed', 'closed', '', '54-revision-v1', '', '', '2019-02-20 12:25:51', '2019-02-20 12:25:51', '', 54, 'http://localhost/MyClub/2019/02/20/54-revision-v1/', 0, 'revision', '', 0),
(56, 1, '2019-02-20 12:27:35', '2019-02-20 12:27:35', '{\n    "widget_text[4]": {\n        "value": {\n            "encoded_serialized_instance": "YTo0OntzOjU6InRpdGxlIjtzOjA6IiI7czo0OiJ0ZXh0IjtzOjA6IiI7czo2OiJmaWx0ZXIiO2I6MTtzOjY6InZpc3VhbCI7YjoxO30=",\n            "title": "",\n            "is_widget_customizer_js_value": true,\n            "instance_hash_key": "f6a86f34a369dd9443d0c985f6799944"\n        },\n        "type": "option",\n        "user_id": 1,\n        "date_modified_gmt": "2019-02-20 12:27:35"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '5e5180e6-be6e-4eb2-8d2a-e317fc63f9c7', '', '', '2019-02-20 12:27:35', '2019-02-20 12:27:35', '', 0, 'http://localhost/MyClub/2019/02/20/5e5180e6-be6e-4eb2-8d2a-e317fc63f9c7/', 0, 'customize_changeset', '', 0),
(57, 1, '2019-02-20 12:27:53', '2019-02-20 12:27:53', '{\n    "widget_text[5]": {\n        "value": {\n            "encoded_serialized_instance": "YTo0OntzOjU6InRpdGxlIjtzOjA6IiI7czo0OiJ0ZXh0IjtzOjA6IiI7czo2OiJmaWx0ZXIiO2I6MTtzOjY6InZpc3VhbCI7YjoxO30=",\n            "title": "",\n            "is_widget_customizer_js_value": true,\n            "instance_hash_key": "f6a86f34a369dd9443d0c985f6799944"\n        },\n        "type": "option",\n        "user_id": 1,\n        "date_modified_gmt": "2019-02-20 12:27:53"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'e0c7be0d-0025-47c0-a83e-2d12cdc8a9df', '', '', '2019-02-20 12:27:53', '2019-02-20 12:27:53', '', 0, 'http://localhost/MyClub/2019/02/20/e0c7be0d-0025-47c0-a83e-2d12cdc8a9df/', 0, 'customize_changeset', '', 0),
(58, 1, '2019-02-20 12:28:12', '2019-02-20 12:28:12', '{\n    "sidebars_widgets[wp_inactive_widgets]": {\n        "value": [\n            "search-4"\n        ],\n        "type": "option",\n        "user_id": 1,\n        "date_modified_gmt": "2019-02-20 12:28:12"\n    },\n    "sidebars_widgets[sidebar-3]": {\n        "value": [\n            "text-5"\n        ],\n        "type": "option",\n        "user_id": 1,\n        "date_modified_gmt": "2019-02-20 12:28:12"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '77e909f4-0200-4a55-a202-5067f1396c09', '', '', '2019-02-20 12:28:12', '2019-02-20 12:28:12', '', 0, 'http://localhost/MyClub/2019/02/20/77e909f4-0200-4a55-a202-5067f1396c09/', 0, 'customize_changeset', '', 0),
(59, 1, '2019-02-20 12:30:42', '2019-02-20 12:30:42', '{\n    "twentyseventeen::nav_menu_locations[top]": {\n        "value": 0,\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2019-02-20 12:30:42"\n    },\n    "nav_menu[-1676501159589908500]": {\n        "value": false,\n        "type": "nav_menu",\n        "user_id": 1,\n        "date_modified_gmt": "2019-02-20 12:30:42"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '9d254131-492f-4b0c-9c29-e587d2f242e7', '', '', '2019-02-20 12:30:42', '2019-02-20 12:30:42', '', 0, 'http://localhost/MyClub/2019/02/20/9d254131-492f-4b0c-9c29-e587d2f242e7/', 0, 'customize_changeset', '', 0),
(60, 1, '2019-02-20 12:35:13', '2019-02-20 12:35:13', '{\n    "twentyseventeen::nav_menu_locations[top]": {\n        "value": -7837852125226310000,\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2019-02-20 12:34:25"\n    },\n    "nav_menu[-7837852125226310000]": {\n        "value": {\n            "name": "About",\n            "description": "",\n            "parent": 0,\n            "auto_add": false\n        },\n        "type": "nav_menu",\n        "user_id": 1,\n        "date_modified_gmt": "2019-02-20 12:34:25"\n    },\n    "nav_menu_item[-2916120583980271600]": {\n        "value": false,\n        "type": "nav_menu_item",\n        "user_id": 1,\n        "date_modified_gmt": "2019-02-20 12:35:13"\n    },\n    "nav_menu_item[-5186839472573731000]": {\n        "value": {\n            "object_id": 0,\n            "object": "custom",\n            "menu_item_parent": 0,\n            "position": 2,\n            "type": "custom",\n            "title": "About",\n            "url": "http://http://localhost/MyClub/about",\n            "target": "",\n            "attr_title": "",\n            "description": "",\n            "classes": "",\n            "xfn": "",\n            "status": "publish",\n            "original_title": "About",\n            "nav_menu_term_id": -7837852125226310000,\n            "_invalid": false,\n            "type_label": "Custom Link"\n        },\n        "type": "nav_menu_item",\n        "user_id": 1,\n        "date_modified_gmt": "2019-02-20 12:35:13"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '5e30feee-e029-4d2d-a8d5-b24ded238f29', '', '', '2019-02-20 12:35:13', '2019-02-20 12:35:13', '', 0, 'http://localhost/MyClub/?p=60', 0, 'customize_changeset', '', 0),
(61, 1, '2019-02-20 12:35:13', '2019-02-20 12:35:13', '', 'About', '', 'publish', 'closed', 'closed', '', 'about-2', '', '', '2019-02-20 12:35:46', '2019-02-20 12:35:46', '', 0, 'http://localhost/MyClub/2019/02/20/about-2/', 1, 'nav_menu_item', '', 0),
(62, 1, '2019-02-20 12:35:46', '2019-02-20 12:35:46', '{\n    "nav_menu_item[61]": {\n        "value": {\n            "menu_item_parent": 0,\n            "object_id": 61,\n            "object": "custom",\n            "type": "custom",\n            "type_label": "Custom Link",\n            "title": "About",\n            "url": "/MyClub/about",\n            "target": "",\n            "attr_title": "",\n            "description": "",\n            "classes": "",\n            "xfn": "",\n            "nav_menu_term_id": 4,\n            "position": 1,\n            "status": "publish",\n            "original_title": "",\n            "_invalid": false\n        },\n        "type": "nav_menu_item",\n        "user_id": 1,\n        "date_modified_gmt": "2019-02-20 12:35:46"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '6b24db08-18e6-472f-bd8c-7e6fb5ad7ea9', '', '', '2019-02-20 12:35:46', '2019-02-20 12:35:46', '', 0, 'http://localhost/MyClub/2019/02/20/6b24db08-18e6-472f-bd8c-7e6fb5ad7ea9/', 0, 'customize_changeset', '', 0),
(63, 1, '2019-02-20 12:37:39', '2019-02-20 12:37:39', '{\n    "sidebars_widgets[sidebar-1]": {\n        "value": [],\n        "type": "option",\n        "user_id": 1,\n        "date_modified_gmt": "2019-02-20 12:37:39"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '2e497556-af94-4a49-9dfc-d7f4063d9cd5', '', '', '2019-02-20 12:37:39', '2019-02-20 12:37:39', '', 0, 'http://localhost/MyClub/2019/02/20/2e497556-af94-4a49-9dfc-d7f4063d9cd5/', 0, 'customize_changeset', '', 0),
(64, 1, '2019-02-20 12:40:19', '2019-02-20 12:40:19', '{\n    "twentyseventeen::nav_menu_locations[top]": {\n        "value": -8212803088527311000,\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2019-02-20 12:40:19"\n    },\n    "nav_menu[-8212803088527311000]": {\n        "value": {\n            "name": "Home",\n            "description": "",\n            "parent": 0,\n            "auto_add": false\n        },\n        "type": "nav_menu",\n        "user_id": 1,\n        "date_modified_gmt": "2019-02-20 12:40:19"\n    },\n    "nav_menu_item[-3357505685412571000]": {\n        "value": {\n            "object_id": 0,\n            "object": "",\n            "menu_item_parent": 0,\n            "position": 1,\n            "type": "custom",\n            "title": "Home",\n            "url": "http://localhost/MyClub",\n            "target": "",\n            "attr_title": "",\n            "description": "",\n            "classes": "",\n            "xfn": "",\n            "status": "publish",\n            "original_title": "Home",\n            "nav_menu_term_id": -8212803088527311000,\n            "_invalid": false,\n            "type_label": "Custom Link"\n        },\n        "type": "nav_menu_item",\n        "user_id": 1,\n        "date_modified_gmt": "2019-02-20 12:40:19"\n    },\n    "nav_menu_item[-670728683147970600]": {\n        "value": false,\n        "type": "nav_menu_item",\n        "user_id": 1,\n        "date_modified_gmt": "2019-02-20 12:40:19"\n    },\n    "nav_menu_item[-572529174831712260]": {\n        "value": {\n            "object_id": 54,\n            "object": "page",\n            "menu_item_parent": 0,\n            "position": 2,\n            "type": "post_type",\n            "title": "About",\n            "url": "http://localhost/MyClub/about/",\n            "target": "",\n            "attr_title": "/MyClub/about",\n            "description": "",\n            "classes": "",\n            "xfn": "",\n            "status": "publish",\n            "original_title": "About",\n            "nav_menu_term_id": -8212803088527311000,\n            "_invalid": false,\n            "type_label": "Page"\n        },\n        "type": "nav_menu_item",\n        "user_id": 1,\n        "date_modified_gmt": "2019-02-20 12:40:19"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '8fd9dc42-44ae-47aa-a818-8ae81c320c4f', '', '', '2019-02-20 12:40:19', '2019-02-20 12:40:19', '', 0, 'http://localhost/MyClub/2019/02/20/8fd9dc42-44ae-47aa-a818-8ae81c320c4f/', 0, 'customize_changeset', '', 0),
(65, 1, '2019-02-20 12:40:19', '2019-02-20 12:40:19', '', 'Teams', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2019-02-21 00:29:01', '2019-02-21 00:29:01', '', 0, 'http://localhost/MyClub/2019/02/20/home/', 2, 'nav_menu_item', '', 0),
(124, 1, '2019-02-20 23:25:10', '2019-02-20 23:25:10', '', 'about', '', 'trash', 'closed', 'closed', '', 'about__trashed-3', '', '', '2019-02-20 23:27:08', '2019-02-20 23:27:08', '', 0, 'http://localhost/MyClub/?page_id=124', 0, 'page', '', 0),
(69, 1, '2019-02-20 12:48:04', '2019-02-20 12:48:04', '<!-- wp:paragraph {"dropCap":true} -->\n<p class="has-drop-cap">Hello To  Liverpool F.C. Club<br></p>\n<!-- /wp:paragraph -->', 'Home', '', 'inherit', 'closed', 'closed', '', '1-autosave-v1', '', '', '2019-02-20 12:48:04', '2019-02-20 12:48:04', '', 1, 'http://localhost/MyClub/2019/02/20/1-autosave-v1/', 0, 'revision', '', 0),
(70, 1, '2019-02-20 12:47:06', '2019-02-20 12:47:06', '<!-- wp:paragraph {"dropCap":true} -->\n<p class="has-drop-cap">Welcome To  Liverpool F.C. <br></p>\n<!-- /wp:paragraph -->', 'Home', '', 'publish', 'open', 'open', '', 'home', '', '', '2019-02-20 12:47:06', '2019-02-20 12:47:06', '', 0, 'http://localhost/MyClub/?p=70', 0, 'post', '', 0),
(71, 1, '2019-02-20 12:46:44', '2019-02-20 12:46:44', '<!-- wp:paragraph {"dropCap":true} -->\n<p class="has-drop-cap">Welcome To  Liverpool F.C. <br></p>\n<!-- /wp:paragraph -->', 'Home', '', 'inherit', 'closed', 'closed', '', '70-revision-v1', '', '', '2019-02-20 12:46:44', '2019-02-20 12:46:44', '', 70, 'http://localhost/MyClub/2019/02/20/70-revision-v1/', 0, 'revision', '', 0),
(72, 1, '2019-02-20 15:21:35', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-02-20 15:21:35', '0000-00-00 00:00:00', '', 0, 'http://localhost/MyClub/?p=72', 0, 'post', '', 0),
(73, 1, '2019-02-20 15:22:05', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-02-20 15:22:05', '0000-00-00 00:00:00', '', 0, 'http://localhost/MyClub/?p=73', 0, 'post', '', 0),
(74, 1, '2019-02-20 15:25:55', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-02-20 15:25:55', '0000-00-00 00:00:00', '', 0, 'http://localhost/MyClub/?p=74', 0, 'post', '', 0),
(75, 1, '2019-02-20 16:35:50', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-02-20 16:35:50', '0000-00-00 00:00:00', '', 0, 'http://localhost/MyClub/?post_type=team&p=75', 0, 'team', '', 0),
(194, 1, '2019-02-21 01:59:00', '2019-02-21 01:59:00', '', 'Hadeel', '', 'trash', 'closed', 'closed', '', 'hadeel__trashed', '', '', '2019-02-21 02:24:15', '2019-02-21 02:24:15', '', 0, 'http://localhost/MyClub/?post_type=team&#038;p=194', 0, 'team', '', 0),
(195, 1, '2019-02-21 02:00:50', '2019-02-21 02:00:50', '', 'Hadeel', '', 'inherit', 'closed', 'closed', '', '194-autosave-v1', '', '', '2019-02-21 02:00:50', '2019-02-21 02:00:50', '', 194, 'http://localhost/MyClub/2019/02/21/194-autosave-v1/', 0, 'revision', '', 0),
(78, 1, '2019-02-20 16:37:58', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-02-20 16:37:58', '0000-00-00 00:00:00', '', 0, 'http://localhost/MyClub/?post_type=team&p=78', 0, 'team', '', 0),
(179, 1, '2019-02-21 00:07:51', '2019-02-21 00:07:51', '<!-- wp:paragraph -->\n<p>Hadeel</p>\n<!-- /wp:paragraph -->', 'aboutclub', '', 'inherit', 'closed', 'closed', '', '133-revision-v1', '', '', '2019-02-21 00:07:51', '2019-02-21 00:07:51', '', 133, 'http://localhost/MyClub/2019/02/21/133-revision-v1/', 0, 'revision', '', 0),
(182, 1, '2019-02-21 00:19:21', '2019-02-21 00:19:21', '<!-- wp:heading -->\n<h2>About Club Exmple Text</h2>\n<!-- /wp:heading -->', 'aboutclub', '', 'inherit', 'closed', 'closed', '', '133-revision-v1', '', '', '2019-02-21 00:19:21', '2019-02-21 00:19:21', '', 133, 'http://localhost/MyClub/2019/02/21/133-revision-v1/', 0, 'revision', '', 0),
(180, 1, '2019-02-21 00:08:05', '2019-02-21 00:08:05', '<!-- wp:paragraph {"align":"center"} -->\n<p style="text-align:center">Hadeel</p>\n<!-- /wp:paragraph -->', 'aboutclub', '', 'inherit', 'closed', 'closed', '', '133-revision-v1', '', '', '2019-02-21 00:08:05', '2019-02-21 00:08:05', '', 133, 'http://localhost/MyClub/2019/02/21/133-revision-v1/', 0, 'revision', '', 0),
(129, 1, '2019-02-20 23:30:54', '2019-02-20 23:30:54', '', 'about', '', 'trash', 'closed', 'closed', '', 'about__trashed-5', '', '', '2019-02-20 23:36:22', '2019-02-20 23:36:22', '', 0, 'http://localhost/MyClub/?page_id=129', 0, 'page', '', 0),
(130, 1, '2019-02-20 23:30:54', '2019-02-20 23:30:54', '', 'about', '', 'inherit', 'closed', 'closed', '', '129-revision-v1', '', '', '2019-02-20 23:30:54', '2019-02-20 23:30:54', '', 129, 'http://localhost/MyClub/2019/02/20/129-revision-v1/', 0, 'revision', '', 0),
(131, 1, '2019-02-20 23:36:33', '2019-02-20 23:36:33', '', 'about', '', 'trash', 'closed', 'closed', '', 'about__trashed-6', '', '', '2019-02-20 23:38:19', '2019-02-20 23:38:19', '', 0, 'http://localhost/MyClub/?page_id=131', 0, 'page', '', 0),
(132, 1, '2019-02-20 23:36:33', '2019-02-20 23:36:33', '', 'about', '', 'inherit', 'closed', 'closed', '', '131-revision-v1', '', '', '2019-02-20 23:36:33', '2019-02-20 23:36:33', '', 131, 'http://localhost/MyClub/2019/02/20/131-revision-v1/', 0, 'revision', '', 0),
(133, 1, '2019-02-20 23:38:28', '2019-02-20 23:38:28', '<!-- wp:heading -->\n<h2> Liverpool Football Club is a professional football club in Liverpool, England, that competes in the Premier League, the top tier of English football.<br></h2>\n<!-- /wp:heading -->', 'aboutclub', '', 'publish', 'closed', 'closed', '', 'aboutclub', '', '', '2019-02-21 00:21:47', '2019-02-21 00:21:47', '', 0, 'http://localhost/MyClub/?page_id=133', 0, 'page', '', 0),
(134, 1, '2019-02-20 23:38:28', '2019-02-20 23:38:28', '', 'aboutclub', '', 'inherit', 'closed', 'closed', '', '133-revision-v1', '', '', '2019-02-20 23:38:28', '2019-02-20 23:38:28', '', 133, 'http://localhost/MyClub/2019/02/20/133-revision-v1/', 0, 'revision', '', 0),
(126, 1, '2019-02-20 23:29:08', '2019-02-20 23:29:08', '', 'about', '', 'trash', 'closed', 'closed', '', 'about__trashed-4', '', '', '2019-02-20 23:30:00', '2019-02-20 23:30:00', '', 0, 'http://localhost/MyClub/?page_id=126', 0, 'page', '', 0),
(127, 1, '2019-02-20 23:29:08', '2019-02-20 23:29:08', '', 'about', '', 'inherit', 'closed', 'closed', '', '126-revision-v1', '', '', '2019-02-20 23:29:08', '2019-02-20 23:29:08', '', 126, 'http://localhost/MyClub/2019/02/20/126-revision-v1/', 0, 'revision', '', 0),
(128, 1, '2019-02-20 23:29:32', '2019-02-20 23:29:32', '', 'about', '', 'inherit', 'closed', 'closed', '', '126-autosave-v1', '', '', '2019-02-20 23:29:32', '2019-02-20 23:29:32', '', 126, 'http://localhost/MyClub/2019/02/20/126-autosave-v1/', 0, 'revision', '', 0),
(125, 1, '2019-02-20 23:24:41', '2019-02-20 23:24:41', '', 'about', '', 'inherit', 'closed', 'closed', '', '124-revision-v1', '', '', '2019-02-20 23:24:41', '2019-02-20 23:24:41', '', 124, 'http://localhost/MyClub/2019/02/20/124-revision-v1/', 0, 'revision', '', 0),
(122, 1, '2019-02-20 23:15:36', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-02-20 23:15:36', '0000-00-00 00:00:00', '', 0, 'http://localhost/MyClub/?post_type=team&p=122', 0, 'team', '', 0),
(123, 1, '2019-02-20 23:20:18', '2019-02-20 23:20:18', '{\n    "nav_menu_item[66]": {\n        "value": false,\n        "type": "nav_menu_item",\n        "user_id": 1,\n        "date_modified_gmt": "2019-02-20 23:20:18"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '0c96f2bf-86b5-458c-87a0-e0a5fad08014', '', '', '2019-02-20 23:20:18', '2019-02-20 23:20:18', '', 0, 'http://localhost/MyClub/2019/02/20/0c96f2bf-86b5-458c-87a0-e0a5fad08014/', 0, 'customize_changeset', '', 0),
(90, 1, '2019-02-20 17:06:33', '2019-02-20 17:06:33', '', 'Test', '', 'trash', 'closed', 'closed', '', 'test__trashed', '', '', '2019-02-20 17:07:24', '2019-02-20 17:07:24', '', 0, 'http://localhost/MyClub/?page_id=90', 0, 'page', '', 0),
(91, 1, '2019-02-20 17:06:33', '2019-02-20 17:06:33', '', 'Test', '', 'inherit', 'closed', 'closed', '', '90-revision-v1', '', '', '2019-02-20 17:06:33', '2019-02-20 17:06:33', '', 90, 'http://localhost/MyClub/2019/02/20/90-revision-v1/', 0, 'revision', '', 0),
(121, 1, '2019-02-20 23:15:24', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-02-20 23:15:24', '0000-00-00 00:00:00', '', 0, 'http://localhost/MyClub/?post_type=team&p=121', 0, 'team', '', 0),
(96, 1, '2019-02-20 17:19:16', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-02-20 17:19:16', '0000-00-00 00:00:00', '', 0, 'http://localhost/MyClub/?post_type=team&p=96', 0, 'team', '', 0),
(97, 1, '2019-02-20 17:19:34', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-02-20 17:19:34', '0000-00-00 00:00:00', '', 0, 'http://localhost/MyClub/?post_type=team&p=97', 0, 'team', '', 0),
(98, 1, '2019-02-20 17:19:42', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-02-20 17:19:42', '0000-00-00 00:00:00', '', 0, 'http://localhost/MyClub/?post_type=team&p=98', 0, 'team', '', 0),
(102, 1, '2019-02-20 17:20:13', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-02-20 17:20:13', '0000-00-00 00:00:00', '', 0, 'http://localhost/MyClub/?post_type=team&p=102', 0, 'team', '', 0),
(103, 1, '2019-02-20 17:20:48', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-02-20 17:20:48', '0000-00-00 00:00:00', '', 0, 'http://localhost/MyClub/?post_type=team&p=103', 0, 'team', '', 0),
(104, 1, '2019-02-20 17:20:53', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-02-20 17:20:53', '0000-00-00 00:00:00', '', 0, 'http://localhost/MyClub/?post_type=team&p=104', 0, 'team', '', 0),
(120, 1, '2019-02-20 23:09:35', '2019-02-20 23:09:35', '{\n    "nav_menu_item[65]": {\n        "value": {\n            "menu_item_parent": 0,\n            "object_id": 65,\n            "object": "custom",\n            "type": "custom",\n            "type_label": "Custom Link",\n            "title": "Team",\n            "url": "http://localhost/MyClub",\n            "target": "",\n            "attr_title": "",\n            "description": "",\n            "classes": "",\n            "xfn": "",\n            "nav_menu_term_id": 5,\n            "position": 2,\n            "status": "publish",\n            "original_title": "",\n            "_invalid": false\n        },\n        "type": "nav_menu_item",\n        "user_id": 1,\n        "date_modified_gmt": "2019-02-20 23:09:35"\n    },\n    "nav_menu_item[66]": {\n        "value": {\n            "menu_item_parent": 0,\n            "object_id": 54,\n            "object": "page",\n            "type": "post_type",\n            "type_label": "Page",\n            "url": "http://localhost/MyClub/about/",\n            "title": "",\n            "target": "",\n            "attr_title": "/MyClub/about",\n            "description": "",\n            "classes": "",\n            "xfn": "",\n            "nav_menu_term_id": 5,\n            "position": 1,\n            "status": "publish",\n            "original_title": "About",\n            "_invalid": false\n        },\n        "type": "nav_menu_item",\n        "user_id": 1,\n        "date_modified_gmt": "2019-02-20 23:09:35"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'ed8a1559-0faf-4650-959a-b1216ccae874', '', '', '2019-02-20 23:09:35', '2019-02-20 23:09:35', '', 0, 'http://localhost/MyClub/2019/02/20/ed8a1559-0faf-4650-959a-b1216ccae874/', 0, 'customize_changeset', '', 0),
(119, 1, '2019-02-20 22:56:40', '2019-02-20 22:56:40', '', 'HH', '', 'trash', 'closed', 'closed', '', 'hh__trashed', '', '', '2019-02-20 23:15:33', '2019-02-20 23:15:33', '', 0, 'http://localhost/MyClub/?post_type=team&#038;p=119', 0, 'team', '', 0),
(118, 1, '2019-02-20 22:55:23', '2019-02-20 22:55:23', '', 'Team', '', 'trash', 'closed', 'closed', '', 'team__trashed', '', '', '2019-02-20 22:55:45', '2019-02-20 22:55:45', '', 0, 'http://localhost/MyClub/?post_type=team&#038;p=118', 0, 'team', '', 0),
(111, 1, '2019-02-20 17:53:46', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-02-20 17:53:46', '0000-00-00 00:00:00', '', 0, 'http://localhost/MyClub/?post_type=team&p=111', 0, 'team', '', 0),
(112, 1, '2019-02-20 17:54:18', '2019-02-20 17:54:18', '', 'HA', '', 'trash', 'open', 'open', '', 'ha__trashed', '', '', '2019-02-20 23:15:33', '2019-02-20 23:15:33', '', 0, 'http://localhost/MyClub/?post_type=team&#038;p=112', 0, 'team', '', 0),
(113, 1, '2019-02-20 17:54:18', '2019-02-20 17:54:18', '', 'HA', '', 'inherit', 'closed', 'closed', '', '112-revision-v1', '', '', '2019-02-20 17:54:18', '2019-02-20 17:54:18', '', 112, 'http://localhost/MyClub/2019/02/20/112-revision-v1/', 0, 'revision', '', 0),
(114, 1, '2019-02-20 18:51:33', '2019-02-20 18:51:33', '', 'Soad', '', 'trash', 'open', 'open', '', 'soad__trashed', '', '', '2019-02-20 23:15:33', '2019-02-20 23:15:33', '', 0, 'http://localhost/MyClub/?post_type=team&#038;p=114', 0, 'team', '', 0),
(115, 1, '2019-02-20 18:51:33', '2019-02-20 18:51:33', '', 'Soad', '', 'inherit', 'closed', 'closed', '', '114-revision-v1', '', '', '2019-02-20 18:51:33', '2019-02-20 18:51:33', '', 114, 'http://localhost/MyClub/2019/02/20/114-revision-v1/', 0, 'revision', '', 0),
(116, 1, '2019-02-20 22:26:39', '2019-02-20 22:26:39', '', 'Team', '', 'trash', 'closed', 'closed', '', 'team__trashed', '', '', '2019-02-21 00:26:26', '2019-02-21 00:26:26', '', 0, 'http://localhost/MyClub/?page_id=116', 0, 'page', '', 0),
(117, 1, '2019-02-20 22:26:29', '2019-02-20 22:26:29', '', 'Team', '', 'inherit', 'closed', 'closed', '', '116-revision-v1', '', '', '2019-02-20 22:26:29', '2019-02-20 22:26:29', '', 116, 'http://localhost/MyClub/2019/02/20/116-revision-v1/', 0, 'revision', '', 0),
(183, 1, '2019-02-21 00:21:47', '2019-02-21 00:21:47', '<!-- wp:heading -->\n<h2> Liverpool Football Club is a professional football club in Liverpool, England, that competes in the Premier League, the top tier of English football.<br></h2>\n<!-- /wp:heading -->', 'aboutclub', '', 'inherit', 'closed', 'closed', '', '133-revision-v1', '', '', '2019-02-21 00:21:47', '2019-02-21 00:21:47', '', 133, 'http://localhost/MyClub/2019/02/21/133-revision-v1/', 0, 'revision', '', 0),
(184, 1, '2019-02-21 00:22:31', '2019-02-21 00:22:31', '{\n    "nav_menu_item[20]": {\n        "value": false,\n        "type": "nav_menu_item",\n        "user_id": 1,\n        "date_modified_gmt": "2019-02-21 00:22:31"\n    },\n    "nav_menu_item[21]": {\n        "value": false,\n        "type": "nav_menu_item",\n        "user_id": 1,\n        "date_modified_gmt": "2019-02-21 00:22:31"\n    },\n    "nav_menu_item[22]": {\n        "value": false,\n        "type": "nav_menu_item",\n        "user_id": 1,\n        "date_modified_gmt": "2019-02-21 00:22:31"\n    },\n    "nav_menu_item[23]": {\n        "value": false,\n        "type": "nav_menu_item",\n        "user_id": 1,\n        "date_modified_gmt": "2019-02-21 00:22:31"\n    },\n    "nav_menu_item[-6486023767315134000]": {\n        "value": {\n            "object_id": 133,\n            "object": "page",\n            "menu_item_parent": 0,\n            "position": 2,\n            "type": "post_type",\n            "title": "aboutclub",\n            "url": "http://localhost/MyClub/aboutclub/",\n            "target": "",\n            "attr_title": "",\n            "description": "",\n            "classes": "",\n            "xfn": "",\n            "status": "publish",\n            "original_title": "aboutclub",\n            "nav_menu_term_id": 2,\n            "_invalid": false,\n            "type_label": "Page"\n        },\n        "type": "nav_menu_item",\n        "user_id": 1,\n        "date_modified_gmt": "2019-02-21 00:22:31"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'ee7bbfd6-1946-4527-a59b-1180ae20369a', '', '', '2019-02-21 00:22:31', '2019-02-21 00:22:31', '', 0, 'http://localhost/MyClub/2019/02/21/ee7bbfd6-1946-4527-a59b-1180ae20369a/', 0, 'customize_changeset', '', 0),
(187, 1, '2019-02-21 00:23:25', '2019-02-21 00:23:25', '', 'About Club', '', 'publish', 'closed', 'closed', '', 'about-club', '', '', '2019-02-21 00:23:25', '2019-02-21 00:23:25', '', 0, 'http://localhost/MyClub/2019/02/21/about-club/', 1, 'nav_menu_item', '', 0),
(188, 1, '2019-02-21 00:26:06', '2019-02-21 00:26:06', '', 'Team', '', 'publish', 'closed', 'closed', '', 'team', '', '', '2019-02-21 00:26:46', '2019-02-21 00:26:46', '', 0, 'http://localhost/MyClub/?page_id=188', 0, 'page', '', 0),
(189, 1, '2019-02-21 00:26:06', '2019-02-21 00:26:06', '', 'Team', '', 'inherit', 'closed', 'closed', '', '188-revision-v1', '', '', '2019-02-21 00:26:06', '2019-02-21 00:26:06', '', 188, 'http://localhost/MyClub/2019/02/21/188-revision-v1/', 0, 'revision', '', 0),
(190, 1, '2019-02-21 00:27:54', '2019-02-21 00:27:54', '', 'Beginners​ ​team', '', 'trash', 'closed', 'closed', '', 'beginners%e2%80%8b-%e2%80%8bteam__trashed', '', '', '2019-02-21 02:24:15', '2019-02-21 02:24:15', '', 0, 'http://localhost/MyClub/?post_type=team&#038;p=190', 0, 'team', '', 0),
(191, 1, '2019-02-21 00:28:09', '2019-02-21 00:28:09', '', 'Intermediate​ ​team', '', 'trash', 'closed', 'closed', '', 'intermediate%e2%80%8b-%e2%80%8bteam__trashed', '', '', '2019-02-21 02:24:15', '2019-02-21 02:24:15', '', 0, 'http://localhost/MyClub/?post_type=team&#038;p=191', 0, 'team', '', 0),
(192, 1, '2019-02-21 00:28:27', '2019-02-21 00:28:27', '', 'professionals​ ​team', '', 'trash', 'closed', 'closed', '', 'professionals%e2%80%8b-%e2%80%8bteam__trashed', '', '', '2019-02-21 02:24:15', '2019-02-21 02:24:15', '', 0, 'http://localhost/MyClub/?post_type=team&#038;p=192', 0, 'team', '', 0),
(193, 1, '2019-02-21 00:29:01', '2019-02-21 00:29:01', '{\n    "nav_menu_item[65]": {\n        "value": {\n            "menu_item_parent": 0,\n            "object_id": 65,\n            "object": "custom",\n            "type": "custom",\n            "type_label": "Custom Link",\n            "title": "Teams",\n            "url": "http://localhost/MyClub/team",\n            "target": "",\n            "attr_title": "",\n            "description": "",\n            "classes": "",\n            "xfn": "",\n            "nav_menu_term_id": 5,\n            "position": 2,\n            "status": "publish",\n            "original_title": "",\n            "_invalid": false\n        },\n        "type": "nav_menu_item",\n        "user_id": 1,\n        "date_modified_gmt": "2019-02-21 00:29:01"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'a45781aa-9c36-4097-b2c8-190abdb7408f', '', '', '2019-02-21 00:29:01', '2019-02-21 00:29:01', '', 0, 'http://localhost/MyClub/2019/02/21/a45781aa-9c36-4097-b2c8-190abdb7408f/', 0, 'customize_changeset', '', 0),
(196, 1, '2019-02-21 02:01:13', '2019-02-21 02:01:13', '', 'HHHA', '', 'trash', 'closed', 'closed', '', 'hhha__trashed', '', '', '2019-02-21 02:24:15', '2019-02-21 02:24:15', '', 0, 'http://localhost/MyClub/?post_type=team&#038;p=196', 0, 'team', '', 0),
(197, 1, '2019-02-21 02:26:26', '2019-02-21 02:26:26', '', 'HAd', '', 'trash', 'closed', 'closed', '', 'had__trashed', '', '', '2019-02-21 02:44:51', '2019-02-21 02:44:51', '', 0, 'http://localhost/MyClub/?post_type=player&#038;p=197', 0, 'player', '', 0),
(198, 1, '2019-02-21 02:46:06', '2019-02-21 02:46:06', '', 'HAS', '', 'trash', 'closed', 'closed', '', 'has__trashed', '', '', '2019-02-21 22:58:57', '2019-02-21 22:58:57', '', 0, 'http://localhost/MyClub/?post_type=player&#038;p=198', 0, 'player', '', 0),
(199, 1, '2019-02-21 12:21:01', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-02-21 12:21:01', '0000-00-00 00:00:00', '', 0, 'http://localhost/MyClub/?post_type=player&p=199', 0, 'player', '', 0),
(200, 1, '2019-02-21 12:21:29', '2019-02-21 12:21:29', '', 'Player 1', '', 'trash', 'closed', 'closed', '', 'player-1__trashed', '', '', '2019-02-21 22:58:57', '2019-02-21 22:58:57', '', 0, 'http://localhost/MyClub/?post_type=player&#038;p=200', 0, 'player', '', 0),
(201, 1, '2019-02-21 12:21:39', '2019-02-21 12:21:39', '', 'Player 2', '', 'trash', 'closed', 'closed', '', 'player-2__trashed', '', '', '2019-02-21 22:58:57', '2019-02-21 22:58:57', '', 0, 'http://localhost/MyClub/?post_type=player&#038;p=201', 0, 'player', '', 0),
(202, 1, '2019-02-21 12:21:49', '2019-02-21 12:21:49', '', 'Player 3', '', 'trash', 'closed', 'closed', '', 'player-3__trashed', '', '', '2019-02-21 22:58:57', '2019-02-21 22:58:57', '', 0, 'http://localhost/MyClub/?post_type=player&#038;p=202', 0, 'player', '', 0),
(203, 1, '2019-02-21 12:21:59', '2019-02-21 12:21:59', '', 'Player 4', '', 'trash', 'closed', 'closed', '', 'player-4__trashed', '', '', '2019-02-21 22:58:57', '2019-02-21 22:58:57', '', 0, 'http://localhost/MyClub/?post_type=player&#038;p=203', 0, 'player', '', 0),
(204, 1, '2019-02-21 12:22:07', '2019-02-21 12:22:07', '', 'Player 5', '', 'trash', 'closed', 'closed', '', 'player-5__trashed', '', '', '2019-02-21 22:58:57', '2019-02-21 22:58:57', '', 0, 'http://localhost/MyClub/?post_type=player&#038;p=204', 0, 'player', '', 0),
(205, 1, '2019-02-21 12:22:16', '2019-02-21 12:22:16', '', 'Player 6', '', 'trash', 'closed', 'closed', '', 'player-6__trashed', '', '', '2019-02-21 22:58:57', '2019-02-21 22:58:57', '', 0, 'http://localhost/MyClub/?post_type=player&#038;p=205', 0, 'player', '', 0),
(206, 1, '2019-02-21 22:06:06', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-02-21 22:06:06', '0000-00-00 00:00:00', '', 0, 'http://localhost/MyClub/?post_type=player&p=206', 0, 'player', '', 0),
(207, 1, '2019-02-21 22:11:02', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-02-21 22:11:02', '0000-00-00 00:00:00', '', 0, 'http://localhost/MyClub/?post_type=player&p=207', 0, 'player', '', 0),
(208, 1, '2019-02-21 22:13:10', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-02-21 22:13:10', '0000-00-00 00:00:00', '', 0, 'http://localhost/MyClub/?post_type=player&p=208', 0, 'player', '', 0),
(209, 1, '2019-02-21 22:14:10', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-02-21 22:14:10', '0000-00-00 00:00:00', '', 0, 'http://localhost/MyClub/?post_type=player&p=209', 0, 'player', '', 0),
(210, 1, '2019-02-21 22:15:38', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-02-21 22:15:38', '0000-00-00 00:00:00', '', 0, 'http://localhost/MyClub/?post_type=player&p=210', 0, 'player', '', 0),
(211, 1, '2019-02-21 22:22:39', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-02-21 22:22:39', '0000-00-00 00:00:00', '', 0, 'http://localhost/MyClub/?post_type=player&p=211', 0, 'player', '', 0),
(212, 1, '2019-02-21 22:23:57', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-02-21 22:23:57', '0000-00-00 00:00:00', '', 0, 'http://localhost/MyClub/?post_type=player&p=212', 0, 'player', '', 0),
(213, 1, '2019-02-21 22:24:11', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-02-21 22:24:11', '0000-00-00 00:00:00', '', 0, 'http://localhost/MyClub/?post_type=player&p=213', 0, 'player', '', 0),
(214, 1, '2019-02-21 22:24:40', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-02-21 22:24:40', '0000-00-00 00:00:00', '', 0, 'http://localhost/MyClub/?post_type=player&p=214', 0, 'player', '', 0),
(215, 0, '2019-02-21 22:25:57', '2019-02-21 22:25:57', '<!-- wp:paragraph -->\n<p>kkk</p>\n<!-- /wp:paragraph -->', '', '', 'trash', 'closed', 'closed', '', '215__trashed', '', '', '2019-02-21 22:34:05', '2019-02-21 22:34:05', '', 0, 'http://localhost/MyClub/?post_type=player&#038;p=215', 0, 'player', '', 0),
(216, 1, '2019-02-21 22:26:06', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-02-21 22:26:06', '0000-00-00 00:00:00', '', 0, 'http://localhost/MyClub/?post_type=player&p=216', 0, 'player', '', 0),
(217, 1, '2019-02-21 22:29:56', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-02-21 22:29:56', '0000-00-00 00:00:00', '', 0, 'http://localhost/MyClub/?post_type=player&p=217', 0, 'player', '', 0),
(218, 1, '2019-02-21 22:30:05', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-02-21 22:30:05', '0000-00-00 00:00:00', '', 0, 'http://localhost/MyClub/?post_type=player&p=218', 0, 'player', '', 0),
(219, 1, '2019-02-21 22:30:08', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-02-21 22:30:08', '0000-00-00 00:00:00', '', 0, 'http://localhost/MyClub/?post_type=player&p=219', 0, 'player', '', 0),
(220, 1, '2019-02-21 22:30:53', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-02-21 22:30:53', '0000-00-00 00:00:00', '', 0, 'http://localhost/MyClub/?post_type=player&p=220', 0, 'player', '', 0),
(221, 1, '2019-02-21 22:30:57', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-02-21 22:30:57', '0000-00-00 00:00:00', '', 0, 'http://localhost/MyClub/?post_type=player&p=221', 0, 'player', '', 0),
(222, 1, '2019-02-21 22:31:22', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-02-21 22:31:22', '0000-00-00 00:00:00', '', 0, 'http://localhost/MyClub/?post_type=player&p=222', 0, 'player', '', 0),
(223, 1, '2019-02-21 22:31:33', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-02-21 22:31:33', '0000-00-00 00:00:00', '', 0, 'http://localhost/MyClub/?post_type=player&p=223', 0, 'player', '', 0),
(224, 1, '2019-02-21 22:33:53', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-02-21 22:33:53', '0000-00-00 00:00:00', '', 0, 'http://localhost/MyClub/?post_type=player&p=224', 0, 'player', '', 0),
(225, 1, '2019-02-21 22:35:36', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-02-21 22:35:36', '0000-00-00 00:00:00', '', 0, 'http://localhost/MyClub/?post_type=player&p=225', 0, 'player', '', 0),
(226, 1, '2019-02-21 22:37:36', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-02-21 22:37:36', '0000-00-00 00:00:00', '', 0, 'http://localhost/MyClub/?post_type=player&p=226', 0, 'player', '', 0),
(227, 1, '2019-02-21 22:38:02', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-02-21 22:38:02', '0000-00-00 00:00:00', '', 0, 'http://localhost/MyClub/?post_type=player&p=227', 0, 'player', '', 0),
(228, 1, '2019-02-21 22:38:29', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-02-21 22:38:29', '0000-00-00 00:00:00', '', 0, 'http://localhost/MyClub/?post_type=player&p=228', 0, 'player', '', 0),
(229, 1, '2019-02-21 22:40:30', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-02-21 22:40:30', '0000-00-00 00:00:00', '', 0, 'http://localhost/MyClub/?post_type=player&p=229', 0, 'player', '', 0),
(230, 1, '2019-02-21 22:42:18', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-02-21 22:42:18', '0000-00-00 00:00:00', '', 0, 'http://localhost/MyClub/?post_type=player&p=230', 0, 'player', '', 0),
(231, 1, '2019-02-21 22:42:50', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-02-21 22:42:50', '0000-00-00 00:00:00', '', 0, 'http://localhost/MyClub/?post_type=player&p=231', 0, 'player', '', 0),
(232, 1, '2019-02-21 22:47:06', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-02-21 22:47:06', '0000-00-00 00:00:00', '', 0, 'http://localhost/MyClub/?post_type=player&p=232', 0, 'player', '', 0),
(233, 1, '2019-02-21 22:47:30', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-02-21 22:47:30', '0000-00-00 00:00:00', '', 0, 'http://localhost/MyClub/?post_type=player&p=233', 0, 'player', '', 0),
(234, 1, '2019-02-21 22:57:47', '2019-02-21 22:57:47', '', 'Hadeel', '', 'trash', 'closed', 'closed', '', 'hadeel__trashed', '', '', '2019-02-21 22:58:57', '2019-02-21 22:58:57', '', 0, 'http://localhost/MyClub/?post_type=player&#038;p=234', 0, 'player', '', 0),
(235, 1, '2019-02-21 22:58:23', '2019-02-21 22:58:23', '', 'Hadeel', '', 'inherit', 'closed', 'closed', '', '234-autosave-v1', '', '', '2019-02-21 22:58:23', '2019-02-21 22:58:23', '', 234, 'http://localhost/MyClub/2019/02/21/234-autosave-v1/', 0, 'revision', '', 0),
(236, 1, '2019-02-21 23:10:41', '2019-02-21 23:10:41', '', 'HAdeel', '', 'trash', 'closed', 'closed', '', 'hadeel__trashed-2', '', '', '2019-02-22 22:51:54', '2019-02-22 22:51:54', '', 0, 'http://localhost/MyClub/?post_type=player&#038;p=236', 0, 'player', '', 0),
(237, 1, '2019-02-22 22:09:16', '2019-02-22 22:09:16', '', 'HA', '', 'trash', 'closed', 'closed', '', 'ha__trashed', '', '', '2019-02-22 22:51:54', '2019-02-22 22:51:54', '', 0, 'http://localhost/MyClub/?post_type=player&#038;p=237', 0, 'player', '', 0),
(238, 1, '2019-02-21 23:04:02', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-02-21 23:04:02', '0000-00-00 00:00:00', '', 0, 'http://localhost/MyClub/?post_type=player&p=238', 0, 'player', '', 0),
(239, 1, '2019-02-21 23:04:19', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-02-21 23:04:19', '0000-00-00 00:00:00', '', 0, 'http://localhost/MyClub/?post_type=player&p=239', 0, 'player', '', 0),
(240, 1, '2019-02-22 22:08:30', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-02-22 22:08:30', '0000-00-00 00:00:00', '', 0, 'http://localhost/MyClub/?post_type=player&p=240', 0, 'player', '', 0),
(241, 1, '2019-02-22 22:37:29', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-02-22 22:37:29', '0000-00-00 00:00:00', '', 0, 'http://localhost/MyClub/?post_type=player&p=241', 0, 'player', '', 0),
(242, 1, '2019-02-22 22:47:32', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-02-22 22:47:32', '0000-00-00 00:00:00', '', 0, 'http://localhost/MyClub/?post_type=player&p=242', 0, 'player', '', 0),
(243, 1, '2019-02-22 22:55:16', '2019-02-22 22:55:16', '', 'Player 1', '', 'trash', 'closed', 'closed', '', '__trashed', '', '', '2019-02-22 22:55:16', '2019-02-22 22:55:16', '', 0, 'http://localhost/MyClub/?post_type=player&#038;p=243', 0, 'player', '', 0),
(244, 1, '2019-02-22 22:52:32', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-02-22 22:52:32', '0000-00-00 00:00:00', '', 0, 'http://localhost/MyClub/?post_type=player&p=244', 0, 'player', '', 0),
(245, 1, '2019-02-22 22:53:12', '2019-02-22 22:53:12', '', 'Player 1', '', 'publish', 'closed', 'closed', '', 'player-1', '', '', '2019-02-22 22:53:12', '2019-02-22 22:53:12', '', 0, 'http://localhost/MyClub/?post_type=player&#038;p=245', 0, 'player', '', 0),
(246, 1, '2019-02-22 22:53:35', '2019-02-22 22:53:35', '', 'Player2', '', 'publish', 'closed', 'closed', '', 'player2', '', '', '2019-02-22 22:53:35', '2019-02-22 22:53:35', '', 0, 'http://localhost/MyClub/?post_type=player&#038;p=246', 0, 'player', '', 0),
(247, 1, '2019-02-22 22:53:47', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-02-22 22:53:47', '0000-00-00 00:00:00', '', 0, 'http://localhost/MyClub/?post_type=player&p=247', 0, 'player', '', 0),
(248, 1, '2019-02-22 22:54:39', '2019-02-22 22:54:39', '', 'Moh Salah', '', 'publish', 'closed', 'closed', '', 'moh-salah', '', '', '2019-02-22 22:54:39', '2019-02-22 22:54:39', '', 0, 'http://localhost/MyClub/?post_type=player&#038;p=248', 0, 'player', '', 0),
(249, 1, '2019-02-22 22:55:08', '2019-02-22 22:55:08', '', 'Salah Player', '', 'publish', 'closed', 'closed', '', 'salah-player', '', '', '2019-02-22 22:55:41', '2019-02-22 22:55:41', '', 0, 'http://localhost/MyClub/?post_type=player&#038;p=249', 0, 'player', '', 0),
(250, 1, '2019-02-22 22:56:26', '2019-02-22 22:56:26', '', 'Terika', '', 'publish', 'closed', 'closed', '', 'terika', '', '', '2019-02-22 22:56:43', '2019-02-22 22:56:43', '', 0, 'http://localhost/MyClub/?post_type=player&#038;p=250', 0, 'player', '', 0),
(251, 1, '2019-02-22 22:57:04', '2019-02-22 22:57:04', '', 'Abo Hassan', '', 'publish', 'closed', 'closed', '', 'abo-hassan', '', '', '2019-02-22 22:57:04', '2019-02-22 22:57:04', '', 0, 'http://localhost/MyClub/?post_type=player&#038;p=251', 0, 'player', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'Top Menu', 'top-menu', 0),
(3, 'Social Links Menu', 'social-links-menu', 0),
(4, 'About', 'about', 0),
(5, 'Home', 'home', 0),
(6, 'Hadeel', 'hhh', 0),
(29, 'Intermediate​ ​team', 'intermediate%e2%80%8b-%e2%80%8bteam', 0),
(16, 'HA', 'ha', 0),
(15, 'HA', 'ha', 0),
(14, 'Team1', 'team1', 0),
(28, 'Beginners​ ​team', 'beginners%e2%80%8b-%e2%80%8bteam', 0),
(30, 'Professionals​ ​team', 'professionals%e2%80%8b-%e2%80%8bteam', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(196, 14, 0),
(194, 14, 0),
(187, 5, 0),
(185, 2, 0),
(24, 3, 0),
(25, 3, 0),
(26, 3, 0),
(27, 3, 0),
(28, 3, 0),
(61, 4, 0),
(65, 5, 0),
(200, 28, 0),
(70, 1, 0),
(201, 28, 0),
(202, 29, 0),
(203, 29, 0),
(204, 30, 0),
(205, 30, 0),
(234, 28, 0),
(236, 28, 0),
(237, 28, 0),
(245, 28, 0),
(246, 28, 0),
(248, 30, 0),
(249, 30, 0),
(250, 29, 0),
(251, 29, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'nav_menu', '', 0, 1),
(3, 3, 'nav_menu', '', 0, 5),
(4, 4, 'nav_menu', '', 0, 1),
(5, 5, 'nav_menu', '', 0, 2),
(6, 6, 'user_category', 'kh', 0, 0),
(16, 16, 'category', '', 0, 0),
(15, 15, 'player', '', 14, 0),
(14, 14, 'player', '', 0, 0),
(29, 29, 'team', '', 0, 2),
(30, 30, 'team', '', 0, 2),
(28, 28, 'team', '', 0, 2);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'HadeelMohammed'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', 'wp496_privacy,theme_editor_notice'),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:1:{s:64:"65a190eaaebacc30623b00d18277bb9a277d0beb6056594bdf67efd9f14fd485";a:4:{s:10:"expiration";i:1551869243;s:2:"ip";s:3:"::1";s:2:"ua";s:115:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.109 Safari/537.36";s:5:"login";i:1550659643;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '4'),
(18, 1, 'wp_user-settings', 'libraryContent=browse'),
(19, 1, 'wp_user-settings-time', '1550664112'),
(20, 1, 'closedpostboxes_player', 'a:0:{}'),
(21, 1, 'metaboxhidden_player', 'a:0:{}'),
(22, 1, 'meta-box-order_player', 'a:3:{s:4:"side";s:30:"submitdiv,teamdiv,postimagediv";s:6:"normal";s:19:"player_meta,slugdiv";s:8:"advanced";s:0:"";}'),
(23, 1, 'screen_layout_player', '2');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'HadeelMohammed', '$P$Be1UHVpm39DoquuI1oMFJ26WmSNF1S0', 'hadeelmohammed', 'hadeel.mostafa.cs@gmail.com', '', '2019-02-20 10:47:07', '', 0, 'HadeelMohammed');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indexes for table `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Indexes for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indexes for table `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=471;
--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=525;
--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=252;
--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
