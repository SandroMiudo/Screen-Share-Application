drop table if exists User_Friend_Data;
drop table if exists User_Data;
drop table if exists Room_User_Data;
drop table if exists Message_Data;
drop table if exists Room_Invite_Data;
drop table if exists Room_Data;

create table Room_Data(
    roomID varchar(36) not null primary key,
    adminID varchar(36) not null,
    roomSize int,
    roomName varchar(15) not null
);

create table Room_User_Data(
    id int auto_increment primary key,
    userID varchar(36) not null,
    roomNAME varchar(30) not null,
    roomID varchar(36) not null,
    foreign key(roomID) references Room_Data(roomID)
);

INSERT INTO Room_Data values ('02185388-afd5-422f-8ea6-3edbaaa72e9c','c139f461-315b-403e-a77b-8fde52f4cefa',4,'scaryroom');
INSERT INTO Room_User_Data (userID, roomNAME,roomID) values ('c139f461-315b-403e-a77b-8fde52f4cefa','sandro','02185388-afd5-422f-8ea6-3edbaaa72e9c')