create database Peluquería_Canina;
use Peluquería_Canina;
create table Dueno (
DNI int primary key,
Nombre varchar(30),
Apellido varchar(30),
Telefono int,
Direccion varchar(45)
);
create table Perro(
ID_Perro int primary key,
Nombre varchar(30),
Fecha_nac date,
Sexo varchar(10),
DNI_dueno int,
foreign key (DNI_dueno) references Dueno (DNI)
);
create table Historial(
ID_Historial int primary key,
Fecha date,
Descripcion varchar(100),
Monto int,
Perro int,
foreign key (Perro) references Perro (ID_Perro)
);