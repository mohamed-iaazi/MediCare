create  database doctordb;
        use doctordb ;
create  table  User (
                        id int  primary key auto_increment ,
                        username varchar(200) unique ,
                        email  varchar(200) unique,
                        password  varchar (200),
                        numberPhone varchar(250) unique
                        role ENUM ( "Doctor" , "Patient")


);

create  table  Docotr (
                          DoctorId int primary key auto_increment,

                          id int    ,
                          specialisation varchar(250),
                          foreign key (id) references user(id)

);

create  table  Patient (
                           PatientId int primary key auto_increment,
                           id int ,
                           specialisation varchar(250),
                           foreign key (id) references user(id)

);