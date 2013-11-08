use pts2013;
drop table if exists collections;
create table collections (
	userid uuid,
	tags list<text>,
	sorted_tags set<text>,
	extensions map<text, text>,
	primary key (userid)
);

begin batch
insert into collections (userid, tags)
values (7ea0c42b-9abc-4fed-8cdf-ade0280bf513, ['rest', 'sleep', 'napping', 'ebay']);
insert into collections (userid, sorted_tags)
values (7ea0c42b-9abc-4fed-8cdf-ade0280bf513, {'rest', 'sleep', 'napping', 'ebay'});
insert into collections (userid, extensions)
values (7ea0c42b-9abc-4fed-8cdf-ade0280bf513, { 'email' : 'a@ibm.com', 'home' : '303-333-5555', 'office' : '303-658-1511'});
apply batch;
