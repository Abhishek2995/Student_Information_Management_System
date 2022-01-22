/*----------------------------Signup Database---------------------*/
create table my_sims(
first_name varchar2(30),
last_name varchar2(30),
email varchar2(50),
password varchar2(40),
confirm_password varchar2(40)
);

insert into my_sims values('abhi','verma','vermaabhi2995@gmail.com','123','123');

commit;

/*----------------------------Student Database---------------------*/

create table sims_stuReg(
first_name varchar2(30),
middle_name varchar2(30),
last_name varchar2(30),
courses varchar2(20),
gender varchar2(15),
dob date,
contact number(15),
email varchar2(30),
address1 varchar2(50),
address2 varchar2(50)
);

INSERT INTO sims_stuReg VALUES ('abhishek','kumar','verma','mca','male','07-MAY-21',8349040942,'av@gmail.com','L.I.G 32','raipur');
INSERT INTO sims_stuReg VALUES ('Harsh','pratap','singh','mca','male','09-jun-95',7894546542,'hps@gmail.com','varanashi','raipur');
INSERT INTO sims_stuReg VALUES ('Ananya','','banushali','mba','female','10-MAR-21',7894561235,'ananya@gmail.com','Lacknow','raipur');
INSERT INTO sims_stuReg VALUES ('Rasmi','Ranjan','Bhera','M-Tech','female','03-APR-96',8347894561,'rasmi@gmail.com','oddisha','raipur');
INSERT INTO sims_stuReg VALUES ('vikil','','ganju','M-Arch','male','02-JUL-97',7398794561,'vikil@gmail.com','Goa','raipur');
INSERT INTO sims_stuReg VALUES ('Allu','','Arjun','MBA','male','03-NOV-96',8347321561,'allu@gmail.com','keral','raipur');
INSERT INTO sims_stuReg VALUES ('John','will','Smith','B-Tech','male','03-DEC-95',6365494561,'smith@gmail.com','London','raipur');

commit;

/*----------------------------Faculty Database---------------------*/

create table sims_facReg(
fname varchar2(30),
mname varchar2(30),
lname varchar2(30),
department varchar2(20),
gender varchar2(15),
dob date,
contact number(15),
email varchar2(30),
address1 varchar2(50),
address2 varchar2(50)
);

INSERT INTO sims_facReg VALUES ('Mr.','Shyam','Sundar','MCA','male','08-JAN-85',8794563245,'ss@gmail.com','Blaspur','Raipur');
INSERT INTO sims_facReg VALUES ('Miss','Soniya','sharma','M-Arch','female','03-FEB-89',7894561235,'soniya@gmail.com','Raipur','Raipur');
INSERT INTO sims_facReg VALUES ('Miss','Pooja','Yadav','M-Tech','female','03-JAN-90',987564235,'pooja12@gmail.com','Lacknow','Raipur');
INSERT INTO sims_facReg VALUES ('Ayush','Ku.','Kuswaha','B-Tech','male','10-MAR-91',7889655466,'AK@gmail.com','Mumbai','Raipur');
INSERT INTO sims_facReg VALUES ('Dr.','Ashwani','Kumar','MCA','male','11-JUL-80',7398794561,'Ashwani@gmail.com','Mumbai','raipur');
INSERT INTO sims_facReg VALUES ('Prof.','Vivak','Verma','MBA','male','15-JAN-82',8347321561,'vivak@gmail.com','A.P.','Raipur');
INSERT INTO sims_facReg VALUES ('Dr.','Josaf','wilson','B-Tech','male','06-DEC-85',6365494561,'josaf@gmail.com','London','Raipur');

commit;


/*----------------------------Payment Database---------------------*/

create table sims_payment(
receipt number(10)primary key,	
name varchar2(30),
fname varchar2(30),
gender varchar2(15),
dob date,
contact number(15),
email varchar2(40),
course varchar2(15),
year varchar2(20),
enroll number(10)
);

create sequence sims_payment_seq start with 1000;

commit;
