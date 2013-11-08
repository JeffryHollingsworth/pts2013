use pts2013;
drop table if exists items;
create table items (
	id uuid primary key,
	title text,
	description text,
	price decimal
);

begin batch

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

apply batch;