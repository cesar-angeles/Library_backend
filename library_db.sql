-- MySQL dump 10.13  Distrib 8.3.0, for Win64 (x86_64)
--
-- Host: localhost    Database: biblioteca
-- ------------------------------------------------------
-- Server version	8.3.0

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
-- Table structure for table `libros`
--

DROP TABLE IF EXISTS `libros`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `libros` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) DEFAULT NULL,
  `autor` varchar(50) DEFAULT NULL,
  `year_publicacion` int DEFAULT NULL,
  `editorial` varchar(30) DEFAULT NULL,
  `precio` int DEFAULT NULL,
  `cover` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `libros`
--

LOCK TABLES `libros` WRITE;
/*!40000 ALTER TABLE `libros` DISABLE KEYS */;
INSERT INTO `libros` VALUES (1,'The Celebrants','Steven Rowley',2023,'Kindle',333,'https://images-na.ssl-images-amazon.com/images/S/compressed.photo.goodreads.com/books/1685352566i/62049729.jpg'),(2,'Punki','Juarma',2023,'Blackie Books',21,'https://hips.hearstapps.com/vader-prod.s3.amazonaws.com/1683805133-71aIFZEJrdL.jpg?crop=1xw:1xh;center,top&resize=980:*'),(3,'No todo el mundo','Marta Jimenez Serrano',2023,'Sexto Piso',18,'https://hips.hearstapps.com/vader-prod.s3.amazonaws.com/1683805446-613E-xVjHyL.jpg?crop=1xw:1xh;center,top&resize=980:*'),(4,'Supersaurio','Meryem El Mehdati',2022,'Blackie Books',20,'https://hips.hearstapps.com/vader-prod.s3.amazonaws.com/1683811180-71zFSvozHRL.jpg?crop=1xw:1xh;center,top&resize=980:*'),(5,'Joseph Heller','Algo ha pasado',1974,'Random House',10,'https://hips.hearstapps.com/vader-prod.s3.amazonaws.com/1683805826-81QuWpKKT3L.jpg?crop=1xw:1xh;center,top&resize=980:*'),(6,'Teoria King Kong','Virginie Despentes',2018,'Random House',13,'https://hips.hearstapps.com/vader-prod.s3.amazonaws.com/1634129923-51sxvUX0kyL._SL500_.jpg?crop=1xw:1xh;center,top&resize=980:*'),(7,'La Autopista Lincoln','Amor Towles',2022,'Narrativa Salamandra',23,'https://hips.hearstapps.com/vader-prod.s3.amazonaws.com/1683806844-71YCilPkTJL.jpg?crop=1xw:1xh;center,top&resize=980:*'),(8,'Ceniza en la boca','Brenda Navarro',2022,'Sexto Piso',18,'https://hips.hearstapps.com/vader-prod.s3.amazonaws.com/1683807412-61not-DBuTL.jpg?crop=1xw:1xh;center,top&resize=980:*'),(9,'El Verano en que mi madre tuvo los ojos verdes','Tatiana Tibuleac',2019,'Impedimenta',19,'https://hips.hearstapps.com/vader-prod.s3.amazonaws.com/1683807724-61DAXr1J4oL.jpg?crop=1xw:1xh;center,top&resize=980:*'),(10,'El Señor de las Moscas','William Golding',2010,'Alianza',12,'https://hips.hearstapps.com/vader-prod.s3.amazonaws.com/1683808397-71PduHCt2L.jpg?crop=1xw:1xh;center,top&resize=980:*'),(11,'Siempre hemos vivido en el castillo','Shirley Jackson',2017,'Minuscula',18,'https://hips.hearstapps.com/vader-prod.s3.amazonaws.com/1683808971-617Wyw2zo4L.jpg?crop=1xw:1xh;center,top&resize=980:*'),(12,'El infinito en un junco','Irene Vallejo',2019,'Biblioteca de Ensayo',24,'https://hips.hearstapps.com/vader-prod.s3.amazonaws.com/1632302772-51qZJqyLTFL._SL500_.jpg?crop=1xw:1xh;center,top&resize=980:*'),(13,'Una noche con Sabrina Love','Pedro Mairal',2018,'Libro del Asteroide',16,'https://hips.hearstapps.com/vader-prod.s3.amazonaws.com/1681674353-41k97bh7LL._SL500_.jpg?crop=1xw:1xh;center,top&resize=980:*'),(14,'elación del primer viaje alrededor del mundo','Antonio Pigafetta',2019,'Alianza',13,'https://hips.hearstapps.com/vader-prod.s3.amazonaws.com/1681674749-51ThuCkUyZL._SL500_.jpg?crop=1xw:1xh;center,top&resize=980:*'),(15,'Bestiario','Julio Cortázar',2016,'Debolsillo',10,'https://hips.hearstapps.com/vader-prod.s3.amazonaws.com/1681674933-41bmNcbQCL._SL500_.jpg?crop=1xw:1xh;center,top&resize=980:*'),(18,'El Golem','Juan Mayorga',2022,'Libros Robados',11,'https://hips.hearstapps.com/vader-prod.s3.amazonaws.com/1681675238-51iBSfTzVCL._SL500_.jpg?crop=1xw:1xh;center,top&resize=980:*'),(19,'Mira a esa chica','Cristina Araújo',2023,'Tusquets',9,'https://hips.hearstapps.com/vader-prod.s3.amazonaws.com/1674668938-41I7x080X1L._SL500_.jpg?crop=1xw:1xh;center,top&resize=980:*'),(20,'El lunes nos querran','Najat El Hachmi',2021,'Destino',9,'https://hips.hearstapps.com/vader-prod.s3.amazonaws.com/1674666643-41-Jd0THSwS._SL500_.jpg?crop=1xw:1xh;center,top&resize=980:*'),(21,'El jilguero','Donna Tartt',2017,'Debolsillo',10,'https://hips.hearstapps.com/vader-prod.s3.amazonaws.com/1674666323-41J-yJj4S0L._SL500_.jpg?crop=1xw:1xh;center,top&resize=980:*'),(22,'Tierras Muertas','Núria Bendicho Giró',2023,'Sajalin',17,'https://hips.hearstapps.com/vader-prod.s3.amazonaws.com/1650465790-51Q8j05EE0L._SL500_.jpg?crop=1xw:1xh;center,top&resize=980:*'),(30,'El ferrocarril subterráneo','Colson Whitehead',2017,'Literatura Random House',19,'https://hips.hearstapps.com/vader-prod.s3.amazonaws.com/1631634399-51yVlv5bizL._SL500_.jpg?crop=1xw:1xh;center,top&resize=980:*'),(31,'El club de la lucha',' Chuck Palahniuk',2011,'Debolsillo',10,'https://hips.hearstapps.com/vader-prod.s3.amazonaws.com/1674665703-41LEux1awL._SL500_.jpg?crop=1xw:1xh;center,top&resize=980:*'),(33,'Matadero cinco: La cruzada de los niños','Kurt Vonnegut',2017,'Blackie Books',21,'https://hips.hearstapps.com/vader-prod.s3.amazonaws.com/1674663837-41aEqaTl7BL._SL500_.jpg?crop=1xw:1xh;center,top&resize=980:*');
/*!40000 ALTER TABLE `libros` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-03-03 12:49:31
