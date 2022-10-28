create table Usuario(
Id bigint identity(1,1) not null ,
Nombre varchar(15) not null,
Apellido varchar(20) not null,
Mail varchar(30) not null,
Usuario varchar(15) not null,
Contraseña varchar(20) not null,
Edad int(3),
Nacionalidad varchar(20),

primary key (Id), 
);

create table Calendario(
Id bigint identity(1,1) not null ,
Fecha date not null,
IdTarea bigint not null,

primary key (Id),
);

create table Tareas(
Id bigint identity (1,1) not null ,
IdUsuario bigint not null,
Tarea varchar(40) not null,
IdFecha bigint not null,
primary key (Id)
);

ALTER TABLE Tareas
ADD FOREIGN KEY (idFecha)
REFERENCES Calendario(Id)
;

ALTER TABLE Calendario
ADD FOREIGN KEY (idTarea)
REFERENCES (Id)
;
ALTER TABLE Tareas
ADD FOREIGN KEY (idUsuario)
REFERENCES Usuario(Id)
;