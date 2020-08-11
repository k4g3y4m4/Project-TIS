CREATE DATABASE DB_Test;

use  DB_Test;

CREATE TABLE `Viajero` (
                           `DNI`                       INT NOT NULL,
                           `Contraseña`                VARCHAR(30) NOT NULL,
                           `Nombres`                   VARCHAR(40) NOT NULL,
                           `ApellidoPaterno`           VARCHAR(30) NOT NULL,
                           `ApellidoMaterno`           VARCHAR(30) NOT NULL,
                           `FechaNacimiento`           DATE NOT NULL,
                           `Telefono`                  VARCHAR(10) NOT NULL,
                           `CorreoElectronico`         VARCHAR(40) NOT NULL,
                           `Vulnerabilidad`            VARCHAR(40),
                           `DepartamentoOrigen`        VARCHAR(40) NOT NULL,
                           `DepartamentoDestino`       VARCHAR(40) NOT NULL,
                           CONSTRAINT `PK_Viajero` PRIMARY KEY (`DNI`)
)
;



