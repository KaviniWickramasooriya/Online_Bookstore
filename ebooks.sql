-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:4306
-- Generation Time: Jun 29, 2023 at 11:43 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ebooks`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `userid` int(11) DEFAULT NULL,
  `itemid` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `cart_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orderdetails`
--

CREATE TABLE `orderdetails` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `zipcode` varchar(10) NOT NULL,
  `userid` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `P_ID` int(11) NOT NULL,
  `P_Name` varchar(255) NOT NULL,
  `Price` int(11) NOT NULL,
  `P_Description` varchar(5000) NOT NULL,
  `Image_URL` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`P_ID`, `P_Name`, `Price`, `P_Description`, `Image_URL`) VALUES
(1, 'THE TOWER OF NERO', 3500, 'The Tower of Nero is the fifth and final book in Rick Riordans Trials of Apollo series. It follows the Greek god Apollo turned mortal Lester Papadopoulos, as he continues his quest to restore the power of the prophecy, take down the power-hungry Roman emperors, and regain his seat on Mount Olympus.', 'images/Book 5.jpg'),
(2, 'ELON MUSK - ANAGATHAYA WENAS KALA MINISA - එලොන් මස්ක්', 1500, 'ලොව වඩාත්ම කතාබහට ලක්වන පුද්ගලයෙකු ලෙස සුප්‍රකට ටයිම් සඟරාවේ කවරයටද ගිය ‘එලොන් මස්ක්‘ ගැන නොදන්නා කෙනෙක් දැන් නොමැති තරම්. ගෙවීගිය 2021 වසරේදී ඔහු ලොව ධනවත්ම පුද්ගලයා ලෙස කිරුළු පැළඳුවේ එතෙක් එම කිරුලේ හිමිකාරත්වය දැරූ ජෙෆ් බෙසෝගෙන් එය ඩැහැ ගනිමිනුයි. ටෙස්ලා, ස්පේස්එක්ස්, නියුරාලින්ක්, සෝලර්සිටි වැනි ජාත්‍යන්තරයේ නම් දැරූ සමාගම් කිහිපයකම සාඩම්බර හිමිකරු වන්නේ මස්ක්ය. ඔහුගේ සමස්ත වටිනාකම ඇ.ඩොලර් බිලියන එකසිය අසූපහා ඉක්මවීම, ඔහුව මෙම ජයග්‍රාහී කඩඉම වෙත ගෙන ආවේය. කවදත් අන් අය නොකරන, රැඩිකල් තාලයේ අලුත්ම වැඩ කරන, ඒ නිසාම ලොවේම අවධානයට ලක්වන මස්ක්ගේ සාර්ථකත්වයට මුල්වූ සැබෑ හේතුව කුමක්ද ? ඒ ගැන විමසමින් සිදුකළ සම්මුඛ සාකච්ඡාවකදී තම සාර්ථකත්වය පිටුපස සැඟවුණු රහස් කිහිපයක්ම හෙළි කර තිබුණේ කාටත් ආදර්ශයක් ගැනීම පිණිසය. මේ මස්ක්ම කියන පරිදි ඔහුගේ සාර්ථකත්වයට මඟ හෙළිකළ ආකල්පමය රහස් කිහිපයකි.', 'images/Book 4.jpg'),
(3, 'AN ISLANDS ELEVEN HC', 500, 'From Sathasivam to Sangakkara, Murali to Malinga, Sri Lanka can lay claim to some of the world’s most remarkable cricketers – larger-than-life characters who thumbed convention and played the game their own way. More so than anywhere else in the world, Sri Lankan cricket has an identity. This is the land of pint-sized swashbuckling batsman, on-the-fly innovators and contorted, cryptic spinners. On the field of play, Victorian ideals of the past collide with madcap tropical hedonism to create something dizzying. Cricket is Sri Lanka, and Sri Lanka is cricket. We all know the story of the ’96 World Cup: how a team of unfancied amateurs rose from obscurity to the top the world, doing so with such swagger that they changed the way the game was played. Yet the lore of Sri Lankan cricket stretches back much further.', 'images/Book 6.jpg'),
(4, 'THE HOBBIT', 1000, 'The Hobbit, or There and Back Again is a children s fantasy novel by English author J. R. R. Tolkien. It was published in 1937 to wide critical acclaim, being nominated for the Carnegie Medal and awarded a prize from the New York Herald Tribune for best juvenile fiction.Originally published: September 21, 1937\r\nAuthor: J. R. R. Tolkien\r\nCharacters: Bilbo Baggins, Gandalf, Thorin Oakenshield, Gollum', 'images/Book 7.jpg'),
(5, 'THE CHILDRENS BIBLE', 1500, '75% liked this book\r\nA Childrens Bible is a climate fiction novel by Lydia Millet that documents the experience of a group of children in the face of climate change as their parents fail to respond to a climate-charged hurricane. It was her 13th novel.\r\nOriginally published: May 12, 2020\r\nAuthor: Lydia Millet', 'images/Book 8.jpg'),
(6, 'THE SWORD AND THE SHIELD', 2500, 'This dual biography of Malcolm X and Martin Luther King upends longstanding preconceptions to transform our understanding of the twentieth centurys most iconic African American leaders.\r\n\r\nOriginally published: March 31, 2020\r\n\r\nAuthor: Peniel E. Joseph\r\n\r\nGenre: Biography', 'images/Book 9.jpg'),
(7, 'HARRY POTTER AND THE PHILOSOPHERS STONE', 1800, 'Harry Potter and the Philosophers Stone is a fantasy novel written by British author J. K. Rowling\r\n\r\nOriginally published: June 26, 1997\r\n\r\nFollowed by: Harry Potter and the Chamber of Secrets\r\n\r\nCharacters: Harry Potter, Hermione Granger, Lord Voldemort, MORE', 'images/Book 10.jpg'),
(8, 'රොබින් ෂර්මා ඒ අපූරු මග – E Apuru Maga', 950, '( විශිෂ්ට නායකයන්ගේ පිළිවෙත් 8 )\r\n\r\nජීවිතයේ විශාලම දුක් ගැහැටවලට මුහුණ දෙන්නේ ද, සෙසු අයට විශාලම හානියක් සිදු කරන්නේ ද, තම සහෝදර ජනයා ගැන සැලකිල්ලක් නොදක්වන මිනිසුන්ය. සියලූ මානව පරාජයන් පැන නැෙඟන්නේ එබඳු පුද්ගලයන් තුළිනි.\r\n- ඇල්ෆ‍්‍රඞ් ඇඞ්ලර්', 'images/Book 11.jpg'),
(9, 'Malagiya Aththo', 800, 'The novel Malagiya Aththo written by Prof. Ediriweera Sarathchandra was first published in 1958. Critics define this book as another turning point in the history of Sinhala novels, as it is written in a professional way, combining the environment, emotions, knowledge, all together, while standing apart from traditional love stories.\r\nThe language used is strong. The creativity and taste of the language can be seen to have greatly influenced the success of the novel and this could be something really interesting for all the humans above 14years.', 'images/Book 12.jpg'),
(10, 'WANT : A NOVEL', 1200, 'Named a Best Book of 2020 by Time Magazine, The Los Angeles Times, NPR, Vulture, The New Yorker, and Kirkus Grappling with motherhood, economic anxiety, rage, and the limits of language, Want is a fiercely personal novel that vibrates with anger, insight, and love.\r\nThe language used is strong. The creativity and taste of the language can be seen to have greatly influenced the success of the novel and this could be something really interesting for all the humans above 14years.\r\n\r\nOriginally published: July 7, 2020\r\n\r\nAuthor: Lynn Steger Strong', 'images/Book 13.jpg'),
(11, 'CAN YOU JUST SIT WITH ME', 1200, 'Healthy Grieving for the Losses of Life\r\nby Natasha Smith\r\n\r\n>> Christian Living\r\n>> Death & Grief\r\n>> Christian Living\r\n>> Depression & Anxiety\r\n\r\nPublished: September 26, 2023', 'images/Book 14.jpg'),
(12, 'SHAPED BY SUFFERING', 1500, 'How Temporary Hardships Prepare Us for Our Eternal Home\r\nby Kenneth Boa\r\nWith Jenny Abel\r\n\r\n\"The God of all grace, who called you to his eternal glory in Christ, after you have suffered a little while, will himself restore you and make you strong, firm and steadfast.\"\r\n\r\nSuffering comes to us all. It may be disease or debilitation, pain or persecution. Our difficulties may be invisible to others or impossible to hide. Sometimes we suffer because of our Christian witness. Other times its simply part of living in a fallen world. But suffering affects us all, in ways we dont always anticipate.', 'images/Book 15.jpg'),
(13, 'A YEAR OF SLOWING DOWN', 2000, 'Daily Devotions for Unhurried Living\r\nby Alan Fadling\r\nPublished: December 06, 2022\r\n\r\nWith the overwhelming pace of life, many of us struggle to stop long enough to be present. Our long to-do lists and full calendars leave little breathing room to hear from God. We know we need to slow down but we dont even know how to begin.\r\nAlan Fadling has spent years coaching leaders and communities on how to live an unhurried life, teaching that productivity and success are not our chief end, but rather living at the pace that our true self longs to live. Designed to help you center your day around Gods loving presence, A Year of Slowing Down offers six devotionals for each week of the year. Each day begins with a Scripture passage followed by a short reading and a reflection question.', 'images/Book 16.jpg'),
(14, 'TRUE COMPANIONS', 1100, 'A Book for Everyone About the Relationships That See Us Through\r\n\r\nTRUE COMPANIONS SET\r\nBy Kelly Flanagan\r\nForeword by Ian Morgan Cron\r\n\r\nWhen we quit sabotaging intimacy in our relationships by demanding unconditional love, we discover something much greater—the deeply satisfying, transformational love that is companionship.\r\nIn these pages psychologist Kelly Flanagan shows how each of us has within ourselves, exactly the way we are, the gifts that are needed to cultivate the life-long relationships we are longing for, whether it is within marriage or friendship. He shows us how self-knowledge leads the way to growing in love for both God and others. He shows us how understanding our own loneliness can help us relieve the pressure on our companions. And he shows us how understanding our own psychological and emotional defenses can help us to make the choice to love more vulnerably.', 'images/Book 17.jpg'),
(15, 'Parents in Pain', 1450, 'by John White\r\nPublished: June 22, 1979\r\nA wallet disappears from your dresser and youre sure who took it--at least, somewhat sure.\r\nMany parents face problems beyond their ability to cope. John White ofers comfort to parents of children with severe problems--alcoholism, homosexuality, even suicide. Though he gives practical suggestions, this is not a how-to manual for making rebellious children behave. Rather the author helps all parents deal with their own guilt, frustration, anger and sense of inadequacy.\r\n\r\n\r\nWhite first asks, Why has the child rearing become such a complicated task? He looks to common sense, science and the Bible for an answer. Next he focuses on the parent-child relationship itself as trust erodes, arguments arise and the need for professional or legal counsel develops. Finally, he cautions us to avoid parenting techniques which emphasize pragmatism at the expense of what is moral and just.', 'images/Book 18.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`cart_id`);

--
-- Indexes for table `orderdetails`
--
ALTER TABLE `orderdetails`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `cart_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `orderdetails`
--
ALTER TABLE `orderdetails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
