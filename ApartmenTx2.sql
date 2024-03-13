SELECT * FROM ApartmenTX.`Student Employee`;

create table House(
hId int,
HouseName varchar(45),
HouseAddress varchar(45),
primary key (hId)
);

create table Rental(
hId int,
RoomNo int,
sId int,
StartDate varchar(45),
expectedEndDate varchar(45),
endDate varchar(45),
sEID varchar(45),
primary key (hId, sId, RoomNo, expectedEndDate, sEID),
foreign key (RoomNo) references Room(RoomNo),
(hId) references Room(hId)
(sId) references Student(sId)
(sEID) references StudentEmployee(sId)
);

create table Room(
hId int,
RoomNo int,
Floor int,
Size varchar(45),
primary key (hId, RoomNo)
);

create table Staff(
StaffId int,
Staffname varchar(45),
StaffphoNo varchar(45),
primary key (StaffId)
);

create table Student(
StudentName varchar(45),
sId int,
StudentAddress varchar(45),
primary key (sId)
);

create table StudentEmployee(
sId int,
StudentSalary int,
stfId int,
primary key (sId),
foreign key (sId) references Student(sId), 
(sftId) references Staff(sftId),
);

# insert some houses
insert into House
values 	(166, 'The West Hills Apartment', '149 Col Etheredge Blvd, Huntsville, TX 77340 '),
		(220, 'The Brazos Apartment', '1440 Brazos Dr, Huntsville, TX 77320'),
        (221, 'Heritage Estates', '1932 American Legion Dr, Huntsville, TX 77320'),
        (378, 'PaperMoon Apartments', '2424 Montgomery Rd, Huntsville, TX 77340'),
        (392, 'The Republic', '1300 Smither Dr, Huntsville, TX 77340'),
        (565, 'Forest Gate Apartments', '196 Interstate 45 N, Huntsville, TX 77320'),
        (602, 'Hillside Apartments', '1420 14th St, Huntsville, TX 77340'),
        (661, 'Santa Fe Trails', '2452 Lake Rd, Huntsville, TX 77340'),
        (735, 'The Connection', '2537 Pine Shadows Dr, Huntsville, TX 77320'),
        (909, 'The Oaks Apartment', '700 Hickory Dr, Huntsville, TX 77320');
        
# insert some rooms
insert into Room
values (221, 213, 2, '1 bedroom; 1 bathroom'),
(378, 225, 2, '1 bedroom; 1 bathroom'),
(392, 206, 2, '2 bedroom; 2 bathroom'),
(565, 107, 1, '1 bedroom; 1 bathroom'),
(602, 205, 2, '2 bedroom; 1 bathroom'),
(735, 101, 1, '2 bedroom; 2 bathroom'),
(909, 116, 1, '1 bedroom; 1 bathroom');

#insert rentals 
insert into Rental
values (221, 213, 1116, 'Jan 16, 2022', 'Jan 17, 2023', 'Mar 6, 2023'),
(378, 225, 1111, 'Jan 16, 2022', 'Jan 17, 2023', 'Jan 17, 2023'),
(392, 206, 1115, 'Jan 16, 2022', 'Jan 17, 2023', 'Jun 7, 2024', 0835),
(565, 107, 1114, 'Jan 16, 2022', 'Jan 17, 2023', 'Jan 17, 2023'),
(602, 205, 1117, 'Jan 16, 2022', 'Jan 17, 2023', 'Jan 17, 2023'),
(735, 101, 1116, 'Jan 16, 2022', 'Jan 17, 2023', 'Feb 12, 2023'),
(909, 116, 1113, 'Jan 16, 2022', 'Jan 17, 2023', 'Apr 17, 2023', 0435);

#insert staffing
insert into Staff
values(1004, 'Eric Williams', 945-269-3300),
(1789, 'Will Tyler', 457-880-2396);

#insert Studets
insert into Student
values('Yeh-Lun Lee', 1111, '403 Meadow Ln'),
('Carlos Garcia', 1112, '807 Canary Rd'),
('Parichit Karki', 1113, '908 Roush Dr'),
('Avery Millican-Bowers', 1114, '635 Nickson Dr'),
('Niranjan Bhattarai', 1115, '404 Shiner Rd'),
('Kshitiz Subba', 1116, '106 Ave N'),
('Rohan Udas', 1117, '701 Thomas St');

#insert Student Employees
insert into StudentEmployee
values (1113, 20000, 1789),
(1115, 23000, 1004);


