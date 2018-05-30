create role instructor;
grant all privileges on all tables in schema public to instructor;
grant all privileges on all sequences in schema public to instructor;
alter default privileges in schema public grant all privileges on tables to instructor;
alter default privileges in schema public grant all privileges on sequences to instructor;

create role enunes with login encrypted password 'SECRET';
grant instructor to <user>;

create role learner;
grant select on all tables in schema public to learner;
grant select on all sequences in schema public to learner;
alter default privileges in schema public grant select on tables to learner;
alter default privileges in schema public grant select on sequences to learner;

create role <user> with login encrypted password 'SECRET';
grant learner to <user>;
