use pts2013;
drop table if exists ttl_columns;
create table ttl_columns (
	id timeuuid primary key,
	date text,
	value text
);

begin batch
insert into ttl_columns (id, date, value)
values (now(), '20131106', 'value #1') using ttl 10;
insert into ttl_columns (id, date, value)
values (now(), '20131106', 'value #2') using ttl 20;
insert into ttl_columns (id, date, value)
values (now(), '20131106', 'value #3') using ttl 30;
apply batch;