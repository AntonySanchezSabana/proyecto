
drop database if exists BdSabana;
CREATE DATABASE BdSabana;
use BdSabana;


drop table if exists Tipocuenta;
drop table if exists Cliente;
drop table if exists Cuenta;


create table Tipocuenta (
tipo_id TINYINT PRIMARY KEY NOT NULL,
desripcion VARCHAR(20) NOT NULL
);
-- insertando datos en tabla TipoCuenta
INSERT INTO Tipocuenta(tipo_id,desripcion) VALUES(1,'AHORROS');
INSERT INTO Tipocuenta(tipo_id,desripcion) VALUES(2,'CORRIENTE');


Create table Cliente (
cliente_id integer auto_increment primary key ,
nombre VARCHAR(50) NOT NULL,
apellido VARCHAR(50) NOT NULL,
dni VARCHAR(8) NOT NULL,
email VARCHAR(100) NOT NULL
);

-- Insertando datos en tabla Cliente
INSERT INTO Cliente (Nombre,Apellido,Dni,Email) VALUES ('Luis','Sanchez',70845263,'LaSanchez@hotmail.com');
INSERT INTO Cliente (Nombre,Apellido,Dni,Email) VALUES ('Jordanky','Gomez',75869423,'elRico@hotmail.com');
INSERT INTO Cliente (Nombre,Apellido,Dni,Email) VALUES ('kanelo','Cerotes',71845263,'KaneloTuPapi@hotmail.com');
INSERT INTO Cliente (Nombre,Apellido,Dni,Email) VALUES ('Jaime','Sabana',79856341,'MiTio@hotmail.com');
INSERT INTO Cliente (Nombre,Apellido,Dni,Email) VALUES ('Santiago','Sabana',77568842,'ElChanty@hotmail.com');
INSERT INTO Cliente (Nombre,Apellido,Dni,Email) VALUES ('Alonso','Rojas',76956969,'ElCausha@hotmail.com');
INSERT INTO Cliente (Nombre,Apellido,Dni,Email) VALUES ('Anthony','Villanueva',70814308,'anthony_villanueva@hotmail.com');


Create table Cuenta (
cuenta_id integer auto_increment primary key ,
numero_cuenta VARCHAR(20) NOT NULL,
saldo DECIMAL(10,4) NOT NULL,
tipo_id TINYINT NOT NULL,
CONSTRAINT FK_Cuenta_Tipo FOREIGN KEY (tipo_id)
REFERENCES TipoCuenta(tipo_id), 
cliente_id INT NOT NULL,
CONSTRAINT FK_Cuenta_Cliente FOREIGN KEY (cliente_id)
REFERENCES Cliente (cliente_id)
);

INSERT INTO Cuenta(numero_cuenta,saldo,tipo_id,cliente_id) VALUES("852641234578",1500,1,7);
INSERT INTO Cuenta(numero_cuenta,saldo,tipo_id,cliente_id) VALUES("454887587595",8500,2,7);
INSERT INTO Cuenta(numero_cuenta,saldo,tipo_id,cliente_id) VALUES("669858755845",25000,1,1);
INSERT INTO Cuenta(numero_cuenta,saldo,tipo_id,cliente_id) VALUES("654654898897",15000,2,1);
INSERT INTO Cuenta(numero_cuenta,saldo,tipo_id,cliente_id) VALUES("332514785478",9652,1,2);
INSERT INTO Cuenta(numero_cuenta,saldo,tipo_id,cliente_id) VALUES("774745485598",8622,1,3);
INSERT INTO Cuenta(numero_cuenta,saldo,tipo_id,cliente_id) VALUES("558547459758",9850,2,4);
INSERT INTO Cuenta(numero_cuenta,saldo,tipo_id,cliente_id) VALUES("885747458696",65000,1,5);
INSERT INTO Cuenta(numero_cuenta,saldo,tipo_id,cliente_id) VALUES("445857858596",500,1,6);
INSERT INTO Cuenta(numero_cuenta,saldo,tipo_id,cliente_id) VALUES("447155922425",1500,2,6);


-- select * from Cuenta;
-- select * from CLiente;
-- select * from tipoCuenta;

