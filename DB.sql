# DB 생성
DROP DATABASE IF EXISTS `JSPAM`;
CREATE DATABASE `JSPAM`;
USE `JSPAM`;

# member 테이블 생성
CREATE TABLE `member`(
    id INT(10) UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
    regDate DATETIME NOT NULL,
    loginId CHAR(100) NOT NULL,
    loginPw TEXT NOT NULL,
    `name` CHAR(100) NOT NULL
);

# article 테이블 생성
CREATE TABLE article(
    id INT(10) UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
    regDate DATETIME NOT NULL,
    title CHAR(100) NOT NULL,
    `body` TEXT NOT NULL
);

# article 테스트데이터 생성
INSERT INTO article
SET regDate = NOW(),
title = '제목 1',
`body` = '내용 1';

INSERT INTO article
SET regDate = NOW(),
title = '제목 2',
`body` = '내용 2';

INSERT INTO article
SET regDate = NOW(),
title = '제목 3',
`body` = '내용 3';

INSERT INTO article
SET regDate = NOW(),
title = '제목 4',
`body` = '내용 4';

INSERT INTO article
SET regDate = NOW(),
title = CONCAT('제목 ',RAND()),
`body` = CONCAT('내용 ',RAND());

UPDATE article
SET title = '제목123'
WHERE id = 38;

SELECT COUNT(*)
FROM article;


#member 테스트 데이터 생성

INSERT INTO `member`
SET regDate = NOW(),
loginId = '이름1',
loginPw = '비번1',
`name` = '홍길동';

INSERT INTO `member`
SET regDate = NOW(),
loginId = '이름2',
loginPw = '비번2',
`name` = '홍길순';

INSERT INTO `member`
SET regDate = NOW(),
loginId = '이름3',
loginPw = '비번3',
`name` = '임꺽정';


INSERT INTO `member`
SET regDate = NOW(),
loginId = CONCAT('아이디 ',RAND()),
loginPw = CONCAT('비번 ',RAND()),
`name` = CONCAT('이름',RAND());

