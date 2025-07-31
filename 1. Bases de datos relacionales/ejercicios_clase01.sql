CREATE DATABASE IF NOT EXISTS pruebas;
USE pruebas;

CREATE TABLE usuarios (
   idx INT PRIMARY KEY AUTO_INCREMENT,
   usuario VARCHAR(20),
   nombre VARCHAR(20),
   sexo VARCHAR(1),
   nivel TINYINT,
   email VARCHAR(50),
   telefono VARCHAR(20),
   marca VARCHAR(20),
   compañia VARCHAR(20),
   saldo FLOAT,
   activo BOOLEAN
);

INSERT INTO usuarios 
VALUES 
('1','BRE2271','BRENDA','M','2','brenda@live.com','655-330-5736','SAMSUNG','IUSACELL','100','1'),
('2','OSC4677','OSCAR','H','3','oscar@gmail.com','655-143-4181','LG','TELCEL','0','1'),
('3','JOS7086','JOSE','H','3','francisco@gmail.com','655-143-3922','NOKIA','MOVISTAR','150','1'),
('4','LUI6115','LUIS','H','0','enrique@outlook.com','655-137-1279','SAMSUNG','TELCEL','50','1'),
('5','LUI7072','LUIS','H','1','luis@hotmail.com','655-100-8260','NOKIA','IUSACELL','50','0'),
('6','DAN2832','DANIEL','H','0','daniel@outlook.com','655-145-2586','SONY','UNEFON','100','1'),
('7','JAQ5351','JAQUELINE','M','0','jaqueline@outlook.com','655-330-5514','BLACKBERRY','AXEL','0','1'),
('8','ROM6520','ROMAN','H','2','roman@gmail.com','655-330-3263','LG','IUSACELL','50','1'),
('9','BLA9739','BLAS','H','0','blas@hotmail.com','655-330-3871','LG','UNEFON','100','1'),
('10','JES4752','JESSICA','M','1','jessica@hotmail.com','655-143-6861','SAMSUNG','TELCEL','500','1'),
('11','DIA6570','DIANA','M','1','diana@live.com','655-143-3952','SONY','UNEFON','100','0'),
('12','RIC8283','RICARDO','H','2','ricardo@hotmail.com','655-145-6049','MOTOROLA','IUSACELL','150','1'),
('13','VAL6882','VALENTINA','M','0','valentina@live.com','655-137-4253','BLACKBERRY','AT&T','50','0'),
('14','BRE8106','BRENDA','M','3','brenda2@gmail.com','655-100-1351','MOTOROLA','NEXTEL','150','1'),
('15','LUC4982','LUCIA','M','3','lucia@gmail.com','655-145-4992','BLACKBERRY','IUSACELL','0','1'),
('16','JUA2337','JUAN','H','0','juan@outlook.com','655-100-6517','SAMSUNG','AXEL','0','0'),
('17','ELP2984','ELPIDIO','H','1','elpidio@outlook.com','655-145-9938','MOTOROLA','MOVISTAR','500','1'),
('18','JES9640','JESSICA','M','3','jessica2@live.com','655-330-5143','SONY','IUSACELL','200','1'),
('19','LET4015','LETICIA','M','2','leticia@yahoo.com','655-143-4019','BLACKBERRY','UNEFON','100','1'),
('20','LUI1076','LUIS','H','3','luis2@live.com','655-100-5085','SONY','UNEFON','150','1'),
('21','HUG5441','HUGO','H','2','hugo@live.com','655-137-3935','MOTOROLA','AT&T','500','1');

-- 1)
SELECT nombre FROM usuarios;
SELECT MAX(saldo) AS saldo_maximo FROM usuarios WHERE sexo = 'M';
SELECT nombre, telefono FROM usuarios WHERE marca IN ('NOKIA', 'BLACKBERRY','SONY');
SELECT COUNT(usuario) FROM usuarios WHERE saldo='0' OR activo='0';
SELECT usuario FROM usuarios WHERE nivel IN ('1','2','3');
SELECT telefono FROM usuarios WHERE saldo <='300';
SELECT SUM(saldo) FROM usuarios WHERE compañia='NEXTEL';
SELECT compañia, COUNT(*) AS cantidad_usuarios FROM usuarios GROUP BY compañia;
SELECT nivel, COUNT(*) AS cantidad_nivel FROM usuarios GROUP BY nivel;
SELECT usuario FROM usuarios WHERE nivel ='2';
SELECT email FROM usuarios WHERE email LIKE '%@gmail.com';
SELECT nombre,telefono FROM usuarios WHERE marca IN ('LG', 'SAMSUNG','MOTOROLA');

-- 2)
SELECT nombre, telefono FROM usuarios WHERE marca NOT IN ('LG', 'SAMSUNG');
SELECT usuario, telefono FROM usuarios WHERE compañia = 'IUSACELL';
SELECT usuario, telefono FROM usuarios WHERE compañia != 'TELCEL';
SELECT AVG(saldo) FROM usuarios WHERE marca = 'NOKIA';
SELECT usuario, telefono FROM usuarios WHERE compañia IN ('IUSACELL', 'AXEL');
SELECT email FROM usuarios WHERE email NOT LIKE '%yahoo.com';
SELECT usuario, telefono FROM usuarios WHERE compañia NOT IN ('TELCEL', 'IUSACELL');
SELECT usuario, telefono FROM usuarios WHERE compañia = 'UNEFON';
SELECT marca FROM usuarios ORDER BY marca DESC;
SELECT DISTINCT compañia FROM usuarios ORDER BY RAND ('compañia');
SELECT usuario FROM usuarios WHERE nivel IN (0,2);
SELECT AVG(saldo) FROM usuarios WHERE marca = 'LG';

-- 3)
SELECT usuario FROM usuarios WHERE nivel IN (1,3);
SELECT nombre, telefono FROM usuarios WHERE marca != 'BLACKBERRY';
SELECT usuario FROM usuarios WHERE nivel = 1;
SELECT usuario FROM usuarios WHERE nivel = 0;
SELECT usuario FROM usuarios WHERE nivel = 3;
SELECT COUNT(usuario) FROM usuarios GROUP BY sexo;
SELECT usuario, telefono FROM usuarios WHERE compañia = 'AT&T';
SELECT DISTINCT compañia FROM usuarios ORDER BY compañia DESC;
SELECT usuario FROM usuarios WHERE activo = 0;
SELECT telefono FROM usuarios WHERE saldo = 0;
SELECT MIN(saldo) FROM usuarios WHERE sexo = 'H';
SELECT telefono FROM usuarios WHERE saldo >300;

-- 4)
SELECT(marca), COUNT(usuario) FROM usuarios GROUP BY marca;
SELECT nombre,telefono FROM usuarios WHERE marca != 'LG';
SELECT DISTINCT compañia FROM usuarios ORDER BY compañia ASC;
SELECT SUM(saldo) FROM usuarios WHERE compañia = 'UNEFON';
SELECT email FROM usuarios WHERE email LIKE '%hotmail.com';
SELECT nombre FROM usuarios WHERE saldo='0' OR activo='0';

