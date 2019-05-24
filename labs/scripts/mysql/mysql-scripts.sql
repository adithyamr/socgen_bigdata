CREATE SCHEMA sqoop_training;

USE sqoop_training;

CREATE TABLE COUNTRY (
    ID INT AUTO_INCREMENT,
    CODE VARCHAR(3) NOT NULL,
    NAME VARCHAR(30) NOT NULL,
    UPDATE_TIME TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (ID)
);

CREATE TABLE EMPLOYEE (
    ID INT AUTO_INCREMENT,
    NAME VARCHAR(50) NOT NULL,
    AGE INT NOT NULL,
    GENDER CHAR(1),
    SALARY DOUBLE,
    DESIGNATION VARCHAR(50),
    DEPARTMENT VARCHAR(50),
    COUNTRY_ID INT,
    PRIMARY KEY (ID),
    FOREIGN KEY (COUNTRY_ID) REFERENCES COUNTRY(ID)
);

-- INSERT COUNTRY DATA
INSERT INTO COUNTRY (CODE, NAME) VALUES ('IND', 'India');
INSERT INTO COUNTRY (CODE, NAME) VALUES ('USA', 'United States');
INSERT INTO COUNTRY (CODE, NAME) VALUES ('AUS', 'Australia');
INSERT INTO COUNTRY (CODE, NAME) VALUES ('CHN', 'China');

-- INSERT EMPLOYEE DATA
INSERT INTO EMPLOYEE (NAME, AGE, GENDER, SALARY, DESIGNATION, DEPARTMENT, COUNTRY_ID) VALUES('Kumar',25,'M',20000,'Manager','IT',1);
INSERT INTO EMPLOYEE (NAME, AGE, GENDER, SALARY, DESIGNATION, DEPARTMENT, COUNTRY_ID) VALUES('Selvam',28,'M',25000,'Software Engineer','IT',1);
INSERT INTO EMPLOYEE (NAME, AGE, GENDER, SALARY, DESIGNATION, DEPARTMENT, COUNTRY_ID) VALUES('Solvin',29,'M',30000,'Developer','IT',2);
INSERT INTO EMPLOYEE (NAME, AGE, GENDER, SALARY, DESIGNATION, DEPARTMENT, COUNTRY_ID) VALUES('Siddarth',45,'M',50000,'VP','Finance',1);
INSERT INTO EMPLOYEE (NAME, AGE, GENDER, SALARY, DESIGNATION, DEPARTMENT, COUNTRY_ID) VALUES('Mathes',35,'M',60000,'Function Head','HR',1);
INSERT INTO EMPLOYEE (NAME, AGE, GENDER, SALARY, DESIGNATION, DEPARTMENT, COUNTRY_ID) VALUES('Sinthura',27,'F',40000,'Lead','Operations',2);
INSERT INTO EMPLOYEE (NAME, AGE, GENDER, SALARY, DESIGNATION, DEPARTMENT, COUNTRY_ID) VALUES('Sunil',50,'M',70000,'President','Delivery',3);

-- Query DATA
SELECT * FROM EMPLOYEE;
SELECT * FROM COUNTRY;

-- Sqoop Data Export
CREATE TABLE EMPMGMT (
    ID INT,
    NAME VARCHAR(50) NOT NULL,
    AGE INT NOT NULL,
    GENDER CHAR(1),
    SALARY DOUBLE,
    DESIGNATION VARCHAR(50),
    DEPARTMENT VARCHAR(50),
    COUNTRY_ID INT,
    PRIMARY KEY (ID),
    FOREIGN KEY (COUNTRY_ID) REFERENCES COUNTRY(ID)
);

-- DROP TABLES
DROP TABLE EMPLOYEE;
DROP TABLE COUNTRY;
DROP TABLE EMPMGMT;

-- DROP DATABASE
DROP SCHEMA sqoop_training;