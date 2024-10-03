-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Oct 03, 2024 at 06:44 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.1.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bookmanagementtask`
--

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `writer` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`id`, `title`, `writer`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Voluptatem neque ea deleniti.', 'Dr. Rhianna Vandervort III', 'Laudantium repellendus in harum ab tempore. Omnis aut explicabo nulla veniam. Laborum et mollitia eum quia beatae est veniam.', '2024-10-02 10:19:58', '2024-10-02 10:19:58'),
(2, 'Dolor minus ut.', 'Billy Haley', 'Aliquid quidem sunt mollitia est et voluptas. Qui veritatis quod dicta laboriosam neque ut voluptas. Quas qui eaque eum reiciendis explicabo. Praesentium voluptatem ullam ut est minima blanditiis fuga.', '2024-10-02 10:19:58', '2024-10-02 10:19:58'),
(3, 'Temporibus aperiam animi aliquam.', 'Stephania Bernhard IV', 'Est qui repellendus non totam amet consequuntur. Quidem illo hic voluptas. Quisquam ea exercitationem quae cum qui.', '2024-10-02 10:19:58', '2024-10-02 10:19:58'),
(4, 'Vero reiciendis cupiditate aliquam.', 'Marina Gorczany', 'Minus consequatur reprehenderit ut ex consectetur. Nobis incidunt qui sint debitis veritatis. Ut sit necessitatibus dolor numquam atque.', '2024-10-02 10:19:58', '2024-10-02 10:19:58'),
(5, 'Consequatur laboriosam corporis facere rerum.', 'Charlie Halvorson', 'Rerum veritatis voluptatem sed magnam. Ut rerum cupiditate et ea quam consequuntur. Est facilis sapiente ea sed est odio consectetur.', '2024-10-02 10:19:58', '2024-10-02 10:19:58'),
(6, 'Quae recusandae officiis.', 'Emma Rogahn', 'Et vero dicta cum. Voluptas deleniti iste inventore consequatur. Quae hic eum quasi iure quis consequatur.', '2024-10-02 10:19:58', '2024-10-02 10:19:58'),
(7, 'Dolore ut quia.', 'Candido Weber', 'Voluptates amet qui quas at numquam. Rem eum aut officiis magnam tempore expedita in qui. Eius ducimus saepe placeat quisquam libero iste ut. Eum dolor quae eos ad eum.', '2024-10-02 10:19:58', '2024-10-02 10:19:58'),
(8, 'Eveniet commodi qui laborum.', 'Theo Champlin DDS', 'Dolores doloribus cumque molestiae molestiae. Cupiditate quas perspiciatis magni ipsum sit et. Et assumenda omnis praesentium corrupti cupiditate sed. Esse dolor eos in excepturi voluptate est temporibus.', '2024-10-02 10:19:58', '2024-10-02 10:19:58'),
(9, 'Magnam excepturi cum quia.', 'Tate Mante DVM', 'Repellat ad perspiciatis in quisquam. Consectetur at inventore alias et placeat hic maiores. Doloribus totam deleniti labore perferendis earum eos. Quia aspernatur dicta ea. Ut voluptatem sint quia qui et quas quia.', '2024-10-02 10:19:58', '2024-10-02 10:19:58'),
(10, 'Reiciendis praesentium blanditiis voluptas esse.', 'Demario Schultz', 'Distinctio molestias eius perferendis aut. Aperiam illum alias natus unde. Occaecati debitis qui omnis hic dolorem.', '2024-10-02 10:19:58', '2024-10-02 10:19:58'),
(11, 'In inventore facilis voluptatem.', 'Mrs. Peggie Hirthe II', 'Quas velit corporis aut ipsa. Atque ut et nisi est. Sapiente quas eum dolorem quis officia nobis. Nostrum veniam consequatur molestiae itaque consequuntur ut aspernatur.', '2024-10-02 10:19:58', '2024-10-02 10:19:58'),
(12, 'Adipisci officia nam iure.', 'Krista Moore', 'Reprehenderit minima sed maiores maiores. Ea quisquam porro placeat beatae aperiam iure eum. Non id pariatur dolores totam nulla voluptatibus commodi tenetur.', '2024-10-02 10:19:58', '2024-10-02 10:19:58'),
(13, 'Cupiditate iusto unde consequatur.', 'Geraldine Wilderman III', 'Perferendis est mollitia est enim placeat. Delectus velit tempora sint quia. Necessitatibus rerum vitae corrupti nostrum nihil. Adipisci eaque amet non et consequatur doloribus. Quod molestias dolores nobis officiis.', '2024-10-02 10:19:58', '2024-10-02 10:19:58'),
(14, 'Temporibus sunt nihil at.', 'Mr. Guiseppe Sipes', 'Praesentium et ex fugit nesciunt. Nam quos ut ea. Cupiditate sed voluptatem dolorem quia.', '2024-10-02 10:19:58', '2024-10-02 10:19:58'),
(15, 'Rem quia quo.', 'Carrie Smitham', 'Omnis nihil reprehenderit modi distinctio provident blanditiis ab iusto. Atque dolorum dicta quis sit facere consequuntur quidem. Nihil ad aperiam dolore aut. Mollitia unde architecto similique.', '2024-10-02 10:19:58', '2024-10-02 10:19:58'),
(16, 'Nesciunt aut nobis aliquid.', 'Ms. Amelia Wisoky I', 'Dolores aut et ad ea. Temporibus sed ut nemo quo non dolore. Animi hic iste doloribus quia quasi voluptatem.', '2024-10-02 10:19:58', '2024-10-02 10:19:58'),
(17, 'Iusto sequi.', 'Kelli Herman', 'Perspiciatis rerum omnis voluptate accusamus eos. Tenetur soluta et praesentium perspiciatis alias libero saepe. Animi perspiciatis rem asperiores exercitationem sequi molestias.', '2024-10-02 10:19:58', '2024-10-02 10:19:58'),
(18, 'Quasi vitae perferendis reprehenderit.', 'Mrs. Verda Corwin Jr.', 'Quisquam fugit omnis delectus non enim et. Velit architecto iure velit voluptatum repellat cum labore. Fuga debitis natus assumenda facere et eum velit. Animi tempora esse et a minus enim non.', '2024-10-02 10:19:58', '2024-10-02 10:19:58'),
(19, 'Culpa id eum qui.', 'Prof. Abe Koelpin', 'Aut commodi ratione fugiat eos dolorem quibusdam minus aut. Quia sit deserunt voluptas officia. Quis delectus ipsum hic enim. Tempore illo fugit id qui sit at. In fugit consequatur autem iusto tenetur tempore.', '2024-10-02 10:19:58', '2024-10-02 10:19:58'),
(20, 'Ut sit dolore voluptatem.', 'Dr. Henriette Stehr', 'Aliquid laboriosam autem quisquam molestias necessitatibus aut. A et nemo quae alias aliquid doloremque occaecati. Voluptas officiis natus cupiditate id debitis. Et voluptas beatae facere recusandae neque nisi.', '2024-10-02 10:19:58', '2024-10-02 10:19:58');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `book_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `comment` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `book_id`, `user_id`, `comment`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'sdsddsd', '2024-10-02 10:21:26', '2024-10-02 10:21:26'),
(2, 1, 1, 'sdssdsd test2', '2024-10-02 10:21:33', '2024-10-02 10:21:33'),
(3, 1, 2, 'sdsdsdsds', '2024-10-02 13:14:15', '2024-10-02 13:14:15'),
(4, 5, 1, 'dssd', '2024-10-02 22:46:33', '2024-10-02 22:46:33');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2014_10_12_100000_create_password_resets_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2024_10_02_093445_create_books_table', 1),
(7, '2024_10_02_093446_create_ratings_table', 1),
(8, '2024_10_02_093531_create_comments_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ratings`
--

CREATE TABLE `ratings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `book_id` bigint(20) UNSIGNED NOT NULL,
  `rating` double DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ratings`
--

INSERT INTO `ratings` (`id`, `user_id`, `book_id`, `rating`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, '2024-10-02 10:26:10', '2024-10-02 23:00:25'),
(3, 2, 1, 4, '2024-10-02 10:33:38', '2024-10-02 11:43:31'),
(7, 3, 1, 5, '2024-10-02 14:24:51', '2024-10-02 14:53:17'),
(8, 3, 3, 5, '2024-10-02 14:32:55', '2024-10-02 14:35:21'),
(9, 3, 6, 5, '2024-10-02 14:33:04', '2024-10-02 14:53:22'),
(10, 3, 4, 5, '2024-10-02 14:35:36', '2024-10-02 14:35:36'),
(11, 3, 8, 5, '2024-10-02 14:35:48', '2024-10-02 14:35:48'),
(12, 3, 9, 5, '2024-10-02 14:53:30', '2024-10-02 14:53:30'),
(13, 3, 10, 2, '2024-10-02 14:54:19', '2024-10-02 14:54:19'),
(14, 1, 2, 1, '2024-10-02 22:38:11', '2024-10-02 22:38:11'),
(15, 1, 4, 4, '2024-10-02 22:38:23', '2024-10-02 22:38:23'),
(16, 1, 3, 2, '2024-10-02 22:46:40', '2024-10-02 22:46:40'),
(17, 1, 7, 2, '2024-10-02 22:47:27', '2024-10-02 22:47:27');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Karishma Sharma', 'karishmasharma2424@gmail.com', NULL, '$2y$12$PpR7fvNR1jX9CwoWu2dLaOKhAxQK6EE8YtmwxdsHFQ258fsgH1VFm', NULL, '2024-10-02 10:20:15', '2024-10-02 10:20:15'),
(2, 'kavita', 'kavita@gmail.com', NULL, '$2y$12$wG1bf9hD3.biG/qtNXth8evq8u6ShGk2bNnie0IJnqzIs6Ug3gDdK', NULL, '2024-10-02 10:33:34', '2024-10-02 10:33:34'),
(3, 'akki', 'akki@gmail.com', NULL, '$2y$12$yBEZ.ceNLvLuU.8VemziRedodA6pzmtqPMr3RfL2okONE.o4Dlm/y', NULL, '2024-10-02 13:33:14', '2024-10-02 13:33:14');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_book_id_foreign` (`book_id`),
  ADD KEY `comments_user_id_foreign` (`user_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `ratings`
--
ALTER TABLE `ratings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ratings_user_id_foreign` (`user_id`),
  ADD KEY `ratings_book_id_foreign` (`book_id`);

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
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ratings`
--
ALTER TABLE `ratings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_book_id_foreign` FOREIGN KEY (`book_id`) REFERENCES `books` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `comments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `ratings`
--
ALTER TABLE `ratings`
  ADD CONSTRAINT `ratings_book_id_foreign` FOREIGN KEY (`book_id`) REFERENCES `books` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `ratings_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
