#날짜 : 2023/06/16
#이름 : 류영호
#내용 : 1.SQL 기초

#실습1-1
CREATE DATABASE `UserDB`;
DROP DATABASE `UserDB`;
#실습1-2
CREATE TABLE `User1`(
	`uid` VARCHAR(10),
	`name` VARCHAR(10),
	`hp` CHAR(13),
	`age` INT);
#실습1-3
INSERT INTO `User1` VALUES ('A101', '김유신', '010-1234-1111', 25);
INSERT INTO `User1` VALUES ('A102', '김춘추', '010-1234-2222', 23);
INSERT INTO `User1` VALUES ('A103', '장보고', '010-1234-3333', 32);
INSERT INTO `User1` (`uid`, `name`, `age`) VALUES ('A104', '강감찬', 45);
INSERT INTO `User1` SET `uid`='A105', `name`='이순신', `hp`='010-1234-5555';

DROP TABLE `User1`;
#실습1-4
SELECT * FROM `User1`;
SELECT * FROM `User1` WHERE `uid`='A101';
SELECT * FROM `User1` WHERE `name`='김춘추';
SELECT * FROM `User1` WHERE `age` < 30;
SELECT * FROM `User1` WHERE `age` >=30;
SELECT `uid`, `name`, `age` FROM `User1`;

#실습1-5
UPDATE `User1` SET `hp`='010-1234-4444' WHERE `uid` ='A104';
UPDATE `User1` SET `age`=51 WHERE `uid`='A105';
UPDATE `User1` SET `hp`='010-1234-1001', `age`=27 WHERE `uid`='A101';
#실습1-6
DELETE FROM `User1` WHERE `uid`='A101';
DELETE FROM `User1` WHERE `uid`='A102' AND `age` =25;
DELETE FROM `User1` WHERE `age`>=30;
#실습1-7
CREATE TABLE `TblUser` (
			`userID`			VARCHAR(10),
			`userName`		VARCHAR(10),
			`userHp`			CHAR(13),
			`userAge`		TINYINT,
			`userAddr` 		VARCHAR(20)
			);

CREATE TABLE `TblProduct` (
			`prdCode`		INT,
			`prdName`		VARCHAR(10),
			`prdPrice`		INT,
			`prdAmount`		INT,
			`prdCompany`	VARCHAR(10),
			`prdMakeDate`	DATE
			);
#실습1-8
INSERT INTO `TblUser` VALUES ('p101','김유신','010-1234-1001',25, '서울시 중구');
INSERT INTO `TblUser` (`userId`,`userName`, userAge,userAddr) VALUES ('p103','장보고',31, '경기도 광주군');
INSERT INTO `TblUser` VALUES ('p103','김춘추',23, '부산시 금정구');
INSERT INTO `TblUser` (`userId`,`userName`, userAddr) VALUES ('p104','강감찬', '경남 창원시');
INSERT INTO `TblUser` SET `userId`='p105', `userName`='이순신',`userHp`='010-1234-1005', `userAge` = 50

insert into `TblProduct` values (1, '냉장고', 800,   10, 'LG', '2022-01-06');
insert into `TblProduct` values (2, '노트북', 1200,  20, '삼성', '2022-01-06');
insert into `TblProduct` values (3, 'TV',   1400,   6, 'LG', '2022-01-06');
insert into `TblProduct` values (4, '세탁기', 1000,   8, 'LG', '2022-01-06');
insert into `TblProduct` values (5, '컴퓨터', 1100,   0, NULL, NULL);
insert into `TblProduct` values (6, '휴대폰', 900,  102, '삼성', '2022-01-06');


#실습1-9
SELECT * FROM `TblUser`;
SELECT `UserName` FROM `TblUser`;
SELECT `username`, `userHP` FROM `TblUser`;
SELECT * FROM `TblUser` WHERE `userId`='p102';
SELECT * FROM `TblUser` WHERE `userId`='p104' OR 'userId'='p105';
SELECT * FROM `TblUser` WHERE `userAddr`='부산시 금정구';
SELECT * FROM `TblUser` WHERE `userAge` > 30;
SELECT * FROM `TblUser` WHERE `userHP` IS NULL;
UPDATE `TblUser` SET `userAge`=42 WHERE `userID`='p104';
UPDATE `TblUser` SET `userAddr`='경남 김해시' WHERE `userId`='p105';
DELETE FROM `TblUser` WHERE `userId`='p103';


SELECT * FROM `TblProduct`;
SELECT `prdName` FROM `TblProduct`;
SELECT `prdName`,`prdPrice` FROM `TblProduct`;
SELECT * FROM `TblProduct` WHERE `prdCompany` = 'LG';
SELECT * FROM `TblProduct` WHERE `prdCompany` = '삼성';
UPDATE `TblProduct` SET
							`prdCompany`='삼성', `prdMakeDate`='2021-01-01' WHERE `prdCode`=5;