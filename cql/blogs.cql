use pts2013;
drop table if exists blogs;
create table blogs (
	id uuid,
	ownerid uuid,
	name text,
	description text,
	primary key (ownerid, id)
);

drop table if exists posts;
create table posts (
	id timeuuid,
	authorid uuid,
	blogid uuid,
	title text,
	content text,
	primary key (blogid, id)
) with clustering order by (id desc);

drop table if exists comments;
create table comments (
	id timeuuid,
	postid timeuuid,
	authorid uuid,
	comment text,
	primary key (postid, id)
);

begin batch
insert into blogs (id, ownerid, name, description)
values (c9d49b97-5c8b-48a8-840b-4b86c98b899d, 7ea0c42b-9abc-4fed-8cdf-ade0280bf513, 'About Some Stuff', 'A blog about miscellaneous');
insert into blogs (id, ownerid, name, description)
values (83746c52-4291-4177-9b89-8e26021f896c, 7ea0c42b-9abc-4fed-8cdf-ade0280bf513, 'API RESTifarians', 'REST-specific blog');
insert into blogs (id, ownerid, name, description)
values (0f7a1936-a73c-4038-9548-c95266db7158, 7ea0c42b-9abc-4fed-8cdf-ade0280bf513, 'Vegan Adventures', 'Ventures into Veganism');

insert into posts (id, blogid, authorid, title, content)
values(now(), c9d49b97-5c8b-48a8-840b-4b86c98b899d, 7ea0c42b-9abc-4fed-8cdf-ade0280bf513, 'Post 1', 'Some content here...');
insert into posts (id, blogid, authorid, title, content)
values(now(), c9d49b97-5c8b-48a8-840b-4b86c98b899d, 7ea0c42b-9abc-4fed-8cdf-ade0280bf513, 'Post 2', 'Some more content...');
insert into posts (id, blogid, authorid, title, content)
values(now(), c9d49b97-5c8b-48a8-840b-4b86c98b899d, 7ea0c42b-9abc-4fed-8cdf-ade0280bf513, 'Post 3', 'Additional content here...');

insert into posts (id, blogid, authorid, title, content)
values(now(), 0f7a1936-a73c-4038-9548-c95266db7158, 7ea0c42b-9abc-4fed-8cdf-ade0280bf513, 'Oh yeah?', 'Beef. Whats for dinner');

apply batch;