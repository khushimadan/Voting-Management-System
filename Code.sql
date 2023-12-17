--creation of table Party
create table Party(
    Party_id number(10),
    Party_name varchar(25) NOT NULL,
    Party_symbol varchar(10) NOT NULL,
    Party_president varchar(25) NOT NULL,
    PRIMARY KEY(Party_id)
);

--creation of table Polling Station
create table Polling_station(
    Station_id number(10),
    Station_name varchar(25) NOT NULL,
    Building_name varchar(10) NOT NULL,
    Street_name varchar(10) NOT NULL,
    Area_name varchar(10) NOT NULL,
    State_name varchar(10) NOT NULL,
    Primary Key (Station_id)
);

--creation of table Election
create table Election(
    Election_id number(10),
    Start_date date NOT NULL,
    End_date date NOT NULL,
    Post varchar(25) NOT NULL,
    Primary Key(Election_id)
);

--creation of table Candidate
create table Candidate(
    Candidate_id number(10),
    CFirst_name varchar(25) NOT NULL,
    CMiddle_name varchar(25) NOT NULL,
    CLast_name varchar(25) NOT NULL,
    CState_name varchar(25) NOT NULL,
    Party_id number(10) NOT NULL,
    Election_id number(10) NOT NULL,
    PRIMARY KEY(Candidate_id),
    FOREIGN KEY (Party_id) REFERENCES Party(Party_id),
    FOREIGN KEY (Election_id) REFERENCES Election(Election_id) 
);

--creation of table Takes Part In
create table Takes_Part_In(
    Candidate_id number(10) NOT NULL,
    Election_id number(10) NOT NULL,
    
    FOREIGN KEY (Candidate_id) REFERENCES Candidate(Candidate_id),
    FOREIGN KEY (Election_id) REFERENCES Election(Election_id) 
);

--creation of table Voter
create table Voter(
    Voter_id number(10),
    First_name varchar(10) NOT NULL,
    Middle_name varchar(10) NOT NULL,
    Last_name varchar(10) NOT NULL,
    Building_name varchar (10) NOT NULL,
    Street_name varchar(10) NOT NULL,
    Area_name varchar(10) NOT NULL,
    Election_id number(10) NOT NULL,
    Station_id number(10) NOT NULL,
    Candidate_id number(10) NOT NULL,
    Primary Key(Voter_id),
    Foreign Key (Election_id) references Election(Election_id),
    Foreign Key (Station_id) references Polling_station(Station_id),
    Foreign Key (Candidate_id) references Candidate(Candidate_id)
);

--creation of table Votes_In
create table Votes_In(
    Voter_id number(10) NOT NULL,
    Election_id number(10) NOT NULL,
    
    FOREIGN KEY (Voter_id) REFERENCES Voter(Voter_id),
    FOREIGN KEY (Election_id) REFERENCES Election(Election_id) 
);

--creation of table Phone_no
create table Phone_no(
    Voter_id number(10) NOT NULL,
    Phone_no number(10) NOT NULL,
    Primary Key (Phone_no),
    Foreign Key (Voter_id) references Voter(Voter_id)
);

--Insertin of Data in Election Table
INSERT INTO Election( Election_id,Start_date, End_date,Post)
VALUES
(2301,'05/30/2023','06/05/2023','Prime Minister');

--Insertin of Data  in Polling Station Table
INSERT ALL
INTO Polling_station(Station_id,Station_name,Building_name,Street_name,Area_name,State_name)VALUES(1001,'Mumbadevi High School','Mumbadevi High School','Kika Street','Kalbadevi','Maharashtra')
INTO Polling_station(Station_id,Station_name,Building_name,Street_name,Area_name,State_name)VALUES(1002,'Mamabai High School','Mamabai High School','Dr B.A. Road', 'Lalbaug','Maharashtra')
INTO Polling_station(Station_id,Station_name,Building_name,Street_name,Area_name,State_name)VALUES(2001,'Delhi Public School','Delhi Public School', 'Mathura Road','Sundar Nagar','Delhi')
INTO Polling_station(Station_id,Station_name,Building_name,Street_name,Area_name,State_name)VALUES(2002,'Venkateshwar International School','Venkateshwar International School','Sector-10','Dwarka','Delhi')
INTO Polling_station(Station_id,Station_name,Building_name,Street_name,Area_name,State_name)VALUES(3001,'Bal Hindi Vidyalayal','Bal Hindi Vidyalaya','Canal Road','Mahabirtala','West Bengal')
INTO Polling_station(Station_id,Station_name,Building_name,Street_name,Area_name,State_name)VALUES(3002,'Ruby Park Public School','Ruby Park Public School','Transport Depot Rd', 'Alipore','West Bengal')
INTO Polling_station(Station_id,Station_name,Building_name,Street_name,Area_name,State_name)VALUES(4001,'Sishya School','Sishya School', '2nd St','Padmanabha Nagar','Tamil Nadu')
INTO Polling_station(Station_id,Station_name,Building_name,Street_name,Area_name,State_name)VALUES(4002,'St. Johns English School','St. Johns English School','2nd Cross St','Custom Colony','Tamil Nadu')
INTO Polling_station(Station_id,Station_name,Building_name,Street_name,Area_name,State_name)VALUES(5001,'J.H. Ambani Saraswati Vidyamandir','J.H. Ambani Saraswati Vidyamandir','Udhna Magdalla-Road','Magdalla','Gujarat')
INTO Polling_station(Station_id,Station_name,Building_name,Street_name,Area_name,State_name)VALUES(5002,'Prakash School','Prakash School',' Aurobindo Society Rd',' Bodakdev','Gujarat')
SELECT * from DUAl;

--Insertin of Data in Party Table
INSERT ALL 
INTO Party(Party_id,Party_name,Party_symbol,Party_president) VALUES (101,'Bharatiya Janata Party','Lotus','J.P. Nadda')
INTO Party(Party_id,Party_name,Party_symbol,Party_president) VALUES (102,'Bahujan Samaj Party','Elephant','Mayawati')
INTO Party(Party_id,Party_name,Party_symbol,Party_president) VALUES (103,'Aam Aadmi Party','Broom','Arvind Kejriwal')
INTO Party(Party_id,Party_name,Party_symbol,Party_president) VALUES (104,'Indian National Congress','Hand','Mallikarjun Kharge')
INTO Party(Party_id,Party_name,Party_symbol,Party_president) VALUES (105,'National Peoples Party','Book','Conrad Sangma')
SELECT * FROM DUAL;

--Insertin of Data in Candidate Table
INSERT ALL 
INTO Candidate(Candidate_id,CFirst_name,CLast_name,CState_name,Party_id,Election_id) VALUES (23901,'Ananya','Aggarwal','Tamil Nadu','101','2301')
INTO Candidate(Candidate_id,CFirst_name,CMiddle_name,CLast_name,CState_name,Party_id,Election_id) VALUES (23902,'Pankaj','Kumar','Arora','Tamil Nadu','102','2301')
INTO Candidate(Candidate_id,CFirst_name,CMiddle_name,CLast_name,CState_name,Party_id,Election_id) VALUES (23903,'Shubham','P.','Sharma','Tamil Nadu','103','2301')
INTO Candidate(Candidate_id,CFirst_name,CLast_name,CState_name,Party_id,Election_id) VALUES (23904,'Bharti','Bhatt','Tamil Nadu','104','2301')
INTO Candidate(Candidate_id,CFirst_name,CLast_name,CState_name,Party_id,Election_id) VALUES (23905,'Ashok','Patel','Tamil Nadu','105','2301')
INTO Candidate(Candidate_id,CFirst_name,CMiddle_name,CLast_name,CState_name,Party_id,Election_id) VALUES (23906,'Harsh','S.','Mehta','Delhi','101','2301')
INTO Candidate(Candidate_id,CFirst_name,CLast_name,CState_name,Party_id,Election_id) VALUES (23907,'Tara','Tripathi','Delhi','102','2301')
INTO Candidate(Candidate_id,CFirst_name,CLast_name,CState_name,Party_id,Election_id) VALUES (23908,'Kaushal','Shah','Delhi','103','2301')
INTO Candidate(Candidate_id,CFirst_name,CLast_name,CState_name,Party_id,Election_id) VALUES (23909,'Virat','Modi','Delhi','104','2301')
INTO Candidate(Candidate_id,CFirst_name,CLast_name,CState_name,Party_id,Election_id) VALUES (23910,'Kriti','Saxena','Delhi','105','2301')
INTO Candidate(Candidate_id,CFirst_name,CMiddle_name,CLast_name,CState_name,Party_id,Election_id) VALUES (23911,'P.','Anmol','Dua','Maharashtra','101','2301')
INTO Candidate(Candidate_id,CFirst_name,CMiddle_name,CLast_name,CState_name,Party_id,Election_id) VALUES (23912,'Preeti','S.','Arora','Maharashtra','102','2301')
INTO Candidate(Candidate_id,CFirst_name,CLast_name,CState_name,Party_id,Election_id) VALUES (23913,'Shreyansh','Goyal','Maharashtra','103','2301')
INTO Candidate(Candidate_id,CFirst_name,CLast_name,CState_name,Party_id,Election_id) VALUES (23914,'Aastha','Sharma','Maharashtra','104','2301')
INTO Candidate(Candidate_id,CFirst_name,CLast_name,CState_name,Party_id,Election_id) VALUES (23915,'Venkatesh','Shankar','Maharashtra','105','2301')
INTO Candidate(Candidate_id,CFirst_name,CMiddle_name,CLast_name,CState_name,Party_id,Election_id) VALUES (23916,'Abhinav','K.','Kapoor','Gujarat','101','2301')
INTO Candidate(Candidate_id,CFirst_name,CLast_name,CState_name,Party_id,Election_id) VALUES (23917,'Priya','Jain','Gujarat','102','2301')
INTO Candidate(Candidate_id,CFirst_name,CLast_name,CState_name,Party_id,Election_id) VALUES (23918,'Shreshth','Sharma','Gujarat','103','2301')
INTO Candidate(Candidate_id,CFirst_name,CLast_name,CState_name,Party_id,Election_id) VALUES (23919,'Ram','Kukreja','Gujarat','104','2301')
INTO Candidate(Candidate_id,CFirst_name,CLast_name,CState_name,Party_id,Election_id) VALUES (23920,'Khushi','Ahuja','Gujarat','105','2301')
INTO Candidate(Candidate_id,CFirst_name,CLast_name,CState_name,Party_id,Election_id) VALUES (23921,'Rahul','Chaudhary','West Bengal','101','2301')
INTO Candidate(Candidate_id,CFirst_name,CMiddle_name,CLast_name,CState_name,Party_id,Election_id) VALUES (23922,'Karan','M.','Singh','West Bengal','102','2301')
INTO Candidate(Candidate_id,CFirst_name,CLast_name,CState_name,Party_id,Election_id) VALUES (23923,'Diya','Mahajan','West Bengal','103','2301')
INTO Candidate(Candidate_id,CFirst_name,CLast_name,CState_name,Party_id,Election_id) VALUES (23924,'Sarthak','Narwal','West Bengal','104','2301')
INTO Candidate(Candidate_id,CFirst_name,CLast_name,CState_name,Party_id,Election_id) VALUES (23925,'Maanav','Juneja','West Bengal','105','2301')
SELECT * FROM DUAL;

--Insertin of Data in Takes Part In  Table
INSERT ALL
INTO Takes_part_in(Candidate_id,Election_id) VALUES (23901,2301)
INTO Takes_part_in(Candidate_id,Election_id) VALUES (23902,2301)
INTO Takes_part_in(Candidate_id,Election_id) VALUES (23903,2301)
INTO Takes_part_in(Candidate_id,Election_id) VALUES (23904,2301)
INTO Takes_part_in(Candidate_id,Election_id) VALUES (23905,2301)
INTO Takes_part_in(Candidate_id,Election_id) VALUES (23906,2301)
INTO Takes_part_in(Candidate_id,Election_id) VALUES (23907,2301)
INTO Takes_part_in(Candidate_id,Election_id) VALUES (23908,2301)
INTO Takes_part_in(Candidate_id,Election_id) VALUES (23909,2301)
INTO Takes_part_in(Candidate_id,Election_id) VALUES (23910,2301)
INTO Takes_part_in(Candidate_id,Election_id) VALUES (23911,2301)
INTO Takes_part_in(Candidate_id,Election_id) VALUES (23912,2301)
INTO Takes_part_in(Candidate_id,Election_id) VALUES (23913,2301)
INTO Takes_part_in(Candidate_id,Election_id) VALUES (23914,2301)
INTO Takes_part_in(Candidate_id,Election_id) VALUES (23915,2301)
INTO Takes_part_in(Candidate_id,Election_id) VALUES (23916,2301)
INTO Takes_part_in(Candidate_id,Election_id) VALUES (23917,2301)
INTO Takes_part_in(Candidate_id,Election_id) VALUES (23918,2301)
INTO Takes_part_in(Candidate_id,Election_id) VALUES (23919,2301)
INTO Takes_part_in(Candidate_id,Election_id) VALUES (23920,2301)
INTO Takes_part_in(Candidate_id,Election_id) VALUES (23921,2301)
INTO Takes_part_in(Candidate_id,Election_id) VALUES (23922,2301)
INTO Takes_part_in(Candidate_id,Election_id) VALUES (23923,2301)
INTO Takes_part_in(Candidate_id,Election_id) VALUES (23924,2301)
INTO Takes_part_in(Candidate_id,Election_id) VALUES (23925,2301)
SELECT * FROM DUAL;

--Insertin of Data in Voter Table
INSERT ALL
INTO Voter(Voter_id,First_name,Middle_name,Last_name,Building_name,Street_name,Area_name,Election_id,Station_id,Candidate_id) VALUES(12345678,'Aarav','K.','Patel','Meru Tower','Kika Stret','Kalbadevi',2301,1001,23911)                                                                   
INTO Voter(Voter_id,First_name,Middle_name,Last_name,Building_name,Street_name,Area_name,Election_id,Station_id,Candidate_id) VALUES(54321098,'Aisha','Prakash','Sharma','Godiji','Gulalwadi','Kalbadevi',2301,1001,23913)
INTO Voter(Voter_id,First_name,Middle_name,Last_name,Building_name,Street_name,Area_name,Election_id,Station_id,Candidate_id) VALUES(34567890,'Ishita','Bhatt','Sharma','Sundarone','Nal Bazzar','Kalbadevi',2301,1001,23915)
INTO Voter(Voter_id,First_name,Middle_name,Last_name,Building_name,Street_name,Area_name,Election_id,Station_id,Candidate_id) VALUES(98765432,'Mira','Ayush','Mittal','Lodha Residency','Tank Road','Lalbuag',2301,1002,23911)
INTO Voter(Voter_id,First_name,Last_name,Building_name,Street_name,Area_name,Election_id,Station_id,Candidate_id) VALUES(56789012,'Ramesh','Jain','Venezuala','Tank Road','Lalbaug',2301,1002,23913)
INTO Voter(Voter_id,First_name,Last_name,Building_name,Street_name,Area_name,Election_id,Station_id,Candidate_id) VALUES(87654321,'Rani','Shah','Venezuala','Tank Road','Lalbaug',2301,1002,23913)
INTO Voter(Voter_id,First_name,Middle_name,Last_name,Building_name,Street_name,Area_name,Election_id,Station_id,Candidate_id) VALUES(23456789,'Sunil','R.','Shah','Shah Bhavan','54th Street','Sundar Nagar',2301,2001,23906)
INTO Voter(Voter_id,First_name,Middle_name,Last_name,Building_name,Street_name,Area_name,Election_id,Station_id,Candidate_id) VALUES(76543210,'Tanisha','Sunil','Shah','Shah Bhavan','54th Street','Sundar Nagar',2301,2001,23906)
INTO Voter(Voter_id,First_name,Middle_name,Last_name,Building_name,Street_name,Area_name,Election_id,Station_id,Candidate_id) VALUES(43219876,'Suman','Singh','Randhawa','Shivam Apartments','Sector 12','Sundar Nagar',2301,2001,23904)
INTO Voter(Voter_id,First_name,Middle_name,Last_name,Building_name,Street_name,Area_name,Election_id,Station_id,Candidate_id) VALUES(87651234,'Siddharth','Kumar','Sharma','Sundarone Apartments','Jail Road','Dwarka',2301,2002,23908)
INTO Voter(Voter_id,First_name,Last_name,Building_name,Street_name,Area_name,Election_id,Station_id,Candidate_id) VALUES(98701234,'Sneha','Chaudhary','Mayur Apartments','J.K Road','Dwarka',2301,2002,23907)
INTO Voter(Voter_id,First_name,Last_name,Building_name,Street_name,Area_name,Election_id,Station_id,Candidate_id) VALUES(45678901,'Rani','Chatterjee','Shree Ram Apartments','Venkatesh Road','Dwarka',2301,2002,23910)
INTO Voter(Voter_id,First_name,Middle_name,Last_name,Building_name,Street_name,Area_name,Election_id,Station_id,Candidate_id) VALUES(54327890,'Neha','Singh','Kapoor','Kailash Apartments','Arthur Road','Mahabirtla',2301,3001,23921)
INTO Voter(Voter_id,First_name,Middle_name,Last_name,Building_name,Street_name,Area_name,Election_id,Station_id,Candidate_id) VALUES(65430987,'Uday','S.','Rathore','Rathore Haveli','Cotton Green','Mahabirtla',2301,3001,23923)
INTO Voter(Voter_id,First_name,Last_name,Building_name,Street_name,Area_name,Election_id,Station_id,Candidate_id) VALUES(23016789,'Vidya','Mukherjee','Rathore Haveli','Cotton Green','Mahabirtla',2301,3001,23921)
INTO Voter(Voter_id,First_name,Middle_name,Last_name,Building_name,Street_name,Area_name,Election_id,Station_id,Candidate_id) VALUES(76543219,'Kavita','K.','Pabreja','Park Green','Gandhi Road','Alipore',2301,3002,23922)
INTO Voter(Voter_id,First_name,Middle_name,Last_name,Building_name,Street_name,Area_name,Election_id,Station_id,Candidate_id) VALUES(12489076,'Vikram','Pratap','Singh','Mannat Haveli','67th Street','Alipore',2301,3002,23925)
INTO Voter(Voter_id,First_name,Last_name,Building_name,Street_name,Area_name,Election_id,Station_id,Candidate_id) VALUES(89012345,'Nakul','Preet','Sunshine Apartments','B.R Road','Alipore',2301,3002,23921)
INTO Voter(Voter_id,First_name,Middle_name,Last_name,Building_name,Street_name,Area_name,Election_id,Station_id,Candidate_id) VALUES(65432109,'Zara','Abdul','Ahmed','Hanuman Apartments','Ahmed Road','Padmanabha Nagar',2301,4001,23905)
INTO Voter(Voter_id,First_name,Middle_name,Last_name,Building_name,Street_name,Area_name,Election_id,Station_id,Candidate_id) VALUES(98763421,'Kabir','S.','Bhandari','Royal Greens','Sheh Road','Padmanabha Nagar',2301,4001,23901)
INTO Voter(Voter_id,First_name,Middle_name,Last_name,Building_name,Street_name,Area_name,Election_id,Station_id,Candidate_id) VALUES(10987654,'Lakshmi','Prasad','Sharma','Rohit Apartments','Lajpat Road','Padmanabha Nagar',2301,4001,23902)
INTO Voter(Voter_id,First_name,Middle_name,Last_name,Building_name,Street_name,Area_name,Election_id,Station_id,Candidate_id) VALUES(54320176,'Jaya','Shree','Banerjee','Ajnara Daffodil','G.K Road','Custom Colony',2301,4002,23903)
INTO Voter(Voter_id,First_name,Last_name,Building_name,Street_name,Area_name,Election_id,Station_id,Candidate_id) VALUES(65478932,'Gaurav','Kapoor','Suryavanshi Apartments','Kaala Chawki','Custom Colony',2301,4002,23901)
INTO Voter(Voter_id,First_name,Middle_name,Last_name,Building_name,Street_name,Area_name,Election_id,Station_id,Candidate_id) VALUES(87654398,'Akshay','S.','Kumar','Muthaliya Residency','8th Street','Cutsom Colony',2301,4002,23904)
INTO Voter(Voter_id,First_name,Last_name,Building_name,Street_name,Area_name,Election_id,Station_id,Candidate_id) VALUES(12345670,'Devika','Kumar','Jyoti Apartments','Deepak Road','Magdalla',2301,5001,239017)
INTO Voter(Voter_id,First_name,Middle_name,Last_name,Building_name,Street_name,Area_name,Election_id,Station_id,Candidate_id) VALUES(89012346,'Arjun','P.','Reddy','Madhuban Apartments','Ambedkar Road','Magdalla',2301,5001,23917)
INTO Voter(Voter_id,First_name,Middle_name,Last_name,Building_name,Street_name,Area_name,Election_id,Station_id,Candidate_id) VALUES(98765431,'Bhavna','A.','Reddy','Madhuban Apartments','Ambedkar Road','Magdalla',2301,5001,23918)
INTO Voter(Voter_id,First_name,Middle_name,Last_name,Building_name,Street_name,Area_name,Election_id,Station_id,Candidate_id) VALUES(23456789,'Zara','M.','Sethi','Raj Apartments','Arya Road','Bodakdev',2301,5002,23919)
INTO Voter(Voter_id,First_name,Middle_name,Last_name,Building_name,Street_name,Area_name,Election_id,Station_id,Candidate_id) VALUES(43219876,'Devika','S.','Kukreja','Palm Greens','Arya Road','Bodakdev',2301,5002,23916)
INTO Voter(Voter_id,First_name,Middle_name,Last_name,Building_name,Street_name,Area_name,Election_id,Station_id,Candidate_id) VALUES(56780912,'Anika','K.','Shukla','Ratnam Gardenbay','Prit Road','Bodakdev',2301,5002,23920)
SELECT * FROM DUAL;

--Insertin of Data in Votes In Table
INSERT ALL
INTO Votes_in(Election_id,Voter_id) VALUES (2301,10987654)
INTO Votes_in(Election_id,Voter_id) VALUES (2301,12345670)
INTO Votes_in(Election_id,Voter_id) VALUES (2301,12345678)
INTO Votes_in(Election_id,Voter_id) VALUES (2301,12489076)
INTO Votes_in(Election_id,Voter_id) VALUES (2301,20056789)
INTO Votes_in(Election_id,Voter_id) VALUES (2301,23016789)
INTO Votes_in(Election_id,Voter_id) VALUES (2301,23456789)
INTO Votes_in(Election_id,Voter_id) VALUES (2301,34567890)
INTO Votes_in(Election_id,Voter_id) VALUES (2301,40019876)
INTO Votes_in(Election_id,Voter_id) VALUES (2301,43219876)
INTO Votes_in(Election_id,Voter_id) VALUES (2301,45678901)
INTO Votes_in(Election_id,Voter_id) VALUES (2301,54320176)
INTO Votes_in(Election_id,Voter_id) VALUES (2301,54321098)
INTO Votes_in(Election_id,Voter_id) VALUES (2301,54327890)
INTO Votes_in(Election_id,Voter_id) VALUES (2301,56780012)
INTO Votes_in(Election_id,Voter_id) VALUES (2301,56789012)
INTO Votes_in(Election_id,Voter_id) VALUES (2301,65430987)
INTO Votes_in(Election_id,Voter_id) VALUES (2301,65432109)
INTO Votes_in(Election_id,Voter_id) VALUES (2301,65478932)
INTO Votes_in(Election_id,Voter_id) VALUES (2301,76543210)
INTO Votes_in(Election_id,Voter_id) VALUES (2301,76543219)
INTO Votes_in(Election_id,Voter_id) VALUES (2301,87651234)
INTO Votes_in(Election_id,Voter_id) VALUES (2301,87654321)
INTO Votes_in(Election_id,Voter_id) VALUES (2301,87654398)
INTO Votes_in(Election_id,Voter_id) VALUES (2301,89010046)
INTO Votes_in(Election_id,Voter_id) VALUES (2301,89012345)
INTO Votes_in(Election_id,Voter_id) VALUES (2301,98700431)
INTO Votes_in(Election_id,Voter_id) VALUES (2301,98701234)
INTO Votes_in(Election_id,Voter_id) VALUES (2301,98763421)
INTO Votes_in(Election_id,Voter_id) VALUES (2301,98765432)
select * from dual;

--Insertin of Data in Phone No Table
INSERT ALL
INTO Phone_no(Voter_id,Phone_no) VALUES (10987654,9154321987)
INTO Phone_no(Voter_id,Phone_no) VALUES (10987654,8457390126)
INTO Phone_no(Voter_id,Phone_no) VALUES (12345670,7038569241)
INTO Phone_no(Voter_id,Phone_no) VALUES (12345678,9124675308)
INTO Phone_no(Voter_id,Phone_no) VALUES (12345678,8275619340)
INTO Phone_no(Voter_id,Phone_no) VALUES (12489076,7982451630)
INTO Phone_no(Voter_id,Phone_no) VALUES (20056789,8642975130)
INTO Phone_no(Voter_id,Phone_no) VALUES (20056789,7139804256)
INTO Phone_no(Voter_id,Phone_no) VALUES (23016789,8956347201)
INTO Phone_no(Voter_id,Phone_no) VALUES (23456789,7926843105)
INTO Phone_no(Voter_id,Phone_no) VALUES (34567890,8392051467)
INTO Phone_no(Voter_id,Phone_no) VALUES (34567890,7842103965)
INTO Phone_no(Voter_id,Phone_no) VALUES (40019876,8675201349)
INTO Phone_no(Voter_id,Phone_no) VALUES (43219876,9301874265)
INTO Phone_no(Voter_id,Phone_no) VALUES (45678901,7123645980)
INTO Phone_no(Voter_id,Phone_no) VALUES (45678901,8942736105)
INTO Phone_no(Voter_id,Phone_no) VALUES (54320176,8095631247)
INTO Phone_no(Voter_id,Phone_no) VALUES (54320176,7293854160)
INTO Phone_no(Voter_id,Phone_no) VALUES (54321098,8472501369)
INTO Phone_no(Voter_id,Phone_no) VALUES (54327890,7859632140)
INTO Phone_no(Voter_id,Phone_no) VALUES (56780012,9064721385)
INTO Phone_no(Voter_id,Phone_no) VALUES (56789012,8317462059)
INTO Phone_no(Voter_id,Phone_no) VALUES (65430987,7923654180)
INTO Phone_no(Voter_id,Phone_no) VALUES (65432109,8640132975)
INTO Phone_no(Voter_id,Phone_no) VALUES (65478932,7089245163)
INTO Phone_no(Voter_id,Phone_no) VALUES (76543210,9278436105)
INTO Phone_no(Voter_id,Phone_no) VALUES (76543210,8736142059)
INTO Phone_no(Voter_id,Phone_no) VALUES (76543219,8462597013)
INTO Phone_no(Voter_id,Phone_no) VALUES (87651234,7031894562)
INTO Phone_no(Voter_id,Phone_no) VALUES (87651234,9184270653)
INTO Phone_no(Voter_id,Phone_no) VALUES (87654321,7524098631)
INTO Phone_no(Voter_id,Phone_no) VALUES (87654398,8063491275)
INTO Phone_no(Voter_id,Phone_no) VALUES (89010046,7942310865)
INTO Phone_no(Voter_id,Phone_no) VALUES (89010046,8756392104)
INTO Phone_no(Voter_id,Phone_no) VALUES (89012345,9073461852)
INTO Phone_no(Voter_id,Phone_no) VALUES (98700431,8492137605)
INTO Phone_no(Voter_id,Phone_no) VALUES (98701234,7236840159)
INTO Phone_no(Voter_id,Phone_no) VALUES (98763421,9260134875)
INTO Phone_no(Voter_id,Phone_no) VALUES (98763421,7965813420)
INTO Phone_no(Voter_id,Phone_no) VALUES (98765432,8356791240)
SELECT * from DUAL;

SELECT p.party_name, COUNT(v.voter_id) as vote_count
FROM voter v
JOIN candidate c ON v.candidate_id = c.candidate_id
JOIN party p ON c.party_id = p.party_id
GROUP BY p.party_name
ORDER BY vote_count DESC;

select Voter_id ,First_name,Middle_name,Last_name from Voter where First_name LIKE  'S%';

select count(voter_id) from Voter;

select candidate_id,count(voter_id) from Voter group by candidate_id;

select * from Candidate where party_id=101;

UPDATE Polling_station SET Street_name='G.B Road' where Station_ID=2001;

Update Phone_no SET Phone_no=9560461235 where Voter_id=12345670;

DELETE FROM Voter where Voter_id=12300078;        
                                                        
DELETE FROM Phone_no where Voter_id=10987654;   

/* DROP TABLE Voter;
DROP TABLE Phone_no;
DROP TABLE Candidate;
DROP TABLE Polling_Station;
DROP TABLE Party;
DROP TABLE Election;
DROP TABLE Takes_part_in;
DROP TABLE Votes_in; */
