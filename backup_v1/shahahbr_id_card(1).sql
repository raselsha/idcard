-- phpMyAdmin SQL Dump
-- version 4.0.10.18
-- https://www.phpmyadmin.net
--
-- Host: localhost:3306
-- Generation Time: Dec 20, 2017 at 10:37 AM
-- Server version: 5.5.55-38.8-log
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `shahahbr_id_card`
--

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE IF NOT EXISTS `courses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `course_name` varchar(200) NOT NULL,
  `course_code` int(11) NOT NULL,
  `course_content` varchar(500) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `course_name`, `course_code`, `course_content`) VALUES
(1, 'Web Development ', 101, 'N/A'),
(2, 'Web Design ', 102, 'N/A'),
(3, 'Graphics Design', 201, 'N/A'),
(4, 'Networking', 301, 'N/A'),
(5, 'Hardware', 401, 'N/A'),
(6, 'C#.Net', 106, 'N/A'),
(7, 'General Electrical Works', 501, 'N/A');

-- --------------------------------------------------------

--
-- Table structure for table `instructors`
--

CREATE TABLE IF NOT EXISTS `instructors` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `instructor_name` varchar(100) NOT NULL,
  `instructor_mobile` varchar(20) NOT NULL,
  `instructor_email` varchar(100) NOT NULL,
  `instructor_speciality` varchar(200) NOT NULL,
  `instructor_image` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE IF NOT EXISTS `students` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `student_id` int(10) NOT NULL,
  `mobile` varchar(20) NOT NULL,
  `course_id` int(11) NOT NULL,
  `batch` varchar(10) NOT NULL,
  `validity` varchar(100) NOT NULL,
  `present_address` varchar(200) NOT NULL,
  `permanent_address` varchar(200) NOT NULL,
  `emergency` varchar(20) NOT NULL,
  `nid` varchar(200) NOT NULL,
  `bid` varchar(200) NOT NULL,
  `blood` varchar(4) NOT NULL,
  `image` varchar(200) NOT NULL,
  `print` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=109 ;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `name`, `student_id`, `mobile`, `course_id`, `batch`, `validity`, `present_address`, `permanent_address`, `emergency`, `nid`, `bid`, `blood`, `image`, `print`) VALUES
(1, 'Tarina Sultana', 1273, '01928-037337', 1, 'PHP-04', 'Aug - Dec, 2016', 'Road No:17, House :1048, Adabar, Dhaka -1207', 'Vill:Barinagor,Post:Barinagor,\r\nPS:kotoali,Dist:Jessore', '01928-037337', '19972617272114804', '', 'B+', '1273.jpg', '0'),
(2, 'Yeasin Kobir (Pinju)', 1210, '01865978868', 6, 'C#-03', 'Aug-Dec,16', 'Rd :1, House:98\r\njaprabad ,Mumadpur,dhaka', 'vill :Dabepur , po :Raipur\r\nPs :Raipur   ,  Dist :Laxmipur', '01732096380', '19965115871012568', '', '0-', '1210.jpg', '0'),
(3, 'Md.Fakrul Islam Arobi', 1224, '01754520613', 6, 'C#-03', 'Aug-Dec,16', '84,t/1\r\nmohammodpur\r\nDhaka-1207', 'vill:mohadebpur po:rakhaliabazar\r\nps:laxmipur\r\ndis:Laxmipur', '01726123801', '19965114335040266', '', 'O+', '', '0'),
(4, 'Imtiyaz Uddin', 1209, '01945368565', 6, 'C#-03', 'Aug-Dec,16', 'Vill: Palpara, PO: Islampur, PS:Laxmipur, Dist: Laxmipur', 'Vill: Palpara, PO: Islampur, PS:Laxmipur, Dist: Laxmipur', '1720324025', '19965114395014654', '', 'B+', '1209.jpg', '0'),
(5, 'Nazrul Islam', 1270, '01832309304', 6, 'C#-03', 'Aug-Dec,16', 'Lalmatia, Mirpur-11, Dhaka-1216', 'Vill: Gandhobpur, PO: Hiramon Bazar, PS: Laxmipur, Dist: Laxmipur ', '1811605203', '19955114370039902', '', 'B+', '1270.jpg', '0'),
(6, 'Abdur Rahman', 1205, '01764027374', 4, 'CCNA-03', 'Aug-Dec,16', 'Zohirul Islam City, Aftabnagar, Rampura, Dhaka-1214', 'Vill: Chor Lorange, PO:Komol Nagar,\r\nPS : Komol Nagar, Dist: Laxmipur', '01711585862', '19955117379036626', '', 'B+', '1205.jpg', '0'),
(8, 'Kamrul Isalam', 1285, '01830670783', 4, 'CCNA-03', 'Aug-Dec,16', 'Banglamotor, Dhaka-1205', 'Vill: Komlapur hazibari, PO:Nondigram, PS: Ramgonje, Dist: Laxmipur', '01828721396', '19955116547005179', '', 'B+', '1285.jpg', '0'),
(9, 'Asraf Hossain', 1269, '01748967310', 4, 'CCNA-03', 'Aug-Dec,16', 'Kalshi, Mirpur-11,Dhaka-1216', 'Vill: Chorali hasan, PO: 16 no Sahchor, PS: Laxmipur, Dist: Laxmipur', '01748967310', '19965114385010732', '', 'B+', '1269.jpg', '0'),
(10, 'Md. Mynul Hoque', 1268, '01837201695', 4, 'CCNA-03', 'Aug-Dec,16', 'Mirpur-11, Dhaka-1216', 'Vill: Banchanagar, PO: Laxmipur Sadar, PS: Laxmipur Sadar, Dist: Laxmipur', '1729748251', '19965124306000033', '', 'AB+', '1268.jpg', '0'),
(11, 'Golam Rabbani (samim)', 1288, '01837201731', 4, 'CCNA-03', 'Aug-Dec,16', 'Gandariya, Jatrabari, Dhaka-1360', 'Vill: Srirampur, PO:Dattapara, PS:Laxmipur Sadar, Dist: Laxmipur', '1713627328', '19955114340029762', '', 'O+', '1288.jpg', '0'),
(12, 'Umme Habiba', 1274, '01717995287', 1, 'PHP_04', 'Aug-Dec,16', 'Model Polytechnic Institute, Jessore. ', 'Post:Jessore Sadar', '01780319637', '19954123806013829', '', '', '1274.jpg', '0'),
(13, 'Tonmoy Roy', 1290, '01872279871', 1, 'PHP_04', 'Aug-Dec,16', 'Jessore Moldel Polytechnic Institute\r\n', 'Vill:Bishnopur, Po:Norail, Ps:Norail, Dist:Norail Sador.', '01869253966', '19966517674000125', '0', '', '1290.jpg', '0'),
(14, 'Kumare Popy Mozumdar', 1281, '01772570043', 1, 'PHP_04', 'Aug-Dec,16', 'Model Polytechnic Institute, Jessore', 'Dharmotala, Kadomtala More, Jessore.', '01772570043', '199344133545347', '', '', '1281.jpg', '0'),
(15, 'Md. Sumon Mollah', 1276, '01932620806', 1, 'PHP_04', 'Aug-Dec,16', 'Model Polytechnic Institute, Jessore.', 'Vill:Doriapara, Po:Dholgram, Ps:Bagharpara, Dist:Jessore.', '01710959153', '19964110938001257', '', '', '1276.jpg', '0'),
(16, 'Mohd. Amit Hasan', 1275, '01827525455', 4, 'PHP-04', 'Aug-Dec,16', 'Model Polytechnic Institute, Jessore.', 'Po:Agra,Hajrahati, Ps:Bagharpara, Dist:Jessore.', '1710959153', '1996411093800205', '0', '', '1275.jpg', '0'),
(17, 'Md. Forhad Hossain Talukder', 1260, '01930545738', 1, 'PHP_04', 'Aug-Dec,16', 'Model Polytechnic Institute, Jessore.   ', 'Po:Dorshona, Ps:Damurhuda, Dist:Chuadanga.', '1712928864', '1995561227108884', '0', '', '1260.jpg', '0'),
(19, 'Md. Al-Amin Hossain', 1280, '01939130115', 3, 'GD-01', 'Aug-Dec,16', 'Model Polytechnic Institute, Jessore. ', 'Vill:Kulia PO:Panishara, PS:Jikorgasa, Dist:Jessore.', '01911869785', '19954112371003182', '', '', '1280.jpg', '0'),
(20, 'Sumaya Akter', 1287, '01924786648', 1, 'PHP-04', 'Aug-Dec,16', 'Model Polytechnic Institute, Jessore. ', 'Po:Mahidia, Ps:Rudropur, Dist:Jessore.', '01778006374', '19964114750002347', '0', '', '1287.jpg', '0'),
(21, 'Sarzin Sultana', 1279, '01910440443', 1, 'PHP-04', 'Aug-Dec,16', 'Model Polytechnic Institute, Jessore.', 'Po:Noudagram, Ps:Moheshpur, Dist:Jhinaidaho.', '01919261996', '1996441711009604', '', '', '1279.jpg', '0'),
(22, 'Julekha Yeasmin', 1282, '01959810920', 1, 'PHP-04', 'Aug-Dec,16', 'Model Polytechnic Institute, Jessore.', 'Po:Boichitola, Ps:Moheshpur,Dist:Jhinaidoho.', '01912339067', '19954427102018829', '', '', '1282.jpg', '0'),
(23, 'Laky Akter', 1220, '01930390902', 3, 'GD-01', 'Aug-Dec,16', 'Mohakhali, hajaribari, Gp-ga-109,', 'Vill: Burtipara, P.O: Kacharibazar, P.S: Kutubali,Dist.: Mymensing', '01929393175', '19753090919118861', '0', '', '1220.jpg', '0'),
(24, 'MD. Alauddin', 1217, '01720996407', 2, 'Web-01', 'Aug-Dec,16', '149/4/A, Wapda Road Khilgoan City Corporation Road, Khilgoan, Dhaka-1219', 'Vill: Kapash Kandi,P.O: Korikandi, P.S.:Titas, Dist.:Comilla ', '01720996407', '19922693622001630', '0', '', '1217.jpg', '0'),
(25, 'Dulan Chandra Das', 1219, '01859504951', 4, 'CCNA-02', 'Aug-Dec,16', '13/C, Block-E, House: 50, Banani,Dhaka-', 'Vill: Chaparkona, PO: Chaparkona, PS: Sorishabari, Dist: Jamalpur', '01724260479', '19963918531000553', '0', '', '1219.jpg', '0'),
(26, 'Md. Nur Karim', 1211, '01797417147', 4, 'CCNA-03', 'Aug-Dec,16', 'Bongshal, Malitola, Dhaka-1000', 'Vill: Ramnarayanpur, PO: Mollika Dighirpar, PS: Chatkhil, Dist: Noyakhali', '01814716282', '19927511076028609', '', 'AB+', '1211.jpg', '0'),
(27, 'Md. Ibrahim Kholil', 1262, '01777147930', 1, 'PHP-03', 'Aug-Dec,16', 'Sirajgonj Polytecnic Institute ', 'Vill: Nondina, Po: rajibpur, PS:Dist: Sirajgonj', '1734692605', '19955632247102518', '', '', '1262.jpg', '0'),
(28, 'Md. Moniruzzaman', 1256, '01788032690', 4, 'CCNA-02', 'Aug-Dec,16', 'Sirajgonj Polytechnic Institute\r\n', 'Vill:Shimuldaw, PO: Shimuldaw, PS: Kazipur, Dist: Sirajgonj\r\n', '01753245814', '19978815017000374', '0', '', '1256.jpg', '0'),
(29, 'Md.Zahidul Islam', 1258, '01986943304', 4, 'CCNA-02', 'Aug-Dec,16', 'Sirajgonj Polytechnic Institute\r\n', 'Vill:Tetulia, PO: Tetulia, PS: Ullapara, Dist: Sirajgonj\r\n', '01716108504', '19968819414000339', '0', '', '1258.jpg', '0'),
(30, 'Md. Ruhul Amin ', 1223, '01948609166', 1, 'PHP-03', 'Aug-Dec,16', '347/B, Ahmadnagr, Pikepara, Mirpur-1,Dhaka-1216\r\n\r\n', 'Vill:Chorchala, PO: Belkuchi, PS:Belkuchi, Dist: Sirajgonj \r\n', '1916953655', '19968821604084998', '', '', '', '0'),
(31, 'Mst. Mahmuda Khatun', 1230, '01910474648', 1, 'PHP-03', 'Aug-Dec,16', '310/A, Pikepara, Mirpur-1,Dhaka-126\r\n', 'Vill: Bilchadpal, PO: KalidasGati, PS: Sirajgong, Dist: Sirajgonj\r\n', '1912995758', '19978817817104316', '', '', '1230.jpg', '0'),
(32, 'Md. Omur Faruk', 1222, '01984971898', 1, 'PHP-03', 'Aug-Dec,16', 'Rd:5,House: 18, Mirpur-1,Dhaka-1216\r\n', 'Vill: Masumpur, PO:PS:Dist: Sirajgonj\r\n', '1917320153', '19958827800052309', '', '', '1222.jpg', '0'),
(33, 'Shakibur Rahman', 1226, '01763055345', 4, 'CCNA-02', 'Aug-Dec,16', 'Sirajgonj Polytechnic Institute\r\n', 'Vill: Sujabad, PO:Madla, PS:Shajanpur, Dist: Bogura\r\n', '01798995004', '19961018556000100', '0', '', '1226.jpg', '0'),
(34, 'Md. Shahin Sobuj', 1261, '01724597222', 1, 'PHP-01', 'Aug-Dec,16', 'Sirajgonj Polytechnic Institute\r\n', 'Vill: Khudbandi, PO: Biayara, PS: Kazipur, Dist: Sirajgonj\r\n', '01737713417', '19978815034000188', '0', '', '1261.jpg', '0'),
(35, 'Md. Kawsar Mahmud', 1252, '01728275066', 1, 'PHP-03', 'Aug-Dec,16', '282/A, Ahmadnagr,Pikepara,Mirpur-1,Dhaka-1216\r\n', 'Vill:Rotoni, PO: Kalidasgati, PS: Dist: Sirajgonj\r\n', '1763114623', '19978817817000175', '0', '', '1252.jpg', '0'),
(36, 'Md. Saddam ', 1218, '01746684328', 1, 'PHP-03', 'Aug-Dec,16', '242/A, Ahmadnagar, Pikepara,Mirpur-1,Dhaka-1216\r\n', 'Vill: Nikrail, PO: Nikrail, PS: Vuapur, Dist: Tangail\r\n', '1714283248', '19979311981000064', '0', '', '1218.jpg', '0'),
(37, 'Md. Nazmul Islam', 1286, '01736063141', 4, 'CCNA-02', 'Aug-Dec,16', 'Sirajgonj Polytechnic Institute\r\n', 'Vill: Katanga, PO:PS:Dist Sirajgonj\r\n', '01925725648', '19968817834000179', '0', '', '', '0'),
(38, 'Md. Asraful Islam', 1251, '01729431700', 1, 'PHP-01', 'Aug-Dec,16', 'Sirajgonj Polytechnic Institute\r\n', 'Vill: Isamoti, PO: Isamoti, PS:Dist: Sirajgonj\r\n', '01737766696', '19978817816000157', '0', '', '1251.jpg', '0'),
(39, 'Golamm Kibria', 1283, '01774708838', 5, 'A+-01', 'Aug-Dec,16', '6/32 uttar bishil,Mirpur-1, Dhaka-1216\r\n', 'Vill: Palpara, PO:Islampur, PS:Dist: Laxmipur\r\n', '01726821524', '', '0', 'B+', '1283.jpg', '0'),
(40, 'Arnob Ghosh', 1221, '01759202080', 1, 'PHP-03', 'Aug-Dec,16', 'House: 18, Rd: 05, Block :F, Mirpur-1,Dhaka-1216\r\n', 'Vill: Kalibari, PO:PS:Dist: Sirajgonj\r\n', '1725321053', '19978827812000098', '0', '', '1221.jpg', '0'),
(41, 'Md. Abul Bashar', 1257, '01723861594', 1, 'PHP-01', 'Aug-Dec,16', 'Sirajgonj Polytechnic Institute\r\n', 'Vill: Fulkocha, PO: Fulkucha, PS:Dist: Sirajgonj\r\n', '017295172655', '19968817816000119', '0', '', '1257.jpg', '0'),
(42, 'Md. Rokibul Islam', 1255, '01738091883', 1, 'PHP-01', 'Aug-Dec,16', 'Sirajgonj Polytechnic Institute\r\n', 'Vill: Chorchongacha, PO: Chorchongacha, PS:Dist: Sirajgonj\r\n', '01747118872', '19958817894100495', '', '', '1255.jpg', '0'),
(44, 'Shumoya Yesmin', 1264, '01723770241', 1, 'PHP-01', 'Aug-Dec,16', 'Sirajgonj Polytechnic Institute\r\n', 'Vill: Chilgacha, PO: Kuralia, PO:Dist: Sirajgonj\r\n', '01773113333', '19958817860000388', '0', '', '1264.jpg', '0'),
(45, 'Most. Rukaiya Yasmin', 1231, '01677540230', 1, 'PHP-01', 'Aug-Dec,16', 'Sirajgonj Polytechnic Institute\r\n', 'Vill: Baghabari, PO: Bagabari, PS: Shahajadpur, Dist: Sirajgonj\r\n', '1822851090', '19978816780000193', '0', '', '1231.jpg', '0'),
(46, 'Md. Ruhul Amin', 1232, '01783462726', 1, 'PHP-01', 'Aug-Dec,16', 'Sirajgonj Polytechnic Institute\r\n', 'Vill: Dakatiabari, PO: Shahangacha, PS: Dist: Sirajgonj\r\n', '1738215949', '20078817894004149', '', '', '1232.jpg', '0'),
(47, 'Kakon Akter Mukti', 1180, '01743219502', 1, 'PHP-02', 'Aug-Dec,16', 'National Polytechnic Institute, Manikgonj\r\n', 'Vill: PO:PS: Giour, Dist : Manikgonj\r\n', '01755860099', '19955632247102518', '', '', '1180.jpg', '0'),
(48, 'Md. Shajon Islam', 1253, '01677144368', 1, 'PHP-01', 'Aug-Dec,16', 'Sirajgonj Polytechnic Institute\r\n', 'Vill: Janpur, PO:PS:Dist: Sirajgong\r\n', '01625402423', '19978827808000099', '0', '', '1253.jpg', '0'),
(49, 'Md. Jahidul Islam', 1254, '01774439535', 1, 'PHP-01', 'Aug-Dec,16', 'Sirajgonj Polytechnic Institute\r\n', 'Vill:Chorpanagari, PO: Nichitopur, PS: Kazipur, Dist: Sirajgonj\r\n', '1724060595', '19978815069000319', '0', '', '1254.jpg', '0'),
(50, 'Md. Shabuj Hossain', 1184, '01682553369', 4, 'CCNA-01', 'Aug-Dec,16', 'National Polytechnic Institute, Manikgonj\r\n', 'Vill: Panaijuri, Po: PS: Saturia, Dist: Manikgonj\r\n', '01957679847', '19975617085023253', '', '', '1184.jpg', '0'),
(51, 'Mst.Kamrun Nahar', 1227, '01743408212', 1, 'PHP-01', 'Aug-Dec,16', 'Sirajgonj Polytechnic Institute\r\n', 'Vill: Pirpur, PO: Vowdanga, PS: Pabna, Dist: Pabna\r\n', '1782998496', '19986715517032440', '', '', '1227.jpg', '0'),
(52, 'Golam Rabbi', 1225, '01710257227', 1, 'PHP-01', 'Aug-Dec,16', 'Sirajgonj Polytechnic Institute\r\n', 'Vill: Shimabari, PO: Chandaikona, PS: Sherpur, Dist: Bogura\r\n', '1713739897', '19961018885000112', '0', '', '1225.jpg', '0'),
(53, 'Most.Mina Khatun', 1263, '01779763818', 1, 'PHP-01', 'Aug-Dec,16', 'Sirajgonj Polytechnic Institute\r\n', 'Vill: Khordoboira, PO: Vennabari, PS: Dist: Sirajgonj\r\n', '01723847145', '2006887860013199', '', '', '1263.jpg', '0'),
(54, 'Md. Rakibul Islam', 1194, '01752804113', 4, 'CCNA-01', 'Aug-Dec,16', 'National Polytechnic Institute, Manikgonj\r\n', 'Vill: Muljan, PO: PS:Dist: Manikgonj\r\n', '01729134674', '19955646230010081', '', '', '', '0'),
(55, 'Md. Amdadul Hoque', 1259, '01740929512', 1, 'PHP-01', 'Aug-Dec,16', 'Sirajgonj Polytechnic Institute\r\n', 'Vill: Alokdia, PO: Bohuli, PS:Dist: Sirajgonj\r\n', '01714526465', '19968817816000119', '0', '', '1259.jpg', '0'),
(56, 'Md. Kawsar Ali', 1277, '01725673511', 6, 'C#-02', 'Aug-Dec,16', '282/A, Ahmadnagr,Pikepara,Mirpur-1,Dhaka-1216\r\n', 'Vill: Junpur, PO: Gurka, PS; Raigonj, Dist: Sirajgong\r\n', '01937845199', '19968816138037399', '0', '', '1277.jpg', '0'),
(57, 'Tanvir Ahmed', 1207, '01784721809', 6, 'C#-03', 'Aug-Dec,16', 'Nobinagar , Savar, Dhaka\r\n', 'Vill: Shimulia, PO: Chorpundi, PS:Dist: Kishorgonj\r\n', '01784721809', '19964814994105317', '', '', '1207.jpg', '0'),
(58, 'Md. Shohan Ahmed', 1185, '01836889146', 4, 'CCNA-02', 'Aug-Dec,16', 'National Polytechnic Institute, Manikgonj\r\n', 'Vill: Jagir, PO: Jagir, PS:Dist: Manikgonj\r\n', '1716785718', '19975614655106884', '', '', '1185.jpg', '0'),
(59, 'Anwar Hossain', 1198, '01758180336', 4, 'CCNA-02', 'Aug-Dec,16', 'Kustia Polytechnic Institute\r\n', 'Vill: Devahata, PO: Devahata, PS: Devahata, DistL Satkhira\r\n', '01910305817', '2007872515020329', '', '', '1198.jpg', '0'),
(60, 'Mohammad Shamim', 1190, '01738960645', 4, 'CCNA-01', 'Aug-Dec,16', 'National Polytechnic Institute, Manikgonj\r\n', 'Vill: Purbo Mokimpur, PO: Krisnopur, PS: Dist: Manikgonj\r\n', '01729495308', '19945614671000137', '0', '', '1190.jpg', '0'),
(61, 'Md. Nazmus Sakib', 1200, '01739681997', 4, 'CCNA-02', 'Aug-Dec,16', 'Kustia Polytechnic Institute\r\n', 'Vill: Ziarkol, PO: Tomaltola, PS: Bagatipara, Dist: Nator\r\n', '1745842644', '19966910919000034', '', '', '1200.jpg', '0'),
(62, 'Prottoy Kumer Biswas', 1199, '01754633898', 4, 'CCNA-02', 'Aug-Dec,16', 'Kustia Polytechnic Institute\r\n', 'Vill: Chitholia, PO: Poradaho, PS: Mirpur, Dist: Kustia\r\n', '01723202507', '19975099480011763', '', '', '1199.jpg', '0'),
(63, 'Md.Monir Hossain', 1186, '01753695464', 4, 'CCNA-01', 'Aug-Dec,16', 'National Polytechnic Institute, Manikgonj\r\n', 'Vill: Kedarpur, PO: Ponbayzura, PS: Nagarpur, Dist: Tangail\r\n', '1768708584', '19979317658102146', '', '', '1186.jpg', '0'),
(64, 'Md. Nahidul Islam', 1191, '01778959066', 4, 'CCNA-01', 'Aug-Dec,16', 'National Polytechnic Institute, Manikgonj\r\n', 'Vill: Rampur, PO: Burichong, PS:Burichong, Dist: Cumilla \r\n', '01715114674', '19962621408000290', '', '', '1191.jpg', '0'),
(65, 'Md. Monsur Ali', 1187, '01716382350', 4, 'CCNA-01', 'Aug-Dec,16', 'National Polytechnic Institute, Manikgonj\r\n', 'Vill: Vorra, PO: Noyabari, PS: Doulotpur, Dist: Manikgonj\r\n', '1757775482', '19975611085100325', '', '', '1187.jpg', '0'),
(66, 'Sabbir Hossain', 1197, '01746208167', 4, 'CCNA-01', 'Aug-Dec,16', 'National Polytechnic Institute, Manikgonj\r\n', 'Vill: Maluchi, Po: Maluchi, PS: Horirampur, Dist: Manikgonj\r\n', '1727550693', '19975612873000318', '', '', '1197.jpg', '0'),
(67, 'Md. Showkhin Khan', 1196, '01785720012', 4, 'CCNA-01', 'Aug-Dec,16', 'National Polytechnic Institute, Manikgonj\r\n', 'Vill: PO: Islampur, Ps:Babugonj, Dist: Borishal\r\n', '01718660170', '19972624008103046', '', '', '1196.jpg', '0'),
(68, 'Md. Nayeem', 1183, '01927229180', 4, 'CCNA-01', 'Aug-Dec,16', 'National Polytechnic Institute, Manikgonj\r\n', 'Vill: Chorbailjuri, PO: Giour, PS: Giour, Dist: Manikgonj\r\n', '1920438518', '1995561227100195', '', '', '1183.jpg', '0'),
(69, 'Aleya Akter', 1182, '01776187160', 1, 'PHP-02', 'Aug-Dec,16', 'National Polytechnic Institute, Manikgonj\r\n', 'Vill: Nirali, PO: Borohatkura, PS: Doulotpur, Dist: Manikgonj\r\n', '01753270201', '19965611057019215', '', '', '1182.jpg', '0'),
(70, 'Md. Rasel Rana', 1193, '01866313901', 1, 'PHP-02', 'Aug-Dec,16', 'National Polytechnic Institute, Manikgonj\r\n', 'Vill: Abudanga, PO:PS: Doulotpur, Dist: Manikgonj\r\n', '01934924778', '19955612271000195', '0', '', '', '0'),
(71, 'Anzan kanti saha', 1189, '01736339892', 4, 'CCNA-01', 'Aug-Dec,16', 'National Polytechnic Institute, Manikgonj\r\n', 'Vill: Dhullapurbonagar, PO:PS: Satulia, Dist: Manaikgonj\r\n', '01713508528', '19915617085000060', '0', '', '1189.jpg', '0'),
(72, 'Golam Robbani Samim', 1195, '01746707133', 4, 'CCNA-01', 'Aug-Dec,16', 'National Polytechnic Institute, Manikgonj\r\n', 'Vill: Golrachorkhondo, PO: Jagir, PS:Dist: Manikgonj\r\n', '1725058692', '19945614655103571', '', '', '1195.jpg', '0'),
(73, 'Md. Raju Ahmed', 1192, '01825577072', 4, 'CCNA-01', 'Aug-Dec,16', 'National Polytechnic Institute, Manikgonj\r\n', 'Vill: Gorakul, PO: Jagir, PS:Dist: Manikgonj\r\n', '01822728359', '19975614655000110', '0', '', '1192.jpg', '0'),
(74, 'Mitu Aktar', 1179, '01738059369', 1, 'PHP-02', 'Aug-Dec,16', 'National Polytechnic Institute, Manikgonj\r\n', 'Vill:Golapnagar, PO: PS: Giour, Dist: Manikgonj\r\n', '1758720069', '1995561227108884', '', '', '1179.jpg', '0'),
(75, 'Anamul Hoque Sohel', 1265, '01957232671', 4, 'CCNA-01', 'Aug-Dec,16', '108/3, Suth badda, Dhaka-1212\r\n', 'Vill: Biddakut, PO: Biddakut, PS: Nobinagar, Dist: B.Baria\r\n', '1829364512', '0', '0', 'A+', '1265.jpg', ''),
(76, 'Md. Shozib', 1266, '1944550250', 3, 'GD-01', 'Aug-Dec,16', 'Abdullabagh, North Badda, Dhaka-1212\r\n', 'Vill: Shibpur, Rajbari,PO: Gobindogonj, PS: Gobindhogonj, Dist: Gaibandha\r\n', '01933883057', '19952619021037464', '', 'A+', '1266.jpg', ''),
(77, 'Toma Mondal', 1271, '01743702150', 3, 'GD-01', 'Aug-Dec,16', 'Model Polytechnic institute, Jessore', 'Vill: Depkhali, PO:PS: Bagharpara, Dist: Jessore ', '01732031907', '19964130947028150', '', '', '1271.jpg', ''),
(78, 'Bijoya Rani Majumder', 1300, '01789346066', 4, 'CCNA-03', 'Aug-Dec,16', 'Shaymoli Ideal Engineering College, Laxmipur.', 'Vill:Uttar Tumchar, Po:Laxmipur, Ps:Laxmipur, Dist:Laxmipur.', '01789346066', '19945114385000080', '', '', '', ''),
(79, 'Md. Sabbir Ahmed', 1206, '01789346066', 4, 'CCNA-03', 'Aug-Dec,16', 'South Bishil, Mirpur-1, Dhaka, Bangladesh.', 'Vill:Hasandi, Po:Hasandi, Ps:Laxmipur, Dist:Laxmipur.', '01704286164', '19945114375000211', '', '', '', ''),
(80, 'Md. Monsur Alam', 1299, '01821746977', 4, 'CCNA-03', 'Aug-Dec,16', 'Universal Polytechnic Institute, Dhaka.', 'Vill:Kashimpur, Po:Bottoli Bazar, Ps:Nulgolcot, Dist:Comilla.', '01720454644', '19951918751017313', '', '', '1299.jpg', ''),
(81, 'Md. Fahad Hossen', 1298, '01688522771', 4, 'CCNA-03', 'Aug-Dec,16', 'Universal Polytechnic Institute, Dhaka.', 'Po:Khilgaon, ps:Khilgaon, Dist:Dhaka.', '01682696038', '', '', '', '1298.jpg', ''),
(83, 'Md. Al- Hossain', 92, '01729460423', 7, '08', 'Aug-Dec,16', '57/11, Tejgong Nakhal Para, Dhaka\r\n', 'Vill: South Dhrandi, PO: Dharandi, PS: Patuakhali. Dist: Patuakhali\r\n', '01718680291', '19997819540000030', '', '', '92.jpg', ''),
(84, 'Md. Shadad Hossain', 93, '01758675340', 7, '08', 'Aug-Dec,16', '357/2,Ahamdnogor, Pikepara, Mirpur-1, Dhaka-1216\r\n', 'Vill: South Lamichari, PO: Chorbaria, PS: Borisal Sadar, Dist: Barisal\r\n', '01732542988', '19970615134100866', '', 'B+', '93.jpg', ''),
(85, 'Md: Firoz Hossain ', 94, '1931379359', 7, '08', 'Aug-Dec,16', '357/2,Ahamdnogor, Pikepara, Mirpur-1, Dhaka-1216\r\n', 'Vill: Mukundo, Po:Amirgong, Ps: Kwunia, Dist: Barisal\r\n', '01767198891', '19963635186007243', '', 'A+', '94.jpg', ''),
(86, 'Tanvir Mahmud Niloy', 95, '01777898555', 7, '08', 'Aug-Dec,16', '357/2,Ahamdnogor, Pikepara, Mirpur-1, Dhaka-1216\r\n', 'Vill:Kholna, Po:Morakathi, Ps:Wazirpur, Dist:Barisal\r\n', '01715743821', '19960619410014265', '', '', '95.jpg', ''),
(87, 'Md. Rakibul Hasan ', 96, '01940381078', 7, '08', 'Aug-Dec,16', '507/1,West Kazipara,Mirpur-10,Dhaka.\r\n', 'Vill: Pochim Satla, Post: Satla, PS: Ujirpur, Disr: Barisal-8242\r\n', '01923920044', '19960619473003188', '', '', '96.jpg', ''),
(88, 'Ripon Dutta ', 97, '01766435510', 7, '08', 'Aug-Dec,16', 'GA-3/1, Eid-gonj Mirpur Rood, Sahajadpur Dhaka, 1212\r\n', 'Vill:Nilgonj, Po: Garunia, Ps: Bakengonj, Dist:Barisal\r\n', '01781831605', '19960610754018654', '', 'O+', '', ''),
(89, 'Nayan Roy', 98, '01729545704', 7, '08', 'Aug-Dec,16', '357/2,Ahamdnogor, Pikepara, Mirpur-1, Dhaka-1216\r\n', 'Vill:Baoualia , Po: Aower, Ps: banari para, Dist: Barisal\r\n', '01729545704', '0199506110736001', '', 'O+', '98.jpg', ''),
(90, 'Md. Jahirul Islam Labu', 99, '01706460105', 7, '08', 'Aug-Dec,16', '247 South Golan, Khilgong  Dhaka-1219\r\n', 'Vill: lokkhipasha, Post : Dudolmo, PS :Bakergonj, Dist: Barisal\r\n', '01716424840', '199606107123644', '', '', '99.jpg', ''),
(91, 'Sohanur Rahman Sohan', 101, '01739453685', 7, '08', 'Aug-Dec,16', '239/1 North Kafrul,Dhaka Kantonment, Dhaka-1206\r\n', 'Vill: Lokkhipur, PO: Lokkhipur,PS: Muladi, Dist: Barisal \r\n', '01732211601', '199506166959000132', '', 'B+', '101.jpg', ''),
(92, 'Md. Abdul Kaium Khan', 102, '01775346667', 7, '08', 'Aug-Dec,16', '357/2,Ahamdnogor, Pikepara, Mirpur-1, Dhaka-1216\r\n', 'Vill: Dotshor, PO: Sholok,PS: Uzzirpur,Dist: Barisal\r\n', '01715913317', '19970619494030086', '', 'B+', '102.jpg', ''),
(93, 'Hriday Roy', 103, '01716707241', 7, '08', 'Aug-Dec,16', '1174 Nurerchala, Po:Golshan, Ps:Vatara\r\n', 'Vill: Chakhar, Po: Chakhar, Ps: Banaripara Dist: Barisal\r\n', '01798327185', '1997063104201939', '', 'B+', '103.jpg', ''),
(94, 'Md: Jewel Hossen', 104, '01715327469', 7, '08', 'Aug-Dec,16', '20/2 Molika, Mirpur-07\r\n', 'Vill:Boraya , Po: Palot, Ps :Rajapur, Dist: Jalokhati\r\n', '01715326182', '19964218413001237', '', 'AB+', '104.jpg', ''),
(95, 'Amit Biswas ', 105, '01686175017', 7, '08', 'Aug-Dec,16', '9/1 Rayer Bazar,Sorkari Koloni,Dhanmondi, Dhaka-1209\r\n', 'Vill : Char Cawya,PS: Barisal Sadar, Bangladesh\r\n', '01926030947', '19970695119000445', '', 'AB+', '105.jpg', ''),
(96, 'Md: Sahin Hossain ', 106, '01720372316', 7, '08', 'Aug-Dec,16', '20/2 Molika, Mirpur-07\r\n', 'Vill:Boraya , Po: Palot, Ps :Rajapur, Dist: Jalokhati\r\n', '01715327469', '19954218413000141', '', 'A+', '106.jpg', ''),
(97, 'Md: Mahamudul Hassan ', 107, '01742212517', 7, '08', 'Aug-Dec,16', '357/2,Ahamdnogor, Pikepara, Mirpur-1, Dhaka-1216\r\n', 'Vill :Jalirchor, Po: Langotia, Ps: Mahendigong, Dist: Barisal\r\n', '01745620126', '19960616255000180', '', 'O+', '107.jpg', ''),
(98, 'Md: Monzur Alom', 108, '01711928777', 7, '08', 'Aug-Dec,16', 'Jatrabare, Mirhajer bag, Dhaka\r\n', 'Vill:Wazirpur, Po: Bauphal, Ps: Bauphal, Dist: Patuakahli\r\n', '01714758961', '19967813889022805', '', 'A+', '108.jpg', ''),
(99, 'Md. Imtiuz Hossain ', 109, '01719441079', 7, '08', 'Aug-Dec,16', '10/4,Block-C,Mirpur-10,Dhaka\r\n', 'Isakhathi, Kashipur, Barisal.\r\n', '01735903653', '19970695129000609', '', '', '109.jpg', ''),
(100, 'Md: Raju Mir', 110, '01916657690', 7, '08', 'Aug-Dec,16', '20/2 Molika, Mirpur-07\r\n', 'Vill:Boroya, Po:Nijaseya \r\n', '01712981171', '19964218413000048', '', 'A+', '110.jpg', ''),
(101, 'Md. Roju Molla', 111, '01924456196', 7, '08', 'Aug-Dec,16', '357/2,Ahamdnogor, Pikepara, Mirpur-1, Dhaka-1216\r\n', 'Vill:west Mayj para, Po: Birmohon,Ps: Dashar, Dist: Madaripur  \r\n', '01912830421', '19975414063000019', '', '', '111.jpg', ''),
(102, 'Limon Hossain Khan', 112, '01688248231', 7, '08', 'Aug-Dec,16', '67/12,Merul Badda,Dhaka\r\n', 'Vill: Mohdipur, PO; Mohdipur,PS: Jhalkhati, Dist: Jhaikhati,\r\n', '01731063614', '19964214085901508', '', '', '112.jpg', ''),
(103, 'Md: Rasel Kholifa ', 113, '01917784237', 7, '08', 'Aug-Dec,16', '9/1 Shah Ali baug , Mirpur-01 Dhaka , 1216\r\n', 'Vill: Mirjapur, Po: Shakher hat, Ps: Jalokhati, Dist:Jalokhati\r\n', '01980989762', '1996421495300031', '', 'O+', '113.jpg', ''),
(104, 'Md. Raihan Parvez', 114, '01717995287', 7, '08', 'Aug-Dec,16', 'Dokknin Besil, Mirpur-1,Dhaka-1216\r\n', 'Vill: Kandropur, PO: Boranga,PS: Kashdapur,Dist: Jessore.\r\n', '01715681497', '1995411384722316', '', '', '114.jpg', ''),
(105, 'Pronoy Das', 115, '01740876717', 7, '08', 'Aug-Dec,16', 'Mohammadpur-1207\r\n', 'Vill:Gosharhat, Po: Gosharhat, PS: Sariatpur, Dist: Sariatpur.\r\n', '01736399590', '19968613635000088', '', '', '115.jpg', ''),
(106, 'Rume Nahid', 1272, '01765673117', 1, 'PHP-04', 'Aug-Dec,16', 'Model Polytechnic Institute Jessore', 'Vill: Nowda, PO: Nowda, PS:Dist: Jessore', '01788558365', '19974114789064382', '', '', '1272.jpg', ''),
(107, 'Uzzal Ahmmed', 1204, '01722589099', 4, 'CCNA-02', 'Aug-Dec,16', 'Kustia Polytecni Institute', 'Vill: Dubil, PO:PS: Mirpur, Dist: Kustia ', '01935262562', '19975019450000557', '', '', '1204.jpg', ''),
(108, 'Md. Zakariya khan', 1278, '01774021742', 1, 'PHP-04', 'Aug-Dec,16', 'Sirajgonj Polytechnic Institute ', 'Vill: B.Baria, PO: Brommogacha, PS: Raigong, Dist: Sirajgong', '01744574647', '19968816113000392', '', '', '1278.jpg', '');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
