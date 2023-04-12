# DB 생성
DROP DATABASE IF EXISTS `JSPAM`;
CREATE DATABASE `JSPAM`;
USE `JSPAM`;

# member 테이블 생성
CREATE TABLE `member`(
    id INT(10) UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
    regDate DATETIME NOT NULL,
    loginId CHAR(100) NOT NULL,
    loginPw CHAR(100) NOT NULL,
    `name` CHAR(100) NOT NULL
);

# article 테이블 생성
CREATE TABLE article(
    id INT(10) UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
    regDate DATETIME NOT NULL,
    memberId INT(10) UNSIGNED NOT NULL,
    title CHAR(100) NOT NULL,
    `body` TEXT NOT NULL
);

# article 테스트데이터 생성
INSERT INTO article
SET regDate = NOW(),
memberId = '회원1',
title = '제목 1',
`body` = '내용 1';

INSERT INTO article
SET regDate = NOW(),
memberId = '회원2',
title = '제목 2',
`body` = '내용 2';

INSERT INTO article
SET regDate = NOW(),
memberId = '회원3',
title = '제목 3',
`body` = '내용 3';

INSERT INTO article
SET regDate = NOW(),
memberId = '회원4',
title = '제목 4',
`body` = '내용 4';

INSERT INTO article
SET regDate = NOW(),
memberId = CONCAT('회원',RAND()),
title = CONCAT('제목 ',RAND()),
`body` = CONCAT('내용 ',RAND());

UPDATE article
SET title = '제목123'
WHERE id = 38;

SELECT COUNT(*)
FROM article;

SELECT *
FROM article;


#member 테스트 데이터 생성

INSERT INTO `member`
SET regDate = NOW(),
loginId = 'test1',
loginPw = 'test1',
`name` = 'test1';

INSERT INTO `member`
SET regDate = NOW(),
loginId = 'test2',
loginPw = 'test2',
`name` = 'test2';

INSERT INTO `member`
SET regDate = NOW(),
loginId = 'test3',
loginPw = 'test3',
`name` = 'test3';


INSERT INTO `member`
SET regDate = NOW(),
loginId = CONCAT('아이디 ',RAND()),
loginPw = CONCAT('비번 ',RAND()),
`name` = CONCAT('이름',RAND());

SELECT *
FROM `member`;
