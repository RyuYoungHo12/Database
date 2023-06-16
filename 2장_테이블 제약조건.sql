#날짜 : 2023/06/16
#이름 : 류영호
#내용 : 1.SQL 기초

#실습2-1
CREATE TABLE `User2`(
	`uid` 	VARCHAR(10) PRIMARY KEY,
	`name`	VARCHAR(10),
	`hp`		CHAR(13),
	`age`		INT
	);
	
#실습2-2
INSERT INTO `User2` VALUES ('A101', '김유신', '010-1234-1001', 23);
INSERT INTO `User2` VALUES ('A102', '김춘추', '010-1234-1002', 21);
INSERT INTO `User2` VALUES ('A103', '장보고', '010-1234-1003', 31);
INSERT INTO `User2` VALUES ('A104', '강감찬', '010-1234-1001', 41);

#실습2-3
CREATE TABLE `User3` (
	`uid`		VARCHAR(10) PRIMARY KEY,
	`name`	VARCHAR(10),
	`hp`		CHAR(13) UNIQUE,
	`age`		INT
	);
	
#실습2-4
INSERT INTO `User3` VALUES ('A101', '김유신', '010-1234-1001', 23);
INSERT INTO `User3` (`uid`, `name`, `hp`, `age`) VALUES ('A102', '김춘추', '010-1234-1002', 21);
INSERT INTO `User3` SET 
						`uid`  = 'A103',
						`name` = '장보고',
						`hp`   = '010-1234-1003',
						`age`  = 31;

INSERT INTO `User3` VALUES ('A104', '강감찬', '010-1234-1004', 41);
INSERT INTO `User3` (`uid`, `name`, `age`) VALUES ('A104', '강감찬', 41);
INSERT INTO `User3` (`uid`, `name`, `age`) VALUES ('', '이순신', 51);
#실습2-5
CREATE TABLE `Parent` (
		`pid`		VARCHAR(10) PRIMARY KEY, 
		`name`	VARCHAR(10),
		`hp`		CHAR(13) UNIQUE
		);
		
CREATE TABLE `Child` (
	`cid`	VARCHAR(10) PRIMARY KEY,
    `name`	VARCHAR(10),
    `hp`	CHAR(13) UNIQUE,
    `pid`	VARCHAR(10),
    FOREIGN KEY (`pid`) REFERENCES `Parent` (`pid`)
    );
#실습2-6
INSERT INTO `Parent` VALUES ('p101', '홍길동', '010-1234-1001');
INSERT INTO `Parent` VALUES ('p102', '임꺽쩡', '010-1234-1002');
INSERT INTO `Parent` values ('p103', '이성계', '010-1234-1003');

insert into `Child` values ('c101', '홍길남', '010-1234-2001', 'p101');
insert into `Child` values ('c102', '임철수', '010-1234-2002', 'p102');
insert into `Child` values ('c103', '이방원', '010-1234-2003', 'p103');

#실습2-7
CREATE TABLE `User4` (
	`seq`		INT AUTO_INCREMENT PRIMARY KEY,
	`name`	VARCHAR(10),
	`gender`	TINYINT,
	`age`		INT,
	`addr`	VARCHAR(255)
	);
	
#실습2-8
INSERT INTO `User4` (`name`, `gender`, `age`, `addr`) VALUES ('김유신', 1, 23, '김해시');

#실습2-9
CREATE TABLE `User5` (
	`name` 	VARCHAR(10) NOT NULL,
	`gender`	TINYINT,
	`age`		INT DEFAULT 1,
	`addr`	VARCHAR(10)
	);
	
#실습2-10
INSERT INTO `User5` VALUES ('김유신', 1, 23, '김해시');
INSERT INTO `User5` (`name`,`addr`) VALUES ('김춘추','경주시');
INSERT INTO `User5` SET `name` = '신사임당', gender = 2, addr = '강릉시';

#실습2-11
ALTER TABLE `User5` ADD `hp` VARCHAR(20);
ALTER TABLE `User5` ADD `birth` CHAR(10) DEFAULT '0000-00-00' AFTER `name`;

#실습2-12
ALTER TABLE `User5` MODIFY `hp` CHAR(13);
ALTER TABLE `User5` MODIFY `age`	TINYINT;

#실습2-13
ALTER TABLE `User5` CHANGE COLUMN `addr` `address` VARCHAR(100);
#실습2-14
ALTER TABLE `User5` DROP `gender`;
#실습2-15
CREATE TABLE `User6` LIKE `User5`;
#실습2-16
INSERT INTO `User6` SELECT * FROM `User5`;