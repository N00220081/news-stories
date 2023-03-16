-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 13, 2023 at 04:40 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `news_stories`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`) VALUES
(100, 'crime'),
(101, 'financial'),
(102, 'world'),
(103, 'politics'),
(104, 'business'),
(105, 'ireland'),
(106, 'entertainment'),
(107, 'equality'),
(108, 'enviroment'),
(109, 'technology'),
(110, 'sports');

-- --------------------------------------------------------

--
-- Table structure for table `stories`
--

CREATE TABLE `stories` (
  `id` int(11) NOT NULL,
  `headline` varchar(200) NOT NULL,
  `sub_heading` varchar(255) NOT NULL,
  `article` text NOT NULL,
  `author` varchar(100) NOT NULL,
  `published_date` date NOT NULL,
  `published_time` time NOT NULL,
  `image` varchar(100) NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `stories`
--

INSERT INTO `stories` (`id`, `headline`, `sub_heading`, `article`, `author`, `published_date`, `published_time`, `image`, `category_id`) VALUES
(1, 'Teenager sentenced to life for murder of Urantsetseg Tserendorj', 'Boy, aged 14 at time of the attack, will have case reviewed after 13 years following Government statements on law reform', 'The 17-year-old who stabbed Urantsetseg Tserendorj to death has been detained for life with a review after 13 years following Government statements that legislation will provide new sentencing structures for juveniles convicted of serious crimes.The teenager’s sentencing had been delayed after the trial judge Mr Justice Tony Hunt noted that there was no provision in legislation to allow judges to suspend any portion of the defendant’s sentence.He said the judge reviewing his case after 13 years would therefore be left with an “all or nothing” approach to either release the child without any way to incentivise good behaviour, or keep him in detention indefinitely.Mr Justice Hunt on Monday said that he was “encouraged” by what he had heard in the media from statements made in the Dáil and by the Department of Justice.', ' Eoin Reynolds', '2023-02-20', '11:25:00', '', 100),
(2, 'Revolut users fall victim to convincing scam text message', 'Financial Services and Pensions Ombudsman dealing with surge in complaints linked to payments app', 'An increasing number of Revolut users in the Republic have fallen victim to a convincing scam text message that appears to be from the payments app.\r\n\r\nThe text, which asks customers to verify their details or face having their accounts frozen, contains a link that brings users to what appears to be a legitimate Revolut page. The scammer then uses this as a way to trick customers into putting in their Revolut pins.\r\n\r\nMoney is then fraudulently removed from their accounts and placed into a separate crypto account, which cannot be traced.\r\n\r\nThe Financial Services and Pensions Ombudsman (FSPO) is said to be dealing with a rise in complaints related to Revolut and this type of phishing.', 'Eoin Burke-Kennedy', '2023-02-21', '12:39:00', '', 101),
(3, 'Six people killed and dozens injured after fresh earthquake hits Turkey-Syria border', 'New earthquake comes after larger quake killed more than 47,000 people two weeks ago', 'Six people were killed when two fresh earthquakes struck the province of Hatay in Turkey, exactly two weeks after the region was devastated by larger tremors that killed almost 45,000 people.\r\n\r\nRescue teams were searching for five people trapped in the rubble of newly collapsed buildings, interior minister Süleyman Soylu said in a live broadcast on Monday evening, after the quakes measuring 6.4 and 5.8 in magnitude struck just minutes apart. As of Tuesday, six people were confirmed dead and a further 6,254 were injured.', 'Ayla Jean Yackley', '2023-02-21', '07:31:00', '', 102),
(4, 'Cost of living package: €200 welfare bonus, €100 child benefit top-up and retention of 9% hospitality VAT\r\n', 'Details announced by Government after Cabinet meeting\r\n', '\"The government has signed off on a €1.3 billion package of cost of living measures, including €200 bonus welfare payments, a €100 child benefit top-up, more generous supports for businesses to meet energy costs, and an extension of the lower VAT rate of 9 per cent for the hospitality industry.\r\n\r\nAt a meeting of the Cabinet on Tuesday morning, a range of new spending measures and extensions to tax cuts was agreed - along with an overhaul of the State’s support scheme for businesses facing high energy bills.\r\n\r\nDetails were announced by Taoiseach Leo Varadkar, Tánaiste Micheál Martin and Minister for the Environment Eamon Ryan at Government Buildings in Dublin.\"\r\n', 'Jack Horgan-Jones\r\n', '2023-02-21', '12:17:00', '', 103),
(5, 'Aboriginal spears taken by Captain James Cook to be returned to Australia\r\n', 'Anchored in Barbados, the Dubliner has built an international architecture firm that straddles the Atlantic\r\n', '\"Aboriginal spears taken by British explorer Captain James Cook and his landing party when they first arrived in Australia in 1770 will be returned to the local Sydney clan.\r\n\r\nThe four spears are believed to be the last remaining of dozens collected by the first colonialists.\r\n\r\nThey are being kept at Cambridge University in the UK.\r\n\r\nCambridge\'s Trinity College has agreed to return them after a 20-year campaign by indigenous people.\r\n\r\nCaptain Cook first set foot in Australia on a beach at Botany Bay in Sydney\'s south, where he and his crew\'s arrival was challenged by two men from the Gweagal clan of the Dharawal peoples, the traditional owners of the land.\"\r\n', 'Tom Housden\r\n', '2023-03-02', '11:24:00', '', 102),
(6, 'GRA calls for further Garda protection following Ballyfermot assault\r\n', 'The Garda Representative Association (GRA) say more needs to be done to protect members of the force following an attack on officers in Ballyfermot, Co Dublin.\r\n', '\"The Garda Representative Association (GRA) say more needs to be done to protect members of the force following an attack on officers in Ballyfermot, Co Dublin.\r\n\r\nA male garda received medical treatment yesterday after he was surrounded by a group of youths and struck with a missile in Ballyfermot.\r\n\r\nGardaí said a number of patrol vehicles were also significantly damaged.\r\n\r\nGRA president Brendan O\'Connor said the gardaí who were attacked were just trying to do their job.\r\n\r\nMr O\'Connor told Newstalk: \"\"The wider issue of assaults on our members and the need for firm and strong action as they go out to try to keep citizens safe. We saw yesterday what gardaí were subjected to as they tried to keep members of the community safe.\"\"\r\n\r\nTwo men were arrested on Kylemore Road in relation to incidents of dangerous driving and two motorbikes were seized.\r\n\r\nBoth men were later released and a file was sent to the Director of Public Prosecutions.\r\n\r\nMr O’Connor said a special task force to deal with the issue of violence against gardaí needs to be formed.\r\n\r\n\"\"Again it just brings into focus what we consider to be the very serious situation of escalating attacks and assaults on members which needs to be addressed.\r\n\r\n\"\"We repeat our calls for the Minister for Justice to set up a taskforce to tackle the huge challenges facing policing and to address the number one problem which is the shortage of gardaí.\"\"\"\r\n', 'James Cox', '2023-02-21', '09:24:00', '', 105),
(7, 'India G20: US and Russia trade blows at talks in Delhi\r\n', 'Tensions over Russia\'s war in Ukraine have dominated G20 talks in Delhi, even after India\'s PM urged foreign ministers to put aside their divisions.\r\n', '\"Tensions over Russia\'s war in Ukraine have dominated G20 talks in Delhi, even after India\'s PM urged foreign ministers to put aside their divisions.\r\n\r\nUS Secretary of State Antony Blinken said the meeting was marred by Russia\'s \"\"unprovoked and unjustified war\"\".\r\n\r\nRussian Foreign Minister Sergei Lavrov accused the West of \"\"burying\"\" a deal to allow some Ukrainian grain exports.\r\n\r\nEarlier, Narendra Modi spoke for developing nations, saying those present had a responsibility to them.\r\n\r\nThe G20, which includes the world\'s 19 wealthiest nations plus the European Union, accounts for 85% of global economic output and two-thirds of its population.\r\n\"\r\n', 'Vikas Pandey & Leila Nathoo\r\n', '2023-03-02', '06:33:20', '', 102),
(8, 'Greek trains halted as anger over crash grows\r\n', 'Rail workers across Greece have begun a one-day strike after Tuesday\'s train crash which killed at least 43 people.\r\n', '\"Rail workers across Greece have begun a one-day strike after Tuesday\'s train crash which killed at least 43 people.\r\n\r\n\"\"Pain has turned into anger for the dozens of dead and wounded colleagues and fellow citizens,\"\" the workers\' union said in a statement.\r\n\r\nThe walkout follows protests in Athens, Thessaloniki and the city of Larissa, near the site of the disaster.\r\n\r\nRescue workers are still going through burned and buckled carriages, searching for victims.\r\n\r\nThis was the \"\"most difficult moment\"\", rescuer Konstantinos Imanimidis told Reuters news agency, as \"\"instead of saving lives, we have to recover bodies\"\".\"\r\n', 'Nick Beake & Kathryn Armstrong\r\n', '2023-02-02', '10:20:00', '', 102),
(9, 'King Kong at 90: The greatest monster film ever made\r\n', 'Ninety years on from its premiere in New York, King Kong remains one of the most terrifying and heartbreaking horror movies ever made, writes Nicholas Barber.\r\n', 'Despite having been released 90 years ago, in 1933, King Kong still stands tall as the greatest monster movie of all time. In part, that\'s because Kong himself was made for the movies. Unlike Dracula, Frankenstein\'s creature and other such fiends, he didn\'t emerge from a novel or a folk tale. The idea of an overgrown, awe-inspiring ape was conceived as a purely cinematic spectacle by Merian C Cooper, who co-directed the film with his friend Ernest B Schoedsack. The men were already well known for their silent documentaries, Grass (1925), and Chang (1927), featuring exotic animals in far-off lands, but Cooper fancied making a fictional \"terror gorilla picture\". All he needed was \"a chariot race\", he recalled (as quoted in Celluloid Skyline by James Sanders), meaning a climactic sequence to compare with the frenetic chariot race in 1925\'s Ben-Hur: A Tale of the Christ. One day in New York, he saw a plane flying past a skyscraper, and realised that he could add his gorilla to the tableau. \"And I remember saying aloud to myself, \'Well, if that isn\'t a chariot race, I don\'t know what is.\'\"\r\n', 'Nicholas Barber\r\n', '2023-03-02', '14:12:00', '', 106),
(10, 'The perfect storm keeping women of colour behind at work\r\n', 'Effects from the pandemic have set back many workers. For women of colour, these factors have compounded to hurt their growth potential even more.\r\n', '\"The pandemic’s effects on working women have been well documented by researchers and workers alike.\r\n\r\nThroughout the past three years, women around the world disproportionately suffered due to economic shutdowns. Their earnings, in many cases, have stalled or fallen relative to men’s, and in many pockets of the labour market, women still struggle to climb to critical leadership positions. More women than men are leaving their jobs, unable to navigate corporate structures while balancing commitments outside of paid work.\r\n\r\nBut buried in the narrative of women’s recent struggles overall is another critical and often even more troubling storyline: the experiences of women of colour.\r\n\r\nAlthough much gender-based data and research is reported in binary terms – men versus women – women’s lived experiences are formed at the intersection of gender and race, or ethnicity. Simply, looking at women as a monolith can lose nuance: the struggles of a white woman in the workforce may not necessarily be comparable – or even at all similar – to those of a black working woman; and, in turn, a black working woman may tend to face entirely different barriers to those experienced by women of Middle Eastern, Hispanic or Asian descent.\"\r\n', 'Josie Cox\r\n', '2023-03-01', '12:45:00', '', 107),
(11, 'Too late to save environment, says Green Party co-founder\r\n', 'One of the founders of what would become the Green Party of England and Wales has declared \"it\'s too late\" to save the environment.\r\n', '\"One of the founders of what would become the Green Party of England and Wales has declared \"\"it\'s too late\"\" to save the environment.\r\n\r\nMichael Benfield, who helped set up the new political movement in the 1970s, said he believed the \"\"battle for the world\'s environmental survival\"\" was \"\"at this moment, lost\"\".\r\n\r\nSpeaking at an event to mark the party\'s 50th anniversary, Mr Benfield told the BBC he had become \"\"somewhat of a doomsayer\"\" about efforts to protect the environment.\r\n\r\nGreen expectations: Is this finally their year?\r\nGreens become largest on council after by-election\r\nGreens leader criticises some Just Stop Oil tactics\r\n\"\"I think we have succeeded in helping to educate... but we have failed in dealing with the battle for environmental survival.\r\n\r\n\"\"I\'ll say to you now that it\'s too late. The battle for the world\'s environmental survival is, at this moment, lost,\"\" he said.\"\r\n', 'Helen Catt & Thomas Mason\r\n', '2023-03-02', '09:39:00', '', 108),
(12, 'Matt Hancock: Leaked messages reveal battle over Covid and schools\r\n', 'Former Health Secretary Matt Hancock tried to bypass Education Secretary Gavin Williamson to have schools closed in December 2020, messages published by the Daily Telegraph suggest.\r\n', '\"Former Health Secretary Matt Hancock tried to bypass Education Secretary Gavin Williamson to have schools closed in December 2020, messages published by the Daily Telegraph suggest.\r\n\r\nIn other WhatsApp messages released by the paper, Mr Hancock described teaching unions as \"\"absolute arses\"\".\r\n\r\nSir Gavin replied that they hated work.\r\n\r\nThe leaked messages are among more than 100,000 sent by ministers and officials during the pandemic, which journalist Isabel Oakeshott passed to the paper.\r\n\r\nA vocal critic of coronavirus lockdowns, Ms Oakeshott obtained them while helping Mr Hancock write his book, Pandemic Diaries. She has said she broke a non-disclosure agreement by releasing the messages because this is \"\"in the public interest\"\".\"\r\n', 'Christy Cooney\r\n', '2023-02-02', '10:59:00', '', 103),
(13, 'The tiny diamond sphere that could unlock clean power\r\n', 'At 1:03am on Monday 5 December, scientists at the National Ignition Facility in California aimed their 192 beam laser at a cylinder containing a tiny diamond fuel capsule.\r\n', '\"At 1:03am on Monday 5 December, scientists at the National Ignition Facility in California aimed their 192 beam laser at a cylinder containing a tiny diamond fuel capsule.\r\n\r\nThat powerful burst of laser light created immense temperatures and pressures and sparked a fusion reaction - the reaction which powers the sun.\r\n\r\nWhat is nuclear fusion?\r\nThe National Ignition Facility (NIF), part of the Lawrence Livermore National Laboratory (LLNL), had done such experiments before, but this time the energy that came out of the reaction, was more than the laser power used to trigger it.\r\n\r\nScientists have been trying for decades to meet that threshold and the hope is, one day, to build power stations that employ a fusion reaction to generate abundant, carbon-free electricity.\r\n\r\nThat\'s still some way off. In the meantime, much work needs to be done in developing the technology.\"\r\n', 'Carrie King\r\n', '2023-02-28', '17:45:00', '', 109),
(14, '\'Why did you torture me?\': A domestic worker\'s fight for justice\r\n', '\"Help me, I am being tortured by my employer,\" Meriance Kabu wrote. \"I\'m covered in blood every day, help me!\"\r\n', '\"\"\"Help me, I am being tortured by my employer,\"\" Meriance Kabu wrote. \"\"I\'m covered in blood every day, help me!\"\"\r\n\r\nShe then quickly folded the note and threw it out of the locked iron gates of the apartment in the suburbs of Kuala Lumpur where she was working as a live-in maid.\r\n\r\nA woman passing by picked it up. Once she read it, she immediately took it to a retired police officer who lived in the same flats. \"\"If she had stayed there, she surely would have died,\"\" he later said.\r\n\r\nThat same day, 20 December 2014, Malaysian police knocked on the door of the apartment where Meriance lived. She hadn\'t left it in eight months.\r\n\r\n\"\"I felt like I was falling,\"\" she says, recalling the moment when she saw the officers. \"\"They said, \'Don\'t be afraid, we are here\'. At that moment I felt strong again. I felt like I could breathe again. The officers called me closer and I told them the truth.\"\"\r\n\"\r\n', 'Endang Nurdin & Raja Lumbanrau\r\n', '2023-03-01', '09:00:00', '', 102),
(15, 'Highland man directed sex attacks on girls in Philippines\r\n', 'A former retained firefighter has admitted directing sex attacks and rapes of young girls in the Philippines from his home in the Highlands.\r\n', '\"A former retained firefighter has admitted directing sex attacks and rapes of young girls in the Philippines from his home in the Highlands.\r\n\r\nGary Campbell, 59, from Lochinver, paid for child abuse to be carried out by adults as he watched and recorded it via a livestream.\r\n\r\nAmong the victims was a girl thought be as young as four.\r\n\r\nCampbell, who admitted 13 charges at the High Court in Edinburgh, will be sentenced next month.\r\n\r\nThe offences were committed between June 2012 and August 2014.\"\r\n', 'Gary O\'Brien\r\n', '2023-02-28', '21:29:00', '', 100),
(16, 'Man arrested after explosive found in luggage at US airport\r\n', 'FBI agents have arrested a man who allegedly brought an explosive device to a Pennsylvania airport on Monday. \r\n', '\"FBI agents have arrested a man who allegedly brought an explosive device to a Pennsylvania airport on Monday. \r\n\r\nMark Muffley, 40, is accused of putting the device in his checked bag for a flight to Orlando, Florida. \r\n\r\nHe fled the airport after his name was called over the loud speaker, agents say, and was arrested at home later that evening. \r\n\r\nTransportation Security Administration (TSA) officials say they spotted the device during a routine screening. \r\n\r\nOfficials say Mr Muffley checked in for Allegiant Air Flight 201 at Lehigh Valley International Airport, 65 miles (105km) north of Philadelphia, on Monday morning. \"\r\n', 'Max Matza\r\n', '2023-03-01', '18:48:00', '', 100),
(17, 'The iconic outfits that cause outrage\r\n', 'From Emily in Paris to Sex and the City, Patricia Field\'s divisive costumes subvert ideas about how women \"should\" look. It\'s all about \"expressing yourself\", the designer tells Ellie Violet Bramley.\r\n', '\"\r\nEven if you have never watched Sex and the City, you probably still know that Carrie Bradshaw once wore a tutu. The look symbolised the TV show. But it could have been very different. The series writer and producer Darren Star didn\'t \"\"get it\"\", says the show\'s costume designer Patricia Field in her new book. \"\"Who\'s going to understand this girl, in New York, in a tutu?\"\" He wanted to put her in a powder blue frock for the opening credits instead. \r\nIt sums up the way many people feel about costumes created by Field, who has been responsible not only for the wardrobe of Sex and the City but also those of Ugly Betty, The Devil Wears Prada and Emily in Paris. The apparent randomness of the now-82-year-old New Yorker\'s ensembles, as well as their rollercoaster extremes, provoke a range of reactions in audience – delight, bafflement and even anger.\"\r\n', 'Ellie Violet Bramley\r\n', '2023-02-18', '13:35:00', '', 108),
(18, 'Adriana Lima: Fifa\'s appointment of supermodel as fan ambassador in Women\'s World Cup year criticised\r\n', 'Fifa\'s appointment of supermodel Adriana Lima as its first global fan ambassador five months before the Women\'s World Cup is \"tone deaf\", says former Fifa council member Moya Dodd.\r\n', '\r\n\r\nFifa president Gianni Infantino said Lima \"\"lives and breathes \'futebol\'\"\".\r\n\r\n\"\"When a girl plays football, the world sees her differently,\"\" Dodd said.\r\n\r\n\"\"Instead of being complimented on her nice looks or her pretty dress, she is valued for her game-saving tackles and brilliant goal-scoring.\r\n\r\n\"\"She\'s admired for what she can do, rather than how she looks, putting her on a more equal footing with her brothers in a way that can alter the whole trajectory of her life\'s ambitions.\r\n\r\n\"\"In a Fifa World Cup year, that\'s the message that should be ringing loud and true around the world. Where a supermodel fits into this is truly baffling.\"\"\r\n\r\nDodd, a former Australia international who served on the committee for Australia and New Zealand\'s successful bid to co-host the World Cup, said Lima\'s public image was an \"\"odd fit for an organisation that says it wants to empower girls and women\"\".\r\n\r\n\"\"I asked whether the Fifa ambassador will be delivering messages on body image, wellbeing and healthy eating,\"\" Dodd added in a post on LinkedIn on Wednesday.\r\n\r\n\"\"What will this ambassador represent to the large and growing population of aspirational #womensfootball players and fans who love the game because (it) shows us what empowerment and equality can look like?\"\"\r\n\r\nDodd, a member of the Fifa Council from 2013 to 2016, also referred to comments Lima made in a 2006 interview with GQ magazine in which she said abortion was \"\"a crime\"\".\r\n\r\nLima\'s publicist Laurent Boye said the model\'s stance had changed: \"\"We can proudly say that Ms Lima has been promoting a healthy lifestyle for several years and like many people, her position on many LGBTQIA+ and women issues has evolved and she is considered an ally.\"\"\r\n\r\nIn the statement announcing Lima\'s appointment, Infantino said: \"\"When you get to meet Adriana, you feel right away her warmth, kindness, and how approachable and passionate she is about our game.\r\n\r\n\"\"She lives and breathes \'futebol\' and that is also why she can be an excellent link between Fifa and fans worldwide.\"\"\"\r\n', 'By Elenor Byrne\r\n', '2023-03-02', '08:47:00', '', 110),
(19, 'Firewood theft: The forests where trees are going missing\r\n', 'In many countries, poachers are stealing trees from forests in the middle of the night – and the problem may be getting worse. \r\n', '\"This wood enters our lives in a myriad of ways: during the early days of the Covid-19 pandemic, the price of wood skyrocketed, and people stole processed timber by the truck-full. Retailers of hardwood flooring and flatpack furniture have been caught sourcing illegal wood in their supply chains. And every winter, parks located in or near cities report the theft of fir boughs and pine trees, felled for Christmas trees.\r\n\r\nBut the most common motivation identified in my research was to supply firewood. Stories coming from Germany\'s forests echo those in my home province, where Douglas fir is often poached near roadways that cut through public conservation land. There\'s often evidence that these trees have been cut into blocks right where they fell, then loaded into the back of a truck and driven off. In rural areas, where it\'s not uncommon for homes to be heated by multiple stoves as opposed to central heating, this poached wood often feeds the burners in local communities. But now, in the long shadow of both the energy and cost of living crises, the demand for firewood is on the rise. The market for poached wood is expanding.\r\n\r\nIn the UK, the demand for wood heat has been tangible: wood stove sales have increased by 40%, and chainsaw sales have followed in lockstep. In Dorset, £10,000-worth ($12,000/€11,300) of wood was stolen from a Wildlife Trust site in early January. \"\r\n', 'Lyndsie Bourgon\r\n', '2023-03-02', '10:57:00', '', 100),
(20, 'Northern lights: Aurora seen across UK in spectacular display\r\n', 'In a very rare display, the northern lights were seen as far south as Kent and Cornwall on Sunday night.\r\n', '\"In a very rare display, the northern lights were seen as far south as Kent and Cornwall on Sunday night.\r\n\r\nAcross more northern areas of the UK, the display was one of the best seen in a very long time by BBC Weather Watchers.\r\n\r\nAn aurora is formed by a solar flare erupting on the Sun, sending charged particles towards Earth which interact with our atmosphere.\r\n\r\nMore displays are expected in the coming nights.\"\r\n', 'Simon King\r\n', '2023-02-28', '19:02:00', '', 106);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
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
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=111;

--
-- AUTO_INCREMENT for table `stories`
--
ALTER TABLE `stories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `stories`
--
ALTER TABLE `stories`
  ADD CONSTRAINT `stories_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
