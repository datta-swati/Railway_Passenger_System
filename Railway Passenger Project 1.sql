--Check how many trains start from the station "Punjab" and list them
select * from train where arrival_station = any(select present_station from passenger where present_station = 'punjab');

--Check how many trains has destination station "Delhi" and list them
select * from train where dest_station = any(select dest_station from passenger where dest_station = 'delhi');

--Find maximum and minimum distance
select train_no, distance, fare from train where distance = (select max(distance) from train);
select train_no, distance, fare from train where distance = (select min(distance) from train);

--If destination and fare are comfortable then list the passenger details
select p.passenger_id, p.seat_no, p.passenger_name, p.train_num, p.destination_station, t.fare from passenger p join train t on p.train_num = t.train_no where p.destination_station = t.dest_station and t.fare < 8000;
