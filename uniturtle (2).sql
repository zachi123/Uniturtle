-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 17, 2018 at 03:04 PM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.6.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `uniturtle`
--

-- --------------------------------------------------------

--
-- Table structure for table `audit`
--

CREATE TABLE `audit` (
  `actionID` int(11) NOT NULL,
  `userID` int(11) NOT NULL,
  `actionDate` datetime NOT NULL,
  `actionDoneBy` varchar(50) NOT NULL,
  `action` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `audit`
--

INSERT INTO `audit` (`actionID`, `userID`, `actionDate`, `actionDoneBy`, `action`) VALUES
(1, 1, '2018-12-04 11:13:39', 'Testuser Testuser', 'Logged out successfully with details : 1 , Testuser, Testuser, admin@mail.com , admin'),
(2, 1, '2018-12-04 11:16:10', 'Testuser Testuser', 'Logged in successfully with details : 1 , Testuser, Testuser, admin@mail.com , admin'),
(3, 1, '2018-12-04 11:18:39', 'Testuser Testuser', 'Logged out successfully with details : 1 , Testuser, Testuser, admin@mail.com , admin'),
(4, 1, '2018-12-04 11:19:40', 'Testuser Testuser', 'Logged in successfully with details : 1 , Testuser, Testuser, admin@mail.com , admin'),
(5, 3, '2018-12-04 11:22:39', 'Daniel Chabala', 'Logged in successfully with details : 3 , Daniel, Chabala, chabala@probasegroup.com   , user'),
(6, 3, '2018-12-04 11:23:20', 'Daniel Chabala', 'Logged out successfully with details : 3 , Daniel, Chabala, chabala@probasegroup.com   , user'),
(7, 3, '2018-12-04 11:23:35', 'Daniel Chabala', 'Logged in successfully with details : 3 , Daniel, Chabala, chabala@probasegroup.com   , user'),
(8, 3, '2018-12-04 11:32:44', 'Daniel Chabala', 'Created a new Agent account on the system with details : Chabala Daniel , danc,0003,260965705357,chiza@probasegroup.com,Pending,8cZupP'),
(9, 1, '2018-12-04 11:33:48', 'Testuser Testuser', 'Logged out successfully with details : 1 , Testuser, Testuser, admin@mail.com , admin'),
(10, 1, '2018-12-04 11:34:02', 'Testuser Testuser', 'Logged in successfully with details : 1 , Testuser, Testuser, admin@mail.com , admin'),
(11, 1, '2018-12-04 11:34:51', 'Testuser Testuser', 'Loaeded value for the Agent with details TerminalID: 0003 , AgentID : 10, Amounts :K200, Date :04-12-18 : 11:34:43, ReceiptNumber :R'),
(12, 3, '2018-12-05 10:17:23', 'Daniel Chabala', 'Logged out successfully with details : 3 , Daniel, Chabala, chabala@probasegroup.com   , user'),
(13, 1, '2018-12-05 10:17:31', 'Testuser Testuser', 'Logged in successfully with details : 1 , Testuser, Testuser, admin@mail.com , admin'),
(14, 1, '2018-12-05 10:49:26', 'Testuser Testuser', 'Logged out successfully with details : 1 , Testuser, Testuser, admin@mail.com , admin'),
(15, 3, '2018-12-05 11:49:32', 'chabalad', 'Password was reset successfully for email : chabala@probasegroup.com    and mobile : 260965705357 , New Password : BYgoJm'),
(16, 3, '2018-12-05 12:01:01', 'chabalad', 'Password was reset successfully for email : chabala@probasegroup.com    and mobile : 260965705357 , New Password : LBiHAg'),
(17, 3, '2018-12-05 12:02:52', 'chabalad', 'Password was reset successfully for email : chabala@probasegroup.com    and mobile : 260965705357 , New Password : OiFeDA'),
(18, 3, '2018-12-05 12:03:17', 'chabalad', 'Password was reset successfully for email : chabala@probasegroup.com    and mobile : 260965705357 , New Password : 1kFO6r'),
(19, 3, '2018-12-05 12:21:53', 'chabalad', 'Password was reset successfully for email : chabala@probasegroup.com    and mobile : 260965705357 , New Password : eVjowL'),
(20, 3, '2018-12-05 12:22:41', 'chabalad', 'Password was reset successfully for email : chabala@probasegroup.com    and mobile : 260965705357 , New Password : nS4M9c'),
(21, 2, '2018-12-05 12:33:02', 'user', 'Password was reset successfully for email : test@mail.com  and mobile : 260974894716 , New Password : twkhON');

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

CREATE TABLE `clients` (
  `clientID` int(11) NOT NULL,
  `clientName` varchar(50) NOT NULL,
  `mobile` varchar(12) NOT NULL,
  `NRC` varchar(15) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `dateOfbirth` date NOT NULL,
  `cover` varchar(20) NOT NULL,
  `policyNumber` varchar(21) NOT NULL,
  `primiumType` varchar(100) NOT NULL,
  `totalContribution` int(11) NOT NULL,
  `verificationStatus` varchar(60) NOT NULL,
  `month` varchar(3) NOT NULL,
  `year` varchar(4) NOT NULL,
  `status` varchar(10) NOT NULL,
  `profileReason` varchar(500) NOT NULL,
  `patch` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `clients`
--

INSERT INTO `clients` (`clientID`, `clientName`, `mobile`, `NRC`, `gender`, `dateOfbirth`, `cover`, `policyNumber`, `primiumType`, `totalContribution`, `verificationStatus`, `month`, `year`, `status`, `profileReason`, `patch`) VALUES
(1, 'Chiza Mhlanga Tembo', '260965705357', '111111112', 'Male', '2018-12-04', '10000', '002', '002', 0, '', '12', '2018', 'Active', 'fghthths5', 'O'),
(2, 'Leo Mbasela', '260965705357', '222222222', 'Female', '2018-12-18', '2500', '001', '006', 0, '', '12', '2018', 'Active', 'stun66', 'O'),
(3, 'Daniel Kalaluka', '260965705357', '666666644', 'Male', '2018-12-20', '20000', '003', '005', 0, '', '12', '2018', 'Active', 'QSq', 'O'),
(4, 'Tackson Mulela', '260965705357', '888888888', 'Female', '2018-12-26', '10000', '006', '006', 0, '', '12', '2018', 'Active', 'yg tf', 'O');

-- --------------------------------------------------------

--
-- Table structure for table `client_verification`
--

CREATE TABLE `client_verification` (
  `id` int(11) NOT NULL,
  `code` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `client_verification`
--

INSERT INTO `client_verification` (`id`, `code`) VALUES
(9, '4-8105'),
(10, '0-7199'),
(11, '1-1504'),
(12, '3-5429'),
(13, '4-6365'),
(14, '5-3067'),
(15, '8-6860');

-- --------------------------------------------------------

--
-- Table structure for table `logs`
--

CREATE TABLE `logs` (
  `id` int(11) NOT NULL,
  `request` text NOT NULL,
  `response` text NOT NULL,
  `datetime` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `logs`
--

INSERT INTO `logs` (`id`, `request`, `response`, `datetime`) VALUES
(64, '{"header":{"terminalID":"T3","billTotal":"14.5","service":"createinvoice"},"payload":{"merchant_name":"zmphanza","bill_items":[{"name":"soup","price":10,"quantity":1,"totalAmount":10},{"name":"bread","price":4.5,"quantity":1,"totalAmount":4.5}]}}', '{"message":"transaction processed successfully","status":"success","statusCode":"200","payload":[{"InvoiceNo":"24","amount":0,"merchant":"zmphanza","name":"soup","quantity":1,"unitPrice":10,"transactionType":"misc","transactionRef":"UT-5522135","transactionDate":"2018-07-06 03:21:52pm"},{"InvoiceNo":"25","amount":0,"merchant":"zmphanza","name":"bread","quantity":1,"unitPrice":4.5,"transactionType":"misc","transactionRef":"UT-5522135","transactionDate":"2018-07-06 03:21:52pm"}]}', '2018-07-06 03:21:52'),
(65, '{\r\n	"header":{\r\n		"terminalID":"T3",\r\n		"service":"createinvoice",\r\n		"billTotal": "58"\r\n	},\r\n	"payload":{\r\n		"merchant_name":"",\r\n		\r\n		"bill_items":[\r\n			{\r\n				"name":"salt",\r\n				"price":14,\r\n				"quantity":2,\r\n				"total_amount":28\r\n			},\r\n			{\r\n				"name":"pepper",\r\n				"price":15,\r\n				"quantity":2,\r\n				"total_amount":30\r\n			}\r\n		]\r\n		\r\n	}\r\n}\r\n', '{"message":"transaction processed successfully","status":"success","statusCode":"200","payload":[{"InvoiceNo":"26","amount":28,"merchant":"","name":"salt","quantity":2,"unitPrice":14,"transactionType":"misc","transactionRef":"UT-76463849","transactionDate":"2018-07-06 03:27:34pm"},{"InvoiceNo":"27","amount":30,"merchant":"","name":"pepper","quantity":2,"unitPrice":15,"transactionType":"misc","transactionRef":"UT-76463849","transactionDate":"2018-07-06 03:27:34pm"}]}', '2018-07-06 03:27:34'),
(66, '{"header":{"terminalID":"T3","billTotal":"11.0","service":"createinvoice"},"payload":{"merchant_name":"zmphanza","bill_items":[{"name":"pie","price":4,"quantity":2,"totalAmount":8},{"name":"fries","price":1,"quantity":3,"totalAmount":3}]}}', '{"message":"transaction failed","status":"failed","reason":"Possible Insufficent Funds"}', '2018-07-06 03:31:42'),
(67, '{"header":{"terminalID":"T3","billTotal":"0.44","service":"createinvoice"},"payload":{"merchant_name":"zmphanza","bill_items":[{"name":"tea","price":0.14,"quantity":1,"totalAmount":0.14},{"name":"rice","price":0.15,"quantity":2,"totalAmount":0.3}]}}', '{"message":"transaction failed","status":"failed","reason":"Possible Insufficent Funds"}', '2018-07-06 03:34:28'),
(68, '{"header":{"terminalID":"T3","billTotal":"0.28","service":"createinvoice"},"payload":{"merchant_name":"zmphanza","bill_items":[{"name":"tea","price":0.14,"quantity":1,"totalAmount":0.14},{"name":"spoon","price":0.14,"quantity":1,"totalAmount":0.14}]}}', '{"message":"transaction processed successfully","status":"success","statusCode":"200","payload":[{"InvoiceNo":"28","amount":0,"merchant":"zmphanza","name":"tea","quantity":1,"unitPrice":0.14,"transactionType":"misc","transactionRef":"UT-75356813","transactionDate":"2018-07-06 03:35:31pm"},{"InvoiceNo":"29","amount":0,"merchant":"zmphanza","name":"spoon","quantity":1,"unitPrice":0.14,"transactionType":"misc","transactionRef":"UT-75356813","transactionDate":"2018-07-06 03:35:31pm"}]}', '2018-07-06 03:35:31'),
(69, '{"header":{"terminalID":"T3","billTotal":"1.28","service":"createinvoice"},"payload":{"merchant_name":"zmphanza","bill_items":[{"name":"tea","price":0.14,"quantity":1,"totalAmount":0.14},{"name":"spoon","price":0.14,"quantity":1,"totalAmount":0.14},{"name":"twi","price":1,"quantity":1,"totalAmount":1}]}}', '{"message":"transaction failed","status":"failed","reason":"Possible Insufficent Funds"}', '2018-07-06 03:37:23'),
(70, '{"header":{"terminalID":"T3","billTotal":"1.28","service":"createinvoice"},"payload":{"merchant_name":"zmphanza","bill_items":[{"name":"tea","price":0.14,"quantity":1,"totalAmount":0.14},{"name":"spoon","price":0.14,"quantity":1,"totalAmount":0.14},{"name":"twi","price":1,"quantity":1,"totalAmount":1}]}}', '{"message":"transaction processed successfully","status":"success","statusCode":"200","payload":[{"InvoiceNo":"30","amount":0.14,"merchant":"zmphanza","name":"tea","quantity":1,"unitPrice":0.14,"transactionType":"misc","transactionRef":"UT-19914889","transactionDate":"2018-07-06 03:38:07pm"},{"InvoiceNo":"31","amount":0.14,"merchant":"zmphanza","name":"spoon","quantity":1,"unitPrice":0.14,"transactionType":"misc","transactionRef":"UT-19914889","transactionDate":"2018-07-06 03:38:07pm"},{"InvoiceNo":"32","amount":1,"merchant":"zmphanza","name":"twi","quantity":1,"unitPrice":1,"transactionType":"misc","transactionRef":"UT-19914889","transactionDate":"2018-07-06 03:38:07pm"}]}', '2018-07-06 03:38:07'),
(71, '{"header":{"terminalID":"T3","billTotal":"26.0","service":"createinvoice"},"payload":{"merchant_name":"zmphanza","bill_items":[{"name":"Spice","price":14,"quantity":1,"totalAmount":14},{"name":"Spinach ","price":2,"quantity":6,"totalAmount":12}]}}', '{"message":"transaction processed successfully","status":"success","statusCode":"200","payload":[{"InvoiceNo":"33","amount":14,"merchant":"zmphanza","name":"Spice","quantity":1,"unitPrice":14,"transactionType":"misc","transactionRef":"UT-41759804","transactionDate":"2018-07-06 03:42:10pm"},{"InvoiceNo":"34","amount":12,"merchant":"zmphanza","name":"Spinach ","quantity":6,"unitPrice":2,"transactionType":"misc","transactionRef":"UT-41759804","transactionDate":"2018-07-06 03:42:10pm"}]}', '2018-07-06 03:42:10'),
(72, '{"header":{"terminalID":"T3","billTotal":"0.0","service":"createinvoice"},"payload":{"merchant_name":"zmphanza","bill_items":[]}}', '{"message":"transaction processed successfully","status":"success","statusCode":"200","payload":[]}', '2018-07-06 03:45:14'),
(73, '{"header":{"terminalID":"T3","billTotal":"0.0","service":"createinvoice"},"payload":{"merchant_name":"zmphanza","bill_items":[]}}', '{"message":"transaction processed successfully","status":"success","statusCode":"200","payload":[]}', '2018-07-06 03:46:03'),
(74, '{"header":{"terminalID":"T3","billTotal":"199.96","service":"createinvoice"},"payload":{"merchant_name":"zmphanza","bill_items":[{"name":"Cakes","price":29.98,"quantity":2,"totalAmount":59.96},{"name":"Eggs","price":5,"quantity":28,"totalAmount":140}]}}', '{"message":"transaction processed successfully","status":"success","statusCode":"200","payload":[{"InvoiceNo":"35","amount":59.96,"merchant":"zmphanza","name":"Cakes","quantity":2,"unitPrice":29.98,"transactionType":"misc","transactionRef":"UT-70447292","transactionDate":"2018-07-06 03:50:31pm"},{"InvoiceNo":"36","amount":140,"merchant":"zmphanza","name":"Eggs","quantity":28,"unitPrice":5,"transactionType":"misc","transactionRef":"UT-70447292","transactionDate":"2018-07-06 03:50:31pm"}]}', '2018-07-06 03:50:31'),
(75, '{"header":{"terminalID":"T3","billTotal":"0.0","service":"createinvoice"},"payload":{"merchant_name":"zmphanza","bill_items":[]}}', '{"message":"transaction processed successfully","status":"success","statusCode":"200","payload":[]}', '2018-07-06 03:50:57'),
(76, '{"header":{"terminalID":"T3","billTotal":"215.0","service":"createinvoice"},"payload":{"merchant_name":"zmphanza","bill_items":[{"name":"Food","price":25,"quantity":5,"totalAmount":125},{"name":"Transport ","price":18,"quantity":5,"totalAmount":90}]}}', '{"message":"transaction processed successfully","status":"success","statusCode":"200","payload":[{"InvoiceNo":"37","amount":125,"merchant":"zmphanza","name":"Food","quantity":5,"unitPrice":25,"transactionType":"misc","transactionRef":"UT-82397003","transactionDate":"2018-07-06 03:54:27pm"},{"InvoiceNo":"38","amount":90,"merchant":"zmphanza","name":"Transport ","quantity":5,"unitPrice":18,"transactionType":"misc","transactionRef":"UT-82397003","transactionDate":"2018-07-06 03:54:27pm"}]}', '2018-07-06 03:54:27'),
(77, '{\r\n	"header":{\r\n		"terminalID":"T3",\r\n		"service":"createinvoice",\r\n		"billTotal": "58"\r\n	},\r\n	"payload":{\r\n		"merchant_name":"",\r\n		\r\n		"bill_items":[\r\n			\r\n		]\r\n		\r\n	}\r\n}\r\n', '{"message":"transaction processed successfully","status":"success","statusCode":"200","payload":[]}', '2018-07-06 04:30:05'),
(78, '{\r\n	"header":{\r\n		"terminalID":"T3",\r\n		"service":"createinvoice",\r\n		"billTotal": "58"\r\n	},\r\n	"payload":{\r\n		"merchant_name":"",\r\n		\r\n		"bill_items":[\r\n			\r\n		]\r\n		\r\n	}\r\n}\r\n', '', '2018-07-06 04:31:34'),
(79, '{"header":{"terminalID":"T3","service":"createinvoice"},"payload":{"clientID":"2","policyOwner":"Test Client","policyType":"FUNERAL INSURANCE","mobile":"260950207061","amount":"30","merchantName":"zmphanza"}}', '{"message":"transaction processed successfully","status":"success","statusCode":"200","payload":{"InvoiceNo":"39","client":"Test Client","amount":"30","merchant":"zmphanza","transactionType":"premiums","transactionRef":"UT-50371426","transactionDate":"2018-07-07 04:56:01pm"}}', '2018-07-07 04:56:01'),
(80, '{"header":{"terminalID":"T3","service":"createinvoice"},"payload":{"clientID":"16","policyOwner":"Jack Phiri","policyType":"FUNERAL ","mobile":"260977674654","amount":"3.88","merchantName":"zmphanza"}}', '{"message":"transaction processed successfully","status":"success","statusCode":"200","payload":{"InvoiceNo":"40","client":"Jack Phiri","amount":"3.88","merchant":"zmphanza","transactionType":"premiums","transactionRef":"UT-29219960","transactionDate":"2018-07-08 10:47:38pm"}}', '2018-07-08 10:47:38'),
(81, '{"header":{"terminalID":"T3","billTotal":"90.0","service":"createinvoice"},"payload":{"merchant_name":"zmphanza","bill_items":[{"name":"X","price":14,"quantity":3,"totalAmount":42},{"name":"y","price":8,"quantity":6,"totalAmount":48}]}}', '{"message":"transaction processed successfully","status":"success","statusCode":"200","payload":[{"InvoiceNo":"41","amount":42,"merchant":"zmphanza","name":"X","quantity":3,"unitPrice":14,"transactionType":"misc","transactionRef":"UT-45695911","transactionDate":"2018-07-31 07:59:50am"},{"InvoiceNo":"42","amount":48,"merchant":"zmphanza","name":"y","quantity":6,"unitPrice":8,"transactionType":"misc","transactionRef":"UT-45695911","transactionDate":"2018-07-31 07:59:50am"}]}', '2018-07-31 07:59:50'),
(82, '{"header":{"terminalID":"T3","service":"createinvoice"},"payload":{"clientID":"2","policyOwner":"Test Client","policyType":"FUNERAL INSURANCE","mobile":"260950207061","amount":"328","merchantName":"zmphanza"}}', '{"message":"transaction processed successfully","status":"success","statusCode":"200","payload":{"InvoiceNo":"43","client":"Test Client","amount":"328","merchant":"zmphanza","transactionType":"premiums","transactionRef":"UT-69117371","transactionDate":"2018-08-01 08:00:44am"}}', '2018-08-01 08:00:44'),
(83, '{"header":{"terminalID":"T3","service":"createinvoice"},"payload":{"clientID":"2","policyOwner":"Test Client","policyType":"FUNERAL INSURANCE","mobile":"260950207061","amount":"50","merchantName":"zmphanza"}}', '{"message":"transaction processed successfully","status":"success","statusCode":"200","payload":{"InvoiceNo":"44","client":"Test Client","amount":"50","merchant":"zmphanza","transactionType":"premiums","transactionRef":"UT-80923319","transactionDate":"2018-08-01 11:59:50am"}}', '2018-08-01 11:59:50'),
(84, '{"header":{"terminalID":"T3","service":"createinvoice"},"payload":{"clientID":"20","policyOwner":"Zwelithini Mphanza","policyType":"Funeral","mobile":"260965376154","amount":"50","merchantName":"zmphanza"}}', '{"message":"transaction processed successfully","status":"success","statusCode":"200","payload":{"InvoiceNo":"45","client":"Zwelithini Mphanza","amount":"50","merchant":"zmphanza","transactionType":"premiums","transactionRef":"UT-95946325","transactionDate":"2018-08-02 12:55:08pm"}}', '2018-08-02 12:55:08'),
(85, '{"header":{"terminalID":"T3","service":"createinvoice"},"payload":{"clientID":"20","policyOwner":"Zwelithini Mphanza","policyType":"Funeral","mobile":"260965376154","amount":"20","merchantName":"zmphanza"}}', '{"message":"transaction processed successfully","status":"success","statusCode":"200","payload":{"InvoiceNo":"46","client":"Zwelithini Mphanza","amount":"20","merchant":"zmphanza","transactionType":"premiums","transactionRef":"UT-93872680","transactionDate":"2018-08-02 12:58:45pm"}}', '2018-08-02 12:58:45'),
(86, '{"header":{"terminalID":"T3","service":"createinvoice"},"payload":{"clientID":"20","policyOwner":"Zwelithini Mphanza","policyType":"Funeral","mobile":"260965376154","amount":"10","merchantName":"zmphanza"}}', '', '2018-08-02 01:03:03'),
(87, '{"header":{"terminalID":"T3","service":"createinvoice"},"payload":{"clientID":"20","policyOwner":"Zwelithini Mphanza","policyType":"Funeral","mobile":"260965376154","amount":"10","merchantName":"zmphanza"}}', '', '2018-08-02 01:03:41'),
(88, '{"header":{"terminalID":"T3","service":"createinvoice"},"payload":{"clientID":"20","policyOwner":"Zwelithini Mphanza","policyType":"Funeral","mobile":"260965376154","amount":"10","merchantName":"zmphanza"}}', '', '2018-08-02 01:05:47'),
(89, '{"header":{"terminalID":"T3","service":"createinvoice"},"payload":{"clientID":"21","policyOwner":"John Doe","policyType":"Funeral","mobile":"260950207061","amount":"20","merchantName":"zmphanza"}}', '', '2018-08-02 01:09:45'),
(90, '{"header":{"terminalID":"T3","service":"createinvoice"},"payload":{"clientID":"21","policyOwner":"John Doe","policyType":"Funeral","mobile":"260950207061","amount":"10","merchantName":"zmphanza"}}', '', '2018-08-02 01:14:26'),
(91, '{"header":{"terminalID":"T3","service":"createinvoice"},"payload":{"clientID":"21","policyOwner":"John Doe","policyType":"Funeral","mobile":"260950207061","amount":"10","merchantName":"zmphanza"}}', '{"message":"transaction processed successfully","status":"success","statusCode":"200","payload":{"InvoiceNo":"47","client":"John Doe","amount":"10","merchant":"zmphanza","transactionType":"premiums","transactionRef":"UT-43625820","transactionDate":"2018-08-02 01:14:59pm"}}', '2018-08-02 01:14:59'),
(92, '{"header":{"terminalID":"T3","service":"createinvoice"},"payload":{"clientID":"20","policyOwner":"Zwelithini Mphanza","policyType":"Funeral","mobile":"260965376154","amount":"10","merchantName":"zmphanza"}}', '{"message":"transaction processed successfully","status":"success","statusCode":"200","payload":{"InvoiceNo":"1","client":"Zwelithini Mphanza","amount":"10","merchant":"zmphanza","transactionType":"premiums","transactionRef":"UT-47025768","transactionDate":"2018-08-02 01:21:44pm"}}', '2018-08-02 01:21:44'),
(93, '{"header":{"terminalID":"T3","service":"createinvoice"},"payload":{"clientID":"21","policyOwner":"John Doe","policyType":"Funeral","mobile":"260950207061","amount":"20","merchantName":"zmphanza"}}', '{"message":"transaction failed","status":"failed","reason":"Possible Insufficent Funds"}', '2018-08-02 01:32:28'),
(94, '{"header":{"terminalID":"T3","service":"createinvoice"},"payload":{"clientID":"21","policyOwner":"John Doe","policyType":"Funeral","mobile":"260950207061","amount":"500","merchantName":"zmphanza"}}', '{"message":"transaction failed","status":"failed","reason":"Possible Insufficent Funds"}', '2018-08-02 01:32:44'),
(95, '{"header":{"terminalID":"T3","service":"createinvoice"},"payload":{"clientID":"21","policyOwner":"John Doe","policyType":"Funeral","mobile":"260950207061","amount":"5","merchantName":"zmphanza"}}', '{"message":"transaction processed successfully","status":"success","statusCode":"200","payload":{"InvoiceNo":"2","client":"John Doe","amount":"5","merchant":"zmphanza","transactionType":"premiums","transactionRef":"UT-23808816","transactionDate":"2018-08-02 01:33:05pm"}}', '2018-08-02 01:33:05'),
(96, '{"header":{"terminalID":"T3","service":"createinvoice"},"payload":{"clientID":"20","policyOwner":"Zwelithini Mphanza","policyType":"Funeral","mobile":"260965376154","amount":"6","merchantName":"zmphanza"}}', '{"message":"transaction failed","status":"failed","reason":"Possible Insufficent Funds"}', '2018-08-02 01:34:58'),
(97, '{\r\n	"header":{\r\n		"terminalID":"T3",\r\n		"service":"createinvoice"\r\n	},\r\n	"payload":{\r\n		"clientID": "21",\r\n		"policyOwner":"John Doe",\r\n		"policyType":"Funeral",\r\n		"mobile":"260950207061",\r\n		"amount":"10",\r\n		"merchantName":"zmphanza"\r\n	}\r\n}\r\n', '{"message":"transaction processed successfully","status":"success","statusCode":"200","payload":{"InvoiceNo":"3","client":"John Doe","amount":"10","merchant":"zmphanza","transactionType":"premiums","transactionRef":"UT-36324263","transactionDate":"2018-08-02 01:38:21pm"}}', '2018-08-02 01:38:21'),
(98, '{\r\n	"header":{\r\n		"terminalID":"T3",\r\n		"service":"createinvoice"\r\n	},\r\n	"payload":{\r\n		"clientID": "21",\r\n		"policyOwner":"John Doe",\r\n		"policyType":"Funeral",\r\n		"mobile":"260950207061",\r\n		"amount":"1000",\r\n		"merchantName":"zmphanza"\r\n	}\r\n}\r\n', '{"message":"transaction failed","status":"failed","reason":"Possible Insufficent Funds"}', '2018-08-02 01:38:51'),
(99, '{"header":{"terminalID":"T3","service":"createinvoice"},"payload":{"clientID":"21","policyOwner":"John Doe","policyType":"Funeral","mobile":"260950207061","amount":"1000","merchantName":"zmphanza"}}', '{"message":"transaction failed","status":"failed","reason":"Possible Insufficent Funds"}', '2018-08-02 01:39:35'),
(100, '{"header":{"terminalID":"T3","service":"createinvoice"},"payload":{"clientID":"21","policyOwner":"John Doe","policyType":"Funeral","mobile":"260950207061","amount":"50000","merchantName":"zmphanza"}}', '{"message":"transaction failed","status":"failed","reason":"Possible Insufficent Funds"}', '2018-08-02 01:51:36'),
(101, '{"header":{"terminalID":"T3","service":"createinvoice"},"payload":{"clientID":"21","policyOwner":"John Doe","policyType":"Funeral","mobile":"260950207061","amount":"50000","merchantName":"zmphanza"}}', '{"message":"transaction failed","status":"failed","reason":"Possible Insufficent Funds"}', '2018-08-02 01:53:25'),
(102, '{"header":{"terminalID":"T3","service":"createinvoice"},"payload":{"clientID":"20","policyOwner":"Zwelithini Mphanza","policyType":"Funeral","mobile":"260965376154","amount":"30000","merchantName":"zmphanza"}}', '{"message":"transaction failed","status":"failed","reason":"Possible Insufficent Funds"}', '2018-08-02 01:53:48'),
(103, '{"header":{"terminalID":"T3","service":"createinvoice"},"payload":{"clientID":"21","policyOwner":"John Doe","policyType":"Funeral","mobile":"260950207061","amount":"5","merchantName":"zmphanza"}}', '{"message":"transaction processed successfully","status":"success","statusCode":"200","payload":{"InvoiceNo":"4","client":"John Doe","amount":"5","merchant":"zmphanza","transactionType":"premiums","transactionRef":"UT-72117863","transactionDate":"2018-08-02 01:54:09pm"}}', '2018-08-02 01:54:09'),
(104, '{"header":{"terminalID":"T3","service":"createinvoice"},"payload":{"clientID":"21","policyOwner":"John Doe","policyType":"Funeral","mobile":"260950207061","amount":"5288","merchantName":"zmphanza"}}', '{"message":"transaction failed","status":"failed","reason":"Possible Insufficent Funds"}', '2018-08-02 01:59:35'),
(105, '{"header":{"terminalID":"T3","service":"createinvoice"},"payload":{"clientID":"21","policyOwner":"John Doe","policyType":"Funeral","mobile":"260950207061","amount":"145","merchantName":"zmphanza"}}', '{"message":"transaction processed successfully","status":"success","statusCode":"200","payload":{"InvoiceNo":"5","client":"John Doe","amount":"145","merchant":"zmphanza","transactionType":"premiums","transactionRef":"UT-53724883","transactionDate":"2018-08-02 02:56:15pm"}}', '2018-08-02 02:56:15'),
(106, '{"header":{"terminalID":"T3","service":"createinvoice"},"payload":{"clientID":"20","policyOwner":"Zwelithini Mphanza","policyType":"Funeral","mobile":"260965376154","amount":"170","merchantName":"zmphanza"}}', '{"message":"transaction processed successfully","status":"success","statusCode":"200","payload":{"InvoiceNo":"6","client":"Zwelithini Mphanza","amount":"170","merchant":"zmphanza","transactionType":"premiums","transactionRef":"UT-99448430","transactionDate":"2018-08-02 02:56:48pm"}}', '2018-08-02 02:56:48'),
(107, '{"header":{"terminalID":"T3","service":"createinvoice"},"payload":{"clientID":"20","policyOwner":"Zwelithini Mphanza","policyType":"Funeral","mobile":"260965376154","amount":"200","merchantName":"zmphanza"}}', '{"message":"transaction processed successfully","status":"success","statusCode":"200","payload":{"InvoiceNo":"7","client":"Zwelithini Mphanza","amount":"200","merchant":"zmphanza","transactionType":"premiums","transactionRef":"UT-60685148","transactionDate":"2018-08-02 02:57:17pm"}}', '2018-08-02 02:57:17'),
(108, '{"header":{"terminalID":"T3","service":"createinvoice"},"payload":{"clientID":"20","policyOwner":"Zwelithini Mphanza","policyType":"Funeral","mobile":"260965376154","amount":"177","merchantName":"zmphanza"}}', '{"message":"transaction processed successfully","status":"success","statusCode":"200","payload":{"InvoiceNo":"8","client":"Zwelithini Mphanza","amount":"177","merchant":"zmphanza","transactionType":"premiums","transactionRef":"UT-70213280","transactionDate":"2018-08-02 02:57:49pm"}}', '2018-08-02 02:57:49'),
(109, '{"header":{"terminalID":"T3","service":"createinvoice"},"payload":{"clientID":"21","policyOwner":"John Doe","policyType":"Funeral","mobile":"260950207061","amount":"146","merchantName":"zmphanza"}}', '{"message":"transaction processed successfully","status":"success","statusCode":"200","payload":{"InvoiceNo":"9","client":"John Doe","amount":"146","merchant":"zmphanza","transactionType":"premiums","transactionRef":"UT-8850189","transactionDate":"2018-08-02 03:00:36pm"}}', '2018-08-02 03:00:36'),
(110, '{"header":{"terminalID":"T3","service":"createinvoice"},"payload":{"clientID":"21","policyOwner":"John Doe","policyType":"Funeral","mobile":"260950207061","amount":"60","merchantName":"zmphanza"}}', '{"message":"transaction processed successfully","status":"success","statusCode":"200","payload":{"InvoiceNo":"10","client":"John Doe","amount":"60","merchant":"zmphanza","transactionType":"premiums","transactionRef":"UT-23725425","transactionDate":"2018-08-02 03:01:04pm"}}', '2018-08-02 03:01:04'),
(111, '{"header":{"terminalID":"T3","service":"createinvoice"},"payload":{"clientID":"20","policyOwner":"Zwelithini Mphanza","policyType":"Funeral","mobile":"260965376154","amount":"250","merchantName":"zmphanza"}}', '{"message":"transaction failed","status":"failed","reason":"Possible Insufficent Funds"}', '2018-08-02 03:01:46'),
(112, '{"header":{"terminalID":"T3","service":"createinvoice"},"payload":{"clientID":"20","policyOwner":"Zwelithini Mphanza","policyType":"Funeral","mobile":"260965376154","amount":"54","merchantName":"zmphanza"}}', '{"message":"transaction processed successfully","status":"success","statusCode":"200","payload":{"InvoiceNo":"11","client":"Zwelithini Mphanza","amount":"54","merchant":"zmphanza","transactionType":"premiums","transactionRef":"UT-64825701","transactionDate":"2018-08-02 03:01:58pm"}}', '2018-08-02 03:01:58'),
(113, '{"header":{"terminalID":"T3","service":"createinvoice"},"payload":{"clientID":"20","policyOwner":"Zwelithini Mphanza","policyType":"Funeral","mobile":"260965376154","amount":"38.02","merchantName":"zmphanza"}}', '{"message":"transaction failed","status":"failed","reason":"Possible Insufficent Funds"}', '2018-08-02 03:02:41'),
(114, '{"header":{"terminalID":"T3","service":"createinvoice"},"payload":{"clientID":"20","policyOwner":"Zwelithini Mphanza","policyType":"Funeral","mobile":"260965376154","amount":"38","merchantName":"zmphanza"}}', '{"message":"transaction processed successfully","status":"success","statusCode":"200","payload":{"InvoiceNo":"12","client":"Zwelithini Mphanza","amount":"38","merchant":"zmphanza","transactionType":"premiums","transactionRef":"UT-1483835","transactionDate":"2018-08-02 03:02:52pm"}}', '2018-08-02 03:02:52'),
(115, '{"header":{"terminalID":"T3","billTotal":"532.0","service":"createinvoice"},"payload":{"merchant_name":"zmphanza","bill_items":[{"name":"Soup","price":14,"quantity":5,"totalAmount":70},{"name":"Chocolates","price":154,"quantity":3,"totalAmount":462}]}}', '{"message":"transaction processed successfully","status":"success","statusCode":"200","payload":[{"InvoiceNo":"13","amount":70,"merchant":"zmphanza","name":"Soup","quantity":5,"unitPrice":14,"transactionType":"misc","transactionRef":"UT-82738469","transactionDate":"2018-08-02 03:10:37pm"},{"InvoiceNo":"14","amount":462,"merchant":"zmphanza","name":"Chocolates","quantity":3,"unitPrice":154,"transactionType":"misc","transactionRef":"UT-82738469","transactionDate":"2018-08-02 03:10:37pm"}]}', '2018-08-02 03:10:37'),
(116, '{"header":{"terminalID":"T3","service":"createinvoice"},"payload":{"clientID":"2","policyOwner":"Zwelithini Mphanza","policyType":"Funeral Policy","mobile":"260965376154","amount":"320","merchantName":"zmphanza"}}', '{"message":"transaction processed successfully","status":"success","statusCode":"200","payload":{"InvoiceNo":"15","client":"Zwelithini Mphanza","amount":"320","merchant":"zmphanza","transactionType":"premiums","transactionRef":"UT-41540475","transactionDate":"2018-08-08 07:40:21am"}}', '2018-08-08 07:40:21'),
(117, '{"header":{"terminalID":"T001","service":"createinvoice"},"payload":{"clientID":"3","policyOwner":"Patel Anand","policyType":"Funeral ","mobile":"260976068933","amount":"250","merchantName":"zmphanza"}}', '{"message":"transaction failed","status":"failed","reason":"Possible Insufficent Funds"}', '2018-08-08 10:42:11'),
(118, '{"header":{"terminalID":"T001","service":"createinvoice"},"payload":{"clientID":"3","policyOwner":"Patel Anand","policyType":"Funeral ","mobile":"260976068933","amount":"50","merchantName":"zmphanza"}}', '{"message":"transaction processed successfully","status":"success","statusCode":"200","payload":{"InvoiceNo":"16","client":"Patel Anand","amount":"50","merchant":"zmphanza","transactionType":"premiums","transactionRef":"UT-8259848","transactionDate":"2018-08-08 10:43:04am"}}', '2018-08-08 10:43:04'),
(119, '{"header":{"terminalID":"T001","service":"createinvoice"},"payload":{"clientID":"3","policyOwner":"Patel Anand","policyType":"Funeral ","mobile":"260976068933","amount":"20","merchantName":"zmphanza"}}', '{"message":"transaction processed successfully","status":"success","statusCode":"200","payload":{"InvoiceNo":"17","client":"Patel Anand","amount":"20","merchant":"zmphanza","transactionType":"premiums","transactionRef":"UT-76969454","transactionDate":"2018-08-08 11:36:08am"}}', '2018-08-08 11:36:08'),
(120, '{"header":{"terminalID":"T001","billTotal":"88.0","service":"createinvoice"},"payload":{"merchant_name":"zmphanza","bill_items":[{"name":"product x","price":30,"quantity":2,"totalAmount":60},{"name":"Product y","price":14,"quantity":2,"totalAmount":28}]}}', '{"message":"transaction processed successfully","status":"success","statusCode":"200","payload":[{"InvoiceNo":"18","amount":60,"merchant":"zmphanza","name":"product x","quantity":2,"unitPrice":30,"transactionType":"misc","transactionRef":"UT-12273627","transactionDate":"2018-08-08 11:45:26am"},{"InvoiceNo":"19","amount":28,"merchant":"zmphanza","name":"Product y","quantity":2,"unitPrice":14,"transactionType":"misc","transactionRef":"UT-12273627","transactionDate":"2018-08-08 11:45:26am"}]}', '2018-08-08 11:45:26'),
(121, '{"header":{"terminalID":"T001","service":"createinvoice"},"payload":{"clientID":"8","policyOwner":"Favour mhlanga","policyType":"Tontozo Core Cover","mobile":"0965705357","amount":"102.0","merchantName":"zmphanza"}}', '{"message":"transaction failed","status":"failed","reason":"Possible Insufficent Funds"}', '2018-09-20 12:27:38'),
(122, '{"header":{"terminalID":"T001","service":"createinvoice"},"payload":{"clientID":"8","policyOwner":"Favour mhlanga","policyType":"Tontozo Core Cover","mobile":"0965705357","amount":"17.0","merchantName":"zmphanza"}}', '{"message":"transaction processed successfully","status":"success","statusCode":"200","payload":{"InvoiceNo":"20","client":"Favour mhlanga","amount":"17.0","merchant":"zmphanza","transactionType":"premiums","transactionRef":"UT-29848086","transactionDate":"2018-09-20 12:28:25pm"}}', '2018-09-20 12:28:25'),
(123, '{"header":{"terminalID":"T001","service":"createinvoice"},"payload":{"clientID":"8","policyOwner":"Favour mhlanga","nrc":"229754101","policyType":"Tontozo Core Cover","mobile":"0965705357","amount":"17.0","merchantName":"zmphanza"}}', '{"message":"transaction processed successfully","status":"success","statusCode":"200","payload":{"InvoiceNo":"0","client":"Favour mhlanga","amount":"17.0","merchant":"zmphanza","transactionType":"premiums","transactionRef":"UT-59392303","transactionDate":"2018-09-20 01:56:11pm"}}', '2018-09-20 01:56:11'),
(124, '{"header":{"terminalID":"T001","service":"createinvoice"},"payload":{"clientID":"8","policyOwner":"Favour mhlanga","nrc":"229754101","policyType":"Tontozo Core Cover","mobile":"0965705357","amount":"17.0","merchantName":"zmphanza"}}', '{"message":"transaction processed successfully","status":"success","statusCode":"200","payload":{"InvoiceNo":"21","client":"Favour mhlanga","amount":"17.0","merchant":"zmphanza","transactionType":"premiums","transactionRef":"UT-85625969","transactionDate":"2018-09-20 02:00:30pm"}}', '2018-09-20 02:00:30'),
(125, '{"header":{"terminalID":"T001","service":"createinvoice"},"payload":{"clientID":"8","policyOwner":"Favour mhlanga","nrc":"229754101","policyType":"Tontozo Core Cover","mobile":"0965705357","amount":"17.0","merchantName":"zmphanza"}}', '{"message":"transaction processed successfully","status":"success","statusCode":"200","payload":{"InvoiceNo":"22","client":"Favour mhlanga","amount":"17.0","merchant":"zmphanza","transactionType":"premiums","transactionRef":"UT-58783178","transactionDate":"2018-09-20 02:03:54pm"}}', '2018-09-20 02:03:54'),
(126, '{\r\n	"header":{\r\n		"terminalID":"T3",\r\n		"service":"createinvoice"\r\n	},\r\n	"payload":{\r\n		"clientID": "21",\r\n		"policyOwner":"John Doe",\r\n		"nrc":"229754101",\r\n		"policyType":"Funeral",\r\n		"mobile":"260950207061",\r\n		"amount":"1000",\r\n		"merchantName":"zmphanza"\r\n	}\r\n}\r\n', '{"message":"transaction failed","status":"failed","reason":"Possible Insufficent Funds"}', '2018-09-20 02:08:42'),
(127, '{\r\n	"header":{\r\n		"terminalID":"T3",\r\n		"service":"createinvoice"\r\n	},\r\n	"payload":{\r\n		"clientID": "21",\r\n		"policyOwner":"John Doe",\r\n		"nrc":"229754101",\r\n		"policyType":"Funeral",\r\n		"mobile":"260950207061",\r\n		"amount":"17",\r\n		"merchantName":"zmphanza"\r\n	}\r\n}\r\n', '{"message":"transaction failed","status":"failed","reason":"Possible Insufficent Funds"}', '2018-09-20 02:08:56'),
(128, '{\r\n	"header":{\r\n		"terminalID":"T001",\r\n		"service":"createinvoice"\r\n	},\r\n	"payload":{\r\n		"clientID": "21",\r\n		"policyOwner":"John Doe",\r\n		"nrc":"229754101",\r\n		"policyType":"Funeral",\r\n		"mobile":"260950207061",\r\n		"amount":"17",\r\n		"merchantName":"zmphanza"\r\n	}\r\n}\r\n', '{"message":"transaction processed successfully","status":"success","statusCode":"200","payload":{"InvoiceNo":"23","client":"John Doe","amount":"17","merchant":"zmphanza","transactionType":"premiums","transactionRef":"UT-27911356","transactionDate":"2018-09-20 02:09:21pm"}}', '2018-09-20 02:09:21'),
(129, '{\r\n	"header":{\r\n		"terminalID":"T001",\r\n		"service":"createinvoice"\r\n	},\r\n	"payload":{\r\n		"clientID": "21",\r\n		"policyOwner":"John Doe",\r\n		"nrc":"229754101",\r\n		"policyType":"Funeral",\r\n		"mobile":"260950207061",\r\n		"amount":"17",\r\n		"merchantName":"zmphanza"\r\n	}\r\n}\r\n', '{"message":"transaction processed successfully","status":"success","statusCode":"200","payload":{"InvoiceNo":"24","client":"John Doe","amount":"17","merchant":"zmphanza","transactionType":"premiums","transactionRef":"UT-18432162","transactionDate":"2018-09-20 02:11:18pm"}}', '2018-09-20 02:11:18'),
(130, '{"header":{"terminalID":"T001","service":"createinvoice"},"payload":{"clientID":"8","policyOwner":"Favour mhlanga","nrc":"229754101","policyType":"Tontozo Core Cover","mobile":"0965705357","amount":"34.0","merchantName":"zmphanza"}}', '{"message":"transaction processed successfully","status":"success","statusCode":"200","payload":{"InvoiceNo":"25","client":"Favour mhlanga","amount":"34.0","merchant":"zmphanza","transactionType":"premiums","transactionRef":"UT-91800255","transactionDate":"2018-09-20 02:13:28pm"}}', '2018-09-20 02:13:28'),
(131, '{"header":{"terminalID":"T001","service":"createinvoice"},"payload":{"clientID":"8","policyOwner":"Favour mhlanga","nrc":"229754101","policyType":"Tontozo Core Cover","mobile":"0965705357","amount":"34.0","merchantName":"zmphanza"}}', '{"message":"transaction processed successfully","status":"success","statusCode":"200","payload":{"InvoiceNo":"26","client":"Favour mhlanga","amount":"34.0","merchant":"zmphanza","transactionType":"premiums","transactionRef":"UT-3477234","transactionDate":"2018-09-20 02:15:03pm"}}', '2018-09-20 02:15:03'),
(132, '{"header":{"terminalID":"T001","service":"createinvoice"},"payload":{"clientID":"8","policyOwner":"Favour mhlanga","nrc":"229754101","policyType":"Tontozo Core Cover","mobile":"0965705357","amount":"51.0","merchantName":"zmphanza"}}', '{"message":"transaction processed successfully","status":"success","statusCode":"200","payload":{"InvoiceNo":"27","client":"Favour mhlanga","amount":"51.0","merchant":"zmphanza","transactionType":"premiums","transactionRef":"UT-78210659","transactionDate":"2018-09-21 10:01:02am"}}', '2018-09-21 10:01:02'),
(133, '{"header":{"terminalID":"T001","service":"createinvoice"},"payload":{"clientID":"8","policyOwner":"Favour mhlanga","nrc":"229754101","policyType":"Tontozo Core Cover","mobile":"0965705357","amount":"17.0","merchantName":"zmphanza"}}', '{"message":"transaction failed","status":"failed","reason":"Possible Insufficent Funds"}', '2018-09-25 07:11:23'),
(134, '{"header":{"terminalID":"T001","service":"createinvoice"},"payload":{"clientID":"8","policyOwner":"Favour mhlanga","nrc":"229754101","policyType":"Tontozo Core Cover","mobile":"0965705357","amount":"17.0","merchantName":"zmphanza"}}', '{"message":"transaction failed","status":"failed","reason":"Possible Insufficent Funds"}', '2018-09-27 05:00:14'),
(135, '{"header":{"terminalID":"T001","service":"createinvoice"},"payload":{"clientID":"8","policyOwner":"Favour mhlanga","nrc":"229754101","policyType":"Tontozo Core Cover","mobile":"0965705357","amount":"17.0","merchantName":"zmphanza"}}', '{"message":"transaction failed","status":"failed","reason":"Possible Insufficent Funds"}', '2018-09-30 05:30:40'),
(136, '{"header":{"terminalID":"T001","service":"createinvoice"},"payload":{"clientID":"8","policyOwner":"Favour mhlanga","nrc":"229754101","policyType":"Tontozo Core Cover","mobile":"0965705357","amount":"153.0","merchantName":"zmphanza"}}', '{"message":"transaction failed","status":"failed","reason":"Possible Insufficent Funds"}', '2018-10-01 12:21:46'),
(137, '{"header":{"terminalID":"T001","service":"createinvoice"},"payload":{"clientID":"8","policyOwner":"Favour mhlanga","nrc":"229754101","policyType":"Tontozo Core Cover","mobile":"0965705357","amount":"85.0","merchantName":"zmphanza"}}', '{"message":"transaction failed","status":"failed","reason":"Possible Insufficent Funds"}', '2018-10-02 04:54:39'),
(138, '{"header":{"terminalID":"T001  ","service":"createinvoice"},"payload":{"clientID":"1","policyOwner":"John doe","nrc":"229754101","policyType":"Tontozo Core Cover","mobile":"26095376154","amount":"41.0","merchantName":"zmphanza"}}', '{"message":"transaction failed","status":"failed","reason":"Possible Insufficent Funds"}', '2018-10-03 12:08:12'),
(139, '{"header":{"terminalID":"T001  ","service":"createinvoice"},"payload":{"clientID":"1","policyOwner":"John doe","nrc":"229754101","policyType":"Tontozo Core Cover","mobile":"26095376154","amount":"41.0","merchantName":"zmphanza"}}', '{"message":"transaction processed successfully","status":"success","statusCode":"200","payload":{"InvoiceNo":"1","client":"John doe","amount":"41.0","merchant":"zmphanza","transactionType":"premiums","transactionRef":"UT-60223153","transactionDate":"2018-10-03 12:09:29pm"}}', '2018-10-03 12:09:29'),
(140, '{"header":{"terminalID":"mbasela001","service":"createinvoice"},"payload":{"clientID":"2","policyOwner":"Chiza mhlanga","nrc":"381855611","policyType":"Tontozo Core Cover","mobile":"260965705357","amount":"387.0","merchantName":"feelings"}}', '{"message":"transaction processed successfully","status":"success","statusCode":"200","payload":{"InvoiceNo":"2","client":"Chiza mhlanga","amount":"387.0","merchant":"feelings","transactionType":"premiums","transactionRef":"UT-81570457","transactionDate":"2018-10-03 03:20:29pm"}}', '2018-10-03 03:20:29'),
(141, '{"header":{"terminalID":"favou123  ","service":"createinvoice"},"payload":{"clientID":"3","policyOwner":"Daniel chabala","nrc":"9999652","policyType":"Tontozo Core Cover","mobile":"0965487541","amount":"56.0","merchantName":"riemann"}}', '{"message":"transaction processed successfully","status":"success","statusCode":"200","payload":{"InvoiceNo":"3","client":"Daniel chabala","amount":"56.0","merchant":"riemann","transactionType":"premiums","transactionRef":"UT-21952646","transactionDate":"2018-10-04 02:05:00pm"}}', '2018-10-04 02:05:00'),
(142, '{"header":{"terminalID":"favou123  ","service":"createinvoice"},"payload":{"clientID":"3","policyOwner":"Daniel chabala","nrc":"9999652","policyType":"Tontozo Core Cover","mobile":"0965487541","amount":"224.0","merchantName":"riemann"}}', '{"message":"transaction processed successfully","status":"success","statusCode":"200","payload":{"InvoiceNo":"4","client":"Daniel chabala","amount":"224.0","merchant":"riemann","transactionType":"premiums","transactionRef":"UT-88841619","transactionDate":"2018-10-04 02:09:50pm"}}', '2018-10-04 02:09:50'),
(143, '{"header":{"terminalID":"favou123  ","service":"createinvoice"},"payload":{"clientID":"2","policyOwner":"Chiza mhlanga","nrc":"381855611","policyType":"Tontozo Core Cover","mobile":"260965705357","amount":"645.0","merchantName":"riemann"}}', '{"message":"transaction processed successfully","status":"success","statusCode":"200","payload":{"InvoiceNo":"5","client":"Chiza mhlanga","amount":"645.0","merchant":"riemann","transactionType":"premiums","transactionRef":"UT-95798428","transactionDate":"2018-10-04 02:11:21pm"}}', '2018-10-04 02:11:21'),
(144, '{"header":{"terminalID":"mbasela001","service":"createinvoice"},"payload":{"clientID":"1","policyOwner":"John doe","nrc":"229754101","policyType":"Tontozo Core Cover","mobile":"26095376154","amount":"123.0","merchantName":"feelings"}}', '{"message":"transaction processed successfully","status":"success","statusCode":"200","payload":{"InvoiceNo":"6","client":"John doe","amount":"123.0","merchant":"feelings","transactionType":"premiums","transactionRef":"UT-48147633","transactionDate":"2018-10-04 02:13:59pm"}}', '2018-10-04 02:13:59'),
(145, '{"header":{"terminalID":"mbasela001","service":"createinvoice"},"payload":{"clientID":"1","policyOwner":"John doe","nrc":"229754101","policyType":"Tontozo Core Cover","mobile":"26095376154","amount":"123.0","merchantName":"feelings"}}', '{"message":"transaction processed successfully","status":"success","statusCode":"200","payload":{"InvoiceNo":"7","client":"John doe","amount":"123.0","merchant":"feelings","transactionType":"premiums","transactionRef":"UT-3011068","transactionDate":"2018-10-04 02:15:41pm"}}', '2018-10-04 02:15:41'),
(146, '{"header":{"terminalID":"mbasela001","service":"createinvoice"},"payload":{"clientID":"3","policyOwner":"Daniel chabala","nrc":"9999652","policyType":"Tontozo Core Cover","mobile":"0965487541","amount":"280.0","merchantName":"feelings"}}', '{"message":"transaction processed successfully","status":"success","statusCode":"200","payload":{"InvoiceNo":"8","client":"Daniel chabala","amount":"280.0","merchant":"feelings","transactionType":"premiums","transactionRef":"UT-2619453","transactionDate":"2018-10-04 02:16:41pm"}}', '2018-10-04 02:16:41'),
(147, '{"header":{"terminalID":"mbasela001","service":"createinvoice"},"payload":{"clientID":"3","policyOwner":"Daniel chabala","nrc":"9999652","policyType":"Tontozo Core Cover","mobile":"0965487541","amount":"336.0","merchantName":"feelings"}}', '{"message":"transaction processed successfully","status":"success","statusCode":"200","payload":{"InvoiceNo":"9","client":"Daniel chabala","amount":"336.0","merchant":"feelings","transactionType":"premiums","transactionRef":"UT-46633564","transactionDate":"2018-10-04 02:17:29pm"}}', '2018-10-04 02:17:29'),
(148, '{"header":{"terminalID":"mbasela001","service":"createinvoice"},"payload":{"clientID":"2","policyOwner":"Chiza mhlanga","nrc":"381855611","policyType":"Tontozo Core Cover","mobile":"260965705357","amount":"516.0","merchantName":"feelings"}}', '{"message":"transaction processed successfully","status":"success","statusCode":"200","payload":{"InvoiceNo":"10","client":"Chiza mhlanga","amount":"516.0","merchant":"feelings","transactionType":"premiums","transactionRef":"UT-51940992","transactionDate":"2018-10-04 02:18:20pm"}}', '2018-10-04 02:18:20'),
(149, '{"header":{"terminalID":"mbasela001","service":"createinvoice"},"payload":{"clientID":"2","policyOwner":"Chiza mhlanga","nrc":"381855611","policyType":"Tontozo Core Cover","mobile":"260965705357","amount":"1032.0","merchantName":"feelings"}}', '{"message":"transaction processed successfully","status":"success","statusCode":"200","payload":{"InvoiceNo":"11","client":"Chiza mhlanga","amount":"1032.0","merchant":"feelings","transactionType":"premiums","transactionRef":"UT-75246158","transactionDate":"2018-10-04 02:18:56pm"}}', '2018-10-04 02:18:56'),
(150, '{"header":{"terminalID":"mbasela001","service":"createinvoice"},"payload":{"clientID":"5","policyOwner":"James Sakala","nrc":"229754103","policyType":"Tontozo Core Cover","mobile":"260965376153","amount":"280.0","merchantName":"feelings"}}', '{"message":"transaction processed successfully","status":"success","statusCode":"200","payload":{"InvoiceNo":"12","client":"James Sakala","amount":"280.0","merchant":"feelings","transactionType":"premiums","transactionRef":"UT-68319777","transactionDate":"2018-10-12 11:07:49am"}}', '2018-10-12 11:07:49'),
(151, '{"header":{"terminalID":"T001  ","service":"createinvoice"},"payload":{"clientID":"7","policyOwner":"Jane","nrc":"229754105","policyType":"Tontozo Core Cover","mobile":"260965552769","amount":"392.0","merchantName":"zmphanza"}}', '{"message":"transaction processed successfully","status":"success","statusCode":"200","payload":{"InvoiceNo":"13","client":"Jane","amount":"392.0","merchant":"zmphanza","transactionType":"premiums","transactionRef":"UT-3454363","transactionDate":"2018-10-12 01:39:05pm"}}', '2018-10-12 01:39:05'),
(152, '{"header":{"terminalID":"T001  ","service":"createinvoice"},"payload":{"clientID":"8","policyOwner":"George Mbewe","nrc":"229754106","policyType":"Tontozo Core Cover","mobile":"260978021562","amount":"200.0","merchantName":"zmphanza"}}', '{"message":"transaction processed successfully","status":"success","statusCode":"200","payload":{"InvoiceNo":"14","client":"George Mbewe","amount":"200.0","merchant":"zmphanza","transactionType":"premiums","transactionRef":"UT-41321018","transactionDate":"2018-10-12 01:59:33pm"}}', '2018-10-12 01:59:33'),
(153, '{"header":{"terminalID":"T001  ","service":"createinvoice"},"payload":{"clientID":"2","policyOwner":"Mulela Tackson","nrc":"193449101","policyType":"Tontozo Senior Individual Cove","mobile":"260969540187","amount":"1246.0","merchantName":"zmphanza"}}', '{"message":"transaction processed successfully","status":"success","statusCode":"200","payload":{"InvoiceNo":"1","client":"Mulela Tackson","amount":"1246.0","merchant":"zmphanza","transactionType":"premiums","transactionRef":"UT-78167808","transactionDate":"2018-10-29 10:31:13am"}}', '2018-10-29 10:31:13'),
(154, '{"header":{"terminalID":"T001  ","service":"createinvoice"},"payload":{"clientID":"2","policyOwner":"Mulela Tackson","nrc":"193449101","policyType":"Tontozo Senior Individual Cove","mobile":"260969540187","amount":"356.0","merchantName":"zmphanza"}}', '{"message":"transaction processed successfully","status":"success","statusCode":"200","payload":{"InvoiceNo":"2","client":"Mulela Tackson","amount":"356.0","merchant":"zmphanza","transactionType":"premiums","transactionRef":"UT-2583843","transactionDate":"2018-11-29 03:00:54pm"}}', '2018-11-29 03:00:54'),
(155, '{"header":{"terminalID":"T001  ","service":"createinvoice"},"payload":{"clientID":"1","policyOwner":"Chiza Mhlanga","nrc":"381855611","policyType":"Tontozo Family Cover","mobile":"260965705357","amount":"72.0","merchantName":"zmphanza"}}', '{"message":"transaction processed successfully","status":"success","statusCode":"200","payload":{"InvoiceNo":"3","client":"Chiza Mhlanga","amount":"72.0","merchant":"zmphanza","transactionType":"premiums","transactionRef":"UT-83757711","transactionDate":"2018-11-29 03:21:28pm"}}', '2018-11-29 03:21:28'),
(156, '{"header":{"terminalID":"T001  ","service":"createinvoice"},"payload":{"clientID":"1","policyOwner":"Chiza Mhlanga","nrc":"381855611","policyType":"Tontozo Family Cover","mobile":"260965705357","amount":"144.0","merchantName":"zmphanza"}}', '{"message":"transaction processed successfully","status":"success","statusCode":"200","payload":{"InvoiceNo":"4","client":"Chiza Mhlanga","amount":"144.0","merchant":"zmphanza","transactionType":"premiums","transactionRef":"UT-36839599","transactionDate":"2018-11-29 03:22:12pm"}}', '2018-11-29 03:22:12'),
(157, '{"header":{"terminalID":"T001  ","service":"createinvoice"},"payload":{"clientID":"2","policyOwner":"Mulela Tackson","nrc":"193449101","policyType":"Tontozo Senior Individual Cove","mobile":"260969540187","amount":"178.0","merchantName":"zmphanza"}}', '{"message":"transaction processed successfully","status":"success","statusCode":"200","payload":{"InvoiceNo":"5","client":"Mulela Tackson","amount":"178.0","merchant":"zmphanza","transactionType":"premiums","transactionRef":"UT-82157201","transactionDate":"2018-11-29 03:24:59pm"}}', '2018-11-29 03:24:59'),
(158, '{"header":{"terminalID":"T002","service":"createinvoice"},"payload":{"clientID":"1","policyOwner":"Chiza Mhlanga","nrc":"381855611","policyType":"Tontozo Family Cover","mobile":"260965705357","amount":"216.0","merchantName":"Jyoti"}}', '{"message":"transaction processed successfully","status":"success","statusCode":"200","payload":{"InvoiceNo":"6","client":"Chiza Mhlanga","amount":"216.0","merchant":"Jyoti","transactionType":"premiums","transactionRef":"UT-83614042","transactionDate":"2018-11-29 03:54:10pm"}}', '2018-11-29 03:54:10');

-- --------------------------------------------------------

--
-- Table structure for table `merchants`
--

CREATE TABLE `merchants` (
  `agentID` int(11) NOT NULL,
  `agentNRC` varchar(15) NOT NULL,
  `terminalID` varchar(10) NOT NULL,
  `userName` varchar(50) NOT NULL,
  `firstName` varchar(50) NOT NULL,
  `lastName` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `mobile` varchar(20) NOT NULL,
  `created_at` date NOT NULL,
  `password` varchar(50) NOT NULL,
  `status` varchar(10) NOT NULL,
  `updated_at` date DEFAULT NULL,
  `EditedBy` varchar(50) DEFAULT '',
  `apikey` varchar(155) NOT NULL,
  `AvailableBalance` varchar(155) NOT NULL,
  `patch` varchar(2) NOT NULL,
  `profileReason` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `merchants`
--

INSERT INTO `merchants` (`agentID`, `agentNRC`, `terminalID`, `userName`, `firstName`, `lastName`, `email`, `mobile`, `created_at`, `password`, `status`, `updated_at`, `EditedBy`, `apikey`, `AvailableBalance`, `patch`, `profileReason`) VALUES
(1, '381855611', 'T001   ', 'zmphanza', 'Zwelithini', 'Mphanza', 'chiza@probasegroup.com', '260974894716', '2008-08-18', '81dc9bdb52d04dc20036dbd8313ed055', 'Active', '2013-08-18', 'Test1 Test', '', '30492', '', ''),
(7, '111111111', 'favou123  ', 'riemann', 'Favour1', 'Mhlanga', 'test@mail.com', '260965705357', '2014-08-18', '81dc9bdb52d04dc20036dbd8313ed055', 'Active', '2017-08-18', 'Test1 Test', '', '2015339', 'O', 'all has looked at'),
(8, '00000112', 'mbasela001', 'feelings', 'Leo feelings', 'Mbasela', 'mhlangchiza@gmai.com', '260978021562', '2018-10-03', '81dc9bdb52d04dc20036dbd8313ed055', 'Active', '2018-10-03', 'Testuser Testuser', '', '17973', 'O', 'All data is ok'),
(9, '123456789', 'T002', 'Jyoti', 'Jyoti', 'Chauhan', 'paresh@uniturtle.com', '0979726077', '2018-11-29', '81dc9bdb52d04dc20036dbd8313ed055', 'Active', '2018-11-29', 'Testuser Testuser', '', '284', 'O', 'Activated'),
(10, '888855555', '0003', 'danc', 'Chabala', 'Daniel', 'chiza@probasegroup.com', '260965705357', '2018-12-04', 'd451605863b880973a4715cd52d0801e', 'Active', '2018-12-04', 'Testuser Testuser', '', '200', 'O', 'it has been activated ');

-- --------------------------------------------------------

--
-- Table structure for table `premiums`
--

CREATE TABLE `premiums` (
  `premID` int(11) NOT NULL,
  `premCode` varchar(10) NOT NULL,
  `premName` varchar(50) NOT NULL,
  `premiun_cover` varchar(20) NOT NULL,
  `premAmount` int(11) NOT NULL,
  `date` datetime NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `premiums`
--

INSERT INTO `premiums` (`premID`, `premCode`, `premName`, `premiun_cover`, `premAmount`, `date`, `status`) VALUES
(7, '001', 'Core Individual', '2500', 17, '2018-08-21 11:31:32', 'Active'),
(8, '002', 'Core Individual', '5000', 25, '2018-08-21 11:33:03', 'Active'),
(9, '003', 'Core Individual', '10000', 41, '2018-08-21 11:33:28', 'Active'),
(10, '004', 'Core Individual', '15000', 56, '2018-08-21 11:33:47', 'Active'),
(11, '005', 'Core Individual', '20000', 72, '2018-08-21 11:34:28', 'Active'),
(12, '006', 'Core Family', '2500', 24, '2018-08-21 11:35:34', 'Active'),
(13, '007', 'Core Family', '5000', 39, '2018-08-21 11:35:55', 'Active'),
(14, '008', 'Core Family', '10000', 69, '2018-08-21 11:36:19', 'Active'),
(15, '009', 'Core Family', '15000', 99, '2018-08-21 11:36:38', 'Active'),
(16, '010', 'Core Family', '20000', 129, '2018-08-21 11:38:18', 'Active'),
(17, '011', 'Senior Individual', '2500', 38, '2018-08-21 11:42:15', 'Active'),
(18, '012', 'Senior Individual', '5000', 66, '2018-08-21 11:42:31', 'Active'),
(19, '013', 'Senior Individual', '10000', 122, '2018-08-21 11:42:45', 'Active'),
(20, '014', 'Senior Individual', '15000', 178, '2018-08-21 11:43:04', 'Active'),
(21, '015', 'Senior Individual', '20000', 234, '2018-08-21 11:43:19', 'Active'),
(22, '016', 'Senior Family', '2500', 42, '2018-08-21 11:45:02', 'Active'),
(23, '017', 'Senior Family', '5000', 75, '2018-08-21 11:45:23', 'Active'),
(24, '018', 'Senior Family', '10000', 141, '2018-08-21 11:45:52', 'Active'),
(25, '019', 'Senior Family', '15000', 206, '2018-08-21 11:46:10', 'Active'),
(26, '020', 'Senior Family', '20000', 272, '2018-08-21 11:46:41', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `sms_notifications`
--

CREATE TABLE `sms_notifications` (
  `id` int(255) NOT NULL,
  `message` text NOT NULL,
  `senderId` varchar(255) NOT NULL,
  `recipient` varchar(255) NOT NULL,
  `status` text NOT NULL,
  `attempts` text NOT NULL,
  `type` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sms_notifications`
--

INSERT INTO `sms_notifications` (`id`, `message`, `senderId`, `recipient`, `status`, `attempts`, `type`) VALUES
(25, 'Hello Test Client Your payment of K328 has been completed successfully.Your total contribution is K368. Thank you for being our customer', 'UNITURTLE', '260950207061', 'SUCCESS', '', 'TEXT'),
(26, 'Hello Lungu Banda You have successfully registered for our Funeral policy. Please verify your registration using 0-7199 to activate your account. Thank you for being our customer', 'UNITURTLE', '260950207061', 'SUCCESS', '', 'TEXT'),
(27, 'Hello Peter Nyirongo You have successfully registered for our Funeral  policy. Please verify your registration using 18-7446 to activate your account. Thank you for being our customer', 'UNITURTLE', '260965376154', 'SUCCESS', '', 'TEXT'),
(28, 'Hello Test Client Your payment of K50 has been completed successfully.Your total contribution is K418. Thank you for being our customer', 'UNITURTLE', '260950207061', 'SUCCESS', '', 'TEXT'),
(29, 'Hello Phiri Joshua You have successfully registered for our Funeral policy. Please verify your registration using 19-9591 to activate your account. Thank you for being our customer', 'UNITURTLE', '260950207061', 'SUCCESS', '', 'TEXT'),
(30, 'Hello Zwelithini Mphanza You have successfully registered for our Funeral policy. Please verify your registration using 20-3412 to activate your account. Thank you for being our customer', 'UNITURTLE', '260965376154', 'SUCCESS', '', 'TEXT'),
(31, 'Hello Zwelithini Mphanza Your payment of K50 has been completed successfully.Your total contribution is K50. Thank you for being our customer', 'UNITURTLE', '260965376154', 'SUCCESS', '', 'TEXT'),
(32, 'Hello Zwelithini Mphanza Your payment of K20 has been completed successfully.Your total contribution is K70. Thank you for being our customer', 'UNITURTLE', '260965376154', 'SUCCESS', '', 'TEXT'),
(33, 'Hello John Doe You have successfully registered for our Funeral policy. Please verify your registration using 21-1972 to activate your account. Thank you for being our customer', 'UNITURTLE', '260950207061', 'SUCCESS', '', 'TEXT'),
(34, 'Hello John Doe Your payment of K10 has been completed successfully.Your total contribution is K10. Thank you for being our customer', 'UNITURTLE', '260950207061', 'SUCCESS', '', 'TEXT'),
(35, 'Hello Zwelithini Mphanza Your payment of K10 has been completed successfully.Your total contribution is K80. Thank you for being our customer', 'UNITURTLE', '260965376154', 'SUCCESS', '', 'TEXT'),
(36, 'Hello John Doe Your payment of K5 has been completed successfully.Your total contribution is K15. Thank you for being our customer', 'UNITURTLE', '260950207061', 'SUCCESS', '', 'TEXT'),
(37, 'Hello John Doe Your payment of K10 has been completed successfully.Your total contribution is K25. Thank you for being our customer', 'UNITURTLE', '260950207061', 'SUCCESS', '', 'TEXT'),
(38, 'Hello John Doe Your payment of K5 has been completed successfully.Your total contribution is K30. Thank you for being our customer', 'UNITURTLE', '260950207061', 'SUCCESS', '', 'TEXT'),
(39, 'Hello John Doe Your payment of K145 has been completed successfully.Your total contribution is K175. Thank you for being our customer', 'UNITURTLE', '260950207061', 'SUCCESS', '', 'TEXT'),
(40, 'Hello Zwelithini Mphanza Your payment of K170 has been completed successfully.Your total contribution is K250. Thank you for being our customer', 'UNITURTLE', '260965376154', 'SUCCESS', '', 'TEXT'),
(41, 'Hello Zwelithini Mphanza Your payment of K200 has been completed successfully.Your total contribution is K450. Thank you for being our customer', 'UNITURTLE', '260965376154', 'SUCCESS', '', 'TEXT'),
(42, 'Hello Zwelithini Mphanza Your payment of K177 has been completed successfully.Your total contribution is K627. Thank you for being our customer', 'UNITURTLE', '260965376154', 'SUCCESS', '', 'TEXT'),
(43, 'Hello John Doe Your payment of K146 has been completed successfully.Your total contribution is K321. Thank you for being our customer', 'UNITURTLE', '260950207061', 'SUCCESS', '', 'TEXT'),
(44, 'Hello John Doe Your payment of K60 has been completed successfully.Your total contribution is K381. Thank you for being our customer', 'UNITURTLE', '260950207061', 'SUCCESS', '', 'TEXT'),
(45, 'Hello Zwelithini Mphanza Your payment of K54 has been completed successfully.Your total contribution is K681. Thank you for being our customer', 'UNITURTLE', '260965376154', 'SUCCESS', '', 'TEXT'),
(46, 'Hello Zwelithini Mphanza Your payment of K38 has been completed successfully.Your total contribution is K719. Thank you for being our customer', 'UNITURTLE', '260965376154', 'SUCCESS', '', 'TEXT'),
(47, 'Hello Zwelithini Mphanza You have successfully registered for our Funeral Policy policy. Please verify your registration using 2-9527 to activate your account. Thank you for being our customer', 'UNITURTLE', '260965376154', 'SUCCESS', '', 'TEXT'),
(48, 'Hello Zwelithini Mphanza Your payment of K320 has been completed successfully.Your total contribution is K320. Thank you for being our customer', 'UNITURTLE', '260965376154', 'SUCCESS', '', 'TEXT'),
(49, 'Hello Patel Anand You have successfully registered for our Funeral  policy. Please verify your registration using 3-2815 to activate your account. Thank you for being our customer', 'UNITURTLE', '260976068933', 'SUCCESS', '', 'TEXT'),
(50, 'Hello Patel Anand Your payment of K50 has been completed successfully.Your total contribution is K50. Thank you for being our customer', 'UNITURTLE', '260976068933', 'SUCCESS', '', 'TEXT'),
(51, 'Hello Patel Anand Your payment of K20 has been completed successfully.Your total contribution is K70. Thank you for being our customer', 'UNITURTLE', '260976068933', 'SUCCESS', '', 'TEXT'),
(52, 'Hello Favour mhlanga Your payment of K17.0 has been completed successfully.Your total contribution is K17. Thank you for being our customer', 'UNITURTLE', '0965705357', 'INVALID_ROUTE', '', 'TEXT'),
(53, 'Hello Favour mhlanga Your payment of K17.0 has been completed successfully.Your total contribution is K34. Thank you for being our customer', 'UNITURTLE', '0965705357', 'INVALID_ROUTE', '', 'TEXT'),
(54, 'Hello Favour mhlanga Your payment of K17.0 has been completed successfully.Your total contribution is K51. Thank you for being our customer', 'UNITURTLE', '0965705357', 'INVALID_ROUTE', '', 'TEXT'),
(55, 'Hello Favour mhlanga Your payment of K17.0 has been completed successfully.Your total contribution is K68. Thank you for being our customer', 'UNITURTLE', '0965705357', 'INVALID_ROUTE', '', 'TEXT'),
(56, 'Hello John Doe Your payment of K17 has been completed successfully.Your total contribution is K17. Thank you for being our customer', 'UNITURTLE', '260950207061', 'SUCCESS', '', 'TEXT'),
(57, 'Hello John Doe Your payment of K17 has been completed successfully.Your total contribution is K17. Thank you for being our customer', 'UNITURTLE', '260950207061', 'SUCCESS', '', 'TEXT'),
(58, 'Hello Favour mhlanga Your payment of K34.0 has been completed successfully.Your total contribution is K102. Thank you for being our customer', 'UNITURTLE', '0965705357', 'INVALID_ROUTE', '', 'TEXT'),
(59, 'Hello Favour mhlanga Your payment of K34.0 has been completed successfully.Your total contribution is K136. Thank you for being our customer', 'UNITURTLE', '0965705357', 'INVALID_ROUTE', '', 'TEXT'),
(60, 'Hello Favour mhlanga Your payment of K51.0 has been completed successfully.Your total contribution is K187. Thank you for being our customer', 'UNITURTLE', '0965705357', 'INVALID_ROUTE', '', 'TEXT'),
(61, 'Hello John doe You have successfully registered for our individual core policy. Please verify your registration using 1-1504 to activate your account. Thank you for being our customer', 'UNITURTLE', '26095376154', 'INVALID_ROUTE', '', 'TEXT'),
(62, 'Hello John doe Your payment of K41.0 has been completed successfully.Your total contribution is K41. Thank you for being our customer', 'UNITURTLE', '26095376154', 'INVALID_ROUTE', '', 'TEXT'),
(63, 'Hello Chiza mhlanga Your payment of K387.0 has been completed successfully.Your total contribution is K387. Thank you for being our customer', 'UNITURTLE', '260965705357', 'SUCCESS', '', 'TEXT'),
(64, 'Hello daniel chabala You have successfully registered for our tontozo core cover policy. Please verify your registration using 3-5429 to activate your account. Thank you for being our customer', 'UNITURTLE', '0965487541', 'INVALID_ROUTE', '', 'TEXT'),
(65, 'Hello Daniel chabala Your payment of K56.0 has been completed successfully.Your total contribution is K56. Thank you for being our customer', 'UNITURTLE', '0965487541', 'INVALID_ROUTE', '', 'TEXT'),
(66, 'Hello Daniel chabala Your payment of K224.0 has been completed successfully.Your total contribution is K280. Thank you for being our customer', 'UNITURTLE', '0965487541', 'INVALID_ROUTE', '', 'TEXT'),
(67, 'Hello Chiza mhlanga Your payment of K645.0 has been completed successfully.Your total contribution is K1032. Thank you for being our customer', 'UNITURTLE', '260965705357', 'SUCCESS', '', 'TEXT'),
(68, 'Hello John doe Your payment of K123.0 has been completed successfully.Your total contribution is K164. Thank you for being our customer', 'UNITURTLE', '26095376154', 'INVALID_ROUTE', '', 'TEXT'),
(69, 'Hello John doe Your payment of K123.0 has been completed successfully.Your total contribution is K287. Thank you for being our customer', 'UNITURTLE', '26095376154', 'INVALID_ROUTE', '', 'TEXT'),
(70, 'Hello Daniel chabala Your payment of K280.0 has been completed successfully.Your total contribution is K560. Thank you for being our customer', 'UNITURTLE', '0965487541', 'INVALID_ROUTE', '', 'TEXT'),
(71, 'Hello Daniel chabala Your payment of K336.0 has been completed successfully.Your total contribution is K896. Thank you for being our customer', 'UNITURTLE', '0965487541', 'INVALID_ROUTE', '', 'TEXT'),
(72, 'Hello Chiza mhlanga Your payment of K516.0 has been completed successfully.Your total contribution is K1548. Thank you for being our customer', 'UNITURTLE', '260965705357', 'SUCCESS', '', 'TEXT'),
(73, 'Hello Chiza mhlanga Your payment of K1032.0 has been completed successfully.Your total contribution is K2580. Thank you for being our customer', 'UNITURTLE', '260965705357', 'SUCCESS', '', 'TEXT'),
(74, 'Hello James Phiri You have successfully registered for our core policy. Please verify your registration using 4-6365 to activate your account. Thank you for being our customer', 'UNITURTLE', '260965376154', 'SUCCESS', '', 'TEXT'),
(75, 'Hello James Sakala You have successfully registered for our Core policy. Please verify your registration using 5-3067 to activate your account. Thank you for being our customer', 'UNITURTLE', '260965376153', 'SUCCESS', '', 'TEXT'),
(76, 'Hello James Sakala Your payment of K280.0 has been completed successfully.Your total contribution is K280. Thank you for being our customer', 'UNITURTLE', '260965376153', 'SUCCESS', '', 'TEXT'),
(77, 'Hello Jane Your payment of K392.0 has been completed successfully.Your total contribution is K392. Thank you for being our customer', 'UNITURTLE', '260965552769', 'html', '', 'TEXT'),
(78, 'Hello George Mbewe You have successfully registered for our Core policy. Please verify your registration using 8-6860 to activate your account. Thank you for being our customer', 'UNITURTLE', '260978021562', 'SUCCESS', '', 'TEXT'),
(79, 'Hello George Mbewe Your payment of K200.0 has been completed successfully.Your total contribution is K200. Thank you for being our customer', 'UNITURTLE', '260978021562', 'SUCCESS', '', 'TEXT'),
(80, 'Hello Mulela Tackson Your payment of K1246.0 has been completed successfully.Your total contribution is K1246. Thank you for being our customer', 'UNITURTLE', '260969540187', 'SUCCESS', '', 'TEXT'),
(81, 'Hello Mulela Tackson Your payment of K356.0 has been completed successfully.Your total contribution is K1602. Thank you for being our customer', 'UNITURTLE', '260969540187', 'PENDING', '', 'TEXT'),
(82, 'Hello Chiza Mhlanga Your payment of K72.0 has been completed successfully.Your total contribution is K72. Thank you for being our customer', 'UNITURTLE', '260965705357', 'PENDING', '', 'TEXT'),
(83, 'Hello Chiza Mhlanga Your payment of K144.0 has been completed successfully.Your total contribution is K216. Thank you for being our customer', 'UNITURTLE', '260965705357', 'PENDING', '', 'TEXT'),
(84, 'Hello Mulela Tackson Your payment of K178.0 has been completed successfully.Your total contribution is K1780. Thank you for being our customer', 'UNITURTLE', '260969540187', 'PENDING', '', 'TEXT'),
(85, 'Hello Chiza Mhlanga Your payment of K216.0 has been completed successfully.Your total contribution is K432. Thank you for being our customer', 'UNITURTLE', '260965705357', 'PENDING', '', 'TEXT');

-- --------------------------------------------------------

--
-- Table structure for table `system_settings`
--

CREATE TABLE `system_settings` (
  `id` int(11) NOT NULL,
  `type` text NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `system_settings`
--

INSERT INTO `system_settings` (`id`, `type`, `description`) VALUES
(1, 'sms_api', 'http://smsapi.probasesms.com/apis/text/index.php?'),
(2, 'sms_username', 'probase'),
(3, 'sms_password', 'probase');

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `transactionid` int(11) NOT NULL,
  `terminalID` varchar(20) NOT NULL,
  `transactionRef` varchar(20) NOT NULL,
  `amount` varchar(11) NOT NULL,
  `name` text NOT NULL,
  `quantity` varchar(255) NOT NULL,
  `unitPrice` text NOT NULL,
  `transactionType` varchar(60) NOT NULL,
  `policyOwner` varchar(50) NOT NULL,
  `nrc` varchar(10) DEFAULT NULL,
  `month` varchar(15) NOT NULL,
  `year` varchar(10) NOT NULL,
  `agentName` varchar(50) NOT NULL,
  `transactionDate` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`transactionid`, `terminalID`, `transactionRef`, `amount`, `name`, `quantity`, `unitPrice`, `transactionType`, `policyOwner`, `nrc`, `month`, `year`, `agentName`, `transactionDate`) VALUES
(1, 'T001  ', 'UT-78167808', '1246.0', '', '', '', 'premiums', 'Mulela Tackson', '193449101', '10', '2018', 'zmphanza', '2018-10-29 10:31:13am'),
(2, 'T001  ', 'UT-2583843', '356.0', '', '', '', 'premiums', 'Mulela Tackson', '193449101', '11', '2018', 'zmphanza', '2018-11-29 03:00:54pm'),
(3, 'T001  ', 'UT-83757711', '72.0', '', '', '', 'premiums', 'Chiza Mhlanga', '381855611', '11', '2018', 'zmphanza', '2018-11-29 03:21:28pm'),
(4, 'T001  ', 'UT-36839599', '144.0', '', '', '', 'premiums', 'Chiza Mhlanga', '381855611', '11', '2018', 'zmphanza', '2018-11-29 03:22:12pm'),
(5, 'T001  ', 'UT-82157201', '178.0', '', '', '', 'premiums', 'Mulela Tackson', '193449101', '11', '2018', 'zmphanza', '2018-11-29 03:24:59pm'),
(6, 'T002', 'UT-83614042', '216.0', '', '', '', 'premiums', 'Chiza Mhlanga', '381855611', '11', '2018', 'Jyoti', '2018-11-29 03:54:10pm');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `userID` int(11) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `gender` varchar(6) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `status` varchar(10) NOT NULL,
  `role` varchar(10) NOT NULL,
  `dateEdited` date DEFAULT NULL,
  `EditedBy` varchar(50) DEFAULT NULL,
  `mobile` varchar(14) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`userID`, `firstname`, `lastname`, `gender`, `username`, `email`, `password`, `status`, `role`, `dateEdited`, `EditedBy`, `mobile`) VALUES
(1, 'Testuser', 'Testuser', 'Male', 'admin', 'admin@mail.com ', '81dc9bdb52d04dc20036dbd8313ed055', 'Active', 'admin', '2013-08-18', '', '260974894716'),
(2, 'Test1', 'Test', 'Male', 'user', 'test@mail.com ', 'c2dbc6e311f3ecc5c6dca7857088e640', 'Active', 'user', '2014-08-18', 'Testuser Testuser', '260974894716'),
(3, 'Daniel', 'Chabala', 'Male', 'chabalad', 'chabala@probasegroup.com   ', '86d91f9bae74175fc2d5ced90fa474fe', 'Active', 'user', NULL, NULL, '260965705357');

-- --------------------------------------------------------

--
-- Table structure for table `value`
--

CREATE TABLE `value` (
  `valueID` int(11) NOT NULL,
  `AgentID` int(11) NOT NULL,
  `date` varchar(20) NOT NULL,
  `TeminalID` varchar(20) NOT NULL,
  `AmountCredit` varchar(11) NOT NULL,
  `loadedBy` varchar(50) NOT NULL,
  `transactionRef` varchar(20) NOT NULL,
  `Receipt` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `value`
--

INSERT INTO `value` (`valueID`, `AgentID`, `date`, `TeminalID`, `AmountCredit`, `loadedBy`, `transactionRef`, `Receipt`) VALUES
(1, 5, '01-08-18 : 05:51:10', 'T3', '100', 'Probase Probase', 'FL01081861', '43'),
(2, 4, '01-08-18 : 06:07:42', 'testuser', '1000', 'Probase Probase', 'FL01081877', '37'),
(3, 4, '01-08-18 : 06:09:04', 'testuser', '100', 'Probase Probase', 'FL01081866', '88'),
(4, 4, '01-08-18 : 06:10:41', 'testuser', '10', 'Probase Probase', 'FL01081838', '82'),
(5, 4, '01-08-18 : 06:10:48', 'testuser', '10', 'Probase Probase', 'FL01081832', '35'),
(6, 4, '01-08-18 : 07:46:31', 'testuser', '10000', 'Probase Probase', 'FL01081815', '46'),
(7, 5, '02-08-18 : 01:35:42', 'T3', '1000', 'Probase Probase', 'FL02081815', '46'),
(8, 5, '02-08-18 : 03:09:11', 'T3', '10000', 'Chiza Mhlanga', 'FL02081894', '43'),
(9, 6, '02-08-18 : 06:51:31', 'favou123', '10000', 'Probase Probase', 'FL02081897', '14'),
(10, 1, '08-08-18 : 09:46:40', 'T001', '100', 'Testuser Testuser', 'FL08081897', '11'),
(11, 1, '08-08-18 : 11:15:37', 'T001', '100', 'Testuser Testuser', 'FL08081846', '27'),
(12, 0, '', '', 'ioih89p5785', '', '', ''),
(13, 7, '17-08-18 : 07:25:09', 'favou123', '100', 'Test1 Test', 'FL17081823', '56'),
(14, 7, '17-08-18 : 07:35:25', 'favou123', '12', 'Test1 Test', 'FL17081879', '50'),
(15, 7, '17-08-18 : 07:38:12', 'favou123', '100', 'Test1 Test', 'FL17081811', '31'),
(16, 7, '17-08-18 : 07:38:43', 'favou123', '200', 'Test1 Test', 'FL17081843', '73'),
(17, 1, '03-10-18 : 12:08:26', 'T001  ', '100', 'Testuser Testuser', 'FL03101858', ''),
(18, 1, '03-10-18 : 12:12:48', 'T001  ', '3000', 'Testuser Testuser', 'FL03101884', ''),
(19, 8, '03-10-18 : 12:50:03', 'mbasela001', '10000', 'Testuser Testuser', 'FL03101887', ''),
(20, 7, '04-10-18 : 01:50:42', 'favou123  ', '10000', 'Testuser Testuser', 'FL04101821', ''),
(21, 1, '04-10-18 : 01:51:14', 'T001  ', '10000', 'Testuser Testuser', 'FL04101814', ''),
(22, 1, '04-10-18 : 01:51:59', 'T001  ', '10000', 'Testuser Testuser', 'FL04101813', ''),
(23, 8, '04-10-18 : 01:53:02', 'mbasela001', '10000', 'Testuser Testuser', 'FL04101882', ''),
(24, 8, '04-10-18 : 02:21:06', 'mbasela001', '100', 'Testuser Testuser', 'FL04101818', ''),
(25, 8, '04-10-18 : 02:21:15', 'mbasela001', '50', 'Testuser Testuser', 'FL04101840', ''),
(26, 8, '04-10-18 : 02:32:05', 'mbasela001', '10', 'Testuser Testuser', 'FL04101852', ''),
(27, 8, '04-10-18 : 02:39:28', 'mbasela001', '100', 'Testuser Testuser', 'FL04101892', ''),
(28, 8, '04-10-18 : 02:39:39', 'mbasela001', '100', 'Testuser Testuser', 'FL04101812', ''),
(29, 8, '04-10-18 : 02:43:26', 'mbasela001', '200', 'Testuser Testuser', 'FL04101851', ''),
(30, 8, '04-10-18 : 02:45:00', 'mbasela001', '10', 'Testuser Testuser', 'FL04101867', ''),
(31, 8, '04-10-18 : 02:46:45', 'mbasela001', '10', 'Testuser Testuser', 'FL04101865', ''),
(32, 1, '04-10-18 : 02:49:52', 'T001  ', '10', 'Testuser Testuser', 'FL04101854', ''),
(33, 7, '04-10-18 : 02:50:59', 'favou123  ', '5000', 'Testuser Testuser', 'FL04101862', ''),
(34, 7, '04-10-18 : 02:52:39', 'favou123  ', '10', 'Testuser Testuser', 'FL04101855', ''),
(35, 8, '04-10-18 : 03:07:32', 'mbasela001', '10', 'Testuser Testuser', 'FL04101883', ''),
(36, 8, '04-10-18 : 03:08:03', 'mbasela001', '10', 'Testuser Testuser', 'FL04101829', ''),
(37, 7, '04-10-18 : 03:09:14', 'favou123  ', '10', 'Testuser Testuser', 'FL04101875', ''),
(38, 7, '04-10-18 : 03:09:22', 'favou123  ', '10', 'Testuser Testuser', 'FL04101849', ''),
(39, 7, '04-10-18 : 03:23:42', 'favou123  ', '10', 'Testuser Testuser', 'FL04101870', ''),
(40, 7, '04-10-18 : 03:25:57', 'favou123  ', '300', 'Testuser Testuser', 'FL04101897', ''),
(41, 8, '04-10-18 : 03:27:15', 'mbasela001', '300', 'Testuser Testuser', 'FL04101816', ''),
(42, 8, '12-10-18 : 11:09:28', 'mbasela001', '100.00', 'Testuser Testuser', 'FL12101856', ''),
(43, 1, '29-10-18 : 10:29:07', 'T001  ', '10000', 'Testuser Testuser', 'FL29101879', ''),
(44, 8, '31-10-18 : 09:44:12', 'mbasela001', '50', 'Testuser Testuser', 'FL31101858', ''),
(45, 7, '29-11-18 : 02:46:57', 'favou123  ', '100', 'Test1 Test', 'FL29111822', ''),
(46, 7, '29-11-18 : 02:46:57', 'favou123  ', '100', 'Test1 Test', 'FL29111822', ''),
(47, 7, '29-11-18 : 02:47:40', 'favou123  ', '100', 'Test1 Test', 'FL29111893', ''),
(48, 7, '29-11-18 : 02:47:40', 'favou123  ', '100', 'Test1 Test', 'FL29111893', ''),
(49, 7, '29-11-18 : 02:50:40', 'favou123  ', '2000012', 'Test1 Test', 'FL29111855', ''),
(51, 9, '29-11-18 : 03:50:13', 'T002', '500', 'Testuser Testuser', 'FL29111837', ''),
(52, 7, '04-12-18 : 10:47:24', 'favou123  ', '100', 'Test1 Test', 'FL04121877', ''),
(53, 10, '04-12-18 : 11:34:43', '0003', '200', 'Testuser Testuser', 'FL04121845', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `audit`
--
ALTER TABLE `audit`
  ADD PRIMARY KEY (`actionID`);

--
-- Indexes for table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`clientID`);

--
-- Indexes for table `client_verification`
--
ALTER TABLE `client_verification`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `logs`
--
ALTER TABLE `logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `merchants`
--
ALTER TABLE `merchants`
  ADD PRIMARY KEY (`agentID`);

--
-- Indexes for table `premiums`
--
ALTER TABLE `premiums`
  ADD PRIMARY KEY (`premID`);

--
-- Indexes for table `sms_notifications`
--
ALTER TABLE `sms_notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_settings`
--
ALTER TABLE `system_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`transactionid`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`userID`);

--
-- Indexes for table `value`
--
ALTER TABLE `value`
  ADD PRIMARY KEY (`valueID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `audit`
--
ALTER TABLE `audit`
  MODIFY `actionID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `clients`
--
ALTER TABLE `clients`
  MODIFY `clientID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `client_verification`
--
ALTER TABLE `client_verification`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `logs`
--
ALTER TABLE `logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=159;
--
-- AUTO_INCREMENT for table `merchants`
--
ALTER TABLE `merchants`
  MODIFY `agentID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `premiums`
--
ALTER TABLE `premiums`
  MODIFY `premID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT for table `sms_notifications`
--
ALTER TABLE `sms_notifications`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;
--
-- AUTO_INCREMENT for table `system_settings`
--
ALTER TABLE `system_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `transactionid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `userID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `value`
--
ALTER TABLE `value`
  MODIFY `valueID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
