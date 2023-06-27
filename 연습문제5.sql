CREATE DATABASE `university`;
CREATE USER 'admin3'@'%' IDENTIFIED BY '1234';
GRANT ALL PRIVILEGES ON College.* TO 'admin3'@'%';
FLUSH PRIVILEGES;


CREATE TABLE `Studentsstudent` (
	`stdNo`		CHAR(8) PRIMARY KEY,
	`stdName`	VARCHAR(20) NOT NULL,
	`stdJumin`	CHAR(14) NOT NULL,
	`stdHp`		CHAR(13) NOT NULL,
	`stdEmail`	VARCHAR(45)	UNIQUE KEY,
	`stdAddr` 	VARCHAR(100) NOT NULL
);

CREATE TABLE `Professors` (
	`proNo`		CHAR(6)	PRIMARY KEY,
	`proName`	VARCHAR(20) NOT NULL,
	`proJumin`	CHAR(14)	UNIQUE KEY NOT NULL,
	`proHp`		CHAR(13)	UNIQUE KEY NOT NULL,
	`proAddr`	VARCHAR(100) NOT NULL
);



CREATE TABLE `Lectures` (
	`lecNo`		CHAR(6) NOT NULL,
	`lecName`	VARCHAR(45) NOT NULL,
	`lecCredit`	TINYINT NOT NULL,
	`lecTime`	INT NOT NULL,
	`lecClass`	VARCHAR(45) NOT NULL
);

CREATE TABLE `Departments` (
	`depNo`		INT  PRIMARY KEY NOT NULL,
	`depName`	VARCHAR(20)	NOT NULL,
	`depTel`		CHAR(14)	NOT NULL

);

CREATE TABLE `Register` (
	`stdNo`				CHAR(8),
	`lecNo`				CHAR(6),
	`proNo`				CHAR(6),
	`regAttenScore`	TINYINT, 
	`regMidScore`		TINYINT,
	`regFinalScore`	TINYINT,
 	`regEtcScore`		TINYINT,
	`regTotal`			TINYINT,
	`regGrade`			CHAR(1)
	
);
					

# 실습 3-3
insert into `Students` values ('20101001', 10, 'P10101', '정우성', '760121-1234567', '010-1101-7601', null, '서울'); 
insert into `Students` values ('20101002', 10, 'P10101', '이정재', '750611-1234567', '010-1102-7506', null, '서울'); 
insert into `Students` values('20111011',11,'P11103','전지현','890530-1234567','010-1103-8905','jjh@naver.com','대전');
insert into `Students` values('20111013',11,'P11103','이나영','790413-1234567','010-2101-7904','lee@naver.com','대전');
insert into `Students` values('20111014',11,'P11103','원빈','660912-1234567','010-2104-6609','one@naver.com','대전');
insert into `Students` values('21221010',22,'P22110','장동건','790728-1234567','010-3101-7907','jang@naver.com','대구');
insert into `Students` values('21231002',23,'P23102','고소영','840615-1234567','010-4101-8406','goso@daum.net','대구');
insert into `Students` values('22311011',31,'P31104','김연아','651021-1234567','010-5101-6510','yuna@daum.net','대구');
insert into `Students` values ('22311014',31, 'P31104', '유재석', '721128-1234567', '010-6101-7211', null, '부산');
insert into `Students` values ('22401001',40, 'P40101', '강호동', '920907-1234567', '010-7103-9209', null, '부산');
insert into `Students` values('22401002',40,'P40101','조인성','891209-1234567','010-7104-8912','join@gmail.com','광주');
insert into `Students` values('22421003',42,'P42103','강동원','770314-1234567','010-8101-7703','dong@naver.com','광주');

insert into `professors` values('P10101', '10', '김유신','750120-1234567','010-1101-1976','kimys@hg.ac.kr','서울');
insert into `professors` values('P10102', '10','계백','740610-1234567','010-1102-1975','gaeback@hg.ac.kr','서울');
insert into `professors` values('P11101','11','김관창','880529-1234567','010-1103-1989','kwanch@hg.ac.kr','대전');
insert into `professors` values('P11103','11','김춘추','780412-1234567','010-2101-1979','kimcc@hg.ac.kr','대전');
insert into `professors` values('P11104','11','이사부','650911-1234567','010-2104-1966','leesabu@hg.ac.kr','대전');
insert into `professors` values('P22110','22','장보고','780727-1234567','010-3101-1979','jangbg@hg.ac.kr','부산');
insert into `professors` values('P23102','23','선덕여왕','830614-1234567','010-4101-1984','gueen@hg.ac.kr','부산');
insert into `professors` values('P31101','31','강감찬','641020-1234567','010-5101-1965','kang@hg.ac.kr','대구');
insert into `professors` values('P31104','31','신사임당','711127-1234567','010-6101-1972','sinsa@hg.ac.kr','부산');
insert into `professors` values('P40101','40','이이','910906-1234567','010-7103-1992','leelee@hg.ac.kr','부산');
insert into `professors` values('P40102','40','이황','881208-1234567','010-7104-1989','hwang@hg.ac.kr','광주');
insert into `professors` values('P42103','42','송상현','760313-1234567','010-8101-1997','ssh@hg.ac.kr','광주');

INSERT INTO `Departments` VALUES(10, '국어국문학과', '051-510-1010');
INSERT INTO `Departments` VALUES(11, '영어영문학과', '051-510-1011');
INSERT INTO `Departments` VALUES(20, '경영학과', '051-510-1020');
INSERT INTO `Departments` VALUES(21, '경제학과', '051-510-1021');
INSERT INTO `Departments` VALUES(22, '정치외교학과', '051-510-1022');
INSERT INTO `Departments` VALUES(23, '사회복지학과', '051-510-1023');
INSERT INTO `Departments` VALUES(30, '수학과', '051-510-1030');
INSERT INTO `Departments` VALUES(31, '통계학과', '051-510-1031');
INSERT INTO `Departments` VALUES(32, '생명과학과', '051-510-1032');
INSERT INTO `Departments` VALUES(40, '기계공학과', '051-510-1040');
INSERT INTO `Departments` VALUES(41, '전자공학과', '051-510-1041');
INSERT INTO `Departments` VALUES(42, '컴퓨터공학과', '051-510-1042');

INSERT INTO `Lecture` VALUES (101001,'P10101', '대학 글쓰기', 2, 10, '본102');
INSERT INTO `Lecture` VALUES (101002,'P10102', '한국어음운론', 3, 30, '본102');
INSERT INTO `Lecture` VALUES (101003,'P10102', '한국현대문학사', 3, 30, '본103');
INSERT INTO `Lecture` VALUES (111011,'P11103', '중세영문학', 3, 25, '본201');
INSERT INTO `Lecture` VALUES (111012,'P11104', '영미시', 3, 25, '본201');
INSERT INTO `Lecture` VALUES (231110,'P23102', '사회복지학개론', 1, 8, '별관103');
INSERT INTO `Lecture` VALUES (311002,'P31101', '통계학의 이해', 2, 16, '별관303');
INSERT INTO `Lecture` VALUES (311003,'P31104', '기초 통계학', 3, 26, '별관303');
INSERT INTO `Lecture` VALUES (401019,'P40101', '기계역학', 3, 36, '공학관102');
INSERT INTO `Lecture` VALUES (421012,'P42103', '데이터베이스', 3, 32, '공학관103');

insert into `register`(`stdNo`,`lecNo`,`proNo`) values('20101001', '101001','P10101');
insert into `register`(`stdNo`,`lecNo`,`proNo`) values('20101001', '101002','P10102');
insert into `register`(`stdNo`,`lecNo`,`proNo`) values('20111013', '111011','P11103');
insert into `register`(`stdNo`,`lecNo`,`proNo`) values('21231002', '231110','P23102');
insert into `register`(`stdNo`,`lecNo`,`proNo`) values('22401001', '401019','P40101');
insert into `register`(`stdNo`,`lecNo`,`proNo`) values('22401001', '421012','P42103');
insert into `register`(`stdNo`,`lecNo`,`proNo`) values('20101001', '101003','P10102');
insert into `register`(`stdNo`,`lecNo`,`proNo`) values('22421003', '311003','P31104');
insert into `register`(`stdNo`,`lecNo`,`proNo`) values('22421003', '421012','P42103');
insert into `register`(`stdNo`,`lecNo`,`proNo`) values('20111013', '111012','P11104');


# 문제1. 모든학생의 학생번호, 이름, 휴대폰, 학과번호, 학과명을 조회하시오.
SELECT 
	`stdNo`,
	`stdName`,
	`stdHp`,
	b.depNo,
	depName
FROM `Students` AS a
JOIN `Departments` AS b ON a.depNo = b.depNo;

# 문제2. 모든 교수의 교수번호, 이름, 휴대폰, 학과번호, 학과명을 조회하시오.
SELECT 
	`proNo`,
	`proName`,
	`proHp`,
	b.depNo,
	depName
FROM `professors` AS a
JOIN `Departments` AS b ON a.depNo = b.depNo;

# 문제3. 모든 강좌의 강좌번호, 강좌명, 담당교수명, 휴대폰을 조회하시오.
SELECT 
	`lecNo`,
	`lecName`,
	`proName`,
	`proHp,	
FROM `Lectures` AS a
JOIN `Professors` AS b ON a.proNo = b.proNo;

# 문제4. 모든 강좌의 강좌번호, 강좌명, 담당교수 번호, 담당교수명, 휴대폰. 학과번호, 학과명을 조회하시오.
SELECT
	`lecNo`,
	`lecName`,
	b.proNo,
	proName,
	proHp,
	c.depNo,
	depName
FROM `Lectures` AS a
JOIN `Professors` AS b ON a.proNo = b.proNo
JOIN `Departments` AS c ON b.depNo = c.depNo;

#문제5. 모든 수강신청 내역에서 학생번호, 학생명, 강좌번호, 강좌명, 교수번호, 교수명을 조회하시오.
SELECT 
	a.`stdNo`,
	b.`stdName`,
	a.`lecNo`,
	c.`lecName`,
	a.`proNo`,
	d.`proName`
FROM `Register` AS a
JOIN `Students` AS b ON a.stdNo = b.stdNo
JOIN `Lectures` AS c ON a.lecNo = c.lecNo
JOIN `Professors` AS d ON a.proNo = d.proNo;

# 실습 3-9
UPDATE `Register` SET `regMidScore` = 36, `regFinalScore`=42 WHERE `regStdNo`='20201126' AND `regLecNO`=234;
UPDATE `Register` SET `regMidScore` = 24, `regFinalScore`=62 WHERE `regStdNo`='20201026' AND `regLecNO`=248;
UPDATE `Register` SET `regMidScore` = 28, `regFinalScore`=40 WHERE `regStdNo`='20201026' AND `regLecNO`=253;
UPDATE `Register` SET `regMidScore` = 37, `regFinalScore`=57 WHERE `regStdNo`='20201126' AND `regLecNO`=239;
UPDATE `Register` SET `regMidScore` = 28, `regFinalScore`=68 WHERE `regStdNo`='20210216' AND `regLecNO`=349;
UPDATE `Register` SET `regMidScore` = 16, `regFinalScore`=65 WHERE `regStdNo`='20210326' AND `regLecNO`=349;
UPDATE `Register` SET `regMidScore` = 18, `regFinalScore`=38 WHERE `regStdNo`='20201016' AND `regLecNO`=167;
UPDATE `Register` SET `regMidScore` = 25, `regFinalScore`=58 WHERE `regStdNo`='20220416' AND `regLecNO`=349;
# 실습 3-10
UPDATE `Register`SET
			`regTotalScore`= `regMidScore` + `regFinalScore`,
			`regGrade` = if(`regTotalScore` >= 90, 'A',
							 if(`regTotalScore` >= 80, 'B',
							 if(`regTotalScore` >= 70, 'C',
							 if(`regTotalScore` >= 60, 'D','F'))));
SELECT * FROM `Register`;

# 실습 3-11
SELECT * FROM `Register` ORDER BY `regTotalScore` DESC;

# 실습 3-12
SELECT * FROM `Register` WHERE `regLecNo` = 349; ORDER BY `regTotalScore` DESC;
# 실습 3-13
SELECT * FROM `Lecture` WHERE `lecTime` >= 30;
# 실습 3-14
SELECT `ledName`, `lecClass` FROM `Lecture`;
# 실습 3-15
SELECT `stdNo`,`stdName` FROM `Student`;
# 실습 3-16
SELECT * FROM `Student` WHERE `stdAddress` IS NULL;
# 실습 3-17
SELECT * FROM `Student` WHERE `stdYear` =1;
# 실습 3-18
SELECT * FROM `Student` AS a LEFT JOIN `Register` AS b ON a.stdNo = b.regStdNo;
# 실습 3-19
SELECT
`stdNo`,`stdName`,`regLecNo`,`regMidScore`,`regFinalScore`,`regTotalScore`,`regGrade`

FROM `Student` AS a, `Register` AS b WHERE a.stdNo = b.regStdNo;
# 실습 3-20

SELECT `stdName`, `stdNo`, `regLecNo`
FROM `Student` AS a
JOIN `Register` AS b
ON a.stdNo = b.regStdNo WHERE `regLecNo`=349;

# 실습 3-21
SELECT
	`stdNo`,
	`stdName`,
	COUNT(`stdNo`)AS `수강신청 건수`,
	SUM(`regTotalScore`) AS `종합점수`,
	SUM(`regTotalScore`) / COUNT(`stdNo`) AS `평균`
FROM `Student` AS a
JOIN `Register` AS b
ON a.stdNo = b.regStdNo
GROUP BY `stdNo` ORDER BY `stdNo`;

# 실습 3-22
SELECT * FROM `Register` AS a
JOIN `Lecture` AS b 
ON a.regLecNo = b.lecNo;
# 실습 3-23
SELECT
	`regStdNo`,
	`regLecNo`,
	`lecName`,
	`regMidScore`,
	`regFinalScore`,
	`regTotalScore`,
	`regGrade`
FROM `Register` AS a JOIN `Lecture` AS b ON a.regLecNo = b.lecNo;

# 실습 3-24
SELECT
	COUNT(*) AS `사회복지 마케팅 수강 신청건수`,
	AVG(`regTotalScore`) AS `사회복지 마케팅 평균`
FROM `Register` AS a JOIN `Lecture` AS b ON a.regLecNo = b.lecNo
WHERE `lecName` = '사회복지 마케팅';

# 실습 3-25
SELECT
	`regStdNo`,
	`lecName`
FROM `Register` AS a JOIN `Lecture` AS b ON a.regStdNo =b.lecName
WHERE `regGrade` = 'A';

# 실습 3-26
SELECT * FROM `Student` AS a
JOIN `Register` AS b ON a.stdNo = b.regStdNo
JOIN `Lecture` AS c ON b.regLecNo = c.lecNo;

# 실습 3-27
SELECT
	`stdNo`,
	`stdName`,
	`lecNo`,
	`lecName`,
	`regMidScore`,
	`regFinalScore`,
	`regTotalScore`,
	`regGrade`
FROM `Student` AS a
JOIN `Register` AS b ON a.stdNo = b.regStdNo
JOIN `Lecture` AS c ON b.regLecNo = c.lecNo
ORDER BY `regTotalScore` DESC;

# 실습 3-28
SELECT
	`stdNo`,
	`stdName`,
	`lecName`,
	`regTotalScore`,
	`regGrade`
FROM `Student` AS a
JOIN `Register` AS b ON a.stdNo = b.regStdNo
JOIN `Lecture` AS c ON b.regLecNo = c.lecNo
WHERE `regGrade` = 'F';


# 실습 3-29
SELECT
	`stdNo`,
	`stdName`,
	SUM(`lecCredit`) AS `이수학점`
FROM `Student` AS a
JOIN `Register` AS b ON a.stdNo = b.regStdNo
JOIN `Lecture` AS c ON b.regLecNo = c.lecNo
WHERE `regTotalScore` >= 60
GROUP BY `stdNo`;

# 실습 3-30
SELECT
	`stdNo`,
	`stdName`,
	GROUP_CONCAT(`lecName`) AS `신청과목`,
	GROUP_CONCAT(if(regTotalScore` >= 60, `lecName`, null)) AS `이수과목`
FROM `Student` AS a
JOIN `Register` AS b ON a.stdNo = b.regStdNo
JOIN `Lecture` AS c ON b.regLecNo = c.lecNo
GROUP BY `stdNo`;

