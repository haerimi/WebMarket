INSERT INTO product VALUES('P1234', 'iPhone 6s', 800000, '1334X750 Renina HD display, 8-megapixel iSight Camera','Smart Phone', 'Apple', 1000, 'new', 'P1234.png');
INSERT INTO product VALUES('P1235', 'LG PC gram', 1500000, '3.3-inch,IPS LED display, 5rd Generation Intel Core processors', 'Notebook', 'LG', 1000, 'new', 'P1235.png');
INSERT INTO product VALUES('P1236', 'Galaxy Tab S', 900000, '3.3-inch, 212.8*125.6*6.6mm,  Super AMOLED display, Octa-Core processor', 'Tablet', 'Samsung', 1000, 'new', 'P1236.png');

select * from product;

/*1. 데이터 베이스 추가: CREATE DATABASE 데이터 베이스 이름;
 * 2. 테이블 생성: CREATE TABLE 테이블 이름(필드이름1 자료형1[, 필드이름2 자료형2, ...])
 * 3. 테이블 조화: SHOW TABLES;
 * 4. 테이블 세부 조회: DESC 테이블 이름;
 * 5. 테이블 구조 변경: ALTER TABLE 테이블 이름
 * [ADD 필드 이름 자료형 |
 * DROP COLUMN 필드 이름 |
 * CHANGE COLUMN 기존필드이름 새필드이름 자료형];
 * 6. 테이블 이름 변경: RENAME TABLE 테이블이름 TO 새테이블이름[,
 * 테이블이름 TO 새테이블이름, ...];
 * 7. 데이터 등록: INSERT [INTO] 테이블이름 [(필드이름, 필드이름, ...)] VALUES(필드값, 필드값, ..)
 * 8. 데이터 조회: SELECT 필드이름[, 필드이름, ...] FROM 테이블이름 [WHERE 검색조건] [ORDER BY 필드이름 [ASC or DESC]] [GROUP BY 필드이름[, 필드이름, ...]] ...
 * 9. 데이터 수정: UPDATE 테이블이름 SET 필드이름 = 필드값[, 필드이름 = 필드값, ...] [WHERE 검색조건]
 * 10. 데이터 삭제: DELETE FROM 테이블이름 [WHERE 검색조건]
 */