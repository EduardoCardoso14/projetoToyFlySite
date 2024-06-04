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
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produtos`
--

LOCK TABLES `produtos` WRITE;
/*!40000 ALTER TABLE `produtos` DISABLE KEYS */;
INSERT INTO `produtos` VALUES (1,'Andador Fischer Price','Um andador divertido cheio de cor e ferramentas para estimular a criatividade e coordenação motora de seu pequeno!','R$ 85,80','1a3','http://172.16.42.89/apiToyFly/img/1a3/andadorzinho.jpg',1,'2024-05-23 13:49:48','2024-05-23 14:06:58','2024-05-27 12:16:24',NULL,NULL),(2,'Chocalho amigãozinho 1','Animaizinhos divertidos e com sons diversos em um chocalho suspenso, que irão divertir o seu pequeno! awsas','R$ 60,30','1a3','http://172.16.42.89/apiToyFly/img/1a3/chocalhozinho.jpg',0,'2024-05-23 13:49:48','2024-05-27 12:09:09',NULL,NULL,NULL),(3,'teste marcelo','edição com registro de usuário e data','teste marcelo','1a3','teste marcelo',1,'2024-05-23 13:49:48','2024-05-27 14:42:34','2024-06-03 12:26:48',NULL,NULL),(4,'Phone-cars 40','Um telefonezinho engraçado e divertido com funções que irão aguçar a criatividade e curiosidade da criança!','R$ 58,50','1a3','http://172.16.42.89/apiToyFly/img/1a3/telefoninho.jpg',0,'2024-05-23 13:49:48','2024-05-27 14:13:09',NULL,NULL,NULL),(5,'Batman and Joker DC Toy','Batman se encontra com coringa em um grande desafio! Bonecos articulados e coloridos!','R$ 46,90','3a5','http://172.16.42.89/apiToyFly/img/3a5/batmanejoker.jpg',0,'2024-05-23 13:49:48',NULL,NULL,NULL,NULL),(6,'Mini Dynos','As criaturas mais divertidas do mundo pré-histórico estão de volta! Brinquedos de borracha!','R$ 40,00','3a5','http://172.16.42.89/apiToyFly/img/3a5/minidinos.jpg',0,'2024-05-23 13:49:48',NULL,NULL,NULL,NULL),(7,'Chase Paw Patrol','Chase está te esperando para uma nova e grande auauventura!','R$ 39,90','3a5','http://172.16.42.89/apiToyFly/img/3a5/pawpatrol.jpg',0,'2024-05-23 13:49:48',NULL,NULL,NULL,NULL),(8,'Spiderman Race Adventure','Venha se divertir com Homem aranha em uma aventura super veloz!','R$ 78,90','3a5','http://172.16.42.89/apiToyFly/img/3a5/spidercar.jpg',0,'2024-05-23 13:49:48',NULL,NULL,NULL,NULL),(9,'Avião Imaginext','Um potente bimotor anfíbio com dardos e uma garra super forte!','R$ 68,90','5a8','http://172.16.42.89/apiToyFly/img/5a8/aviaoimaginext.jpg',0,'2024-05-23 13:49:48',NULL,NULL,NULL,NULL),(10,'Braquiossauro Imaginext','Controle a grande fúria do período cretaceo com seus equipamentos tecnológicos!','R$ 90,50','5a8','http://172.16.42.89/apiToyFly/img/5a8/dinossauroimaginext.jpg',0,'2024-05-23 13:49:48',NULL,NULL,NULL,NULL),(11,'Francesco Virgolini RC','Tripa velocitatte agora no controle na palma de sua mão!','R$ 115,00','5a8','http://172.16.42.89/apiToyFly/img/5a8/franchescorc.jpg',0,'2024-05-23 13:49:48',NULL,NULL,NULL,NULL),(12,'Super loop HotWheeels','Grandes loop\'s alucinantes em alta velocidade! Vai encarar?','R$ 200,10','1a3','http://172.16.42.89/apiToyFly/img/5a8/pistahotwheels.jpg',0,'2024-05-23 13:49:48','2024-06-03 13:18:45',NULL,NULL,NULL),(13,'Lego Ahsoka Tano','Lady Tano e sua padawan Sabine em uma grande batalha com seu interceptador Jedi!','R$ 240,90','8a12','http://172.16.42.89/apiToyFly/img/8a12/legoahsoka.jpg',0,'2024-05-23 13:49:48',NULL,NULL,NULL,NULL),(14,'Lego UP Altas aventuras','A casa voadora mais famosa da Disney, Agora em peças de lego para uma complexa diversão!','R$ 250,00','5a8','https://bricksdirect.com.br/103230-medium_default/lego-43217-casa-de-up.webp',0,'2024-05-23 13:49:48','2024-06-03 13:10:01',NULL,NULL,NULL),(15,'Omnitrix Força Alienígena','O mais poderoso artefato da galáxia, agora em seu pulso!','R$ 79,90','8a12','http://172.16.42.89/apiToyFly/img/8a12/omnitrix.jpg',1,'2024-05-23 13:49:48',NULL,'2024-06-03 12:33:01',NULL,NULL),(16,'Sonic Sega All-Stars RC','Automodelo de Sonic the Hedgehog em seu hyper carro de Sega All-stars!','R$ 90,50','8a12','http://172.16.42.89/apiToyFly/img/8a12/sonicrc.jpg',1,'2024-05-23 13:49:48',NULL,'2024-05-27 12:07:51',NULL,NULL),(17,'Miles Moriles','Bonequinho feliz do miles morales turururu tururu','223344','8a12','https://m.media-amazon.com/images/I/61kuzPgkMZL.__AC_SX300_SY300_QL70_ML2_.jpg',1,'2024-05-23 13:49:48','2024-05-23 14:06:08','2024-05-23 14:07:55',NULL,NULL),(18,'Octane - Rocket League oficial','Um carrinho que consegue dibrar todo mundo e fazer gol girando a 150km/h usando boost imaginário','R$ 33,00','5a8','https://a-static.mlcdn.com.br/450x450/octane-azul-rocket-league-92-1-64-hot-wheels-2019/midgardtoys/4313p/29741623b910385e3d06f83247b65729.jpg',1,'2024-05-23 14:19:28','2024-05-23 14:20:02','2024-05-23 14:22:08',NULL,NULL),(19,'FunkoPop Spiderman','Eu não sei mto bem pra q serve mas ele é bonitinho, dá pra por em algum lugar sei lá','R$ 32,00','1a3','https://66703.cdn.simplo7.net/static/66703/sku/funko-pop-marvel-comics-boneco-funko-pop-marvel-homem-aranha-923-spider-man-no-way-home--p-1664997847149.jpg',1,'2024-05-23 15:11:13',NULL,'2024-05-24 12:10:24',NULL,NULL),(20,'FunkoPop Batmanzinho','Eu não sei mto bem pra q serve mas ele é bonitinho, dá pra por em algum lugar sei lá','R$ 25,00','1a3','https://geekfanaticos.fbitsstatic.net/img/p/funko-pop-batman-1187-the-batman-dc-comics-73061/259548.jpg?w=540&h=540&v=no-change&qs=ignore',1,'2024-05-24 12:10:16','2024-05-24 12:21:00','2024-05-24 12:21:07',NULL,NULL),(21,'teste','brinquedo','40','5a8','https://cdn.awsli.com.br/600x450/2437/2437567/produto/171129825/5636d3d4e3.jpg',1,'2024-05-27 12:08:45',NULL,'2024-05-27 12:09:15',NULL,NULL),(22,'BONECO VODU','MACABRO','12','3a5','https://m.media-amazon.com/images/I/61FW-iFcAFL._AC_UF894,1000_QL80_.jpg',1,'2024-05-27 13:32:04','2024-05-27 13:32:58','2024-05-27 13:33:09',NULL,NULL),(23,'','','','1a3','',1,'2024-05-27 13:39:27',NULL,'2024-05-27 14:18:17',NULL,NULL),(24,'villager','ran','12,00','3a5','https://th.bing.com/th/id/OIP.8ZdvjSz45-7M78B7ulbUiAHaEK?w=302&h=180&c=7&r=0&o=5&pid=1.7',1,'2024-05-27 14:12:11',NULL,'2024-05-27 14:12:47',NULL,NULL),(25,'','','200,00','1a3','https://http2.mlstatic.com/D_NQ_NP_891654-MLU76221656940_052024-O.webp',1,'2024-05-27 14:17:04','2024-05-27 14:18:53','2024-05-27 14:19:01',NULL,NULL),(26,'','','','1a3','',1,'2024-05-27 14:17:21',NULL,'2024-05-27 14:17:28',NULL,NULL),(27,'','','','1a3','',1,'2024-05-27 14:17:40',NULL,'2024-06-03 12:26:51',NULL,NULL),(28,'binquedo1','a11','32','1a3','https://cdn.awsli.com.br/1832/1832576/produto/90422431/e18946799a.jpg',1,'2024-05-27 14:45:49','2024-05-27 14:46:05','2024-06-03 12:26:56',NULL,NULL),(29,'Boneco Ben 10 rook (garoto não incluso)','hewabfjdhiuo vnufhiodsvdfsgbgbgdfh','55,00','1a3','https://cdn.awsli.com.br/600x700/314/314516/produto/2463493929fec0c33a3.jpg',1,'2024-06-03 12:23:13',NULL,'2024-06-03 12:26:55',NULL,NULL),(30,'pai do ano','asasdassss','R$ 50,00','5a8','https://static.itdg.com.br/images/1200-630/b7f54a0f65e624a4862fb721b895bbc9/pizza-caipira.png',1,'2024-06-03 12:31:17','2024-06-03 12:32:31','2024-06-03 12:32:58',NULL,NULL),(31,'aa','ds','s','1a3','s',1,'2024-06-03 12:32:47',NULL,'2024-06-03 12:32:52',NULL,NULL),(32,'d','d','d','3a5','d',1,'2024-06-03 12:34:57',NULL,'2024-06-03 12:35:57',NULL,NULL),(33,'asd','asdasd','3321','5a8','asdasd',1,'2024-06-03 12:35:36',NULL,'2024-06-03 12:35:52',NULL,NULL);
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
INSERT INTO `usuario` VALUES (1,'admin','admin','admin',NULL,'2024-06-03 15:36:56',0,'2024-06-03 15:37:47',NULL);
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

-- Dump completed on 2024-06-03 11:39:36
