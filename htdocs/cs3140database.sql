-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3307
-- Generation Time: Dec 12, 2021 at 01:53 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cs3140database`
--

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `cID` int(10) UNSIGNED NOT NULL,
  `cpID` int(10) UNSIGNED NOT NULL,
  `ccomment` varchar(255) NOT NULL,
  `cauthor` varchar(30) NOT NULL,
  `cauthemail` varchar(30) NOT NULL,
  `cdateposted` datetime NOT NULL,
  `capproved` char(1) NOT NULL DEFAULT '0',
  `cusername` varchar(15) DEFAULT NULL,
  `crevdate` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`cID`, `cpID`, `ccomment`, `cauthor`, `cauthemail`, `cdateposted`, `capproved`, `cusername`, `crevdate`) VALUES
(1, 1, 'Id consectetur purus ut faucibus pulvinar elementum integer enim neque. Gravida quis blandit turpis cursus in hac. Morbi quis commodo odio aenean sed adipiscing diam.', 'Im_better_at_animal_knowledge', 'nabell@bgsu.edu', '2021-12-01 13:59:02', '1', 'animalKnower505', '2021-12-10 18:59:02'),
(11, 1, 'Id consectetur purus ut faucibus pulvinar elementum integer enim neque. Gravida quis blandit turpis cursus in hac. Morbi quis commodo odio aenean sed adipiscing diam.', 'Im_better_at_animal_knowledge', 'nabell@bgsu.edu', '2021-12-01 13:59:02', '1', 'animalKnower505', '2021-12-10 18:59:02'),
(2, 1, 'Id consectetur purus ut faucibus pulvinar elementum integer enim neque. Gravida quis blandit turpis cursus in hac.', 'Im_better_at_animal_knowledge', 'nabell@bgsu.edu', '2021-12-01 13:59:02', '1', 'animalKnower505', '2021-12-10 18:59:02'),
(12, 1, 'Id consectetur purus ut faucibus pulvinar elementum integer enim neque. Gravida quis blandit turpis cursus in hac.', 'Im_better_at_animal_knowledge', 'nabell@bgsu.edu', '2021-12-01 13:59:02', '1', 'animalKnower505', '2021-12-10 18:59:02'),
(13, 1, 'ur so dumb dogs arent real', 'Im_better_at_animal_knowledge', 'nabell@bgsu.edu', '2021-12-01 13:59:02', '1', 'animalKnower505', '2021-12-10 18:59:02'),
(4, 2, 'ctum at tempor commodo ullamcorper. Et leo duis ut diam quam. Id aliquet lectus proin nibh nisl condimentum id. Hac habitasse platea dictumst quisque sagittis purus sit.', 'Im_better_at_animal_knowledge', 'nabell@bgsu.edu', '2021-12-01 13:59:02', '1', 'animalKnower505', '2021-12-10 18:59:02'),
(14, 2, 'ctum at tempor commodo ullamcorper. Et leo duis ut diam quam. Id aliquet lectus proin nibh nisl condimentum id. Hac habitasse platea dictumst quisque sagittis purus sit.', 'Im_better_at_animal_knowledge', 'nabell@bgsu.edu', '2021-12-01 13:59:02', '1', 'animalKnower505', '2021-12-10 18:59:02'),
(5, 2, 'ctum at tempor commodo ullamcorper. Et leo duis ut diam quam. Id aliquet lectus proin nibh nisl condimentum id. Hac habitasse platea dictumst quisque sagittis purus sit.', 'Im_better_at_animal_knowledge', 'nabell@bgsu.edu', '2021-12-01 13:59:02', '1', 'animalKnower505', '2021-12-10 18:59:02'),
(6, 3, 'ctum at tempor commodo ullamcorper. Et leo duis ut diam quam. Id aliquet lectus proin nibh nisl condimentum id. Hac habitasse platea dictumst quisque sagittis purus sit.', 'Im_better_at_animal_knowledge', 'nabell@bgsu.edu', '2021-12-01 13:59:02', '1', 'animalKnower505', '2021-12-10 18:59:02'),
(7, 4, 'ctum at tempor commodo ullamcorper. Et leo duis ut diam quam. Id aliquet lectus proin nibh nisl condimentum id. Hac habitasse platea dictumst quisque sagittis purus sit.', 'Im_better_at_animal_knowledge', 'nabell@bgsu.edu', '2021-12-01 13:59:02', '1', 'animalKnower505', '2021-12-10 18:59:02'),
(8, 4, 'ctum at tempor commodo ullamcorper. Et leo duis ut diam quam. Id aliquet lectus proin nibh nisl condimentum id. Hac habitasse platea dictumst quisque sagittis purus sit.', 'Im_better_at_animal_knowledge', 'nabell@bgsu.edu', '2021-12-01 13:59:02', '1', 'animalKnower505', '2021-12-10 18:59:02'),
(9, 5, 'ctum at tempor commodo ullamcorper. Et leo duis ut diam quam. Id aliquet lectus proin nibh nisl condimentum id. Hac habitasse platea dictumst quisque sagittis purus sit.', 'Im_better_at_animal_knowledge', 'nabell@bgsu.edu', '2021-12-01 13:59:02', '1', 'animalKnower505', '2021-12-10 18:59:02'),
(10, 5, 'ctum at tempor commodo ullamcorper. Et leo duis ut diam quam. Id aliquet lectus proin nibh nisl condimentum id. Hac habitasse platea dictumst quisque sagittis purus sit.', 'Im_better_at_animal_knowledge', 'nabell@bgsu.edu', '2021-12-01 13:59:02', '1', 'animalKnower505', '2021-12-10 18:59:02'),
(3, 5, 'ctum at tempor commodo ullamcorper. Et leo duis ut diam quam. Id aliquet lectus proin nibh nisl condimentum id. Hac habitasse platea dictumst quisque sagittis purus sit.', 'Im_better_at_animal_knowledge', 'nabell@bgsu.edu', '2021-12-01 13:59:02', '1', 'animalKnower505', '2021-12-10 18:59:02'),
(15, 5, 'ctum at tempor commodo ullamcorper. Et leo duis ut diam quam. Id aliquet lectus proin nibh nisl condimentum id. Hac habitasse platea dictumst quisque sagittis purus sit.', 'Im_better_at_animal_knowledge', 'nabell@bgsu.edu', '2021-12-01 13:59:02', '1', 'animalKnower505', '2021-12-10 18:59:02');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `pID` int(10) UNSIGNED NOT NULL,
  `pheading` varchar(50) NOT NULL,
  `psubheading` text NOT NULL,
  `pkeywords` varchar(20) NOT NULL,
  `pcontent` longtext NOT NULL,
  `pallowcomment` char(1) NOT NULL DEFAULT '1',
  `pyear` varchar(4) NOT NULL DEFAULT '2009',
  `pmonth` varchar(2) NOT NULL DEFAULT '01',
  `pdateposted` datetime NOT NULL,
  `pauthor` varchar(30) NOT NULL DEFAULT 'Default Name',
  `pusername` varchar(15) DEFAULT NULL,
  `prevdate` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`pID`, `pheading`, `psubheading`, `pkeywords`, `pcontent`, `pallowcomment`, `pyear`, `pmonth`, `pdateposted`, `pauthor`, `pusername`, `prevdate`) VALUES
(1, 'Dog', 'Cute little dog', 'first, prime,\r\nuno', '<p>\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Velit aliquet sagittis id consectetur purus ut faucibus pulvinar. Purus semper eget duis at tellus at. Eleifend donec pretium vulputate sapien nec sagittis aliquam malesuada bibendum. Sem integer vitae justo eget magna fermentum iaculis eu. Egestas pretium aenean pharetra magna ac placerat. Id diam vel quam elementum pulvinar. Pharetra convallis posuere morbi leo urna molestie at elementum eu. Pellentesque habitant morbi tristique senectus. Suscipit tellus mauris a diam maecenas sed. Fringilla phasellus faucibus scelerisque eleifend donec. Pellentesque habitant morbi tristique senectus et. Viverra aliquet eget sit amet tellus cras. Magna eget est lorem ipsum dolor. Quis imperdiet massa tincidunt nunc pulvinar sapien.\r\n<br>\r\nRhoncus mattis rhoncus urna neque viverra justo. Sem fringilla ut morbi tincidunt augue interdum velit euismod in. Integer eget aliquet nibh praesent tristique. Et netus et malesuada fames ac turpis. Nunc id cursus metus aliquam eleifend mi in nulla posuere. Morbi tristique senectus et netus et malesuada. Tellus integer feugiat scelerisque varius. Consectetur adipiscing elit ut aliquam purus sit amet luctus venenatis. Tortor at risus viverra adipiscing at in tellus. Pellentesque habitant morbi tristique senectus et netus et. Ut ornare lectus sit amet est placerat in. Vulputate odio ut enim blandit. Viverra maecenas accumsan lacus vel facilisis volutpat est velit.\r\n<br>\r\nPlatea dictumst vestibulum rhoncus est pellentesque elit ullamcorper. Ultricies mi quis hendrerit dolor magna eget est. Proin nibh nisl condimentum id venenatis. Eget nunc lobortis mattis aliquam faucibus purus in massa. Amet massa vitae tortor condimentum lacinia quis vel eros donec. A pellentesque sit amet porttitor eget dolor morbi non arcu. Laoreet id donec ultrices tincidunt arcu non. Pharetra magna ac placerat vestibulum lectus mauris ultrices eros in. Facilisis volutpat est velit egestas dui id ornare arcu odio. Eros in cursus turpis massa. In dictum non consectetur a erat nam at. Tortor condimentum lacinia quis vel eros. Laoreet id donec ultrices tincidunt arcu. Pharetra massa massa ultricies mi quis hendrerit dolor magna. Nec ullamcorper sit amet risus nullam eget. Id venenatis a condimentum vitae sapien pellentesque habitant morbi tristique. Augue neque gravida in fermentum et sollicitudin. Quisque non tellus orci ac auctor augue mauris. Risus ultricies tristique nulla aliquet enim tortor at auctor urna.\r\n\r\n</p>', '1', '2018', '01', '2021-12-01 18:12:49', 'dogLover129', 'admin', '2018-01-27 13:11:03'),
(2, 'Walrus', 'is he cold?', 'tusks, blubber', '<p> Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Fringilla est ullamcorper eget nulla facilisi. Ornare arcu dui vivamus arcu felis. At augue eget arcu dictum varius duis at consectetur lorem. Lorem ipsum dolor sit amet consectetur adipiscing. Arcu non sodales neque sodales ut etiam sit amet nisl. Euismod in pellentesque massa placerat. Tellus in hac habitasse platea dictumst vestibulum. Amet nisl suscipit adipiscing bibendum est ultricies integer. Nunc sed id semper risus. Diam in arcu cursus euismod quis viverra nibh cras. Est ante in nibh mauris. Cras fermentum odio eu feugiat pretium nibh ipsum consequat. Amet cursus sit amet dictum sit amet justo donec. Ultricies leo integer malesuada nunc. Venenatis a condimentum vitae sapien pellentesque habitant morbi. Consequat interdum varius sit amet mattis vulputate enim nulla. Id interdum velit laoreet id donec ultrices tincidunt arcu non. Volutpat odio facilisis mauris sit.\r\n<br>\r\nVolutpat consequat mauris nunc congue nisi vitae suscipit. Cursus turpis massa tincidunt dui ut ornare lectus. Vehicula ipsum a arcu cursus vitae congue mauris. Placerat vestibulum lectus mauris ultrices. Et pharetra pharetra massa massa ultricies. Elementum integer enim neque volutpat ac tincidunt vitae. Lorem dolor sed viverra ipsum nunc aliquet bibendum. Magna etiam tempor orci eu. A diam sollicitudin tempor id eu nisl. Enim diam vulputate ut pharetra sit amet aliquam. Phasellus egestas tellus rutrum tellus pellentesque eu tincidunt tortor aliquam. Integer malesuada nunc vel risus commodo. Justo eget magna fermentum iaculis. Cursus eget nunc scelerisque viverra mauris in aliquam. Pellentesque pulvinar pellentesque habitant morbi tristique senectus et. Nunc non blandit massa enim nec dui nunc mattis enim. Egestas fringilla phasellus faucibus scelerisque eleifend donec pretium. Aliquet risus feugiat in ante metus. Ornare quam viverra orci sagittis eu. Sit amet facilisis magna etiam tempor orci.\r\n<br>\r\nTincidunt eget nullam non nisi. Amet massa vitae tortor condimentum lacinia quis vel eros donec. Posuere lorem ipsum dolor sit amet consectetur adipiscing elit duis. Eget gravida cum sociis natoque. Turpis nunc eget lorem dolor. Et netus et malesuada fames ac turpis egestas maecenas pharetra. Imperdiet sed euismod nisi porta lorem mollis aliquam ut. Lacus sed viverra tellus in hac habitasse platea dictumst. Nunc mi ipsum faucibus vitae aliquet nec ullamcorper sit amet. Risus pretium quam vulputate dignissim. Gravida arcu ac tortor dignissim.\r\n</p>\r\n', '1', '2009', '01', '2021-12-02 20:40:12', 'Default Name', 'WalrusFan', '2021-12-10 01:40:12'),
(3, 'Dragon', 'Slinking Dragon', 'Venom, claws', '<p> Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Fringilla est ullamcorper eget nulla facilisi. Ornare arcu dui vivamus arcu felis. At augue eget arcu dictum varius duis at consectetur lorem. Lorem ipsum dolor sit amet consectetur adipiscing. Arcu non sodales neque sodales ut etiam sit amet nisl. Euismod in pellentesque massa placerat. Tellus in hac habitasse platea dictumst vestibulum. Amet nisl suscipit adipiscing bibendum est ultricies integer. Nunc sed id semper risus. Diam in arcu cursus euismod quis viverra nibh cras. Est ante in nibh mauris. Cras fermentum odio eu feugiat pretium nibh ipsum consequat. Amet cursus sit amet dictum sit amet justo donec. Ultricies leo integer malesuada nunc. Venenatis a condimentum vitae sapien pellentesque habitant morbi. Consequat interdum varius sit amet mattis vulputate enim nulla. Id interdum velit laoreet id donec ultrices tincidunt arcu non. Volutpat odio facilisis mauris sit.\r\n<br>\r\nVolutpat consequat mauris nunc congue nisi vitae suscipit. Cursus turpis massa tincidunt dui ut ornare lectus. Vehicula ipsum a arcu cursus vitae congue mauris. Placerat vestibulum lectus mauris ultrices. Et pharetra pharetra massa massa ultricies. Elementum integer enim neque volutpat ac tincidunt vitae. Lorem dolor sed viverra ipsum nunc aliquet bibendum. Magna etiam tempor orci eu. A diam sollicitudin tempor id eu nisl. Enim diam vulputate ut pharetra sit amet aliquam. Phasellus egestas tellus rutrum tellus pellentesque eu tincidunt tortor aliquam. Integer malesuada nunc vel risus commodo. Justo eget magna fermentum iaculis. Cursus eget nunc scelerisque viverra mauris in aliquam. Pellentesque pulvinar pellentesque habitant morbi tristique senectus et. Nunc non blandit massa enim nec dui nunc mattis enim. Egestas fringilla phasellus faucibus scelerisque eleifend donec pretium. Aliquet risus feugiat in ante metus. Ornare quam viverra orci sagittis eu. Sit amet facilisis magna etiam tempor orci.\r\n<br>\r\nTincidunt eget nullam non nisi. Amet massa vitae tortor condimentum lacinia quis vel eros donec. Posuere lorem ipsum dolor sit amet consectetur adipiscing elit duis. Eget gravida cum sociis natoque. Turpis nunc eget lorem dolor. Et netus et malesuada fames ac turpis egestas maecenas pharetra. Imperdiet sed euismod nisi porta lorem mollis aliquam ut. Lacus sed viverra tellus in hac habitasse platea dictumst. Nunc mi ipsum faucibus vitae aliquet nec ullamcorper sit amet. Risus pretium quam vulputate dignissim. Gravida arcu ac tortor dignissim.\r\n</p>\r\n', '1', '2009', '01', '2021-11-26 20:40:12', 'Default Name', 'Dragon_man123', '2021-12-10 01:40:12'),
(4, 'Lion', 'Slinking Dragon', 'Claws, Roar, Lion', '<p> Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Fringilla est ullamcorper eget nulla facilisi. Ornare arcu dui vivamus arcu felis. At augue eget arcu dictum varius duis at consectetur lorem. Lorem ipsum dolor sit amet consectetur adipiscing. Arcu non sodales neque sodales ut etiam sit amet nisl. Euismod in pellentesque massa placerat. Tellus in hac habitasse platea dictumst vestibulum. Amet nisl suscipit adipiscing bibendum est ultricies integer. Nunc sed id semper risus. Diam in arcu cursus euismod quis viverra nibh cras. Est ante in nibh mauris. Cras fermentum odio eu feugiat pretium nibh ipsum consequat. Amet cursus sit amet dictum sit amet justo donec. Ultricies leo integer malesuada nunc. Venenatis a condimentum vitae sapien pellentesque habitant morbi. Consequat interdum varius sit amet mattis vulputate enim nulla. Id interdum velit laoreet id donec ultrices tincidunt arcu non. Volutpat odio facilisis mauris sit.\r\n<br>\r\nVolutpat consequat mauris nunc congue nisi vitae suscipit. Cursus turpis massa tincidunt dui ut ornare lectus. Vehicula ipsum a arcu cursus vitae congue mauris. Placerat vestibulum lectus mauris ultrices. Et pharetra pharetra massa massa ultricies. Elementum integer enim neque volutpat ac tincidunt vitae. Lorem dolor sed viverra ipsum nunc aliquet bibendum. Magna etiam tempor orci eu. A diam sollicitudin tempor id eu nisl. Enim diam vulputate ut pharetra sit amet aliquam. Phasellus egestas tellus rutrum tellus pellentesque eu tincidunt tortor aliquam. Integer malesuada nunc vel risus commodo. Justo eget magna fermentum iaculis. Cursus eget nunc scelerisque viverra mauris in aliquam. Pellentesque pulvinar pellentesque habitant morbi tristique senectus et. Nunc non blandit massa enim nec dui nunc mattis enim. Egestas fringilla phasellus faucibus scelerisque eleifend donec pretium. Aliquet risus feugiat in ante metus. Ornare quam viverra orci sagittis eu. Sit amet facilisis magna etiam tempor orci.\r\n<br>\r\nTincidunt eget nullam non nisi. Amet massa vitae tortor condimentum lacinia quis vel eros donec. Posuere lorem ipsum dolor sit amet consectetur adipiscing elit duis. Eget gravida cum sociis natoque. Turpis nunc eget lorem dolor. Et netus et malesuada fames ac turpis egestas maecenas pharetra. Imperdiet sed euismod nisi porta lorem mollis aliquam ut. Lacus sed viverra tellus in hac habitasse platea dictumst. Nunc mi ipsum faucibus vitae aliquet nec ullamcorper sit amet. Risus pretium quam vulputate dignissim. Gravida arcu ac tortor dignissim.\r\n</p>\r\n', '1', '2009', '01', '2021-12-04 20:40:12', 'Default Name', 'Animal_Enjoyer', '2021-12-10 01:40:12'),
(5, 'Panda', 'Cute Panda', 'Claws, Roar, Lion', '<p> Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Fringilla est ullamcorper eget nulla facilisi. Ornare arcu dui vivamus arcu felis. At augue eget arcu dictum varius duis at consectetur lorem. Lorem ipsum dolor sit amet consectetur adipiscing. Arcu non sodales neque sodales ut etiam sit amet nisl. Euismod in pellentesque massa placerat. Tellus in hac habitasse platea dictumst vestibulum. Amet nisl suscipit adipiscing bibendum est ultricies integer. Nunc sed id semper risus. Diam in arcu cursus euismod quis viverra nibh cras. Est ante in nibh mauris. Cras fermentum odio eu feugiat pretium nibh ipsum consequat. Amet cursus sit amet dictum sit amet justo donec. Ultricies leo integer malesuada nunc. Venenatis a condimentum vitae sapien pellentesque habitant morbi. Consequat interdum varius sit amet mattis vulputate enim nulla. Id interdum velit laoreet id donec ultrices tincidunt arcu non. Volutpat odio facilisis mauris sit.\r\n<br>\r\nVolutpat consequat mauris nunc congue nisi vitae suscipit. Cursus turpis massa tincidunt dui ut ornare lectus. Vehicula ipsum a arcu cursus vitae congue mauris. Placerat vestibulum lectus mauris ultrices. Et pharetra pharetra massa massa ultricies. Elementum integer enim neque volutpat ac tincidunt vitae. Lorem dolor sed viverra ipsum nunc aliquet bibendum. Magna etiam tempor orci eu. A diam sollicitudin tempor id eu nisl. Enim diam vulputate ut pharetra sit amet aliquam. Phasellus egestas tellus rutrum tellus pellentesque eu tincidunt tortor aliquam. Integer malesuada nunc vel risus commodo. Justo eget magna fermentum iaculis. Cursus eget nunc scelerisque viverra mauris in aliquam. Pellentesque pulvinar pellentesque habitant morbi tristique senectus et. Nunc non blandit massa enim nec dui nunc mattis enim. Egestas fringilla phasellus faucibus scelerisque eleifend donec pretium. Aliquet risus feugiat in ante metus. Ornare quam viverra orci sagittis eu. Sit amet facilisis magna etiam tempor orci.\r\n<br>\r\nTincidunt eget nullam non nisi. Amet massa vitae tortor condimentum lacinia quis vel eros donec. Posuere lorem ipsum dolor sit amet consectetur adipiscing elit duis. Eget gravida cum sociis natoque. Turpis nunc eget lorem dolor. Et netus et malesuada fames ac turpis egestas maecenas pharetra. Imperdiet sed euismod nisi porta lorem mollis aliquam ut. Lacus sed viverra tellus in hac habitasse platea dictumst. Nunc mi ipsum faucibus vitae aliquet nec ullamcorper sit amet. Risus pretium quam vulputate dignissim. Gravida arcu ac tortor dignissim.\r\n</p>\r\n', '1', '2009', '01', '2021-12-05 20:40:12', 'Default Name', 'Animal_Enjoyer', '2021-12-10 01:40:12'),
(6, 'Zebra', 'Graceful Zebra', 'Claws, Roar, Lion', '<p> Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Fringilla est ullamcorper eget nulla facilisi. Ornare arcu dui vivamus arcu felis. At augue eget arcu dictum varius duis at consectetur lorem. Lorem ipsum dolor sit amet consectetur adipiscing. Arcu non sodales neque sodales ut etiam sit amet nisl. Euismod in pellentesque massa placerat. Tellus in hac habitasse platea dictumst vestibulum. Amet nisl suscipit adipiscing bibendum est ultricies integer. Nunc sed id semper risus. Diam in arcu cursus euismod quis viverra nibh cras. Est ante in nibh mauris. Cras fermentum odio eu feugiat pretium nibh ipsum consequat. Amet cursus sit amet dictum sit amet justo donec. Ultricies leo integer malesuada nunc. Venenatis a condimentum vitae sapien pellentesque habitant morbi. Consequat interdum varius sit amet mattis vulputate enim nulla. Id interdum velit laoreet id donec ultrices tincidunt arcu non. Volutpat odio facilisis mauris sit.\r\n<br>\r\nVolutpat consequat mauris nunc congue nisi vitae suscipit. Cursus turpis massa tincidunt dui ut ornare lectus. Vehicula ipsum a arcu cursus vitae congue mauris. Placerat vestibulum lectus mauris ultrices. Et pharetra pharetra massa massa ultricies. Elementum integer enim neque volutpat ac tincidunt vitae. Lorem dolor sed viverra ipsum nunc aliquet bibendum. Magna etiam tempor orci eu. A diam sollicitudin tempor id eu nisl. Enim diam vulputate ut pharetra sit amet aliquam. Phasellus egestas tellus rutrum tellus pellentesque eu tincidunt tortor aliquam. Integer malesuada nunc vel risus commodo. Justo eget magna fermentum iaculis. Cursus eget nunc scelerisque viverra mauris in aliquam. Pellentesque pulvinar pellentesque habitant morbi tristique senectus et. Nunc non blandit massa enim nec dui nunc mattis enim. Egestas fringilla phasellus faucibus scelerisque eleifend donec pretium. Aliquet risus feugiat in ante metus. Ornare quam viverra orci sagittis eu. Sit amet facilisis magna etiam tempor orci.\r\n<br>\r\nTincidunt eget nullam non nisi. Amet massa vitae tortor condimentum lacinia quis vel eros donec. Posuere lorem ipsum dolor sit amet consectetur adipiscing elit duis. Eget gravida cum sociis natoque. Turpis nunc eget lorem dolor. Et netus et malesuada fames ac turpis egestas maecenas pharetra. Imperdiet sed euismod nisi porta lorem mollis aliquam ut. Lacus sed viverra tellus in hac habitasse platea dictumst. Nunc mi ipsum faucibus vitae aliquet nec ullamcorper sit amet. Risus pretium quam vulputate dignissim. Gravida arcu ac tortor dignissim.\r\n</p>\r\n', '1', '2009', '01', '2021-11-23 20:40:12', 'Default Name', 'Animal_Enjoyer', '2021-12-10 01:40:12');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`cID`);
ALTER TABLE `comments` ADD FULLTEXT KEY `ccomment` (`ccomment`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`pID`);
ALTER TABLE `posts` ADD FULLTEXT KEY `pheading` (`pheading`,`pkeywords`);
ALTER TABLE `posts` ADD FULLTEXT KEY `pcontent` (`pcontent`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `cID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `pID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
