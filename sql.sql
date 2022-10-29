-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 04, 2021 at 08:40 AM
-- Server version: 5.6.38
-- PHP Version: 7.2.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `laravel-api`
--

-- --------------------------------------------------------

--
-- Table structure for table `blog`
--

CREATE TABLE `blog` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `content` text COLLATE utf8mb4_unicode_ci,
  `id_auth` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blog`
--

INSERT INTO `blog` (`id`, `title`, `image`, `description`, `content`, `id_auth`, `created_at`, `updated_at`) VALUES
(4, 'Video highlight trận Tây Ban Nha - Romania: Hiệp 1 thăng hoa, tưng bừng \"bàn tay nhỏ\"', '1574147257.jpg', 'Video highlight trận Tây Ban Nha - Romania: Hiệp 1 thăng hoa, tưng bừng \"bàn tay nhỏ\"Video highlight trận Tây Ban Nha - Romania: Hiệp 1 thăng hoa, tưng bừng \"bàn tay nhỏ\"', '<h1>Video highlight trận T&acirc;y Ban Nha - Romania: Hiệp 1 thăng hoa, tưng bừng &quot;b&agrave;n tay nhỏ&quot;Video highlight trận T&acirc;y Ban Nha - Romania: Hiệp 1 thăng hoa, tưng bừng &quot;b&agrave;n tay nhỏ&quot;Video highlight trận T&acirc;y Ban Nha - Romania: Hiệp 1 thăng hoa, tưng bừng &quot;b&agrave;n tay nhỏ&quot;</h1>', 1, '2019-11-19 07:07:37', '2019-11-19 07:07:37'),
(5, 'Video highlight trận Tây Ban Nha - Romania: Hiệp 1 thăng hoa, tưng bừng \"bàn tay nhỏ\"', '1574147299.jpg', 'Video highlight trận Tây Ban Nha - Romania: Hiệp 1 thăng hoa, tưng bừng \"bàn tay nhỏ\"Video highlight trận Tây Ban Nha - Romania: Hiệp 1 thăng hoa, tưng bừng \"bàn tay nhỏ\"Video highlight trận Tây Ban Nha - Romania: Hiệp 1 thăng hoa, tưng bừng \"bàn tay nhỏ\"', '<h1>Video highlight trận T&acirc;y Ban Nha - Romania: Hiệp 1 thăng hoa, tưng bừng &quot;b&agrave;n tay nhỏ&quot;Video highlight trận T&acirc;y Ban Nha - Romania: Hiệp 1 thăng hoa, tưng bừng &quot;b&agrave;n tay nhỏ&quot;Video highlight trận T&acirc;y Ban Nha - Romania: Hiệp 1 thăng hoa, tưng bừng &quot;b&agrave;n tay nhỏ&quot;</h1>', 1, '2019-11-19 07:08:19', '2019-11-19 07:08:19'),
(6, 'Video highlight trận Tây Ban Nha - Romania: Hiệp 1 thăng hoa, tưng bừng \"bàn tay nhỏ\"', '1574147310.jpg', 'Video highlight trận Tây Ban Nha - Romania: Hiệp 1 thăng hoa, tưng bừng \"bàn tay nhỏ\"Video highlight trận Tây Ban Nha - Romania: Hiệp 1 thăng hoa, tưng bừng \"bàn tay nhỏ\"Video highlight trận Tây Ban Nha - Romania: Hiệp 1 thăng hoa, tưng bừng \"bàn tay nhỏ\"', '<h1>Video highlight trận T&acirc;y Ban Nha - Romania: Hiệp 1 thăng hoa, tưng bừng &quot;b&agrave;n tay nhỏ&quot;Video highlight trận T&acirc;y Ban Nha - Romania: Hiệp 1 thăng hoa, tưng bừng &quot;b&agrave;n tay nhỏ&quot;Video highlight trận T&acirc;y Ban Nha - Romania: Hiệp 1 thăng hoa, tưng bừng &quot;b&agrave;n tay nhỏ&quot;</h1>', 1, '2019-11-19 07:08:30', '2019-11-19 07:08:30'),
(7, 'Video highlight trận Tây Ban Nha - Romania: Hiệp 1 thăng hoa, tưng bừng \"bàn tay nhỏ\"', '1574147320.jpg', 'Video highlight trận Tây Ban Nha - Romania: Hiệp 1 thăng hoa, tưng bừng \"bàn tay nhỏ\"Video highlight trận Tây Ban Nha - Romania: Hiệp 1 thăng hoa, tưng bừng \"bàn tay nhỏ\"Video highlight trận Tây Ban Nha - Romania: Hiệp 1 thăng hoa, tưng bừng \"bàn tay nhỏ\"', '<h1>Video highlight trận T&acirc;y Ban Nha - Romania: Hiệp 1 thăng hoa, tưng bừng &quot;b&agrave;n tay nhỏ&quot;Video highlight trận T&acirc;y Ban Nha - Romania: Hiệp 1 thăng hoa, tưng bừng &quot;b&agrave;n tay nhỏ&quot;Video highlight trận T&acirc;y Ban Nha - Romania: Hiệp 1 thăng hoa, tưng bừng &quot;b&agrave;n tay nhỏ&quot;</h1>', 1, '2019-11-19 07:08:40', '2019-11-19 07:08:40');

-- --------------------------------------------------------

--
-- Table structure for table `brand`
--

CREATE TABLE `brand` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `brand` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brand`
--

INSERT INTO `brand` (`id`, `brand`, `created_at`, `updated_at`) VALUES
(1, 'Brand1', '2019-08-01 07:31:35', '2019-08-01 07:31:35'),
(2, 'Brand2', '2019-08-01 07:31:38', '2019-08-01 07:31:38');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `category`, `created_at`, `updated_at`) VALUES
(1, 'Category1', '2019-08-01 07:31:26', '2019-08-01 07:31:26'),
(2, 'Category2', '2019-08-01 07:31:28', '2019-08-01 07:31:28'),
(3, 'vietnam', '2020-06-22 11:57:15', '2020-06-22 11:57:15');

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE `comment` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_blog` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `name_user` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_comment` int(11) NOT NULL,
  `comment` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_user` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comment`
--

INSERT INTO `comment` (`id`, `id_blog`, `id_user`, `name_user`, `id_comment`, `comment`, `image_user`, `created_at`, `updated_at`) VALUES
(1, 7, 3, 'bao vic', 0, '111111', '1574493279.png', '2021-03-04 01:36:41', '2021-03-04 01:36:41');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_auth` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `country`
--

CREATE TABLE `country` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `country`
--

INSERT INTO `country` (`id`, `name`, `created_at`, `updated_at`) VALUES
(3, 'vietnam', '2020-04-04 05:42:58', '2020-04-04 05:42:58'),
(4, 'anh', '2020-04-04 05:44:05', '2020-04-04 05:44:05'),
(5, 'phap', '2020-04-29 11:11:24', '2020-04-29 11:11:24');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(5, '2019_07_05_023908_create_coutry_table', 4),
(7, '2019_07_09_074327_create_one_page_table', 6),
(8, '2019_07_09_075141_create_one_page_table', 7),
(9, '2019_07_11_063331_create_products_table', 8),
(10, '2019_07_16_071709_create_products_table', 9),
(11, '2019_07_17_063714_create_contact_table', 10),
(12, '2019_07_17_065934_add_content__contact', 10),
(13, '2019_07_17_110748_create_blog_table', 10),
(14, '2019_07_20_184443_create_comment_table', 10),
(15, '2019_07_24_064652_create_rate_table', 10),
(16, '2019_07_24_114216_create_brand_table', 10),
(17, '2019_07_24_114400_create_category_table', 10),
(18, '2019_07_24_115902_create_product_table', 10),
(26, '2014_10_12_000000_create_users_table', 11),
(27, '2014_10_12_100000_create_password_resets_table', 11),
(28, '2019_07_04_080831_create_users_add_level_table', 11),
(29, '2019_07_05_022318_create_users_add_columns_table', 11),
(30, '2019_07_05_024109_create_country_table', 11),
(31, '2019_07_16_072622_create_category_table', 11),
(32, '2019_07_16_082143_create_brand_table', 11),
(33, '2019_07_16_083621_create_product_table', 11),
(34, '2019_07_27_173558_create_review_product_table', 11),
(35, '2019_07_27_175332_create_rate_product_table', 11),
(36, '2019_07_27_205936_update_change_id_sub_product_table', 11),
(37, '2019_07_28_084904_update_add_avatar_user_review_product_table', 11),
(38, '2019_08_05_041936_create_products_api_table', 12),
(39, '2019_08_05_044250_create_testapi_table', 13),
(40, '2019_07_17_052129_update_product_table', 14),
(41, '2019_08_04_085313_update_highlight_product_table', 15),
(42, '2019_08_15_191715_create_testapi_table', 16),
(43, '2016_06_01_000001_create_oauth_auth_codes_table', 17),
(44, '2016_06_01_000002_create_oauth_access_tokens_table', 17),
(45, '2016_06_01_000003_create_oauth_refresh_tokens_table', 17),
(46, '2016_06_01_000004_create_oauth_clients_table', 17),
(47, '2016_06_01_000005_create_oauth_personal_access_clients_table', 17),
(48, '2020_06_05_191652_create_test_table', 18);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('0020b45c24d45ce06d2094ecd42339c3abb1d8bdf8b812dfff1b00245ba236398722cfa8ae7ebe02', 3, 3, 'MyApp', '[]', 0, '2020-04-02 03:13:37', '2020-04-02 03:13:37', '2021-04-02 10:13:37'),
('004d1f32d9c400dd27612372303f4ec405d0e0aaa24887ace566c92032113e627dd8e67efac2eba2', 3, 3, 'MyApp', '[]', 0, '2020-12-05 10:49:27', '2020-12-05 10:49:27', '2021-12-05 17:49:27'),
('02e360a5b8d085746b9a4eff25f2537b38ebda09be19b52d634286c663c8dd0e853ee37f087f103f', 3, 3, 'MyApp', '[]', 0, '2021-01-29 12:03:39', '2021-01-29 12:03:39', '2022-01-29 19:03:39'),
('047ea2ee6e3f5d68f43ed348c95593530492147cfcc58346bf54a7c1f36b54869827fe0b9394adfd', 2, 1, 'MyApp', '[]', 0, '2019-11-20 09:15:16', '2019-11-20 09:15:16', '2020-11-20 16:15:16'),
('0494a76656d25a935e21f190e49ddf21e64bbd3f2972d91bd4826814624051058d26b1715449fc36', 2, 1, 'MyApp', '[]', 0, '2019-11-20 07:06:15', '2019-11-20 07:06:15', '2020-11-20 14:06:15'),
('07a92db06dd71b4616252e2266315262d1f70f653c5483c0daa5a28e097de9b98dbc722246a3a126', 2, 1, 'MyApp', '[]', 0, '2019-09-30 06:55:23', '2019-09-30 06:55:23', '2020-09-30 13:55:23'),
('0a329e7f826189f3d175da2282a790dc731b6c9463da6bc8f6d7417c6a1252d4b6650014ee48f4e7', 2, 1, 'MyApp', '[]', 0, '2019-11-20 07:05:39', '2019-11-20 07:05:39', '2020-11-20 14:05:39'),
('0a490082b1a47ec1fde4a892765e5d71fb1d9c76d1ab75bd8692ae5c05a342972c20a1e117c8cb61', 3, 3, 'MyApp', '[]', 0, '2020-05-20 15:59:00', '2020-05-20 15:59:00', '2021-05-20 22:59:00'),
('0beebd7e76a9bb1664fb7f8e624b26b6301d37bbb785660597996ee63e66374372b428dcf022a9ed', 2, 1, 'MyApp', '[]', 0, '2019-10-02 08:03:07', '2019-10-02 08:03:07', '2020-10-02 15:03:07'),
('0cf6d6dc38edd580cbdaee83a3b02bfedab3c5b3c9a01a238825a9fb1c6973e2dd82583f663ab17d', 2, 1, 'MyApp', '[]', 0, '2019-09-30 06:42:04', '2019-09-30 06:42:04', '2020-09-30 13:42:04'),
('0cf777b02866dfc10984939f9dd216f183dc71457e46d71fe6378c01a57602ccaddb2127f3fbe78f', 2, 1, 'MyApp', '[]', 0, '2019-11-20 04:38:22', '2019-11-20 04:38:22', '2020-11-20 11:38:22'),
('0dfb9a42735263b067d4c1e273b84c52953514e79a2268db8e47f85a38de3ca23011dc5212c841c1', 2, 1, 'MyApp', '[]', 0, '2019-11-01 09:31:22', '2019-11-01 09:31:22', '2020-11-01 16:31:22'),
('0fea7b7c6d1ca3eebadf2703003c49da4d01e0330fcd2c3a6285e3b0093717d907e81823ccea597d', 2, 1, 'MyApp', '[]', 0, '2019-10-02 08:06:11', '2019-10-02 08:06:11', '2020-10-02 15:06:11'),
('102252431c4fe13dee430e2353e3d1263bde8666fbc7cd0331e0475d7a7390a7aa729a59e542f461', 3, 3, 'MyApp', '[]', 0, '2021-03-01 02:48:43', '2021-03-01 02:48:43', '2022-03-01 09:48:43'),
('10535bdd213be4098fb3608b5113949d1f8e4c9d1c892604aefee16f444bcbd62e977d1d03b632d1', 2, 1, 'MyApp', '[]', 0, '2019-11-20 09:35:59', '2019-11-20 09:35:59', '2020-11-20 16:35:59'),
('128f111d5bd297bb8ec28b0b491a973df2cb7db497a5158e44af5121c18ff6299267620fe22178d8', 2, 1, 'MyApp', '[]', 0, '2019-11-20 07:21:51', '2019-11-20 07:21:51', '2020-11-20 14:21:51'),
('15068beac4c7f7e1debddcdb437cf51127540ec1833695533de97bdf7c75f8dba4b9ddaf6f64a1ed', 2, 1, 'MyApp', '[]', 0, '2019-11-20 09:07:35', '2019-11-20 09:07:35', '2020-11-20 16:07:35'),
('16776e2bcd4a9bdafa594f4b40ffae18e3abd5460b756f91b16ca157a4766bc68877053933bafcc0', 2, 1, 'MyApp', '[]', 0, '2019-11-01 09:21:14', '2019-11-01 09:21:14', '2020-11-01 16:21:14'),
('1a80b0be14c0bdff2b91d45af5ac7a55ba3e0514108b4fcf5e988dd6541ed29b2ea9744c7f989041', 3, 3, 'MyApp', '[]', 0, '2020-08-07 03:33:38', '2020-08-07 03:33:38', '2021-08-07 10:33:38'),
('1e306e4e696f6ec4811705630ab886b3830761a08b20f06d09677c4802a551a7388a0a3f15b422a9', 3, 3, 'MyApp', '[]', 0, '2020-05-19 09:34:15', '2020-05-19 09:34:15', '2021-05-19 16:34:15'),
('1eb6190c75af25cd265a106cd67c7272273cf3b70cd5dcdd5c33a078108bdd843e007bf5659c2fdb', 3, 3, 'MyApp', '[]', 0, '2019-12-05 14:35:59', '2019-12-05 14:35:59', '2020-12-05 21:35:59'),
('1ebf47d491ee2108d37cc64ea1a3e67bee1a82392e5a1c4aaafe5170021bdc6c735f11a9aee82acd', 2, 1, 'MyApp', '[]', 0, '2019-11-19 08:38:34', '2019-11-19 08:38:34', '2020-11-19 15:38:34'),
('1ed5735cc1bbd7a28fe26194193abdb6fb1b6d8cfded8ed9dd360d5d0536b78e69a6a65d90b20b15', 2, 1, 'MyApp', '[]', 0, '2019-11-21 02:40:12', '2019-11-21 02:40:12', '2020-11-21 09:40:12'),
('20a02f552c46d0201e47d81bab68673f6ca4d490a08285f22b98c7e1d558afca307fc26e8119299e', 2, 1, 'MyApp', '[]', 0, '2019-11-20 04:18:25', '2019-11-20 04:18:25', '2020-11-20 11:18:25'),
('233a0edc5f49aefb57669792ec3eda4011699de27a32b1645f0158a02efce199c28a99f01e0e027f', 3, 3, 'MyApp', '[]', 0, '2020-05-20 16:17:20', '2020-05-20 16:17:20', '2021-05-20 23:17:20'),
('23ebcd7fefc9a06ec4d9a51ed4e24048a1a1220663646f6c46126b72e9531488d81a23dc783f8656', 2, 1, 'MyApp', '[]', 0, '2019-09-30 06:37:14', '2019-09-30 06:37:14', '2020-09-30 13:37:14'),
('24931c4cc2febabc4ccff98cd02f6c144185aa9fd4e5585c8ee3c8fb28800ba24a93ee84ed8c2a5d', 2, 1, 'MyApp', '[]', 0, '2019-11-20 09:18:49', '2019-11-20 09:18:49', '2020-11-20 16:18:49'),
('250f8aa9cef542f9142b3cc93adc0208d6ac4a372d11de6ceaaada9eaaf19a18994dc6c61ee2c299', 3, 3, 'MyApp', '[]', 0, '2020-08-05 09:47:04', '2020-08-05 09:47:04', '2021-08-05 16:47:04'),
('2542632d24589fb9a12f9f1058a82077a7a45b6b10857cf200ed81df7904ae8b49803ee69506768c', 2, 1, 'MyApp', '[]', 0, '2019-11-20 09:06:02', '2019-11-20 09:06:02', '2020-11-20 16:06:02'),
('271892ae9cba67f106d2aa98c0ca9fcce2c3127439fe581ee399677c8fe3ce554aa60251180f18df', 3, 3, 'MyApp', '[]', 0, '2020-05-19 09:35:12', '2020-05-19 09:35:12', '2021-05-19 16:35:12'),
('2cd1ea30ab604d5332bcaa4ffc8d7a50ed8d14afbcb2a20e221f892daf2d6ebf1ef774e580ecb40e', 2, 1, 'MyApp', '[]', 0, '2019-11-21 02:42:45', '2019-11-21 02:42:45', '2020-11-21 09:42:45'),
('30af46a634159968f275611a317b8c19a02ca7dd0fd829a16693b76d878bb376def2128cc2c7ed59', 3, 3, 'MyApp', '[]', 0, '2019-12-14 06:57:20', '2019-12-14 06:57:20', '2020-12-14 13:57:20'),
('30c17396ca097ca0a0af9a789191eeae098d4b3aeb1b804c265d83dfe8998c32eec546aadcc2e2fe', 2, 1, 'MyApp', '[]', 0, '2019-11-20 03:21:01', '2019-11-20 03:21:01', '2020-11-20 10:21:01'),
('3113e67dca3c603a21d1745ee8cffbadc05de0c74e77b280f27c12fa8c2a2f56aa2e8c05ed3a3333', 3, 3, 'MyApp', '[]', 0, '2020-06-25 09:12:32', '2020-06-25 09:12:32', '2021-06-25 16:12:32'),
('322f5470486abe26d3396fb0a118ada85d3914b34add97e705334e22aa13ef5d78f313b1aa390a28', 3, 3, 'MyApp', '[]', 0, '2020-05-23 13:49:20', '2020-05-23 13:49:20', '2021-05-23 20:49:20'),
('332910c2246ab99cc2ab06eae71a2e79454fbaa2942ef1e9990aac4230b9f12c44a5e475cac9bbfd', 3, 3, 'MyApp', '[]', 0, '2020-12-04 04:10:28', '2020-12-04 04:10:28', '2021-12-04 11:10:28'),
('343bd699d3af5a09e831f07a6e821687d45ed6eb41ca4f9e6385d948f08178b74f3d1423ea4fd046', 3, 3, 'MyApp', '[]', 0, '2020-05-20 15:55:55', '2020-05-20 15:55:55', '2021-05-20 22:55:55'),
('38c915a0b417443e573c1210c84ba74a8def65a0a8091045f8d74fd7efbd34c076da2d1a3b066e47', 2, 1, 'MyApp', '[]', 0, '2019-11-19 08:56:30', '2019-11-19 08:56:30', '2020-11-19 15:56:30'),
('3933da0f946be1eab26d52ddb6e62d1cd2c396bb0449330aa60948b1c57fb906359a8b3de0746c61', 3, 3, 'MyApp', '[]', 0, '2020-05-19 09:34:50', '2020-05-19 09:34:50', '2021-05-19 16:34:50'),
('398ca168d23e5563a3acb58d11e5e1bf06238bcb997f1985415d6d978a390a858aba779516417f3f', 2, 1, 'MyApp', '[]', 0, '2019-11-20 09:07:11', '2019-11-20 09:07:11', '2020-11-20 16:07:11'),
('3bf938ea7cd2194ad6d652acd91567ae3995ce734c81ed1a884c2ed6ab473d6cbf40539686e4c288', 3, 3, 'MyApp', '[]', 0, '2020-06-27 08:30:17', '2020-06-27 08:30:17', '2021-06-27 15:30:17'),
('3c14703708d66df6e7d46d5954df1eb55f381a14eb317ff230c3c34fa579fa0ed4b84bc7fefdd771', 2, 1, 'MyApp', '[]', 0, '2019-11-01 09:10:27', '2019-11-01 09:10:27', '2020-11-01 16:10:27'),
('3c47ff64ba07c64e2b66f8662f07fecac10f925ad09c0db2cd58d398db2cdb2d2d19aff83977c774', 3, 3, 'MyApp', '[]', 0, '2020-05-30 09:28:08', '2020-05-30 09:28:08', '2021-05-30 16:28:08'),
('3c8b2ec0c4ee1c94a53b8c2ec54ffca82515ef0d17c5037dab559ab0c18dd2d2b3fc85de3f430dbc', 3, 3, 'MyApp', '[]', 0, '2020-11-28 01:44:47', '2020-11-28 01:44:47', '2021-11-28 08:44:47'),
('3d32f3f04f771a2b54fa2a76fe8e438c82d24f84ecbb24849c97dcfacf5fd08c208147223ecbd3cc', 2, 1, 'MyApp', '[]', 0, '2019-11-20 08:16:44', '2019-11-20 08:16:44', '2020-11-20 15:16:44'),
('3f6e353243f820a6dd036cb940c5e2134f7ffe5b81b987103e4ac4639f7304c94253e7ee33d5e9ad', 2, 1, 'MyApp', '[]', 0, '2019-11-21 02:41:36', '2019-11-21 02:41:36', '2020-11-21 09:41:36'),
('3fe4ea6e8b6e34b08da0fe777e840aa1aa25165b068d72e0a07111970cb7b9df0464d9795572ec2d', 2, 1, 'MyApp', '[]', 0, '2019-10-08 04:11:35', '2019-10-08 04:11:35', '2020-10-08 11:11:35'),
('4348de1104e27c04c76f88ccbfd4c3164000bf66f7a5bc9eb3c6182fd0ddb28171fc52aeb30209e9', 2, 1, 'MyApp', '[]', 0, '2019-10-02 02:42:43', '2019-10-02 02:42:43', '2020-10-02 09:42:43'),
('4458bbc1353dd29c203afed6d8b8c556ff599a673762cdf93592882555a9b8426f52545ea2d55d04', 2, 1, 'MyApp', '[]', 0, '2019-11-19 10:01:01', '2019-11-19 10:01:01', '2020-11-19 17:01:01'),
('44b2178936658dfc23b11c9aed6d4c043307b868b18136b1f4686d87eb6edaafcc0f940dfe84ea2b', 3, 3, 'MyApp', '[]', 0, '2020-06-12 03:44:26', '2020-06-12 03:44:26', '2021-06-12 10:44:26'),
('4785cdd9197ff20ac8419918fb92d6794b00e45e89af257643c8d6ce6f6d774a684dc167e7ec025a', 2, 1, 'MyApp', '[]', 0, '2019-11-20 04:38:09', '2019-11-20 04:38:09', '2020-11-20 11:38:09'),
('47c1395f64e973c43607fe23a21cc6984e5c8ec9706d682a1355f5f0c51de4eda6a5e99f4177dd6a', 3, 3, 'MyApp', '[]', 0, '2020-07-14 10:37:15', '2020-07-14 10:37:15', '2021-07-14 17:37:15'),
('48345ed51d68da6cfe979207abb970e6f6cb50ab8cb2eb175aa5d5981d1ff6ec560a576dc4085fa5', 3, 3, 'MyApp', '[]', 0, '2019-12-05 14:35:41', '2019-12-05 14:35:41', '2020-12-05 21:35:41'),
('4a826ed8cbbf8f1fd2d9e519772a5b9de51c4d879868ebdfc09a5f380c6354c303e3c5eae8b1f6f8', 2, 1, 'MyApp', '[]', 0, '2019-11-19 08:54:04', '2019-11-19 08:54:04', '2020-11-19 15:54:04'),
('4ad7eed523e254991db55fc28b649c9bca5bbcf1695760c07e9fac8a4700f3580cbe30e5ada19007', 2, 1, 'MyApp', '[]', 0, '2019-11-01 09:12:22', '2019-11-01 09:12:22', '2020-11-01 16:12:22'),
('4c0d7866712828e21f38902343b7e2a158c353d766ecea1a10d6dde7f674799b3bbc379dc236378c', 3, 3, 'MyApp', '[]', 0, '2021-03-01 02:45:00', '2021-03-01 02:45:00', '2022-03-01 09:45:00'),
('4e3da2d20ab3c698db2f43c3cac81e7bfa2ee734fe4ae9a9360030b4e0fa1c57f7d4619cf2573375', 2, 1, 'MyApp', '[]', 0, '2019-11-20 07:09:27', '2019-11-20 07:09:27', '2020-11-20 14:09:27'),
('528779ba8648306a299f3db5ca7bf65241e1337043819a8c4adaa19f116251b28028125a059965c9', 3, 3, 'MyApp', '[]', 0, '2021-03-01 02:46:58', '2021-03-01 02:46:58', '2022-03-01 09:46:58'),
('53a5cd06b79229f42ed009282d0b8498adf7ead7bbd1ea7c9bea51ca38589870eea84cafc2ecd2f0', 2, 1, 'MyApp', '[]', 0, '2019-09-30 08:22:17', '2019-09-30 08:22:17', '2020-09-30 15:22:17'),
('53dc397f1c3b3286ca36365a09ccb5cf8d3b7c9da2805a6230cadb738a28f4021862e07269ba0765', 3, 3, 'MyApp', '[]', 0, '2020-07-24 03:39:34', '2020-07-24 03:39:34', '2021-07-24 10:39:34'),
('54b8261882316da237e2470616baf062321fb1895a732e918b0160d9a7297ea2bf413a9cc663baef', 2, 1, 'MyApp', '[]', 0, '2019-11-21 02:44:11', '2019-11-21 02:44:11', '2020-11-21 09:44:11'),
('54e58b561754760a266c123095167fdb7b0513ab3e69d889ac81bec707a4812517c29f7308b2d9fd', 2, 1, 'MyApp', '[]', 0, '2019-10-07 03:45:27', '2019-10-07 03:45:27', '2020-10-07 10:45:27'),
('5579a7166d7bbf28530c427007026bdadd1a93e1b580ba4d73a6be9607f672a20e8de2d98a7bae43', 3, 3, 'MyApp', '[]', 0, '2020-05-02 07:23:32', '2020-05-02 07:23:32', '2021-05-02 14:23:32'),
('560c2d6bbf8c28385bbc188355674d09202895669d70f61e25708db1f985adb684105753d2ee947c', 3, 3, 'MyApp', '[]', 0, '2020-01-09 13:35:35', '2020-01-09 13:35:35', '2021-01-09 20:35:35'),
('59c0d40a16596d96d633071b5742999e9232ede12e5c6c95a961ba3b5cb8362a2cfa258b5f4394f8', 2, 1, 'MyApp', '[]', 0, '2019-09-30 04:33:21', '2019-09-30 04:33:21', '2020-09-30 11:33:21'),
('5c5306d8e0654edc19c6bba4386fdf26172e8e1d8b7dfbcebf64c4d3ddb983045d546ebe63aeab10', 2, 1, 'MyApp', '[]', 0, '2019-11-20 08:49:40', '2019-11-20 08:49:40', '2020-11-20 15:49:40'),
('5e1ab226b367c345345aae833873e9314e1adcb5be43f3fa91cf13b6affd83aa303048e353dc16f2', 2, 1, 'MyApp', '[]', 0, '2019-11-21 02:32:14', '2019-11-21 02:32:14', '2020-11-21 09:32:14'),
('5e1f7df8d0ba189b6da21f345edae6719dfdbfb0de99898a51aeb0afe933f9108459362e1da3c093', 2, 1, 'MyApp', '[]', 0, '2019-10-04 03:29:10', '2019-10-04 03:29:10', '2020-10-04 10:29:10'),
('64ebc19aa3e22dfeb5faf665767dabfd20fb02367f6c57b4198fab1a4d9b52c9b63090804de3641f', 2, 1, 'MyApp', '[]', 0, '2019-11-01 09:09:56', '2019-11-01 09:09:56', '2020-11-01 16:09:56'),
('67168f5468ee32c6f30fab027d7c8a3bc259ce99566b3eca1e9067f1b839498894dde69a14e8a631', 2, 1, 'MyApp', '[]', 0, '2019-11-20 08:09:22', '2019-11-20 08:09:22', '2020-11-20 15:09:22'),
('67cde1aed43701bf7d91f4872497afd0566d4d0695d537d9772c189cd8ada304cb23cbf93bb56cda', 2, 1, 'MyApp', '[]', 0, '2019-11-20 04:36:07', '2019-11-20 04:36:07', '2020-11-20 11:36:07'),
('69b7e69e795eb3ee7fd2df9de2089a3b47f96f2882c84c9e36c18b6e61ba5649d72125d623e0e406', 3, 3, 'MyApp', '[]', 0, '2021-03-01 03:13:12', '2021-03-01 03:13:12', '2022-03-01 10:13:12'),
('6a82d181b1da70fdafe5645b81a7592cf0084d657b1fc9739f6635a7d93437add0062de04e57cc25', 3, 3, 'MyApp', '[]', 0, '2019-12-17 13:13:21', '2019-12-17 13:13:21', '2020-12-17 20:13:21'),
('7107e318e4b9081b5e985fd5c9a82381b06ee1cb237d976dd9bf813acd86186199d02d5e52519ef3', 3, 3, 'MyApp', '[]', 0, '2021-01-13 13:31:49', '2021-01-13 13:31:49', '2022-01-13 20:31:49'),
('71fa1f2de2538fe33d768484058d4fecf32954e4cbe857e3f4af7e29ba5d3fd09a2d9f2fe7b9c271', 2, 1, 'MyApp', '[]', 0, '2019-09-30 07:52:03', '2019-09-30 07:52:03', '2020-09-30 14:52:03'),
('751bc22474c5f46b9bc435cb6ffdf845aa819ab3382d1c13fcc45439c8c1b25497371bec06629f1d', 2, 1, 'MyApp', '[]', 0, '2019-11-19 08:52:42', '2019-11-19 08:52:42', '2020-11-19 15:52:42'),
('75b8255d497d696557548b22fb972e4bf39d0f1c052c9808c1d97caf4aa536190a796a41ff721a63', 3, 3, 'MyApp', '[]', 0, '2020-05-20 16:16:37', '2020-05-20 16:16:37', '2021-05-20 23:16:37'),
('7681a062c77695b17aef43e98d84be49c9e7decf1422bf898bc06b7e1c0a36c0152e5decc5219059', 3, 3, 'MyApp', '[]', 0, '2020-05-20 16:01:30', '2020-05-20 16:01:30', '2021-05-20 23:01:30'),
('780fcfece5a554e4265c789e42f93b6f946cceea4356e68b82a703e0e210932d8dfd610fc402b4b0', 3, 3, 'MyApp', '[]', 0, '2020-07-10 04:23:56', '2020-07-10 04:23:56', '2021-07-10 11:23:56'),
('784e23d3bb6dd8fb5c4d1405c700a778884b412df4c52ca7e95e1f70422a1d2300b6c488599641c5', 3, 3, 'MyApp', '[]', 0, '2019-12-05 14:36:58', '2019-12-05 14:36:58', '2020-12-05 21:36:58'),
('797d80f6ac5c34deba66ee6ecc2a584023024be0676a20dd3071863b82ae3a189efe80e3adde1d6a', 2, 1, 'MyApp', '[]', 0, '2019-11-20 09:10:23', '2019-11-20 09:10:23', '2020-11-20 16:10:23'),
('7b52b9d1a4e1d874e3cb8f3089b00d01ed0b7b7b913ae77e9f43fd8f1417383358975d8690da46fe', 2, 1, 'MyApp', '[]', 0, '2019-11-20 07:02:40', '2019-11-20 07:02:40', '2020-11-20 14:02:40'),
('7ccabb43f4b581856c31d0eccd8fc3e02a955221d1feea831374be1dc2a1005a137c692b2f96ba4a', 3, 3, 'MyApp', '[]', 0, '2019-12-12 14:18:48', '2019-12-12 14:18:48', '2020-12-12 21:18:48'),
('7ce09d5df7d5265b0e8cd97b9251e6745cd7ede885dbd8c9bbd8a38b533c27ebf6329306370e392a', 3, 3, 'MyApp', '[]', 0, '2019-12-14 06:58:13', '2019-12-14 06:58:13', '2020-12-14 13:58:13'),
('7f920256a22e375d273d185bea33bd38d94f4c6e6ad4e75aca9a69fccd46ffdd234b6d78a6eceef8', 3, 3, 'MyApp', '[]', 0, '2020-07-09 09:31:19', '2020-07-09 09:31:19', '2021-07-09 16:31:19'),
('800e57e79282eae57e99dc5fec90e5b8d31155ff93fcfceb0707890fd544dddc543f456a803b4bc8', 2, 1, 'MyApp', '[]', 0, '2019-10-02 02:57:35', '2019-10-02 02:57:35', '2020-10-02 09:57:35'),
('819b559a685eb5c53de825a2bcacbc5f8b1501637056294aef505f9fd90ad86bcb10d6a30c0980a4', 2, 1, 'MyApp', '[]', 0, '2019-11-21 02:30:24', '2019-11-21 02:30:24', '2020-11-21 09:30:24'),
('82299ecdfe40b8ce7c2e2618c6595884636b4b73acdbb2fb8c46f8debde203858537528bd1550749', 2, 1, 'MyApp', '[]', 0, '2019-09-30 06:56:45', '2019-09-30 06:56:45', '2020-09-30 13:56:45'),
('83952b41fb0a54941d55bdd834ef7b768e9a4b07c458b567991388783bfe448c21b82cc0910c8e49', 2, 1, 'MyApp', '[]', 0, '2019-09-30 08:09:05', '2019-09-30 08:09:05', '2020-09-30 15:09:05'),
('83f114595b253d2b04e5d4df5bbc4a6f72667ec645dac7ae9b750848f8d8c03ca94c3b31f7bd0fa7', 3, 3, 'MyApp', '[]', 0, '2020-04-02 03:09:32', '2020-04-02 03:09:32', '2021-04-02 10:09:32'),
('84a8ca78aae573d38f50fedf8704126bb03a0f3336a0ca308dd105308298f792d21cb62b32c8def8', 3, 3, 'MyApp', '[]', 0, '2020-12-30 00:53:25', '2020-12-30 00:53:25', '2021-12-30 07:53:25'),
('86c8174febeb847b1d1ad32b873bf50aec680aab0a4ee6c6391b9e8e8db04a46e5543639487e2cb6', 3, 3, 'MyApp', '[]', 0, '2020-05-02 10:26:52', '2020-05-02 10:26:52', '2021-05-02 17:26:52'),
('86e24045ddc28a0565558b7593c7bf8e2b79da5c2de4dd7eb4689fd9d956899bf9e991b618d65232', 2, 1, 'MyApp', '[]', 0, '2019-11-20 03:30:58', '2019-11-20 03:30:58', '2020-11-20 10:30:58'),
('89670e539e3fabea14534b1eebc3f9201f04ca9d3cb197e0c9afc2af45872aa86742409b29a28e57', 2, 1, 'MyApp', '[]', 0, '2019-11-20 07:12:59', '2019-11-20 07:12:59', '2020-11-20 14:12:59'),
('8aa284a71336352a1413a15ff9d9cd2f16ec854c0411b6c1ed02cda865b693abeca3530d9dfa7529', 3, 3, 'MyApp', '[]', 0, '2020-05-20 15:56:25', '2020-05-20 15:56:25', '2021-05-20 22:56:25'),
('8bd57cc74c5fa3e2b93273e766c0e0b4577bef42aea3a08b6637905a001067e27b35f8f8777a4f11', 3, 3, 'MyApp', '[]', 0, '2020-05-10 02:24:11', '2020-05-10 02:24:11', '2021-05-10 09:24:11'),
('8c6b7e466d155c91b709c07fc7a3dfc48c279e847e8fb93d724600d299ef841e161e5e74d1e1bc79', 3, 3, 'MyApp', '[]', 0, '2019-12-14 06:39:08', '2019-12-14 06:39:08', '2020-12-14 13:39:08'),
('8d0766e2ad364b9fab0646377baf0adac36f1581f1fa690a2388d4f02d8767b47da52c3fc65223c9', 2, 1, 'MyApp', '[]', 0, '2019-11-19 08:40:45', '2019-11-19 08:40:45', '2020-11-19 15:40:45'),
('8e1708f8da4f17131ac4d23c766976c7d97dbdd738b4408a9c8f7ecf60bbaa4e3c110c52d6db473b', 3, 3, 'MyApp', '[]', 0, '2021-03-01 02:49:24', '2021-03-01 02:49:24', '2022-03-01 09:49:24'),
('927e771ccf5995af7ea665af07a97609826e910d8d7ed4d450a2a5f6313f14fc03ddd44af5a129d0', 3, 3, 'MyApp', '[]', 0, '2019-12-12 14:37:29', '2019-12-12 14:37:29', '2020-12-12 21:37:29'),
('957f0f29b4620a180ba4682db355158e60057bbb64279f9275694a8d0af4aee98c51b993fad6e7ba', 2, 1, 'MyApp', '[]', 0, '2019-09-30 06:53:28', '2019-09-30 06:53:28', '2020-09-30 13:53:28'),
('9761787b65e923d954915b03d4504f622ee437519d0c5b7532248fe0775160acffa4dcd3a51c8036', 2, 1, 'MyApp', '[]', 0, '2019-11-21 02:49:12', '2019-11-21 02:49:12', '2020-11-21 09:49:12'),
('9abcd4c68f7bd96059b08786befc2a05662cc21cf25646b973613348e9a38e6e7a0efe9d52f6a047', 3, 3, 'MyApp', '[]', 0, '2020-10-16 10:45:36', '2020-10-16 10:45:36', '2021-10-16 17:45:36'),
('9e5d855b030fa65945075f124be5c92abb62b90c5bb85a198fc77f4ddfe2d8e90e1867023d7e15b9', 2, 1, 'MyApp', '[]', 0, '2019-11-20 08:17:18', '2019-11-20 08:17:18', '2020-11-20 15:17:18'),
('a1def1f63076ae107d96cdd406f5e9eda14c47b0399783e373af6837079387ce89ac2dc4c5229779', 3, 3, 'MyApp', '[]', 0, '2019-12-12 14:39:03', '2019-12-12 14:39:03', '2020-12-12 21:39:03'),
('a24dc18a69b42249720f7065757c816421562d3da385d5fb9e2713fbd1ae3baffb79ba045736054e', 3, 3, 'MyApp', '[]', 0, '2020-12-26 10:28:01', '2020-12-26 10:28:01', '2021-12-26 17:28:01'),
('a5122cd3c92aac00e6cc1a4845212afe10671d8e180f13d7f9a7a9a6e0fbfc5c78f6cb00dffeb98d', 3, 3, 'MyApp', '[]', 0, '2020-05-09 11:40:31', '2020-05-09 11:40:31', '2021-05-09 18:40:31'),
('a87ef512a19828b4cb0a417e7315153f8b4cde9c491b06e5b27f958f6110e3c56f555d4366267d3b', 2, 1, 'MyApp', '[]', 0, '2019-11-21 02:56:59', '2019-11-21 02:56:59', '2020-11-21 09:56:59'),
('a9d0ca745bfad1781086a378e8d5c8ff78f68ae489220317789ae3a34b72fc48d5e335d37e223ac7', 2, 1, 'MyApp', '[]', 0, '2019-11-20 09:20:49', '2019-11-20 09:20:49', '2020-11-20 16:20:49'),
('aa9bd881dc6da1edcc9e84c44443473142dc890ef1f3130025fcfd1e91613b1fc914002ba31a7184', 3, 3, 'MyApp', '[]', 0, '2019-12-14 06:58:29', '2019-12-14 06:58:29', '2020-12-14 13:58:29'),
('aeed322cd892eb0c5446936b1018686d3474db6aeda6ade02ded976486f775a60ab4105d641a5afa', 2, 1, 'MyApp', '[]', 0, '2019-11-20 04:22:20', '2019-11-20 04:22:20', '2020-11-20 11:22:20'),
('aefd567547d123ede78000915905bd8999855ab454e385939b522bf2a7d63cad6d89433e4728f79e', 2, 1, 'MyApp', '[]', 0, '2019-11-20 04:35:48', '2019-11-20 04:35:48', '2020-11-20 11:35:48'),
('b0e6e4a2e1f3e031197d2b4739ec0109e0af2e456ccf71b7b0aaded0d85799285fe2f7c28fa07dde', 2, 1, 'MyApp', '[]', 0, '2019-11-20 09:09:29', '2019-11-20 09:09:29', '2020-11-20 16:09:29'),
('b17374b832224480ccb83b9ede6b046508482332ebcacb0e59af5a08bbd5b4005b5bb503a4980350', 2, 1, 'MyApp', '[]', 0, '2019-11-21 02:33:00', '2019-11-21 02:33:00', '2020-11-21 09:33:00'),
('b1e0e4e86249fde7b26c0a53e1944c59efc74601db9e8c37f1f6a745bb5d3c863e38bae769f05514', 3, 3, 'MyApp', '[]', 0, '2020-07-09 09:32:49', '2020-07-09 09:32:49', '2021-07-09 16:32:49'),
('b86ed1b5c9beec7db3ea066a2141289faf8d69a3a581a2d0d30b95024fb8cdd005a4de3217e2724f', 2, 1, 'MyApp', '[]', 0, '2019-11-20 09:36:32', '2019-11-20 09:36:32', '2020-11-20 16:36:32'),
('b9e8416318b86f40936527883c344a97452d59e42e9232e7e6e3340bb20a7a1aa8ac55d283f0f4a4', 3, 3, 'MyApp', '[]', 0, '2019-12-21 08:07:44', '2019-12-21 08:07:44', '2020-12-21 15:07:44'),
('bd5b2a56d67d22cb5493731051d8efaf325bfd10de8f10f888c87d593d09547dbec53b7c883f8a28', 3, 3, 'MyApp', '[]', 0, '2021-03-01 02:47:36', '2021-03-01 02:47:36', '2022-03-01 09:47:36'),
('beca74b1384bd04c08b5088f741b364dceb322b6dcc861dc5909f5819389585ec9580b00e2cfb146', 3, 3, 'MyApp', '[]', 0, '2021-03-01 02:45:53', '2021-03-01 02:45:53', '2022-03-01 09:45:53'),
('bff88b4410e5d8435307f94298daa2e594dd80f5506c750abee4094e864e4664cd852ded7961eb78', 3, 3, 'MyApp', '[]', 0, '2020-06-22 11:03:20', '2020-06-22 11:03:20', '2021-06-22 18:03:20'),
('c06964e720bec242e55ab5483fc88ba4fe65b817ad8255207ddb3c122620a2b4448395ac0a35d5e3', 3, 3, 'MyApp', '[]', 0, '2021-01-07 08:57:48', '2021-01-07 08:57:48', '2022-01-07 15:57:48'),
('c14eb92b5f606de800ff55307f119f80ff5e7a2549a18d788fc74acc11fb0880e9532d02da3df512', 3, 3, 'MyApp', '[]', 0, '2020-06-16 13:29:08', '2020-06-16 13:29:08', '2021-06-16 20:29:08'),
('c1ca142cd97ae78297c65bdf5097c99223529f11bdf350c998d797e98c1d774063165bf11e12b67b', 3, 3, 'MyApp', '[]', 0, '2021-01-04 03:38:21', '2021-01-04 03:38:21', '2022-01-04 10:38:21'),
('c8e4c6ff8ecf424d9e703e9c6995b378abc0ac3c58248e1adfa356c7cdb9bad1624a897ea737fc2d', 2, 1, 'MyApp', '[]', 0, '2019-11-20 04:36:20', '2019-11-20 04:36:20', '2020-11-20 11:36:20'),
('c92c65b7376c3e3f448632c7216b22dc6ef626791dbdd3105499e93ac571f74f21f283dc996783b2', 3, 3, 'MyApp', '[]', 0, '2020-03-31 14:36:40', '2020-03-31 14:36:40', '2021-03-31 21:36:40'),
('c9419eaff01bf0fd0554737340c639d3a2e2124de32c2b4fe36ef14773080dd1b9e14ff0793b6104', 2, 1, 'MyApp', '[]', 0, '2019-11-19 10:01:46', '2019-11-19 10:01:46', '2020-11-19 17:01:46'),
('c9ba6f2108ead433b8f2e7c65ca960271deb05fcbbc18c8dbf128ef514909cf547346cad687c63f8', 2, 1, 'MyApp', '[]', 0, '2019-11-20 08:51:07', '2019-11-20 08:51:07', '2020-11-20 15:51:07'),
('c9c916076cbe14510944a70dba7ef3bd2d1d3a6bbfe2bd2ec8fb846300359833263c2209d177bee5', 2, 1, 'MyApp', '[]', 0, '2019-11-21 02:33:29', '2019-11-21 02:33:29', '2020-11-21 09:33:29'),
('cab2100ee7f9fbcd88b8355911d89e08506c1c4f20eeae3aaae71de360b25ec6c378292d1a565914', 3, 3, 'MyApp', '[]', 0, '2020-12-16 11:12:58', '2020-12-16 11:12:58', '2021-12-16 18:12:58'),
('cc1ca86be41047b50ad7cfb500f6ebea4b1f2af49d51374ca96dfb1dad0e7ebd376f58aaa7527a74', 3, 3, 'MyApp', '[]', 0, '2020-12-16 03:03:58', '2020-12-16 03:03:58', '2021-12-16 10:03:58'),
('ccf0a1686386eebc85384eea451b02708de45a82456f90a800582bb8375186e509d9fed79e7352b9', 3, 3, 'MyApp', '[]', 0, '2020-05-23 09:10:54', '2020-05-23 09:10:54', '2021-05-23 16:10:54'),
('d2bf55e64f14ff17883e9af9f52a5072145efbfce585a246659e2244b7510ccf172e860726f6565a', 3, 3, 'MyApp', '[]', 0, '2020-10-16 10:45:05', '2020-10-16 10:45:05', '2021-10-16 17:45:05'),
('d37738000e07c780eeb5af3c19d2ee025f6f6513bb8b622d39c75ef54f761bf0465281a076ce4362', 3, 3, 'MyApp', '[]', 0, '2021-03-01 02:48:18', '2021-03-01 02:48:18', '2022-03-01 09:48:18'),
('d6d7aa5af79996163c0c11b5c94e4543e5dbab30df6c7a3f5071ba40555feaa821b107d14e54ca58', 3, 3, 'MyApp', '[]', 0, '2020-05-23 09:10:41', '2020-05-23 09:10:41', '2021-05-23 16:10:41'),
('d76eb2effb5c2e72f2fe7040cf5e29fec051da1506dd5d946b76b50dc91b178dd50c4e6d6f3afc49', 2, 1, 'MyApp', '[]', 0, '2019-11-20 07:49:21', '2019-11-20 07:49:21', '2020-11-20 14:49:21'),
('d780feb13dbc50be1c6f04831de21c790fef751d8d537dd3998e86dbd97356cae39e5b29e3e8d29b', 3, 3, 'MyApp', '[]', 0, '2021-01-07 09:00:35', '2021-01-07 09:00:35', '2022-01-07 16:00:35'),
('d989eec3679604898feddd40fa41198004e42a463d382a5f9dc3178176e1c8570e729a3f3f0159db', 3, 3, 'MyApp', '[]', 0, '2020-12-14 01:37:26', '2020-12-14 01:37:26', '2021-12-14 08:37:26'),
('dcd56bc495ad971093ae8b6b93b6a96a5a64ccc1afb6d593ff2f1b7d692b8d26a129d0ce698eab17', 3, 3, 'MyApp', '[]', 0, '2020-06-12 03:45:28', '2020-06-12 03:45:28', '2021-06-12 10:45:28'),
('de0b543b4cd804d61d029374c9f888cf324f15587db9e260342abc510b987882f6cacdbd0431658f', 2, 1, 'MyApp', '[]', 0, '2019-11-19 08:40:39', '2019-11-19 08:40:39', '2020-11-19 15:40:39'),
('de3168b0d4f14ce6aebc441fdead516788b9ef9ddf778c036eb9462f3752965c110e00498a9ea719', 2, 1, 'MyApp', '[]', 0, '2019-11-20 04:19:04', '2019-11-20 04:19:04', '2020-11-20 11:19:04'),
('de44e30168ac1cf5789c1128ed47b71ce390becc11be39c1bd73a7cb891e960dccd8eb279c7d4353', 2, 1, 'MyApp', '[]', 0, '2019-11-21 02:57:49', '2019-11-21 02:57:49', '2020-11-21 09:57:49'),
('e1d6f5fcea69762074cb68b3b617140b5fe168d609e7a56318861bc360927660d9d4952f6818c880', 3, 3, 'MyApp', '[]', 0, '2020-04-17 07:48:43', '2020-04-17 07:48:43', '2021-04-17 14:48:43'),
('e4ba8f04b24fe5bfe49f1ad72393fd5354a293cabd83b194b31c92ff9ba18f251375aaebc917665b', 2, 1, 'MyApp', '[]', 0, '2019-11-01 09:11:24', '2019-11-01 09:11:24', '2020-11-01 16:11:24'),
('e6812089b4f15d5f59c0ea6c7b42f58d6aef09dbe370356764d8af1e48401f8bd89ba1a930b32c42', 3, 3, 'MyApp', '[]', 0, '2021-03-01 02:47:52', '2021-03-01 02:47:52', '2022-03-01 09:47:52'),
('e79f32e39c68095ac13b96adca865e3474824ee1025271f7603887ad74450e9bb85e8ad5588025f5', 3, 3, 'MyApp', '[]', 0, '2020-03-11 11:42:17', '2020-03-11 11:42:17', '2021-03-11 18:42:17'),
('e7e3867b98ad6d13d8c8bcdbb1299f3113329453653b121d86e60e8a469d51554c767f89dbf0a455', 2, 1, 'MyApp', '[]', 0, '2019-11-21 02:39:41', '2019-11-21 02:39:41', '2020-11-21 09:39:41'),
('e9532b24cf8c4da0e69418c0441e0e54fd66e59bbd77ff64ef25573746a5b2a484c436d9aa5ff4f5', 3, 3, 'MyApp', '[]', 0, '2020-05-20 15:41:40', '2020-05-20 15:41:40', '2021-05-20 22:41:40'),
('e9f1f2ec6bb29b3858a497c3406f7e5927e4b9a7f4078bbb1cd83f76c5747e4895309c1476217f16', 2, 1, 'MyApp', '[]', 0, '2019-11-01 09:10:28', '2019-11-01 09:10:28', '2020-11-01 16:10:28'),
('eac4818dfab9b962b85235ff48b9a21f0da97aafe13dd7ec9cb1132aff00ee8ac3639ef350bab925', 2, 1, 'MyApp', '[]', 0, '2019-11-01 09:11:07', '2019-11-01 09:11:07', '2020-11-01 16:11:07'),
('ec65a441077a8789247e4d654e562c87095640867c140040f0b65c36310eab0280c96164de050610', 2, 1, 'MyApp', '[]', 0, '2019-11-20 07:48:51', '2019-11-20 07:48:51', '2020-11-20 14:48:51'),
('edbf658629b291d72dbaec2cac4f89a673eaed166c4a75a9c97293d9c0dda5ca925d71497c42e280', 2, 1, 'MyApp', '[]', 0, '2019-11-01 09:19:13', '2019-11-01 09:19:13', '2020-11-01 16:19:13'),
('f165ceab272f50e63e167eb661f755bde5ee2658074be332bbfd7575352d32936f888e0299fcb02a', 2, 1, 'MyApp', '[]', 0, '2019-11-19 08:28:44', '2019-11-19 08:28:44', '2020-11-19 15:28:44'),
('f1d70d83f6b5c633892a0dec44661b537e0e722cdd234a3dbdc0e6e918839b5e1997807a5aeac7be', 3, 3, 'MyApp', '[]', 0, '2020-12-14 01:32:24', '2020-12-14 01:32:24', '2021-12-14 08:32:24'),
('f1fceadc96b4dd3c14d2f9aad7c28cc65b20295254370478b75d9394c2f73de21b5ded17f51c66d1', 2, 1, 'MyApp', '[]', 0, '2019-11-20 09:10:53', '2019-11-20 09:10:53', '2020-11-20 16:10:53'),
('f23d81a1ed6f439ccbd59a8f02fb421634247c1291306f136dbc4498cbeb0e0b6548f241cadc97b1', 3, 3, 'MyApp', '[]', 0, '2021-01-29 03:16:07', '2021-01-29 03:16:07', '2022-01-29 10:16:07'),
('f4dc2b983a65e772c670b0d2993c0fbc8a8f38eb338206cc8f721cc58068ced261e87159982ce68b', 3, 3, 'MyApp', '[]', 0, '2020-05-20 16:00:28', '2020-05-20 16:00:28', '2021-05-20 23:00:28'),
('f8e68ecee633ad29a6ee17a9e4a165381da1100ca9d5cd67a9e33ce7a6de801aeabcc89aa4b0f295', 3, 3, 'MyApp', '[]', 0, '2020-07-24 03:40:57', '2020-07-24 03:40:57', '2021-07-24 10:40:57'),
('fa27f2445878cccc55b48eeeaed7a115403f236cbaa1161d5294d86aa6ba404966e5e7db8982a73a', 3, 3, 'MyApp', '[]', 0, '2019-12-19 14:01:19', '2019-12-19 14:01:19', '2020-12-19 21:01:19'),
('fac090af6f2bb687ef0e994cf256bcf8efff1e97d15d4ec376e1f2a835076825578ac00810264c7c', 2, 1, 'MyApp', '[]', 0, '2019-09-30 06:56:16', '2019-09-30 06:56:16', '2020-09-30 13:56:16'),
('fbc3884296cc992bc503c19c0695888849636c694a73bab386d70ad4e5cc1d9222de5352bcd53eb4', 2, 1, 'MyApp', '[]', 0, '2019-11-21 02:46:47', '2019-11-21 02:46:47', '2020-11-21 09:46:47'),
('feca765fef3e4f073d58c49f5aff78424e5cd8a36772f344fd56730ccddee8e68d76fee8d5c8c81e', 3, 3, 'MyApp', '[]', 0, '2021-03-01 02:42:51', '2021-03-01 02:42:51', '2022-03-01 09:42:51'),
('ff374fae32d754382f49533b8a10e2c0ed4667f25fa311e06855df3c3f27880ba8c5644520ff2204', 2, 1, 'MyApp', '[]', 0, '2019-11-21 03:46:24', '2019-11-21 03:46:24', '2020-11-21 10:46:24'),
('ffc354b7ce29d0ea135fd2fcc4e41403871e8b3ba4504e7d20faed907356df15f179ad1aaa32d651', 3, 3, 'MyApp', '[]', 0, '2021-01-20 03:45:56', '2021-01-20 03:45:56', '2022-01-20 10:45:56'),
('ffc53f66d963fef39861abd34a31f84125707cbfb1cd1bc59c2c88b90fabe0c082cb5379ab1a7e3f', 3, 3, 'MyApp', '[]', 0, '2020-11-10 10:40:02', '2020-11-10 10:40:02', '2021-11-10 17:40:02');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', '6r9ST5lDJnKqrUXRKUleKdU0lzt1g8OnBwk0S3hE', 'http://localhost', 1, 0, 0, '2019-09-30 03:47:52', '2019-09-30 03:47:52'),
(2, NULL, 'Laravel Password Grant Client', 'sbMspF3pV5xkFDdekcrsbWUA3Q78z4EREMuBaf6t', 'http://localhost', 0, 1, 0, '2019-09-30 03:47:52', '2019-09-30 03:47:52'),
(3, NULL, 'Laravel Personal Access Client', 'ym2BhDe1U2aZ1EVBhOinLd9HAeVuGfxONgxzmY26', 'http://localhost', 1, 0, 0, '2019-11-27 14:54:00', '2019-11-27 14:54:00'),
(4, NULL, 'Laravel Password Grant Client', 'T91yeIEmJFxdfhatgQEPDvzaNez8rFuZdXx9Pnxp', 'http://localhost', 0, 1, 0, '2019-11-27 14:54:00', '2019-11-27 14:54:00');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2019-09-30 03:47:52', '2019-09-30 03:47:52'),
(2, 3, '2019-11-27 14:54:00', '2019-11-27 14:54:00');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `one_page`
--

CREATE TABLE `one_page` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  `id_auth` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `one_page`
--

INSERT INTO `one_page` (`id`, `slug`, `description`, `content`, `id_auth`, `created_at`, `updated_at`) VALUES
(1, 'about', 'about test', '<p>&nbsp;</p>\r\n\r\n<p>content test<img alt=\"\" src=\"/ckfinder/userfiles/images/about/lichhoc2.jpg\" style=\"height:960px; width:802px\" /></p>', 1, '2019-07-09 01:50:41', '2019-07-09 01:50:41'),
(5, 'dang-thien-bao', '1111', '<p>Tọc đến đ&acirc;y, c&aacute;c bạn sẽ thắc mắc trường đầu ti&ecirc;n khi gọi&nbsp;<code>Mail::send()</code>&nbsp;c&oacute; &yacute; nghĩa l&agrave; g&igrave;?<br />\r\nC&acirc;u trả lời l&agrave; đ&acirc;y l&agrave; template của email. Vậy để ho&agrave;n thiện một email gửi đi, bước tiếp theo ch&uacute;ng ta cần l&agrave;m l&agrave; tạo một template cho email. Tr</p>', 1, '2019-07-09 21:14:58', '2019-07-09 21:14:58');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_category` int(11) NOT NULL,
  `id_brand` int(11) NOT NULL,
  `id_user` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `web_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '1:sale 0:new',
  `sale` int(11) DEFAULT NULL,
  `condition` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `detail` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_profile` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `highlight` tinyint(1) NOT NULL DEFAULT '0',
  `active` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `id_category`, `id_brand`, `id_user`, `name`, `image`, `web_id`, `price`, `status`, `sale`, `condition`, `detail`, `company_profile`, `highlight`, `active`, `created_at`, `updated_at`) VALUES
(17, 1, 2, '2', 'Đặng Thiên Bảo', '[\"1570693249_Full-Stack-Web-Developer.png\",\"1570693250_maxresdefault.jpg\"]', NULL, 1000000, 0, NULL, NULL, '434', '1', 0, 0, '2019-10-10 07:40:50', '2019-10-10 07:40:50'),
(18, 1, 2, '2', 'Đặng Thiên Bảo 2', '[\"1570693249_Full-Stack-Web-Developer.png\",\"1570693250_maxresdefault.jpg\"]', NULL, 250000, 0, NULL, NULL, '434', '1', 0, 0, '2019-10-10 00:40:50', '2019-10-10 00:40:50'),
(22, 2, 2, '3', 'baotestmoi2', '[\"1596771423_10550111_810170282337093_7932322518190518683_o.jpg\"]', NULL, 1000, 1, 0, NULL, '43434', 'company', 0, 0, '2020-08-07 03:37:04', '2020-08-07 03:37:04'),
(24, 2, 1, '3', 'admin35325', '[\"1611116465_dan1.jpg\",\"1611116467_dan2.jpg\"]', NULL, 10003252, 1, 0, NULL, '323', '2', 0, 0, '2020-08-07 03:52:54', '2021-01-20 04:21:08'),
(25, 2, 1, '3', 'test4444555', '[\"1614820793_103249187_278173313323317_7711691748911419841_n.png\",\"1614820793_104403830_2588656278019160_8945848661646053256_n.jpg\"]', '1', 455, 0, NULL, '31', '424', '4242', 0, 0, '2021-03-04 01:19:54', '2021-03-04 01:20:19');

-- --------------------------------------------------------

--
-- Table structure for table `products_api`
--

CREATE TABLE `products_api` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `availability` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products_api`
--

INSERT INTO `products_api` (`id`, `title`, `description`, `price`, `availability`, `created_at`, `updated_at`) VALUES
(1, 'e7t058gkG4', 'Y3Q4ygHwr4HQDvtEQzOvtrk8WRuL23AYbMVnEtGnyALGQNZYtY', 47403, 0, NULL, NULL),
(2, 'Si9ca2Ozlt', 'zrtFpnpGTlqzdpqz5RTZqL7lIlbDQl28vuWNh2OVvMWXYNFArR', 63027, 0, NULL, NULL),
(3, 'IBbRgiMyNf', '4PgmI96x6nRcyM0QaOXSYPkwZRAHZoOqyOvIYzAaUCo8T1uhfd', 11706, 0, NULL, NULL),
(4, '8nHTEngDgB', '3aGKF2HZ9LTL8lp9cVgfPuT75OUJfyBnpHfhLTuDnWSBlNqWna', 20037, 0, NULL, NULL),
(5, 'B7IuvZfwza', 'kHMLkkHruziWWqGim3FK9feSKdzImJH6j66A9ZzQbaLgClLF3O', 17428, 0, NULL, NULL),
(6, 'wNTPDE6LHN', '8GTsehKibAkG3FNwAly86RRi5p1WN8LmOJTwPqOqhr8RFKnZ2T', 9917, 1, NULL, NULL),
(7, 'fBwnT6rtuq', 'S4DSn69NfYJpRKBBvjSnZk6wjNtIFOwmrrDJ7zkccKaSgkztMT', 38194, 0, NULL, NULL),
(8, 'X9WL36UuJb', 'Cj35yhcawLnKxqUmRoXWfZaB8716tIlefuVfyc50PDDkFtAM4C', 8877, 1, NULL, NULL),
(9, 'JD8qvZCAqM', 'neOSE6JqQYSMaxVIBaztisyGmvsBYHh0XzKKghjrtm1kcYMLdu', 87298, 1, NULL, NULL),
(10, 'Aq9BtSXiUJ', 'n5JbbfCHrArbyC6NWUUIXABW3HfPlyW0NErkH2H1yJZ5V4Q0MV', 99112, 1, NULL, NULL),
(11, 'sp1buANFqs', '6mNrheB0YE42yMwE7vfZTnpvfG0i5mSpC3IyVKvQp9imml7CGZ', 86027, 1, NULL, NULL),
(12, 'SeSlppO2pP', 'kWwRBmyKbNeD3bDpkRNboENksYAYe2EoBweafAOknbUeSx2wfN', 66512, 1, NULL, NULL),
(13, 'hwiv1mlacf', 'slnVd90dXJrCBoHV10oZAsJxqs5XcO7OVlak2nfKKh81i69e84', 31157, 1, NULL, NULL),
(14, 'JfC34WDRzp', '8iv5SlQUYb4fdSg42CFPpZQzZ7e9vFHjQrP7IU4lUOrwUxnd2J', 73457, 1, NULL, NULL),
(15, 'dW8YLfUMLE', 'tdmw12FxXVdWhdLvyGLcwwk4wPWtx5LCMyE01hAEAG3yIWmVXH', 14714, 1, NULL, NULL),
(16, 'AHIGZlbEQT', 'ODFvkUN3uLlsDHZ2BTmZis3IdYpXdzMf2eVF2pPnbTb4NeyOvs', 98204, 0, NULL, NULL),
(17, 'fyJIUweziD', '2CcLErO7vN823aPFxkWPE56oWrdz8lN0z4WcNf65mnuE5Fasyk', 72879, 0, NULL, NULL),
(18, 'Rr9ycXhRgj', 'vnwuATaZPwRg3mIPov6L8vdkCgpXCII47rB8VPbPL4v91IJqlX', 25514, 0, NULL, NULL),
(19, 'Em2Uir4QCe', 'Si7jAoSLfxq4XoNRqJqHYz9F6cjWhoY2KXtgfslXwOh50BwKkk', 32801, 0, NULL, NULL),
(20, '2vFeTBCyz6', 'Tv2mUSFwniLCoQ3B4NxiO2WS2UrGOHbAaVnLJCPW3lCUxYS4Mv', 65862, 1, NULL, NULL),
(21, 'KyjgMLX5Iw', 'kYcvTa4ujPRJ8Iwth9f0ZL9MaK87PaOAxfaHHWUvXxn5zk8xGe', 68564, 1, NULL, NULL),
(22, '8PQxvGYaUS', 'L6LLH6f6eJi88oWVe79DBC2FBpBunzJnabHnuHow3ecdDRBd5O', 59210, 1, NULL, NULL),
(23, 'Z3QwmaBYET', 'PyVuux6RjTVa5Qa7PrFDTP6hrEgWNeLV6ENNVg3qO9DxwKDGCd', 99850, 0, NULL, NULL),
(24, 'wBqjkqvVFw', 'zLKxVW0B18ZeLbBxYuJNhZeX2aVdKaxzxbL9RJPIZ0saaGPuHl', 75124, 0, NULL, NULL),
(25, 'bGZeoAZqLS', 'U3X05GnnxjetK5f6rgjCOr4YSgOYaF75mAWQbH4ePVGXYrzfTl', 62258, 1, NULL, NULL),
(26, 'ZQrcJF2JU0', 'y3AN6Q6LkVoKKARBfWTQiWIgMMW99lLW8odXBhpWSBoZJxSF9R', 17295, 1, NULL, NULL),
(27, 'wmrtXx5NZh', 'TX2gZIW31kTYkSf7Jtw6OqJSekbHMsNTha9zAtwiZ3j8hDeLra', 81328, 0, NULL, NULL),
(28, 'iRI6aOfF5Z', 'FxJVbyLEY2zIyIAAdoVVRFeh0ljsC4x2tU6FhKZbYZhS74gmyy', 48251, 1, NULL, NULL),
(29, 'fZHqJcy6N3', '7diwX9EHQiupw1wYVLMqKrdMgektc2ocNLnijOOdMGzXY84xVo', 45459, 1, NULL, NULL),
(30, 'IVwwRsVqYF', 'zdeyhrHBLwhvLdXHjkSSAPRxchzE0O7jM0U2ndeHek0felCMAq', 63335, 1, NULL, NULL),
(31, 'dbb8nJwHb7', 'AfsdnZI5l5Ni4igMSbOO7pWdZ9bHxVQtCDSdsWrhlvHtuFN7sC', 97223, 1, NULL, NULL),
(32, 'LMHezKyLqS', '0PsDAoy2zQzlItKqXZ6CMNOHYaUXl8dbvgepRPijrFcPbNY3pm', 22001, 1, NULL, NULL),
(33, 'jpbBDNawog', 'xtPHHt2db7Cn7RbRVqFo9fXtonB2qDk9iErS2WylrFeJywWJ9y', 40212, 0, NULL, NULL),
(34, 'Vae7zoGh4N', 'W7LutnXkeTLLdeaJ7C35rUmEBdP64wS6aMODVRJkK2gayOkHEB', 9888, 1, NULL, NULL),
(35, 'XIdIOevlLk', 'BZY6PlDUUqMYFmwT3DlA0pBlhSl0GiV6Q8Y0vScNZRuzi43rI9', 1948, 1, NULL, NULL),
(36, '7LkJ4KwtRg', 'Gyt2iKgVdqQaPAW2u0tw6IaLo2asArNSH35Cz3UU0f8GqXidwz', 47098, 0, NULL, NULL),
(37, 'wJ7IpxFfII', 'U9h3Rg0GEGUJcDQl08HL4cxg1zddgYWcQD4vsA6SWmbQ06P20x', 71203, 0, NULL, NULL),
(38, '1PynrSKT0F', 'hqiNOGb2saOjjx0KaKi3JL1LSHG1lYVBexejaFGOjUBFA4RFRk', 12288, 1, NULL, NULL),
(39, '24wHhI5T6a', '7yAggnW68Ox9KksAv1Ghb5bd2M18lJmpjFlVmoiVLqOrnsjhcg', 3595, 1, NULL, NULL),
(40, 'T15NSMxkra', 'wMvJq2XHxd2B8CiIwUwNG9WdqC6xUFzVTOVy72R5wzhD8Ynj68', 27124, 1, NULL, NULL),
(41, 'rXRwQoSbtB', 'iCd69wlJVnv0yavFQKpWyBJPiidLNYwe9sCxmmmKXSFUQUhFs0', 13096, 1, NULL, NULL),
(42, 'J6f4Z1hJqE', 'RtxUskgGuISN0fYp8lwyAWQmoxU0ZR5wDoYVrO0ZWL4V6IqQvo', 65364, 1, NULL, NULL),
(43, 'k7cSZhchyz', 'tecrbH7wJKf1cYowCopUgH3Q24S1pWqM67iYhn9EmPAx0IQfMK', 34820, 1, NULL, NULL),
(44, 'QJWktr36fM', 'jM9O2GnO0WYafATuJtuGx6a6fVFFOshUKn6A4qp9wlaGYgMcgH', 70075, 0, NULL, NULL),
(45, 'WSTnNQE01s', 'JcVb97XLZDqITm3fvYK2SNDbpMW8KLmwrIyOO51e7xjRbBDgdm', 27236, 0, NULL, NULL),
(46, '4sHO7iW9gO', 'T3EuLNbMofGqj7qmMbE9sxj1ewlad2FyrZatb5G3E3vQllAJa9', 49073, 0, NULL, NULL),
(47, '5BFE6ZDBCt', 'uaO0AivPFUJHVc1QcUroETP6Ll7SMElYG9Zqan0J5xBzFgNX1w', 33390, 0, NULL, NULL),
(48, 'mlzME8mgNq', 'iM4fLxMr1CXSWXy4YWqo3P5YsUQoagsYUBpcuCOiey4RdMXEo0', 77141, 1, NULL, NULL),
(49, 'vR2T5JAGqu', 'AHCEraBjXD9GA7Ld3cQq5OaSFoMbZ5Itdu4IWedUCHWhs2aMSU', 75384, 0, NULL, NULL),
(50, '7LFnRN2bKR', 'O9kPHHLHqwCDiDxSgipPhVt7DXfETUjyOQkONPA1wrq3nCxJ82', 48388, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `rate`
--

CREATE TABLE `rate` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `blog_id` int(11) NOT NULL,
  `rate` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `rate`
--

INSERT INTO `rate` (`id`, `user_id`, `blog_id`, `rate`, `created_at`, `updated_at`) VALUES
(1, 3, 4, 4, '2020-01-18 02:33:22', '2020-01-18 02:33:22'),
(2, 3, 4, 3, '2020-05-09 09:58:10', '2020-05-09 09:58:10'),
(3, 3, 4, 3, '2020-05-23 09:17:49', '2020-05-23 09:17:49'),
(4, 3, 4, 3, '2020-07-10 04:24:42', '2020-07-10 04:24:42');

-- --------------------------------------------------------

--
-- Table structure for table `rate_product`
--

CREATE TABLE `rate_product` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_product` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `rate` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `rate_product`
--

INSERT INTO `rate_product` (`id`, `id_product`, `id_user`, `rate`, `created_at`, `updated_at`) VALUES
(1, 17, 1, 3, '2020-01-18 02:49:33', '2020-01-18 02:49:33');

-- --------------------------------------------------------

--
-- Table structure for table `review_product`
--

CREATE TABLE `review_product` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_product` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `name_user` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar_user` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_sub` int(11) DEFAULT NULL,
  `review` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `test`
--

CREATE TABLE `test` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `test`
--

INSERT INTO `test` (`id`, `title`, `image`, `description`, `content`, `created_at`, `updated_at`) VALUES
(1, 'ttutle', NULL, 'abc', NULL, '2020-06-05 12:30:13', '2020-06-05 12:30:13'),
(2, '111', NULL, '222', NULL, '2020-06-05 12:31:19', '2020-06-05 12:31:19');

-- --------------------------------------------------------

--
-- Table structure for table `testapi`
--

CREATE TABLE `testapi` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `availability` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `testapi`
--

INSERT INTO `testapi` (`id`, `title`, `description`, `price`, `availability`, `created_at`, `updated_at`) VALUES
(2, '111aaaa', '11', 11, 1, '2019-08-19 01:48:11', '2019-08-19 01:48:11');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `level` int(10) UNSIGNED NOT NULL DEFAULT '1' COMMENT '1:admin 0:member',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `phone`, `address`, `country`, `avatar`, `remember_token`, `level`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@gmail.com', NULL, '$2y$10$frFF02znmCxT6f8NuAHad.wkdM7kdJTfwcdQfFCwj4hITBuk0AV6q', NULL, NULL, NULL, '91548208_1127800400889728_5057629625207750656_n.jpg', NULL, 1, '2019-08-01 07:31:18', '2021-03-03 08:50:26'),
(2, 'baovic', 'test123@gmail.com', NULL, '$2y$10$frFF02znmCxT6f8NuAHad.wkdM7kdJTfwcdQfFCwj4hITBuk0AV6q', '1111111', 'hung vuong', NULL, 'man-two.jpg', NULL, 1, '2019-08-01 07:32:01', '2019-09-23 07:06:03'),
(3, 'bao vic', 'baovic@gmail.com', NULL, '$2y$10$Ksr6PO/YbYrsk.QeMSRvEOx36MCgOpNrjVYhWDutXxF9VKm8UHUIe', '11111111222222', 'da nang', '5', '1574493279.png', NULL, 0, '2019-11-23 07:14:39', '2021-03-04 01:16:32'),
(4, 'text', 'thienbaoit2017@gmail.com', NULL, '$2y$10$ZmrjRGmy9FSPljad1FPXZ.XtF93PqABPFh4xz8lBqmY7Wp415wk3u', '111111', '1111', '3', '/Applications/MAMP/tmp/php/phpVxVOTq', NULL, 0, '2021-03-03 13:50:19', '2021-03-03 13:50:19'),
(5, 'baotest', 'baotest2@gmail.com', NULL, '$2y$10$PigaqBo5gbrEy6Acfg1S4OUjzga52uPGz0IpkWb87HFRjkQSMdWHu', '111111', '111111', '3', '/Applications/MAMP/tmp/php/phpPhQJM8', NULL, 0, '2021-03-03 13:57:10', '2021-03-03 13:57:10'),
(6, 'baotest4', 'baotest4@gmail.com', NULL, '$2y$10$/kOBUDDYKRm2IhsL0tdlCeTk733gfK891IcDY/n4HXwK.xivtCDRm', '111111', '1111', '4', 'dan3.jpg', NULL, 0, '2021-03-03 13:59:14', '2021-03-03 13:59:14');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blog`
--
ALTER TABLE `blog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `brand`
--
ALTER TABLE `brand`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `country`
--
ALTER TABLE `country`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_personal_access_clients_client_id_index` (`client_id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `one_page`
--
ALTER TABLE `one_page`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products_api`
--
ALTER TABLE `products_api`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rate`
--
ALTER TABLE `rate`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rate_product`
--
ALTER TABLE `rate_product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `review_product`
--
ALTER TABLE `review_product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `test`
--
ALTER TABLE `test`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `testapi`
--
ALTER TABLE `testapi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `blog`
--
ALTER TABLE `blog`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `brand`
--
ALTER TABLE `brand`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `comment`
--
ALTER TABLE `comment`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `country`
--
ALTER TABLE `country`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `one_page`
--
ALTER TABLE `one_page`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `products_api`
--
ALTER TABLE `products_api`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `rate`
--
ALTER TABLE `rate`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `rate_product`
--
ALTER TABLE `rate_product`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `review_product`
--
ALTER TABLE `review_product`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `test`
--
ALTER TABLE `test`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `testapi`
--
ALTER TABLE `testapi`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
