USE [Tarea6]
GO
/****** Object:  Table [dbo].[Alumnos]    Script Date: 31/5/2022 15:56:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Alumnos](
	[Nombre] [varchar](30) NOT NULL,
	[Edad] [int] NULL,
	[Genero] [varchar](1) NULL,
	[Seccion] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Nombre] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Asignaturas]    Script Date: 31/5/2022 15:56:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Asignaturas](
	[Nombre] [varchar](30) NOT NULL,
	[Sección] [int] NULL,
	[UV] [int] NULL,
	[Docente] [varchar](30) NULL,
PRIMARY KEY CLUSTERED 
(
	[Nombre] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Docentes]    Script Date: 31/5/2022 15:56:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Docentes](
	[Nombre] [varchar](30) NOT NULL,
	[Edad] [varchar](30) NULL,
	[Genero] [varchar](1) NULL,
	[Cuenta] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Nombre] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Asignaturas]  WITH CHECK ADD  CONSTRAINT [FK_Asignaturas_Docentes] FOREIGN KEY([Docente])
REFERENCES [dbo].[Docentes] ([Nombre])
GO
ALTER TABLE [dbo].[Asignaturas] CHECK CONSTRAINT [FK_Asignaturas_Docentes]
GO

insert into Alumnos values('EDWIN JAVIER FERNANDEZ CARDENA', 20, 'M',21030)
insert into Alumnos values('ELKING EMILIO SUAZO PAZ',         25, 'M',21050)
insert into Alumnos values('FELIX ISAEL OLIVA ESPINAL',       30, 'F',21040)
insert into Alumnos values('GABRIELA ESTEFANY FUNEZ LOPEZ',   35, 'F',21090)
insert into Alumnos values('HENRRY DAGOBERTO RODAS MOREL',    20, 'M',23503)
insert into Alumnos values('HENRY ALEXANDER LOPEZ PINEDA',    40, 'M',25302)
insert into Alumnos values('JOEL SALOMON SUAZO RIVAS',        50, 'M',75210)
insert into Alumnos values('JOSE FRANCISCO PAREDES ROSA',     25, 'M',12121)
insert into Alumnos values('JOSELIN CAROLINA MOLINA MADRID',  14, 'M',12125)
insert into Alumnos values('JOSUE DAVID ROMERO MILLA',        80, 'M',13135)

insert into Docentes values('EDWIN JAVIER FERNANDEZ CARDENA', 100,'M',21030)
insert into Docentes values('ELKING EMILIO SUAZO PAZ', 20, 'M', 21050)
insert into Docentes values('FELIX ISAEL OLIVA ESPINAL', 50, 'F', 21040)
insert into Docentes values('GABRIELA ESTEFANY FUNEZ LOPEZ', 30, 'F', 21090)
insert into Docentes values('HENRRY DAGOBERTO RODAS MOREL', 62, 'M', 23503)
insert into Docentes values('HENRY ALEXANDER LOPEZ PINEDA', 32, 'M', 25302)
insert into Docentes values('JOEL SALOMON SUAZO RIVAS', 80, 'M', 75210)
insert into Docentes values('JOSE FRANCISCO PAREDES ROSA', 75, 'M', 12121)
insert into Docentes values('JOSELIN CAROLINA MOLINA MADRID', 19, 'M', 12125)
insert into Docentes values('JOSUE DAVID ROMERO MILLA', 25, 'M', 13135)
insert into Docentes values('RAMON', 25, 'M', 13135)

insert into Asignaturas values ('Matemáticas' ,1520 ,4, 'EDWIN JAVIER FERNANDEZ CARDENA')
insert into Asignaturas values ('Español' ,1620 ,4, 'ELKING EMILIO SUAZO PAZ')
insert into Asignaturas values ('Informática' ,1720 ,4, 'FELIX ISAEL OLIVA ESPINAL')
insert into Asignaturas values ('Ciencias' ,1540 ,4, 'GABRIELA ESTEFANY FUNEZ LOPEZ')
insert into Asignaturas values ('Metodología' ,6120 ,4, 'HENRRY DAGOBERTO RODAS MOREL')
insert into Asignaturas values ('Algebra' ,3265 ,4, 'HENRY ALEXANDER LOPEZ PINEDA')
insert into Asignaturas values ('Programación I' ,1580 ,4, 'JOEL SALOMON SUAZO RIVAS')
insert into Asignaturas values ('Programación II' ,7850 ,4, 'JOSE FRANCISCO PAREDES ROSA')
insert into Asignaturas values ('Programación III' ,9065 ,4, 'JOSELIN CAROLINA MOLINA MADRID')
insert into Asignaturas values ('S.O' ,9256 ,4, 'JOSUE DAVID ROMERO MILLA')



--consultas:
select *from Alumnos 

select *from Asignaturas
where Sección in ('1720','1540'	,'9065')

select Edad from Alumnos

select *from Asignaturas
where Nombre in ('Programación I','Programación II'	,'Programación III')

delete from Asignaturas
where Sección = '9065';

delete from Asignaturas
where Sección = '9256';

update Asignaturas set Docente = 'Ramon';