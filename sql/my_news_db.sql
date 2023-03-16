-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 11, 2023 at 04:16 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `my_news`
--

CREATE DATABASE IF NOT EXISTS `my_news` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `my_news`;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`) VALUES
(1, 'News'),
(2, 'Sport'),
(3, 'Music'),
(4, 'Business'),
(5, 'Technology'),
(6, 'Politics'),
(7, 'Health');

-- --------------------------------------------------------

--
-- Table structure for table `stories`
--

CREATE TABLE `stories` (
  `id` int(11) NOT NULL,
  `article` text NOT NULL,
  `headline` varchar(255) NOT NULL,
  `category_id` int(11) NOT NULL,
  `img_url` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stories`
--

INSERT INTO `stories` (`id`, `article`, `headline`, `category_id`, `img_url`) VALUES
(1, '\'Dolores placeat minus placeat non ut aliquam ut mollitia dolorem perferendis aut alias eaque aut tempora sed eos dolores.\', \'Consequatur a aut sunt consequatur ea aut perspiciatis. Asperiores quas molestias consequatur tempora. Aliquid aliquam fuga tenetur est.<br/>Vitae quo saepe adipisci eaque asperiores. Modi qui suscipit laboriosam voluptatem vitae quasi. Ab voluptates asperiores aut ipsa dolorum perspiciatis debitis.<br/>Itaque possimus assumenda eveniet aut. Quis nihil porro iste delectus excepturi officiis similique. Et consectetur consequatur quia reiciendis nam consectetur.<br/>Sint occaecati sed omnis ea eum quia voluptatem. Facilis ut porro aut blanditiis aliquam. Saepe fugit est dolorum voluptates labore sint dolore.<br/>Eligendi perspiciatis sed quas voluptate ex numquam modi. Totam assumenda aut ipsum ut error non reprehenderit facilis.\', \'Velit maiores suscipit iste excepturi dolor quisquam. Commodi eaque in et mollitia. Culpa molestias exercitationem eum deleniti autem est non. Temporibus corporis temporibus consequatur impedit est ex. Quia dolores repudiandae maiores.\'', 'Animi dolores atque quaerat officia rem numquam ut sit est.', 1, 'images/image1.jfif'),
(2, '\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\"\n\n', 'Nostrum dolores consequuntur', 2, 'images/image2.jfif'),
(3, 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?', 'Est ullam enim eum dolore perferendis sit culpa quidem', 1, 'images/image3.jfif'),
(4, 'At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.', 'Similique rerum similique nihil id ad est qui.', 2, 'images/image2.jfif'),
(5, 'At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.', 'Animi dolores atque quaerat officia rem numquam ut sit est.', 5, 'images/image1.jfif'),
(6, 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.\n\nThe standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.', 'Nostrum dolores consequuntur', 7, 'images/image3.jfif'),
(7, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis rutrum, turpis sed varius cursus, ligula nisl dictum ante, et vestibulum magna leo id elit. Nam ultricies, quam quis posuere ultrices, nisi odio volutpat libero, ac sollicitudin ipsum justo molestie elit. Ut lobortis sollicitudin tempus. Aliquam vitae mi vestibulum, scelerisque augue quis, commodo metus. Duis eu est sem. Morbi ac pretium nibh, ac tempor eros. Proin in gravida tellus. Nullam ultricies arcu non velit ullamcorper, eu egestas orci lacinia. Phasellus a neque in nibh lacinia ullamcorper eget sit amet erat. Nullam cursus ante eu lorem congue consectetur. Fusce bibendum, mi eu faucibus pharetra, nibh nisl mattis ipsum, sed bibendum lectus nisi vitae urna. Mauris tempor purus id metus suscipit ultrices. Vivamus ut dignissim eros.\n\nIn euismod commodo justo nec egestas. Fusce pellentesque quam a luctus malesuada. In sed velit congue, ornare elit in, vulputate nisl. Nullam pellentesque tincidunt arcu vel interdum. Integer in nisl non nisl ullamcorper tristique vulputate at tortor. Integer at pretium lorem. Integer ultricies, eros nec consectetur suscipit, velit augue faucibus felis, nec condimentum ante velit in lectus.\n\nQuisque bibendum ante sed odio iaculis viverra. Aenean auctor neque a libero bibendum bibendum. Phasellus risus orci, sodales vitae ante id, tempor iaculis ipsum. In quis tellus at mauris ultrices bibendum et sed nisl. Fusce hendrerit dolor id enim iaculis, eu feugiat augue interdum. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Etiam congue nec tortor vitae volutpat. Vestibulum auctor vehicula erat, vitae sodales ipsum eleifend sit amet. Nunc fringilla sit amet velit eget rutrum. Phasellus gravida a ante vitae suscipit. Morbi venenatis eget dolor quis feugiat. Etiam sed nibh ut nisi ultricies scelerisque. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae;', 'Est ullam enim eum dolore perferendis sit culpa quidem', 4, 'images/image2.jfif'),
(8, 'Nulla a mauris vitae nisl viverra pharetra. Aenean eget nisl nunc. Integer vitae nibh a ipsum dapibus pretium nec id velit. Nunc non sapien enim. Aenean ornare nec ex vitae malesuada. Vivamus nec metus mauris. Maecenas pellentesque ipsum sit amet condimentum sollicitudin. Vivamus interdum elit eget pulvinar blandit.\n\nDuis eget odio ac sapien commodo semper nec ut ante. Praesent commodo feugiat commodo. Donec libero orci, porttitor et nulla vel, ullamcorper finibus purus. Aliquam sed dolor augue. Quisque quis metus pulvinar, hendrerit massa ut, ornare lorem. Aenean venenatis porta enim nec sodales. Mauris at blandit neque, non faucibus diam. Mauris non tortor nunc. Suspendisse faucibus id nunc at pharetra. Duis varius ex ac nulla lacinia, eu maximus sapien commodo. Cras efficitur pharetra quam, et sodales quam sodales a.', 'Similique rerum similique nihil id ad est qui.', 1, 'images/image1.jfif');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stories`
--
ALTER TABLE `stories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `stories`
--
ALTER TABLE `stories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `stories`
--
ALTER TABLE `stories`
  ADD CONSTRAINT `stories_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
