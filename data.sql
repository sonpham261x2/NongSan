-- MySQL dump 10.13  Distrib 8.0.25, for Win64 (x86_64)
--
-- Host: localhost    Database: martfury_shop
-- ------------------------------------------------------
-- Server version	8.0.25

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `app_roles`
--

DROP TABLE IF EXISTS `app_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `app_roles` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app_roles`
--

LOCK TABLES `app_roles` WRITE;
/*!40000 ALTER TABLE `app_roles` DISABLE KEYS */;
INSERT INTO `app_roles` VALUES (1,'ROLE_USER'),(2,'ROLE_ADMIN');
/*!40000 ALTER TABLE `app_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cart_details`
--

DROP TABLE IF EXISTS `cart_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cart_details` (
  `cart_detail_id` bigint NOT NULL AUTO_INCREMENT,
  `price` double DEFAULT NULL,
  `quantity` int NOT NULL,
  `cart_id` bigint DEFAULT NULL,
  `product_id` bigint DEFAULT NULL,
  PRIMARY KEY (`cart_detail_id`),
  KEY `FKkcochhsa891wv0s9wrtf36wgt` (`cart_id`),
  KEY `FK9rlic3aynl3g75jvedkx84lhv` (`product_id`),
  CONSTRAINT `FK9rlic3aynl3g75jvedkx84lhv` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`),
  CONSTRAINT `FKkcochhsa891wv0s9wrtf36wgt` FOREIGN KEY (`cart_id`) REFERENCES `carts` (`cart_id`)
) ENGINE=InnoDB AUTO_INCREMENT=80 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart_details`
--

LOCK TABLES `cart_details` WRITE;
/*!40000 ALTER TABLE `cart_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `cart_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `carts`
--

DROP TABLE IF EXISTS `carts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `carts` (
  `cart_id` bigint NOT NULL AUTO_INCREMENT,
  `amount` double DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `user_id` bigint DEFAULT NULL,
  PRIMARY KEY (`cart_id`),
  KEY `FKb5o626f86h46m4s7ms6ginnop` (`user_id`),
  CONSTRAINT `FKb5o626f86h46m4s7ms6ginnop` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `carts`
--

LOCK TABLES `carts` WRITE;
/*!40000 ALTER TABLE `carts` DISABLE KEYS */;
INSERT INTO `carts` VALUES (1,0,'Hà Tĩnh','0967291997',2),(2,0,'123, Xã Thượng Ân, Huyện Ngân Sơn, Tỉnh Bắc Kạn','0916891997',3),(3,0,'168, Xã Na Khê, Huyện Yên Minh, Tỉnh Hà Giang','0916855648',4);
/*!40000 ALTER TABLE `carts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories` (
  `category_id` bigint NOT NULL AUTO_INCREMENT,
  `category_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'nông sản 1'),(2,'nông sản 2'),(3,'nông sản 3'),(4,'nông sản 4'),(5,'nông sản 5');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `favorites`
--

DROP TABLE IF EXISTS `favorites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `favorites` (
  `favorite_id` bigint NOT NULL AUTO_INCREMENT,
  `product_id` bigint DEFAULT NULL,
  `user_id` bigint DEFAULT NULL,
  PRIMARY KEY (`favorite_id`),
  KEY `FK6sgu5npe8ug4o42bf9j71x20c` (`product_id`),
  KEY `FKk7du8b8ewipawnnpg76d55fus` (`user_id`),
  CONSTRAINT `FK6sgu5npe8ug4o42bf9j71x20c` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`),
  CONSTRAINT `FKk7du8b8ewipawnnpg76d55fus` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `favorites`
--

LOCK TABLES `favorites` WRITE;
/*!40000 ALTER TABLE `favorites` DISABLE KEYS */;
INSERT INTO `favorites` VALUES (1,5,3),(13,54,3),(14,36,4),(15,4,4),(16,5,4),(17,8,4),(18,7,4),(19,33,4),(20,32,4);
/*!40000 ALTER TABLE `favorites` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notification`
--

DROP TABLE IF EXISTS `notification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `notification` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `message` varchar(255) DEFAULT NULL,
  `status` bit(1) DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notification`
--

LOCK TABLES `notification` WRITE;
/*!40000 ALTER TABLE `notification` DISABLE KEYS */;
INSERT INTO `notification` VALUES (1,'Trần Hữu Đồng đã đặt một đơn hàng (1)',_binary '\0','2022-03-20 22:18:21'),(2,'Trần Hữu Đồng đã đặt một đơn hàng (2)',_binary '\0','2022-03-20 22:38:14'),(3,'Trần Hữu Đồng đã đặt một đơn hàng (3)',_binary '\0','2022-03-20 22:47:49'),(4,'Trần Hữu Đồng đã đặt một đơn hàng (4)',_binary '\0','2022-03-20 22:54:49'),(5,'Trần Hữu Đồng đã đặt một đơn hàng (5)',_binary '\0','2022-03-20 23:11:09'),(6,'Trần Hữu Đồng đã đặt một đơn hàng (6)',_binary '','2022-03-20 23:16:10'),(7,'Trần Hữu Đồng đã đặt một đơn hàng (7)',_binary '\0','2022-03-20 23:29:46'),(8,'Trần Hữu Đồng đã đặt một đơn hàng (8)',_binary '\0','2022-03-20 23:31:38'),(9,'Trần Thảo Chi đã đặt một đơn hàng (9)',_binary '','2022-03-23 20:53:51'),(10,'Trần Thảo Chi đã đặt một đơn hàng (10)',_binary '','2022-03-23 20:55:25');
/*!40000 ALTER TABLE `notification` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_details`
--

DROP TABLE IF EXISTS `order_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_details` (
  `order_detail_id` bigint NOT NULL AUTO_INCREMENT,
  `price` double DEFAULT NULL,
  `quantity` int NOT NULL,
  `order_id` bigint DEFAULT NULL,
  `product_id` bigint DEFAULT NULL,
  PRIMARY KEY (`order_detail_id`),
  KEY `FKjyu2qbqt8gnvno9oe9j2s2ldk` (`order_id`),
  KEY `FK4q98utpd73imf4yhttm3w0eax` (`product_id`),
  CONSTRAINT `FK4q98utpd73imf4yhttm3w0eax` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`),
  CONSTRAINT `FKjyu2qbqt8gnvno9oe9j2s2ldk` FOREIGN KEY (`order_id`) REFERENCES `orders` (`orders_id`)
) ENGINE=InnoDB AUTO_INCREMENT=80 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_details`
--

LOCK TABLES `order_details` WRITE;
/*!40000 ALTER TABLE `order_details` DISABLE KEYS */;
INSERT INTO `order_details` VALUES (1,25088000,1,1,23),(2,680200,1,1,27),(3,29392999.999999996,1,1,51),(4,43290000,1,1,9),(5,31000000,1,1,7),(6,31890000,1,1,5),(7,716000,1,1,25),(8,716000,1,1,24),(9,93000000,3,2,7),(10,129870000,3,2,8),(11,52170000,3,2,12),(12,50670000,3,2,13),(13,23220000,2,2,55),(14,4644000,3,2,32),(15,5092500,3,2,29),(16,3052800,2,2,28),(17,716000,1,2,24),(18,402380,1,2,41),(19,448799.99999999994,1,2,42),(20,34790000,1,3,3),(21,33390000,1,3,4),(22,31890000,1,3,5),(23,48990000,1,3,6),(24,30890000,1,3,10),(25,43290000,1,3,9),(26,43290000,1,3,8),(27,17390000,1,3,12),(28,50970000,3,4,11),(29,93000000,3,4,7),(30,129870000,3,4,9),(31,129870000,3,4,8),(32,92670000,3,4,10),(33,50970000,3,4,14),(34,50670000,3,4,13),(35,1980000,3,4,37),(36,68600,2,4,38),(37,81900,2,4,39),(38,14049000,3,4,40),(39,43180000,2,4,16),(40,7526400,3,4,21),(41,71221500,3,4,20),(42,82290600,3,4,22),(43,75264000,3,4,23),(44,29602000,4,4,47),(45,8982000,2,4,46),(46,25350000,2,4,52),(47,58785999.99999999,2,4,51),(48,9900800,2,4,50),(49,16580000,2,4,53),(50,27300000,2,5,36),(51,1320000,2,6,37),(52,137200,4,6,38),(53,163800,4,6,39),(54,14049000,3,6,40),(55,5423760,3,6,44),(56,6029100,3,6,43),(57,2243999.9999999995,5,6,42),(58,2414280,6,6,41),(59,30922500,7,6,45),(60,2148000,3,6,25),(61,3346200,5,6,26),(62,2720800,4,6,27),(63,3234330,3,6,31),(64,4074000,3,6,30),(65,5092500,3,6,29),(66,2762560,2,6,33),(67,4644000,3,6,32),(68,20340450,3,6,34),(69,32343300,3,6,35),(70,54600000,4,6,36),(71,402380,1,7,41),(72,31890000,1,8,5),(73,40950000,3,9,36),(74,66780000,2,9,4),(75,31890000,1,9,5),(76,43290000,1,9,8),(77,2762560,2,10,33),(78,3096000,2,10,32);
/*!40000 ALTER TABLE `order_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `orders_id` bigint NOT NULL AUTO_INCREMENT,
  `address` varchar(255) DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `order_date` datetime DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `status` int NOT NULL,
  `user_id` bigint DEFAULT NULL,
  PRIMARY KEY (`orders_id`),
  KEY `FK32ql8ubntj5uh44ph9659tiih` (`user_id`),
  CONSTRAINT `FK32ql8ubntj5uh44ph9659tiih` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1,'68, Phường Gia Thụy, Quận Long Biên, Thành phố Hà Nội',162773200,'2022-03-20 22:18:21','0916891997',2,3),(2,'268, Xã Lương Sơn, Huyện Yên Lập, Tỉnh Phú Thọ',363286480,'2022-03-20 22:38:14','0916891997',2,3),(3,'22, Xã Đàm Thuỷ, Huyện Trùng Khánh, Tỉnh Cao Bằng',283920000,'2022-03-20 22:47:49','0916891997',2,3),(4,'68, Phường Thạch Quý, Thành phố Hà Tĩnh, Tỉnh Hà Tĩnh',1042882800,'2022-03-20 22:54:49','0916891997',2,3),(5,'86, Xã Động Đạt, Huyện Phú Lương, Tỉnh Thái Nguyên',27300000,'2022-03-20 23:11:09','0916891997',2,3),(6,'123, Xã Yên Hòa, Huyện Đà Bắc, Tỉnh Hoà Bình',198009780,'2022-03-20 23:16:10','0916891997',2,3),(7,'123, Xã Phúc Sơn, Huyện Chiêm Hóa, Tỉnh Tuyên Quang',402380,'2022-03-20 23:29:46','0916891997',0,3),(8,'123, Xã Thượng Ân, Huyện Ngân Sơn, Tỉnh Bắc Kạn',31890000,'2022-03-20 23:31:38','0916891997',0,3),(9,'68, Xã Vạn Khánh, Huyện Vạn Ninh, Tỉnh Khánh Hòa',182910000,'2022-03-23 20:53:51','0916855648',2,4),(10,'168, Xã Na Khê, Huyện Yên Minh, Tỉnh Hà Giang',8014780,'2022-03-23 20:55:25','0916855648',2,4);
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `product_id` bigint NOT NULL AUTO_INCREMENT,
  `description` varchar(1000) DEFAULT NULL,
  `discount` int NOT NULL,
  `entered_date` date DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `quantity` int NOT NULL,
  `sold` int NOT NULL,
  `status` bit(1) DEFAULT NULL,
  `category_id` bigint DEFAULT NULL,
  PRIMARY KEY (`product_id`),
  KEY `FKog2rp4qthbtt2lfyhfo32lsw9` (`category_id`),
  CONSTRAINT `FKog2rp4qthbtt2lfyhfo32lsw9` FOREIGN KEY (`category_id`) REFERENCES `categories` (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (3,'Món thịt băm rim mắm, canh thịt băm, thịt băm làm nem rán,… không còn xa lạ với các gia đình người Việt. Thời gian này vợ em đẻ, nhu cầu thịt băm rim, thịt băm nấu canh rau ngót nhà em tăng vọt. Ngày 3 bữa sáng/trưa/tối.',0,'2022-03-20','https://res.cloudinary.com/martfury/image/upload/v1729050929/products/bhiwnwyrp0cm8qpyadsc.png','rau1',34790000,9999,1,_binary '',1),(4,'Món thịt băm rim mắm, canh thịt băm, thịt băm làm nem rán,… không còn xa lạ với các gia đình người Việt. Thời gian này vợ em đẻ, nhu cầu thịt băm rim, thịt băm nấu canh rau ngót nhà em tăng vọt. Ngày 3 bữa sáng/trưa/tối.',0,'2022-03-20','https://res.cloudinary.com/martfury/image/upload/v1729050929/products/bhiwnwyrp0cm8qpyadsc.png','rau1',33390000,997,3,_binary '',1),(5,'Món thịt băm rim mắm, canh thịt băm, thịt băm làm nem rán,… không còn xa lạ với các gia đình người Việt. Thời gian này vợ em đẻ, nhu cầu thịt băm rim, thịt băm nấu canh rau ngót nhà em tăng vọt. Ngày 3 bữa sáng/trưa/tối.',0,'2022-03-20','https://res.cloudinary.com/martfury/image/upload/v1729050929/products/bhiwnwyrp0cm8qpyadsc.png','rau1',31890000,997,3,_binary '',1),(6,'Món thịt băm rim mắm, canh thịt băm, thịt băm làm nem rán,… không còn xa lạ với các gia đình người Việt. Thời gian này vợ em đẻ, nhu cầu thịt băm rim, thịt băm nấu canh rau ngót nhà em tăng vọt. Ngày 3 bữa sáng/trưa/tối.',0,'2022-03-20','https://res.cloudinary.com/martfury/image/upload/v1729050929/products/bhiwnwyrp0cm8qpyadsc.png','rau1',48990000,999,1,_binary '',1),(7,'Món thịt băm rim mắm, canh thịt băm, thịt băm làm nem rán,… không còn xa lạ với các gia đình người Việt. Thời gian này vợ em đẻ, nhu cầu thịt băm rim, thịt băm nấu canh rau ngót nhà em tăng vọt. Ngày 3 bữa sáng/trưa/tối.',0,'2022-03-20','https://res.cloudinary.com/martfury/image/upload/v1729050929/products/bhiwnwyrp0cm8qpyadsc.png','rau1',31000000,993,7,_binary '',1),(8,'Món thịt băm rim mắm, canh thịt băm, thịt băm làm nem rán,… không còn xa lạ với các gia đình người Việt. Thời gian này vợ em đẻ, nhu cầu thịt băm rim, thịt băm nấu canh rau ngót nhà em tăng vọt. Ngày 3 bữa sáng/trưa/tối.',0,'2022-03-20','https://res.cloudinary.com/martfury/image/upload/v1729050929/products/bhiwnwyrp0cm8qpyadsc.png','rau1',43290000,992,8,_binary '',1),(9,'Món thịt băm rim mắm, canh thịt băm, thịt băm làm nem rán,… không còn xa lạ với các gia đình người Việt. Thời gian này vợ em đẻ, nhu cầu thịt băm rim, thịt băm nấu canh rau ngót nhà em tăng vọt. Ngày 3 bữa sáng/trưa/tối.',0,'2022-03-20','https://res.cloudinary.com/martfury/image/upload/v1729050929/products/bhiwnwyrp0cm8qpyadsc.png','rau1',43290000,995,5,_binary '',1),(10,'Món thịt băm rim mắm, canh thịt băm, thịt băm làm nem rán,… không còn xa lạ với các gia đình người Việt. Thời gian này vợ em đẻ, nhu cầu thịt băm rim, thịt băm nấu canh rau ngót nhà em tăng vọt. Ngày 3 bữa sáng/trưa/tối.',0,'2022-03-20','https://res.cloudinary.com/martfury/image/upload/v1729050929/products/bhiwnwyrp0cm8qpyadsc.png','rau1',30890000,996,4,_binary '',1),(11,'Món thịt băm rim mắm, canh thịt băm, thịt băm làm nem rán,… không còn xa lạ với các gia đình người Việt. Thời gian này vợ em đẻ, nhu cầu thịt băm rim, thịt băm nấu canh rau ngót nhà em tăng vọt. Ngày 3 bữa sáng/trưa/tối.',0,'2022-03-20','https://res.cloudinary.com/martfury/image/upload/v1729050929/products/bhiwnwyrp0cm8qpyadsc.png','rau1',16990000,997,3,_binary '',1),(12,'Món thịt băm rim mắm, canh thịt băm, thịt băm làm nem rán,… không còn xa lạ với các gia đình người Việt. Thời gian này vợ em đẻ, nhu cầu thịt băm rim, thịt băm nấu canh rau ngót nhà em tăng vọt. Ngày 3 bữa sáng/trưa/tối.',0,'2022-03-20','https://res.cloudinary.com/martfury/image/upload/v1729050929/products/bhiwnwyrp0cm8qpyadsc.png','rau1',17390000,996,4,_binary '',1),(13,'Món thịt băm rim mắm, canh thịt băm, thịt băm làm nem rán,… không còn xa lạ với các gia đình người Việt. Thời gian này vợ em đẻ, nhu cầu thịt băm rim, thịt băm nấu canh rau ngót nhà em tăng vọt. Ngày 3 bữa sáng/trưa/tối.',0,'2022-03-20','https://res.cloudinary.com/martfury/image/upload/v1729050929/products/bhiwnwyrp0cm8qpyadsc.png','rau1',16890000,994,6,_binary '',1),(14,'Món thịt băm rim mắm, canh thịt băm, thịt băm làm nem rán,… không còn xa lạ với các gia đình người Việt. Thời gian này vợ em đẻ, nhu cầu thịt băm rim, thịt băm nấu canh rau ngót nhà em tăng vọt. Ngày 3 bữa sáng/trưa/tối.',0,'2022-03-20','https://res.cloudinary.com/martfury/image/upload/v1729050929/products/bhiwnwyrp0cm8qpyadsc.png','rau1',16990000,997,3,_binary '',1),(15,'Món thịt băm rim mắm, canh thịt băm, thịt băm làm nem rán,… không còn xa lạ với các gia đình người Việt. Thời gian này vợ em đẻ, nhu cầu thịt băm rim, thịt băm nấu canh rau ngót nhà em tăng vọt. Ngày 3 bữa sáng/trưa/tối.',0,'2022-03-20','https://res.cloudinary.com/martfury/image/upload/v1729050929/products/bhiwnwyrp0cm8qpyadsc.png','rau1',21090000,1000,0,_binary '',1),(16,'Món thịt băm rim mắm, canh thịt băm, thịt băm làm nem rán,… không còn xa lạ với các gia đình người Việt. Thời gian này vợ em đẻ, nhu cầu thịt băm rim, thịt băm nấu canh rau ngót nhà em tăng vọt. Ngày 3 bữa sáng/trưa/tối.',0,'2022-03-20','https://res.cloudinary.com/martfury/image/upload/v1729050929/products/bhiwnwyrp0cm8qpyadsc.png','rau1',21590000,998,2,_binary '',2),(17,'Món thịt băm rim mắm, canh thịt băm, thịt băm làm nem rán,… không còn xa lạ với các gia đình người Việt. Thời gian này vợ em đẻ, nhu cầu thịt băm rim, thịt băm nấu canh rau ngót nhà em tăng vọt. Ngày 3 bữa sáng/trưa/tối.',0,'2022-03-20','https://res.cloudinary.com/martfury/image/upload/v1729050929/products/bhiwnwyrp0cm8qpyadsc.png','rau1',21590000,2000,0,_binary '',2),(18,'Món thịt băm rim mắm, canh thịt băm, thịt băm làm nem rán,… không còn xa lạ với các gia đình người Việt. Thời gian này vợ em đẻ, nhu cầu thịt băm rim, thịt băm nấu canh rau ngót nhà em tăng vọt. Ngày 3 bữa sáng/trưa/tối.',0,'2022-03-20','https://res.cloudinary.com/martfury/image/upload/v1729050929/products/bhiwnwyrp0cm8qpyadsc.png','rau1',15000000,10000,0,_binary '',2),(19,'Món thịt băm rim mắm, canh thịt băm, thịt băm làm nem rán,… không còn xa lạ với các gia đình người Việt. Thời gian này vợ em đẻ, nhu cầu thịt băm rim, thịt băm nấu canh rau ngót nhà em tăng vọt. Ngày 3 bữa sáng/trưa/tối.',0,'2022-03-20','https://res.cloudinary.com/martfury/image/upload/v1729050929/products/bhiwnwyrp0cm8qpyadsc.png','rau1',12090000,1000,0,_binary '',2),(20,'Món thịt băm rim mắm, canh thịt băm, thịt băm làm nem rán,… không còn xa lạ với các gia đình người Việt. Thời gian này vợ em đẻ, nhu cầu thịt băm rim, thịt băm nấu canh rau ngót nhà em tăng vọt. Ngày 3 bữa sáng/trưa/tối.',5,'2022-03-20','https://res.cloudinary.com/martfury/image/upload/v1729050929/products/bhiwnwyrp0cm8qpyadsc.png','rau1',24990000,997,3,_binary '',2),(21,'Món thịt băm rim mắm, canh thịt băm, thịt băm làm nem rán,… không còn xa lạ với các gia đình người Việt. Thời gian này vợ em đẻ, nhu cầu thịt băm rim, thịt băm nấu canh rau ngót nhà em tăng vọt. Ngày 3 bữa sáng/trưa/tối.',2,'2022-03-20','https://res.cloudinary.com/martfury/image/upload/v1729050929/products/bhiwnwyrp0cm8qpyadsc.png','rau1',2560000,997,3,_binary '',2),(22,'Món thịt băm rim mắm, canh thịt băm, thịt băm làm nem rán,… không còn xa lạ với các gia đình người Việt. Thời gian này vợ em đẻ, nhu cầu thịt băm rim, thịt băm nấu canh rau ngót nhà em tăng vọt. Ngày 3 bữa sáng/trưa/tối.',2,'2022-03-20','https://res.cloudinary.com/martfury/image/upload/v1729050929/products/bhiwnwyrp0cm8qpyadsc.png','rau1',27990000,997,3,_binary '',2),(23,'Món thịt băm rim mắm, canh thịt băm, thịt băm làm nem rán,… không còn xa lạ với các gia đình người Việt. Thời gian này vợ em đẻ, nhu cầu thịt băm rim, thịt băm nấu canh rau ngót nhà em tăng vọt. Ngày 3 bữa sáng/trưa/tối.',2,'2022-03-20','https://res.cloudinary.com/martfury/image/upload/v1729050929/products/bhiwnwyrp0cm8qpyadsc.png','rau1',25600000,996,4,_binary '',2),(24,'Món thịt băm rim mắm, canh thịt băm, thịt băm làm nem rán,… không còn xa lạ với các gia đình người Việt. Thời gian này vợ em đẻ, nhu cầu thịt băm rim, thịt băm nấu canh rau ngót nhà em tăng vọt. Ngày 3 bữa sáng/trưa/tối.',0,'2022-03-20','https://res.cloudinary.com/martfury/image/upload/v1729050929/products/bhiwnwyrp0cm8qpyadsc.png','rau1',716000,1998,2,_binary '',4),(25,'Món thịt băm rim mắm, canh thịt băm, thịt băm làm nem rán,… không còn xa lạ với các gia đình người Việt. Thời gian này vợ em đẻ, nhu cầu thịt băm rim, thịt băm nấu canh rau ngót nhà em tăng vọt. Ngày 3 bữa sáng/trưa/tối.',0,'2022-03-20','https://res.cloudinary.com/martfury/image/upload/v1729050929/products/bhiwnwyrp0cm8qpyadsc.png','rau1',716000,996,4,_binary '',4),(26,'Món thịt băm rim mắm, canh thịt băm, thịt băm làm nem rán,… không còn xa lạ với các gia đình người Việt. Thời gian này vợ em đẻ, nhu cầu thịt băm rim, thịt băm nấu canh rau ngót nhà em tăng vọt. Ngày 3 bữa sáng/trưa/tối.',1,'2022-03-20','https://res.cloudinary.com/martfury/image/upload/v1729050929/products/bhiwnwyrp0cm8qpyadsc.png','rau1',676000,995,5,_binary '',4),(27,'Món thịt băm rim mắm, canh thịt băm, thịt băm làm nem rán,… không còn xa lạ với các gia đình người Việt. Thời gian này vợ em đẻ, nhu cầu thịt băm rim, thịt băm nấu canh rau ngót nhà em tăng vọt. Ngày 3 bữa sáng/trưa/tối.',5,'2022-03-20','https://res.cloudinary.com/martfury/image/upload/v1729050929/products/bhiwnwyrp0cm8qpyadsc.png','rau1',716000,995,5,_binary '',4),(28,'Món thịt băm rim mắm, canh thịt băm, thịt băm làm nem rán,… không còn xa lạ với các gia đình người Việt. Thời gian này vợ em đẻ, nhu cầu thịt băm rim, thịt băm nấu canh rau ngót nhà em tăng vọt. Ngày 3 bữa sáng/trưa/tối.',4,'2022-03-20','https://res.cloudinary.com/martfury/image/upload/v1729050929/products/bhiwnwyrp0cm8qpyadsc.png','rau1',1590000,198,2,_binary '',4),(29,'Món thịt băm rim mắm, canh thịt băm, thịt băm làm nem rán,… không còn xa lạ với các gia đình người Việt. Thời gian này vợ em đẻ, nhu cầu thịt băm rim, thịt băm nấu canh rau ngót nhà em tăng vọt. Ngày 3 bữa sáng/trưa/tối.',3,'2022-03-20','https://res.cloudinary.com/martfury/image/upload/v1729050929/products/bhiwnwyrp0cm8qpyadsc.png','rau1',1750000,2994,6,_binary '',4),(30,'Món thịt băm rim mắm, canh thịt băm, thịt băm làm nem rán,… không còn xa lạ với các gia đình người Việt. Thời gian này vợ em đẻ, nhu cầu thịt băm rim, thịt băm nấu canh rau ngót nhà em tăng vọt. Ngày 3 bữa sáng/trưa/tối.',0,'2022-03-20','https://res.cloudinary.com/martfury/image/upload/v1729050929/products/bhiwnwyrp0cm8qpyadsc.png','rau1',1358000,597,3,_binary '',4),(31,'Món thịt băm rim mắm, canh thịt băm, thịt băm làm nem rán,… không còn xa lạ với các gia đình người Việt. Thời gian này vợ em đẻ, nhu cầu thịt băm rim, thịt băm nấu canh rau ngót nhà em tăng vọt. Ngày 3 bữa sáng/trưa/tối.',1,'2022-03-20','https://res.cloudinary.com/martfury/image/upload/v1729050929/products/bhiwnwyrp0cm8qpyadsc.png','rau1',1089000,795,5,_binary '',4),(32,'Món thịt băm rim mắm, canh thịt băm, thịt băm làm nem rán,… không còn xa lạ với các gia đình người Việt. Thời gian này vợ em đẻ, nhu cầu thịt băm rim, thịt băm nấu canh rau ngót nhà em tăng vọt. Ngày 3 bữa sáng/trưa/tối.',0,'2022-03-20','https://res.cloudinary.com/martfury/image/upload/v1729050929/products/bhiwnwyrp0cm8qpyadsc.png','rau1',1548000,6860,8,_binary '',4),(33,'Món thịt băm rim mắm, canh thịt băm, thịt băm làm nem rán,… không còn xa lạ với các gia đình người Việt. Thời gian này vợ em đẻ, nhu cầu thịt băm rim, thịt băm nấu canh rau ngót nhà em tăng vọt. Ngày 3 bữa sáng/trưa/tối.',3,'2022-03-20','https://res.cloudinary.com/martfury/image/upload/v1729050929/products/bhiwnwyrp0cm8qpyadsc.png','rau1',1424000,8682,4,_binary '',4),(34,'Món thịt băm rim mắm, canh thịt băm, thịt băm làm nem rán,… không còn xa lạ với các gia đình người Việt. Thời gian này vợ em đẻ, nhu cầu thịt băm rim, thịt băm nấu canh rau ngót nhà em tăng vọt. Ngày 3 bữa sáng/trưa/tối.',5,'2022-03-20','https://res.cloudinary.com/martfury/image/upload/v1729050929/products/bhiwnwyrp0cm8qpyadsc.png','rau1',7137000,197,3,_binary '',4),(35,'Món thịt băm rim mắm, canh thịt băm, thịt băm làm nem rán,… không còn xa lạ với các gia đình người Việt. Thời gian này vợ em đẻ, nhu cầu thịt băm rim, thịt băm nấu canh rau ngót nhà em tăng vọt. Ngày 3 bữa sáng/trưa/tối.',1,'2022-03-20','https://res.cloudinary.com/martfury/image/upload/v1729050929/products/bhiwnwyrp0cm8qpyadsc.png','rau1',10890000,397,3,_binary '',4),(36,'Món thịt băm rim mắm, canh thịt băm, thịt băm làm nem rán,… không còn xa lạ với các gia đình người Việt. Thời gian này vợ em đẻ, nhu cầu thịt băm rim, thịt băm nấu canh rau ngót nhà em tăng vọt. Ngày 3 bữa sáng/trưa/tối.',35,'2022-03-20','https://res.cloudinary.com/martfury/image/upload/v1729050929/products/bhiwnwyrp0cm8qpyadsc.png','rau1',21000000,991,9,_binary '',4),(37,'Món thịt băm rim mắm, canh thịt băm, thịt băm làm nem rán,… không còn xa lạ với các gia đình người Việt. Thời gian này vợ em đẻ, nhu cầu thịt băm rim, thịt băm nấu canh rau ngót nhà em tăng vọt. Ngày 3 bữa sáng/trưa/tối.',45,'2022-03-20','https://res.cloudinary.com/martfury/image/upload/v1729050929/products/bhiwnwyrp0cm8qpyadsc.png','rau1',1200000,1995,5,_binary '',3),(38,'Món thịt băm rim mắm, canh thịt băm, thịt băm làm nem rán,… không còn xa lạ với các gia đình người Việt. Thời gian này vợ em đẻ, nhu cầu thịt băm rim, thịt băm nấu canh rau ngót nhà em tăng vọt. Ngày 3 bữa sáng/trưa/tối.',30,'2022-03-20','https://res.cloudinary.com/martfury/image/upload/v1729050929/products/bhiwnwyrp0cm8qpyadsc.png','rau1',49000,994,6,_binary '',3),(39,'Món thịt băm rim mắm, canh thịt băm, thịt băm làm nem rán,… không còn xa lạ với các gia đình người Việt. Thời gian này vợ em đẻ, nhu cầu thịt băm rim, thịt băm nấu canh rau ngót nhà em tăng vọt. Ngày 3 bữa sáng/trưa/tối.',35,'2022-03-20','https://res.cloudinary.com/martfury/image/upload/v1729050929/products/bhiwnwyrp0cm8qpyadsc.png','rau1',63000,1994,6,_binary '',3),(40,'Món thịt băm rim mắm, canh thịt băm, thịt băm làm nem rán,… không còn xa lạ với các gia đình người Việt. Thời gian này vợ em đẻ, nhu cầu thịt băm rim, thịt băm nấu canh rau ngót nhà em tăng vọt. Ngày 3 bữa sáng/trưa/tối.',30,'2022-03-20','https://res.cloudinary.com/martfury/image/upload/v1729050929/products/bhiwnwyrp0cm8qpyadsc.png','rau1',6690000,1994,6,_binary '',3),(41,'Món thịt băm rim mắm, canh thịt băm, thịt băm làm nem rán,… không còn xa lạ với các gia đình người Việt. Thời gian này vợ em đẻ, nhu cầu thịt băm rim, thịt băm nấu canh rau ngót nhà em tăng vọt. Ngày 3 bữa sáng/trưa/tối.Món thịt băm rim mắm, canh thịt băm, thịt băm làm nem rán,… không còn xa lạ với các gia đình người Việt. Thời gian này vợ em đẻ, nhu cầu thịt băm rim, thịt băm nấu canh rau ngót nhà em tăng vọt. Ngày 3 bữa sáng/trưa/tối.',38,'2022-03-20','https://res.cloudinary.com/martfury/image/upload/v1729050929/products/bhiwnwyrp0cm8qpyadsc.png','rau1',649000,2993,7,_binary '',3),(42,'Món thịt băm rim mắm, canh thịt băm, thịt băm làm nem rán,… không còn xa lạ với các gia đình người Việt. Thời gian này vợ em đẻ, nhu cầu thịt băm rim, thịt băm nấu canh rau ngót nhà em tăng vọt. Ngày 3 bữa sáng/trưa/tối.',32,'2022-03-20','https://res.cloudinary.com/martfury/image/upload/v1729050929/products/bhiwnwyrp0cm8qpyadsc.png','rau1',660000,4494,6,_binary '',3),(43,'Món thịt băm rim mắm, canh thịt băm, thịt băm làm nem rán,… không còn xa lạ với các gia đình người Việt. Thời gian này vợ em đẻ, nhu cầu thịt băm rim, thịt băm nấu canh rau ngót nhà em tăng vọt. Ngày 3 bữa sáng/trưa/tối.',37,'2022-03-20','https://res.cloudinary.com/martfury/image/upload/v1729050929/products/bhiwnwyrp0cm8qpyadsc.png','rau1',3190000,3197,3,_binary '',3),(44,'Món thịt băm rim mắm, canh thịt băm, thịt băm làm nem rán,… không còn xa lạ với các gia đình người Việt. Thời gian này vợ em đẻ, nhu cầu thịt băm rim, thịt băm nấu canh rau ngót nhà em tăng vọt. Ngày 3 bữa sáng/trưa/tối.',38,'2022-03-20','https://res.cloudinary.com/martfury/image/upload/v1729050929/products/bhiwnwyrp0cm8qpyadsc.png','rau1',2916000,997,3,_binary '',3),(45,'Món thịt băm rim mắm, canh thịt băm, thịt băm làm nem rán,… không còn xa lạ với các gia đình người Việt. Thời gian này vợ em đẻ, nhu cầu thịt băm rim, thịt băm nấu canh rau ngót nhà em tăng vọt. Ngày 3 bữa sáng/trưa/tối.',25,'2022-03-20','https://res.cloudinary.com/martfury/image/upload/v1729050929/products/bhiwnwyrp0cm8qpyadsc.png','rau1',5890000,993,7,_binary '',3),(46,'Món thịt băm rim mắm, canh thịt băm, thịt băm làm nem rán,… không còn xa lạ với các gia đình người Việt. Thời gian này vợ em đẻ, nhu cầu thịt băm rim, thịt băm nấu canh rau ngót nhà em tăng vọt. Ngày 3 bữa sáng/trưa/tối.',10,'2022-03-20','https://res.cloudinary.com/martfury/image/upload/v1729050929/products/bhiwnwyrp0cm8qpyadsc.png','rau1',4990000,998,2,_binary '',5),(47,'Món thịt băm rim mắm, canh thịt băm, thịt băm làm nem rán,… không còn xa lạ với các gia đình người Việt. Thời gian này vợ em đẻ, nhu cầu thịt băm rim, thịt băm nấu canh rau ngót nhà em tăng vọt. Ngày 3 bữa sáng/trưa/tối.',5,'2022-03-20','https://res.cloudinary.com/martfury/image/upload/v1729050929/products/bhiwnwyrp0cm8qpyadsc.png','rau1',7790000,996,4,_binary '',5),(48,'Món thịt băm rim mắm, canh thịt băm, thịt băm làm nem rán,… không còn xa lạ với các gia đình người Việt. Thời gian này vợ em đẻ, nhu cầu thịt băm rim, thịt băm nấu canh rau ngót nhà em tăng vọt. Ngày 3 bữa sáng/trưa/tối.',9,'2022-03-20','https://res.cloudinary.com/martfury/image/upload/v1729050929/products/bhiwnwyrp0cm8qpyadsc.png','rau1',7040000,300,0,_binary '',5),(49,'Món thịt băm rim mắm, canh thịt băm, thịt băm làm nem rán,… không còn xa lạ với các gia đình người Việt. Thời gian này vợ em đẻ, nhu cầu thịt băm rim, thịt băm nấu canh rau ngót nhà em tăng vọt. Ngày 3 bữa sáng/trưa/tối.',21,'2022-03-20','https://res.cloudinary.com/martfury/image/upload/v1729050929/products/bhiwnwyrp0cm8qpyadsc.png','rau1',12490000,686,0,_binary '',5),(50,'Món thịt băm rim mắm, canh thịt băm, thịt băm làm nem rán,… không còn xa lạ với các gia đình người Việt. Thời gian này vợ em đẻ, nhu cầu thịt băm rim, thịt băm nấu canh rau ngót nhà em tăng vọt. Ngày 3 bữa sáng/trưa/tối.',9,'2022-03-20','https://res.cloudinary.com/martfury/image/upload/v1729050929/products/bhiwnwyrp0cm8qpyadsc.png','rau1',5440000,1998,2,_binary '',5),(51,'Món thịt băm rim mắm, canh thịt băm, thịt băm làm nem rán,… không còn xa lạ với các gia đình người Việt. Thời gian này vợ em đẻ, nhu cầu thịt băm rim, thịt băm nấu canh rau ngót nhà em tăng vọt. Ngày 3 bữa sáng/trưa/tối.',30,'2022-03-20','https://res.cloudinary.com/martfury/image/upload/v1729050929/products/bhiwnwyrp0cm8qpyadsc.png','rau1',41990000,997,3,_binary '',5),(52,'Món thịt băm rim mắm, canh thịt băm, thịt băm làm nem rán,… không còn xa lạ với các gia đình người Việt. Thời gian này vợ em đẻ, nhu cầu thịt băm rim, thịt băm nấu canh rau ngót nhà em tăng vọt. Ngày 3 bữa sáng/trưa/tối.',25,'2022-03-20','https://res.cloudinary.com/martfury/image/upload/v1729050929/products/bhiwnwyrp0cm8qpyadsc.png','rau1',16900000,998,2,_binary '',5),(53,'Món thịt băm rim mắm, canh thịt băm, thịt băm làm nem rán,… không còn xa lạ với các gia đình người Việt. Thời gian này vợ em đẻ, nhu cầu thịt băm rim, thịt băm nấu canh rau ngót nhà em tăng vọt. Ngày 3 bữa sáng/trưa/tối.',0,'2022-03-20','https://res.cloudinary.com/martfury/image/upload/v1729050929/products/bhiwnwyrp0cm8qpyadsc.png','rau1',8290000,998,2,_binary '',5),(54,'Món thịt băm rim mắm, canh thịt băm, thịt băm làm nem rán,… không còn xa lạ với các gia đình người Việt. Thời gian này vợ em đẻ, nhu cầu thịt băm rim, thịt băm nấu canh rau ngót nhà em tăng vọt. Ngày 3 bữa sáng/trưa/tối.',0,'2022-03-20','https://res.cloudinary.com/martfury/image/upload/v1729050929/products/bhiwnwyrp0cm8qpyadsc.png','rau1',8000000,1000,0,_binary '',5),(55,'Món thịt băm rim mắm, canh thịt băm, thịt băm làm nem rán,… không còn xa lạ với các gia đình người Việt. Thời gian này vợ em đẻ, nhu cầu thịt băm rim, thịt băm nấu canh rau ngót nhà em tăng vọt. Ngày 3 bữa sáng/trưa/tối.',10,'2022-03-20','https://res.cloudinary.com/martfury/image/upload/v1729050929/products/bhiwnwyrp0cm8qpyadsc.png','rau1',12900000,998,2,_binary '',5);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rates`
--

DROP TABLE IF EXISTS `rates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rates` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `comment` varchar(255) DEFAULT NULL,
  `rate_date` datetime DEFAULT NULL,
  `rating` double DEFAULT NULL,
  `order_detail_id` bigint DEFAULT NULL,
  `product_id` bigint DEFAULT NULL,
  `user_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKoesgfm245y1ula1pn74fw9mkk` (`order_detail_id`),
  KEY `FK4mdsmkrr7od84tpgxto2v3t2e` (`product_id`),
  KEY `FKanlgavwqngljux10mtly8qr6f` (`user_id`),
  CONSTRAINT `FK4mdsmkrr7od84tpgxto2v3t2e` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`),
  CONSTRAINT `FKanlgavwqngljux10mtly8qr6f` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`),
  CONSTRAINT `FKoesgfm245y1ula1pn74fw9mkk` FOREIGN KEY (`order_detail_id`) REFERENCES `order_details` (`order_detail_id`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rates`
--

LOCK TABLES `rates` WRITE;
/*!40000 ALTER TABLE `rates` DISABLE KEYS */;
INSERT INTO `rates` VALUES (1,'ok','2022-03-20 22:42:59',5,9,7,3),(2,'ok','2022-03-20 22:44:44',5,19,42,3),(3,'ok','2022-03-20 22:44:44',1,14,32,3),(4,'ok','2022-03-20 22:44:44',4,13,55,3),(5,'Đẹp quá, nét hơn nyc!','2022-03-20 22:48:13',5,20,3,3),(6,'ok','2022-03-20 22:48:13',5,21,4,3),(7,'đợi em bán thận đã nhé!','2022-03-20 22:48:13',5,23,6,3),(8,'cũ rồi không ai muốn dùng nữa, bán rẻ điii','2022-03-20 22:48:13',4,27,12,3),(9,'Quá đẹp, 2022 rồi không ai xài nữa.','2022-03-20 22:57:49',3,28,11,3),(10,'Chờ em bán thận rồi em quay lại nhé !','2022-03-20 22:57:49',5,29,7,3),(11,'Chờ em bán thận rồi em quay lại nhé !','2022-03-20 22:57:49',5,30,9,3),(12,'Chờ em bán thận rồi em quay lại nhé !','2022-03-20 22:57:49',5,31,8,3),(13,'Nét hơn người yêu cũ luôn !','2022-03-20 22:57:49',5,32,10,3),(14,'ok','2022-03-20 22:57:49',5,36,38,3),(15,'ok','2022-03-20 22:57:49',2,37,39,3),(16,'ok','2022-03-20 22:57:49',2,38,40,3),(17,'LOL quá mượt','2022-03-20 22:57:49',5,39,16,3),(18,'best lag, không nên mua nhé\n','2022-03-20 22:57:49',5,40,21,3),(19,'con này mà code thì sướng phải biết.','2022-03-20 22:57:49',5,43,23,3),(20,'quá vip, vừa code vừa chơi game, cân mọi thể loại game','2022-03-20 22:57:49',5,42,22,3),(21,'coi không nét, muốn trả lại quá !','2022-03-20 22:57:49',2,45,46,3),(22,'Nét hơn người yêu cũ','2022-03-20 22:57:49',5,47,51,3),(23,'google: \"cách cướp tiền ngân hàng\" :))','2022-03-20 23:03:36',5,4,9,3),(24,'đừng mua, có tiền thì thêm mà mua prm dùng cho nó sướng !','2022-03-20 23:03:36',3,5,7,3),(25,'ok','2022-03-20 23:04:58',5,44,47,3),(26,'full viền, coi đã mắt quá, nên mua','2022-03-20 23:04:58',5,49,53,3),(27,'cũng đẹp đấy, nhưng không mua!','2022-03-20 23:10:07',4,16,28,3),(28,'quá đẹp luôn, mua đi ae','2022-03-20 23:10:07',5,17,24,3),(29,'Đúng hết nước chấm luôn ! quá đẹp cho 5 sao!','2022-03-20 23:11:35',5,50,36,3),(30,'đồ đều, ae đừng mua nhé, vote 1 sao.','2022-03-20 23:13:00',1,35,37,3),(31,'Đẹp quá!','2022-03-20 23:17:05',5,66,33,3),(32,'Quá nét!','2022-03-20 23:17:05',5,67,32,3),(33,'Đẹp nhưng đắt quá!','2022-03-20 23:17:05',5,68,34,3),(35,'Quá nét cho 1 siêu phẩm!','2022-03-20 23:17:05',5,70,36,3),(36,'Best sản phẩm nên có ở trong nhà, quá tiện lợi, nên mua đi mọi người ơi','2022-03-20 23:17:05',5,55,44,3),(37,'cắm cơm nhớ bật nút nghe các bạn!','2022-03-20 23:17:05',5,57,42,3),(38,'Đắt quá, lắp điều hòa nó hợp lý hơn!','2022-03-20 23:17:05',5,59,45,3),(39,'Đéo có người yêu mà mua!!','2022-03-20 23:17:05',2,64,30,3),(40,'ok','2022-03-20 23:40:15',3,33,14,3),(41,'ok','2022-03-23 20:57:59',4,73,36,4),(42,'xấu quá cho 1 sao','2022-03-23 20:58:47',1,78,32,4);
/*!40000 ALTER TABLE `rates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_roles`
--

DROP TABLE IF EXISTS `user_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_roles` (
  `user_id` bigint NOT NULL,
  `role_id` int NOT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `FKihg20vygk8qb8lw0s573lqsmq` (`role_id`),
  CONSTRAINT `FKhfh9dx7w3ubf1co1vdev94g3f` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`),
  CONSTRAINT `FKihg20vygk8qb8lw0s573lqsmq` FOREIGN KEY (`role_id`) REFERENCES `app_roles` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_roles`
--

LOCK TABLES `user_roles` WRITE;
/*!40000 ALTER TABLE `user_roles` DISABLE KEYS */;
INSERT INTO `user_roles` VALUES (3,1),(4,1),(2,2);
/*!40000 ALTER TABLE `user_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `user_id` bigint NOT NULL AUTO_INCREMENT,
  `address` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `gender` bit(1) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `register_date` date DEFAULT NULL,
  `status` bit(1) DEFAULT NULL,
  `token` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (2,'Hà Tĩnh','greenyshop.adm@gmail.com',_binary '','https://res.cloudinary.com/martfury/image/upload/v1647789544/users/scmnttcsedtnnhckoolf.jpg','admin martfury','$2a$10$yvcT5zT/lDrM89Lofss6GeF0icqluuVVxo2QX4BehAh75k.eAzFIe','0967291997','2022-03-20',_binary '','eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJncmVlbnlzaG9wLmFkbUBnbWFpbC5jb20iLCJzY29wZXMiOlt7ImF1dGhvcml0eSI6IlJPTEVfQURNSU4ifV0sImlzcyI6Imh0dHA6Ly9kZXZnbGFuLmNvbSIsImlhdCI6MTY0Nzc4MjE4MywiZXhwIjoxNjQ3ODAwMTgzfQ.cLQLN6HPjClhuJFdBro1WHKEKfA7wYbBa3Eg3uHfNAE'),(3,'Hà Tĩnh','huudong297@gmail.com',_binary '','https://res.cloudinary.com/martfury/image/upload/v1647789561/users/h8b527drkecn8rudcvvs.jpg','Trần Hữu Đồng','$2a$10$FMNO9C77S9/Pae4.V11muuxKL0zKF1rdvJITCzZG61mKjygtMRhwu','0916891997','2022-03-20',_binary '','eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJodXVkb25nMjk3QGdtYWlsLmNvbSIsInNjb3BlcyI6W3siYXV0aG9yaXR5IjoiUk9MRV9BRE1JTiJ9XSwiaXNzIjoiaHR0cDovL2RldmdsYW4uY29tIiwiaWF0IjoxNjQ3Nzg5NDI5LCJleHAiOjE2NDc4MDc0Mjl9.JfbZQ2D8lRg8UPWhnnLMO9R-lFW_8-r2hxV9kOVZRZM'),(4,'Hà Tĩnh','thaochi6404@gmail.com',_binary '','https://res.cloudinary.com/veggie-shop/image/upload/v1633795994/users/mnoryxp056ohm0b4gcrj.png','Trần Thảo Chi','$2a$10$EWTp2tH0Rc1osvewWztXM.ba02wWffEupaG0.jziUul7b8WYUal3K','0916855648','2022-03-23',_binary '','eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ0aGFvY2hpNjQwNEBnbWFpbC5jb20iLCJzY29wZXMiOlt7ImF1dGhvcml0eSI6IlJPTEVfQURNSU4ifV0sImlzcyI6Imh0dHA6Ly9kZXZnbGFuLmNvbSIsImlhdCI6MTY0ODA0MzUzNywiZXhwIjoxNjQ4MDYxNTM3fQ.589LqMNNJ-NiF0s425cR_tfAr3cfhqf7rpQ_QU1AEIw');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-10-16 11:03:59
