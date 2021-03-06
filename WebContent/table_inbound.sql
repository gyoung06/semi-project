
/* Drop Tables */

DROP TABLE COUPON CASCADE CONSTRAINTS;
DROP TABLE FAQ CASCADE CONSTRAINTS;
DROP TABLE GRADE CASCADE CONSTRAINTS;
DROP TABLE NOTICE CASCADE CONSTRAINTS;
DROP TABLE HEAD_ADMIN CASCADE CONSTRAINTS;
DROP TABLE INBOUND CASCADE CONSTRAINTS;
DROP TABLE ORDER_DETAIL CASCADE CONSTRAINTS;
DROP TABLE ORDERS CASCADE CONSTRAINTS;
DROP TABLE REVIEW CASCADE CONSTRAINTS;
DROP TABLE USERQNA CASCADE CONSTRAINTS;
DROP TABLE WISHLIST CASCADE CONSTRAINTS;
DROP TABLE MEMBERS CASCADE CONSTRAINTS;
DROP TABLE PRODUCT CASCADE CONSTRAINTS;
DROP TABLE STOCK CASCADE CONSTRAINTS;




/* Create Tables */

CREATE TABLE COUPON
(
	CID NUMBER(4) NOT NULL,
	CNAME VARCHAR2(100),
	CDISCOUNT NUMBER(3),
	CPRICE NUMBER(10),
	-- DATE DEFAULT SYSDATE
	CRDATE DATE,
	CSTARTDATE DATE,
	CENDDATE DATE,
	MID VARCHAR2(100) NOT NULL,
	PID NUMBER(3) NOT NULL,
	PRIMARY KEY (CID)
);


CREATE TABLE FAQ
(
	FID NUMBER(4) NOT NULL,
	FTITLE VARCHAR2(100),
	FCONTENT CLOB,
	FFILE VARCHAR2(4000),
	-- DATE DEFAULT SYSDATE
	FRDATE DATE,
	-- DEFAULT 0
	FHIT NUMBER(4),
	-- 0. ����
	-- 1. �����
	FPUBLIC_PRIVATE NUMBER(3),
	AID VARCHAR2(10) NOT NULL,
	PRIMARY KEY (FID)
);


CREATE TABLE GRADE
(
	GID NUMBER(4) NOT NULL,
	-- 0.�ǹ� ���
	GLEVEL VARCHAR2(10),
	GBUY NUMBER(3),
	MID VARCHAR2(100) NOT NULL,
	PRIMARY KEY (GID)
);


CREATE TABLE HEAD_ADMIN
(
	AID VARCHAR2(10) NOT NULL,
	APW VARCHAR2(100),
	ANAME VARCHAR2(100),
	ALEVEL NUMBER(1),
	ARDATE DATE,
	PRIMARY KEY (AID)
);



CREATE TABLE INBOUND
(
	INID NUMBER(4) NOT NULL,
	INDATE DATE,
	INNAME VARCHAR2(100),
	INPRICE NUMBER(10),
	INAMOUNT NUMBER(4),
	INCOLOR VARCHAR2(20),
	INSIZE VARCHAR2(20),
	INCATEGORY VARCHAR2(50),
	PRIMARY KEY (INID)
);

INSERT INTO INBOUND VALUES(1,'2019-01-30','[ganaesra made] 실링 린넨 하프자켓',67000,100,'아이보리','S','outer');
INSERT INTO INBOUND VALUES(2,'2019-01-30','[ganaesra made] 실링 린넨 하프자켓',67000,100,'아이보리','M','outer');
INSERT INTO INBOUND VALUES(3,'2019-02-01','[ganaesra made] 실링 린넨 하프자켓',67000,100,'레드','S','outer');
INSERT INTO INBOUND VALUES(4,'2019-02-01','[ganaesra made] 실링 린넨 하프자켓',67000,100,'레드','M','outer');
INSERT INTO INBOUND VALUES(5,'2019-02-02','[ganaesra made] 썸머 넌스 브이넥자켓',66000,150,'라이트베이지','S','outer');
INSERT INTO INBOUND VALUES(6,'2019-02-02','[ganaesra made] 썸머 넌스 브이넥자켓',66000,200,'라이트베이지','M','outer');
INSERT INTO INBOUND VALUES(7,'2019-02-05','[ganaesra made] 썸머 넌스 브이넥자켓',66000,150,'멜론','S','outer');
INSERT INTO INBOUND VALUES(8,'2019-02-05','[ganaesra made] 썸머 넌스 브이넥자켓',66000,200,'멜론','M','outer');
INSERT INTO INBOUND VALUES(9,'2019-02-10','[ganaesra made] 시에나 린넨 하프자켓',69500,100,'차콜','S','outer');
INSERT INTO INBOUND VALUES(10,'2019-02-10','[ganaesra made] 시에나 린넨 하프자켓',69500,100,'차콜','M','outer');
INSERT INTO INBOUND VALUES(11,'2019-02-12','[ganaesra made] 로아 트위드 하프자켓',91000,100,'아이보리','FREE','outer');
INSERT INTO INBOUND VALUES(12,'2019-02-15','[ganaesra made] 로아 트위드 하프자켓',91000,150,'블랙','FREE','outer');



CREATE TABLE MEMBERS
(
	MID VARCHAR2(100) NOT NULL,
	MPW VARCHAR2(15),
	MNAME VARCHAR2(100),
	MADDRESS VARCHAR2(500),
	MPOST VARCHAR2(10),
	MPHONE VARCHAR2(300),
	-- DATE DEFAULT SYSDATE
	MRDATE DATE,
	MBIRTH DATE,
	-- DEFAULT 0
	MDROP NUMBER(1),
	MMILEAGE NUMBER(10),
	MEMAIL VARCHAR2(25),
	PRIMARY KEY (MID)
);


CREATE TABLE NOTICE
(
	FID NUMBER(4) NOT NULL,
	FTITLE VARCHAR2(100),
	FCONTENT CLOB,
	FFILE VARCHAR2(4000),
	-- DATE DEFAULT SYSDATE
	FRDATE DATE,
	-- DEFAULT 0
	FHIT NUMBER(4),
	-- 0. ����
	-- 1. �����
	FPUBLIC_PRIVATE NUMBER(3),
	AID VARCHAR2(10) NOT NULL,
	PRIMARY KEY (FID)
);


CREATE TABLE ORDERS
(
	ORID NUMBER(10) NOT NULL,
	-- SYSDATE
	ORDATE DATE,
	ORNAME VARCHAR2(100),
	ORPHONE VARCHAR2(300),
	ORADDRESS VARCHAR2(500),
	ORPOST VARCHAR2(10),
	-- 1.�����Ա� 2.ī�� 3.īī������ ��
	ORPAYMENT NUMBER(1),
	ORINVOICE NUMBER(10),
	-- 0.���� 1.�Ϲ� 2.Ư��
	ORDELPAY NUMBER(1),
	ORDELIVERY CHAR(1),
	ORCOMPLETE CHAR(1) NOT NULL,
	ORCANCLE CHAR(1),
	MID VARCHAR2(100) NOT NULL,
	PRIMARY KEY (ORID)
);


CREATE TABLE ORDER_DETAIL
(
	ODID NUMBER(4) NOT NULL,
	ODCOLOR VARCHAR2(10),
	ODSIZE NUMBER(3),
	ODCOUNT NUMBER(2),
	-- ��ü��������
	ODCOUPON VARCHAR2(10),
	ODMILEAGE NUMBER(10),
	ODTOTAL NUMBER(10),
	ORPAYMONEY VARCHAR2(10),
	ORID NUMBER(10) NOT NULL,
	PID NUMBER(3) NOT NULL,
	PRIMARY KEY (ODID)
);


CREATE TABLE PRODUCT
(
	PID NUMBER(3) NOT NULL,
	PPRICE NUMBER(10),
	PDISCOUNT NUMBER(4),
	PIMAGE1 VARCHAR2(4000),
	PIMAGE2 VARCHAR2(4000),
	PIMAGE3 VARCHAR2(4000),
	-- DATE DEFAULT SYSDATE
	PRDATE DATE,
	-- DEFAULT 0
	PSELL NUMBER(3),
	SID NUMBER(4) NOT NULL,
	PRIMARY KEY (PID)
);


CREATE TABLE REVIEW
(
	RID NUMBER(10) NOT NULL,
	RPW VARCHAR2(100),
	RTITLE VARCHAR2(300),
	RCONTENT VARCHAR2(4000),
	RPHOTO1 VARCHAR2(4000),
	RPHOTO2 VARCHAR2(4000),
	RPHOTO3 VARCHAR2(4000),
	-- DATE DEFAULT SYSDATE
	RRDATE DATE,
	-- DEFAULT 0
	RHIT NUMBER(4),
	MID VARCHAR2(100) NOT NULL,
	PID NUMBER(3) NOT NULL,
	PRIMARY KEY (RID)
);


CREATE TABLE STOCK
(
	SID NUMBER(4) NOT NULL,
	SNAME VARCHAR2(100),
	SCOLOR VARCHAR2(10),
	SSIZE NUMBER(3),
	SAMOUNT NUMBER(4),
	PRIMARY KEY (SID)
);


CREATE TABLE USERQNA
(
	QID NUMBER(4) NOT NULL,
	-- 1.��ǰ 2.��ȯ/ȯ�� 3.����Ʈ�̿� 4.��Ÿ
	QCATE NUMBER(1),
	QWRITER VARCHAR2(100),
	QPW VARCHAR2(100),
	QTITLE VARCHAR2(300),
	QCONTENT VARCHAR2(4000),
	QFILE VARCHAR2(4000),
	-- DATE DEFAULT SYSDATE
	QRDATE DATE,
	-- 0.��ó�� 1.ó��
	QLEV NUMBER(3),
	QREF NUMBER(3),
	MID VARCHAR2(100) NOT NULL,
	PID NUMBER(3) NOT NULL,
	PRIMARY KEY (QID)
);


CREATE TABLE WISHLIST
(
	WID NUMBER(4) NOT NULL,
	MID VARCHAR2(100) NOT NULL,
	PID NUMBER(3) NOT NULL,
	PRIMARY KEY (WID)
);



/* Create Foreign Keys */

ALTER TABLE FAQ
	ADD FOREIGN KEY (AID)
	REFERENCES HEAD_ADMIN (AID)
;


ALTER TABLE NOTICE
	ADD FOREIGN KEY (AID)
	REFERENCES HEAD_ADMIN (AID)
;


ALTER TABLE COUPON
	ADD FOREIGN KEY (MID)
	REFERENCES MEMBERS (MID)
;


ALTER TABLE GRADE
	ADD FOREIGN KEY (MID)
	REFERENCES MEMBERS (MID)
;


ALTER TABLE ORDERS
	ADD FOREIGN KEY (MID)
	REFERENCES MEMBERS (MID)
;


ALTER TABLE REVIEW
	ADD FOREIGN KEY (MID)
	REFERENCES MEMBERS (MID)
;


ALTER TABLE USERQNA
	ADD FOREIGN KEY (MID)
	REFERENCES MEMBERS (MID)
;


ALTER TABLE WISHLIST
	ADD FOREIGN KEY (MID)
	REFERENCES MEMBERS (MID)
;


ALTER TABLE ORDER_DETAIL
	ADD FOREIGN KEY (ORID)
	REFERENCES ORDERS (ORID)
;


ALTER TABLE COUPON
	ADD FOREIGN KEY (PID)
	REFERENCES PRODUCT (PID)
;


ALTER TABLE ORDER_DETAIL
	ADD FOREIGN KEY (PID)
	REFERENCES PRODUCT (PID)
;


ALTER TABLE REVIEW
	ADD FOREIGN KEY (PID)
	REFERENCES PRODUCT (PID)
;


ALTER TABLE USERQNA
	ADD FOREIGN KEY (PID)
	REFERENCES PRODUCT (PID)
;


ALTER TABLE WISHLIST
	ADD FOREIGN KEY (PID)
	REFERENCES PRODUCT (PID)
;


ALTER TABLE PRODUCT
	ADD FOREIGN KEY (SID)
	REFERENCES STOCK (SID)
;



/* Comments */

COMMENT ON COLUMN COUPON.CRDATE IS 'DATE DEFAULT SYSDATE';
COMMENT ON COLUMN FAQ.FRDATE IS 'DATE DEFAULT SYSDATE';
COMMENT ON COLUMN FAQ.FHIT IS 'DEFAULT 0';
COMMENT ON COLUMN FAQ.FPUBLIC_PRIVATE IS '0. ����
1. �����';
COMMENT ON COLUMN GRADE.GLEVEL IS '0.�ǹ� ���';
COMMENT ON COLUMN MEMBERS.MRDATE IS 'DATE DEFAULT SYSDATE';
COMMENT ON COLUMN MEMBERS.MDROP IS 'DEFAULT 0';
COMMENT ON COLUMN NOTICE.FRDATE IS 'DATE DEFAULT SYSDATE';
COMMENT ON COLUMN NOTICE.FHIT IS 'DEFAULT 0';
COMMENT ON COLUMN NOTICE.FPUBLIC_PRIVATE IS '0. ����
1. �����';
COMMENT ON COLUMN ORDERS.ORDATE IS 'SYSDATE';
COMMENT ON COLUMN ORDERS.ORPAYMENT IS '1.�����Ա� 2.ī�� 3.īī������ ��';
COMMENT ON COLUMN ORDERS.ORDELPAY IS '0.���� 1.�Ϲ� 2.Ư��';
COMMENT ON COLUMN ORDER_DETAIL.ODCOUPON IS '��ü��������';
COMMENT ON COLUMN PRODUCT.PRDATE IS 'DATE DEFAULT SYSDATE';
COMMENT ON COLUMN PRODUCT.PSELL IS 'DEFAULT 0';
COMMENT ON COLUMN REVIEW.RRDATE IS 'DATE DEFAULT SYSDATE';
COMMENT ON COLUMN REVIEW.RHIT IS 'DEFAULT 0';
COMMENT ON COLUMN USERQNA.QCATE IS '1.��ǰ 2.��ȯ/ȯ�� 3.����Ʈ�̿� 4.��Ÿ';
COMMENT ON COLUMN USERQNA.QRDATE IS 'DATE DEFAULT SYSDATE';
COMMENT ON COLUMN USERQNA.QLEV IS '0.��ó�� 1.ó��';



