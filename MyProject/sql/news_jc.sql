-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 10, 2025 at 04:52 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `news_jc`
--

-- --------------------------------------------------------

--
-- Table structure for table `authors`
--

CREATE TABLE `authors` (
  `id` int(11) NOT NULL,
  `first_name` text DEFAULT NULL,
  `last_name` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `authors`
--

INSERT INTO `authors` (`id`, `first_name`, `last_name`) VALUES
(1, 'Faye Brown', ''),
(2, 'Tom Bateman', ''),
(3, 'Christy Cooney', ''),
(4, 'Juliette Gash', ''),
(5, 'Matt Dixon', ''),
(6, 'Phelan Chatterjee', ''),
(7, 'Elizabeth Pritchett', ''),
(8, 'Tara-Anson Walsh', ''),
(9, 'Russ Bynum', ''),
(10, 'Toh Ee Ming', ''),
(11, 'John Fogarty', ''),
(12, 'Joe Lock', ''),
(13, 'Jack Kennedy', ''),
(14, 'Mark Dunlop', ''),
(15, 'Alex Scott', ''),
(16, 'Dean Falk', ''),
(17, 'Ewen Callaway', ''),
(18, 'Mark Poynting', ''),
(19, 'Warren Cornwall', ''),
(20, 'Tanya Gupta', '');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`) VALUES
(1, 'Politics'),
(2, 'Crime'),
(3, 'Sports'),
(4, 'Nature');

-- --------------------------------------------------------

--
-- Table structure for table `locations`
--

CREATE TABLE `locations` (
  `id` int(11) NOT NULL,
  `name` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `locations`
--

INSERT INTO `locations` (`id`, `name`) VALUES
(1, 'USA'),
(2, 'Ireland'),
(3, 'Sweden'),
(4, 'UK'),
(5, 'Singapore'),
(6, 'South Africa'),
(7, 'Zambia');

-- --------------------------------------------------------

--
-- Table structure for table `stories`
--

CREATE TABLE `stories` (
  `id` int(11) NOT NULL,
  `headline` text DEFAULT NULL,
  `short_headline` text DEFAULT NULL,
  `article` text DEFAULT NULL,
  `img_url` text DEFAULT NULL,
  `author_id` int(11) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `location_id` int(11) DEFAULT NULL,
  `created_at` date DEFAULT NULL,
  `updated_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `stories`
--

INSERT INTO `stories` (`id`, `headline`, `short_headline`, `article`, `img_url`, `author_id`, `category_id`, `location_id`, `created_at`, `updated_at`) VALUES
(1, 'Palestinians \'must\' live in Gaza and West Bank, Lammy says to Trump\'s plan of Gaza takeover', 'Palestinians \'must\' live in Gaza and West Bank, Lammy says to Trump\'s plan of Gaza takeover', '<p>Foreign Secretary David Lammy has given his response to US President Donald Trump\'s suggestions that Palestinians could be removed from Gaza and a \"Riviera\" of the Middle East built instead. The UK government has distanced itself from Donald Trump\'s suggestion Palestinians could be relocated and Gaza developed into a \"Riviera of the Middle East\". Foreign Secretary David Lammy said: \"We\'ve always been clear in our belief that we must see two states. We must see Palestinians live and prosper in their homelands in Gaza and the West Bank.\"</p><p>Speaking to Sky News\' Kay Burley, Environment Secretary Steve Reed said the UK\'s position is that Palestinians \"need to be able to return to their homes and then start to rebuild them\". He added that a \"lasting peace can only be based on a two-state solution\" with a \"secure Israel\" and \"a free and viable Palestinian state\". Politics latest: Two states \'only\' solution in Middle East. But he did not criticise Mr Trump for his remarks, saying that he would \"not provide a running commentary on the pronouncements of the president\". Asked if he was being disparaging, Mr Reed replied \"not at all\", adding that Mr Trump should be given \"credit for the role he played in securing the ceasefire in the first place\". Mr Trump laid out his plans for the Middle East in a news conference alongside Israeli Prime Minister Benjamin Netanyahu at the White House.The US president called Gaza a \"demolition site\" and said the two million people who live there could go to \"various domains\". He did not rule out sending US troops to the region, and said the US would \"develop\" Gaza and create \"thousands and thousands of jobs\". Mr Trump suggested that Palestinians could be relocated to Egypt and Jordan. Both countries, other Arab nations and Palestinian leader have all opposed this move. Saudi Arabia quickly released a statement rejecting any attempt to move Palestinians out of Gaza. Mr Trump said: \"Everybody I\'ve spoken to loves the idea of the United States owning that piece of land, developing and creating thousands of jobs.\" It would be the \"Riviera of the Middle East\", he added.</p>', 'images/story6_palestinebbc.jpg', 1, 1, 1, '2025-02-05', '2025-02-07'),
(2, 'Trump\'s Gaza plan will be seen as flying in face of international law', 'Trump\'s Gaza plan will be seen as flying in face of international law', '<p>When US President Donald Trump began speaking 10 days ago of Gaza as a demolition site, calling to \"clean out that whole thing\", it wasn\'t clear how far these were off-the-cuff remarks. But in the lead up to Israeli Prime Minister Benjamin Netanyahu\'s visit, in his Oval Office comments before the meeting, and in the press conference itself, it\'s now clear he is profoundly serious about his proposals.</p>\n\n<p>They amount to the most radical upending in the established US position on Israel and the Palestinians in the recent history of the conflict; and will be seen as flying in the face of international law.</p>\n\n<p>As well as how the announcement will be absorbed by ordinary people on the ground, it could also have a significant impact on the more immediate phased ceasefire and hostage release process, at a critical juncture.</p>\n\n<p></p>Trump and his officials are framing his call to - in his language - permanently \"resettle\" all Palestinians out of Gaza as a humanitarian gesture, saying there is no alternative for them because Gaza is a \"demolition site\".</p>\n\n<p>Under international law, attempts to forcibly transfer populations are strictly prohibited, and Palestinians as well as Arab nations will see this as nothing short of a clear proposal aimed at their expulsion and the ethnic cleansing of Palestinians from their land.</p>', 'images/story2_trumpgaza.png', 1, 1, 1, '2025-02-05', '2025-02-06'),
(3, 'Trump to sign executive order targeting transgender athletes in women?s sports', 'Trump to sign executive order targeting transgender athletes in women?s sports', '<p>Donald Trump will sign an executive order to prevent transgender athletes from competing in women?s sports at 3pm today, the White House said ?No Men in Women?s Sports?, the order will change how the administration interprets Title IX, a civil rights law that addresses sex discrimination at schools that receive federal funding, including in athletics.</p>\n\n<p>After finding success in his presidential campaign by attacking transgender rights, Trump moved swiftly to roll back federal protections for the group after being sworn in. </p>', 'images/story3_trumptrans.png', 1, 1, 1, '2025-02-05', '2025-02-06'),
(4, 'Taoiseach rejects claims of deception over housing numbers', 'Taoiseach rejects claims of deception over housing numbers', '<p>Sinn Féin leader Mary Lou McDonald has condemned ESB plans to pass the cost of storm repairs onto customers while it is \"sitting on vast profits\". She said an intervention is needed. Taoiseach Miche?l Martin said the regulatory framework has to be reformed and there is a need for massive investment in the grid.</p>', 'images/story4_taoiseach.png', 4, 1, 2, '2025-02-05', '2025-02-08'),
(5, 'Elon Musk gets quiet White House reminders his power isn\'t unchecked', 'Elon Musk gets quiet White House reminders his power isn\'t unchecked', '<p>Tech billionaire and newly minted ?special government employee? Elon Musk has received quiet White House reminders in recent days that while he has wide, nearly unprecedented latitude to slash spending and reorient the federal government at a breakneck pace, his power is not unchecked. Trump has suggested publicly, and aides have signaled behind the scenes, that Musk is still a staffer and needs to report to White House chief of staff Susie Wiles.</p>', 'images/story5_muskpower.png', 5, 1, 1, '2025-02-05', '2025-02-07'),
(6, 'What do we know about the Sweden school shooter?', 'What do we know about the Sweden school shooter?', '<p>On Tuesday afternoon, the gunman behind Sweden\'s worst-ever mass shooting paced up and down through the corridors of Risbergska adult educational centre. His steps could be heard outside the classroom of Hellen Werme, a 35-year-old nursing student.</p>\n\n<p>\"We heard three shots, one after the another, and panicked. My teacher shouted: \'shut the doors, lock them and hide,\'\" she tells Sweden\'s TV4 News.</p>\n\n<p>Police have revealed few details about the suspected killer, who was among eleven people who died in the attack in the central Swedish city of Orebro.</p>\n\n<p>But local media paint a picture of a recluse who lived locally and legally owned a weapon.</p>\n\n<p>Here\'s what we know so far.</p>', 'images/story1_swedencrime.jpg', 6, 2, 3, '2025-02-05', '2025-02-06'),
(7, 'Ohio warehouse shooting suspect at large after 1 killed, 5 injured: police', 'Ohio warehouse shooting suspect at large after 1 killed, 5 injured: police', '<p>One person is dead and several others are wounded after a worker opened fire at a cosmetic manufacturing plant in New Albany, Ohio, police say. A manhunt is now ongoing Wednesday for Bruce Reginald Foster III following the shooting that unfolded around 10:30 p.m. Tuesday at the KDC/One facility. \"He had been at work for some time when this occurred. We don?t have any reports that there was any issue ? that he was in an area that he wasn?t supposed to be, or he was in trouble in any way or there was any conflict,\" New Albany Police Chief Greg Jones said. \"It is not to say there wasn?t something, but after interviewing everybody we have -- and the supervisor of the company ? we don?t have any reports of anything like that.\" Jones earlier described the incident as a \"targeted attack.\"</p>', 'images/story7_ohioshooter.png', 7, 2, 1, '2025-02-05', '2025-02-07'),
(8, 'Police officer at the centre of Sam Kerr\'s trial challenged in court', 'Police officer at the centre of Sam Kerr\'s trial challenged in court', '<p>A police officer was left feeling \'belittled and upset\' after Chelsea women\'s star Sam Kerr branded him \'f****** stupid and white\', a court has heard.</p><p>PC Stephen Lovell was called to Twickenham Station in London after Kerr, 31, and her partner refused to pay for the damage after the Australian international captain threw up in a taxi and broke its window. Kingston Crown Court heard that Kerr and her partner, American midfielder Kristie Mewis, had been out on the town and on their way to Kerr\'s flat in Richmond when the row broke out over the cost of fixing the cab. The driver called the police and was told to drive to the station, where PC Lovell arrived at 2.20am on January 30 2023 alongside a colleague. He was then later allegedly subjected to a racist diatribe by the striker, who is accused of calling him \'stupid and white\', a charge she denies. </p><p>Lawyers for Kerr claim he was \'determined to pursue\' a charge of racially aggravated harassment - suggesting this was because he was made to feel \'unimportant\' after prosecutors initially opted not to bring her to court. PC Lovell told the court that he felt \'belittled and upset\' by the alleged remark, adding that it felt \'very unnecessary\' to him as the officer dispatched to the scene, alongside colleague PC Samuel Limb.</p>', 'images/story8_uksamkerr.png', 8, 2, 4, '2025-02-05', '2025-02-06'),
(9, 'Ex-prosecutor\'s trial ends as judge throws out her felony indictment in Ahmaud Arbery death case', 'Ex-prosecutor\'s trial ends as judge throws out her felony indictment in Ahmaud Arbery death case', '<p>BRUNSWICK, Ga. AP ? A judge Wednesday threw out a felony indictment against a former Georgia prosecutor, ending her trial on charges that she abused her power by trying to protect the men who chased and killed Ahmaud Arbery in 2020. Former District Attorney Jackie Johnson for years denied influencing police who initially decided against making arrests when Arbery was fatally shot in coastal Glynn County, where Johnson then served as the top state prosecutor. She was indicted in September 2021 after state Attorney General Chris Carr ordered an investigation into possible misconduct by Johnson. But prosecutors for Carr?s office struggled to make a case once Johnson?s trial began last week. Senior Judge John R. Turner on Monday ordered Johnson acquitted of a misdemeanor count of obstructing police. Turner ruled after prosecutors rested their case, declaring they failed to show ?one scintilla of evidence? that Johnson had directed police investigators not to arrest the man who shot Arbery.</p>', 'images/story9_usaprosecutor.png', 9, 2, 1, '2025-02-05', '2025-02-06'),
(10, 'As scams soar, Singapore decides to protect victims from themselves', 'As scams soar, Singapore decides to protect victims from themselves', '<p>As a sales professional who often lists her number in public spaces, Goh, who asked to use a pseudonym, found the story plausible. Over two hours, Goh shared personal details such as her name and identification number, though she hesitated to disclose her exact bank details. ?I wasn?t sure if it was a scam ? it sounded so true ? but I was also afraid it might be,? she told Al Jazeera.</p><p>When she was asked to photograph herself with her official identity card, Goh realised she was being scammed and hung up. Luckily, Goh, 58, was able to quickly change her passwords and transfer funds into her daughter?s account before any money could be stolen. Others in her circle of friends have not been so fortunate. ?Some friends lost thousands,? she said.</p>', 'images/story10_singaporescams.png', 10, 2, 5, '2025-02-05', '2025-02-07'),
(11, 'India vs England: Joe Root returning to ODI cricket at number three in batting order confirms Jos Buttler', 'India vs England: Joe Root returning to ODI cricket confirms Jos Buttler', '<p>\"He\'s one of the great players of the game in all the formats,\" says England white-ball captain Jos Buttler ahead of Joe Root\'s return to the ODI side for the first time in 15 months; Three-match ODI series against India starts in Nagpur at 8am on Thursday. Joe Root will bat at number three on his return to the England ODI side with captain Jos Buttler expecting the cricketing \"great\" to play a \"crucial\" role for the side in the three-day series against India. Root will play in his first 50-overs international match since the 2023 Cricket World Cup when the concluding leg of England\'s white-ball tour of India starts on Thursday with the first ODI in Nagpur. After England suffered a thumping 4-1 defeat to the hosts in the preceding T20 series, Buttler is anticipating the arrival of the former Test captain for the three ODI matches to prove invaluable for the side as they ramp up preparations for the Champions Trophy in Pakistan later this month.</p>', 'images/story11_ukcricket.jpg', 11, 3, 4, '2025-02-05', '2025-02-10'),
(12, 'Six Nations 2025: Tadhg Furlong and Joe McCarthy ruled out of Ireland\'s trip to Scotland', 'Six Nations 2025: Tadhg Furlong and Joe McCarthy ruled out of Ireland\'s Scotland trip', '<p>Back-to-back Six Nations champions Ireland defeated England 27-22 in Dublin last week and travel to face Scotland away in Round 2; Tighthead prop Tadhg Furlong and lock Joe McCarthy will both miss the game due to respective calf and head injuries, coach John Fogarty confirmed. Tadhg Furlong and Joe McCarthy have been ruled out of Ireland\'s Six Nations Round 2 clash vs Scotland at Murrayfield. Tighthead prop Furlong and lock McCarthy both missed Saturday\'s 27-22 victory over England in Dublin due to respective calf and head injuries, but were thought to be in the mix for this weekend.</p>', 'images/story12_tadgh.jpg', 12, 3, 2, '2025-02-05', '2025-02-07'),
(13, 'Unbridled: Jockey Jack Kennedy facing race against time to be fit for Cheltenham Festival', 'Unbridled: Jockey Jack Kennedy facing race to be fit for Cheltenham Festival', '<p>On the latest episode of the Unbridled podcast with Matt Chapman and Paddy Brennan, jockey Jack Kennedy stopped by to discuss injury, recovery and ambitions to be fit in time for the Cheltenham Festival; watch Episode 11 of Unbridled in full on the At The Races YouTube channel</p>', 'images/story13_cheltenham.png', 13, 3, 4, '2025-02-05', '2025-02-09'),
(14, 'John Cooney: Belfast-based boxer in intensive care after suffering brain injury in defeat to Nathan Howells', 'John Cooney: Belfast-based boxer in intensive care after suffering brain injury in defeat to Nathan Howells', '<p>Belfast-based boxer John Cooney is in intensive care after his defeat to Welshman Nathan Howells at the Ulster Hall on Saturday. Cooney was stopped in the ninth round of the fight, which was the first defence of his Celtic super-featherweight title, and subsequently underwent surgery.</p>\n\n<p>In a statement, Cooney\'s promoter Mark Dunlop said: \"Following John Cooney\'s epic title fight at the Ulster Hall on Saturday evening, John was assessed by the onsite medical team of the British Boxing Board of Control and swiftly taken to Belfast\'s Royal Victoria Hospital for further treatment.</p>', 'images/story14_johncooney.jpg', 14, 3, 4, '2025-02-05', '2025-02-05'),
(15, 'Women\'s football in Scotland growing as a fifth of SWPL clubs see crowds double, according to new study', 'Women\'s football in Scotland growing as a fifth of SWPL clubs see crowds double', '<p>A total of 25 key observations and recommendations to help further develop the women\'s game were also made, including maximising international engagement and exposure, increasing merchandising both inside and out of stadiums, and growing crowds at the professional elite level.</p>\n\nProfessor Grant Jarvie hopes the report will help \"close the data gap between women and men\'s football.\"\n\n\nSponsored Links\nRecommended byWhat is Outbrain\nCardiologists: Teaspoon On an Empty Stomach Slims Waist from 36 To 22\nCardiologists: Teaspoon On an Empty Stomach Slims Waist from 36 To 22\nMake this 15-second trick at home every morning\n(Health Wellness Journal)\nSenior Singles Seeking Love\nSenior Singles Seeking Love\nShare your feelings and emotions with someone.\n(wingtalks.com)\nEnter Your Postcode To Check How Much Your Home Is Worth\n(Take a Look)\n(Bright Life Daily)\nCounty Wicklow: Many Seniors Unaware Of Free Car Insurance Based On Their Age\nCounty Wicklow: Many Seniors Unaware Of Free Car Insurance Based On Their Age\n(Car Insurance 2025)\nDating for Senior Singles\nDating for Senior Singles\nShare your feelings and emotions with someone. Find an online buddy today!\n(LoveFort.com)\nCardiologist: The Best Method for a Flat Stomach After 50 (It?s Genius!)\nCardiologist: The Best Method for a Flat Stomach After 50 (It?s Genius!)\n(News - Health)\nUrologist: 87% of Men with E.D. Don\'t Know About This Easy Solution (Try Tonight!)\nUrologist: 87% of Men with E.D. Don\'t Know About This Easy Solution (Try Tonight!)\n(staminasparkstation.com)\nMost Windows Users Didn\'t Know How To Block Ads (Do It Now)\nMost Windows Users Didn\'t Know How To Block Ads (Do It Now)\n(First Security Tips)\nAt What Age Can You Retire With ?500,000?\nAt What Age Can You Retire With ?500,000?\nFor investors with ?500K+, get our guide and ongoing insights to learn ways to grow your wealth from your portfolio.\n(Fisher Investments Ireland)\n<p>\"I fell madly in love\" Alex Scott revealed romance with former Arsenal teammate\n\"I fell madly in love\" Alex Scott revealed romance with former Arsenal teammate\n(Ohmymag)</p>\n<p>SWPL managing director Fiona McIntyre, said \"These findings are incredibly encouraging as they point to a growing and engaged SWPL fanbase.</p>\n\n\n<p>\"We are really grateful to the University of Edinburgh for undertaking this study and providing us with a greater understanding of who is attending SWPL matches and importantly, what matters to them.</p><p>These insights are invaluable as we seek to engage with fans of the SWPL and increase attendances at SWPL matches.\"</p>', 'images/story15_womensrugby.jpg', 15, 3, 4, '2025-02-05', '2025-02-06'),
(16, 'Taung Child fossil offers clues about the evolution of childhood', '\'Taung Child\' fossil offers clues about the evolution of childhood', '<p>The skulls of Australopithecus africanus (third from left) and other hominins shed light on the lives of our ancestors. In November 1924 ? on the day they were hosting a wedding at their Johannesburg home in South Africa ? Australian anatomist and physician Raymond Dart and his wife Dora noticed two men staggering up the drive with two large boxes. According to Dart?s memoirs, written decades later, Dora had bemoaned the fact that the fossils Dart had been expecting had arrived on this day ?of all days?. She had begged him not to ?go delving in all that rubble until the wedding [was] over and everybody [had] left?. The boxes contained what would become one of the world?s most famous fossils, the Taung Child. 100 years of Australopithecus. In just a few weeks ? astonishingly ? Dart was able to use this one individual to surmise the broad course of human evolution as we understand it today. Previous evidence for human ancestry made use of fossils that bore a closer resemblance to modern humans. Dart?s description was astounding because it was of a species that was more apelike than humanlike, a revelation that in turn suggested that humanity?s evolutionary path had originated in Africa.</p>', 'images/story16_southafricafossil.png', 16, 4, 6, '2025-02-05', '2025-02-07'),
(17, 'How one language family took over the world: ancient DNA traces its spread', 'How one language family took over the world: ancient DNA traces its spread', '<p>How one language family took over the world: ancient DNA traces its spread. Millennia-old genomes suggest Indo?European tongues originated from the Caucasus mountain region. Two Iranian man on the street in Kashan, Iran, telling jokes and laughing. Languages including Farsi are members of the globe-spanning Indo-European language family.</p>\n\nAncient genomics researchers have pinpointed the homelands of a nomadic tribe that transformed the culture and genetics of Europe and Asia, revealing a potential source for the Indo?European language family, spoken by much of the world.\n\nGenomes from more than 400 individuals suggest that the Yamnaya ? Bronze Age herders from the steppes of present-day Russia and Ukraine ? emerged along the northern shores of the Black Sea. The findings are published on 5 February in Nature1 2.\n\n?I think they are truly groundbreaking,? says Kristian Kristiansen, an archaeologist at the University of Gothenburg in Sweden. ?This really solves two big unresolved questions.? The first is the origin of the Yamnaya.\n\nThe second was posed in the eighteenth century, when scholars noticed similarities between classical Greek and Latin and Sanskrit, an ancient language from South Asia, and suggested a common origin.\n\n<p>Nearly half the world?s population speaks at least one of the roughly 400 Indo?European languages.</p><p>These include nearly all European and Central Asian languages, as well as those from South Asia and Iran.</p><p>\n?This Indo?European story has been mystery for 200 years, and now step by step, we are coming closer to the solution,? says Volker Heyd, an archaeologist at the University of Helsinki.</p>', 'images/story17_dnatrace.png', 17, 4, 1, '2025-02-05', '2025-02-08'),
(18, 'Record January warmth puzzles climate scientists', 'Record January warmth puzzles climate scientists', '<p>UN planetary defence organisations are closely monitoring an asteroid that has a tiny risk of hitting the Earth.</p><p>The European Space Agency (ESA) has said that it has an almost 99% chance of safely passing Earth on 22 December 2032, but a possible impact \"cannot yet be entirely ruled out\". The probability that the asteroid, called 2024 YR4, may impact Earth on 22 December 2032 is currently estimated to be 1.3%.</p><p>Dr Robert Massey of the Royal Astronomical Society, says that he is \"not panicking or losing sleep over it\". \"There is no need for alarm,\" he said. \"The thing about this kind of event is that historically they tend to go away when the calculations are refined.\" We need to be aware alert and we need to give astronomers the resources they need to track these kinds of threats so that we can take action as soon as possible.\"</p><p>YR4 was detected on 27 December 2024. Astronomers calculated that it was between 40m and 90m across. This would have the power of a nuclear bomb were it to hit the Earth and cause severe damage if the impact was in a populated area. But it is much more likely that YR4 would fall into the ocean or a remote part of the planet. It is too far away from Earth and there are too many uncertainties at this stage to determine where a potential impact could occur in the unlikely event of a collision. Since early January, astronomers have been using telescopes to calculate the asteroid\'s size and trajectory more precisely. YR4 is now rated at level 3 out of 10 on the Torino Impact Hazard Scale: \"a close encounter that warrants attention from astronomers and the public\". A collision is only certain when it reaches 8, 9 or 10, with the numbers rising in line with the damage likely caused.</p>', 'images/story18_recordwarmth.png', 18, 4, 4, '2025-02-05', '2025-02-11'),
(19, 'Predators are running out of prey. Cracking down on poaching is an effective counteroffensive', 'Predators are running out of prey. Cracking down on poaching is an effective counteroffensive', '<p>The world\'s largest predators are also some of the most endangered. From tigers in India to lions in Africa, humans have hunted them down and encroached on their habitat. Recently, another major threat has emerged in Africa: animals at the top of the food chain are running out of prey. Herds of impala, wildebeest, kudu and other large herbivores are in decline across sub-Saharan Africa, in part due to rising levels of poaching by hunters seeking bushmeat for subsistence and profit. A recent study found that poachers in Botswana\'s Okavango Delta were killing the equivalent of more than 15,000 impala every year. In Zambia, scientists have now documented both the toll this is taking on predators and found promising evidence it can be addressed at least in part by cracking down on poaching.</p><p>?Even in a huge, unfenced ecosystem that?s already heavily affected by humans, we can reverse the decline by increasing the investment in protection?we just need the will to do it,? said Scott Creel, a Montana State University ecologist who has spent years studying predators in this part of the world. Creel?s work tracking African wild dogs shows, in detail, the way a shortage of prey can deplete a highly endangered predator. For years, it was thought that one of the biggest threats to these large-eared dogs was their larger rivals, such as lions and hyenas. Hyenas, which are twice the size of the dogs, will steal a carcass from them. Lions will kill the dogs outright. In the late 90s, Creel wrote a paper stating that ?wild dogs are rarely limited by prey availability.? But with the passage of nearly 3 decades, developments in these ecosystems coupled with new research has the Montana scientist changing his tune. </p>', 'images/story19_poaching.png', 19, 4, 7, '2025-02-05', '2025-02-08'),
(20, 'Anger as homes allowed near ancient woodland', 'Anger as homes allowed near ancient woodland', '<p>Hundreds of homes are to be built near ancient woodland in Pershore, leading to anger from wildlife campaigners.</p><p>Worcestershire Wildlife Trust (WWT) said it fought a long-running campaign against the scheme, but a planning inspector who reviewed the saga after appeal was \"persuaded by evidence from the developer\".</p><p>Following the inspector\'s decision to allow the project to go ahead, Orchard Farm near Tiddesley Wood is set for 300 new homes.</p><p>David Roach, head of planning at Hollybrook - parent firm of Formula Land which brought the planning appeal - said there was work on measures to protect the wood.</p><p>Formula Land made the appeal against Wychavon District Council after the authority did not reach a decision on the homes within the prescribed period.</p><p>\'Carpeted with flowers\'</p>Steve Bloomfield, WWT senior conservation officer, called for mitigation measures to be implemented properly and to be enforced by the council.</p><p>He said: \"There are two things that need to happen.</p><p>\"First, it\'s essential that the mitigation processes are implemented properly and that the council are able to enforce those actions to make sure that the resulting harm is limited as far as possible.</p><p>\"And the second thing is we absolutely must not see this as just a carte blanche for sites of this type next to other really high-value assets.\"</p><p>According to WWT, the land was once an enclosed deer park.<p><p>It adds that coppiced areas are \"carpeted with wildflowers in spring\" including bluebells, wood anemones, violets and cowslips, and are home to butterflies, insects and warblers.</p><p>Other species include the greater butterfly orchid, white-legged damselflies along with the nationally-rare noble chafer beetle.</p>', 'images/story20_homes.png', 20, 4, 4, '2025-02-05', '2025-02-06');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `authors`
--
ALTER TABLE `authors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `locations`
--
ALTER TABLE `locations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stories`
--
ALTER TABLE `stories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `author_id` (`author_id`),
  ADD KEY `category_id` (`category_id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `stories`
--
ALTER TABLE `stories`
  ADD CONSTRAINT `stories_ibfk_1` FOREIGN KEY (`author_id`) REFERENCES `authors` (`id`),
  ADD CONSTRAINT `stories_ibfk_2` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`),
  ADD CONSTRAINT `stories_ibfk_3` FOREIGN KEY (`category_id`) REFERENCES `locations` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
