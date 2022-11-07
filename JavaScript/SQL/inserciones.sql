 -- insertar datos en tablas
 
 -- insert into NOMBRE_TABLA (NOMBRE_COL1, NOMBRE_COL2, NOMBRE_COL3) values (VALOR1, VALOR2, VALOR3,);

 insert into directivos ( nombre, apellido)
 values ("Maggie", "Fernandez");

 insert into directivos (nombre, apellido)
 values ("Rafael", "Guerrero");

-- consultar

select * -- el * significa 'trae todos los registros'
from directivos
where id = 4
;

-- insertar más de un registro
insert into directivos (nombre, apellido)
values ("Laura", "Soto") , ("Andrea", "Montecinos");


-- crear tabla mascotas, minimo 4 columnas, minimo 4 inserciones x medio de script.

create table generationc2.mascotass(
	id INT primary key not null auto_increment,
	nombreMascota varchar(100) not null,
	dueñoMascota varchar(100) not null,
	tipoMascota varchar(100) not null);


insert into mascotass(nombreMascota, dueñoMascota, tipoMascota)
values ("Venus","Seb", "Gato");

insert into mascotass(nombreMascota, dueñoMascota, tipoMascota)
values ("Jupiter", "Mari", "Gato");

insert into mascotass(nombreMascota, dueñoMascota, tipoMascota)
values ("Pantufla", "Maripi", "Perro");

insert into mascotass(nombreMascota, dueñoMascota, tipoMascota)
values ("Tony", "Benja", "Hamster");




 