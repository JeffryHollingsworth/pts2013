use pts2013;
drop table if exists events;
create table events (
	id timeuuid primary key,
	eventtype text,
	data text
);

begin batch
insert into events (id, eventtype, data)
values (now(), 'com.pearson.course.created', 'History 101');
insert into events (id, eventtype, data)
values (now(), 'com.pearson.course.created', 'English 101');
insert into events (id, eventtype, data)
values (now(), 'com.pearson.course.created', 'English 201');
insert into events (id, eventtype, data)
values (now(), 'com.pearson.course.created', 'Math 410');
insert into events (id, eventtype, data)
values (now(), 'com.pearson.course.created', 'Math 101');
insert into events (id, eventtype, data)
values (now(), 'com.pearson.course.created', 'Math 201');
insert into events (id, eventtype, data)
values (now(), 'com.pearson.course.created', 'Math 301');
apply batch;