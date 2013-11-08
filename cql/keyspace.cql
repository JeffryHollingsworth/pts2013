drop keyspace if exists pts2013;
create keyspace pts2013
with replication = { 'class' : 'SimpleStrategy', 'replication_factor' : 1 };
