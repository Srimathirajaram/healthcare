-- phpMyAdmin SQL Dump
-- version 2.11.6
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 25, 2024 at 02:08 PM
-- Server version: 5.0.51
-- PHP Version: 5.2.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `ai_consultancy`
--

-- --------------------------------------------------------

--
-- Table structure for table `ac_admin`
--

CREATE TABLE `ac_admin` (
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ac_admin`
--

INSERT INTO `ac_admin` (`username`, `password`) VALUES
('admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `ac_data`
--

CREATE TABLE `ac_data` (
  `id` int(11) NOT NULL,
  `user_query` text NOT NULL,
  `response1` text NOT NULL,
  `response2` text NOT NULL,
  `consultant` varchar(30) NOT NULL,
  `disease` varchar(30) NOT NULL,
  `status` int(11) NOT NULL,
  `qno` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ac_data`
--

INSERT INTO `ac_data` (`id`, `user_query`, `response1`, `response2`, `consultant`, `disease`, `status`, `qno`) VALUES
(1, 'How are you today? Do you have any pain or discomfort?', 'feel not good', '', '', '', 0, 0),
(2, 'Which part of your body pain or discomfort?', '', '', '', '', 0, 0),
(3, 'Do you have chest pain?', 'chest, chest pain, heart', '', '', 'Heart Attack', 0, 0),
(4, 'Do you have Pain or discomfort in other areas of the upper body?', '', '', '', 'Heart Attack', 0, 0),
(5, 'Do you have shortness of breath?', '', '', '', 'Heart Attack', 0, 0),
(6, 'Do you have cold sweat?', '', '', '', 'Heart Attack', 0, 0),
(7, 'Do you have nausea or vomiting?', '', '', '', 'Heart Attack', 0, 0),
(8, 'Do you have light-headedness or dizziness?', '', '', '', 'Heart Attack', 0, 0),
(9, 'Do you have sneezing?', 'allergy', '', '', 'Allergy', 0, 0),
(10, 'Do you have runny or stuffy nose?', '', '', '', 'Allergy', 0, 0),
(11, 'Do you have Itchy or watery eyes?', '', '', '', 'Allergy', 0, 0),
(12, 'Do you have caughing?', '', '', '', 'Allergy', 0, 0),
(13, 'If you have any skin reactions? if yes in which part of your body?', '', '', '', 'Allergy', 0, 0),
(14, 'Do you have any swelling? if yes in which part of your body?', '', '', '', 'Allergy', 0, 0),
(15, 'Do you have Frequent urination?', 'leg pain, hand pain, weight loss, blurred vision', '', '', 'Diabetes', 0, 0),
(16, 'Do you have Increased thirst?', '', '', '', 'Diabetes', 0, 0),
(17, 'Do you have Increased hunger?', '', '', '', 'Diabetes', 0, 0),
(18, 'You have Unexplained weight loss?', '', '', '', 'Diabetes', 0, 0),
(19, 'You have Slow healing of wounds?', '', '', '', 'Diabetes', 0, 0),
(20, 'Do you have Blurred Vision?', '', '', '', 'Diabetes', 0, 0),
(21, 'Do you have Burning or gnawing pain?', 'burn, stomach pain, stomach burning', '', '', 'Ulcer', 0, 0),
(22, 'Do you have Indigestion or heartburn?', '', '', '', 'Ulcer', 0, 0),
(23, 'Do you have Bloating or feeling full quickly?', '', '', '', 'Ulcer', 0, 0),
(24, 'Loss of appetite?', '', '', '', 'Ulcer', 0, 0),
(25, 'You have Blood in the stool or vomit?', '', '', '', 'Ulcer', 0, 0),
(26, 'Do you have a fever', 'fever, vomiting', '', '', 'Influenza', 0, 0),
(27, 'Do you have cough?', '', '', '', 'Influenza', 0, 0),
(28, 'Do you have sore throat?', '', '', '', 'Influenza', 0, 0),
(29, 'Do you have Muscle aches and Body aches?', '', '', '', 'Influenza', 0, 0),
(30, 'Do you have Headache?', '', '', '', 'Influenza', 0, 0),
(31, 'Do you have Fatigue and weakness', '', '', '', 'Influenza', 0, 0),
(32, 'Do you have Chills and sweats?', '', '', '', 'Influenza', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `ac_department`
--

CREATE TABLE `ac_department` (
  `id` int(11) NOT NULL,
  `department` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ac_department`
--

INSERT INTO `ac_department` (`id`, `department`) VALUES
(1, 'Anesthesiology'),
(2, 'Cardiology'),
(3, 'Dermatology'),
(4, 'Gastroenterology'),
(5, 'Obstetrics and Gynecology'),
(6, 'Orthopedics'),
(7, 'Pediatrics'),
(8, 'General Physican'),
(9, 'Endocrinologist');

-- --------------------------------------------------------

--
-- Table structure for table `ac_disease`
--

CREATE TABLE `ac_disease` (
  `id` int(11) NOT NULL,
  `disease` varchar(100) NOT NULL,
  `symptom1` varchar(100) NOT NULL,
  `symptom2` varchar(100) NOT NULL,
  `symptom3` varchar(100) NOT NULL,
  `symptom4` varchar(100) NOT NULL,
  `symptom5` varchar(100) NOT NULL,
  `test1` varchar(50) NOT NULL,
  `test2` varchar(50) NOT NULL,
  `consultant` varchar(50) NOT NULL,
  `user_query` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ac_disease`
--

INSERT INTO `ac_disease` (`id`, `disease`, `symptom1`, `symptom2`, `symptom3`, `symptom4`, `symptom5`, `test1`, `test2`, `consultant`, `user_query`) VALUES
(1, 'Diarrhea', 'Vomiting', 'Fever', 'Abdominal Pain', 'Nausea', 'Bloating', 'Stool test', 'Blood test', 'General Physican', ''),
(2, 'Asthma', 'Wheezing', 'Breathlessness', 'Tight Chest', 'Caughing', 'Sleeplessness', 'CT scan ', 'Blood test', 'Dermatologist', ''),
(3, 'Covid', 'Fever', 'Dry caugh', 'sore throat', 'taste/ smell loss', 'Chest pain', 'PCR test', 'Antigen test', 'General Physican', ''),
(4, 'Parkinson', 'Slowed movement', 'Tremor', 'Rigid Muscle', 'Speech Change', 'Writing change', 'Blood test', 'MRI', 'Neurologist', ''),
(5, 'Malaria', 'Vomiting', 'Nausea', 'Tiredness', 'Muscle aches', 'Headache', 'Antigen test', 'PCR test', 'General Physican', ''),
(6, 'Diabetes', 'Thirsty', 'Lose weight', 'Frequent urination', 'Frequenlty hungry', 'Blurry vision', 'Sugur test', 'Glucose test', 'Endocrinologist', ''),
(7, 'Allergy', 'Sneezing', 'Eye irritation', 'Tummy pain ', 'Red resh', 'Cracked skin', 'Blood test', 'SPT ', 'Dermatologist', ''),
(8, 'Influenza', 'Fever', 'sore throat ', 'Stuffy nose', 'Fatigue', ' Body aches', 'RT-PCR test', 'Viral Culture test', 'General Physican', ''),
(9, 'Heart Attack', 'Chest pain', 'Weakness', 'Shortness of breath', ' feeling Nauseous', ' Light headed', 'ECG', 'Blood test', 'Cardiologist', ''),
(10, 'Ulcer', 'Dark stool', 'Vomiting', 'Heart burning', 'Burping', 'pain in back', 'X-ray', 'Endoscopy', 'Gastroenterologist', '');

-- --------------------------------------------------------

--
-- Table structure for table `ac_doctor`
--

CREATE TABLE `ac_doctor` (
  `id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `dept` varchar(30) NOT NULL,
  `mobile` bigint(20) NOT NULL,
  `email` varchar(40) NOT NULL,
  `hospital` varchar(30) NOT NULL,
  `location` varchar(30) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `approved_status` int(11) NOT NULL,
  `register_date` varchar(20) NOT NULL,
  `online_st` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ac_doctor`
--

INSERT INTO `ac_doctor` (`id`, `name`, `dept`, `mobile`, `email`, `hospital`, `location`, `username`, `password`, `approved_status`, `register_date`, `online_st`) VALUES
(1, 'Dr. M.Sivaram, M.S', 'Cardiologist', 8954548556, 'bgeduscanner@gmail.com', 'KMC', 'Chennai', 'D1', '1234', 1, '11-04-2024', 1),
(2, 'Dr. R.Kumar, M.D', 'Endocrinologist', 9876589634, 'bgeduscanner@gmail.com', 'KMC', 'Chennai', 'D2', '1234', 1, '23-04-2024', 1);

-- --------------------------------------------------------

--
-- Table structure for table `ac_face`
--

CREATE TABLE `ac_face` (
  `id` int(11) NOT NULL,
  `vid` int(11) NOT NULL,
  `vface` varchar(30) NOT NULL,
  `mask_st` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ac_face`
--

INSERT INTO `ac_face` (`id`, `vid`, `vface`, `mask_st`) VALUES
(1, 1, 'Usera.1.2.jpg', 0),
(2, 1, 'Usera.1.3.jpg', 0),
(3, 1, 'Usera.1.4.jpg', 0),
(4, 1, 'Usera.1.5.jpg', 0),
(5, 1, 'Usera.1.6.jpg', 0),
(6, 1, 'Usera.1.7.jpg', 0),
(7, 1, 'Usera.1.8.jpg', 0),
(8, 1, 'Usera.1.9.jpg', 0),
(9, 1, 'Usera.1.10.jpg', 0),
(10, 1, 'Usera.1.11.jpg', 0),
(11, 1, 'Usera.1.12.jpg', 0),
(12, 1, 'Usera.1.13.jpg', 0),
(13, 1, 'Usera.1.14.jpg', 0),
(14, 1, 'Usera.1.15.jpg', 0),
(15, 1, 'Usera.1.16.jpg', 0),
(16, 1, 'Usera.1.17.jpg', 0),
(17, 1, 'Usera.1.18.jpg', 0),
(18, 1, 'Usera.1.19.jpg', 0),
(19, 1, 'Usera.1.20.jpg', 0),
(20, 1, 'Usera.1.21.jpg', 0),
(21, 1, 'Usera.1.22.jpg', 0),
(22, 1, 'Usera.1.23.jpg', 0),
(23, 1, 'Usera.1.24.jpg', 0),
(24, 1, 'Usera.1.25.jpg', 0),
(25, 1, 'Usera.1.26.jpg', 0),
(26, 1, 'Usera.1.27.jpg', 0),
(27, 1, 'Usera.1.28.jpg', 0),
(28, 1, 'Usera.1.29.jpg', 0),
(29, 1, 'Usera.1.30.jpg', 0),
(30, 1, 'Usera.1.31.jpg', 0),
(31, 1, 'Usera.1.32.jpg', 0),
(32, 1, 'Usera.1.33.jpg', 0),
(33, 1, 'Usera.1.34.jpg', 0),
(34, 1, 'Usera.1.35.jpg', 0),
(35, 1, 'Usera.1.36.jpg', 0),
(36, 1, 'Usera.1.37.jpg', 0),
(37, 1, 'Usera.1.38.jpg', 0),
(38, 1, 'Usera.1.39.jpg', 0),
(39, 1, 'Usera.1.40.jpg', 0),
(40, 1, 'Usera.1.41.jpg', 0),
(41, 1, 'Usera.1.42.jpg', 0),
(42, 1, 'Usera.1.43.jpg', 0),
(43, 1, 'Usera.1.44.jpg', 0),
(44, 1, 'Usera.1.45.jpg', 0),
(45, 1, 'Usera.1.46.jpg', 0),
(46, 1, 'Usera.1.47.jpg', 0),
(47, 1, 'Usera.1.48.jpg', 0),
(48, 1, 'Usera.1.49.jpg', 0),
(49, 1, 'Usera.1.50.jpg', 0),
(50, 1, 'Usera.1.51.jpg', 0),
(51, 1, 'Usera.1.52.jpg', 0),
(52, 1, 'Usera.1.53.jpg', 0),
(53, 1, 'Usera.1.54.jpg', 0),
(54, 1, 'Usera.1.55.jpg', 0),
(55, 1, 'Usera.1.56.jpg', 0),
(56, 1, 'Usera.1.57.jpg', 0),
(57, 1, 'Usera.1.58.jpg', 0),
(58, 1, 'Usera.1.59.jpg', 0),
(59, 1, 'Usera.1.60.jpg', 0);

-- --------------------------------------------------------

--
-- Table structure for table `ac_temp`
--

CREATE TABLE `ac_temp` (
  `id` int(11) NOT NULL,
  `question` text NOT NULL,
  `answer` text NOT NULL,
  `uname` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ac_temp`
--

INSERT INTO `ac_temp` (`id`, `question`, `answer`, `uname`) VALUES
(1, 'Which part of your body pain or discomfort?', 'dry skin', ''),
(2, 'Which part of your body pain or discomfort?', 'dry skin', 'ramesh'),
(3, 'Do you have Frequent urination?', 'yes', 'ramesh'),
(4, 'Do you have Increased thirst?', 'yes', 'ramesh'),
(5, 'Do you have Increased hunger?', 'yes', 'ramesh'),
(6, 'You have Unexplained weight loss?', 'yes', 'ramesh'),
(7, 'You have Slow healing of wounds?', 'yes', 'ramesh'),
(8, 'Do you have Blurred Vision?', 'yes', 'ramesh');

-- --------------------------------------------------------

--
-- Table structure for table `ac_user`
--

CREATE TABLE `ac_user` (
  `id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `mobile` bigint(20) NOT NULL,
  `email` varchar(40) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `register_date` varchar(20) NOT NULL,
  `fimg` varchar(20) NOT NULL,
  `fimg2` varchar(20) NOT NULL,
  `fimg3` varchar(20) NOT NULL,
  `docid` varchar(20) NOT NULL,
  `emotion` varchar(20) NOT NULL,
  `detect_face` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ac_user`
--

INSERT INTO `ac_user` (`id`, `name`, `mobile`, `email`, `username`, `password`, `register_date`, `fimg`, `fimg2`, `fimg3`, `docid`, `emotion`, `detect_face`) VALUES
(1, 'Ramesh', 8954572125, 'ramesh@gmail.com', 'ramesh', '123456', '11-04-2024', 'Usera.1.60.jpg', 'Userb.51.60.jpg', 'Userc.101.60.jpg', 'D2', 'Moderate', 'f819.jpg');
