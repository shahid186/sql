use rox_hotel;
SELECT * FROM hotel_detail_information;
SELECT * FROM Booking;

ALTER TABLE hotel_detail_information ADD COLUMN 
Hotel_id Int;

ALTER TABLE Booking ADD COLUMN 
Hotel_id Int;

SET SQL_SAFE_UPDATES = 0;

UPDATE hotel_detail_information SET hotel_id = 1 WHERE Hotel_names= "HotelOne";
UPDATE hotel_detail_information SET hotel_id = 2 WHERE Hotel_names= "HotelTwo";
UPDATE hotel_detail_information SET hotel_id = 3 WHERE Hotel_names= "HotelThree";
UPDATE hotel_detail_information SET hotel_id = 4 WHERE Hotel_names= "HotelFour";
UPDATE hotel_detail_information SET hotel_id = 5 WHERE Hotel_names= "HotelFive";
UPDATE hotel_detail_information SET hotel_id = 6 WHERE Hotel_names= "HotelSix";
UPDATE hotel_detail_information SET hotel_id = 7 WHERE Hotel_names= "HotelSeven";
UPDATE hotel_detail_information SET hotel_id = 8 WHERE Hotel_names= "HotelEight";
UPDATE hotel_detail_information SET hotel_id = 9 WHERE Hotel_names= "HotelNine";
UPDATE hotel_detail_information SET hotel_id = 10 WHERE Hotel_names= "HotelTen";
UPDATE hotel_detail_information SET hotel_id = 11 WHERE Hotel_names= "HotelEleven";
UPDATE hotel_detail_information SET hotel_id = 12 WHERE Hotel_names= "HotelTwelve";

UPDATE booking SET hotel_id = 1 WHERE Reservation_Id= 104;
UPDATE booking SET hotel_id = 2 WHERE Reservation_Id= 105;
UPDATE booking SET hotel_id = 3 WHERE Reservation_Id= 106;
UPDATE booking SET hotel_id = 4 WHERE Reservation_Id= 107;
UPDATE booking SET hotel_id = 5 WHERE Reservation_Id= 108;
UPDATE booking SET hotel_id = 6 WHERE Reservation_Id= 109;
UPDATE booking SET hotel_id = 7 WHERE Reservation_Id= 110;
UPDATE booking SET hotel_id = 7 WHERE Reservation_Id= 111;
UPDATE booking SET hotel_id = 9 WHERE Reservation_Id= 112;
UPDATE booking SET hotel_id = 10 WHERE Reservation_Id= 113;
UPDATE booking SET hotel_id = 11 WHERE Reservation_Id= 114;
UPDATE booking SET hotel_id = 12 WHERE Reservation_Id= 115;
UPDATE booking SET hotel_id = 13 WHERE Reservation_Id= 116;


select booking.Hotel_id,Hotel_names,Cities,Rating,Floors,Status_Code 
from hotel_detail_information inner join booking on booking.Hotel_id=hotel_detail_information.Hotel_id


 
 
 