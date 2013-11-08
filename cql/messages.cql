use pts2013;
drop table if exists messages;
create table messages (
	id timeuuid,
	author text,
	contents text,
	primary key (author, id)
) with clustering order by (id desc); 

begin batch
insert into messages (id, author, contents)
values (now(), 'tfredrich', 'Message #1');
insert into messages (id, author, contents)
values (now(), 'tfredrich', 'Message #2');
insert into messages (id, author, contents)
values (now(), 'tfredrich', 'Message #3');
insert into messages (id, author, contents)
values (now(), 'tfredrich', 'Message #4');
insert into messages (id, author, contents)
values (now(), 'tfredrich', 'Message #5');
insert into messages (id, author, contents)
values (now(), 'tfredrich', 'Message #6');
insert into messages (id, author, contents)
values (now(), 'tfredrich', 'Message #7');

insert into messages (id, author, contents)
values (now(), 'dpocha', 'Message #1');
insert into messages (id, author, contents)
values (now(), 'dpocha', 'Message #2');
insert into messages (id, author, contents)
values (now(), 'dpocha', 'Message #3');
insert into messages (id, author, contents)
values (now(), 'dpocha', 'Message #4');
insert into messages (id, author, contents)
values (now(), 'dpocha', 'Message #5');
insert into messages (id, author, contents)
values (now(), 'dpocha', 'Message #6');
insert into messages (id, author, contents)
values (now(), 'dpocha', 'Message #7');
insert into messages (id, author, contents)
values (now(), 'dpocha', 'Message #8');
insert into messages (id, author, contents)
values (now(), 'dpocha', 'Message #9');


insert into messages (id, author, contents)
values (now(), 'dnguyen', 'Message #1');
insert into messages (id, author, contents)
values (now(), 'dnguyen', 'Message #2');
insert into messages (id, author, contents)
values (now(), 'dnguyen', 'Message #3');
insert into messages (id, author, contents)
values (now(), 'dnguyen', 'Message #4');
insert into messages (id, author, contents)
values (now(), 'dnguyen', 'Message #5');
insert into messages (id, author, contents)
values (now(), 'dnguyen', 'Message #6');
insert into messages (id, author, contents)
values (now(), 'dnguyen', 'Message #7');
insert into messages (id, author, contents)
values (now(), 'dnguyen', 'Message #8');
insert into messages (id, author, contents)
values (now(), 'dnguyen', 'Message #9');
insert into messages (id, author, contents)
values (now(), 'dnguyen', 'Message #10');
insert into messages (id, author, contents)
values (now(), 'dnguyen', 'Message #11');
insert into messages (id, author, contents)
values (now(), 'dnguyen', 'Message #12');
insert into messages (id, author, contents)
values (now(), 'dnguyen', 'Message #13');
insert into messages (id, author, contents)
values (now(), 'dnguyen', 'Message #14');
apply batch;