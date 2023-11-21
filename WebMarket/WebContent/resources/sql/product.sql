CREATE TABLE IF NOT EXISTS product(
	p_id VARCHAR(10) NOT NULL,	/*상품 아이디, 문자형, 최대길이 10, NOT NULL*/
	p_name VARCHAR(20),			/*상품명, 문자형, 최대길이 10*/
	p_unitPrice  INTEGER,		/*상품 가격, 정수형*/
	p_description TEXT,			/*상품 상세 설명, 문자형*/
   	p_category VARCHAR(20),		/*상품 카테고리, 문자형, 최대길이 20*/
	p_manufacturer VARCHAR(20),	/*상품 제조사, 문자형, 최대길이 20*/
	p_unitsInStock LONG,		/*상품 재고수, 정수형*/
	p_condition VARCHAR(20),	/*상품 상태, 문자형, 최대길이 20*/
	p_fileName  VARCHAR(20),	/*상품 이미지 파일명, 문자형, 최대길이 20*/
	PRIMARY KEY (p_id)			/*싱픔 아이디를 고유한 키 인덱스인 PRIMARY KEY로 작성*/
)default CHARSET=utf8;			/*product 테이블의 캐릭텉 세트를 utf8로 작성*/