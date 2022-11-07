-- MODIFICAR LA DATA
-- drop database generationc2;

-- eliminar la tabla, tambien eliminamos el contenido de la tabla, no se puede recuperar

-- drop table directivos;


 insert into directivos ( nombre, apellido)
 values ("Maggie", "Fernandez");

 insert into directivos (nombre, apellido)
 values ("Rafael", "Guerrero");

insert into directivos (nombre, apellido)
values ("Lau", "Soto");

insert into directivos (nombre, apellido)
values ("Andrea", "Montecinos");

insert into directivos (nombre, apellido)
values ("Andrea", "Soto");

insert into directivos (nombre, apellido)
values ("Andres", "Montecinos");

-- eliminar el contenido de una tabla, NO ELIMINA LA TABLA
truncate table directivos; 

-- modificar una data en una columna específica

-- update nombre_tabla set nombre_columna = el_nuevo_dato where CONDICION

update directivos set nombre = "Laura" where id = 3; -- where id = 3 es el DATO ESPECÍFICO.

select * from directivos;

update directivos set apellido = "Fernández" where id = 1;

select * from directivos;


-- mostrar columnas específicas
select nombre
from directivos;


-- alias

select dire.nombre as first_name, dire.id as rut
from directivos dire;

-- filtrar

select dire.id, dire.nombre, dire.apellido
from directivos dire
where dire.nombre = 'Andrea' ; -- me muestra TODOS los registros en donde nombre = ANDREA. Podría traer 0, 1 o más de 1.

select dire.id, dire.nombre, dire.apellido
from directivos dire
where dire.nombre = 'Andrea'
and dire.apellido = 'Montecinos' ; -- podemos seguir filtrando de manera más específica

-- filtrar por parte de palabra/numero

select dire.nombre, dire.apellido, dire.id
from directivos dire
where dire.nombre  like 'An%';-- like = coincidencias, el % indica que sé cómo comienza pero no sé cómo termina

-- filtrar por el final

select dire.nombre, dire.apellido, dire.id
from directivos dire
where dire.nombre  like '%an';

-- busca la coindicencia en cualquier lugar

select dire.nombre, dire.apellido, dire.id
from directivos dire
where dire.nombre  like '%an%';

create table generationc2.cursos (
	id int not null auto_increment,
	nombre varchar(100) not null,
	cant_alumnos int not null,
	especialidad varchar(100),
	primary key (id)
	);


-- insertando datos tabla cursos
insert into cursos (nombre, cant_alumnos, especialidad)
values ("Cohorte 1" , 30 , "Java") , ("Cohorte 1", 34, "Java") , ("Cohorte 3", 35, "Java");

select * from cursos;

-- agregar la FK a estudiantes
-- 1. creacion columna

alter table estudiante
add curso_id int;

-- 2. relacionar las tablas

alter table estudiante 
add foreign key (curso_id) references cursos(id);

-- 3.  insertar

insert into estudiante (nombre, apellido, curso_id)
values ("Jhon", "Doe", 1) ,
("Jane", "Doe", 2),
("Ayun", "Doe", 2),
("Zoe", "Doe", 3);

select * from estudiante;


