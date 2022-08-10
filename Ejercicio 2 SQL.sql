create database Peluquería_Canina;
use Peluquería_Canina;
create table Dueno (
DNI int primary key,
Nombre varchar(30),
Apellido varchar(30),
Telefono varchar(50),
Direccion varchar(45)
);
insert into Dueno values (40518042,"Julián","Meneses","3516565702","Fitz Roy 2000");
create table Perro(
ID_Perro int primary key,
Nombre varchar(30),
Fecha_nac date,
Sexo varchar(10),
DNI_dueno int,
foreign key (DNI_dueno) references Dueno (DNI)
);
insert into Perro values (01,"Bartok","2010-12-20","Macho",40518042);
create table Historial(
ID_Historial int primary key,
Fecha date,
Descripcion varchar(100),
Monto int,
Perro int,
foreign key (Perro) references Perro (ID_Perro)
);