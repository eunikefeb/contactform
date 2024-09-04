-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 04, 2024 at 10:37 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `contactform`
--

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `nim` varchar(15) NOT NULL,
  `kelas` varchar(10) NOT NULL,
  `gender` enum('Laki-laki','Perempuan') NOT NULL,
  `email` varchar(100) NOT NULL,
  `message` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `nama`, `nim`, `kelas`, `gender`, `email`, `message`, `created_at`) VALUES
(1, 'Eunike Febianti', '233140701111047', 'T3F', 'Perempuan', 'eunikefebianti@student.ub.ac.id', 'asdfghjklmnbvcxzqwertyuiop', '2024-08-28 02:48:46'),
(2, 'Nasywa Nuraini', '233140701111046', 'T3F', 'Perempuan', 'nasywanuraini@student.ub.ac.id', 'hsfhabfhbvvksbkfhghbdffnbfngjdfjnkdfjgs gnkjgkejg', '2024-08-28 03:09:32'),
(3, 'coba', '233140701111111', 'T3F', 'Laki-laki', 'coba@student.ub.ac.id', 'cobaaaaaaaaaaaaaa', '2024-08-28 03:15:26'),
(4, 'Marchelo', '233140701111099', 'T3F', 'Laki-laki', 'marchelo@student.ub.ac.id', 'xmnbvcnmbvcbnmnbvv', '2024-08-28 07:00:27'),
(5, 'piino', '18', 't3f', 'Laki-laki', 'pino@gmail.com', 'semoga lancara selalu sehat dan bahagia\r\n', '2024-08-28 07:02:32'),
(6, 'FebiantiIII', '18', 'T3F', 'Perempuan', 'abcdef@student.ub.ac.id', 'asdfjhgfdfgh', '2024-09-02 06:29:14'),
(7, 'Serana ', '233140701111000', 'T3F', 'Perempuan', 'serana@student.ub.ac.id', 'asdfghjkljhgfdsdfghjkkjhgfddfghj', '2024-09-04 08:36:44');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
