-- MySQL dump 10.13  Distrib 8.4.0, for Win64 (x86_64)
--
-- Host: localhost    Database: e-commerce
-- ------------------------------------------------------
-- Server version	8.4.0

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
-- Table structure for table `categorie`
--

DROP TABLE IF EXISTS `categorie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categorie` (
  `ID_Categorie` int NOT NULL AUTO_INCREMENT,
  `Nom_categorie` varchar(100) DEFAULT NULL,
  `Description_categorie` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID_Categorie`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categorie`
--

LOCK TABLES `categorie` WRITE;
/*!40000 ALTER TABLE `categorie` DISABLE KEYS */;
INSERT INTO `categorie` VALUES (1,'Électronique','Appareils et gadgets tels que smartphones, ordinateurs portables, et appareils photo'),(2,'Électroménager','Appareils pour la maison, y compris réfrigérateurs, machines à laver et micro-ondes'),(3,'Livres','Livres imprimés et numériques de divers genres et sujets'),(4,'Mode','Vêtements, chaussures et accessoires pour hommes, femmes et enfants'),(5,'Sports','Équipements et articles de sport, y compris vêtements, chaussures et accessoires'),(6,'Beauté & Santé','Produits de beauté, soins de la peau et articles liés à la santé'),(7,'Jouets & Jeux','Jouets, jeux et puzzles pour enfants et adultes'),(8,'Automobile','Accessoires, pièces et produits d\'entretien pour voitures'),(9,'Meubles','Mobilier d\'intérieur et d\'extérieur, y compris canapés, lits et tables'),(10,'Épicerie','Produits alimentaires, boissons et articles essentiels pour la maison');
/*!40000 ALTER TABLE `categorie` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `client`
--

DROP TABLE IF EXISTS `client`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `client` (
  `Id_client` int NOT NULL AUTO_INCREMENT,
  `Nom` varchar(255) DEFAULT NULL,
  `Prénom` varchar(255) DEFAULT NULL,
  `ville` varchar(255) DEFAULT NULL,
  `Rue` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `Numéro_de_téléphone` varchar(255) DEFAULT NULL,
  `code_postal` varchar(255) DEFAULT NULL,
  `Pays` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Id_client`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `client`
--

LOCK TABLES `client` WRITE;
/*!40000 ALTER TABLE `client` DISABLE KEYS */;
INSERT INTO `client` VALUES (1,'John','Doe','New York','123 Main St','john.doe@example.com','123-456-7890','10001','USA'),(2,'Jane','Smith','Los Angeles','456 Elm St','jane.smith@example.com','987-654-3210','90001','USA'),(3,'Alice','Johnson','Chicago','789 Oak St','alice.johnson@example.com','555-555-5555','60601','USA'),(4,'Bob','Williams','Houston','567 Pine St','bob.williams@example.com','111-222-3333','77001','USA'),(5,'Eva','Martin','Miami','234 Beach Rd','eva.martin@example.com','777-888-9999','33101','USA'),(6,'Kwesi','Amissah-Arthur','Cape Coast','Pedu Rd','kwesi.arthur@example.com','233-244-567890','00233','Ghana'),(7,'Isabel','Dos Santos','Luanda','Miramar','isabel.dos.santos@example.com','244-926-123456','1000','Angola'),(8,'Idriss','Déby','NDjamena','Presidential Palace','idriss.deby@example.com','235-662-111222','01 BP 109','Chad'),(9,'Marc','Ravalomanana','Antananarivo','Iavoloha','marc.ravalomanana@example.com','261-20-1234567','101','Madagascar'),(10,'Ntsay','Christian','Antananarivo','Ambohitsorohitra','christian.ntsay@example.com','261-20-9876543','101','Madagascar'),(11,'Jean','Rajaonarimampianina','Antananarivo','Iavoloha','jean.rajaonarimampianina@example.com','261-20-5555555','101','Madagascar'),(12,'Andry','Rajoelina','Antananarivo','Ambohitsorohitra','andry.rajoelina@example.com','261-20-7777777','101','Madagascar'),(13,'Hery','Rajaonarimampianina','Antananarivo','Iavoloha','hery.rajaonarimampianina@example.com','261-20-8888888','101','Madagascar'),(14,'Didier','Ratsiraka','Toamasina','Toamasina I','didier.ratsiraka@example.com','261-53-1234567','501','Madagascar'),(15,'Kwame','Nkrumah','Accra','1 Independence Ave','kwame.nkrumah@example.com','233-244-123456','GA1','Ghana'),(16,'Nelson','Mandela','Johannesburg','46664 Vilakazi St','nelson.mandela@example.com','27-123-456789','2000','South Africa'),(17,'Haile','Selassie','Addis Ababa','Imperial Palace','haile.selassie@example.com','251-911-987654','1000','Ethiopia'),(18,'Wangari','Maathai','Nairobi','Karura Forest','wangari.maathai@example.com','254-722-555555','00100','Kenya'),(19,'Léopold','Sédar Senghor','Dakar','Avenue Léopold Sédar Senghor','leopold.senghor@example.com','221-777-111222','BP 98','Senegal'),(20,'Chinua','Achebe','Enugu','5 Ogidi Rd','chinua.achebe@example.com','234-802-234567','400001','Nigeria'),(21,'Ellen','Johnson Sirleaf','Monrovia','Executive Mansion','ellen.sirleaf@example.com','231-886-987654','1000','Liberia'),(22,'Kofi','Annan','Kumasi','14 July 1993 Rd','kofi.annan@example.com','233-277-765432','00233','Ghana'),(23,'Desmond','Tutu','Cape Town','Anglican Archbishop Residence','desmond.tutu@example.com','27-828-111111','8001','South Africa'),(24,'Mansa','Musa','Timbuktu','Golden Palace','mansa.musa@example.com','223-999-888777','32000','Mali'),(25,'Yaa','Asantewaa','Kumasi','Golden Stool Palace','yaa.asantewaa@example.com','233-544-777888','00233','Ghana'),(26,'Jomo','Kenyatta','Nairobi','State House Rd','jomo.kenyatta@example.com','254-722-987654','00100','Kenya'),(27,'Amílcar','Cabral','Bissau','Avenida Amílcar Cabral','amilcar.cabral@example.com','245-955-123456','1004','Guinea-Bissau'),(28,'Amina','of Zazzau','Zaria','Zazzau Royal Palace','amina.zazzau@example.com','234-906-876543','810211','Nigeria'),(29,'Paul','Kagame','Kigali','Village Urugwiro','paul.kagame@example.com','250-788-987654','250','Rwanda'),(30,'Hassan','II','Rabat','Royal Palace of Rabat','hassan.ii@example.com','212-661-555555','10000','Morocco'),(32,'Boigny','Felix Houphouët','Yamoussoukro','B21','felixhouphouët@example.com','07-07-19-60-19-93','00225','Côte d\'Ivoire');
/*!40000 ALTER TABLE `client` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `commande`
--

DROP TABLE IF EXISTS `commande`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `commande` (
  `ID_commande` int NOT NULL AUTO_INCREMENT,
  `client_id` int DEFAULT NULL,
  `Date_commande` date DEFAULT NULL,
  `Etat_commande` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ID_commande`),
  KEY `client_id` (`client_id`),
  CONSTRAINT `commande_ibfk_1` FOREIGN KEY (`client_id`) REFERENCES `client` (`Id_client`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `commande`
--

LOCK TABLES `commande` WRITE;
/*!40000 ALTER TABLE `commande` DISABLE KEYS */;
INSERT INTO `commande` VALUES (1,1,'2024-05-01','livrée'),(2,2,'2024-05-02','expédiée'),(3,3,'2024-05-03','en attente'),(4,4,'2024-05-04','annulée'),(5,5,'2024-05-05','en cours'),(6,6,'2024-05-06','livrée'),(7,7,'2024-05-07','expédiée'),(8,8,'2024-05-08','en attente'),(9,9,'2024-05-09','annulée'),(10,10,'2024-05-10','en cours'),(11,11,'2024-05-11','livrée'),(12,12,'2024-05-12','expédiée'),(13,13,'2024-05-13','en attente'),(14,14,'2024-05-14','annulée'),(15,15,'2024-05-15','en cours'),(16,16,'2024-05-16','livrée'),(17,17,'2024-05-17','expédiée'),(18,18,'2024-05-18','en attente'),(19,19,'2024-05-19','annulée'),(20,20,'2024-05-20','en cours'),(21,21,'2024-05-21','livrée'),(22,22,'2024-05-22','expédiée'),(23,23,'2024-05-23','en attente'),(24,24,'2024-05-24','annulée'),(25,25,'2024-05-25','en cours');
/*!40000 ALTER TABLE `commande` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detail_commande`
--

DROP TABLE IF EXISTS `detail_commande`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `detail_commande` (
  `ID_det_com` int NOT NULL AUTO_INCREMENT,
  `ID_produit` int DEFAULT NULL,
  `ID_commande` int DEFAULT NULL,
  `Quantité` int DEFAULT NULL,
  `prix_unitaire` int DEFAULT NULL,
  PRIMARY KEY (`ID_det_com`),
  KEY `ID_produit` (`ID_produit`),
  KEY `ID_commande` (`ID_commande`),
  CONSTRAINT `detail_commande_ibfk_1` FOREIGN KEY (`ID_produit`) REFERENCES `produit` (`ID_produit`),
  CONSTRAINT `detail_commande_ibfk_2` FOREIGN KEY (`ID_commande`) REFERENCES `commande` (`ID_commande`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detail_commande`
--

LOCK TABLES `detail_commande` WRITE;
/*!40000 ALTER TABLE `detail_commande` DISABLE KEYS */;
INSERT INTO `detail_commande` VALUES (28,1,1,2,25),(29,2,1,1,20),(30,3,2,3,50),(31,4,2,1,15),(32,5,3,2,10),(33,6,4,1,300),(34,7,5,4,16),(35,8,6,2,23),(36,9,7,3,12),(37,10,8,1,8),(38,11,9,1,55),(39,12,10,2,100),(40,13,11,1,13),(41,14,12,2,9),(42,15,13,1,4),(43,16,14,2,90),(44,17,15,3,20),(45,18,16,2,6),(46,19,17,4,16),(47,20,18,1,35);
/*!40000 ALTER TABLE `detail_commande` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gestion_categorie`
--

DROP TABLE IF EXISTS `gestion_categorie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gestion_categorie` (
  `ID_gest_cat` int NOT NULL AUTO_INCREMENT,
  `ID_use` int DEFAULT NULL,
  `ID_categorie` int DEFAULT NULL,
  PRIMARY KEY (`ID_gest_cat`),
  KEY `ID_use` (`ID_use`),
  KEY `ID_categorie` (`ID_categorie`),
  CONSTRAINT `gestion_categorie_ibfk_1` FOREIGN KEY (`ID_use`) REFERENCES `utilisateur` (`ID_use`),
  CONSTRAINT `gestion_categorie_ibfk_2` FOREIGN KEY (`ID_categorie`) REFERENCES `categorie` (`ID_Categorie`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gestion_categorie`
--

LOCK TABLES `gestion_categorie` WRITE;
/*!40000 ALTER TABLE `gestion_categorie` DISABLE KEYS */;
INSERT INTO `gestion_categorie` VALUES (1,1,3),(2,2,2),(3,3,1),(4,4,5),(5,5,4),(6,6,6),(7,7,8),(8,8,7),(9,9,10),(10,10,9),(11,1,1),(12,2,2),(13,3,3),(14,4,4),(15,5,5),(16,6,6),(17,7,7),(18,8,8),(19,9,9),(20,10,10);
/*!40000 ALTER TABLE `gestion_categorie` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gestion_commande`
--

DROP TABLE IF EXISTS `gestion_commande`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gestion_commande` (
  `ID_gest_com` int NOT NULL AUTO_INCREMENT,
  `ID_use` int DEFAULT NULL,
  `ID_commande` int DEFAULT NULL,
  PRIMARY KEY (`ID_gest_com`),
  KEY `ID_use` (`ID_use`),
  KEY `ID_commande` (`ID_commande`),
  CONSTRAINT `gestion_commande_ibfk_1` FOREIGN KEY (`ID_use`) REFERENCES `utilisateur` (`ID_use`),
  CONSTRAINT `gestion_commande_ibfk_2` FOREIGN KEY (`ID_commande`) REFERENCES `commande` (`ID_commande`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gestion_commande`
--

LOCK TABLES `gestion_commande` WRITE;
/*!40000 ALTER TABLE `gestion_commande` DISABLE KEYS */;
INSERT INTO `gestion_commande` VALUES (1,1,1),(2,2,2),(3,3,3),(4,4,4),(5,5,5),(6,6,6),(7,7,7),(8,8,8),(9,9,9),(10,10,10),(11,1,11),(12,2,12),(13,3,13),(14,4,14),(15,5,15),(16,6,16),(17,7,17),(18,8,18),(19,9,19),(20,10,20),(21,1,21),(22,2,22),(23,3,23),(24,4,24),(25,5,25);
/*!40000 ALTER TABLE `gestion_commande` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `produit`
--

DROP TABLE IF EXISTS `produit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `produit` (
  `ID_produit` int NOT NULL AUTO_INCREMENT,
  `ID_categorie` int DEFAULT NULL,
  `Nom_produit` varchar(100) DEFAULT NULL,
  `Description_produit` varchar(255) DEFAULT NULL,
  `Prix` int DEFAULT NULL,
  `Stock_disponible` int DEFAULT NULL,
  PRIMARY KEY (`ID_produit`),
  KEY `ID_categorie` (`ID_categorie`),
  CONSTRAINT `produit_ibfk_1` FOREIGN KEY (`ID_categorie`) REFERENCES `categorie` (`ID_Categorie`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produit`
--

LOCK TABLES `produit` WRITE;
/*!40000 ALTER TABLE `produit` DISABLE KEYS */;
INSERT INTO `produit` VALUES (1,1,'Smartphone samsung','Smartphone dernière génération avec écran 6.5 pouces et 128Go de stockage',900,50),(2,1,'Macbook','Ordinateur portable léger avec processeur Intel i7 et 16Go de RAM',1200,30),(3,2,'Réfrigérateur Nasco','Réfrigérateur double porte avec congélateur intégré, capacité de 300 litres',500,20),(4,2,'Lave-linge ','Machine à laver avec une capacité de 8 kg et diverses options de lavage',350,15),(5,3,'Père riche père pauvre','Roman best-seller de l\'année, édition de poche',13,100),(6,3,'Les 48 lois du pouvoir','Guide pratique sur le développement personnel, édition brochée',19,80),(7,4,'T-shirt Lacoste','T-shirt en coton pour hommes, disponible en plusieurs tailles et couleurs',20,200),(8,4,'Robe LV','Robe élégante pour femmes, disponible en différentes tailles',50,120),(9,5,'Ballon de football','Ballon de football de taille standard, utilisé par les professionnels',30,150),(10,5,'Chaussures de running','Chaussures de course pour hommes, confortables et légères',80,100),(11,6,'Crème hydratante','Crème hydratante pour le visage, pour tous types de peau',25,200),(12,6,'Shampooing revitalisant','Shampooing revitalisant pour cheveux secs et abîmés',13,150),(13,7,'Jeu de construction','Jeu de construction pour enfants avec 500 pièces',50,50),(14,7,'Puzzle 1000 pièces','Puzzle de 1000 pièces représentant un paysage magnifique',20,100),(15,8,'Autoradio Bluetooth','Autoradio avec connectivité Bluetooth et port USB',90,40),(16,8,'Tapis de voiture','Tapis de voiture en caoutchouc, jeu de 4 pièces',30,70),(17,9,'Canapé 3 places','Canapé en tissu pour 3 personnes, disponible en plusieurs couleurs',400,20),(18,9,'Table basse','Table basse en bois massif, style moderne',150,30),(19,10,'Café moulu','Café moulu de haute qualité, paquet de 500g',10,100),(20,10,'Thé vert','Thé vert biologique, boîte de 100 sachets',15,80);
/*!40000 ALTER TABLE `produit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `utilisateur`
--

DROP TABLE IF EXISTS `utilisateur`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `utilisateur` (
  `ID_use` int NOT NULL AUTO_INCREMENT,
  `Nom_use` varchar(100) DEFAULT NULL,
  `mot_de_passe` varchar(255) DEFAULT NULL,
  `role` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID_use`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `utilisateur`
--

LOCK TABLES `utilisateur` WRITE;
/*!40000 ALTER TABLE `utilisateur` DISABLE KEYS */;
INSERT INTO `utilisateur` VALUES (1,'GOAT','e99a18c428cb38d5f260853678922e03','administrateur'),(2,'KING','098f6bcd4621d373cade4e832627b4f6','administrateur'),(3,'Messi','b59c67bf196a4758191e42f76670ceba','utilisateur'),(4,'Irving','5f4dcc3b5aa765d61d8327deb882cf99','utilisateur'),(5,'Williams','d8578edf8458ce06fbc5bb76a58c5ca4','utilisateur'),(6,'Cristiano','25d55ad283aa400af464c76d713c07ad','utilisateur'),(7,'Hafiz','7c6a180b36896a0a8c02787eeafb0e4c','utilisateur'),(8,'Assia','e10adc3949ba59abbe56e057f20f883e','utilisateur'),(9,'Desse','6cb75f652a9b52798eb6cf2201057c73','utilisateur'),(10,'Hamida','b2e98ad6f6eb8508dd6a14cfa704bad7','utilisateur');
/*!40000 ALTER TABLE `utilisateur` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-05-28 14:26:41
