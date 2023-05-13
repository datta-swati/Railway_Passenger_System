--Create second view joining two tables
create view view_2_rp as select p.passenger_id, p.passenger_name, min(t.distance) as Min_Distance
from passenger p join train t on p.train_num = t.train_no group by p.passenger_id, p.passenger_name;
select * from view_2_rp;

--Modifying first view
use Railway_Passenger;

--To show all entries of views
select * from View_1_RP;

--To show only those information who are travelling in train number 1010
select * from View_1_RP where train_num = 1010;

--Changing seat number
update View_1_RP set seat_no = 100 where train_num = 1010;
select * from View_1_RP;