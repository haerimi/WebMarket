INSERT INTO product VALUES('P1234', 'iPhone 6s', 800000, '1334X750 Renina HD display, 8-megapixel iSight Camera','Smart Phone', 'Apple', 1000, 'new', 'P1234.png');
INSERT INTO product VALUES('P1235', 'LG PC gram', 1500000, '3.3-inch,IPS LED display, 5rd Generation Intel Core processors', 'Notebook', 'LG', 1000, 'new', 'P1235.png');
INSERT INTO product VALUES('P1236', 'Galaxy Tab S', 900000, '3.3-inch, 212.8*125.6*6.6mm,  Super AMOLED display, Octa-Core processor', 'Tablet', 'Samsung', 1000, 'new', 'P1236.png');

select * from product;

/*1. ������ ���̽� �߰�: CREATE DATABASE ������ ���̽� �̸�;
 * 2. ���̺� ����: CREATE TABLE ���̺� �̸�(�ʵ��̸�1 �ڷ���1[, �ʵ��̸�2 �ڷ���2, ...])
 * 3. ���̺� ��ȭ: SHOW TABLES;
 * 4. ���̺� ���� ��ȸ: DESC ���̺� �̸�;
 * 5. ���̺� ���� ����: ALTER TABLE ���̺� �̸�
 * [ADD �ʵ� �̸� �ڷ��� |
 * DROP COLUMN �ʵ� �̸� |
 * CHANGE COLUMN �����ʵ��̸� ���ʵ��̸� �ڷ���];
 * 6. ���̺� �̸� ����: RENAME TABLE ���̺��̸� TO �����̺��̸�[,
 * ���̺��̸� TO �����̺��̸�, ...];
 * 7. ������ ���: INSERT [INTO] ���̺��̸� [(�ʵ��̸�, �ʵ��̸�, ...)] VALUES(�ʵ尪, �ʵ尪, ..)
 * 8. ������ ��ȸ: SELECT �ʵ��̸�[, �ʵ��̸�, ...] FROM ���̺��̸� [WHERE �˻�����] [ORDER BY �ʵ��̸� [ASC or DESC]] [GROUP BY �ʵ��̸�[, �ʵ��̸�, ...]] ...
 * 9. ������ ����: UPDATE ���̺��̸� SET �ʵ��̸� = �ʵ尪[, �ʵ��̸� = �ʵ尪, ...] [WHERE �˻�����]
 * 10. ������ ����: DELETE FROM ���̺��̸� [WHERE �˻�����]
 */