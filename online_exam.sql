-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 09, 2021 at 06:35 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `online_exam`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_login`
--

CREATE TABLE `admin_login` (
  `id` int(5) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin_login`
--

INSERT INTO `admin_login` (`id`, `username`, `password`) VALUES
(1, 'admin', 'password');

-- --------------------------------------------------------

--
-- Table structure for table `exam_category`
--

CREATE TABLE `exam_category` (
  `id` int(5) NOT NULL,
  `category` varchar(100) NOT NULL,
  `exam_time` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `exam_category`
--

INSERT INTO `exam_category` (`id`, `category`, `exam_time`) VALUES
(4, 'Physics 101', '5'),
(5, 'Math 256', '5'),
(6, 'Chemistry 101', '20'),
(7, 'ICT 120', '6'),
(10, 'Math 140', '10'),
(12, 'Physics 201', '2'),
(13, 'Chemistry 139', '15'),
(22, 'math456', '5'),
(23, 'math457', '15');

-- --------------------------------------------------------

--
-- Table structure for table `exam_results`
--

CREATE TABLE `exam_results` (
  `id` int(5) NOT NULL,
  `username` varchar(100) NOT NULL,
  `exam_type` varchar(100) NOT NULL,
  `total_question` varchar(100) NOT NULL,
  `correct_answer` varchar(100) NOT NULL,
  `wrong_answer` varchar(100) NOT NULL,
  `exam_time` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `exam_results`
--

INSERT INTO `exam_results` (`id`, `username`, `exam_type`, `total_question`, `correct_answer`, `wrong_answer`, `exam_time`) VALUES
(1, 'H', 'english', '3', '2', '1', '2021-01-08'),
(2, 'H', 'math', '3', '0', '3', '2021-01-08'),
(3, 'sifat', 'math', '3', '1', '2', '2021-01-08'),
(4, 'sifat', 'english', '3', '0', '3', '2021-01-08'),
(5, 'sifat', 'Chemistry', '0', '0', '0', '2021-01-09'),
(6, 'sifat', 'math', '3', '0', '3', '2021-01-09'),
(7, 'durjoy', 'Chemistry', '2', '1', '1', '2021-01-09'),
(8, 'sifat', 'Chemistry', '2', '0', '2', '2021-01-09'),
(9, 'durjoy1', 'math', '3', '3', '0', '2021-01-09'),
(10, 'durjoy1', 'english', '3', '3', '0', '2021-01-09'),
(11, 'durjoy1', 'ICT', '3', '3', '0', '2021-01-09'),
(12, 'durjoy1', 'sample', '0', '0', '0', '2021-01-09'),
(13, 'durjoy1', 'physics', '2', '1', '1', '2021-01-09'),
(14, 'abcd', 'math', '5', '2', '3', '2021-01-09'),
(16, 'durjoy1', 'physics', '2', '1', '1', '2021-01-10'),
(19, 'durjoy1', 'math', '5', '4', '1', '2021-01-10'),
(21, 'durjoy1', 'math', '6', '2', '4', '2021-01-10'),
(24, 'durjoy1', 'physics', '3', '2', '1', '2021-01-10'),
(26, 'durjoy1', 'math123', '2', '2', '0', '2021-01-10'),
(27, 'durjoy1', 'algo', '1', '1', '0', '2021-01-10'),
(28, '69', 'algo', '1', '1', '0', '2021-01-10'),
(29, 'durjoy1', 'algo', '2', '2', '0', '2021-01-10'),
(30, 'durjoy1', 'math', '6', '3', '3', '2021-01-10'),
(31, 'durjoy1', 'sample3', '0', '0', '0', '2021-01-10'),
(32, 'durjoy1', 'algo', '2', '2', '0', '2021-01-10'),
(33, 'durjoy1', 'ICT', '3', '1', '2', '2021-01-10'),
(34, 'durjoy1', 'math', '6', '3', '3', '2021-01-10'),
(35, 'durjoy1', 'algo', '2', '2', '0', '2021-01-10'),
(36, 'durjoy1', 'algo', '2', '2', '0', '2021-01-10'),
(37, 'durjoy1', 'math', '6', '3', '3', '2021-01-10'),
(38, 'durjoy1', 'math', '6', '5', '1', '2021-01-10'),
(39, 'durjoy1', 'math', '7', '2', '5', '2021-01-10'),
(40, 'durjoy1', 'math', '7', '6', '1', '2021-01-10'),
(41, 'durjoy1', 'math', '2', '2', '0', '2021-01-10'),
(42, 'durjoy1', 'math', '2', '2', '0', '2021-01-10'),
(43, 'durjoy1', 'algo', '2', '2', '0', '2021-01-10'),
(44, 'durjoy1', 'english', '3', '1', '2', '2021-01-10'),
(45, 'durjoy1', 'math', '2', '2', '0', '2021-01-10'),
(46, 'hulu', 'math', '2', '2', '0', '2021-01-10'),
(47, 'durjoy1', 'math', '2', '2', '0', '2021-01-10'),
(48, 'durjoy1', 'math', '2', '2', '0', '2021-01-10'),
(49, 'durjoy1', 'math', '2', '2', '0', '2021-01-10'),
(50, 'durjoy1', 'math', '2', '2', '0', '2021-01-10'),
(51, 'durjoy1', 'math', '2', '2', '0', '2021-01-10'),
(52, 'durjoy1', 'algo', '2', '0', '2', '2021-01-10'),
(53, 'admin', 'math', '2', '1', '1', '2021-02-03'),
(54, 'admin', 'math', '2', '1', '1', '2021-02-03'),
(55, 'Autul', 'Physics 101', '5', '3', '2', '2021-02-03'),
(56, 'admin', 'Physics 201', '4', '2', '2', '2021-02-03'),
(57, 'durjoy1', 'Chemistry 101', '4', '0', '4', '2021-02-03'),
(58, 'durjoy1', 'Chemistry 139', '5', '1', '4', '2021-02-03'),
(59, 'durjoy1', 'Chemistry 139', '5', '1', '4', '2021-02-03'),
(60, 'durjoy1', 'Math 256', '6', '1', '5', '2021-02-03'),
(61, 'durjoy1', 'Math 140', '5', '2', '3', '2021-02-03'),
(62, 'durjoy1', 'ICT 120', '5', '1', '4', '2021-02-03'),
(63, 'durjoy89', 'Physics 101', '5', '4', '1', '2021-02-04'),
(64, 'durjoy89', 'Math 256', '6', '3', '3', '2021-02-04'),
(65, 'admin', 'Physics 101', '5', '2', '3', '2021-02-06'),
(66, 'fahim', 'ICT 120', '5', '1', '4', '2021-02-06'),
(67, 'durjoy1', 'Chemistry 101', '4', '0', '4', '2021-02-06'),
(68, 'durjoy1', 'Physics 101', '5', '2', '3', '2021-02-07'),
(69, 'Asif', 'Chemistry 101', '4', '0', '4', '2021-02-07'),
(70, 'Asif', 'Math 256', '6', '4', '2', '2021-02-07'),
(71, 'Sadly', 'Math 140', '5', '1', '4', '2021-02-07'),
(72, 'Sadly', 'Physics 201', '4', '1', '3', '2021-02-07'),
(73, 'Rakib', 'math456', '1', '1', '0', '2021-02-07'),
(74, 'Naim', 'Math 140', '5', '1', '4', '2021-02-09'),
(75, 'durjoy1', 'ICT 120', '5', '2', '3', '2021-02-09'),
(76, 'durjoy1', 'Math 256', '6', '1', '5', '2021-02-09');

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `id` int(10) NOT NULL,
  `question_no` varchar(10) NOT NULL,
  `question` varchar(600) NOT NULL,
  `option1` varchar(200) NOT NULL,
  `option2` varchar(200) NOT NULL,
  `option3` varchar(200) NOT NULL,
  `option4` varchar(200) NOT NULL,
  `answer` varchar(200) NOT NULL,
  `category` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`id`, `question_no`, `question`, `option1`, `option2`, `option3`, `option4`, `answer`, `category`) VALUES
(3, '1', '5 + 3 = ?', '20', '13', '56', '8', '8', 'phy '),
(7, '2', 'what is small', '3', '2', '4', '5', '2', 'phy '),
(11, '1', 'after A ', 'B', 'C', 'D', 'E', 'B', 'english'),
(12, '2', 'after B', 'C', 'D', 'E', 'F', 'C', 'english'),
(13, '3', 'after G', 'H', 'I', 'J', 'K', 'H', 'english'),
(14, '1', '1', '2', '3', '4', '6', '2', 'Chemistry'),
(15, '2', '2', '3', '4', '5', '6', '3', 'Chemistry'),
(16, '1', '8+7?', '15', '20', '21', '56', '15', 'ICT'),
(17, '2', 'Which one is binary number?', '153441', '0111011', '01112221', 'ffff', '0111011', 'ICT'),
(18, '3', 'Which one is hexadecimal number?', '0110', '00023', '0011', 'ABC', 'ABC', 'ICT'),
(22, '1', '56+4 =?', '60', '70', '88', '90', '60', 'physics'),
(23, '2', '12-2=?', '10', '2', '5', '6', '10', 'physics'),
(24, '1', '12-2=?', '10', '1', '2', '35', '10', '#1234'),
(25, '2', '5+5=?', '10', '1', '2', '3', '10', '#1234'),
(26, '1', '5++?', '6', '7', '8', '10', '6', '#15'),
(27, '2', '6++?', '7', '8', '9', '10', '7', '#15'),
(29, '3', '7+8=?', '15', '16', '17', '18', '15', '#15'),
(30, '3', '6+99=?', '105', '1', '2', '3', '105', 'physics'),
(31, '1', '9+6=?', '15', '26', '1', '2', '15', 'math123'),
(32, '2', '6+9=?', '69', '68', '699', '10', '69', 'math123'),
(33, '1', '6+99=?', '105', '1', '2', '3', '105', 'algo'),
(34, '2', '77++', '78', '79', '80', '99', '78', 'algo'),
(35, '1', 'what is full form of html........................................................?', 'btn btn-primary btn-lg', 'btn btn-primary btn-lg', 'hyper text markup language', 'cdjhds dsjfnkjds sdkjfds sdkfnjksd sdkjfkds sdkjfdks ksdjfkds kjdsfd ', 'hyper text markup language', 'math'),
(36, '2', 'what is full form of html loen sjs sjbdsna kjnksj skjd  djnjd nndjncnds jndjcndcn djsncjndsjnj djsnjd?', 'yjsnjs jnc d cjdnc jdsncdc c djsncsj csdncjdsn dsssssssssssss  jdcdjjcvdh hnchbdh  dbschjdc dchc ds.', 'hyper text markup language.', 'jsdhj jdsnjfd djshfj fdjhf fjdsnjfhbsd hfjdbsf hdsbfhds hdsbfds dsbfjsjf hjdbsfhsdjbf fdshhfds hjdbsfs.', 'jsdhj jdsnjfd djshfj fdjhf fjdsnjfhbsd hfjdbsf hdsbfhds hdsbfds dsbfjsjf hjdbsfhsdjbf fdshhfds hjdbsfs.', 'hyper text markup language.', 'math'),
(37, '1', 'Two resistors R1 and R2 of 4 and 6 ohm are connected in parallel across a battery.The ration of power dissipated in them p1 : p2 will be?', '4 : 9', '3 : 2 ', '9 : 4', '6 : 9', '3 : 2', 'Physics 101'),
(38, '2', 'A wire of resistance 8R is bent in the form of a circle as shown. What is the resistance between the ends of diameter AB?', '2R', '3R', '4R', '5R', '2R', 'Physics 101'),
(40, '3', 'A 10V battery of negligible internal resistance is connected across a 200V battery and resistance of 38Ω. Find the value of current in the circuit.', '5 A', '6 A', '7 A', '8 A', '5 A', 'Physics 101'),
(41, '4', 'A potentiometer wire of length 1m has a resistance of 10Ω. It is connected to a 6V battery in series with a resistance of 5Ω. Determine the emf of the primary cell which gives a balance point at 40cm.', '1.5 V', '1.6 V', '1.7 V', '1.8 V', '1.6 V', 'Physics 101'),
(42, '5', 'Earth’s magnetic field and the angle of dip at a point is 0.3G and 30°. Calculate the vertical component of Earth’s magnetic field.', '0.15', '0.20', '0.30', '0.10', '0.15', 'Physics 101'),
(43, '1', 'Earth’s magnetic field and the angle of dip at a point is 0.3G and 30°. Calculate the vertical component of Earth’s magnetic field.', '0.16G', '0.15G ', '0.20G', '0.30G', '0.15G', 'Physics 201'),
(44, '2', 'A compass needle free to turn in the vertical plane, orients itself vertically at a certain place on the earth. Calculate the horizontal component 0f earth’s magnetic field.', '1.5708', '2.564', '0.6545', '3.564564', '1.5708', 'Physics 201'),
(45, '3', 'The horizontal component of Earth’s magnetic field at a point is B and the angle of dip is 60°. What is the vertical component?', '1.7 B', '15 B', '0.5 B', '1.9 B', '1.73 B', 'Physics 201'),
(46, '4', 'A solenoid has a core of material with relative permeability 400. The windings of the solenoid are insulated from the core and carry a current of 2A. if the number of turns is 1000 per meter, calculate H.', '3000 Am', '2500 Am', '2000 Am', '4000 Am', '2000 Am', 'Physics 201'),
(47, '1', 'Of the following name/symbol combinations of elements, which one is WRONG? ', 'uranium/U ', 'nitrogen/N ', 'nitrogen/N ', 'iron/I ', 'iron/I ', 'Chemistry 101'),
(48, '2', 'The chemical symbol for manganese is?', 'Mn ', 'MO', 'Ma', 'Mg', 'Mn ', 'Chemistry 101'),
(49, '3', 'What is the volume of a 2.50 gram block of metal whose density is 6.72 grams per cubic centimeter? ', ' 0.372 cubic centimeters ', '16.8 cubic centimeters ', '2.69 cubic centimeters ', '1.60 cubic centimeters ', '1.60 cubic centimeters ', 'Chemistry 101'),
(50, '4', 'Nitric acid is a very important industrial chemical: 1.612 x 1010 pounds of it were produced in 1992. If the density of nitric acid is 12.53 pounds/gallon, what volume would be occupied by this quantity? (1 gallon = 3.7854 liters) ', '7.646 x 1011 liters ', '8.388 x 109 liters ', '1.287 x 109 liters', '5.336 x 1010 liters ', '7.646 x 1011 liters ', 'Chemistry 101'),
(51, '1', 'The speed of a chemical reaction ', 'is constant no matter what the temperature is. ', 'independent of the amount of contact surface of a solid involved. ', 'gases should in all cases be extremely rapid because the average kinetic energy of the molecules is great. ', 'between ions in aqueous solution is extremely rapid because there are no bonds that need to be broken. ', 'between ions in aqueous solution is extremely rapid because there are no bonds that need to be broken. ', 'Chemistry 139'),
(52, '2', 'What are the units of k for the rate law: Rate = k[A][B]2, when the concentration unit is mol/L?', 'L2 mol-2 s-1', 's-1', 's', 'L mol-1 s-1', 'L2 mol-2 s-1', 'Chemistry 139'),
(53, '3', '    The decomposition of carbon disulfide, CS2, to carbon monosulfide, CS, and sulfur is first order with k = 2.8 x 10-7 s-1 at 1000oC.     CS2 CS + S     What is the half-life of this reaction at 1000oC? ', '5.0 x 107 s ', '4.7 x 10-6 s ', '3.8 x 105 s ', '6.1 x 104 s ', '6.1 x 104 s ', 'Chemistry 139'),
(54, '4', '    The decomposition of dimethylether at 504 oC is first order with a half-life of 1570 seconds. What fraction of an initial amount of dimethylether remains after 4710 seconds? ', '1/3 ', '1/6', '1/9', '1/12', '1/6', 'Chemistry 139'),
(55, '5', 'The half-life for a first-order reaction is 32 s. What was the original concentration if, after 2.0 minutes, the reactant concentration is 0.062 M? ', '0.84 M ', '0.89M', '0.90M', '0.99M', '0.84 M ', 'Chemistry 139'),
(56, '1', 'A die is thrown again and again until three sixes are obtained. Find the probability of obtaining third six in the sixth throw of the die.', '625/23329', '625/23328', '655/23328', '695/23328', '625/23328', 'Math 256'),
(57, '2', 'The probability of a man hitting a target is 14. How many times must he fire so that the probability of his hitting the target at least once is greater than 23?', '4', '3', '2', '1', '4', 'Math 256'),
(58, '3', 'Eight coins are thrown simultaneously. Find the probability of getting atleast 6 heads.', '38/256', '37/256', '32/256', '36/256', '37/256', 'Math 256'),
(59, '4', 'A bag contains 6 red, 4 blue and 2 yellow balls. Three balls are drawn one by one with replacement. Find the probability of getting exactly one red ball.', '3/8', '2/9', '6/4', '9/2', '3/8', 'Math 256'),
(60, '5', 'A box contains 3 orange balls, 3 green balls and 2 blue balls. Three balls are drawn at random from the box without replacement. The probability of drawing 2 green balls and one blue ball is', '3/28', '2/56', '3/58', '2/45', '3/28', 'Math 256'),
(61, '6', 'A flashlight has 8 batteries out of which 3 are dead. If two batteries are selected without replacement and tested, the probability that both are deal is', '33/56', '22/54', '56/45', '11/22', '11/22', 'Math 256'),
(62, '1', 'Minimize Z = 20x1 + 9x2, subject to x1 ≥ 0, x2 ≥ 0, 2x1 + 2x2 ≥ 36, 6x1 + x2 ≥ 60.', '360 at (18, 0)', '336 at (6, 4)', '540 at (0, 60)', '0 at (0, 0)', '336 at (6, 4)', 'Math 140'),
(63, '2', 'Z = 20x1 + 20x2, subject to x1 ≥ 0, x2 ≥ 0, x1 + 2x2 ≥ 8, 3x1 + 2x2 ≥ 15, 5x1 + 2x2 ≥ 20. The minimum value of Z occurs at', '(8, 0)', '5/2,15/4', '7/2,8/9', '8/9,99/2', '5/2,15/4', 'Math 140'),
(64, '3', 'The maximum value of f = 4x + 3y subject to constraints x ≥ 0, y ≥ 0, 2x + 3y ≤ 18; x + y ≥ 10 is', '35', '36', '34', '40', '35', 'Math 140'),
(65, '4', 'The optimal value of the objective function is attained at the points', 'which are comer points of the feascible region', 'on Y-axis', 'on X-axis', 'none of these', 'which are comer points of the feascible region', 'Math 140'),
(66, '5', 'Maximize Z = 4x + 6y, subject to 3x + 2y ≤ 12, x + y ≥ 4, x, y ≥ 0.', '16 at (4, 0)', '24 at (0, 4)', '24 at (6, 0)', '36 at (0, 6)', '36 at (0, 6)', 'Math 140'),
(67, '1', ' This computer is a multiprocessing computer system that is smaller and slower than a mainframe.', 'Supercomputer', 'Personal Computer', 'Embedded Computer', 'Minicomputer', 'Embedded Computer', 'ICT 120'),
(68, '2', ' One of the advantages of Information Technology is', 'Speed and power', 'Speed and accuracy', 'Strength and power', 'Speed and Strength', 'Speed and accuracy', 'ICT 120'),
(69, '3', 'Data representation is based on the ………….. number system, which uses two numbers to represent all data.', 'binary', 'biometric', 'byte', 'bicentennial', 'binary', 'ICT 120'),
(70, '4', 'ICT Stands for', 'International Communication Technology', 'Intera Common Terminology', 'Information and Communication Technology', 'Inter Connected Terminals', 'Information and Communication Technology', 'ICT 120'),
(71, '5', 'Back up of the data files will help to prevent ………………', 'loss of confidentiality', 'duplication of data', 'loss of data', 'virus infection', 'loss of data', 'ICT 120'),
(72, '1', '4+5 =?', '9', '55', '54', '8', '9', 'math456');

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

CREATE TABLE `registration` (
  `id` int(5) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `registration`
--

INSERT INTO `registration` (`id`, `username`, `password`) VALUES
(1, 'sifat', '12345'),
(2, 'durjoy', 'durjoy'),
(3, 'hello', 'hello'),
(5, 'admin', 'password'),
(6, 'durjoy1', '12345'),
(11, 'imrul', '123'),
(14, 'abcd', '1234'),
(17, 'Autul', '123'),
(18, 'durjoy89', '12'),
(19, 'fahim', '123'),
(20, 'Asif', '456'),
(21, 'Sadly', '123'),
(22, 'Rakib', '123'),
(23, 'Naim', '123');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_login`
--
ALTER TABLE `admin_login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `exam_category`
--
ALTER TABLE `exam_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `exam_results`
--
ALTER TABLE `exam_results`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `registration`
--
ALTER TABLE `registration`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_login`
--
ALTER TABLE `admin_login`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `exam_category`
--
ALTER TABLE `exam_category`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `exam_results`
--
ALTER TABLE `exam_results`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT for table `registration`
--
ALTER TABLE `registration`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
