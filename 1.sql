CREATE  TABLE  student  (
     sno  int  PRIMARY  KEY,
     sname  VARCHAR(20)  NOT  NULL,
      age  INT  CHECK  (age  >=  20  OR  age  IS  NULL),
     sex  CHAR(2)  CHECK  (sex  IN  ('男',  '女')),
     dept  INT
);


CREATE TABLE  course (
    cno INT  PRIMARY KEY,
    cname VARCHAR(10) NOT NULL,
    credit FLOAT ,
    teacher varchar(10),
    pcno  INT ,
    FOREIGN KEY (pcno) REFERENCES course(cno)
	 );

CREATE TABLE sc(
    sno INT,
    cno INT,
    score INT CHECK (score >= 0 AND score <= 100),
    PRIMARY KEY (sno,cno),
    FOREIGN  KEY (sno) REFERENCES student(sno),
    FOREIGN  KEY (cno) REFERENCES course(cno)    
	);	 

ALTER TABLE student ADD entrance DATE;	
ALTER TABLE student alter COLUMN dept type INT;
ALTER TABLE student modify dept INT;
ALTER TABLE student ADD CONSTRAINT unique_sname UNIQUE (sname);
DROP TABLE course;
DROP TABLE sc;
/*存在外键约束，禁用外键约束*/
SET FOREIGN_key_checks = 0;	
schoolDROP TABLE course;
SET FOREIGN_key_checks = 1;
	
	
	
