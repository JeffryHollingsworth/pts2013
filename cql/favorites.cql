drop keyspace if exists pts2013;
create keyspace pts2013
with replication = { 'class' : 'SimpleStrategy', 'replication_factor' : 1 };
use pts2013;

drop table if exists users;
create table users (
	id uuid primary key,
	username text,
	firstname text,
	lastname text,
	email text
);

drop table if exists items;
create table items (
	id uuid primary key,
	title text,
	description text,
	price decimal
);

drop table if exists favorite_items;
create table favorite_items (
	itemid uuid,
	favoriteid timeuuid,
	userid uuid,
	firstname text,
	primary key (itemid, favoriteid, userid)	
);

drop table if exists user_favorites;
create table user_favorites (
	userid uuid,
	favoriteid timeuuid,
	itemid uuid,
	title text,
	primary key (userid, favoriteid, itemid)
);

begin batch
insert into users (id, email, firstname, lastname, username)
values (7ea0c42b-9abc-4fed-8cdf-ade0280bf513, 'todd.fredrich@pearson.com', 'Todd', 'Fredrich', 'tfredrich');
insert into users (id, email, firstname, lastname, username)
values (d54a271a-d998-4bdd-b931-ee919aeb3eeb, 'nuno.cardoso@pearson.com', 'Nuno', 'Carduso', 'ncarduso');
insert into users (id, email, firstname, lastname, username)
values (d3ce1008-8646-4883-98d3-15eb9302ae58, 'mark.chipman@pearson.com', 'Mark', 'Chipman', 'mchipman');
insert into users (id, email, firstname, lastname, username)
values (d417cc4c-4254-48f3-9035-d33b637fa7a2, 'kirk.clemens@pearson.com', 'Kirk', 'Clemens', 'kclemens');
insert into users (id, email, firstname, lastname, username)
values (2b1c6e05-5526-4f96-b007-1ff27afe596d, 'william.galen@pearson.com', 'William', 'Galen', 'wgalen');
insert into users (id, email, firstname, lastname, username)
values (fccfd06b-64d5-4ffe-bb27-69306eb222d1, 'John.Gravatt@pearson.com', 'John', 'Gravatt', 'jgravatt');
insert into users (id, email, firstname, lastname, username)
values (6b0a55cd-fd38-4cbe-aecc-392207cd75a4, 'jinho@acelearningco.com', 'Jinho', 'Lee', 'jlee');
insert into users (id, email, firstname, lastname, username)
values (3560c0a0-d2ac-43e7-a880-578f15a7cb92, 'miles.loring@pearson.com', 'Miles', 'Loring', 'mloring');
insert into users (id, email, firstname, lastname, username)
values (bdc56548-5eb3-4419-b338-94e6e59f6e67, 'sampath.mamilla@pearson.com', 'Sampath', 'Mamilla', 'smamilla');
insert into users (id, email, firstname, lastname, username)
values (5b71eabb-d612-4589-bd1d-7faeb9bf57c5, 'nirav.mehta@pearson.com', 'Nirav', 'Mehta', 'nmehta');
insert into users (id, email, firstname, lastname, username)
values (3e69d08d-a89d-4b5d-9837-35929eb87655, 'monami.mukherjee@pearson.com', 'Monami', 'Mukherjee', 'mmukherjee');
insert into users (id, email, firstname, lastname, username)
values (f2a4c3d4-6741-4c21-825b-705c9d9e9710, 'duc.nguyen@pearson.com', 'Duc', 'Nguyen', 'dnguyen');
insert into users (id, email, firstname, lastname, username)
values (04d7dec2-e3eb-4a96-9e3e-4964ef4eee1d, 'rob.nielsen@pearson.com', 'Rob', 'Nielsen', 'rnielsen');
insert into users (id, email, firstname, lastname, username)
values (aae5ec6f-de9c-4e45-b6ce-696ffdc18bb1, 'dayasankar.pocha@pearson.com', 'Dayasankar', 'Pocha', 'dpocha');
insert into users (id, email, firstname, lastname, username)
values (a8a09aa1-f0ec-40fd-a8cc-dc35b0e0d42a, 'dhanushanth.pushparajah@pearson.com', 'Dhanushanth', 'Pushparajah', 'dpushparajah');
insert into users (id, email, firstname, lastname, username)
values (8ab696f2-94f1-4444-90d9-afb07bb53445, 'richard.rosiak@pearson.com', 'Richard', 'Rosiak', 'rrosiak');
insert into users (id, email, firstname, lastname, username)
values (dd2485c9-98e0-4d4f-8413-f2249ddc5eeb, 'bradden.wondra@pearson.com', 'Bradden', 'Wondra', 'bwondra');

insert into items (id, title, description, price)
values (e3ad364e-f6e6-439f-9b2f-c092d2692dc0, 'iPhone 5', 'Apple iPhone version 5', 999.00);
insert into items (id, title, description, price)
values (500dc7c1-b945-4cb6-b2ee-392191bfcc65, 'MacBook 15', 'Apple MacBook retina display 15 inch', 2499.00);
insert into items (id, title, description, price)
values (26144636-7bcc-4da2-befc-fe993b684489, 'Cinema Display', 'Apple 30" cinema display 2440x1400', 999.00);
insert into items (id, title, description, price)
values (0f93b933-04e4-460b-bf92-f19b696336f7, 'Asus Chromebook', 'Asus 11" Chromebook with 16GB SSD', 199.00);
insert into items (id, title, description, price)
values (b1781d17-9c7b-4bc7-83d3-1e7cf601d87a, 'HP Chromebook', 'HP 11" HiRes, fancy-schmancy chromebook computer', 279.00);

insert into favorite_items (itemid, userid, firstname, favoriteid)
values (500dc7c1-b945-4cb6-b2ee-392191bfcc65, 7ea0c42b-9abc-4fed-8cdf-ade0280bf513, 'Todd', now());
insert into user_favorites(itemid, userid, title, favoriteid)
values (500dc7c1-b945-4cb6-b2ee-392191bfcc65, 7ea0c42b-9abc-4fed-8cdf-ade0280bf513, 'MacBook 15', now());

insert into favorite_items (itemid, userid, firstname, favoriteid)
values (26144636-7bcc-4da2-befc-fe993b684489, 7ea0c42b-9abc-4fed-8cdf-ade0280bf513, 'Todd', now());
insert into user_favorites(itemid, userid, title, favoriteid)
values (26144636-7bcc-4da2-befc-fe993b684489, 7ea0c42b-9abc-4fed-8cdf-ade0280bf513, 'Cinema Display', now());

insert into favorite_items (itemid, userid, firstname, favoriteid)
values (26144636-7bcc-4da2-befc-fe993b684489, f2a4c3d4-6741-4c21-825b-705c9d9e9710, 'Duc', now());
insert into user_favorites(itemid, userid, title, favoriteid)
values (26144636-7bcc-4da2-befc-fe993b684489, f2a4c3d4-6741-4c21-825b-705c9d9e9710, 'Cinema Display', now());

insert into favorite_items (itemid, userid, firstname, favoriteid)
values (b1781d17-9c7b-4bc7-83d3-1e7cf601d87a, aae5ec6f-de9c-4e45-b6ce-696ffdc18bb1, 'Dayasankar', now());
insert into user_favorites(itemid, userid, title, favoriteid)
values (b1781d17-9c7b-4bc7-83d3-1e7cf601d87a, aae5ec6f-de9c-4e45-b6ce-696ffdc18bb1, 'HP Chromebook', now());

apply batch;