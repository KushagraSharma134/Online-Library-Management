-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 14, 2024 at 09:51 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `library_automation_desk`
--

-- --------------------------------------------------------

--
-- Table structure for table `book`
--

CREATE TABLE `book` (
  `bookid` int(10) NOT NULL,
  `bookcategoryid` int(10) NOT NULL,
  `bookname` varchar(50) NOT NULL,
  `bookdescription` text NOT NULL,
  `bookimg` varchar(100) NOT NULL,
  `bookcost` float(10,2) NOT NULL,
  `author` varchar(25) NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `book`
--

INSERT INTO `book` (`bookid`, `bookcategoryid`, `bookname`, `bookdescription`, `bookimg`, `bookcost`, `author`, `status`) VALUES
(1, 3, 'Computer Application', 'test', '28120Desert.jpg', 750.00, 'sridhar', 'Active'),
(2, 5, 'Software Engineering', 'abt smile', '19081librarybook.jpg', 2000.00, 'ratheesh', 'Active'),
(3, 5, 'C Programming', 'anju', '7176courses-image3.jpg', 100.00, 'anu', 'Active'),
(4, 5, 'GENERAL KNOWLEDGE GYAN', 'CHHATTISGARH GENERAL KNOWLEDGE, (CHHATTISGARH GK) LUCENT PUBLICATION, CHHATTISGARH SAMANYA GYAN HINDI ALL COMPETITIVE EXAMS', '14455genkn.jpg', 212.00, 'LUCENT PUBLICATION', 'Active'),
(5, 5, 'General Knowledge 2018', 'An editorial team of highly skilled professionals at Arihant, works hand in glove to ensure that the students receive the best and accurate content through our books. From inception till the book comes out from print, the whole team comprising of authors, editors, proof-readers and various other involved in shaping the book put in their best efforts, knowledge and experience to produce the rigorous content the students receive. Keeping in mind the specific requirements of the students and various examinations, the carefully designed exam oriented and exam ready content comes out only after intensive research and analysis. The experts have adopted whole new style of presenting the content which is easily understandable, leaving behind the old traditional methods which once used to be the most effective. They have been developing the latest content and updates as per the needs and requirements of the students making our books a hallmark for quality and reliability for the past 15 years.', '3087941t9BhIL8mL._SX331_BO1,204,203,200_.jpg', 200.00, 'LUCENT PUBLICATION', 'Active'),
(6, 6, 'IEEE System engineering', 'Systems engineering is an interdisciplinary field of engineering and engineering management that focuses on how to design and manage complex systems over their Life cycles. At its core, systems engineering utilizes systems thinking principles to organize this body of knowledge.', '32236download.png', 450.00, 'Pankaj Jalote', 'Active'),
(7, 7, 'Financial', 'Financial', '1231584368Blue Modern Our Services Digital Marketing Facebook Cover.png', 2500.00, 'Akash Chopra', 'Active'),
(8, 5, 'Guns, Germs and Steel', 'Informative book telling in detail about how humans in certain areas were able to conquer and dominate the entire world.', '1961739029gunsgermssteel.jpg', 250.00, 'Jared Diamond', 'Active'),
(9, 8, '8085 Microprocessor and Applications', '8085 Microprocessor', '280226941M&I.jpg', 230.00, 'A Nagoor Kani', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `bookcategory`
--

CREATE TABLE `bookcategory` (
  `bookcategoryid` int(10) NOT NULL,
  `bookcategory` varchar(50) NOT NULL,
  `bookdescription` text NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `bookcategory`
--

INSERT INTO `bookcategory` (`bookcategoryid`, `bookcategory`, `bookdescription`, `status`) VALUES
(3, 'Database Engineering', 'books', 'Active'),
(4, 'psychology', ' study abt mind', 'Active'),
(5, 'General Knowledge', 'General Knowledge books ', 'Active'),
(6, 'System engineering', 'System engineering ', 'Active'),
(7, 'Bcom Books', ' ', 'Active'),
(8, 'Engineering books', ' All types of Engineering books for all branches', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `book_stock`
--

CREATE TABLE `book_stock` (
  `book_stock_id` int(10) NOT NULL,
  `bookid` int(10) NOT NULL,
  `branchid` int(10) NOT NULL,
  `purchasedate` date NOT NULL,
  `qty` int(10) NOT NULL,
  `cost` float(10,2) NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `book_stock`
--

INSERT INTO `book_stock` (`book_stock_id`, `bookid`, `branchid`, `purchasedate`, `qty`, `cost`, `status`) VALUES
(9, 5, 127, '2024-04-07', 20, 500.00, 'Active'),
(10, 5, 127, '2024-02-21', 25, 500.00, 'Active'),
(11, 5, 127, '2024-02-07', 10, 10.00, 'Active'),
(12, 6, 127, '2024-02-13', 25, 100.00, 'Active'),
(13, 1, 126, '2024-03-14', 10, 250.00, 'Active'),
(14, 1, 127, '2024-02-15', 5, 500.00, 'Active'),
(15, 7, 129, '2024-03-19', 10, 5000.00, 'Active'),
(16, 2, 126, '2024-03-18', 3, 250.00, 'Active'),
(17, 8, 129, '2024-04-14', 20, 250.00, 'Active'),
(18, 9, 130, '2024-04-14', 25, 230.00, 'Active'),
(19, 3, 130, '2024-04-10', 10, 150.00, 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `branch`
--

CREATE TABLE `branch` (
  `branchid` int(10) NOT NULL,
  `branchname` varchar(50) NOT NULL,
  `branchdescription` text NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `branch`
--

INSERT INTO `branch` (`branchid`, `branchname`, `branchdescription`, `status`) VALUES
(126, 'BE Branch', 'BE Branch', 'Active'),
(127, 'MCA branch', 'MCA branches', 'Active'),
(128, 'BCA', 'BCA branch', 'Active'),
(129, 'History Branch', 'History Branch provides books history library', 'Active'),
(130, 'B. Tech', 'Bachelors in Technology, enhancing the technical knowledge and job opportunities of the students.', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `courseid` int(10) NOT NULL,
  `branchid` int(10) NOT NULL,
  `course` varchar(50) NOT NULL,
  `coursenote` text NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`courseid`, `branchid`, `course`, `coursenote`, `status`) VALUES
(1, 126, 'BCA', 'bca source ', 'Active'),
(2, 126, 'MCA', 'bca source ', 'Active'),
(5, 126, 'BA', 'Computer science engineering..', 'Active'),
(6, 129, 'History', 'History', 'Active'),
(7, 130, 'Microprocessor and Interface', 'Deals with microprocessors and how they work.', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `finesettings`
--

CREATE TABLE `finesettings` (
  `daytokeep` int(10) NOT NULL,
  `penaltycost` float(10,2) NOT NULL,
  `nobooks` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `finesettings`
--

INSERT INTO `finesettings` (`daytokeep`, `penaltycost`, `nobooks`) VALUES
(14, 2.00, 3);

-- --------------------------------------------------------

--
-- Table structure for table `librarian`
--

CREATE TABLE `librarian` (
  `librarian_id` int(10) NOT NULL,
  `name` varchar(25) NOT NULL,
  `type` varchar(10) NOT NULL,
  `loginid` varchar(25) NOT NULL,
  `password` varchar(100) NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `librarian`
--

INSERT INTO `librarian` (`librarian_id`, `name`, `type`, `loginid`, `password`, `status`) VALUES
(1, 'Kushagra Admin', 'Admin', 'admin', 'adminadminadmin', 'Active'),
(5, 'Lakshay Admin', 'Librarian', 'admin', 'adminadminadmin', 'Active'),
(6, 'Librarian sir', 'Librarian', 'librarian', 'adminadminadmin', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `penalty`
--

CREATE TABLE `penalty` (
  `penaltyid` int(10) NOT NULL,
  `penalty_type` varchar(25) NOT NULL COMMENT 'Lost, Days',
  `transactionid` int(10) NOT NULL,
  `bookid` int(10) NOT NULL,
  `cost` float(10,2) NOT NULL,
  `penaltydate` date NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `penalty`
--

INSERT INTO `penalty` (`penaltyid`, `penalty_type`, `transactionid`, `bookid`, `cost`, `penaltydate`, `status`) VALUES
(5, '', 5, 5, 10.00, '2024-05-05', 'Active'),
(6, '', 6, 8, 150.00, '2024-05-05', 'Active'),
(7, '', 8, 9, 0.00, '2024-05-05', 'Active'),
(8, '', 9, 1, 0.00, '2024-05-05', 'Active'),
(9, '', 10, 3, 0.00, '2024-05-05', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `studentid` int(10) NOT NULL,
  `courseid` int(10) NOT NULL,
  `studentname` varchar(25) NOT NULL,
  `studentimg` varchar(255) NOT NULL,
  `rollno` varchar(25) NOT NULL,
  `password` varchar(100) NOT NULL,
  `emailid` varchar(100) NOT NULL,
  `contactno` varchar(15) NOT NULL,
  `status` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`studentid`, `courseid`, `studentname`, `studentimg`, `rollno`, `password`, `emailid`, `contactno`, `status`) VALUES
(10, 7, 'Lakshay Dadhich', '317261601lakshay joker.jpeg', '20ESKCS135', '12345678', 'dadhichlucky1990@gmail.com', '7339872983', 'Active'),
(11, 1, 'Kush Sharma', '2129876609kushagra.jpg', '20ESKCS134', '12345678', 'kushagrasharma.jpr2002@gmail.com', '7339872983', 'Active'),
(12, 1, 'Student Kushagra', '2096464303download (1).png', '20ESKCS134', '12345678', 'kushagrasharma.jpr2002@gmail.com', '7339872983', 'Active'),
(13, 7, 'John Doe', '899689807kushagra.jpg', '134', '12345678', 'kushagrasharma.jpr2002@gmail.com', '7339872983', 'Active'),
(14, 5, 'Arts student', '138104774kushagra.jpg', '20ESKCS134', 'adminadminadmin', 'kushagrasharma.jpr2002@gmail.com', '7339872983', 'Active'),
(15, 7, 'Shanu tripathi', '1377416815M&I.jpg', 'MI-101', '12345678', 'dadhichlucky1990@gmail.com', '7339872983', 'Active'),
(16, 1, 'sumit', '862382072kushagra.jpg', '20ESKCS135', '12345', 'dadhichlucky1990@gmail.com', '7339872983', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `transationid` int(10) NOT NULL,
  `studentid` int(10) NOT NULL,
  `bookid` int(10) NOT NULL,
  `transtype` varchar(50) NOT NULL,
  `bookingdate` date NOT NULL,
  `borrowdate` datetime NOT NULL,
  `returndate` datetime NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`transationid`, `studentid`, `bookid`, `transtype`, `bookingdate`, `borrowdate`, `returndate`, `status`) VALUES
(5, 9, 5, 'Returned', '2024-04-14', '2024-04-14 13:36:59', '2024-05-05 13:36:54', 'Active'),
(6, 9, 8, 'Returned', '2024-04-14', '2024-04-14 14:38:27', '2024-05-05 13:37:47', 'Active'),
(8, 9, 9, 'Returned', '2024-04-14', '2024-04-14 14:43:08', '2024-05-05 13:40:32', 'Active'),
(9, 9, 1, 'Returned', '2024-04-14', '2024-04-14 14:43:11', '2024-05-05 13:40:39', 'Active'),
(10, 10, 3, 'Returned', '2024-04-14', '2024-04-14 14:52:59', '2024-05-05 13:43:21', 'Active'),
(11, 10, 3, 'REQUEST', '2024-04-16', '2024-04-16 23:49:06', '0000-00-00 00:00:00', 'Pending'),
(12, 15, 1, 'REQUEST', '2024-05-11', '2024-05-11 23:51:19', '0000-00-00 00:00:00', 'Rejected'),
(13, 16, 2, 'Issued', '2024-05-14', '2024-05-14 12:03:49', '2024-05-29 12:03:49', 'Active');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `book`
--
ALTER TABLE `book`
  ADD PRIMARY KEY (`bookid`);

--
-- Indexes for table `bookcategory`
--
ALTER TABLE `bookcategory`
  ADD PRIMARY KEY (`bookcategoryid`);

--
-- Indexes for table `book_stock`
--
ALTER TABLE `book_stock`
  ADD PRIMARY KEY (`book_stock_id`);

--
-- Indexes for table `branch`
--
ALTER TABLE `branch`
  ADD PRIMARY KEY (`branchid`);

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`courseid`);

--
-- Indexes for table `librarian`
--
ALTER TABLE `librarian`
  ADD PRIMARY KEY (`librarian_id`);

--
-- Indexes for table `penalty`
--
ALTER TABLE `penalty`
  ADD PRIMARY KEY (`penaltyid`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`studentid`);

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`transationid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `book`
--
ALTER TABLE `book`
  MODIFY `bookid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `bookcategory`
--
ALTER TABLE `bookcategory`
  MODIFY `bookcategoryid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `book_stock`
--
ALTER TABLE `book_stock`
  MODIFY `book_stock_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `branch`
--
ALTER TABLE `branch`
  MODIFY `branchid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=131;

--
-- AUTO_INCREMENT for table `course`
--
ALTER TABLE `course`
  MODIFY `courseid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `librarian`
--
ALTER TABLE `librarian`
  MODIFY `librarian_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `penalty`
--
ALTER TABLE `penalty`
  MODIFY `penaltyid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `studentid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `transationid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
