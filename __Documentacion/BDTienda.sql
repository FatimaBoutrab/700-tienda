CREATE DATABASE tienda;

USE tienda;

/*  tabla usuario   */

CREATE TABLE `producto` (
  `id` int(2) AUTO_INCREMENT,
  `denominacion` varchar(30) NOT NULL,
  `precioUnidad` int(3) NOT NULL,
  `stock` int(3) NOT NULL,
  PRIMARY KEY (id)
) ;

DROP TABLE IF EXISTS usuario;
CREATE TABLE IF NOT EXISTS usuario (
    id int(11) NOT NULL AUTO_INCREMENT,
    identificador varchar(40) COLLATE utf8_spanish_ci NOT NULL,
    contrasenna varchar(80) COLLATE utf8_spanish_ci NOT NULL,
    codigoCookie varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
    caducidadCodigoCookie timestamp NULL DEFAULT NULL,
    tipoUsuario varchar(10) NOT NULL,
    nombre varchar(50) COLLATE utf8_spanish_ci NOT NULL,
    apellidos varchar(50) COLLATE utf8_spanish_ci NOT NULL,
    PRIMARY KEY (id)
    )
    ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
TRUNCATE TABLE usuario;

CREATE TABLE `ticket` (
  `id` int(3)  AUTO_INCREMENT ,
  `apertura` DATETIME  NOT NULL,
  `cierre` DATETIME ,
  `empleadoId` int(2),
  PRIMARY KEY (id)
);

CREATE TABLE `puesto` (
  `id` int(3) NOT NULL PRIMARY KEY,
  `denominacion` varchar(40)  NOT NULL
);


CREATE TABLE `linea` (
  `ticketId` int(3)  AUTO_INCREMENT ,
  `productoId` int(3)  NOT NULL ,
  `unidades` int(3)  NOT NULL,
  `precioUnidad` DECIMAL(5,2)  NOT NULL,
   FOREIGN KEY (ticketId) REFERENCES ticket(id),
   FOREIGN KEY (productoId) REFERENCES producto(id)
);

CREATE TABLE `traza` (
  `idUsuario` int(2) NOT NULL,
  `localizacion` varchar(30) NOT NULL,
  `hecho` varchar(30) NOT NULL,
  `posibleId` int(3) ,
  `fecha` varchar(30)
) ;

INSERT INTO producto VALUES (1,'Patatas'    ,0.99 , 29),
                            (2,'Pizza'      ,1.99 , 9),
                            (3,'Lechuga'    ,0.49 , 8),
                            (4,'Pimiento'   ,0.52 , 4),
                            (5,'Fresas'     ,2.00 , 40),
                            (6,'Napolitana' ,0.99 , 60),
                            (7,'Chocolate'  ,1.50 , 45),
                            (8,'Manzana'    ,0.88 , 50),
                            (9,'Pera'       ,1.30 , 29);

INSERT INTO ticket VALUES (1, '2021/04/15 16:00:00' ,  '2021/04/15 20:30:00' , 4),
                          (2, '2021/04/15 16:01:55' ,  '2021/04/15 20:30:00' , 2),
                          (3, '2021/04/15 16:01:56' , '2021/04/15 20:30:00'  , 2),
                          (4, '2021/04/15 16:03:01' ,  '2021/04/15 20:30:00' , 5),
                          (5, '2021/04/15 15:00:00' ,  '2021/04/15 20:30:00' , 7),
                          (6, '2021/04/15 17:00:00' ,  '2021/04/15 20:30:00' , 8),
                          (7, '2021/04/15 18:00:00' ,  '2021/04/15 20:30:00' , 1);

INSERT INTO linea VALUES  (1, 2 , 55 , 4.99),
                          (1, 4 , 3  , 2.45),
                          (1, 1 , 34 , 1.90),
                          (2, 5 , 54 , 5),
                          (2, 7 , 23 , 7.89),
                          (2, 6 , 12 , 5.99);

INSERT INTO usuario
    (id, identificador, contrasenna, codigoCookie, caducidadCodigoCookie, tipoUsuario, nombre, apellidos)
VALUES
       (1, 'jlopez',    'j', NULL, NULL, 'ENCAR', 'José',   'López'),
       (2, 'mgarcia',   'm', NULL, NULL, 'CLWEB', 'María',  'García'),
       (3, 'fpi',       'f', NULL, NULL, 'ENCAR', 'Felipe', 'Pi');


