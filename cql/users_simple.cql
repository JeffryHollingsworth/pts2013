drop keyspace if exists pts2013;
create keyspace pts2013
with replication = { 'class' : 'SimpleStrategy', 'replication_factor' : 1 };
use pts2013;

create table users (
	id uuid,
	username text,
	firstname text,
	lastname text,
	email text,
	password text,
	primary key (id)
);

create table users_by_username (
	id uuid,
	username text,
	firstname text,
	lastname text,
	email text,
	password text,
	primary key (username)
);

begin batch
insert into users (id, email, firstname, lastname, password, username)
values (7ea0c42b-9abc-4fed-8cdf-ade0280bf513, 'todd.fredrich@pearson.com', 'Todd', 'Fredrich', 'password', 'tfredrich');
insert into users_by_username (id, email, firstname, lastname, password, username)
values (7ea0c42b-9abc-4fed-8cdf-ade0280bf513, 'todd.fredrich@pearson.com', 'Todd', 'Fredrich', 'password', 'tfredrich');

insert into users (id, email, firstname, lastname, password, username)
values (d54a271a-d998-4bdd-b931-ee919aeb3eeb, 'nuno.cardoso@pearson.com', 'Nuno', 'Carduso', 'password', 'ncarduso');
insert into users_by_username (id, email, firstname, lastname, password, username)
values (d54a271a-d998-4bdd-b931-ee919aeb3eeb, 'nuno.cardoso@pearson.com', 'Nuno', 'Carduso', 'password', 'ncarduso');

insert into users (id, email, firstname, lastname, password, username)
values (d3ce1008-8646-4883-98d3-15eb9302ae58, 'mark.chipman@pearson.com', 'Mark', 'Chipman', 'password', 'mchipman');
insert into users_by_username (id, email, firstname, lastname, password, username)
values (d3ce1008-8646-4883-98d3-15eb9302ae58, 'mark.chipman@pearson.com', 'Mark', 'Chipman', 'password', 'mchipman');

insert into users (id, email, firstname, lastname, password, username)
values (d417cc4c-4254-48f3-9035-d33b637fa7a2, 'kirk.clemens@pearson.com', 'Kirk', 'Clemens', 'password', 'kclemens');
insert into users_by_username (id, email, firstname, lastname, password, username)
values (d417cc4c-4254-48f3-9035-d33b637fa7a2, 'kirk.clemens@pearson.com', 'Kirk', 'Clemens', 'password', 'kclemens');

insert into users (id, email, firstname, lastname, password, username)
values (2b1c6e05-5526-4f96-b007-1ff27afe596d, 'william.galen@pearson.com', 'William', 'Galen', 'password', 'wgalen');
insert into users_by_username (id, email, firstname, lastname, password, username)
values (2b1c6e05-5526-4f96-b007-1ff27afe596d, 'william.galen@pearson.com', 'William', 'Galen', 'password', 'wgalen');

insert into users (id, email, firstname, lastname, password, username)
values (fccfd06b-64d5-4ffe-bb27-69306eb222d1, 'John.Gravatt@pearson.com', 'John', 'Gravatt', 'password', 'jgravatt');
insert into users_by_username (id, email, firstname, lastname, password, username)
values (fccfd06b-64d5-4ffe-bb27-69306eb222d1, 'John.Gravatt@pearson.com', 'John', 'Gravatt', 'password', 'jgravatt');

insert into users (id, email, firstname, lastname, password, username)
values (6b0a55cd-fd38-4cbe-aecc-392207cd75a4, 'jinho@acelearningco.com', 'Jinho', 'Lee', 'password', 'jlee');
insert into users_by_username (id, email, firstname, lastname, password, username)
values (6b0a55cd-fd38-4cbe-aecc-392207cd75a4, 'jinho@acelearningco.com', 'Jinho', 'Lee', 'password', 'jlee');

insert into users (id, email, firstname, lastname, password, username)
values (3560c0a0-d2ac-43e7-a880-578f15a7cb92, 'miles.loring@pearson.com', 'Miles', 'Loring', 'password', 'mloring');
insert into users_by_username (id, email, firstname, lastname, password, username)
values (3560c0a0-d2ac-43e7-a880-578f15a7cb92, 'miles.loring@pearson.com', 'Miles', 'Loring', 'password', 'mloring');

insert into users (id, email, firstname, lastname, password, username)
values (bdc56548-5eb3-4419-b338-94e6e59f6e67, 'sampath.mamilla@pearson.com', 'Sampath', 'Mamilla', 'password', 'smamilla');
insert into users_by_username (id, email, firstname, lastname, password, username)
values (bdc56548-5eb3-4419-b338-94e6e59f6e67, 'sampath.mamilla@pearson.com', 'Sampath', 'Mamilla', 'password', 'smamilla');

insert into users (id, email, firstname, lastname, password, username)
values (5b71eabb-d612-4589-bd1d-7faeb9bf57c5, 'nirav.mehta@pearson.com', 'Nirav', 'Mehta', 'password', 'nmehta');
insert into users_by_username (id, email, firstname, lastname, password, username)
values (5b71eabb-d612-4589-bd1d-7faeb9bf57c5, 'nirav.mehta@pearson.com', 'Nirav', 'Mehta', 'password', 'nmehta');

insert into users (id, email, firstname, lastname, password, username)
values (3e69d08d-a89d-4b5d-9837-35929eb87655, 'monami.mukherjee@pearson.com', 'Monami', 'Mukherjee', 'password', 'mmukherjee');
insert into users_by_username (id, email, firstname, lastname, password, username)
values (3e69d08d-a89d-4b5d-9837-35929eb87655, 'monami.mukherjee@pearson.com', 'Monami', 'Mukherjee', 'password', 'mmukherjee');

insert into users (id, email, firstname, lastname, password, username)
values (f2a4c3d4-6741-4c21-825b-705c9d9e9710, 'duc.nguyen@pearson.com', 'Duc', 'Nguyen', 'password', 'dnguyen');
insert into users_by_username (id, email, firstname, lastname, password, username)
values (f2a4c3d4-6741-4c21-825b-705c9d9e9710, 'duc.nguyen@pearson.com', 'Duc', 'Nguyen', 'password', 'dnguyen');

insert into users (id, email, firstname, lastname, password, username)
values (04d7dec2-e3eb-4a96-9e3e-4964ef4eee1d, 'rob.nielsen@pearson.com', 'Rob', 'Nielsen', 'password', 'rnielsen');
insert into users_by_username (id, email, firstname, lastname, password, username)
values (04d7dec2-e3eb-4a96-9e3e-4964ef4eee1d, 'rob.nielsen@pearson.com', 'Rob', 'Nielsen', 'password', 'rnielsen');

insert into users (id, email, firstname, lastname, password, username)
values (aae5ec6f-de9c-4e45-b6ce-696ffdc18bb1, 'dayasankar.pocha@pearson.com', 'Dayasankar', 'Pocha', 'password', 'dpocha');
insert into users_by_username (id, email, firstname, lastname, password, username)
values (aae5ec6f-de9c-4e45-b6ce-696ffdc18bb1, 'dayasankar.pocha@pearson.com', 'Dayasankar', 'Pocha', 'password', 'dpocha');

insert into users (id, email, firstname, lastname, password, username)
values (a8a09aa1-f0ec-40fd-a8cc-dc35b0e0d42a, 'dhanushanth.pushparajah@pearson.com', 'Dhanushanth', 'Pushparajah', 'password', 'dpushparajah');
insert into users_by_username (id, email, firstname, lastname, password, username)
values (a8a09aa1-f0ec-40fd-a8cc-dc35b0e0d42a, 'dhanushanth.pushparajah@pearson.com', 'Dhanushanth', 'Pushparajah', 'password', 'dpushparajah');

insert into users (id, email, firstname, lastname, password, username)
values (8ab696f2-94f1-4444-90d9-afb07bb53445, 'richard.rosiak@pearson.com', 'Richard', 'Rosiak', 'password', 'rrosiak');
insert into users_by_username (id, email, firstname, lastname, password, username)
values (8ab696f2-94f1-4444-90d9-afb07bb53445, 'richard.rosiak@pearson.com', 'Richard', 'Rosiak', 'password', 'rrosiak');

insert into users (id, email, firstname, lastname, password, username)
values (dd2485c9-98e0-4d4f-8413-f2249ddc5eeb, 'bradden.wondra@pearson.com', 'Bradden', 'Wondra', 'password', 'bwondra');
insert into users_by_username (id, email, firstname, lastname, password, username)
values (dd2485c9-98e0-4d4f-8413-f2249ddc5eeb, 'bradden.wondra@pearson.com', 'Bradden', 'Wondra', 'password', 'bwondra');
apply batch;