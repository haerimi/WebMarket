CREATE TABLE IF NOT EXISTS product(
	p_id VARCHAR(10) NOT NULL,	/*��ǰ ���̵�, ������, �ִ���� 10, NOT NULL*/
	p_name VARCHAR(20),			/*��ǰ��, ������, �ִ���� 10*/
	p_unitPrice  INTEGER,		/*��ǰ ����, ������*/
	p_description TEXT,			/*��ǰ �� ����, ������*/
   	p_category VARCHAR(20),		/*��ǰ ī�װ�, ������, �ִ���� 20*/
	p_manufacturer VARCHAR(20),	/*��ǰ ������, ������, �ִ���� 20*/
	p_unitsInStock LONG,		/*��ǰ ����, ������*/
	p_condition VARCHAR(20),	/*��ǰ ����, ������, �ִ���� 20*/
	p_fileName  VARCHAR(20),	/*��ǰ �̹��� ���ϸ�, ������, �ִ���� 20*/
	PRIMARY KEY (p_id)			/*���� ���̵� ������ Ű �ε����� PRIMARY KEY�� �ۼ�*/
)default CHARSET=utf8;			/*product ���̺��� ĳ���� ��Ʈ�� utf8�� �ۼ�*/