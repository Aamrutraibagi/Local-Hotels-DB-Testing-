-- MySQL dump 10.13  Distrib 8.1.0, for macos13.3 (arm64)
--
-- Host: localhost    Database: hotels
-- ------------------------------------------------------
-- Server version	8.0.34

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Current Database: `hotels`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `hotels` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `hotels`;

--
-- Table structure for table `hotel_details`
--

DROP TABLE IF EXISTS `hotel_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hotel_details` (
  `hotel_id` int NOT NULL,
  `hotel_name` varchar(128) NOT NULL,
  `city` varchar(64) NOT NULL,
  `star_rating` int DEFAULT NULL,
  PRIMARY KEY (`hotel_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hotel_details`
--

LOCK TABLES `hotel_details` WRITE;
/*!40000 ALTER TABLE `hotel_details` DISABLE KEYS */;
INSERT INTO `hotel_details` VALUES (1,"Prince's Manor Hotel & Spa","Ahmadabad",2),(2,"Sunny View Hotel & Spa","Amreli",2),(3,"Rose Shores Resort","Bharuch",2),(4,"Elite Point Resort & Spa","Bhavnagar",1),(5,"Southern Star Motel","Bhuj",0),(6,"Sublime Expanse Resort","Dwarka",3),(7,"Cosmos Resort","Gandhinagar",4),(8,"Prism Resort & Spa","Godhra",1),(9,"Moss Resort & Spa","Jamnagar",2),(10,"Voyage Motel","Junagadh",2),(11,"King's Valley Hotel","Kandla",5),(12,"Light Manor Resort","Khambhat",2),(13,"Soft Forest Resort & Spa","Badami",2),(14,"Exalted Maple Hotel","Ballari",4),(15,"Majestic Palms Resort & Spa","Bengaluru",4),(16,"Double Oyster Hotel","Belagavi",1),(17,"Galaxy Resort","Bhadravati",5),(18,"Travel Hotel","Bidar",0),(19,"Stellar Hotel & Spa","Chikkamagaluru",4),(20,"Courtyard Resort & Spa","Chitradurga",1),(21,"Antique Covert Hotel","Davangere",0),(22,"Spring Majesty Hotel","Halebid",0),(23,"Light Cottage Hotel","Hassan",1),(24,"Summer Expanse Hotel","Hubballi-Dharwad",5),(25,"Double Brewery Hotel","Kalaburagi",5),(26,"Antique Flower Resort","Kolar",3),(27,"Pinnacle Hotel","Madikeri",3),(28,"Amber Hotel","Mandya",1),(29,"Nova Hotel","Mangaluru",1),(30,"Snooze Hotel","Mysuru",2);
/*!40000 ALTER TABLE `hotel_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hotel_reviews`
--

DROP TABLE IF EXISTS `hotel_reviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hotel_reviews` (
  `review_id` int NOT NULL,
  `hotel_id` int NOT NULL,
  `guest_name` varchar(100) DEFAULT NULL,
  `review_text` text,
  `rating` int DEFAULT NULL,
  FOREIGN KEY (`hotel_id`) REFERENCES `hotel_details` (`hotel_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hotel_reviews`
--

LOCK TABLES `hotel_reviews` WRITE;
/*!40000 ALTER TABLE `hotel_reviews` DISABLE KEYS */;
INSERT INTO hotel_reviews VALUES (1,1,"Savana","Great hotel! Excellent service, clean rooms, and comfortable beds.",5),(2,2,"Kelvin","Terrible experience. Dirty rooms, rude staff, and noisy surroundings.",2),(3,3,"Sydney","Wonderful stay! The hotel is well-maintained, with friendly staff and amazing amenities.",4),(4,4,"Emma","Awful hotel. Broken facilities, unhelpful staff, and awful food.",1),(5,5,"Abraham","Nice hotel with beautiful views. The room was spacious and the bed was comfortable.",3),(6,6,"Lucas","Worst hotel I've ever been to. Filthy rooms, terrible smell, and non-existent customer service.",0),(7,7,"Adelaide","Highly recommend this hotel! The staff was accommodating and the location was convenient.",4),(8,15,"Walter","Absolutely disgusting hotel. Bugs in the room, broken TV, and uncomfortable beds.",1),(9,16,"Tyler","Lovely hotel with a great atmosphere. The room was clean and the staff was friendly.",2),(10,17,"Clark","Horrible experience. Unresponsive staff, noisy neighbors, and subpar amenities.",0),(11,18,"Annabella","Great value for money. The hotel had a nice pool, clean rooms, and friendly staff.",3),(12,19,"Frederick","Avoid this hotel at all costs. Unsanitary conditions, rude staff, and overpriced.",3),(13,20,"Jenna","Cozy hotel with a charming ambiance. The bed was comfy and the breakfast was delicious.",4),(14,21,"Daryl","Disappointing stay. The room was not as advertised, and the service was terrible.",2),(15,22,"Alina","Well-run hotel with helpful staff. The room was modern and the location was ideal.",3),(16,27,"Penelope","Nightmare hotel. No hot water, broken AC, and unprofessional staff.",1),(17,28,"Sabrina","Fantastic experience! The hotel exceeded our expectations in every way.",5),(18,29,"Chelsea","Unacceptable conditions. Dirty sheets, noisy rooms, and unhygienic bathrooms.",1),(19,30,"Tiana","Impressive hotel with luxurious amenities. The staff was attentive and the rooms were stunning.",4),(20,5,"Daryl","Stay away from this hotel. Uncomfortable beds, poor hygiene, and unhelpful staff.",2),(21,6,"Ned","Outstanding service and breathtaking views. Definitely worth a visit!",4),(22,7,"Aida","The worst hotel I've ever stayed at. Rude staff, broken facilities, and terrible food.",0),(23,15,"Charlotte","Exceptional hotel with top-notch facilities. The room was spotless and the service was unmatched.",4),(24,16,"Maddie","No words can describe how awful this hotel is. Unsanitary conditions, rude staff, and constant noise.",1),(25,17,"Adrian","Pleasant stay with friendly staff. The location was convenient and the rooms were clean.",4),(26,19,"Ryan","Absolutely horrendous hotel. Uncomfortable beds, dirty rooms, and unprofessional staff.",1),(27,20,"Alexander","Highly recommended hotel with a great location. The staff was helpful and the rooms were spacious.",3),(28,21,"Amanda","Run-down hotel with terrible service. The rooms were outdated and the staff was unresponsive.",2),(29,22,"Walter","Delightful stay in a charming hotel. The room was cozy and the staff was accommodating.",4),(30,27,"Kevin","Disgusting hotel with zero cleanliness standards. Broken facilities and unfriendly staff.",2),(31,28,"Alfred","Top-notch hotel with exceptional service. The rooms were luxurious and the staff was attentive.",3),(32,29,"Eric","Stay far away from this hotel. Uncomfortable beds, unclean rooms, and incompetent staff.",1),(33,30,"Maya","Lovely hotel with a welcoming ambiance. The beds were comfortable and the breakfast was delicious.",3),(34,5,"Sofia","Avoid this hotel like the plague. Filthy conditions, non-existent customer service, and sky-high prices.",1),(35,6,"Abigail","Highly satisfied with our stay. The hotel had excellent amenities and friendly staff.",4),(41,28,"Kimberly","Perfect stay! The hotel had everything we needed, and the staff went above and beyond.",3),(42,29,"Agata","Avoid this hotel at all costs. Terrible hygiene, unresponsive staff, and exorbitant prices.",2),(43,30,"Edward","Charming hotel with a cozy atmosphere. The beds were comfortable and the staff was friendly.",3),(44,5,"Stuart","Disastrous stay. Uncomfortable beds, dirty rooms, and rude staff.",0),(45,6,"Amber","Great value for money. The hotel was clean, the service was excellent, and the location was convenient.",4);
/*!40000 ALTER TABLE `hotel_reviews` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-11-10 19:27:12
