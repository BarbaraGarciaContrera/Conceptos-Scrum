create database  Peluquería_Canina;
use Peluquería_Canina;
create table Dueno (
DNI int not null auto_increment ,
Nombre varchar (30)not null,
Apellido varchar (30)not null,
Telefono int (50)not null,
Dirección varchar (45)not null,
PRIMARY KEY (DNI) 
);
INSERT INTO Dueno (DNI,Nombre,Apellido,Telefono,Dirección) VALUE ('58748478','Gerardo','Fernández','351587487','Argentina,Cordoba');
INSERT INTO Dueno (DNI,Nombre,Apellido,Telefono,Dirección) VALUE ('65412238','Eustaquio','Hernández','358142585','Argentina,Cordoba');
INSERT INTO Dueno (DNI,Nombre,Apellido,Telefono,Dirección) VALUE ('54867321','Hugo','García','352155485','Argentina,Cordoba');
INSERT INTO Dueno (DNI,Nombre,Apellido,Telefono,Dirección) VALUE ('59761324','Alejandro','López','353514874','Argentina,Cordoba');
SELECT * FROM Dueno;

create table Perro (
ID_Perro int not null auto_increment,
Nombre varchar(30)not null,
created_by int not null,
Fecha_nac varchar(45)not null,
Sexo varchar (20)not null,
DNI_Dueno int(10)not null,
primary key (ID_Perro),
foreign key (created_by) references Dueno(DNI));
INSERT INTO Perro (ID_Perro,Nombre,created_by,Fecha_nac,Sexo,DNI_Dueno) VALUE ('1','Beethoven','58748478','12/04/2015','Macho','58748478');
INSERT INTO Perro (ID_Perro,Nombre,created_by,Fecha_nac,Sexo,DNI_Dueno) VALUE ('15','Diana','65412238','18/08/2017','Hembra','65412238');
INSERT INTO Perro (ID_Perro,Nombre,created_by,Fecha_nac,Sexo,DNI_Dueno) VALUE ('10','Pancho','54867321','19/07/2018','Macho','54867321');
INSERT INTO Perro (ID_Perro,Nombre,created_by,Fecha_nac,Sexo,DNI_Dueno) VALUE ('14','Coqui','59761324','16/06/2016','Hembra','59761324');
select * from Dueno where DNI >= 40867321;
select * from Perro;

create table Historial (
id_Historial int not null auto_increment,
info_DNI int(30)not null,
Fecha varchar(30)not null,
Descripcion varchar(50)not null,
Monto int(30)not null,
Mascota varchar(30)not null,
primary key (id_Historial),
foreign key (info_DNI) references Dueno (DNI));
SELECT * FROM Historial;
INSERT INTO Historial (id_Historial,info_DNI,Fecha,Descripcion,Monto,Mascota) VALUE ('18','58748478','14/06/2015','Consulta De Alergia','1500','Beethoven');
INSERT INTO Historial (id_Historial,info_DNI,Fecha,Descripcion,Monto,Mascota) VALUE ('25','65412238','24/05/2019','Consulta De Peso','4500','Diana');
INSERT INTO Historial (id_Historial,info_DNI,Fecha,Descripcion,Monto,Mascota) VALUE ('35','54867321','20/05/2020','Consulta De Manchas en la piel','1000','Pancho');
INSERT INTO Historial (id_Historial,info_DNI,Fecha,Descripcion,Monto,Mascota) VALUE ('45','59761324','10/05/2019','Consulta De Vomito','3500','Coqui');
SELECT * FROM Historial;

#INSERT INTO Historial (ID_Perro,Nombre,created_by,Fecha_nac,Sexo,DNI_Dueno) VALUE ('10','Pancho','54867321','19/07/2018','Macho','54867321');




