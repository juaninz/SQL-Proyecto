-- En el siguiente archivo se realizó el backup de los datos de las tablas clientes, detalle, factura, medio de pago, pago, productos, proveedores y unidades.
-- MySQL dump 10.13  Distrib 8.0.29, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: elconstructor
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
-- Dumping data for table `clientes`
--

LOCK TABLES `clientes` WRITE;
/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
INSERT INTO `clientes` VALUES (1,'Juan','Pérez','Calle 123','3624123456'),(2,'María','González','Avenida 456','3794123456'),(3,'Pedro','López','Calle 789','3624987654'),(4,'Luisa','Martínez','Avenida 012','3794987654'),(5,'Carlos','Rodríguez','Calle 345','3624765432'),(6,'Ana','Hernández','Avenida 678','3794765432'),(7,'José','Gómez','Calle 901','3624234567'),(8,'Laura','Fernández','Avenida 234','3794234567'),(9,'Miguel','Sánchez','Calle 567','3624123458'),(10,'Sofía','Ramírez','Avenida 890','3794123458'),(11,'Daniel','Torres','Calle 111','3624987659'),(12,'Fernanda','Silva','Avenida 222','3794987659'),(13,'Alejandro','Chávez','Calle 333','3624765430'),(14,'Valentina','Rojas','Avenida 444','3794765430'),(15,'Andrés','Pereira','Calle 555','3624234561'),(16,'Gabriela','López','Avenida 666','3794234561'),(17,'Martín','García','Calle 777','3624123472'),(18,'Carolina','Torres','Avenida 888','3794123472'),(19,'Luis','Mendoza','Calle 999','3624987613'),(20,'Ana','Romero','Avenida 000','3794987613'),(21,'Leonel','Pérez','Calle urquiza 256','3624123578');
/*!40000 ALTER TABLE `clientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `detalle`
--

LOCK TABLES `detalle` WRITE;
/*!40000 ALTER TABLE `detalle` DISABLE KEYS */;
INSERT INTO `detalle` VALUES (1,1,50),(2,2,1200),(3,1,20),(4,4,12),(5,4,15),(6,10,1500),(7,10,2000),(8,11,1000),(9,11,2000),(10,15,10);
/*!40000 ALTER TABLE `detalle` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `factura`
--

LOCK TABLES `factura` WRITE;
/*!40000 ALTER TABLE `factura` DISABLE KEYS */;
INSERT INTO `factura` VALUES (1,'2023-04-25',1,1),(2,'2023-04-26',2,2),(3,'2023-04-27',3,3),(4,'2023-04-28',4,4),(5,'2023-04-29',5,5),(6,'2023-04-30',6,6),(7,'2023-05-01',7,7),(8,'2023-05-02',8,8),(9,'2023-05-03',9,9),(10,'2023-05-04',10,10);
/*!40000 ALTER TABLE `factura` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `medio_de_pago`
--

LOCK TABLES `medio_de_pago` WRITE;
/*!40000 ALTER TABLE `medio_de_pago` DISABLE KEYS */;
INSERT INTO `medio_de_pago` VALUES (1,'efectivo'),(2,'tarjeta de debito'),(3,'tarjeta de credito'),(4,'cuenta corriente');
/*!40000 ALTER TABLE `medio_de_pago` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `pago`
--

LOCK TABLES `pago` WRITE;
/*!40000 ALTER TABLE `pago` DISABLE KEYS */;
INSERT INTO `pago` VALUES (1,'2023-05-10',1,1),(2,'2023-05-11',3,0),(3,'2023-05-12',3,1),(4,'2023-05-13',4,1),(5,'2023-05-14',4,0),(6,'2023-05-15',2,1),(7,'2023-05-16',3,0),(8,'2023-05-17',4,1),(9,'2023-05-18',1,1),(10,'2023-05-19',4,0);
/*!40000 ALTER TABLE `pago` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `productos`
--

LOCK TABLES `productos` WRITE;
/*!40000 ALTER TABLE `productos` DISABLE KEYS */;
INSERT INTO `productos` VALUES (1,'Cemento Portland',6,200,11500.00,2),(2,'Ladrillos',3,10000,200.00,7),(3,'Cal',6,250,10700.00,1),(4,'Hierro del 6',8,50,20500.00,6),(5,'Hierro del 8',8,25,33500.00,6),(6,'Hierro del 10',8,30,48500.00,6),(7,'Hierro del 12',8,40,66700.00,6),(8,'Baldosa Cerámica 30x30',3,5500,18000.00,5),(9,'Baldosa de porcelanato 60x60',3,4500,25000.00,5),(10,'Arena',2,6000,20000.00,10),(11,'Piedra',2,5000,25000.00,10),(12,'Pintura ALBA blanca',7,50,35000.00,9),(13,'Malla Cima',3,500,12000.00,4),(14,'Chapa Trapezoidal 1x1m',3,800,7000.00,2),(15,'Perfil C 100',3,300,27726.00,5),(16,'Perfil C 120',3,250,33519.00,5),(23,'Cinta Multifuncion',3,20,1000.00,2),(24,'Cinto Métrica',3,20,1000.00,2),(25,'Cinto Métrica',3,40,1000.00,2),(26,'Cinto Métrica',3,40,1000.00,2),(27,'Cinto Métrica',3,40,1000.00,2),(28,'Cinto Métrica',3,40,1000.00,2),(29,'Cinto Métrica',3,40,1000.00,2),(30,'Martillo',3,20,1000.00,2),(32,'Nivel',3,20,1000.00,2);
/*!40000 ALTER TABLE `productos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `proveedores`
--

LOCK TABLES `proveedores` WRITE;
/*!40000 ALTER TABLE `proveedores` DISABLE KEYS */;
INSERT INTO `proveedores` VALUES (1,'ConstruMax','Calle de la Construcción 123','3624123456'),(2,'Estructuras Sólidas','Avenida del Progreso 456','3624987654'),(3,'Construcciones Modernas','Calle de la Innovación 789','3794123456'),(4,'Todo para su obra','Avenida del Arte 012','3624765432'),(5,'ConstruPlaza','Calle del Proyecto 345','3624234567'),(6,'Materiales Constructivos','Avenida de la Edificación 678','3794987654'),(7,'ConstruTech','Calle de la Tecnología 901','3624321654'),(8,'Bercomat','Avenida de la Ingeniería 234','3794234567'),(9,'ConstruHouse','Calle del Hogar 567','3624123458'),(10,'Urbanización y Obras','Avenida de la Urbanidad 890','3624123459'),(13,'Strikes Materiales','Belgrano 1268','3624970408'),(14,'La nueva productos','Belgrano 1300','3624971208'),(17,'Las primas','Progreso 147','3794123478');
/*!40000 ALTER TABLE `proveedores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `unidades`
--

LOCK TABLES `unidades` WRITE;
/*!40000 ALTER TABLE `unidades` DISABLE KEYS */;
INSERT INTO `unidades` VALUES (1,'Kg'),(2,'m3'),(3,'un'),(4,'rollos x 50m'),(5,'m'),(6,'bolsas x 50 kg'),(7,'envase 20lts'),(8,'barras x 12m');
/*!40000 ALTER TABLE `unidades` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-06-25 11:48:57
