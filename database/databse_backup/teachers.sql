-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 23, 2023 at 05:43 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `digital_library2021`
--

-- --------------------------------------------------------

--
-- Table structure for table `teachers`
--

CREATE TABLE `teachers` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `mobile` varchar(191) NOT NULL,
  `email` varchar(191) NOT NULL,
  `password` varchar(191) NOT NULL,
  `original-pass` varchar(191) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `teachers`
--

INSERT INTO `teachers` (`id`, `name`, `mobile`, `email`, `password`, `original-pass`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'abcd', '9887766554', 'abcd@gmail.com', '$2y$10$skbazVfddEadaksu2LN6NOd.Khs6AcYrtxBVTTZ3D3fmAglmxqcT2', '123456', 'zkQ1JaZZm5f8Muxr7TeQvnIiGHA3OwOd3r7KcMqve8cJ6Cc6NdSnTHbaJEJY', '2020-06-03 07:31:24', '2020-06-03 07:31:24'),
(2, 'qwerty', '7878787654', 'qwerty@gmail.com', '$2y$10$rO2/Gr7O/CAzY4JsD6hKju3OBlo3rcCmEfCzWp3zL3evDtOwvk1dK', '123456', 'WGZbmchtKgNaHdVjnlczGocuujkazSe2jEQExmEx6D9YaPljUggw0Z5ymtQK', '2020-06-03 07:59:03', '2020-06-03 07:59:03'),
(3, 'antara borah', '9957952339', 'antaraborah764@gmail.com', '$2y$10$oZE8lcOAJ8pcNzFTJJ6/yuXj.KXTmzNBf.CLX23U.EbacqZ.FMqGe', '123456', 'MiUEPSVNSLUyVJ1VJuD2bcRjjQiS56cfmO0bz9xdGAfRI2GdJTQTdglW3crl', '2020-06-05 10:07:45', '2020-06-05 10:07:45'),
(4, 'BABITA KAUR', '8876735988', 'kaurbabita1234@gmail.com', '$2y$10$KlAy9ITTXUXsBCl.D2Lh8ekK0JEXc3tYTt9UiLxUKScUZumhutN6S', '123456', 'n7sZSUnOlgRefn4Pb8cjBWZn0eadRO5RbrIrQGTDekV3eNt7G5UIOUBU1JN9', '2020-06-11 00:47:56', '2020-06-11 00:47:56'),
(5, 'PALLABI GOSWAMI', '9707021567', 'pallabbi123@gmail.com', '$2y$10$bZ5QWww03M1JXnWsi3S9zu0e3nIcQD9qYMylK6p0AoyyybwcutYJy', '1`23456', 'etvCKcfGpbljjmcoSwDFbRUhIofeLwQmNDZ1xFAPEkz9mMlXQGaPEk6B3zNZ', '2020-06-14 23:59:24', '2020-06-14 23:59:24'),
(7, 'Jyotirekha Hazarika', '9401953349', 'jyotirekhamickey@gmail.com', '$2y$10$ucjvD2d3kN4buSb/3YDQkee63GVybPfDY4r3ZVtqoMnRsSll4/ZoG', 'jyotirekhamickey1234', 'PH8oxCxOzH9HFepxefMH7LSt8DgMFnYxPcCOynkeiIOD32Z29QBmFa4j51c3', '2020-06-22 16:58:25', '2020-06-22 16:58:25'),
(8, 'Swarnali Roy', '8471889254', 'royswarnali05@gmail.com', '$2y$10$otba1TRS0rACO/cqGpgIc..lWRf0FU37mKc0yfBEh1qyQ4KPUyKTK', 'refreeze', '6neioputdLvdZJs8HgjonUbRc6uFFnMJZ9p8ygCzBI749SAsSRNrEAykv7gO', '2020-06-22 17:07:38', '2020-06-22 17:07:38'),
(13, 'Annaya Dutta', '9706560682', 'annayadtt5@gmail.com', '$2y$10$rDjuLO7d08raTrK4iPR2t.diE1P38Cx9WF2itZ/zpSESPH2.qMqm6', 'Fhss@psy', 'AIbjoe0gnNomP7n9JQSgkx4d1hdYLI1KXX4aH8cWDSArYTRAe1eZaOgjY2Ln', '2020-06-22 19:26:57', '2020-06-22 19:26:57'),
(15, 'Rakesh Goswami', '7002646175', 'rakeshgoswami555@gmail.com', '$2y$10$HEJ89O9AIkUnnq83nX921O1zosEqwHoO8O6q.9r9d3ImsHCboz3JS', '4800', 'iJRqsk19H0K9VXpdQEgNKR8YzZWYWcinHKywtNJ5VYRxBSKbUe7J7KoORMpY', '2020-06-22 19:33:38', '2020-06-22 19:33:38'),
(18, 'DEBANGANA GOSWAMI', '7002009886', 'devna.dgh91@gmail.com', '$2y$10$KIwMWsxPP0CWEF.YgPw6Eu8sTkdKSh3UgJ6Vf0E0JNpPlLmaAvJbK', 'jilmil18', '4pawhYu9uc8wDkyLcoA0nL2PkJPp7TlLm2VfaQ0lNNy43DL3L32QTLRNS9tw', '2020-06-22 19:42:13', '2020-06-22 19:42:13'),
(19, 'Shyamal Kumar Dey', '9954209173', 'smd425@gmail.com', '$2y$10$pVYFYrUZ643kzxEI86gEsuMcpizRHO3fZ/t4rPya4Sh8DEaxF6v8i', '123456', 'jG1lMJEtVgMevjOKKSGRThLCcE5xILrEHcs0VXtw0gEwqVqdYKtNGTtD7Eo2', '2020-06-22 19:49:42', '2020-06-22 19:49:42'),
(20, 'Sarbani Paul', '9435044420', 'sarbani.barmanpaul@gmail.com', '$2y$10$l068GHwiNYppfiI7jFSQKeBeZKo0YsJhL6LZb4AcSVxmCFq15tkRG', 'rishigungun1', NULL, '2020-06-22 19:53:01', '2020-06-22 19:53:01'),
(23, 'Kakali Deb', '9435149855', 'kakali.faculty@gmail.com', '$2y$10$TTbkdtj2xnmobj.bqFGfi.NDtD7YUYBoTky.p80xiEcMgJmy0zwNa', 'swapnil2010', 'vlKa8aaZp0YdLRqfGpHjHVy8AKk3AMlRtr1KmYteYzC40H3ks1FHcEgPuSVa', '2020-06-22 20:29:03', '2020-06-22 20:29:03'),
(24, 'Mridulesh Sarma', '9706419840', 'mridulesh1@gmail.com', '$2y$10$nijJBmPUamwl5hwNuvXfwupOniNanjpmgqzxQAS3tbIF.pYSPYAgq', 'mridul.82', 'cJp0FyTAHl5kuOCpWJb1LzD4NsDI8UAIXylUZbnHvZqugPN4LkgTFkfpEctz', '2020-06-22 20:31:51', '2020-06-22 20:31:51'),
(26, 'BABITA KAUR', '8876735988', 'kaurbabita123@gmail.com', '$2y$10$tOyKx1boHuM1zphsxrojZ.oN5RiSvVnjL4Dp1/65al60PLwc6EnVC', 'babita7875', NULL, '2020-06-22 20:58:04', '2020-06-22 20:58:04'),
(27, 'Madhusmita Bhagawati', '9864013342', 'madhusmitabhagawati@gmail.com', '$2y$10$U9./TOheDXc.VhpStXTQYez4mBZdB2puNiHYtX.8dZhwqEKglRGj6', 'kanhahotspot', 'KuoMTDP1BoYx96Zv69UvBlAj9vD0OK33qA3Qa4LIYMw8KVZSMhk2xdFwfqAn', '2020-06-22 21:21:25', '2020-06-22 21:21:25'),
(34, 'Jayanta Kumar Deka', '7002138952', 'jayantakumardeka12@gmail.com', '$2y$10$F7xZ.u.UcqMwfgi4O3uVx.NBLKJIwlOl7GQwpOWHkvpYBiTBVvZr.', 'as01bb8103', '7TlIqj8bBNmlF4KuRUyoTDvPDXd2WrsaqYUENurMzGyPq8WAsQVo6oqvehW7', '2020-06-23 10:32:31', '2020-06-23 10:32:31'),
(41, 'Jupitora Kalita', '9864059876', 'jupitora.kalita@gmail.com', '$2y$10$bsquDVpZXdxJc9lJOoGR2eIZn4u3U6WWLvIlFIWhH14PluoTUhXhu', 'jupitora1234', 'czlcW0tXhP6oJv4c2KZkUhA1DOoCYB178Es3gY6ESmjP8X7E3ZDnUaNb0Ndi', '2020-06-23 14:03:48', '2020-06-23 14:03:48'),
(47, 'Mampi Dutta Banik', '9864152171', 'mampiduttabanik@gmail.com', '$2y$10$OdcGgTO6IJSNk.jhXUVxX.gVQVyjUNaNKEsMZKf.fweQkanGsNs7C', 'hiya@123', 'hpqJmnBWIuEjahkvjfbHZCG97xpBb2MzJISAqINgo1tUAJQJClZ457pZsjSM', '2020-06-23 18:47:20', '2020-06-23 18:47:20'),
(48, 'Deepanwita Basu', '7086086800', 'munu1977@gmail.com', '$2y$10$AXFS/Tgu5MDG0UDV4.XVMul8KEF7OX0PyPFUyMgGPIum8eoiFoJ2.', 'debdoot2012', 'xrMjUD7VSbyslmFzySAd7wKw0F79SgJjAniIawQUtZFEk11D3pGWWat4Ws81', '2020-06-23 20:33:40', '2020-06-23 20:33:40'),
(49, 'Dr Rekha Choudhury', '9864983443', 'rekhachoudhury11@gmail.com', '$2y$10$6PG.dXHOMqSR8hBYI5PhGuoDh6b8fgTAXLrTS4XjC2HOiBfa9lOF6', 'Geo@rekha2020', 'hdXuKCd6QH9you8FEjKz6mPfuWmKx9QQfCIbUziOVjxcIixAwFn4A0TlclHc', '2020-06-23 23:08:37', '2020-06-23 23:08:37'),
(56, 'Ranu Kalita', '8638367760', 'ranuk4@gmail.com', '$2y$10$NqpQHuoZdgbXZGpfFB8bRuEKYg0J/mbZ2aq4eh6aX2qPwY2d0JEta', 'ranuk1234', 'zzJMkhqM72DMo0ljEdS7Ap7gSIsNUVkYZxrTUkzsYtl0XrdzVAQFnK2BPXvl', '2020-06-24 14:10:27', '2020-06-24 14:10:27'),
(58, 'SUKHBINDER KAUR', '7399027604', 'ssandhu1624@gmail.com', '$2y$10$8JZ8BcVWPZnxKZMpuWzlKe.skjgICX4b2PUz06D39D9HzY5tM/26K', 'nikki123@', '6PRHQDjS0Q2KWhIMIR5b44B2An8ZMuw8niqmcZVL4cNopmWqCyyJaKlEdZzn', '2020-06-24 15:37:16', '2020-06-24 15:37:16'),
(61, 'Moumita Dutta Mazumder', '9864416027', 'mdmzr@rediffmail.com', '$2y$10$R14hxAaaH9IwH/wII4a7.uaHLIVd3ePmCYffpBjEiJHq7P8h/GQdi', 'gudurahi', 'WiffiOEGJqXVxLi00oZvDdK7uGY8JFVnfxBiEpndbSHzejqcxIJjHyjXeJXy', '2020-06-24 16:50:45', '2020-06-24 16:50:45'),
(62, 'Jubika Baruah', '9101348019', 'jubikabaruah9@gmail.com', '$2y$10$dTOH.lj4pEvgnWRjzAa6r.7.PIoO8lM2WpaD0Y3gzWl55u16C2mXa', 'Psychology92.', 'HZ8oAtzMRtFNImrkYrGYN0ihP22AYTVnNzhZKvOkhcCY4mGzWn5pjd7RQRBd', '2020-06-24 18:03:03', '2020-06-24 18:03:03'),
(65, 'Paritosh Saha', '9864854927', 'paritoshsaha4908@gmail.com', '$2y$10$R5ywh9jhNtjMEqif7yc/f.5r.K.JbRalcCkdZl02IVhl7RN6F29re', '9864854927', '549wJly6MMEvuwgIkWGqgljDdAnErAIhfuJWI5qF9m6vNZTbS7lvCDzZ2EfL', '2020-06-25 12:35:25', '2020-06-25 12:35:25'),
(66, 'Annu Thakur', '9101437673', 'Annuthakur300@gmail.com', '$2y$10$9mkZObd3vstWINwEpzyqKeQGnZOx8vHiyf7Uapx772HGE/4W9dBZW', 'jaishriradhe', 'DhkGSQIB0YT0sSrLdf6xJ5BxWupiSzcmG9VkFOehdCbAJ1sIqXDtePht8h0R', '2020-06-25 14:41:20', '2020-06-25 14:41:20'),
(67, 'Antara Borah', '9957952339', 'antaraborah76@gmail.com', '$2y$10$fZLtxu4.1lkTUtGCDhiLSeRTZ.p5vmpIRhaDObo0QpZotEEN5BNdO', 'antara@456', NULL, '2020-06-25 14:51:22', '2020-06-25 14:51:22'),
(68, 'Biswajit Dhar', '9706012483', 'biswaryaki@gmail.com', '$2y$10$ECvXt56WDylIvk87bipCneXR5yWUVP28BEA2FMQqRE.9boZhRsZj2', 'mampiaryakigueahati', '4wgxveBOPYKQxc6mJ0LwIr4cXTvcr5omdzZHSOCnSQkPLomjiX0yDlrnjSFf', '2020-06-25 17:38:02', '2020-06-25 17:38:02'),
(86, 'Popy Nandi Aich', '9085859325', 'popynandiaich@gmail.com', '$2y$10$cx6BmJC2A9s07R//lJi7qOXo3jy4dGezPW1CGSrWdwTnKQYqxGSfu', 'ved@2010', 'uQds5p0b4kJySRD42qpSEx781A6dHOxyoH1neXYSV5k3piTA4Pe6iy9Ctmcu', '2020-06-26 19:47:30', '2020-06-26 19:47:30'),
(87, 'Nazma Akhtar', '8134804196', 'syedanazmaakhtatr@gmail.com', '$2y$10$TvGi6meGOfRIsskeXOp8K.m5pqVya3v8cLTowpHI1FjxlGnSYgfUG', 'Nazma@1234', 'l5ZwxGv7MMZ8NM2llclj10znk2dob8rg4ax1naOJ1YGA4UYuxtWCXDwFW0Ls', '2020-06-26 21:33:39', '2020-06-26 21:33:39'),
(88, 'sofia khatoon', '9435012946', 'ksofy10@gmail.com', '$2y$10$3Dj5RzarHGdVC/2MSGT6ZOXaHyTemd.4T9fmsjXbHWzEPL6S9/.JO', 'business 661', 'J3MqaieAS8sXwWr1vCHDl5OKbhfMKh71qucANNkEdmCfuuxCXEjUtUGRerd9', '2020-06-27 14:25:02', '2020-06-27 14:25:02'),
(94, 'MOUSHUMI DUTTA', '7086818085', 'moushumidutta93@gmail.com', '$2y$10$iRDL47KbnQdKWYLQw68KQeb6jw1xiZpmFdQeOyfyarBQuwOXwit/G', 'mounav1993', 'qFAmhAGjoCYBvyLK5ZwtgNDiR7kdMR801b5zmsFSdBn5VsL8nqTRZtebzTfY', '2020-06-27 23:50:25', '2020-06-27 23:50:25'),
(96, 'Maitri Bharadwaj', '9678455266', 'maitribharadwaj@gmail.com', '$2y$10$PYGv0Hc5PgvCwn9YRl6rBu2jT5rgyRIBzzqToaDlyj.8IHGUNqT5y', 'jita1983', 'KKToNvCGN1Ao4abO8M4MuVDdNODJeRKfwvKiFHgMrQtqx3ZDjmZkNt181a4B', '2020-06-28 18:49:01', '2020-06-28 18:49:01'),
(98, 'Ranjita Sarma', '7086050693', 'ranjita.sarma.1@gmail.com', '$2y$10$KOrxqFXg1ZOQkInq5k60zeGG7mtriorhgLgoaD0bSgj.tQmeyI4TO', 'ranjita@1511', 'MIUrbd7GcA6tjna0jxF0eAlP75c9Iukx7THdZayDUOgq8vI1xsgfgHHlIGMq', '2020-06-28 23:17:19', '2020-06-28 23:17:19'),
(104, 'Deepshikha Sarkar', '9864969159', 'deepsikhasarkar09@gmail.com', '$2y$10$PhZtagG/NU9tbB/cf3yKM.EaN9vv7/53WHQkadqt0ZBPs5sJ59.AC', 'babusona', '4aXX6naxQaS6WKUsl03FO3OcCoorLpbrZiMlNP9c5VhaCRmmZ3AqRo40UTVU', '2020-06-29 12:51:17', '2020-06-29 12:51:17'),
(105, 'Geeta Acharrya Majumdar', '9085667209', 'geetaacharyya2018@gmail.com', '$2y$10$6wxW.qTna6irJ4xv5iT.8e.AnHt8yiACrOVPOfiTJUhEJxW0UyHjy', 'GEETA', NULL, '2020-06-29 15:09:06', '2020-06-29 15:09:06'),
(110, 'Nabanita Banerjee', '9957801448', 'nabanitaban85@gmail.com', '$2y$10$BNxYFu.1/jgie8g/9ieiWuh9AvWyFL5oVISp1rvKs8v/1.OGI2s7.', 'nabanita', 'G9L9BqwzAfLaKULK311UQYOeWYNIbw4kRS8r3rSGagRcH4WNjFKp1ykexBM7', '2020-06-30 01:43:50', '2020-06-30 01:43:50'),
(121, 'Sanchita Sanyal', '9957563077', 'sanchita.fhss@gmail.com', '$2y$10$oIA5Ef/dODWr.0kOzOZuR.fh40Bp6f0SNt53o812h4dIKdI6Qr1qW', 'sanchitabhai1971', 'VnBr5ULg638criXCGSBUyygFUNQRpcVP93FkU2v8PPPbKtt4fiSPYTymXMDw', '2020-06-30 19:50:30', '2020-06-30 19:50:30'),
(126, 'Rohan Prasad Barooah', '9864118921', 'rpbarooah@gmail.com', '$2y$10$s6rk5bVVXq95LvjSzpp73ehc7mb8PGGvtxZgREoZMEY/LRhlppgmi', 'Rohanb79', 'i2XAEaDrAJxMAyQsZyYTvFQ6t6L28Y5ykFhNAuxLZH80OhFzwC4rlmQegDc3', '2020-06-30 21:14:02', '2020-06-30 21:14:02'),
(131, 'Shreya Dutta', '8486627455', 'duttashreya23@gmail.com', '$2y$10$5ta34AjIKmubLXIJc8ywtOEm2mG7Q.8N.7shXjE6U.j66aee7yN8S', 'shreya@12345', NULL, '2020-07-05 07:35:31', '2020-07-05 07:35:31'),
(133, 'Nivedita Banerjee', '9706245279', 'niveban4@gmail.com', '$2y$10$alNpZlSHUheNpNe.4I1gre0c3BsWNvF9qQGjWPaRKnBIR6EivkGA.', 'nivedita', 'PqsfWm8NUndqu9J4tfmK4VszGDJ29vKLg4TzG5UyEvnBoIY3zjbDmcoSoQ0k', '2020-07-05 17:39:44', '2020-07-05 17:39:44'),
(137, 'Ajay Kumar Sahu', '9864135911', 'ajyghy@yahoo.com', '$2y$10$Uk9qKlnC9N4qUASeAcu1Pefa4G93ASNl/lRo/a30Xsdoc9ZOpKPzC', 'fhssdg@1234', 'yrNmnIgtpJ7bqCBWkKOXNUB3lVq1Z1LFLiGJsAOO2LAZzuNhY7m0cEy2OXIS', '2020-07-06 21:35:27', '2020-07-06 21:35:27'),
(138, 'Rekha kumari sharma', '9101877522', 'sharma.rekha9876@gmail.com', '$2y$10$hHF38yiwJ1HjLftecokLJ.6bh9tkbvBawFwZDx9RsacW9bkmxWb92', '180418', 'KZxy1SOpVa1pDcEwiBFMrpLdC929qXpWSbmYakXj87NztqHKGAKeY4J3Svzd', '2020-07-09 14:28:29', '2020-07-09 14:28:29'),
(143, 'Binita Singha', '9864039311', 'binita.ruby@gmail.com', '$2y$10$nfD7Da.lYdvgRQN.1hI4F.0pz0QOtVf0QjPlaHYYEd3y4tpYS06AO', 'Secure@fs$20', 'Qgh9XWd0KQkXEivK2DNRz8sdqwxJXdzL7PadQ1n4OgMMosVLxmoyS4J4awXH', '2020-07-10 19:09:17', '2020-07-10 19:09:17'),
(144, 'Dhiraj Moni Das', '9706392306', 'dasdhiraj.fhss@gmail.com', '$2y$10$u5jA6bYq/JFuXg.Vl0ifqOqunRIbZcOYhWlJ.YcJoO8XwreuZfHFG', '@DasDhiraj1986', '6WJePJFC0uUCl63ly6baupmtAIBzYpNWqivUyzs2JIHZRmJVvVUkIRsprF3Y', '2020-07-10 19:20:58', '2020-07-10 19:20:58'),
(146, 'Salyia Begum', '7086017700', 'baharislam5836@gmail.com', '$2y$10$c0LayKOtQwNpKh36pASF4.4xlG/Gsi7BGAp1EsUbV2zwVYHWm/WEy', 'SaliyaBegum7864#', NULL, '2020-07-11 12:04:07', '2020-07-11 12:04:07'),
(149, 'binita ghose', '9435550497', 'binitaghose68@gmail.com', '$2y$10$.NayS9IylV02hQQ65lfvyeFWLMYm3F5f6njHlDliqhSmG7Ib43fIi', 'dilnawaz', 'Dp1RK9MQcqzUOAnQVUZcmqnMbwcd1aHwGiYdD4eIFO5147U7QTLSqbJm4qRp', '2020-07-13 16:18:13', '2020-07-13 16:18:13'),
(152, 'Namrata Das', '9957661080', 'namratadas1412@gmail.com', '$2y$10$27TTARElsbnj8MaG.5lNyus/NxyXQWeJAe12o9fcRsaab8LY7cSby', 'akshitdas', 'k4HW6y288CMZ33WP3PAY9sDA8L2iYWqgqrz8Rn9NbfqmBfIWhdIwMUYdCWVr', '2020-07-14 13:30:03', '2020-07-14 13:30:03'),
(162, 'Pitapa Das', '9957784608', 'td783384@gmail.com', '$2y$10$wFYJkvOx0G.mTeFFeQN0VOEXE.rxbvhwGKbQRSkYTPR2r/FYqc6DW', 'digital', 'ai7TfoxIDaCehWp1fkhWnxMNQGj8cbFejyONCoOSPs2DYoAN8K7xcbo5a1To', '2020-07-30 22:18:34', '2020-07-30 22:18:34'),
(179, 'Adity Goswami', '9435538909', 'aditygoswami894@gmail.com', '$2y$10$DIL7qVlzPVuOnUyLGkkX0OeDB.IoRCh2MkW4f0qjCS2ysK/i5uSE2', 'adity123@ght', '1ky3WlkjNOvL0lLlIk26wxTutKGNWIhVs09giYC0WkSK3PKRfgij5N5F5bRr', '2020-08-01 16:18:10', '2020-08-01 16:18:10'),
(182, 'Seema sakhuja', '9435614000', 'seemasghy@gmail.com', '$2y$10$LY1QtkBbEZLd8umu/4fJiuSiRKH00xkFmvZHhoIXMVHaFZ42rI3c6', 'seemasghy bala', NULL, '2020-08-02 19:16:51', '2020-08-02 19:16:51'),
(183, 'Moni Newar', '7002495708', 'moninewar700@gmail.com', '$2y$10$w56EDziBqLAoTvRf2QfEC.FmrrXKvKpLyTsywxHIZ4dzXkH1BLeeW', 'moni newar', 'GbZky2MszrRpnPRaZRkHxSSHcnP04AAwgZYEH4dBl0eRZmILlzcy6Ov93d6z', '2020-08-04 18:29:49', '2020-08-04 18:29:49'),
(196, 'Arupjyoti Athpariah', '8876916311', 'athpariaharupjyoti@gmail.com', '$2y$10$dwOPXsTMvuvE9okLqdEm/ewqW50fnWyieXAN122FGqijwlCBwOhkG', '8876916311', NULL, '2020-08-05 14:40:21', '2020-08-05 14:40:21'),
(197, 'Khirod Roy', '9706940877', 'khirodroy.kr@gmail.com', '$2y$10$s53W8JgK91XP4ryE9JJm7.9dtzyhX0cOBeOHcP6jihWH31B93hWta', 'fhdsdigimaterials10', 'BfEgw4sF8QZNSyAUN0bypRj9OlVu4R5RgcYNlEpDkCDGj9IEwvDeS5nbcr4R', '2020-08-06 22:07:21', '2020-08-06 22:07:21'),
(206, 'Natasha das sharma', '9864046451', 'goodlie.natasha@gmail.com', '$2y$10$r2q6zSf/qBxk3pEmzXOL5OhPClNTrRbLa2B9jGfA//WO8MzjBis2y', 'goodlie73', 'AU4HLAHYmpTCd7pl7PmF0YiIxodkQMvrvTQxXM9sd3CiEaWdUAElC7BGFDy3', '2020-08-07 21:38:37', '2020-08-07 21:38:37'),
(230, 'Dhitima Das', '7086867078', 'dhitimadas@gmail.com', '$2y$10$6deqg9GDEF.w20GoQlWhQe8O7ASznjCS8hGF42DJKNRzltEJ2x0eS', 'pass@123', 'bgGkab0naGDHazI30keRLbvdDmp26T33EGn7zpBMQQ9hAd5cc4f4AqasT8UK', '2020-08-13 21:42:07', '2020-08-13 21:42:07'),
(231, 'Padum Adhikari', '9957231298', 'adhikari.padum5648@gmail.com', '$2y$10$0maUBgvmC2kDBiiUfnw2wuVhG7kkLR0Pm4athRCSYyDRiBd8oPcba', 'khagendra123', '7lgefAjmIC40HXyhorr4D0CZZs2TDUBQm6wuAA0oqkVMFCF9NU63O6wQDQvi', '2020-10-01 13:35:46', '2020-10-01 13:35:46'),
(232, 'Rani Bhattacharyya', '9085312114', 'ranighy9876@gmail.com', '$2y$10$mnvfRCQx3V6xVv7uSjE/pOQv9MddLPbgwLTQi5iA91cwBl43VRL5q', 'pimpimpim', 'i2BnU5O33trah2dcAJNZUsJbSwKQ9aSStfoEfqlGZFXkGKI1HL6av3uK3ylU', '2020-11-03 13:58:49', '2020-11-03 13:58:49'),
(233, 'Seema Das', '9864385031', 'seemakashyap751@gmail.com', '$2y$10$vWqOGST8Q.2MbUHdh2nBRuOfyypQYrwphptFpzqQ4YrvotBLtSoku', 'apples', '0Pq8IJD2nQ5K0p9J52VXEjpMYpsMPF67vJk86xQhvxk3WFXnoylZwptOo1nM', '2020-11-04 11:53:54', '2020-11-04 11:53:54'),
(234, 'Sumana Borkotoky', '7005300989', 'sumonafaculty@gmail.com', '$2y$10$m/VR1vbeTKUMtbkzadJmXu4JP/5MnFGRdEu4q.XAxG1e1KuKqKUJ.', 'sumona2018', 'bzPon9xUwf93QyyPIwTud28QJm6MIGCZ7d0e1BjV3xH1j6NwMZBL4QLgXgbz', '2021-04-20 20:26:53', '2021-04-20 20:26:53');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `teachers`
--
ALTER TABLE `teachers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `teachers_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `teachers`
--
ALTER TABLE `teachers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=235;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
