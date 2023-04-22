--Change destination of a place and remove the particular passenger list
update train set dest_station = 'gujarat' where seat_no = 20;
delete from passenger where destination_station != 'gujarat' and train_num = 1020;

--Display final passenger list
select * from passenger;