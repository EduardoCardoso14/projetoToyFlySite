-- MySQL dump 10.13  Distrib 8.0.29, for Win64 (x86_64)
--
-- Host: localhost    Database: toyfly
-- ------------------------------------------------------
-- Server version	8.0.29

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
-- Table structure for table `compra`
--

DROP TABLE IF EXISTS `compra`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `compra` (
  `id` int NOT NULL AUTO_INCREMENT,
  `produto` varchar(45) DEFAULT NULL,
  `valortotal` varchar(45) DEFAULT NULL,
  `idusuario` varchar(45) DEFAULT NULL,
  `formapagamento` varchar(45) DEFAULT NULL,
  `quantidade` int DEFAULT NULL,
  `data` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `compra`
--

LOCK TABLES `compra` WRITE;
/*!40000 ALTER TABLE `compra` DISABLE KEYS */;
/*!40000 ALTER TABLE `compra` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `produtos`
--

DROP TABLE IF EXISTS `produtos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `produtos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(45) DEFAULT NULL,
  `descricao` longtext,
  `preco` varchar(45) DEFAULT NULL,
  `idade` varchar(45) DEFAULT NULL,
  `imagem` longtext,
  `apagado` int DEFAULT NULL,
  `data_cad` datetime DEFAULT NULL,
  `dt_edicao` datetime DEFAULT NULL,
  `dt_delete` datetime DEFAULT NULL,
  `usuario` varchar(45) DEFAULT NULL,
  `idusuario` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produtos`
--

LOCK TABLES `produtos` WRITE;
/*!40000 ALTER TABLE `produtos` DISABLE KEYS */;
INSERT INTO `produtos` VALUES (1,'Andador Fischer Price','Um andador divertido cheio de cor e ferramentas para estimular a criatividade e coordenação motora de seu pequeno!','R$ 85,80','1a3','http://172.16.42.89/apiToyFly/img/1a3/andadorzinho.jpg',0,'2024-05-23 13:49:48','2024-05-23 14:06:58',NULL,NULL,NULL),(2,'Chocalho amigãozinho','Animaizinhos divertidos e com sons diversos em um chocalho suspenso, que irão divertir o seu pequeno!','R$ 60,10','1a3','http://172.16.42.89/apiToyFly/img/1a3/chocalhozinho.jpg',0,'2024-05-23 13:49:48','2024-05-23 14:08:28',NULL,NULL,NULL),(3,'Pelúcia Cute Duck','Cute Duck será o novo amiguinho de seu filho, com frases divertidas e fofas que interagem com a criança!','R$ 79,90','1a3','http://172.16.42.89/apiToyFly/img/1a3/peluciapatinho.jpg',0,'2024-05-23 13:49:48',NULL,NULL,NULL,NULL),(4,'Phone-car','Um telefonezinho engraçado e divertido com funções que irão aguçar a criatividade e curiosidade da criança!','R$ 58,50','1a3','http://172.16.42.89/apiToyFly/img/1a3/telefoninho.jpg',0,'2024-05-23 13:49:48',NULL,NULL,NULL,NULL),(5,'Batman and Joker DC Toy','Batman se encontra com coringa em um grande desafio! Bonecos articulados e coloridos!','R$ 46,90','3a5','http://172.16.42.89/apiToyFly/img/3a5/batmanejoker.jpg',0,'2024-05-23 13:49:48',NULL,NULL,NULL,NULL),(6,'Mini Dynos','As criaturas mais divertidas do mundo pré-histórico estão de volta! Brinquedos de borracha!','R$ 40,00','3a5','http://172.16.42.89/apiToyFly/img/3a5/minidinos.jpg',0,'2024-05-23 13:49:48',NULL,NULL,NULL,NULL),(7,'Chase Paw Patrol','Chase está te esperando para uma nova e grande auauventura!','R$ 39,90','3a5','http://172.16.42.89/apiToyFly/img/3a5/pawpatrol.jpg',0,'2024-05-23 13:49:48',NULL,NULL,NULL,NULL),(8,'Spiderman Race Adventure','Venha se divertir com Homem aranha em uma aventura super veloz!','R$ 78,90','3a5','http://172.16.42.89/apiToyFly/img/3a5/spidercar.jpg',0,'2024-05-23 13:49:48',NULL,NULL,NULL,NULL),(9,'Avião Imaginext','Um potente bimotor anfíbio com dardos e uma garra super forte!','R$ 68,90','5a8','http://172.16.42.89/apiToyFly/img/5a8/aviaoimaginext.jpg',0,'2024-05-23 13:49:48',NULL,NULL,NULL,NULL),(10,'Braquiossauro Imaginext','Controle a grande fúria do período cretaceo com seus equipamentos tecnológicos!','R$ 90,50','5a8','http://172.16.42.89/apiToyFly/img/5a8/dinossauroimaginext.jpg',0,'2024-05-23 13:49:48',NULL,NULL,NULL,NULL),(11,'Francesco Virgolini RC','Tripa velocitatte agora no controle na palma de sua mão!','R$ 115,00','5a8','http://172.16.42.89/apiToyFly/img/5a8/franchescorc.jpg',0,'2024-05-23 13:49:48',NULL,NULL,NULL,NULL),(12,'Super loop Hotwheels','Grandes loop\'s alucinantes em alta velocidade! Vai encarar?','R$ 190,80','5a8','http://172.16.42.89/apiToyFly/img/5a8/pistahotwheels.jpg',0,'2024-05-23 13:49:48',NULL,NULL,NULL,NULL),(13,'Lego Ahsoka Tano','Lady Tano e sua padawan Sabine em uma grande batalha com seu interceptador Jedi!','R$ 240,90','8a12','http://172.16.42.89/apiToyFly/img/8a12/legoahsoka.jpg',0,'2024-05-23 13:49:48',NULL,NULL,NULL,NULL),(14,'Lego UP Altas aventuras','A casa voadora mais famosa da Disney, Agora em peças de lego para uma complexa diversão!','R$ 270,00','8a12','http://172.16.42.89/apiToyFly/img/8a12/legoup.jpg',0,'2024-05-23 13:49:48',NULL,NULL,NULL,NULL),(15,'Omnitrix Força Alienígena','O mais poderoso artefato da galáxia, agora em seu pulso!','R$ 79,90','8a12','http://172.16.42.89/apiToyFly/img/8a12/omnitrix.jpg',0,'2024-05-23 13:49:48',NULL,NULL,NULL,NULL),(16,'Sonic Sega All-Stars RC','Automodelo de Sonic the Hedgehog em seu hyper carro de Sega All-stars!','R$ 90,50','8a12','http://172.16.42.89/apiToyFly/img/8a12/sonicrc.jpg',0,'2024-05-23 13:49:48',NULL,NULL,NULL,NULL),(17,'Miles Moriles','Bonequinho feliz do miles morales turururu tururu','223344','8a12','https://m.media-amazon.com/images/I/61kuzPgkMZL.__AC_SX300_SY300_QL70_ML2_.jpg',1,'2024-05-23 13:49:48','2024-05-23 14:06:08','2024-05-23 14:07:55',NULL,NULL),(18,'Octane - Rocket League oficial','Um carrinho que consegue dibrar todo mundo e fazer gol girando a 150km/h usando boost imaginário','R$ 33,00','5a8','https://a-static.mlcdn.com.br/450x450/octane-azul-rocket-league-92-1-64-hot-wheels-2019/midgardtoys/4313p/29741623b910385e3d06f83247b65729.jpg',1,'2024-05-23 14:19:28','2024-05-23 14:20:02','2024-05-23 14:22:08',NULL,NULL);
/*!40000 ALTER TABLE `produtos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuario` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `senha` varchar(45) DEFAULT NULL,
  `imagem` longtext,
  `data_cad` datetime DEFAULT NULL,
  `apagado` int DEFAULT NULL,
  `data_edicao` datetime DEFAULT NULL,
  `data_delete` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES (1,'admin','admin@gmail.com','123','a','2004-12-14 12:02:53',0,NULL,NULL);
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-05-23 10:26:28
