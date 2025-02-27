create  database docotrdb;

use doctordb;


    create  table  User (
        id int  primary key auto_increment ,
        username varchar(200),
        email  varchar(200),
        password  varchar (200),
        numberPhone varchar(250)

    )


create  table  Docotr (
                        id int  primary key  ,
                        specialisation varchar(250)

)

create  table  Patient (
                          id int primary key   ,
                          specialisation varchar(250)

)