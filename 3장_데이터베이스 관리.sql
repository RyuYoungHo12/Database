#날짜 : 2023/06/16
#이름 : 류영호
#내용 : 3.데이터베이스 관리

#실습3-1
CREATE DATABASE `TestDB`;
CREATE USER 'tester'@'%' IDENTIFIED BY '1234';
GRANT ALL PRIVILEGES ON TestDB.* TO 'tester'@'%';
FLUSH PRIVILEGES;

#실습 3-2
ALTER USER 'tester'@'%' IDENTIFIED BY '1234';
DROP USER 'tester'@'%';
FLUSH PRIVILEGES;