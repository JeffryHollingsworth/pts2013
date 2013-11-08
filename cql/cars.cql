drop keyspace if exists pts2013;
create keyspace pts2013
with replication = { 'class' : 'SimpleStrategy', 'replication_factor' : 1 };
use pts2013;
create table cars (
	id uuid,
	year int,
	make text,
	model text,
	details map<text, text>,
	description text,
	primary key (id)
);

begin batch
insert into cars (id, year, make, model)
values (137e05e8-bdba-40f1-8bb7-9c58738789ff, 1996, 'toyota', 'camry');
insert into cars (id, year, make, model, details, description)
values (02420f51-d209-4f3e-a56f-d2d2bdb8a964, 1996, 'toyota', '4runner', {'engine':'V6', 'drivetrain':'4WD', 'price':'7500'}, '1996 Toyota 4Runner 4WD V6. Blue. In excellent condition. $7500 OBO');
insert into cars (id, year, make, model)
values (acfeeb15-f383-4e8b-8d12-6d5373e35d96, 1996, 'toyota', 'rav4');
insert into cars (id, year, make, model)
values (72d2e7a7-a926-4d1c-8bc5-31edea046054, 1996, 'chevrolet', 'caprice');
insert into cars (id, year, make, model)
values (16cce76f-929f-4b20-91a3-994a0de74f66, 1996, 'chevrolet', 'monte carlo');
insert into cars (id, year, make, model)
values (ed79f072-f42c-42b4-a04e-eea2a2935c57, 1996, 'chevrolet', 'impala');

insert into cars (id, year, make, model)
values (fb2eff93-99ca-426e-b363-6fa7caeb141b, 1997, 'toyota', 'camry');
insert into cars (id, year, make, model)
values (66e30752-d3cf-4d1f-bc91-999378d1b16d, 1997, 'toyota', '4runner');
insert into cars (id, year, make, model)
values (83db28c1-5366-4cbb-8dd6-63c8572f310e, 1997, 'toyota', 'rav4');
insert into cars (id, year, make, model)
values (3247d624-5aa0-4264-aafc-8af1b1a03580, 1997, 'chevrolet', 'caprice');
insert into cars (id, year, make, model)
values (9b8e4a0e-4e10-4f60-bc45-e466b0235f74, 1997, 'chevrolet', 'monte carlo');
insert into cars (id, year, make, model)
values (d0dc5669-2a90-4454-8f5e-69af74bc13ae, 1997, 'chevrolet', 'impala');

apply batch;