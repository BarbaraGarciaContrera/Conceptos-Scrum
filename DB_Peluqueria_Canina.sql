# Se crea la base de datos db_Peluquería

create database if not exists db_Peluquería;

# Se pone en uso la DB

use db_Peluquería;

# Se crea la tabla Dueno

create table if not exists Dueno (
DNI int primary key not null,
Nombre varchar(30),
Apellido varchar(30),
Telefono varchar(50),
Direccion varchar(45)
);

# Se crea la tabla Perro

create table if not exists Perro(
ID_Perro int primary key,
Nombre varchar(30),
Fecha_nac date,
Sexo varchar(10),
DNI_dueno int,
index fk_Dueno_idx (DNI_dueno ASC) visible,
CONSTRAINT fk_DNI_dueno foreign key (DNI_dueno) references Dueno (DNI));

# Se crea la tabla Historial

create table Historial(
ID_Historial int primary key not null,
Fecha date,
Descripcion varchar(100),
Monto int not null,
Perro int not null,
index fk_Perro_idx (Perro ASC) VISIBLE,
constraint fk_Perro foreign key (Perro) references Perro (ID_Perro)
);

# Se agrega un registro a la tabla Perro

insert into db_Peluquería.Perro (ID_Perro, Nombre, Fecha_nac, Sexo, DNI_dueno)
values ('1', 'Perla', '20-05-17', 'hembra', '28456321');

# Se realiza una consulta al historial de db_Peluquería para detectar pacientes que no se atienden hace tiempo
# Ejercicio 3 SQL
select * from Historial;

# Se elimina un paciente 

delete from Historial where Fecha = '21-05-20';



