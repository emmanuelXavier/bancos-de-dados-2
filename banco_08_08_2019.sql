-- MySQL dump 10.13  Distrib 5.7.17, for macos10.12 (x86_64)
--
-- Host: 127.0.0.1    Database: bancoCC
-- ------------------------------------------------------
-- Server version	5.7.21

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `alunos`
--

DROP TABLE IF EXISTS `alunos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `alunos` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) NOT NULL,
  `cidade` int(10) unsigned DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `emprestimos` smallint(2) unsigned NOT NULL DEFAULT '0',
  `matriculas` smallint(2) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `fk_alunos_cidades_idx` (`cidade`),
  CONSTRAINT `fk_alunos_cidades` FOREIGN KEY (`cidade`) REFERENCES `cidades` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alunos`
--

LOCK TABLES `alunos` WRITE;
/*!40000 ALTER TABLE `alunos` DISABLE KEYS */;
INSERT INTO `alunos` VALUES (1,'Emmanuel Xavier',1,NULL,5,2),(2,'Matheus Viana',2,NULL,1,0),(3,'Rodrigo Ramalho',2,NULL,0,0),(8,'Zequinha',1,'william@hotmail.com',0,0),(10,'tteste',1,'rtesate',0,0),(11,'sdfdfd',1,'zgfn',0,0),(12,'dkfdk',1,'dk',0,0);
/*!40000 ALTER TABLE `alunos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `alunoscidades`
--

DROP TABLE IF EXISTS `alunoscidades`;
/*!50001 DROP VIEW IF EXISTS `alunoscidades`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `alunoscidades` AS SELECT 
 1 AS `id`,
 1 AS `nome`,
 1 AS `cidade`,
 1 AS `email`,
 1 AS `emprestimos`,
 1 AS `matriculas`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `alunossimples`
--

DROP TABLE IF EXISTS `alunossimples`;
/*!50001 DROP VIEW IF EXISTS `alunossimples`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `alunossimples` AS SELECT 
 1 AS `id`,
 1 AS `nome`,
 1 AS `email`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `cidades`
--

DROP TABLE IF EXISTS `cidades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cidades` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cidade` varchar(255) NOT NULL,
  `uf` char(2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cidades`
--

LOCK TABLES `cidades` WRITE;
/*!40000 ALTER TABLE `cidades` DISABLE KEYS */;
INSERT INTO `cidades` VALUES (1,'Imperatriz','MA'),(2,'Marabá','PA'),(3,'São Luís','MA'),(4,'Teste','TE'),(5,'Teste','TE'),(6,'Teste','TE'),(7,'Teste','TE'),(8,'Teste','TE'),(9,'Teste','TE'),(11,'Teste','TE'),(12,'Teste','TE'),(15,'Teste','TE'),(16,'Teste','TE'),(18,'Teste','TE'),(19,'Teste','TE'),(20,'Teste','TE'),(30,'Teste','TE'),(31,'Teste','TE'),(32,'Teste','TE'),(33,'MOMO','MO'),(38,'Teste','TE'),(39,'MOMO','MO'),(40,'Teste','TE'),(41,'MOMO','MO'),(42,'Teste','TE'),(43,'Teste','TE'),(44,'MOMO','MO'),(45,'Teste','TE'),(46,'MOMO','MO'),(49,'Teste','TE'),(51,'Teste','TE'),(53,'Teste','TE');
/*!40000 ALTER TABLE `cidades` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cursos`
--

DROP TABLE IF EXISTS `cursos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cursos` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cursos`
--

LOCK TABLES `cursos` WRITE;
/*!40000 ALTER TABLE `cursos` DISABLE KEYS */;
INSERT INTO `cursos` VALUES (1,'Ciencias da Computação'),(2,'Engenharia Elétrica'),(3,'Teste'),(4,'Teste'),(10,'Teste'),(11,'Peste'),(12,'Teste'),(13,'Peste'),(16,'Teste'),(17,'Peste'),(18,'Deste'),(19,'Neste');
/*!40000 ALTER TABLE `cursos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `emails`
--

DROP TABLE IF EXISTS `emails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `emails` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emails`
--

LOCK TABLES `emails` WRITE;
/*!40000 ALTER TABLE `emails` DISABLE KEYS */;
INSERT INTO `emails` VALUES (2,'william@hotmail.com');
/*!40000 ALTER TABLE `emails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `emprestimos`
--

DROP TABLE IF EXISTS `emprestimos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `emprestimos` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `dataemprestimo` datetime NOT NULL,
  `aluno` int(10) unsigned NOT NULL,
  `livro` int(10) unsigned NOT NULL,
  `valor` decimal(12,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`id`),
  KEY `fk_emprestimos_alunos1_idx` (`aluno`),
  KEY `fk_emprestimos_livros1_idx` (`livro`),
  CONSTRAINT `fk_emprestimos_alunos1` FOREIGN KEY (`aluno`) REFERENCES `matriculas` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_emprestimos_livros1` FOREIGN KEY (`livro`) REFERENCES `livros` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emprestimos`
--

LOCK TABLES `emprestimos` WRITE;
/*!40000 ALTER TABLE `emprestimos` DISABLE KEYS */;
INSERT INTO `emprestimos` VALUES (1,'2017-08-18 21:00:00',1,1,0.00),(3,'2017-07-18 21:00:00',3,1,20.00),(4,'2017-07-18 21:00:00',1,2,30.00),(5,'2017-07-18 21:00:00',1,3,5.00),(6,'2017-07-18 21:00:00',1,4,50.00),(7,'2017-07-18 21:00:00',1,5,40.00),(8,'2017-07-18 21:00:00',2,1,60.00);
/*!40000 ALTER TABLE `emprestimos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `emprestimosnovo`
--

DROP TABLE IF EXISTS `emprestimosnovo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `emprestimosnovo` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `dataemprestimo` datetime NOT NULL,
  `aluno` int(10) unsigned NOT NULL,
  `livro` int(10) unsigned NOT NULL,
  `valor` decimal(12,2) NOT NULL DEFAULT '0.00',
  `valorantigo` smallint(2) DEFAULT NULL,
  `valornovo` smallint(2) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_emprestimos_alunosn1_idx` (`aluno`),
  KEY `fk_emprestimos_livrosn1_idx` (`livro`),
  CONSTRAINT `fk_emprestimos_alunosn1` FOREIGN KEY (`aluno`) REFERENCES `matriculas` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_emprestimos_livrosn1` FOREIGN KEY (`livro`) REFERENCES `livros` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emprestimosnovo`
--

LOCK TABLES `emprestimosnovo` WRITE;
/*!40000 ALTER TABLE `emprestimosnovo` DISABLE KEYS */;
INSERT INTO `emprestimosnovo` VALUES (1,'2017-08-18 21:00:00',1,1,30.00,NULL,NULL),(2,'2017-07-18 21:00:00',2,1,60.00,NULL,NULL),(3,'2017-07-18 21:00:00',3,1,20.00,0,0);
/*!40000 ALTER TABLE `emprestimosnovo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `livros`
--

DROP TABLE IF EXISTS `livros`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `livros` (
  `id` int(10) unsigned NOT NULL,
  `titulo` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `livros`
--

LOCK TABLES `livros` WRITE;
/*!40000 ALTER TABLE `livros` DISABLE KEYS */;
INSERT INTO `livros` VALUES (1,'Padrões de Projeto'),(2,'Bancos de dados'),(3,'Engenharia de Software'),(4,'Curso de C'),(5,'Não sei o que');
/*!40000 ALTER TABLE `livros` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `livrosemprestados`
--

DROP TABLE IF EXISTS `livrosemprestados`;
/*!50001 DROP VIEW IF EXISTS `livrosemprestados`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `livrosemprestados` AS SELECT 
 1 AS `id`,
 1 AS `nome`,
 1 AS `cidade`,
 1 AS `email`,
 1 AS `emprestimos`,
 1 AS `matriculas`,
 1 AS `titulo`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `maioresleitores`
--

DROP TABLE IF EXISTS `maioresleitores`;
/*!50001 DROP VIEW IF EXISTS `maioresleitores`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `maioresleitores` AS SELECT 
 1 AS `id`,
 1 AS `nome`,
 1 AS `cidade`,
 1 AS `email`,
 1 AS `emprestimos`,
 1 AS `matriculas`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `matriculas`
--

DROP TABLE IF EXISTS `matriculas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `matriculas` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `datacadastro` datetime NOT NULL,
  `aluno` int(10) unsigned NOT NULL,
  `curso` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_matriculas_alunos1_idx` (`aluno`),
  KEY `fk_matriculas_cursos1_idx` (`curso`),
  CONSTRAINT `fk_matriculas_alunos1` FOREIGN KEY (`aluno`) REFERENCES `alunos` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_matriculas_cursos1` FOREIGN KEY (`curso`) REFERENCES `cursos` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matriculas`
--

LOCK TABLES `matriculas` WRITE;
/*!40000 ALTER TABLE `matriculas` DISABLE KEYS */;
INSERT INTO `matriculas` VALUES (1,'2017-08-18 12:00:00',1,1),(2,'2017-08-18 12:00:00',1,2),(3,'2017-08-18 12:00:00',2,1),(4,'2017-08-18 12:00:00',1,1),(5,'2017-08-18 12:00:00',1,1);
/*!40000 ALTER TABLE `matriculas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `todascidadesalunos`
--

create view alunossimples as
select id, nome, email from alunos;

create view maioresleitores as
select * from alunos order by alunos.emprestimos desc limit 2;

create view alunoscidades as
select 
	alunos.id,
    alunos.nome,
    cidades.cidade,
    alunos.email,
    alunos.emprestimos, 
    alunos.matriculas
from alunos
inner join cidades on (alunos.cidade = cidades.id);

create view todosalunos as
select 
	alunos.id,
    alunos.nome,
    coalesce(cidades.cidade,'NA') AS cidade,
    alunos.email,
    alunos.emprestimos,
    alunos.matriculas
from alunos left outer join cidades on (alunos.cidade = cidades.id);
 
create view todascidadesalunos as
select 
	alunos.id,
    alunos.nome,
    cidades.cidade,
    alunos.email,
    alunos.emprestimos,
    alunos.matriculas
from alunos right outer join cidades on (alunos.cidade = cidades.id);

create view livrosemprestados as 
 SELECT 
 alunoscidades.*, 
 livros.titulo 
 FROM alunoscidades
 inner join emprestimos on (alunoscidades.id = emprestimos.aluno)
 inner join livros on (emprestimos.livro = livros.id);





