create database peluqueria_canina;
USE peluqueria_canina;

CREATE TABLE dueño (DNI int not null,
					Nombre varchar(48) not null,
					Apellido varchar(48) not null,
					Telefono varchar(48) not null,
					Direccion varchar(48) not null,
					PRIMARY KEY (DNI));
                     
CREATE TABLE Perro (ID_perro INT NOT NULL AUTO_INCREMENT,
                    DNI_dueño int not null, 
					Nombre_perro varchar(48) not null, 
                    Fecha_nacimiento date not null, 
                    Sexo varchar(48)not null, 
                    PRIMARY KEY (ID_perro),
                    FOREIGN KEY (DNI_dueño) references dueño (DNI));
                    
CREATE TABLE Historial (ID_Historial int not null AUTO_INCREMENT,
                        Fecha date not null,
                        Descripcion varchar(48) not null,
                        Monto int not null,
                        Perro int not null,
                        PRIMARY KEY (ID_Historial),
                        FOREIGN KEY (Perro) references Perro (ID_perro));
                        
insert into dueño(DNI, Nombre,Apellido,Telefono, Direccion) values ("393195512", "fernanda","Cruz","315455434","bv san juan 25");
insert into dueño(DNI, Nombre,Apellido,Telefono, Direccion) values ("658164555", "Alan","Sucaria","35122564984","martin 179");
insert into dueño(DNI, Nombre,Apellido,Telefono, Direccion) values ("154184465", "Leandro","Abelardo","3512166884","Jujuy 1300");

insert into Perro (ID_perro, DNI_dueño, Nombre_perro, Fecha_nacimiento, Sexo) values (1,393195512, "Salmi",'2020-09-02',"Macho");
insert into Perro (ID_perro, DNI_dueño, Nombre_perro, Fecha_nacimiento, Sexo) values (2,658164555, "Nini",'2014-07-08',"Hembra");
insert into Perro (ID_perro, DNI_dueño, Nombre_perro, Fecha_nacimiento, Sexo) values (3,154184465, "Turrin",'2012-07-20',"Macho");

insert into Historial(ID_Historial,Fecha, Descripcion, Monto, Perro) values (1,'2022-03-10', "Baño y Corte", 2000, 1);
insert into Historial(ID_Historial,Fecha, Descripcion, Monto, Perro) values (2,'2022-04-13', "pipeta, corte y baño", 9000, 2);
insert into Historial(ID_Historial,Fecha, Descripcion, Monto, Perro) values (3,'2022-05-07', "baño y corte", 5000, 3);

/* Ejercicio 6*/
select  Fecha, Descripcion,Nombre_perro, DNI_dueño, Nombre, Telefono
from Historial, Perro , Dueño 
where Perro.ID_perro = Historial.Perro 
and Perro.DNI_dueño = Dueño.DNI
and Fecha > '2021-12-31' and Fecha < '2023-01-01'
