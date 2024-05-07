drop extension pgrocks cascade;
create extension pgrocks;
create table x(a int) using pgrocks;
create table y(a int) using pgrocks;
INSERT INTO x VALUES (23), (101);
select a from x;
select a from x where a = 23;
select a from y;
