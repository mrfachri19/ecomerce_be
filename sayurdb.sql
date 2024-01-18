-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: bfqhnuqilidhh4nzavna-mysql.services.clever-cloud.com:3306
-- Generation Time: Jan 17, 2024 at 05:14 PM
-- Server version: 8.0.22-13
-- PHP Version: 8.2.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bfqhnuqilidhh4nzavna`
--

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `id` varchar(255) NOT NULL,
  `idUser` varchar(256) DEFAULT NULL,
  `idPromo` varchar(256) DEFAULT NULL,
  `invoice` varchar(64) DEFAULT NULL,
  `tax` int DEFAULT NULL,
  `subTotal` int DEFAULT NULL,
  `total` int DEFAULT NULL,
  `paymentMethod` varchar(16) DEFAULT NULL,
  `paymentStatus` enum('pending','success','failed') NOT NULL DEFAULT 'pending',
  `createdAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_as_cs;

--
-- Dumping data for table `order`
--

INSERT INTO `order` (`id`, `idUser`, `idPromo`, `invoice`, `tax`, `subTotal`, `total`, `paymentMethod`, `paymentStatus`, `createdAt`, `updatedAt`) VALUES
('4ce9fc9c-6920-43bd-82e5-c5b58ddf15a5', 'af86922b-2831-4e30-b8f4-3d8ed714139a', NULL, 'CS-39ULWGMEQ', 28000, 280000, 308000, 'Bank Account', 'success', '2023-06-27 02:42:00', '2023-06-27 02:42:00'),
('6f5fb522-a28e-4c86-b253-28471f44f77b', 'af86922b-2831-4e30-b8f4-3d8ed714139a', NULL, 'CS-LPCHEMJJ0', 12000, 120000, 132000, 'Card', 'success', '2023-07-07 03:11:10', '2023-07-07 03:11:10');

-- --------------------------------------------------------

--
-- Table structure for table `orderitem`
--

CREATE TABLE `orderitem` (
  `id` varchar(255) NOT NULL,
  `orderId` varchar(256) DEFAULT NULL,
  `productId` varchar(256) DEFAULT NULL,
  `qty` int DEFAULT NULL,
  `total` int DEFAULT NULL,
  `createdAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_as_cs;

--
-- Dumping data for table `orderitem`
--

INSERT INTO `orderitem` (`id`, `orderId`, `productId`, `qty`, `total`, `createdAt`, `updatedAt`) VALUES
('07e9e9ce-6760-4107-9a48-ce4c758513ea', '48a1825b-c516-43ca-acf8-e6f2173e2dc9', '34190f6e-09f5-4cda-9d48-84167f2423ce', 1, 120000, '2023-07-11 11:19:39', NULL),
('092bd867-1f85-4477-a282-8fb6e0f24b06', '5ea41ada-ef8d-46b9-a06b-f36de8dd110e', '34190f6e-09f5-4cda-9d48-84167f2423ce', 1, 120000, '2023-07-11 11:26:23', NULL),
('092c7a6a-03d9-4488-b151-0daba229888b', '788e398e-323f-4f98-8bdb-c4ab8dea6b7c', '17f1afcd-9d11-47fa-b08f-28d17b64eb53', 5, 500000, '2023-07-11 20:21:21', NULL),
('14736526-fc18-4508-a358-19a7cdbbf93d', 'f76387b7-4f8e-48d9-a199-86b72ba17c4f', '34190f6e-09f5-4cda-9d48-84167f2423ce', 1, 120000, '2023-07-11 20:10:32', NULL),
('26e6f32d-4202-4880-a58d-8869506187a7', '5ea41ada-ef8d-46b9-a06b-f36de8dd110e', '34190f6e-09f5-4cda-9d48-84167f2423ce', 1, 120000, '2023-07-11 11:26:23', NULL),
('27026cb6-181e-41a0-80a1-f9b972e40362', 'b91369f1-0971-414c-82ec-0269f3249b46', '95d395a8-54ca-4c7c-a9d6-1d4e1ee60238', 1, 120000, '2023-07-03 14:05:23', NULL),
('2f321972-c41f-46d6-9480-07c273b4c17e', '84b93692-a7c9-488e-8dcb-518747c78d8f', '17f1afcd-9d11-47fa-b08f-28d17b64eb53', 1, 100000, '2023-07-11 11:16:52', NULL),
('3261e033-7920-4f85-82ea-41fc55627e52', '81909be2-4a27-4cf6-8b20-5d8467ced161', '34190f6e-09f5-4cda-9d48-84167f2423ce', 1, 120000, '2023-07-11 11:24:53', NULL),
('4b18f2ea-5aa9-4cef-946b-de66e890dfbd', 'b5b3f885-1ff8-4649-a38b-31cdf70a5dfd', '34190f6e-09f5-4cda-9d48-84167f2423ce', 1, 120000, '2023-07-11 11:29:23', NULL),
('59bbedf2-ad98-44ae-9eee-1f0bbc2dd168', 'bbd9c155-1917-44f2-940c-ff85a7dba98d', '34190f6e-09f5-4cda-9d48-84167f2423ce', 1, 120000, '2023-07-11 11:22:25', NULL),
('59d29c84-2d18-45f1-82bf-c7dc58fbd8a6', '410cb983-ec46-4c0f-a4fd-660880faf7af', '276528a1-69fb-4353-9751-7b4b8e7fddf2', 3, 300000, '2023-06-27 13:41:03', NULL),
('5dbe58e9-1c9e-4872-b40d-359b3d8fa9fc', '2cc1a8d4-a76d-4928-97e4-1340722bc977', '95d395a8-54ca-4c7c-a9d6-1d4e1ee60238', 10, 1200000, '2023-06-27 06:35:07', NULL),
('640072fa-7d21-4774-9519-133d04d5b633', '788e398e-323f-4f98-8bdb-c4ab8dea6b7c', '34190f6e-09f5-4cda-9d48-84167f2423ce', 1, 120000, '2023-07-11 20:21:21', NULL),
('680117e0-60d4-4297-a3ee-1322e9bc7b36', 'cfc9226c-973f-4859-a034-8424b47ae448', '34190f6e-09f5-4cda-9d48-84167f2423ce', 1, 120000, '2023-07-11 11:18:40', NULL),
('6c4e67e1-530e-4c40-b642-647c63424a67', 'f7c2899c-a36e-4985-af27-ffccce222c5a', '17f1afcd-9d11-47fa-b08f-28d17b64eb53', 1, 100000, '2023-07-11 11:27:28', NULL),
('71c910f4-3397-4f7e-bf3e-8431a466ee8c', 'f7c2899c-a36e-4985-af27-ffccce222c5a', '34190f6e-09f5-4cda-9d48-84167f2423ce', 1, 120000, '2023-07-11 11:27:28', NULL),
('7644539b-b193-4089-83a1-f8309c743bda', 'b5b3f885-1ff8-4649-a38b-31cdf70a5dfd', '34190f6e-09f5-4cda-9d48-84167f2423ce', 1, 120000, '2023-07-11 11:29:23', NULL),
('7c2a803f-f69f-4abf-895e-097683aa3875', '17b2ec7d-dee5-440f-b02b-fe754a1eff55', '34190f6e-09f5-4cda-9d48-84167f2423ce', 1, 120000, '2023-07-11 11:17:23', NULL),
('7fb3c15b-08ab-4724-8513-a4fb06dcb8ae', 'd7171d6d-2431-4d91-b002-4d671587af39', '34190f6e-09f5-4cda-9d48-84167f2423ce', 1, 120000, '2023-07-11 11:20:26', NULL),
('877b5d4e-d1ea-4d08-bf7b-0a1a8e55bf3d', 'ddee47e5-9aae-4c54-b29c-c0bc86563bad', '95d395a8-54ca-4c7c-a9d6-1d4e1ee60238', 1, 120000, '2023-07-03 14:05:23', NULL),
('87962eb8-e220-4570-8e8e-58fb92384a2a', '4ce9fc9c-6920-43bd-82e5-c5b58ddf15a5', 'b58224d9-9c4b-489e-a093-e09f7e6e6024', 2, 280000, '2023-06-27 02:42:02', NULL),
('8f324c79-eb4c-4d75-abd6-ff13fe7ea6fe', 'a8684d11-872d-4d5f-9193-34e5cdc79b38', 'b58224d9-9c4b-489e-a093-e09f7e6e6024', 10, 1400000, '2023-06-27 06:36:14', NULL),
('9ab7937f-91b8-4338-bdd5-78e4da6e09e5', '0de1d761-2125-4e52-a8b6-69bb2ec669ac', '276528a1-69fb-4353-9751-7b4b8e7fddf2', 1, 100000, '2023-07-03 14:49:19', NULL),
('9aecf711-b094-40a5-8b24-f0b191b21cb0', '6f5fb522-a28e-4c86-b253-28471f44f77b', '34190f6e-09f5-4cda-9d48-84167f2423ce', 1, 120000, '2023-07-07 03:11:11', NULL),
('af9e32ef-bc94-4154-8f70-ad895fdf9b29', '8bf01c32-9c32-4a1e-915b-7945feeccc38', '17f1afcd-9d11-47fa-b08f-28d17b64eb53', 2, 200000, '2023-07-09 08:33:54', NULL),
('b11bba76-1035-447e-a5e6-fa3c43a969ce', '0a6f2945-0f3b-4943-b99b-2aa8400dcc06', '17f1afcd-9d11-47fa-b08f-28d17b64eb53', 3, 300000, '2023-07-11 20:24:35', NULL),
('b3024551-6440-43c5-a9e5-ea43f8b9b867', '9ed489a5-024f-4772-9867-674318f79435', '34190f6e-09f5-4cda-9d48-84167f2423ce', 1, 120000, '2023-07-11 15:15:22', NULL),
('b9a90257-a68b-45ac-84a2-be3a380af23d', 'cf0d3bbb-fcd3-4102-ae6b-20599cce056d', '34190f6e-09f5-4cda-9d48-84167f2423ce', 1, 120000, '2023-07-11 15:15:22', NULL),
('d619ba19-08b7-41f6-b8b8-4c09b6cb2532', '2d1f5ba1-d180-404c-ae81-622563b3d793', '276528a1-69fb-4353-9751-7b4b8e7fddf2', 3, 300000, '2023-06-27 09:37:14', NULL),
('ff44dbd8-c0f2-453e-ab4d-496b901b5e13', '4c1ab7ed-cc30-4dc3-9a23-5692164a9814', '34190f6e-09f5-4cda-9d48-84167f2423ce', 1, 120000, '2023-07-11 11:25:21', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` varchar(255) NOT NULL,
  `name` varchar(32) DEFAULT NULL,
  `image` varchar(256) DEFAULT NULL,
  `size` varchar(64) DEFAULT NULL,
  `price` int DEFAULT NULL,
  `description` varchar(256) DEFAULT NULL,
  `category` varchar(64) DEFAULT NULL,
  `createdAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_as_cs;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `name`, `image`, `size`, `price`, `description`, `category`, `createdAt`, `updatedAt`) VALUES
('5e5008f3-4498-44ae-b5b7-8205798c6b23', 'Brokoli', NULL, 'R', 5000, 'sayur brokoli', 'Add-on', '2024-01-16 16:12:23', NULL),
('edfaba12-8d5b-4e10-b723-a73719e799f2', 'kol', '2024-01-16T16-36-24.947Zimages (9).jpeg', 'R', 2000, 'kol', 'Add-on', '2024-01-16 16:36:25', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `promo`
--

CREATE TABLE `promo` (
  `id` varchar(255) NOT NULL,
  `name` varchar(64) DEFAULT NULL,
  `discount` int DEFAULT NULL,
  `image` varchar(256) DEFAULT NULL,
  `minTotalPrice` int DEFAULT NULL,
  `maxDiscount` int DEFAULT NULL,
  `promoCode` varchar(32) DEFAULT NULL,
  `description` varchar(256) DEFAULT NULL,
  `dateStart` date DEFAULT NULL,
  `dateEnd` date DEFAULT NULL,
  `createdAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_as_cs;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` varchar(255) NOT NULL,
  `displayName` varchar(32) DEFAULT NULL,
  `firstName` varchar(32) DEFAULT NULL,
  `lastName` varchar(32) DEFAULT NULL,
  `email` varchar(64) DEFAULT NULL,
  `image` varchar(256) DEFAULT NULL,
  `phoneNumber` varchar(16) DEFAULT NULL,
  `deliveryAddress` varchar(256) DEFAULT NULL,
  `gender` enum('male','female') DEFAULT NULL,
  `status` enum('active','notActive') NOT NULL DEFAULT 'notActive',
  `role` enum('user','admin') NOT NULL DEFAULT 'user',
  `birthDay` date DEFAULT NULL,
  `password` varchar(256) DEFAULT NULL,
  `createdAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_as_cs;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `displayName`, `firstName`, `lastName`, `email`, `image`, `phoneNumber`, `deliveryAddress`, `gender`, `status`, `role`, `birthDay`, `password`, `createdAt`, `updatedAt`) VALUES
('046a87c4-5d95-4a53-a0a1-b6e2953cc0c7', 'Sadam Wahid Yotama', 'Sadam ', 'Wahid Yotama', 'sadam@gmail.com', NULL, '089572720192', 'Jl.Baladewa Kiri ', 'male', 'active', 'user', '2023-07-11', '$2b$10$azWio5i86DhmNfkZUBoTBuppI2Gq5lPY3b42JJqK/TxDmcPOv01Me', '2023-06-20 02:29:56', '2023-07-11 21:03:07'),
('1fcd38ac-7848-4300-a29c-aa8f87d7f2f8', NULL, NULL, NULL, 'testiemail@gmail.com', NULL, '089909876789', NULL, NULL, 'active', 'admin', NULL, '$2b$10$KtwUX.EnpGvzgeE5P6MXeOGxB86Wvm4pjBJjx4e53edKaaA8XtD6e', '2024-01-16 16:06:33', NULL),
('6b5b6374-522b-43f3-becf-009064bbf784', NULL, NULL, NULL, 'fachryfachry1997@gmail.com', NULL, '1235678', NULL, NULL, 'active', 'user', NULL, '$2b$10$igjJ3bWerxRp3hH0PZxKSOtzUnAixIPvh7rqh2w.5y34RjDI.vdD6', '2021-11-25 14:38:53', '2021-11-25 17:10:22'),
('720c2ebe-9a1c-44aa-a590-9ca47a35d31d', 'as', NULL, 'as', 'testingemail@gmail.com', NULL, '0898987678', NULL, NULL, 'active', 'admin', '2023-07-11', '$2b$10$.HQysWmZXPMExpijyapTpu0fFmEv8An4pPq.RlQN5rwPSsJsU5rf6', '2023-06-20 01:08:27', '2023-07-11 22:42:17'),
('923fc9e0-c13c-41f2-a7d8-1b35f0a8804a', NULL, NULL, NULL, 'testemailnew@gmail.com', NULL, '087678988767', NULL, NULL, 'notActive', 'user', NULL, '$2b$10$adRsi8OUvhmyC5gWuxBSv.D6gpxot9CVsj92YR8ieruau2nIYUzv6', '2024-01-16 16:03:32', NULL),
('af86922b-2831-4e30-b8f4-3d8ed714139a', 'Budi men', 'Bud', 'Suns', 'budi@gmail.com', NULL, '082258022744', 'Medan', 'male', 'active', 'user', '2023-06-27', '$2b$10$MFGR0KtgU7/KAiVoiRa/fe2xj.Qiy3nlEGaPhmwGCoUm7JB42ivyi', '2023-06-20 04:07:02', '2023-06-27 09:41:49'),
('d0ef41c2-8730-41f6-a3b7-2461d386161f', NULL, NULL, NULL, 'joy@gmail.com', NULL, '0895676661788', NULL, NULL, 'active', 'user', NULL, '$2b$10$k809LlXcviOidadIKAOxg.4lpfyKGjNkT0lZLwgI1KBezmQO3DqIe', '2023-07-06 07:40:02', '2023-07-06 15:48:27'),
('d4ca177c-80ea-4179-9315-8aef4806b528', NULL, NULL, NULL, 'asasa', NULL, '12331222121', NULL, NULL, 'active', 'user', NULL, '$2b$10$oaxBTutjxMD1/B2SkUvje.lnMJZKkCj3OKyVDWljh0.dADxWLoMue', '2023-07-11 13:57:23', NULL),
('e26de661-fefe-4a1f-bb5e-41873098406d', NULL, NULL, NULL, 'fadil@gmail.com', NULL, '31231231212222', NULL, NULL, 'active', 'user', NULL, '$2b$10$Nv2y7O9B4yQzyxvmT.6MgOQ3AMHFFkHn3wj8fv.ivqptVrSI9unB6', '2023-06-20 02:28:52', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orderitem`
--
ALTER TABLE `orderitem`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `promo`
--
ALTER TABLE `promo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
