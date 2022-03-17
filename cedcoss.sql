-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Mar 08, 2022 at 01:41 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cedcoss`
--

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `book_id` int(11) NOT NULL,
  `title` varchar(100) DEFAULT NULL,
  `author_fname` varchar(100) DEFAULT NULL,
  `author_lname` varchar(100) DEFAULT NULL,
  `released_year` int(11) DEFAULT NULL,
  `stock_quantity` int(11) DEFAULT NULL,
  `pages` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`book_id`, `title`, `author_fname`, `author_lname`, `released_year`, `stock_quantity`, `pages`) VALUES
(1, 'The Namesake', 'Jhumpa', 'Lahiri', 2003, 32, 291),
(2, 'Norse Mythology', 'Neil', 'Gaiman', 2016, 43, 304),
(3, 'American Gods', 'Neil', 'Gaiman', 2001, 12, 465),
(4, 'Interpreter of Maladies', 'Jhumpa', 'Lahiri', 1996, 97, 198),
(5, 'A Hologram for the King: A Novel', 'Dave', 'Eggers', 2012, 154, 352),
(6, 'The Circle', 'Dave', 'Eggers', 2013, 26, 504),
(7, 'The Amazing Adventures of Kavalier & Clay', 'Michael', 'Chabon', 2000, 68, 634),
(8, 'Just Kids', 'Patti', 'Smith', 2010, 55, 304),
(9, 'A Heartbreaking Work of Staggering Genius', 'Dave', 'Eggers', 2001, 104, 437),
(10, 'Coraline', 'Neil', 'Gaiman', 2003, 100, 208),
(11, 'What We Talk About When We Talk About Love: Stories', 'Raymond', 'Carver', 1981, 23, 176),
(12, 'Where I\'m Calling From: Selected Stories', 'Raymond', 'Carver', 1989, 12, 526),
(13, 'White Noise', 'Don', 'DeLillo', 1985, 49, 320),
(14, 'Cannery Row', 'John', 'Steinbeck', 1945, 95, 181),
(15, 'Oblivion: Stories', 'David', 'Foster Wallace', 2004, 172, 329),
(16, 'Consider the Lobster', 'David', 'Foster Wallace', 2005, 92, 343);

-- --------------------------------------------------------

--
-- Table structure for table `cats`
--

CREATE TABLE `cats` (
  `cat_id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `breed` varchar(100) DEFAULT NULL,
  `age` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `Employees`
--

CREATE TABLE `Employees` (
  `id` int(11) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `middle_name` varchar(30) DEFAULT NULL,
  `age` int(11) NOT NULL,
  `current_status` varchar(30) DEFAULT 'employed'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `Employees`
--

INSERT INTO `Employees` (`id`, `last_name`, `first_name`, `middle_name`, `age`, `current_status`) VALUES
(1, 'Singh', 'Abhishek', 'Kumar', 22, 'Not employed'),
(2, 'Raj', 'Ravi', 'Kumar', 22, 'Not employed'),
(3, 'Singh', 'Abhishek', 'Kumar', 22, 'Not employed'),
(4, 'Singh', 'Abhishek', 'Kumar', 22, 'Not employed');

-- --------------------------------------------------------

--
-- Table structure for table `papers`
--

CREATE TABLE `papers` (
  `title` varchar(100) DEFAULT NULL,
  `grade` int(11) DEFAULT NULL,
  `student_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `papers`
--

INSERT INTO `papers` (`title`, `grade`, `student_id`) VALUES
('My First Book Report', 60, 1),
('My Second Book Report', 75, 1),
('Russian Lit Through The Ages', 94, 2),
('De Montaigne and The Art of The Essay', 98, 2),
('Borges and Magical Realism', 89, 4);

-- --------------------------------------------------------

--
-- Table structure for table `Products`
--

CREATE TABLE `Products` (
  `Product_id` int(11) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `product_image` varchar(200) NOT NULL,
  `product_category` varchar(100) NOT NULL,
  `product_price` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `Products`
--

INSERT INTO `Products` (`Product_id`, `product_name`, `product_image`, `product_category`, `product_price`) VALUES
(2, 'T-shirt', 'images/t-shirt-1.jfif', 'T-shirt', 499),
(4, 'Shoes', 'images/shoes-1.webp', 'Shoes', 1299),
(5, 'Watch', 'images/watch-1.jfif', 'Watch', 1299),
(6, 'Jacket', 'images/jacket.jpeg', 'Jacket', 1500),
(27, 'Shirt', 'images/shirt3.jpeg', 'Shirt', 800),
(28, 'Shirt', 'images/shirt2.jpeg', 'Shirt', 999),
(29, 'Jeans', 'images/jeans.jpg', 'Jeans', 1699);

-- --------------------------------------------------------

--
-- Table structure for table `regData`
--

CREATE TABLE `regData` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `mobile` bigint(11) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `regData`
--

INSERT INTO `regData` (`id`, `username`, `email`, `mobile`, `password`) VALUES
(1, 'Abhishek Singh', 'abhisheksinghinfo7@gamil.com', 6201050686, 'Abhishek123'),
(2, 'Ravi Singh', 'ravi@gmail.com', 9876543211, '654321'),
(3, 'Raj Singh', 'raj@gmail.com', 6201354586, 'raj123'),
(4, 'Arjun Gupta', 'arjungputa@gmail.com', 9876543212, 'arjun123'),
(5, 'Himanshu', 'himanshu@gmail.com', 6549873214, 'himanshu12'),
(7, 'admin', 'admin@admin.com', 6398659535, 'admin123');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` int(11) NOT NULL,
  `first_name` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `first_name`) VALUES
(1, 'Caleb'),
(2, 'Samantha'),
(3, 'Raj'),
(4, 'Carlos'),
(5, 'Lisa');

-- --------------------------------------------------------

--
-- Table structure for table `Tweets`
--

CREATE TABLE `Tweets` (
  `Username` varchar(15) DEFAULT NULL,
  `Content` varchar(140) DEFAULT NULL,
  `Favourites` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`book_id`);

--
-- Indexes for table `cats`
--
ALTER TABLE `cats`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `Employees`
--
ALTER TABLE `Employees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `papers`
--
ALTER TABLE `papers`
  ADD KEY `student_id` (`student_id`);

--
-- Indexes for table `Products`
--
ALTER TABLE `Products`
  ADD PRIMARY KEY (`Product_id`);

--
-- Indexes for table `regData`
--
ALTER TABLE `regData`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `book_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `cats`
--
ALTER TABLE `cats`
  MODIFY `cat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `Employees`
--
ALTER TABLE `Employees`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `Products`
--
ALTER TABLE `Products`
  MODIFY `Product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `regData`
--
ALTER TABLE `regData`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `papers`
--
ALTER TABLE `papers`
  ADD CONSTRAINT `papers_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
