use pts2013;
drop table if exists paths;
create table paths (
	category text,
	path text,
	primary key (path, category)
);

begin batch
insert into paths (category, path)
values ('Books', '/');
insert into paths (category, path)
values ('Programming', '/Books');
insert into paths (category, path)
values ('Databases', '/Books/Programming');
insert into paths (category, path)
values ('Languages', '/Books/Programming');
insert into paths (category, path)
values ('Cassandra', '/Books/Programming/Databases');
insert into paths (category, path)
values ('MongoDB', '/Books/Programming/Databases');
insert into paths (category, path)
values ('Cars', '/');
insert into paths (category, path)
values ('BMW', '/Cars');
insert into paths (category, path)
values ('X3', '/Cars/BMW');
insert into paths (category, path)
values ('X5', '/Cars/BMW');
insert into paths (category, path)
values ('M3', '/Cars/BMW');
insert into paths (category, path)
values ('Toyota', '/Cars');
insert into paths (category, path)
values ('4Runner', '/Cars/Toyota');
insert into paths (category, path)
values ('Rav4', '/Cars/Toyota');
insert into paths (category, path)
values ('Camry', '/Cars/Toyota');

apply batch;