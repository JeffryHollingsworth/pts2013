use pts2013;
drop table if exists analytics;
create table analytics (
	yyyymmdd text,
	hhmm int,
	clicks counter,
	primary key (yyyymmdd, hhmm)
);

begin counter batch
update analytics
set clicks = clicks + 3
where yyyymmdd = '20131106' and hhmm = 0;
update analytics
set clicks = clicks + 5
where yyyymmdd = '20131106' and hhmm = 600;
update analytics
set clicks = clicks + 2000
where yyyymmdd = '20131106' and hhmm = 1000;
update analytics
set clicks = clicks + 1
where yyyymmdd = '20131106' and hhmm = 1300;
update analytics
set clicks = clicks + 30000
where yyyymmdd = '20131106' and hhmm = 1800;

update analytics
set clicks = clicks + 10
where yyyymmdd = '20131107' and hhmm = 100;
update analytics
set clicks = clicks + 90
where yyyymmdd = '20131107' and hhmm = 700;
update analytics
set clicks = clicks + 200
where yyyymmdd = '20131107' and hhmm = 1100;
update analytics
set clicks = clicks + 1
where yyyymmdd = '20131107' and hhmm = 1400;
update analytics
set clicks = clicks + 50000
where yyyymmdd = '20131107' and hhmm = 2000;

update analytics
set clicks = clicks + 2
where yyyymmdd = '20131108' and hhmm = 30;
update analytics
set clicks = clicks + 75
where yyyymmdd = '20131108' and hhmm = 930;
update analytics
set clicks = clicks + 215
where yyyymmdd = '20131108' and hhmm = 1110;
update analytics
set clicks = clicks + 14
where yyyymmdd = '20131108' and hhmm = 1515;
update analytics
set clicks = clicks + 1000
where yyyymmdd = '20131108' and hhmm = 2201;

apply batch;