create  database doctordb;
create  table  User (
                        id int  primary key auto_increment ,
                        username varchar(200),
                        email  varchar(200),
                        password  varchar (200),
                        numberPhone varchar(250)


);

create  table  Docotr (
                          DoctorId int primary key auto_increment,

                          id int    ,
                          specialisation varchar(250)

);

create  table  Patient (
                           PatientId int primary key auto_increment,
                           id int ,
                           specialisation varchar(250),
                           foreign key (id) references user(id)

);