SELECT USER
FROM DUAL;
--==>> KIWI03


SELECT *
FROM all_tables;

SELECT 'DROP TABLE "' || TABLE_NAME || '" CASCADE CONSTRAINTS;' FROM user_tables;

SELECT *
FROM V;

DESC POS_PET_KIND;

INSERT INTO POS_PET_KIND(P_PET_KIN_ID, P_PET_KIND)
VALUES(1,'������');
INSERT INTO POS_PET_KIND(P_PET_KIN_ID, P_PET_KIND)
VALUES(2,'�����');


SELECT *
FROM POS_PET_KIND;



COMMIT;
ROLLBACK;

DESC POS_PET_SIZE;

SELECT *                                     
FROM POS_PET_SIZE;


INSERT INTO POS_PET_SIZE(P_PET_ID, P_PETSIZE)
VALUES(1,'����');
INSERT INTO POS_PET_SIZE(P_PET_ID, P_PETSIZE)
VALUES(2,'����');
INSERT INTO POS_PET_SIZE(P_PET_ID, P_PETSIZE)
VALUES(3,'����');



UPDATE POS_PET_SIZE
SET P_PETSIZE='����'
WHERE P_PET_ID=3;


DESC CARE_TYPE;

SELECT *
FROM CARE_TYPE;


INSERT INTO CARE_TYPE(C_TYPE_ID, C_TYPE_NAME)
VALUES(1, 'Ÿ���ɾ�');

INSERT INTO CARE_TYPE(C_TYPE_ID, C_TYPE_NAME)
VALUES(2, '�����ɾ�');

SELECT *
FROM KIND
ORDER BY D_OR_CAT_ID;

SELECT *
FROM DOG_OR_CAT;

DESC KIND;

INSERT INTO KIND(KIND_ID, KIND_NAME, D_OR_CAT_ID)
VALUES(1, '�ú������㽺Ű', 1);
INSERT INTO KIND(KIND_ID, KIND_NAME, D_OR_CAT_ID)
VALUES(2, 'Ǫ��', 1);
INSERT INTO KIND(KIND_ID, KIND_NAME, D_OR_CAT_ID)
VALUES(3, '���۵�', 1);
INSERT INTO KIND(KIND_ID, KIND_NAME, D_OR_CAT_ID)
VALUES(4, '�˷���ĭ �ȷ���Ʈ', 1);
INSERT INTO KIND(KIND_ID, KIND_NAME, D_OR_CAT_ID)
VALUES(5, '��������', 1);
INSERT INTO KIND(KIND_ID, KIND_NAME, D_OR_CAT_ID)
VALUES(6, '��Ʈ����', 1);
INSERT INTO KIND(KIND_ID, KIND_NAME, D_OR_CAT_ID)
VALUES(7, '���鸵�� ���̷�', 1);
INSERT INTO KIND(KIND_ID, KIND_NAME, D_OR_CAT_ID)
VALUES(8, '�׷��� �Ͽ��', 1);
INSERT INTO KIND(KIND_ID, KIND_NAME, D_OR_CAT_ID)
VALUES(9, '�����ڱ�', 1);
INSERT INTO KIND(KIND_ID, KIND_NAME, D_OR_CAT_ID)
VALUES(10, '��𿹵�', 1);
INSERT INTO KIND(KIND_ID, KIND_NAME, D_OR_CAT_ID)
VALUES(11, '�ù��̴�', 1);
INSERT INTO KIND(KIND_ID, KIND_NAME, D_OR_CAT_ID)
VALUES(12, '������', 1);
INSERT INTO KIND(KIND_ID, KIND_NAME, D_OR_CAT_ID)
VALUES(13, '��������', 1);
INSERT INTO KIND(KIND_ID, KIND_NAME, D_OR_CAT_ID)
VALUES(14, '���������', 1);
INSERT INTO KIND(KIND_ID, KIND_NAME, D_OR_CAT_ID)
VALUES(15, '����', 1);
INSERT INTO KIND(KIND_ID, KIND_NAME, D_OR_CAT_ID)
VALUES(16, '�� ���� �׸���', 1);
INSERT INTO KIND(KIND_ID, KIND_NAME, D_OR_CAT_ID)
VALUES(17, '���޶�Ͼ�', 1);
INSERT INTO KIND(KIND_ID, KIND_NAME, D_OR_CAT_ID)
VALUES(18, '�̴Ͼ�ó �ɼ�', 1);
INSERT INTO KIND(KIND_ID, KIND_NAME, D_OR_CAT_ID)
VALUES(19, '���ǿ�', 1);
INSERT INTO KIND(KIND_ID, KIND_NAME, D_OR_CAT_ID)
VALUES(20, '��ũ�� �׸���', 1);
INSERT INTO KIND(KIND_ID, KIND_NAME, D_OR_CAT_ID)
VALUES(21, '��Ƽ��', 1);
INSERT INTO KIND(KIND_ID, KIND_NAME, D_OR_CAT_ID)
VALUES(22, '�ڽ���Ʈ', 1);
INSERT INTO KIND(KIND_ID, KIND_NAME, D_OR_CAT_ID)
VALUES(23, 'ġ�Ϳ�', 1);
INSERT INTO KIND(KIND_ID, KIND_NAME, D_OR_CAT_ID)
VALUES(24, '�۱�', 1);
INSERT INTO KIND(KIND_ID, KIND_NAME, D_OR_CAT_ID)
VALUES(25, '����ġ�ҵ�', 1);
INSERT INTO KIND(KIND_ID, KIND_NAME, D_OR_CAT_ID)
VALUES(26, '���� �� ������', 1);


UPDATE KIND
SET KIND_NAME='�丣�þ�'
WHERE KIND_ID=27;

INSERT INTO KIND(KIND_ID, KIND_NAME, D_OR_CAT_ID)
VALUES(27, '�丣�þ�', 2);
INSERT INTO KIND(KIND_ID, KIND_NAME, D_OR_CAT_ID)
VALUES(28, '���þȺ��', 2);
INSERT INTO KIND(KIND_ID, KIND_NAME, D_OR_CAT_ID)
VALUES(29, '�Ƹ޸�ĭ�����', 2);
INSERT INTO KIND(KIND_ID, KIND_NAME, D_OR_CAT_ID)
VALUES(30, '�긮Ƽ�������', 2);
INSERT INTO KIND(KIND_ID, KIND_NAME, D_OR_CAT_ID)
VALUES(31, '����', 2);
INSERT INTO KIND(KIND_ID, KIND_NAME, D_OR_CAT_ID)
VALUES(32, '�ƺ�ôϾ�', 2);
INSERT INTO KIND(KIND_ID, KIND_NAME, D_OR_CAT_ID)
VALUES(33, '����Ƽ������', 2);
INSERT INTO KIND(KIND_ID, KIND_NAME, D_OR_CAT_ID)
VALUES(34, '����ũ��', 2);
INSERT INTO KIND(KIND_ID, KIND_NAME, D_OR_CAT_ID)
VALUES(35, '�Ҹ���', 2);
INSERT INTO KIND(KIND_ID, KIND_NAME, D_OR_CAT_ID)
VALUES(36, '��ġŲ', 2);
INSERT INTO KIND(KIND_ID, KIND_NAME, D_OR_CAT_ID)
VALUES(37, '����', 2);
INSERT INTO KIND(KIND_ID, KIND_NAME, D_OR_CAT_ID)
VALUES(38, '��Ű���Ӱ��', 2);
INSERT INTO KIND(KIND_ID, KIND_NAME, D_OR_CAT_ID)
VALUES(39, '�븣���� ��', 2);

INSERT INTO KIND(KIND_ID, KIND_NAME, D_OR_CAT_ID)
VALUES(40, '��Ÿ', 1);
INSERT INTO KIND(KIND_ID, KIND_NAME, D_OR_CAT_ID)
VALUES(41, '��Ÿ', 2);

-- ��� ������ ��ȸ
SELECT * 
FROM USER_SEQUENCES;


DESC ADMIN;

SELECT *
FROM ADMIN;

DELETE
FROM ADMIN;

INSERT INTO ADMIN(ADM_ID, ADM_PW)
VALUES('kiwi', '1234');

INSERT INTO FAQ_TYPE(FAQ_TYPE_ID, FAQ_TYPE)
VALUES(1, '�Ƿ����� ���� FAQ');
INSERT INTO FAQ_TYPE(FAQ_TYPE_ID, FAQ_TYPE)
VALUES(2, '����͸� ���� FAQ');


COMMIT;
ROLLBACK;


-- FAQ_TYPE
SELECT *
FROM FAQ_TYPE;

DELETE
FROM FAQ_TYPE;

DESC FAQ_TYPE;

ALTER TABLE FAQ_TYPE MODIFY (FAQ_TYPE VARCHAR2(50));

COMMIT;
ROLLBACK;


-- FAQ


SELECT *
FROM FAQ;

DELETE
FROM FAQ;

DESC FAQ;


CREATE SEQUENCE SEQ_FAQ
INCREMENT BY 1
START WITH 100
MINVALUE 100
MAXVALUE 99999
NOCYCLE
NOCACHE
ORDER;



DELETE
FROM FAQ;


DROP SEQUENCE SEQ_FAQ;
--==>> Sequence SEQ_FAQ��(��) �����Ǿ����ϴ�.

INSERT INTO FAQ(FAQ_ID, FAQ_TITLE, FAQ_CONTENT, ADM_ID, FAQ_TYPE_ID)
VALUES(SEQ_FAQ.NEXTVAL, 'Ű���� � ���񽺸� �����ϳ���?', '�湮 ����, ��Ź ���� �� �پ��� ���� �ɼ��� �����ϰ� �ֽ��ϴ�.', 'kiwi', 1);

INSERT INTO FAQ(FAQ_ID, FAQ_TITLE, FAQ_CONTENT, ADM_ID, FAQ_TYPE_ID)
VALUES(SEQ_FAQ.NEXTVAL, '����� ����� ���ΰ���?', '������� Ÿ�� �ɾ�� ���� �ɾ�� ���� �� �ֽ��ϴ�. �������� �������� Ÿ�� �ɾ�� �⺻��(15,000)�� �ð��� 2,000���� �߰��˴ϴ�. ���� �ɾ��� ��� �� 50,000������ å���Ǿ� �ֽ��ϴ�. ���� ��޿� ���� ������ �����ϹǷ� ���� �ٶ��ϴ�.', 'kiwi', 1);


INSERT INTO FAQ(FAQ_ID, FAQ_TITLE, FAQ_CONTENT, ADM_ID, FAQ_TYPE_ID)
VALUES(SEQ_FAQ.NEXTVAL, '����̵� ��Ź ���񽺰� �����Ѱ���?', '������� ��쵵 ������ �մϴ�. ������ �������� ���� ������ Ư�� ������, ȯ���� �ٲ�� ��Ʈ������ ���� ���ɼ��� ũ�⿡ ��Ź ���� �̿��� �����մϴ�.', 'kiwi', 1);

INSERT INTO FAQ(FAQ_ID, FAQ_TITLE, FAQ_CONTENT, ADM_ID, FAQ_TYPE_ID)
VALUES(SEQ_FAQ.NEXTVAL, '���񽺿� ���� ��� ������ �����ǳ���?', 'Ű���� �Ƿ��ڴ��� ���񽺸� ��û�԰� ���ÿ� ������ �̷�����ϴ�.', 'kiwi', 1);

INSERT INTO FAQ(FAQ_ID, FAQ_TITLE, FAQ_CONTENT, ADM_ID, FAQ_TYPE_ID)
VALUES(SEQ_FAQ.NEXTVAL, '��������� �ʿ��� �غ������ ���� �ֳ���?', '�⺻���� �غ񹰵��� �躯�е�, �躯��, ��� ����, ���, ������ �ν�ǥ �� ��å���� ���� �ֽ��ϴ�. ���� ������� �ñ�� ���ؼ� �⺻����  5�� ������ �� �Ϸ�Ǿ�� �մϴ�.', 'kiwi', 1);

INSERT INTO FAQ(FAQ_ID, FAQ_TITLE, FAQ_CONTENT, ADM_ID, FAQ_TYPE_ID)
VALUES(SEQ_FAQ.NEXTVAL, '���� ���´� �����ΰ���?', '�� ���� ����� - ����Ϳ��� ���� ���� ��û�� �������� ����Ͱ� ���� ������ ���� ���� ���
������ - ����Ͱ� 24�ð� �̳� �����ϴ°��, ���� ��û �� 24�ð��� ���� ���
������ ���� ���� - ����Ͱ� ���� ��û�� ������ ����
������ ������ - �ش� ��¥�� �Ǿ� ���񽺰� ������
������ ����Ϸ�- ���񽺰� �Ϸ�� ���
���Ⱓ���� - �Ⱓ ���� ����͸� ������ ���ϰ� �Ⱓ�� ��������', 'kiwi', 1);


INSERT INTO FAQ(FAQ_ID, FAQ_TITLE, FAQ_CONTENT, ADM_ID, FAQ_TYPE_ID)
VALUES(SEQ_FAQ.NEXTVAL, '���� ��� �� ȯ�� ������ ��� �ǳ���?', '���Ƿ����� ����ϴ� ���    ����� ������ 72�ð�������                      100% ȯ��
����� ������ 48�ð����� 24�ð�������                  50% ȯ��
����� ���� 24�ð���                                  ȯ�� �Ұ�
���Ƿ����� �� ��������                        ȯ�� �Ұ�
�ٸ��� �ۼ��� ���
��������� ��å������ ���� ���      ��� ���                                      100% ȯ��', 'kiwi', 1);

INSERT INTO FAQ(FAQ_ID, FAQ_TITLE, FAQ_CONTENT, ADM_ID, FAQ_TYPE_ID)
VALUES(SEQ_FAQ.NEXTVAL, '���� �Ϸ� �� ����Ͱ� ������ ����ϸ� ��� �ϳ���?', '��Ģ������ ����ʹ� ��Ұ� �Ұ��� �մϴ�.', 'kiwi', 1);

INSERT INTO FAQ(FAQ_ID, FAQ_TITLE, FAQ_CONTENT, ADM_ID, FAQ_TYPE_ID)
VALUES(SEQ_FAQ.NEXTVAL, '�ݷ������� �߰��ϸ� ����� ��� �ǳ���?', '�ñ�ô� �ݷ������� 2���� �̻��� ��쿡 Ÿ�� �ɾ�� ���� �ɾ� ��� �Ѿ׿��� ���� �� 10,000���� ���ε˴ϴ�.', 'kiwi', 1);

INSERT INTO FAQ(FAQ_ID, FAQ_TITLE, FAQ_CONTENT, ADM_ID, FAQ_TYPE_ID)
VALUES(SEQ_FAQ.NEXTVAL, '������ Ȯ���ǰ� �� ��, ��¥�� �����ϰ� �;��!', '��¥�� �ٽ� �����ϰ� ���� ���, ������ ��� �ϰ� �ٽ� ���� ��û�� �ϼž� �մϴ�.', 'KIWI', 1);

INSERT INTO FAQ(FAQ_ID, FAQ_TITLE, FAQ_CONTENT, ADM_ID, FAQ_TYPE_ID)
VALUES(SEQ_FAQ.NEXTVAL, '��� ��û ���񽺰� �����ΰ���?', '����� ��û ���񽺴� �Ƿ����� ���ϴ� ����� ������ 72�ð� ������ 1�ð� ������ �Ⱓ�� ���� ��û�� ����Ͽ� ������� ������ �ް�
�� ���� ����͸� ���� �ý����Դϴ�.', 'kiwi', 1);

INSERT INTO FAQ(FAQ_ID, FAQ_TITLE, FAQ_CONTENT, ADM_ID, FAQ_TYPE_ID)
VALUES(SEQ_FAQ.NEXTVAL, '�Ϲ� ����(��Ź, �湮)�� �����ΰ���?', '���Ϲ� ����(��Ź, �湮)�� ����� ������ 72�ð� �̻� ������ �ִٸ� ���ϴ� ����Ϳ��� ����� ������ ��û�ϴ� �ý����Դϴ�.', 'kiwi', 1);

INSERT INTO FAQ(FAQ_ID, FAQ_TITLE, FAQ_CONTENT, ADM_ID, FAQ_TYPE_ID)
VALUES(SEQ_FAQ.NEXTVAL, '���� �̿��� �ݷ������� �����ų� ��ġ�� ��� �ϳ���?', '����� ���� �ݷ������� �ǰ��� �̻��� ���� ���, ������ ����ʹ԰� ���Բ��� ���� �������� ��� �̼��Ͽ� ����, ġ�Ḧ ���� �� 
     �ֽ��ϴ�. ���� �� ġ�� �� �������� �Ǵܿ� ���� ���� ���ο� ���� ���÷����� �����̾� ���� ���� ���α׷��� ���� ������ �� �ֽ��ϴ�.', 'kiwi', 1);


INSERT INTO FAQ(FAQ_ID, FAQ_TITLE, FAQ_CONTENT, ADM_ID, FAQ_TYPE_ID)
VALUES(SEQ_FAQ.NEXTVAL, '�ݷ����� ��� �� ����, ������ ��� �ϳ���?', '������������  ���� �� �������� ������  �����մϴ�.', 'kiwi', 1);

INSERT INTO FAQ(FAQ_ID, FAQ_TITLE, FAQ_CONTENT, ADM_ID, FAQ_TYPE_ID)
VALUES(SEQ_FAQ.NEXTVAL, '���̵�� ��й�ȣ�� �Ҿ���Ⱦ��. ��� �ٽ� ã��?', '�α��� ���������� ���̵�,��й�ȣ ã�� ��ư�� ������ ���̵� Ȥ�� ��й�ȣ�� ã�� �� �ִ� �������� �̵��մϴ�.', 'kiwi', 1);

INSERT INTO FAQ(FAQ_ID, FAQ_TITLE, FAQ_CONTENT, ADM_ID, FAQ_TYPE_ID)
VALUES(SEQ_FAQ.NEXTVAL, '���� ������ ���� �Ⱓ ������ �����Ѱ���?', 'Ű�� ��å�� �Ұ��� �մϴ�. �߰��� �ʿ��� ��� ���� ��û�� ���ֽø� �˴ϴ�.', 'kiwi', 1);

INSERT INTO FAQ(FAQ_ID, FAQ_TITLE, FAQ_CONTENT, ADM_ID, FAQ_TYPE_ID)
VALUES(SEQ_FAQ.NEXTVAL, '���� ����� �����Դϱ�?', '�湮 ����, ��Ź ���� �� �پ��� ���� �ɼ��� �����ϰ� �ֽ��ϴ�.', 'kiwi', 1);

INSERT INTO FAQ(FAQ_ID, FAQ_TITLE, FAQ_CONTENT, ADM_ID, FAQ_TYPE_ID)
VALUES(SEQ_FAQ.NEXTVAL, '���� �߿� ��� ��ư�� �� �ʿ��Ѱ���?', '���� ���� �� �Ƿ��� �Ǵ� ������߿��� ������ �غ� �� ������ ������ ���(����ε� ����)�� �Ͽ��ٰ� 
�Ǵ��Ͽ��� ��� �� ��ư�� �����ðԵǸ� �÷����� ���� ��å���� ��å �� ���忡 ���� ȯ�� �� ��� ó�� �˴ϴ�. 
', 'kiwi', 1);

INSERT INTO FAQ(FAQ_ID, FAQ_TITLE, FAQ_CONTENT, ADM_ID, FAQ_TYPE_ID)
VALUES(SEQ_FAQ.NEXTVAL, 'Ű���� Ż���ϰ� �;��. ��� �ϳ���?', '������������ Ż���ϱ� ��ư�� �ֽ��ϴ�. �������� ���񽺰� �ְų� ��û�� ���񽺰�  �ִٸ� Ż�� �Ұ��� �մϴ�. ȸ�� Ż��� ������ ������, ������ ��� �� �� ���� �˴ϴ�. ���� Ż�� �� 1���̳� �簡���� �Ұ��� �մϴ�. ������ ������ �ּ���', 'kiwi', 1);

INSERT INTO FAQ(FAQ_ID, FAQ_TITLE, FAQ_CONTENT, ADM_ID, FAQ_TYPE_ID)
VALUES(SEQ_FAQ.NEXTVAL, '����ʹ� ��� �����ϳ���?', '��Ģ������ ����ʹ� ��Ұ� �Ұ��� �մϴ�.', 'kiwi', 1);


INSERT INTO FAQ(FAQ_ID, FAQ_TITLE, FAQ_CONTENT, ADM_ID, FAQ_TYPE_ID)
VALUES(SEQ_FAQ.NEXTVAL, '����� ���� �ڰ��� �˰� �;��', '���̷� �а� �Բ��ϰ� �ֽ��ϴ�.
����� �Ͽ� �־ å�Ӱ��� ���ؿ�
�������� ģ���ϰ� ������ �� �־��
���ð� ����� ö���ϰ� ���ѿ�', 'kiwi', 1);

ALTER TABLE FAQ MODIFY (FAQ_CONTENT VARCHAR2(700));



INSERT INTO FAQ(FAQ_ID, FAQ_TITLE, FAQ_CONTENT, ADM_ID, FAQ_TYPE_ID)
VALUES(SEQ_FAQ.NEXTVAL, '����Ͱ� �ϴ� ����(�湮, ��Ź, ���)�� �����ΰ���?', '����ʹ� �ݷ������� ���� �������� ���ɰ� ������ �����Ͽ� ���̵��� �ð��� ���� �����ϰ� ���� �� �ֵ��� ����մϴ�. �߿� ��å, �ǳ����̻Ӹ� �ƴ϶� ���ִԵ���� ��Ȱ�� ������ ��Ģ����, ���̵��� �����ϰ� �� ������ ����� �����ݴϴ�. �߰����񽺰� ������ ����͵鿡 ���ؼ� �Ⱦ�, ���, ���� ���� ���� ���񽺵� �Բ� �����մϴ�.', 'kiwi', 2);

INSERT INTO FAQ(FAQ_ID, FAQ_TITLE, FAQ_CONTENT, ADM_ID, FAQ_TYPE_ID)
VALUES(SEQ_FAQ.NEXTVAL, '���� �� ��� ������ ���� �޳���?', ' ������ ���� Ȯ�� ���� ȸ�� ������ ������ �ݾ��� ����ʹ� ���·� �����ص帮�� �ֽ��ϴ�.', 'kiwi', 2);

INSERT INTO FAQ(FAQ_ID, FAQ_TITLE, FAQ_CONTENT, ADM_ID, FAQ_TYPE_ID)
VALUES(SEQ_FAQ.NEXTVAL, '����ʹ� Ȯ���� ������ ����� �� �ֳ���?', '��Ģ������ ����ʹ� ��Ұ� �Ұ��� �մϴ�.���� ��å ������ ��Ҹ� �� ��쿡�� �г�Ƽ�� �ΰ��Ǹ�, 3ȸ �̻� ���(���)�� ����� �ڰ��� ����մϴ�.
���� 6���� ���� 1���� ������ϴ�. ', 'kiwi', 2);

INSERT INTO FAQ(FAQ_ID, FAQ_TITLE, FAQ_CONTENT, ADM_ID, FAQ_TYPE_ID)
VALUES(SEQ_FAQ.NEXTVAL, '��� å���� � ������� �̷��������?', '���������� �������� Ÿ�� �ɾ�� �⺻��(15,000)�� �ð��� 2,000���� �߰��˴ϴ�. 
������ �ɾ��� ��� 50,000������ å���Ǿ� �ֽ��ϴ�. 
������ �ð��� ���� Ƚ���� ����� �������� ����� �ö󰥼��� �⺻���� �ö󰩴ϴ�.', 'kiwi', 2);

INSERT INTO FAQ(FAQ_ID, FAQ_TITLE, FAQ_CONTENT, ADM_ID, FAQ_TYPE_ID)
VALUES(SEQ_FAQ.NEXTVAL, '����� ȸ�� ��� �ݾ� ������ � ������� �Ǿ��ֳ���?', '����              10,000
�����           15,000
�ǹ�               20,000
���               25,000', 'kiwi', 2);


INSERT INTO FAQ(FAQ_ID, FAQ_TITLE, FAQ_CONTENT, ADM_ID, FAQ_TYPE_ID)
VALUES(SEQ_FAQ.NEXTVAL, '�±� ����', '��ó�� ����Ͱ� �Ǹ� ���� ��޺��� �����ϰ� ����� ���� 4ȸ(12�ð�)�̻�, ������ ���� 1�� �̻� ����� ������ ����� �ö󰩴ϴ�. 
���������� ����� ���� 10��(60�ð�), ������ ���� 3�� �̻� ������ �ǹ��� ����� �ö󰩴ϴ�.
���ǹ������� ����� ���� 30��(180�ð�), ������ ���� 6�� �̻� ���� �� ���� ����� �ö󰩴ϴ�. ����, ����� -> �ǹ� : ��� ���� 3.5�� �̻� �±� ����
�ǹ� -> ��� : ��� ���� 4.0�̻� �±� ����', 'kiwi', 2);

INSERT INTO FAQ(FAQ_ID, FAQ_TITLE, FAQ_CONTENT, ADM_ID, FAQ_TYPE_ID)
VALUES(SEQ_FAQ.NEXTVAL, '���� ����� �����Դϱ�?', '���� ������ �Ϸ�� �������� �� �� Ȯ�� ������ �Ƿ��ڿ� ����Ͱ� ������ �� �ִ� ����Դϴ�.', 'kiwi', 2);



UPDATE FAQ
SET FAQ_CONTENT='����              10,000��
�����           15,000��
�ǹ�               20,000��
���               25,000��'
WHERE FAQ_ID=127;



select * from user_sequences;