create database ss2;
use ss2;
CREATE TABLE class (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(20)
);

CREATE TABLE jame (
    `account` VARCHAR(50) PRIMARY KEY,
    `password` VARCHAR(50)
);
CREATE TABLE student (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50),
    birthday DATE NOT NULL,
    gender BOOLEAN,
    email VARCHAR(50),
    `point` FLOAT,
    class_id INT,
    `account` VARCHAR(50) UNIQUE,
    FOREIGN KEY (class_id)
        REFERENCES class (id),
    FOREIGN KEY (`account`)
        REFERENCES jame (`account`)
);

CREATE TABLE instructor (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50),
    birthday DATE,
    salary DOUBLE
);

CREATE TABLE instructor_class (
    class_id INT,
    instructor_id INT,
    PRIMARY KEY (class_id , instructor_id),
    FOREIGN KEY (class_id)
        REFERENCES class (id),
    FOREIGN KEY (instructor_id)
        REFERENCES instructor (id)
);

insert into class (name) values ('c1121g1'), ('c1221g1'),('a0821i1'),('a0921i1');

insert into jame(`account`,`password`)
 values('cunn','12345'),('chunglh','12345'),('hoanhh','12345'),('dungd','12345'),('huynhtd','12345'),
 ('hainm','12345'),('namtv','12345'),('hieuvm','12345'),('kynx','12345'),('vulm','12345');

insert into jame(`account`,`password`)
 values('anv','12345'),('bnv','12345');

 
insert into instructor(`name`,birthday, salary)
 values('tran van chanh','1985-02-03',100),('tran minh chien','1985-02-03',200),('vu thanh tien','1985-02-03',300);
insert into instructor(`name`,birthday, salary)
 values('tran van nam','1989-12-12',100);

 
 insert into student(`name`,birthday, gender,`point`, class_id,`account`) 
 values ('nguyen ngoc cu','1981-12-12',1,8,1,'cunn'),('le hai chung','1981-12-12',1,5,1,'chunglh'),
 ('hoang huu hoan','1990-12-12',1,6,2,'hoanhh'),('dau dung','1987-12-12',1,8,1,'dungd'),
 ('ta dinh huynh','1981-12-12',1,7,2,'huynhtd'),('nguyen minh hai','1987-12-12',1,9,1,'hainm'),
 ('tran van nam','1989-12-12',1,4,2,'namtv'),('vo minh hieu','1981-12-12',1,3,1,'hieuvm'),
 ('le xuan ky','1981-12-12',1,7,2,'kynx'),('le minh vu','1981-12-12',1,7,1,'vulm');

 insert into student(`name`,birthday, gender,`point`, class_id,`account`) 
 values ('nguyen van a','1981-12-12',1,8,null,'anv'),('tran van b','1981-12-12',1,5,null,'bnv');

 insert into instructor_class(class_id,instructor_id) values (1,1),(1,2),(2,1),(2,2),(3,1),(3,2);

select * from ss2.student ;
select * from ss2.student 
join class on class_id=class.class_id;
