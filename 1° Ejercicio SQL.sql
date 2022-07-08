create database ISPC;
use ISPC;
#Tabla Localidad
create table localidad (
idlocalidad int primary key,
nombre varchar(45)
);
insert into localidad values(1,"Córdoba");
insert into localidad values(2,"Neuquén");
insert into localidad values(3,"Bs.Aires");
insert into localidad values(4,"Jujuy");
insert into localidad values(5,"Salta");
update localidad set nombre="La Rioja" 
where idlocalidad=1;
select * from localidad;
delete from localidad where idlocalidad=4;


#Tabla Alumnos
create table alumnos(
legajo int primary key,
nombre_a varchar(45),
apellido varchar(45),
teléfono  varchar(45),
localidad int,
foreign key (localidad) references localidad (idlocalidad)
);
insert into alumnos values (1,"Julián","Meneses","3516565702",1);
insert into alumnos values (2,"Manuel","James","3516552348",3);
insert into alumnos values (3,"Tomás","Llorrens","3516565703",2);
insert into alumnos values (4,"Luciana","Ferreyra","3516565706",4);
insert into alumnos values (5,"María","Rodríguez","3516565709",5);
select * from alumnos inner join localidad on alumnos.localidad=localidad.idlocalidad
where nombre="Córdoba";
select legajo,nombre_a,apellido,nombrecarrera from alumnos 
inner join alumnosxmaterias on alumnos.legajo=alumnosxmaterias.legajo_axm
inner join materias on alumnosxmaterias.idmateria_axm=materias.idmaterias
inner join carreras on materias.idmaterias=carreras.idcarrera
where nombrecarrera="Física";
select * from alumnos;
drop table alumnos;

#Tabla Carreras

create table carreras(
idcarrera int primary key,
nombrecarrera varchar(45)
);
insert into carreras values (01,"Informática");
insert into carreras values (02,"Lengua");
insert into carreras values (03,"Física");
insert into carreras values (04,"Astronomía");
insert into carreras values (05,"Historia");
select * from carreras;
update carreras set nombrecarrera="Biología"
where idcarrera=04;
select * from carreras;


#Tabla Materias

create table materias(
idmaterias int primary key,
nombre varchar(45),
carrera int,
foreign key (carrera) references carreras(idcarrera)
);
insert into materias values (01,"Programación",01);
insert into materias values (06,"Python",01);
insert into materias values (02,"Estructuras Gramaticales",02);
insert into materias values (03,"Física I",03);
insert into materias values (04,"Cuerpos Celestes",04);
insert into materias values (05,"Programación",05);

select nombre,nombrecarrera from materias
inner join carreras on materias.carrera=carreras.idcarrera
where nombrecarrera="Informática";

#Tabla Alumnos por Materias

create table alumnosxmaterias(
nota int,
legajo_axm int,
idmateria_axm int,
foreign key (legajo_axm) references alumnos (legajo),
foreign key (idmateria_axm) references materias (idmaterias)
);
insert into alumnosxmaterias values (null,1,01);
insert into alumnosxmaterias values (null,2,02);
insert into alumnosxmaterias values (null,3,03);
insert into alumnosxmaterias values (null,4,04);
insert into alumnosxmaterias values (null,5,05);
insert into alumnosxmaterias values (3,2,06);
select * from alumnosxmaterias;
update alumnosxmaterias set nota=10 
where legajo_axm=2;
select legajo,nombre_a,nota from alumnos
inner join alumnosxmaterias on alumnos.legajo=alumnosxmaterias.legajo_axm
where legajo=2;
select legajo,nombre_a,nombre,nota from alumnos
inner join alumnosxmaterias on alumnos.legajo=alumnosxmaterias.legajo_axm
inner join materias on alumnosxmaterias.idmateria_axm=materias.idmaterias
where nota>=4;
drop table alumnosxmaterias


